; ModuleID = 'coreutils-8.27/src/rmdir.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1
@.str.2 = private unnamed_addr constant [187 x i8] c"Remove the DIRECTORY(ies), if they are empty.\0A\0A      --ignore-fail-on-non-empty\0A                  ignore each failure that is solely because a directory\0A                    is non-empty\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [200 x i8] c"  -p, --parents   remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is\0A                    similar to 'rmdir a/b/c a/b a'\0A  -v, --verbose   output a diagnostic for every directory processed\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@remove_empty_parents = internal unnamed_addr global i8 0, align 1, !dbg !0
@.str.10 = private unnamed_addr constant [3 x i8] c"pv\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !51
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@verbose = internal unnamed_addr global i8 0, align 1, !dbg !27
@ignore_fail_on_non_empty = internal unnamed_addr global i8 0, align 1, !dbg !24
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"removing directory, %s\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"failed to remove %s\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"failed to remove directory %s\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"ignore-fail-on-non-empty\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c": \00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), align 8, !dbg !64
@.str.19 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !70
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !75
@.str.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !78
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !85
@.str.38 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.39 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.40 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.44, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.50, i32 0, i32 0), i8* null], align 16, !dbg !92
@.str.41 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.42 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.43 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.44 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.45 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.46 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.47 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.48 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.49 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.50 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !123
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !130
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !143
@.str.11.51 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.52 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.53 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.54 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.55 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !150
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !157
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !145
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !159
@.str.60 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.62 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.63 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.64 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.65 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.66 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.67 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.68 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.69 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.70 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.71 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.72 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.73 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.76 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.77 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.78 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.79 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.80 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.81 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !165
@.str.1.92 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.107 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !174
@.str.3.111 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.112 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.113 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.114 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.115 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !579 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !583, metadata !584), !dbg !585
  %2 = icmp eq i32 %0, 0, !dbg !586
  br i1 %2, label %8, label %3, !dbg !588

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !589, !tbaa !591
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !589
  %6 = load i8*, i8** @program_name, align 8, !dbg !589, !tbaa !591
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !589
  br label %39, !dbg !589

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !595
  %10 = load i8*, i8** @program_name, align 8, !dbg !595, !tbaa !591
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !595
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !597
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !597, !tbaa !591
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !597
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !598
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !598, !tbaa !591
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !598
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !599
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !599, !tbaa !591
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !599
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !600
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !600, !tbaa !591
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9, !dbg !600
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !39, metadata !584) #9, !dbg !601
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !39, metadata !584) #9, !dbg !601
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #9, !dbg !603
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !603
  %26 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !604
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !47, metadata !584) #9, !dbg !605
  %27 = icmp eq i8* %26, null, !dbg !606
  br i1 %27, label %34, label %28, !dbg !608

; <label>:28:                                     ; preds = %8
  %29 = tail call i32 @strncmp(i8* nonnull %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #14, !dbg !609
  %30 = icmp eq i32 %29, 0, !dbg !609
  br i1 %30, label %34, label %31, !dbg !610

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.27, i64 0, i64 0), i32 5) #9, !dbg !611
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !611
  br label %34, !dbg !613

; <label>:34:                                     ; preds = %8, %28, %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #9, !dbg !614
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !614
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #9, !dbg !615
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !615
  br label %39

; <label>:39:                                     ; preds = %34, %3
  tail call void @exit(i32 %0) #15, !dbg !616
  unreachable, !dbg !616
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !617 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !622, metadata !584), !dbg !630
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !623, metadata !584), !dbg !631
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !624, metadata !584), !dbg !632
  %3 = load i8*, i8** %1, align 8, !dbg !633, !tbaa !591
  tail call void @set_program_name(i8* %3) #9, !dbg !634
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !635
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !636
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !637
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !638
  store i8 0, i8* @remove_empty_parents, align 1, !dbg !639, !tbaa !640
  br label %8, !dbg !642

; <label>:8:                                      ; preds = %17, %2
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !643
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !625, metadata !584), !dbg !644
  switch i32 %9, label %16 [
    i32 -1, label %19
    i32 112, label %10
    i32 128, label %17
    i32 118, label %11
    i32 -130, label %12
    i32 -131, label %13
  ], !dbg !642

; <label>:10:                                     ; preds = %8
  br label %17, !dbg !645

; <label>:11:                                     ; preds = %8
  br label %17, !dbg !648

; <label>:12:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !649
  unreachable, !dbg !649

; <label>:13:                                     ; preds = %8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !650, !tbaa !591
  %15 = load i8*, i8** @Version, align 8, !dbg !650, !tbaa !591
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #9, !dbg !650
  tail call void @exit(i32 0) #15, !dbg !650
  unreachable, !dbg !650

; <label>:16:                                     ; preds = %8
  tail call void @usage(i32 1) #16, !dbg !651
  unreachable, !dbg !651

; <label>:17:                                     ; preds = %8, %11, %10
  %18 = phi i8* [ @verbose, %11 ], [ @remove_empty_parents, %10 ], [ @ignore_fail_on_non_empty, %8 ]
  store i8 1, i8* %18, align 1, !tbaa !640
  br label %8, !dbg !642, !llvm.loop !652

; <label>:19:                                     ; preds = %8
  %20 = load i32, i32* @optind, align 4, !dbg !654, !tbaa !656
  %21 = icmp eq i32 %20, %0, !dbg !658
  br i1 %21, label %22, label %24, !dbg !659

; <label>:22:                                     ; preds = %19
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 5) #9, !dbg !660
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %23) #9, !dbg !662
  tail call void @usage(i32 1) #16, !dbg !663
  unreachable, !dbg !663

; <label>:24:                                     ; preds = %19
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !624, metadata !584), !dbg !632
  %25 = icmp slt i32 %20, %0, !dbg !664
  br i1 %25, label %26, label %100, !dbg !665

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !666

; <label>:27:                                     ; preds = %26, %95
  %28 = phi i32 [ %98, %95 ], [ %20, %26 ]
  %29 = phi i8 [ %96, %95 ], [ 1, %26 ]
  tail call void @llvm.dbg.value(metadata i8 %29, i64 0, metadata !624, metadata !584), !dbg !632
  %30 = sext i32 %28 to i64, !dbg !666
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30, !dbg !666
  %32 = load i8*, i8** %31, align 8, !dbg !666, !tbaa !591
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !626, metadata !584), !dbg !667
  %33 = load i8, i8* @verbose, align 1, !dbg !668, !tbaa !640, !range !670
  %34 = icmp eq i8 %33, 0, !dbg !668
  br i1 %34, label %39, label %35, !dbg !671

; <label>:35:                                     ; preds = %27
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !591
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 5) #9, !dbg !673
  %38 = tail call i8* @quotearg_style(i32 4, i8* %32) #9, !dbg !674
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %36, i8* %37, i8* %38) #9, !dbg !675
  br label %39, !dbg !675

; <label>:39:                                     ; preds = %27, %35
  %40 = tail call i32 @rmdir(i8* %32) #9, !dbg !676
  %41 = icmp eq i32 %40, 0, !dbg !678
  br i1 %41, label %50, label %42, !dbg !679

; <label>:42:                                     ; preds = %39
  %43 = tail call i32* @__errno_location() #17, !dbg !680
  %44 = load i32, i32* %43, align 4, !dbg !680, !tbaa !656
  %45 = tail call fastcc zeroext i1 @ignorable_failure(i32 %44, i8* %32), !dbg !683
  br i1 %45, label %95, label %46, !dbg !684

; <label>:46:                                     ; preds = %42
  %47 = load i32, i32* %43, align 4, !dbg !685, !tbaa !656
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 5) #9, !dbg !686
  %49 = tail call i8* @quotearg_style(i32 4, i8* %32) #9, !dbg !687
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %47, i8* %48, i8* %49) #9, !dbg !688
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !624, metadata !584), !dbg !632
  br label %95, !dbg !689

; <label>:50:                                     ; preds = %39
  %51 = load i8, i8* @remove_empty_parents, align 1, !dbg !690, !tbaa !640, !range !670
  %52 = icmp eq i8 %51, 0, !dbg !690
  br i1 %52, label %95, label %53, !dbg !692

; <label>:53:                                     ; preds = %50
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !693, metadata !584) #9, !dbg !700
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !699, metadata !584) #9, !dbg !703
  %54 = tail call zeroext i1 @strip_trailing_slashes(i8* %32) #9, !dbg !704
  %55 = tail call i8* @strrchr(i8* %32, i32 47) #14, !dbg !705
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !698, metadata !584) #9, !dbg !707
  %56 = icmp eq i8* %55, null, !dbg !708
  br i1 %56, label %92, label %57, !dbg !710

; <label>:57:                                     ; preds = %53
  br label %61, !dbg !711

; <label>:58:                                     ; preds = %81
  %59 = tail call i8* @strrchr(i8* %32, i32 47) #14, !dbg !705
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !698, metadata !584) #9, !dbg !707
  %60 = icmp eq i8* %59, null, !dbg !708
  br i1 %60, label %92, label %61, !dbg !710, !llvm.loop !712

; <label>:61:                                     ; preds = %57, %58
  %62 = phi i8* [ %59, %58 ], [ %55, %57 ]
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !698, metadata !584) #9, !dbg !707
  %63 = icmp ugt i8* %62, %32, !dbg !711
  br i1 %63, label %64, label %72, !dbg !715

; <label>:64:                                     ; preds = %61
  br label %65, !dbg !716

; <label>:65:                                     ; preds = %64, %69
  %66 = phi i8* [ %70, %69 ], [ %62, %64 ]
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !698, metadata !584) #9, !dbg !707
  %67 = load i8, i8* %66, align 1, !dbg !716, !tbaa !717
  %68 = icmp eq i8 %67, 47, !dbg !718
  br i1 %68, label %69, label %72, !dbg !719

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds i8, i8* %66, i64 -1, !dbg !720
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !698, metadata !584) #9, !dbg !707
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !698, metadata !584) #9, !dbg !707
  %71 = icmp ugt i8* %70, %32, !dbg !711
  br i1 %71, label %65, label %72, !dbg !715, !llvm.loop !721

; <label>:72:                                     ; preds = %69, %65, %61
  %73 = phi i8* [ %62, %61 ], [ %66, %65 ], [ %70, %69 ]
  %74 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !724
  store i8 0, i8* %74, align 1, !dbg !725, !tbaa !717
  %75 = load i8, i8* @verbose, align 1, !dbg !726, !tbaa !640, !range !670
  %76 = icmp eq i8 %75, 0, !dbg !726
  br i1 %76, label %81, label %77, !dbg !728

; <label>:77:                                     ; preds = %72
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !729, !tbaa !591
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 5) #9, !dbg !730
  %80 = tail call i8* @quotearg_style(i32 4, i8* %32) #9, !dbg !731
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %78, i8* %79, i8* %80) #9, !dbg !732
  br label %81, !dbg !732

; <label>:81:                                     ; preds = %77, %72
  %82 = tail call i32 @rmdir(i8* %32) #9, !dbg !733
  %83 = icmp eq i32 %82, 0, !dbg !734
  br i1 %83, label %58, label %84, !dbg !735

; <label>:84:                                     ; preds = %81
  %85 = tail call i32* @__errno_location() #17, !dbg !736
  %86 = load i32, i32* %85, align 4, !dbg !736, !tbaa !656
  %87 = tail call fastcc zeroext i1 @ignorable_failure(i32 %86, i8* %32) #9, !dbg !740
  br i1 %87, label %92, label %88, !dbg !741

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* %85, align 4, !dbg !742, !tbaa !656
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 5) #9, !dbg !744
  %91 = tail call i8* @quotearg_style(i32 4, i8* %32) #9, !dbg !745
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %89, i8* %90, i8* %91) #9, !dbg !746
  br label %92

; <label>:92:                                     ; preds = %58, %53, %84, %88
  %93 = phi i8 [ 0, %88 ], [ 1, %84 ], [ 1, %53 ], [ 1, %58 ]
  %94 = and i8 %93, %29, !dbg !747
  tail call void @llvm.dbg.value(metadata i8 %94, i64 0, metadata !624, metadata !584), !dbg !632
  br label %95, !dbg !748

; <label>:95:                                     ; preds = %46, %92, %50, %42
  %96 = phi i8 [ %29, %42 ], [ 0, %46 ], [ %94, %92 ], [ %29, %50 ]
  tail call void @llvm.dbg.value(metadata i8 %96, i64 0, metadata !624, metadata !584), !dbg !632
  %97 = load i32, i32* @optind, align 4, !dbg !749, !tbaa !656
  %98 = add nsw i32 %97, 1, !dbg !749
  store i32 %98, i32* @optind, align 4, !dbg !749, !tbaa !656
  tail call void @llvm.dbg.value(metadata i8 %96, i64 0, metadata !624, metadata !584), !dbg !632
  %99 = icmp slt i32 %98, %0, !dbg !664
  br i1 %99, label %27, label %100, !dbg !665, !llvm.loop !750

; <label>:100:                                    ; preds = %95, %24
  %101 = phi i8 [ 1, %24 ], [ %96, %95 ]
  %102 = and i8 %101, 1, !dbg !752
  %103 = xor i8 %102, 1, !dbg !752
  %104 = zext i8 %103 to i32, !dbg !752
  ret i32 %104, !dbg !753
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
declare i32 @rmdir(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @ignorable_failure(i32, i8*) unnamed_addr #6 !dbg !754 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !758, metadata !584), !dbg !760
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !759, metadata !584), !dbg !761
  %3 = load i8, i8* @ignore_fail_on_non_empty, align 1, !dbg !762, !tbaa !640, !range !670
  %4 = icmp eq i8 %3, 0, !dbg !762
  br i1 %4, label %41, label %5, !dbg !763

; <label>:5:                                      ; preds = %2
  switch i32 %0, label %40 [
    i32 39, label %41
    i32 17, label %41
    i32 13, label %6
    i32 1, label %6
    i32 30, label %6
    i32 16, label %6
  ], !dbg !764

; <label>:6:                                      ; preds = %5, %5, %5, %5
  tail call void @llvm.dbg.value(metadata i32 -100, i64 0, metadata !765, metadata !584) #9, !dbg !791
  %7 = tail call i32 (i32, i8*, i32, ...) @openat(i32 -100, i8* %1, i32 198912) #9, !dbg !793
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !790, metadata !584) #9, !dbg !794
  %8 = icmp slt i32 %7, 0, !dbg !795
  br i1 %8, label %41, label %9, !dbg !797

; <label>:9:                                      ; preds = %6
  %10 = tail call %struct.__dirstream* @fdopendir(i32 %7) #9, !dbg !798
  tail call void @llvm.dbg.value(metadata %struct.__dirstream* %10, i64 0, metadata !769, metadata !584) #9, !dbg !799
  %11 = icmp eq %struct.__dirstream* %10, null, !dbg !800
  br i1 %11, label %12, label %14, !dbg !802

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @close(i32 %7) #9, !dbg !803
  br label %41, !dbg !805

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !806
  store i32 0, i32* %15, align 4, !dbg !807, !tbaa !656
  tail call void @llvm.dbg.value(metadata %struct.__dirstream* %10, i64 0, metadata !808, metadata !584) #9, !dbg !815
  %16 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %10) #9, !dbg !817
  tail call void @llvm.dbg.value(metadata %struct.dirent* %16, i64 0, metadata !813, metadata !584) #9, !dbg !818
  %17 = icmp eq %struct.dirent* %16, null, !dbg !819
  br i1 %17, label %36, label %18, !dbg !821

; <label>:18:                                     ; preds = %14
  br label %19, !dbg !822

; <label>:19:                                     ; preds = %18, %31
  %20 = phi %struct.dirent* [ %32, %31 ], [ %16, %18 ]
  %21 = getelementptr inbounds %struct.dirent, %struct.dirent* %20, i64 0, i32 4, i64 0, !dbg !822
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !823, metadata !584) #9, !dbg !831
  %22 = load i8, i8* %21, align 1, !dbg !833, !tbaa !717
  %23 = icmp eq i8 %22, 46, !dbg !834
  br i1 %23, label %24, label %34, !dbg !835

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.dirent, %struct.dirent* %20, i64 0, i32 4, i64 1, !dbg !836
  %26 = load i8, i8* %25, align 1, !dbg !836, !tbaa !717
  %27 = icmp eq i8 %26, 46, !dbg !837
  %28 = select i1 %27, i64 2, i64 1, !dbg !838
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %20, i64 0, i32 4, i64 %28, !dbg !838
  %30 = load i8, i8* %29, align 1, !dbg !838, !tbaa !717
  tail call void @llvm.dbg.value(metadata i8 %30, i64 0, metadata !828, metadata !584) #9, !dbg !839
  switch i8 %30, label %34 [
    i8 47, label %31
    i8 0, label %31
  ], !dbg !840

; <label>:31:                                     ; preds = %24, %24
  %32 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %10) #9, !dbg !817
  tail call void @llvm.dbg.value(metadata %struct.dirent* %32, i64 0, metadata !813, metadata !584) #9, !dbg !818
  %33 = icmp eq %struct.dirent* %32, null, !dbg !819
  br i1 %33, label %36, label %19, !dbg !821, !llvm.loop !841

; <label>:34:                                     ; preds = %24, %19
  tail call void @llvm.dbg.value(metadata %struct.dirent* %20, i64 0, metadata !774, metadata !584) #9, !dbg !844
  %35 = tail call i32 @closedir(%struct.__dirstream* nonnull %10) #9, !dbg !845
  br label %41

; <label>:36:                                     ; preds = %31, %14
  tail call void @llvm.dbg.value(metadata %struct.dirent* %20, i64 0, metadata !774, metadata !584) #9, !dbg !844
  %37 = load i32, i32* %15, align 4, !dbg !846, !tbaa !656
  %38 = tail call i32 @closedir(%struct.__dirstream* nonnull %10) #9, !dbg !845
  %39 = icmp eq i32 %37, 0, !dbg !847
  br label %41, !dbg !848

; <label>:40:                                     ; preds = %5
  br label %41, !dbg !849

; <label>:41:                                     ; preds = %5, %5, %40, %36, %34, %12, %6, %2
  %42 = phi i1 [ false, %2 ], [ true, %5 ], [ false, %12 ], [ %39, %36 ], [ false, %6 ], [ false, %34 ], [ true, %5 ], [ false, %40 ]
  ret i1 %42, !dbg !849
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

declare i32 @openat(i32, i8*, i32, ...) local_unnamed_addr #3

declare %struct.__dirstream* @fdopendir(i32) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @closedir(%struct.__dirstream* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @prog_fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #6 !dbg !850 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !906, metadata !584), !dbg !921
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !907, metadata !584), !dbg !922
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !923
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #9, !dbg !923
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !908, metadata !584), !dbg !924
  %5 = load i8*, i8** @program_name, align 8, !dbg !925, !tbaa !591
  %6 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %0) #9, !dbg !925
  %7 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), %struct._IO_FILE* %0) #9, !dbg !926
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !927
  call void @llvm.va_start(i8* nonnull %4), !dbg !927
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !928, metadata !584) #9, !dbg !939
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !937, metadata !584) #9, !dbg !941
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %8, i64 0, metadata !938, metadata !584) #9, !dbg !942
  %9 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %8) #9, !dbg !943
  call void @llvm.va_end(i8* nonnull %4), !dbg !944
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !945, metadata !584) #9, !dbg !952
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !951, metadata !584) #9, !dbg !954
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !955
  %11 = load i8*, i8** %10, align 8, !dbg !955, !tbaa !956
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !955
  %13 = load i8*, i8** %12, align 8, !dbg !955, !tbaa !960
  %14 = icmp ult i8* %11, %13, !dbg !955
  br i1 %14, label %17, label %15, !dbg !955, !prof !961

; <label>:15:                                     ; preds = %2
  %16 = call i32 @__overflow(%struct._IO_FILE* nonnull %0, i32 10) #9, !dbg !955
  br label %19, !dbg !955

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !955
  store i8* %18, i8** %10, align 8, !dbg !955, !tbaa !956
  store i8 10, i8* %11, align 1, !dbg !955, !tbaa !717
  br label %19, !dbg !955

; <label>:19:                                     ; preds = %15, %17
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9, !dbg !962
  ret void, !dbg !962
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !963 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !965, metadata !584), !dbg !966
  store i8* %0, i8** @file_name, align 8, !dbg !967, !tbaa !591
  ret void, !dbg !968
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !969 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !973, metadata !584), !dbg !974
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !975, !tbaa !640
  ret void, !dbg !976
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !977 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !984, !tbaa !591
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !985
  %3 = icmp eq i32 %2, 0, !dbg !986
  br i1 %3, label %21, label %4, !dbg !987

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !988, !tbaa !640, !range !670
  %6 = icmp eq i8 %5, 0, !dbg !988
  %7 = tail call i32* @__errno_location() #17, !dbg !989
  br i1 %6, label %11, label %8, !dbg !991

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !992, !tbaa !656
  %10 = icmp eq i32 %9, 32, !dbg !993
  br i1 %10, label %21, label %11, !dbg !994

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 5) #9, !dbg !995
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !981, metadata !584), !dbg !996
  %13 = load i8*, i8** @file_name, align 8, !dbg !997, !tbaa !591
  %14 = icmp eq i8* %13, null, !dbg !997
  %15 = load i32, i32* %7, align 4, !tbaa !656
  br i1 %14, label %18, label %16, !dbg !998

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !999
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.23, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !1000
  br label %19, !dbg !1000

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.24, i64 0, i64 0), i8* %12) #9, !dbg !1001
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1002, !tbaa !656
  tail call void @_exit(i32 %20) #15, !dbg !1003
  unreachable, !dbg !1003

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1004, !tbaa !591
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !1006
  %24 = icmp eq i32 %23, 0, !dbg !1007
  br i1 %24, label %27, label %25, !dbg !1008

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1009, !tbaa !656
  tail call void @_exit(i32 %26) #15, !dbg !1010
  unreachable, !dbg !1010

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1011
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @strip_trailing_slashes(i8*) local_unnamed_addr #6 !dbg !1012 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1015, metadata !584), !dbg !1019
  %2 = tail call i8* @last_component(i8* %0) #14, !dbg !1020
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1016, metadata !584), !dbg !1021
  %3 = load i8, i8* %2, align 1, !dbg !1022, !tbaa !717
  %4 = icmp eq i8 %3, 0, !dbg !1022
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1016, metadata !584), !dbg !1021
  %5 = select i1 %4, i8* %0, i8* %2, !dbg !1024
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1016, metadata !584), !dbg !1021
  %6 = tail call i64 @base_len(i8* %5) #14, !dbg !1025
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !1026
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1017, metadata !584), !dbg !1027
  %8 = load i8, i8* %7, align 1, !dbg !1028, !tbaa !717
  %9 = icmp ne i8 %8, 0, !dbg !1029
  store i8 0, i8* %7, align 1, !dbg !1030, !tbaa !717
  ret i1 %9, !dbg !1031
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1032 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1034, metadata !584), !dbg !1037
  %2 = icmp eq i8* %0, null, !dbg !1038
  br i1 %2, label %3, label %6, !dbg !1040

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1041, !tbaa !591
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1043
  tail call void @abort() #15, !dbg !1044
  unreachable, !dbg !1044

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1045
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1035, metadata !584), !dbg !1046
  %8 = icmp eq i8* %7, null, !dbg !1047
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1048
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1049
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1036, metadata !584), !dbg !1050
  %11 = ptrtoint i8* %10 to i64, !dbg !1051
  %12 = ptrtoint i8* %0 to i64, !dbg !1051
  %13 = sub i64 %11, %12, !dbg !1051
  %14 = icmp sgt i64 %13, 6, !dbg !1053
  br i1 %14, label %15, label %24, !dbg !1054

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1055
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.39, i64 0, i64 0), i64 7) #14, !dbg !1056
  %18 = icmp eq i32 %17, 0, !dbg !1057
  br i1 %18, label %19, label %24, !dbg !1058

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1034, metadata !584), !dbg !1037
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.40, i64 0, i64 0), i64 3) #14, !dbg !1059
  %21 = icmp eq i32 %20, 0, !dbg !1062
  br i1 %21, label %22, label %24, !dbg !1063

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1064
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1034, metadata !584), !dbg !1037
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1066, !tbaa !591
  br label %24, !dbg !1067

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1034, metadata !584), !dbg !1037
  store i8* %25, i8** @program_name, align 8, !dbg !1068, !tbaa !591
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1069, !tbaa !591
  ret void, !dbg !1070
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1071 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1076, metadata !584), !dbg !1079
  %2 = tail call i32* @__errno_location() #17, !dbg !1080
  %3 = load i32, i32* %2, align 4, !dbg !1080, !tbaa !656
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1077, metadata !584), !dbg !1081
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1082
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1082
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1082
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !1083
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1083
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1078, metadata !584), !dbg !1084
  store i32 %3, i32* %2, align 4, !dbg !1085, !tbaa !656
  ret %struct.quoting_options* %8, !dbg !1086
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1087 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1093, metadata !584), !dbg !1094
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1095
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1095
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1096
  %5 = load i32, i32* %4, align 8, !dbg !1096, !tbaa !1097
  ret i32 %5, !dbg !1099
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1100 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1104, metadata !584), !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1105, metadata !584), !dbg !1107
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1108
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1108
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1109
  store i32 %1, i32* %5, align 8, !dbg !1110, !tbaa !1097
  ret void, !dbg !1111
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1112 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1116, metadata !584), !dbg !1124
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1117, metadata !584), !dbg !1125
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1118, metadata !584), !dbg !1126
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1119, metadata !584), !dbg !1127
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1128
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1128
  %6 = lshr i8 %1, 5, !dbg !1129
  %7 = zext i8 %6 to i64, !dbg !1129
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1130
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1120, metadata !584), !dbg !1131
  %9 = and i8 %1, 31, !dbg !1132
  %10 = zext i8 %9 to i32, !dbg !1133
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1122, metadata !584), !dbg !1134
  %11 = load i32, i32* %8, align 4, !dbg !1135, !tbaa !656
  %12 = lshr i32 %11, %10, !dbg !1136
  %13 = and i32 %12, 1, !dbg !1137
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1123, metadata !584), !dbg !1138
  %14 = and i32 %2, 1, !dbg !1139
  %15 = xor i32 %13, %14, !dbg !1140
  %16 = shl i32 %15, %10, !dbg !1141
  %17 = xor i32 %16, %11, !dbg !1142
  store i32 %17, i32* %8, align 4, !dbg !1142, !tbaa !656
  ret i32 %13, !dbg !1143
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1144 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1148, metadata !584), !dbg !1151
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1149, metadata !584), !dbg !1152
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1153
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1148, metadata !584), !dbg !1151
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1155
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1148, metadata !584), !dbg !1151
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1156
  %6 = load i32, i32* %5, align 4, !dbg !1156, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1150, metadata !584), !dbg !1158
  store i32 %1, i32* %5, align 4, !dbg !1159, !tbaa !1157
  ret i32 %6, !dbg !1160
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1161 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1165, metadata !584), !dbg !1168
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1166, metadata !584), !dbg !1169
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1167, metadata !584), !dbg !1170
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1171
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1165, metadata !584), !dbg !1168
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1173
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1165, metadata !584), !dbg !1168
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1174
  store i32 10, i32* %6, align 8, !dbg !1175, !tbaa !1097
  %7 = icmp ne i8* %1, null, !dbg !1176
  %8 = icmp ne i8* %2, null, !dbg !1178
  %9 = and i1 %7, %8, !dbg !1179
  br i1 %9, label %11, label %10, !dbg !1179

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1180
  unreachable, !dbg !1180

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1181
  store i8* %1, i8** %12, align 8, !dbg !1182, !tbaa !1183
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1184
  store i8* %2, i8** %13, align 8, !dbg !1185, !tbaa !1186
  ret void, !dbg !1187
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1188 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1192, metadata !584), !dbg !1200
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1193, metadata !584), !dbg !1201
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1194, metadata !584), !dbg !1202
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1195, metadata !584), !dbg !1203
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1196, metadata !584), !dbg !1204
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1205
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1205
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1197, metadata !584), !dbg !1206
  %8 = tail call i32* @__errno_location() #17, !dbg !1207
  %9 = load i32, i32* %8, align 4, !dbg !1207, !tbaa !656
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1198, metadata !584), !dbg !1208
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1209
  %11 = load i32, i32* %10, align 8, !dbg !1209, !tbaa !1097
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1210
  %13 = load i32, i32* %12, align 4, !dbg !1210, !tbaa !1157
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1211
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1212
  %16 = load i8*, i8** %15, align 8, !dbg !1212, !tbaa !1183
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1213
  %18 = load i8*, i8** %17, align 8, !dbg !1213, !tbaa !1186
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1214
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1199, metadata !584), !dbg !1215
  store i32 %9, i32* %8, align 4, !dbg !1216, !tbaa !656
  ret i64 %19, !dbg !1217
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1218 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1224, metadata !584), !dbg !1288
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1225, metadata !584), !dbg !1289
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1226, metadata !584), !dbg !1290
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1227, metadata !584), !dbg !1291
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1228, metadata !584), !dbg !1292
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1229, metadata !584), !dbg !1293
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1230, metadata !584), !dbg !1294
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1231, metadata !584), !dbg !1295
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1232, metadata !584), !dbg !1296
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1234, metadata !584), !dbg !1297
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1235, metadata !584), !dbg !1298
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1236, metadata !584), !dbg !1299
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1237, metadata !584), !dbg !1300
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1238, metadata !584), !dbg !1301
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1302
  %14 = icmp eq i64 %13, 1, !dbg !1303
  %15 = lshr i32 %5, 1, !dbg !1304
  %16 = trunc i32 %15 to i8, !dbg !1304
  %17 = and i8 %16, 1, !dbg !1304
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1240, metadata !584), !dbg !1304
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1241, metadata !584), !dbg !1305
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1242, metadata !584), !dbg !1306
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1243, metadata !584), !dbg !1307
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1308

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1225, metadata !584), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1243, metadata !584), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1242, metadata !584), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1240, metadata !584), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1227, metadata !584), !dbg !1291
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1238, metadata !584), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1237, metadata !584), !dbg !1300
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1236, metadata !584), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1235, metadata !584), !dbg !1298
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1232, metadata !584), !dbg !1296
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1231, metadata !584), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1228, metadata !584), !dbg !1292
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
  ], !dbg !1309

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1228, metadata !584), !dbg !1292
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1240, metadata !584), !dbg !1304
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1240, metadata !584), !dbg !1304
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1228, metadata !584), !dbg !1292
  br label %94, !dbg !1310

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1240, metadata !584), !dbg !1304
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1228, metadata !584), !dbg !1292
  %43 = and i8 %36, 1, !dbg !1312
  %44 = icmp eq i8 %43, 0, !dbg !1312
  br i1 %44, label %45, label %94, !dbg !1310

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1314
  br i1 %46, label %94, label %47, !dbg !1317

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1314, !tbaa !717
  br label %94, !dbg !1314

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.51, i64 0, i64 0), i32 %28), !dbg !1318
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1231, metadata !584), !dbg !1295
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), i32 %28), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1232, metadata !584), !dbg !1296
  br label %51, !dbg !1323

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1232, metadata !584), !dbg !1296
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1231, metadata !584), !dbg !1295
  %54 = and i8 %36, 1, !dbg !1324
  %55 = icmp eq i8 %54, 0, !dbg !1324
  br i1 %55, label %56, label %72, !dbg !1326

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1236, metadata !584), !dbg !1299
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1236, metadata !584), !dbg !1299
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1234, metadata !584), !dbg !1297
  %57 = load i8, i8* %52, align 1, !dbg !1327, !tbaa !717
  %58 = icmp eq i8 %57, 0, !dbg !1330
  br i1 %58, label %72, label %59, !dbg !1330

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1331

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1236, metadata !584), !dbg !1299
  %64 = icmp ult i64 %63, %40, !dbg !1331
  br i1 %64, label %65, label %67, !dbg !1334

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1331
  store i8 %61, i8* %66, align 1, !dbg !1331, !tbaa !717
  br label %67, !dbg !1331

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1234, metadata !584), !dbg !1297
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1236, metadata !584), !dbg !1299
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1236, metadata !584), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1234, metadata !584), !dbg !1297
  %70 = load i8, i8* %69, align 1, !dbg !1327, !tbaa !717
  %71 = icmp eq i8 %70, 0, !dbg !1330
  br i1 %71, label %72, label %60, !dbg !1330, !llvm.loop !1336

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1238, metadata !584), !dbg !1301
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1236, metadata !584), !dbg !1299
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1237, metadata !584), !dbg !1300
  br label %94, !dbg !1339

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1238, metadata !584), !dbg !1301
  br label %76, !dbg !1340

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1238, metadata !584), !dbg !1301
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1240, metadata !584), !dbg !1304
  br label %78, !dbg !1341

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1240, metadata !584), !dbg !1304
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1238, metadata !584), !dbg !1301
  %81 = and i8 %80, 1, !dbg !1342
  %82 = icmp eq i8 %81, 0, !dbg !1342
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1238, metadata !584), !dbg !1301
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1344
  br label %84, !dbg !1344

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1240, metadata !584), !dbg !1304
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1238, metadata !584), !dbg !1301
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1228, metadata !584), !dbg !1292
  %87 = and i8 %86, 1, !dbg !1345
  %88 = icmp eq i8 %87, 0, !dbg !1345
  br i1 %88, label %89, label %94, !dbg !1347

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1348
  br i1 %90, label %94, label %91, !dbg !1351

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1348, !tbaa !717
  br label %94, !dbg !1348

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1240, metadata !584), !dbg !1304
  br label %94, !dbg !1352

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1353
  unreachable, !dbg !1353

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1240, metadata !584), !dbg !1304
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1238, metadata !584), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1237, metadata !584), !dbg !1300
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1236, metadata !584), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1232, metadata !584), !dbg !1296
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1231, metadata !584), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1228, metadata !584), !dbg !1292
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1233, metadata !584), !dbg !1354
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
  br label %122, !dbg !1355

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1225, metadata !584), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1243, metadata !584), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1242, metadata !584), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1227, metadata !584), !dbg !1291
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1235, metadata !584), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1233, metadata !584), !dbg !1354
  %131 = icmp eq i64 %126, -1, !dbg !1356
  br i1 %131, label %134, label %132, !dbg !1357

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1358
  br i1 %133, label %590, label %138, !dbg !1359

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1360
  %136 = load i8, i8* %135, align 1, !dbg !1360, !tbaa !717
  %137 = icmp eq i8 %136, 0, !dbg !1361
  br i1 %137, label %590, label %138, !dbg !1359

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1249, metadata !584), !dbg !1362
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1250, metadata !584), !dbg !1363
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1251, metadata !584), !dbg !1364
  br i1 %108, label %139, label %154, !dbg !1365

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1367
  %141 = and i1 %109, %131, !dbg !1368
  br i1 %141, label %142, label %144, !dbg !1368

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1227, metadata !584), !dbg !1291
  br label %144, !dbg !1370

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1227, metadata !584), !dbg !1291
  %146 = icmp ugt i64 %140, %145, !dbg !1371
  br i1 %146, label %154, label %147, !dbg !1372

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1373
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1374
  %150 = icmp ne i32 %149, 0, !dbg !1375
  %151 = or i1 %150, %111, !dbg !1376
  %152 = xor i1 %150, true, !dbg !1376
  %153 = zext i1 %152 to i8, !dbg !1376
  br i1 %151, label %154, label %635, !dbg !1376

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1249, metadata !584), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1227, metadata !584), !dbg !1291
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1377
  %158 = load i8, i8* %157, align 1, !dbg !1377, !tbaa !717
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1244, metadata !584), !dbg !1378
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
  ], !dbg !1379

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1380

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1381

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1250, metadata !584), !dbg !1363
  %162 = and i8 %127, 1, !dbg !1385
  %163 = icmp eq i8 %162, 0, !dbg !1385
  %164 = and i1 %113, %163, !dbg !1385
  br i1 %164, label %165, label %181, !dbg !1385

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1387
  br i1 %166, label %167, label %169, !dbg !1391

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1387
  store i8 39, i8* %168, align 1, !dbg !1387, !tbaa !717
  br label %169, !dbg !1387

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1234, metadata !584), !dbg !1297
  %171 = icmp ult i64 %170, %130, !dbg !1392
  br i1 %171, label %172, label %174, !dbg !1395

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1392
  store i8 36, i8* %173, align 1, !dbg !1392, !tbaa !717
  br label %174, !dbg !1392

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1234, metadata !584), !dbg !1297
  %176 = icmp ult i64 %175, %130, !dbg !1396
  br i1 %176, label %177, label %179, !dbg !1399

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1396
  store i8 39, i8* %178, align 1, !dbg !1396, !tbaa !717
  br label %179, !dbg !1396

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1241, metadata !584), !dbg !1305
  br label %181, !dbg !1400

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1234, metadata !584), !dbg !1297
  %184 = icmp ult i64 %182, %130, !dbg !1401
  br i1 %184, label %185, label %187, !dbg !1404

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1401
  store i8 92, i8* %186, align 1, !dbg !1401, !tbaa !717
  br label %187, !dbg !1401

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1234, metadata !584), !dbg !1297
  br i1 %105, label %189, label %470, !dbg !1405

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1407
  %191 = icmp ult i64 %190, %155, !dbg !1408
  br i1 %191, label %192, label %470, !dbg !1409

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1410
  %194 = load i8, i8* %193, align 1, !dbg !1410, !tbaa !717
  %195 = add i8 %194, -48, !dbg !1411
  %196 = icmp ult i8 %195, 10, !dbg !1411
  br i1 %196, label %197, label %470, !dbg !1411

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1412
  br i1 %198, label %199, label %201, !dbg !1416

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1412
  store i8 48, i8* %200, align 1, !dbg !1412, !tbaa !717
  br label %201, !dbg !1412

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1234, metadata !584), !dbg !1297
  %203 = icmp ult i64 %202, %130, !dbg !1417
  br i1 %203, label %204, label %206, !dbg !1420

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1417
  store i8 48, i8* %205, align 1, !dbg !1417, !tbaa !717
  br label %206, !dbg !1417

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1234, metadata !584), !dbg !1297
  br label %470, !dbg !1421

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1422

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1423

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1424

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1426

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1428
  %214 = icmp ult i64 %213, %155, !dbg !1429
  br i1 %214, label %215, label %470, !dbg !1430

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1431
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1432
  %218 = load i8, i8* %217, align 1, !dbg !1432, !tbaa !717
  %219 = icmp eq i8 %218, 63, !dbg !1433
  br i1 %219, label %220, label %470, !dbg !1434

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1435
  %222 = load i8, i8* %221, align 1, !dbg !1435, !tbaa !717
  %223 = sext i8 %222 to i32, !dbg !1435
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
  ], !dbg !1436

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1437

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1244, metadata !584), !dbg !1378
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1233, metadata !584), !dbg !1354
  %226 = icmp ult i64 %124, %130, !dbg !1439
  br i1 %226, label %227, label %229, !dbg !1442

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1439
  store i8 63, i8* %228, align 1, !dbg !1439, !tbaa !717
  br label %229, !dbg !1439

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1234, metadata !584), !dbg !1297
  %231 = icmp ult i64 %230, %130, !dbg !1443
  br i1 %231, label %232, label %234, !dbg !1446

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1443
  store i8 34, i8* %233, align 1, !dbg !1443, !tbaa !717
  br label %234, !dbg !1443

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1234, metadata !584), !dbg !1297
  %236 = icmp ult i64 %235, %130, !dbg !1447
  br i1 %236, label %237, label %239, !dbg !1450

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1447
  store i8 34, i8* %238, align 1, !dbg !1447, !tbaa !717
  br label %239, !dbg !1447

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1234, metadata !584), !dbg !1297
  %241 = icmp ult i64 %240, %130, !dbg !1451
  br i1 %241, label %242, label %244, !dbg !1454

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1451
  store i8 63, i8* %243, align 1, !dbg !1451, !tbaa !717
  br label %244, !dbg !1451

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1234, metadata !584), !dbg !1297
  br label %470, !dbg !1455

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1248, metadata !584), !dbg !1456
  br label %256, !dbg !1457

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1248, metadata !584), !dbg !1456
  br label %256, !dbg !1458

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1248, metadata !584), !dbg !1456
  br label %254, !dbg !1459

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1248, metadata !584), !dbg !1456
  br label %254, !dbg !1460

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1248, metadata !584), !dbg !1456
  br label %256, !dbg !1461

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1248, metadata !584), !dbg !1456
  br i1 %113, label %252, label %253, !dbg !1462

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1463

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1466

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1248, metadata !584), !dbg !1456
  br i1 %117, label %256, label %635, !dbg !1468

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1248, metadata !584), !dbg !1456
  br i1 %104, label %497, label %470, !dbg !1470

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1471
  br i1 %259, label %260, label %265, !dbg !1473

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1474, !tbaa !717
  %262 = icmp ne i8 %261, 0, !dbg !1475
  %263 = icmp ne i64 %123, 0, !dbg !1476
  %264 = or i1 %263, %262, !dbg !1478
  br i1 %264, label %470, label %271, !dbg !1478

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1479
  %267 = icmp ne i64 %123, 0, !dbg !1476
  %268 = or i1 %267, %266, !dbg !1473
  br i1 %268, label %470, label %271, !dbg !1473

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1476
  br i1 %270, label %271, label %470, !dbg !1480

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1251, metadata !584), !dbg !1364
  br label %272, !dbg !1481

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1251, metadata !584), !dbg !1364
  br i1 %117, label %470, label %635, !dbg !1482

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1242, metadata !584), !dbg !1306
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1251, metadata !584), !dbg !1364
  br i1 %113, label %275, label %470, !dbg !1484

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1485

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1488
  %278 = icmp ne i64 %125, 0, !dbg !1490
  %279 = or i1 %278, %277, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1235, metadata !584), !dbg !1298
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1225, metadata !584), !dbg !1289
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1491
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1225, metadata !584), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1235, metadata !584), !dbg !1298
  %282 = icmp ult i64 %124, %281, !dbg !1492
  br i1 %282, label %283, label %285, !dbg !1495

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1492
  store i8 39, i8* %284, align 1, !dbg !1492, !tbaa !717
  br label %285, !dbg !1492

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1234, metadata !584), !dbg !1297
  %287 = icmp ult i64 %286, %281, !dbg !1496
  br i1 %287, label %288, label %290, !dbg !1499

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1496
  store i8 92, i8* %289, align 1, !dbg !1496, !tbaa !717
  br label %290, !dbg !1496

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1234, metadata !584), !dbg !1297
  %292 = icmp ult i64 %291, %281, !dbg !1500
  br i1 %292, label %293, label %295, !dbg !1503

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1500
  store i8 39, i8* %294, align 1, !dbg !1500, !tbaa !717
  br label %295, !dbg !1500

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1241, metadata !584), !dbg !1305
  br label %470, !dbg !1504

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1505

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1252, metadata !584), !dbg !1506
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1507
  %300 = load i16*, i16** %299, align 8, !dbg !1507, !tbaa !591
  %301 = zext i8 %158 to i64, !dbg !1507
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1507
  %303 = load i16, i16* %302, align 2, !dbg !1507, !tbaa !1509
  %304 = lshr i16 %303, 14, !dbg !1510
  %305 = trunc i16 %304 to i8, !dbg !1510
  %306 = and i8 %305, 1, !dbg !1510
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1255, metadata !584), !dbg !1511
  br label %362, !dbg !1512

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1513
  store i64 0, i64* %10, align 8, !dbg !1514
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1252, metadata !584), !dbg !1506
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1255, metadata !584), !dbg !1511
  %308 = icmp eq i64 %155, -1, !dbg !1515
  br i1 %308, label %309, label %311, !dbg !1517

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1227, metadata !584), !dbg !1291
  br label %311, !dbg !1519

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1227, metadata !584), !dbg !1291
  br label %313, !dbg !1520, !llvm.loop !1521

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1255, metadata !584), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1252, metadata !584), !dbg !1506
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1523
  %316 = add i64 %314, %123, !dbg !1524
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1525
  %318 = sub i64 %312, %316, !dbg !1526
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1256, metadata !584), !dbg !1527
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1274, metadata !584), !dbg !1528
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #9, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1277, metadata !584), !dbg !1530
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1531

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1255, metadata !584), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1252, metadata !584), !dbg !1506
  %321 = icmp ugt i64 %312, %316, !dbg !1532
  br i1 %321, label %322, label %347, !dbg !1534

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1535

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1252, metadata !584), !dbg !1506
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1535
  %327 = load i8, i8* %326, align 1, !dbg !1535, !tbaa !717
  %328 = icmp eq i8 %327, 0, !dbg !1534
  br i1 %328, label %347, label %329, !dbg !1536

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1252, metadata !584), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1252, metadata !584), !dbg !1506
  %331 = add i64 %330, %123, !dbg !1538
  %332 = icmp ult i64 %331, %312, !dbg !1532
  br i1 %332, label %323, label %347, !dbg !1534, !llvm.loop !1539

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1540
  %335 = and i1 %115, %334, !dbg !1543
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1278, metadata !584), !dbg !1544
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1278, metadata !584), !dbg !1544
  br i1 %335, label %336, label %350, !dbg !1543

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1545

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1278, metadata !584), !dbg !1544
  %339 = add i64 %338, %316, !dbg !1545
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1546
  %341 = load i8, i8* %340, align 1, !dbg !1546, !tbaa !717
  %342 = sext i8 %341 to i32, !dbg !1546
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1547

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1278, metadata !584), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1278, metadata !584), !dbg !1544
  %345 = icmp ult i64 %344, %319, !dbg !1540
  br i1 %345, label %337, label %350, !dbg !1549, !llvm.loop !1550

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1552

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1255, metadata !584), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1252, metadata !584), !dbg !1506
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1552
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1553, !tbaa !656
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1274, metadata !584), !dbg !1528
  %352 = call i32 @iswprint(i32 %351) #9, !dbg !1555
  %353 = icmp eq i32 %352, 0, !dbg !1555
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1255, metadata !584), !dbg !1511
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1556
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1255, metadata !584), !dbg !1511
  %355 = add i64 %319, %314, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1252, metadata !584), !dbg !1506
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1255, metadata !584), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1252, metadata !584), !dbg !1506
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1552
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1256, metadata !584), !dbg !1527
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1558
  %357 = icmp eq i32 %356, 0, !dbg !1559
  br i1 %357, label %313, label %358, !dbg !1560, !llvm.loop !1521

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1561
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1255, metadata !584), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1252, metadata !584), !dbg !1506
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1552
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1561
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1255, metadata !584), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1252, metadata !584), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1227, metadata !584), !dbg !1291
  %366 = and i8 %365, 1, !dbg !1562
  %367 = icmp ne i8 %366, 0, !dbg !1562
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1251, metadata !584), !dbg !1364
  %368 = icmp ult i64 %364, 2, !dbg !1563
  %369 = or i1 %367, %112, !dbg !1564
  %370 = and i1 %368, %369, !dbg !1565
  br i1 %370, label %470, label %371, !dbg !1565

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1285, metadata !584), !dbg !1567
  br label %373, !dbg !1568

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1250, metadata !584), !dbg !1363
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1249, metadata !584), !dbg !1362
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1244, metadata !584), !dbg !1378
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1233, metadata !584), !dbg !1354
  br i1 %369, label %426, label %380, !dbg !1569

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1574

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1250, metadata !584), !dbg !1363
  %382 = and i8 %376, 1, !dbg !1577
  %383 = icmp eq i8 %382, 0, !dbg !1577
  %384 = and i1 %113, %383, !dbg !1577
  br i1 %384, label %385, label %401, !dbg !1577

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1579
  br i1 %386, label %387, label %389, !dbg !1583

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1579
  store i8 39, i8* %388, align 1, !dbg !1579, !tbaa !717
  br label %389, !dbg !1579

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1234, metadata !584), !dbg !1297
  %391 = icmp ult i64 %390, %130, !dbg !1584
  br i1 %391, label %392, label %394, !dbg !1587

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1584
  store i8 36, i8* %393, align 1, !dbg !1584, !tbaa !717
  br label %394, !dbg !1584

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1234, metadata !584), !dbg !1297
  %396 = icmp ult i64 %395, %130, !dbg !1588
  br i1 %396, label %397, label %399, !dbg !1591

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1588
  store i8 39, i8* %398, align 1, !dbg !1588, !tbaa !717
  br label %399, !dbg !1588

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1241, metadata !584), !dbg !1305
  br label %401, !dbg !1592

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1234, metadata !584), !dbg !1297
  %404 = icmp ult i64 %402, %130, !dbg !1593
  br i1 %404, label %405, label %407, !dbg !1596

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1593
  store i8 92, i8* %406, align 1, !dbg !1593, !tbaa !717
  br label %407, !dbg !1593

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1234, metadata !584), !dbg !1297
  %409 = icmp ult i64 %408, %130, !dbg !1597
  br i1 %409, label %410, label %414, !dbg !1600

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1597
  %412 = or i8 %411, 48, !dbg !1597
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1597
  store i8 %412, i8* %413, align 1, !dbg !1597, !tbaa !717
  br label %414, !dbg !1597

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1234, metadata !584), !dbg !1297
  %416 = icmp ult i64 %415, %130, !dbg !1601
  br i1 %416, label %417, label %422, !dbg !1604

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1601
  %419 = and i8 %418, 7, !dbg !1601
  %420 = or i8 %419, 48, !dbg !1601
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1601
  store i8 %420, i8* %421, align 1, !dbg !1601, !tbaa !717
  br label %422, !dbg !1601

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1234, metadata !584), !dbg !1297
  %424 = and i8 %377, 7, !dbg !1605
  %425 = or i8 %424, 48, !dbg !1606
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1244, metadata !584), !dbg !1378
  br label %435, !dbg !1607

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1608
  %428 = icmp eq i8 %427, 0, !dbg !1608
  br i1 %428, label %435, label %429, !dbg !1610

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1611
  br i1 %430, label %431, label %433, !dbg !1615

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1611
  store i8 92, i8* %432, align 1, !dbg !1611, !tbaa !717
  br label %433, !dbg !1611

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1249, metadata !584), !dbg !1362
  br label %435, !dbg !1616

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1250, metadata !584), !dbg !1363
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1249, metadata !584), !dbg !1362
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1244, metadata !584), !dbg !1378
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1234, metadata !584), !dbg !1297
  %441 = add i64 %374, 1, !dbg !1617
  %442 = icmp ugt i64 %372, %441, !dbg !1619
  br i1 %442, label %443, label %535, !dbg !1620

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1621
  %445 = icmp ne i8 %444, 0, !dbg !1621
  %446 = and i8 %440, 1, !dbg !1621
  %447 = icmp eq i8 %446, 0, !dbg !1621
  %448 = and i1 %445, %447, !dbg !1621
  br i1 %448, label %449, label %460, !dbg !1621

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1624
  br i1 %450, label %451, label %453, !dbg !1628

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1624
  store i8 39, i8* %452, align 1, !dbg !1624, !tbaa !717
  br label %453, !dbg !1624

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1234, metadata !584), !dbg !1297
  %455 = icmp ult i64 %454, %130, !dbg !1629
  br i1 %455, label %456, label %458, !dbg !1632

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1629
  store i8 39, i8* %457, align 1, !dbg !1629, !tbaa !717
  br label %458, !dbg !1629

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1241, metadata !584), !dbg !1305
  br label %460, !dbg !1633

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1234, metadata !584), !dbg !1297
  %463 = icmp ult i64 %461, %130, !dbg !1634
  br i1 %463, label %464, label %466, !dbg !1637

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1634
  store i8 %438, i8* %465, align 1, !dbg !1634, !tbaa !717
  br label %466, !dbg !1634

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1233, metadata !584), !dbg !1354
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1638
  %469 = load i8, i8* %468, align 1, !dbg !1638, !tbaa !717
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1244, metadata !584), !dbg !1378
  br label %373, !dbg !1639, !llvm.loop !1640

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1225, metadata !584), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1251, metadata !584), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1250, metadata !584), !dbg !1363
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1249, metadata !584), !dbg !1362
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1244, metadata !584), !dbg !1378
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1242, metadata !584), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1227, metadata !584), !dbg !1291
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1235, metadata !584), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1233, metadata !584), !dbg !1354
  br i1 %106, label %482, label %481, !dbg !1643

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1645

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1646

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1647
  %485 = zext i8 %484 to i64, !dbg !1647
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1648
  %487 = load i32, i32* %486, align 4, !dbg !1648, !tbaa !656
  %488 = and i8 %477, 31, !dbg !1649
  %489 = zext i8 %488 to i32, !dbg !1650
  %490 = shl i32 1, %489, !dbg !1651
  %491 = and i32 %487, %490, !dbg !1651
  %492 = icmp eq i32 %491, 0, !dbg !1651
  %493 = icmp eq i8 %156, 0, !dbg !1652
  %494 = and i1 %493, %492, !dbg !1653
  br i1 %494, label %535, label %497, !dbg !1653

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1652
  br i1 %496, label %535, label %497, !dbg !1654

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1225, metadata !584), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1251, metadata !584), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1244, metadata !584), !dbg !1378
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1242, metadata !584), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1227, metadata !584), !dbg !1291
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1235, metadata !584), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1233, metadata !584), !dbg !1354
  br i1 %111, label %507, label %635, !dbg !1655

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1250, metadata !584), !dbg !1363
  %508 = and i8 %502, 1, !dbg !1657
  %509 = icmp eq i8 %508, 0, !dbg !1657
  %510 = and i1 %113, %509, !dbg !1657
  br i1 %510, label %511, label %527, !dbg !1657

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1659
  br i1 %512, label %513, label %515, !dbg !1663

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1659
  store i8 39, i8* %514, align 1, !dbg !1659, !tbaa !717
  br label %515, !dbg !1659

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1234, metadata !584), !dbg !1297
  %517 = icmp ult i64 %516, %506, !dbg !1664
  br i1 %517, label %518, label %520, !dbg !1667

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1664
  store i8 36, i8* %519, align 1, !dbg !1664, !tbaa !717
  br label %520, !dbg !1664

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1234, metadata !584), !dbg !1297
  %522 = icmp ult i64 %521, %506, !dbg !1668
  br i1 %522, label %523, label %525, !dbg !1671

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1668
  store i8 39, i8* %524, align 1, !dbg !1668, !tbaa !717
  br label %525, !dbg !1668

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1241, metadata !584), !dbg !1305
  br label %527, !dbg !1672

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1234, metadata !584), !dbg !1297
  %530 = icmp ult i64 %528, %506, !dbg !1673
  br i1 %530, label %531, label %533, !dbg !1676

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1673
  store i8 92, i8* %532, align 1, !dbg !1673, !tbaa !717
  br label %533, !dbg !1673

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1225, metadata !584), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1251, metadata !584), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1250, metadata !584), !dbg !1363
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1244, metadata !584), !dbg !1378
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1242, metadata !584), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1227, metadata !584), !dbg !1291
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1235, metadata !584), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1233, metadata !584), !dbg !1354
  br label %562, !dbg !1677

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1225, metadata !584), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1251, metadata !584), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1250, metadata !584), !dbg !1363
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1244, metadata !584), !dbg !1378
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1242, metadata !584), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1227, metadata !584), !dbg !1291
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1235, metadata !584), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1233, metadata !584), !dbg !1354
  %546 = and i8 %540, 1, !dbg !1677
  %547 = icmp ne i8 %546, 0, !dbg !1677
  %548 = and i8 %543, 1, !dbg !1677
  %549 = icmp eq i8 %548, 0, !dbg !1677
  %550 = and i1 %547, %549, !dbg !1677
  br i1 %550, label %551, label %562, !dbg !1677

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1680
  br i1 %552, label %553, label %555, !dbg !1684

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1680
  store i8 39, i8* %554, align 1, !dbg !1680, !tbaa !717
  br label %555, !dbg !1680

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1234, metadata !584), !dbg !1297
  %557 = icmp ult i64 %556, %545, !dbg !1685
  br i1 %557, label %558, label %560, !dbg !1688

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1685
  store i8 39, i8* %559, align 1, !dbg !1685, !tbaa !717
  br label %560, !dbg !1685

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1241, metadata !584), !dbg !1305
  br label %562, !dbg !1689

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1234, metadata !584), !dbg !1297
  %572 = icmp ult i64 %570, %563, !dbg !1690
  br i1 %572, label %573, label %575, !dbg !1693

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1690
  store i8 %565, i8* %574, align 1, !dbg !1690, !tbaa !717
  br label %575, !dbg !1690

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1234, metadata !584), !dbg !1297
  %577 = and i8 %564, 1, !dbg !1694
  %578 = icmp eq i8 %577, 0, !dbg !1694
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1243, metadata !584), !dbg !1307
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1696
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1243, metadata !584), !dbg !1307
  br label %580, !dbg !1697

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1225, metadata !584), !dbg !1289
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1243, metadata !584), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1242, metadata !584), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1241, metadata !584), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1227, metadata !584), !dbg !1291
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1235, metadata !584), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1233, metadata !584), !dbg !1354
  %589 = add i64 %581, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1233, metadata !584), !dbg !1354
  br label %122, !dbg !1699, !llvm.loop !1700

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1702
  %593 = and i1 %113, %592, !dbg !1704
  %594 = xor i1 %593, true, !dbg !1704
  %595 = or i1 %111, %594, !dbg !1704
  br i1 %595, label %596, label %635, !dbg !1704

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1705
  %598 = xor i1 %597, true, !dbg !1705
  %599 = and i8 %128, 1, !dbg !1707
  %600 = icmp eq i8 %599, 0, !dbg !1707
  %601 = or i1 %600, %598, !dbg !1705
  br i1 %601, label %611, label %602, !dbg !1705

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1708
  %604 = icmp eq i8 %603, 0, !dbg !1708
  br i1 %604, label %607, label %605, !dbg !1711

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1712
  br label %645, !dbg !1713

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1714
  %609 = icmp ne i64 %125, 0, !dbg !1716
  %610 = and i1 %609, %608, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1225, metadata !584), !dbg !1289
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1234, metadata !584), !dbg !1297
  br i1 %610, label %27, label %611, !dbg !1717

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1718
  %613 = and i1 %612, %111, !dbg !1720
  br i1 %613, label %614, label %630, !dbg !1720

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1236, metadata !584), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1234, metadata !584), !dbg !1297
  %615 = load i8, i8* %99, align 1, !dbg !1721, !tbaa !717
  %616 = icmp eq i8 %615, 0, !dbg !1724
  br i1 %616, label %630, label %617, !dbg !1724

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1725

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1234, metadata !584), !dbg !1297
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1236, metadata !584), !dbg !1299
  %622 = icmp ult i64 %621, %130, !dbg !1725
  br i1 %622, label %623, label %625, !dbg !1728

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1725
  store i8 %619, i8* %624, align 1, !dbg !1725, !tbaa !717
  br label %625, !dbg !1725

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1234, metadata !584), !dbg !1297
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1729
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1236, metadata !584), !dbg !1299
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1236, metadata !584), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1234, metadata !584), !dbg !1297
  %628 = load i8, i8* %627, align 1, !dbg !1721, !tbaa !717
  %629 = icmp eq i8 %628, 0, !dbg !1724
  br i1 %629, label %630, label %618, !dbg !1724, !llvm.loop !1730

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1234, metadata !584), !dbg !1297
  %632 = icmp ult i64 %631, %130, !dbg !1732
  br i1 %632, label %633, label %645, !dbg !1734

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1735
  store i8 0, i8* %634, align 1, !dbg !1736, !tbaa !717
  br label %645, !dbg !1735

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1225, metadata !584), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1227, metadata !584), !dbg !1291
  %639 = icmp ne i32 %636, 2, !dbg !1737
  %640 = icmp eq i8 %103, 0, !dbg !1739
  %641 = or i1 %639, %640, !dbg !1740
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1228, metadata !584), !dbg !1292
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1740
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1228, metadata !584), !dbg !1292
  %643 = and i32 %5, -3, !dbg !1741
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1742
  br label %645, !dbg !1743

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1744
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1745 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1749, metadata !584), !dbg !1753
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1750, metadata !584), !dbg !1754
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1755
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1751, metadata !584), !dbg !1756
  %4 = icmp eq i8* %3, %0, !dbg !1757
  br i1 %4, label %5, label %75, !dbg !1759

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1760
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1752, metadata !584), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1762, metadata !584), !dbg !1778
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1776, metadata !584), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1777, metadata !584), !dbg !1782
  %7 = load i8, i8* %6, align 1, !dbg !1783, !tbaa !717
  %8 = sext i8 %7 to i32, !dbg !1783
  %9 = and i32 %8, -33, !dbg !1783
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1783

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1785, metadata !584), !dbg !1799
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1797, metadata !584), !dbg !1803
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1798, metadata !584), !dbg !1804
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1805
  %12 = load i8, i8* %11, align 1, !dbg !1805, !tbaa !717
  %13 = sext i8 %12 to i32, !dbg !1805
  %14 = and i32 %13, -33, !dbg !1805
  %15 = icmp eq i32 %14, 84, !dbg !1805
  br i1 %15, label %16, label %72, !dbg !1805

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1807, metadata !584), !dbg !1820
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1818, metadata !584), !dbg !1824
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1819, metadata !584), !dbg !1825
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1826
  %18 = load i8, i8* %17, align 1, !dbg !1826, !tbaa !717
  %19 = sext i8 %18 to i32, !dbg !1826
  %20 = and i32 %19, -33, !dbg !1826
  %21 = icmp eq i32 %20, 70, !dbg !1826
  br i1 %21, label %22, label %72, !dbg !1826

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1828, metadata !584), !dbg !1840
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1838, metadata !584), !dbg !1844
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1839, metadata !584), !dbg !1845
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1846
  %24 = load i8, i8* %23, align 1, !dbg !1846, !tbaa !717
  %25 = icmp eq i8 %24, 45, !dbg !1846
  br i1 %25, label %26, label %72, !dbg !1848

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1849, metadata !584), !dbg !1860
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1858, metadata !584), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1859, metadata !584), !dbg !1865
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1866
  %28 = load i8, i8* %27, align 1, !dbg !1866, !tbaa !717
  %29 = icmp eq i8 %28, 56, !dbg !1866
  br i1 %29, label %30, label %72, !dbg !1868

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1869, metadata !584), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1877, metadata !584), !dbg !1883
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1878, metadata !584), !dbg !1884
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1885
  %32 = load i8, i8* %31, align 1, !dbg !1885, !tbaa !717
  %33 = icmp eq i8 %32, 0, !dbg !1885
  br i1 %33, label %34, label %72, !dbg !1887

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1888, !tbaa !717
  %36 = icmp eq i8 %35, 96, !dbg !1889
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.54, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.55, i64 0, i64 0), !dbg !1888
  br label %75, !dbg !1890

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1785, metadata !584), !dbg !1891
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1797, metadata !584), !dbg !1895
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1798, metadata !584), !dbg !1896
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1897
  %40 = load i8, i8* %39, align 1, !dbg !1897, !tbaa !717
  %41 = sext i8 %40 to i32, !dbg !1897
  %42 = and i32 %41, -33, !dbg !1897
  %43 = icmp eq i32 %42, 66, !dbg !1897
  br i1 %43, label %44, label %72, !dbg !1897

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1807, metadata !584), !dbg !1898
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1818, metadata !584), !dbg !1900
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1819, metadata !584), !dbg !1901
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1902
  %46 = load i8, i8* %45, align 1, !dbg !1902, !tbaa !717
  %47 = icmp eq i8 %46, 49, !dbg !1902
  br i1 %47, label %48, label %72, !dbg !1903

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1828, metadata !584), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1838, metadata !584), !dbg !1906
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1839, metadata !584), !dbg !1907
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1908
  %50 = load i8, i8* %49, align 1, !dbg !1908, !tbaa !717
  %51 = icmp eq i8 %50, 56, !dbg !1908
  br i1 %51, label %52, label %72, !dbg !1909

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1849, metadata !584), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1858, metadata !584), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1859, metadata !584), !dbg !1913
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1914
  %54 = load i8, i8* %53, align 1, !dbg !1914, !tbaa !717
  %55 = icmp eq i8 %54, 48, !dbg !1914
  br i1 %55, label %56, label %72, !dbg !1915

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1869, metadata !584), !dbg !1916
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1877, metadata !584), !dbg !1918
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1878, metadata !584), !dbg !1919
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1920
  %58 = load i8, i8* %57, align 1, !dbg !1920, !tbaa !717
  %59 = icmp eq i8 %58, 51, !dbg !1920
  br i1 %59, label %60, label %72, !dbg !1921

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1922, metadata !584), !dbg !1931
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1929, metadata !584), !dbg !1935
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1930, metadata !584), !dbg !1936
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1937
  %62 = load i8, i8* %61, align 1, !dbg !1937, !tbaa !717
  %63 = icmp eq i8 %62, 48, !dbg !1937
  br i1 %63, label %64, label %72, !dbg !1939

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1940, metadata !584), !dbg !1948
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1946, metadata !584), !dbg !1952
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1947, metadata !584), !dbg !1953
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1954
  %66 = load i8, i8* %65, align 1, !dbg !1954, !tbaa !717
  %67 = icmp eq i8 %66, 0, !dbg !1954
  br i1 %67, label %68, label %72, !dbg !1956

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1957, !tbaa !717
  %70 = icmp eq i8 %69, 96, !dbg !1958
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1957
  br label %75, !dbg !1959

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1960
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), !dbg !1961
  br label %75, !dbg !1962

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1963
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1964 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1968, metadata !584), !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1969, metadata !584), !dbg !1972
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1970, metadata !584), !dbg !1973
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1974, metadata !584) #9, !dbg !1987
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1979, metadata !584) #9, !dbg !1989
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1980, metadata !584) #9, !dbg !1990
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1981, metadata !584) #9, !dbg !1991
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1992
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1992
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1982, metadata !584) #9, !dbg !1993
  %6 = tail call i32* @__errno_location() #17, !dbg !1994
  %7 = load i32, i32* %6, align 4, !dbg !1994, !tbaa !656
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1983, metadata !584) #9, !dbg !1995
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1996
  %9 = load i32, i32* %8, align 4, !dbg !1996, !tbaa !1157
  %10 = or i32 %9, 1, !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1984, metadata !584) #9, !dbg !1998
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1999
  %12 = load i32, i32* %11, align 8, !dbg !1999, !tbaa !1097
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2000
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2001
  %15 = load i8*, i8** %14, align 8, !dbg !2001, !tbaa !1183
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2002
  %17 = load i8*, i8** %16, align 8, !dbg !2002, !tbaa !1186
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !2003
  %19 = add i64 %18, 1, !dbg !2004
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1985, metadata !584) #9, !dbg !2005
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2006, metadata !584) #9, !dbg !2011
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !2013
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1986, metadata !584) #9, !dbg !2014
  %21 = load i32, i32* %11, align 8, !dbg !2015, !tbaa !1097
  %22 = load i8*, i8** %14, align 8, !dbg !2016, !tbaa !1183
  %23 = load i8*, i8** %16, align 8, !dbg !2017, !tbaa !1186
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !2018
  store i32 %7, i32* %6, align 4, !dbg !2019, !tbaa !656
  ret i8* %20, !dbg !2020
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1975 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1974, metadata !584), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1979, metadata !584), !dbg !2022
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1980, metadata !584), !dbg !2023
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1981, metadata !584), !dbg !2024
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2025
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2025
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1982, metadata !584), !dbg !2026
  %7 = tail call i32* @__errno_location() #17, !dbg !2027
  %8 = load i32, i32* %7, align 4, !dbg !2027, !tbaa !656
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1983, metadata !584), !dbg !2028
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2029
  %10 = load i32, i32* %9, align 4, !dbg !2029, !tbaa !1157
  %11 = icmp ne i64* %2, null, !dbg !2030
  %12 = xor i1 %11, true, !dbg !2030
  %13 = zext i1 %12 to i32, !dbg !2030
  %14 = or i32 %10, %13, !dbg !2031
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1984, metadata !584), !dbg !2032
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2033
  %16 = load i32, i32* %15, align 8, !dbg !2033, !tbaa !1097
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2034
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2035
  %19 = load i8*, i8** %18, align 8, !dbg !2035, !tbaa !1183
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2036
  %21 = load i8*, i8** %20, align 8, !dbg !2036, !tbaa !1186
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2037
  %23 = add i64 %22, 1, !dbg !2038
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1985, metadata !584), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2006, metadata !584) #9, !dbg !2040
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2042
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1986, metadata !584), !dbg !2043
  %25 = load i32, i32* %15, align 8, !dbg !2044, !tbaa !1097
  %26 = load i8*, i8** %18, align 8, !dbg !2045, !tbaa !1183
  %27 = load i8*, i8** %20, align 8, !dbg !2046, !tbaa !1186
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2047
  store i32 %8, i32* %7, align 4, !dbg !2048, !tbaa !656
  br i1 %11, label %29, label %30, !dbg !2049

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2050, !tbaa !2052
  br label %30, !dbg !2053

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2054
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2055 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2059, !tbaa !591
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2057, metadata !584), !dbg !2060
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2058, metadata !584), !dbg !2061
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2058, metadata !584), !dbg !2061
  %2 = load i32, i32* @nslots, align 4, !dbg !2062, !tbaa !656
  %3 = icmp sgt i32 %2, 1, !dbg !2065
  br i1 %3, label %4, label %13, !dbg !2066

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2067

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2058, metadata !584), !dbg !2061
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2067
  %8 = load i8*, i8** %7, align 8, !dbg !2067, !tbaa !2068
  tail call void @free(i8* %8) #9, !dbg !2070
  %9 = add nuw i64 %6, 1, !dbg !2071
  %10 = load i32, i32* @nslots, align 4, !dbg !2062, !tbaa !656
  %11 = sext i32 %10 to i64, !dbg !2065
  %12 = icmp slt i64 %9, %11, !dbg !2065
  br i1 %12, label %5, label %13, !dbg !2066, !llvm.loop !2072

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2074
  %15 = load i8*, i8** %14, align 8, !dbg !2074, !tbaa !2068
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2076
  br i1 %16, label %18, label %17, !dbg !2077

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #9, !dbg !2078
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2080, !tbaa !2081
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2082, !tbaa !2068
  br label %18, !dbg !2083

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2084
  br i1 %19, label %22, label %20, !dbg !2086

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2087
  tail call void @free(i8* %21) #9, !dbg !2089
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2090, !tbaa !591
  br label %22, !dbg !2091

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2092, !tbaa !656
  ret void, !dbg !2093
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2094 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2098, metadata !584), !dbg !2100
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2099, metadata !584), !dbg !2101
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2102
  ret i8* %3, !dbg !2103
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2104 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2108, metadata !584), !dbg !2122
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2109, metadata !584), !dbg !2123
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2110, metadata !584), !dbg !2124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2111, metadata !584), !dbg !2125
  %5 = tail call i32* @__errno_location() #17, !dbg !2126
  %6 = load i32, i32* %5, align 4, !dbg !2126, !tbaa !656
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2112, metadata !584), !dbg !2127
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2128, !tbaa !591
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2113, metadata !584), !dbg !2129
  %8 = icmp slt i32 %0, 0, !dbg !2130
  br i1 %8, label %9, label %10, !dbg !2132

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2133
  unreachable, !dbg !2133

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2134, !tbaa !656
  %12 = icmp sgt i32 %11, %0, !dbg !2135
  br i1 %12, label %34, label %13, !dbg !2136

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2137
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2138
  br i1 %15, label %16, label %17, !dbg !2140

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2141
  unreachable, !dbg !2141

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2142
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2142
  %20 = add nsw i32 %0, 1, !dbg !2143
  %21 = sext i32 %20 to i64, !dbg !2144
  %22 = shl nsw i64 %21, 4, !dbg !2145
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2146
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2146
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2113, metadata !584), !dbg !2129
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2147, !tbaa !591
  br i1 %14, label %25, label %26, !dbg !2148

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2149, !tbaa.struct !2151
  br label %26, !dbg !2152

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2153, !tbaa !656
  %28 = sext i32 %27 to i64, !dbg !2154
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2154
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2155
  %31 = sub nsw i32 %20, %27, !dbg !2156
  %32 = sext i32 %31 to i64, !dbg !2157
  %33 = shl nsw i64 %32, 4, !dbg !2158
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2155
  store i32 %20, i32* @nslots, align 4, !dbg !2159, !tbaa !656
  br label %34, !dbg !2160

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2113, metadata !584), !dbg !2129
  %36 = sext i32 %0 to i64, !dbg !2161
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2162
  %38 = load i64, i64* %37, align 8, !dbg !2162, !tbaa !2081
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2117, metadata !584), !dbg !2163
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2164
  %40 = load i8*, i8** %39, align 8, !dbg !2164, !tbaa !2068
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2119, metadata !584), !dbg !2165
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2166
  %42 = load i32, i32* %41, align 4, !dbg !2166, !tbaa !1157
  %43 = or i32 %42, 1, !dbg !2167
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2120, metadata !584), !dbg !2168
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2169
  %45 = load i32, i32* %44, align 8, !dbg !2169, !tbaa !1097
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2170
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2171
  %48 = load i8*, i8** %47, align 8, !dbg !2171, !tbaa !1183
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2172
  %50 = load i8*, i8** %49, align 8, !dbg !2172, !tbaa !1186
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2173
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2121, metadata !584), !dbg !2174
  %52 = icmp ugt i64 %38, %51, !dbg !2175
  br i1 %52, label %63, label %53, !dbg !2177

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2178
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2117, metadata !584), !dbg !2163
  store i64 %54, i64* %37, align 8, !dbg !2180, !tbaa !2081
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2181
  br i1 %55, label %57, label %56, !dbg !2183

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2184
  br label %57, !dbg !2184

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2006, metadata !584) #9, !dbg !2185
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2187
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2119, metadata !584), !dbg !2165
  store i8* %58, i8** %39, align 8, !dbg !2188, !tbaa !2068
  %59 = load i32, i32* %44, align 8, !dbg !2189, !tbaa !1097
  %60 = load i8*, i8** %47, align 8, !dbg !2190, !tbaa !1183
  %61 = load i8*, i8** %49, align 8, !dbg !2191, !tbaa !1186
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2192
  br label %63, !dbg !2193

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2119, metadata !584), !dbg !2165
  store i32 %6, i32* %5, align 4, !dbg !2194, !tbaa !656
  ret i8* %64, !dbg !2195
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2196 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2200, metadata !584), !dbg !2203
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2201, metadata !584), !dbg !2204
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2202, metadata !584), !dbg !2205
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2206
  ret i8* %4, !dbg !2207
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2208 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2212, metadata !584), !dbg !2213
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2098, metadata !584) #9, !dbg !2214
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2099, metadata !584) #9, !dbg !2216
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2217
  ret i8* %2, !dbg !2218
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2219 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2223, metadata !584), !dbg !2225
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2224, metadata !584), !dbg !2226
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2200, metadata !584) #9, !dbg !2227
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2201, metadata !584) #9, !dbg !2229
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2202, metadata !584) #9, !dbg !2230
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2231
  ret i8* %3, !dbg !2232
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2233 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2241, metadata !2247), !dbg !2248
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2237, metadata !584), !dbg !2250
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2238, metadata !584), !dbg !2251
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2239, metadata !584), !dbg !2252
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2253
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2253
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2240, metadata !584), !dbg !2254
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2246, metadata !584) #9, !dbg !2255
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2256
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2256
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2241, metadata !584) #9, !dbg !2248
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2241, metadata !2257) #9, !dbg !2248
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2248
  %8 = icmp eq i32 %1, 10, !dbg !2258
  br i1 %8, label %9, label %10, !dbg !2260

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2261, !noalias !2262
  unreachable, !dbg !2261

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2241, metadata !2257) #9, !dbg !2248
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2265
  store i32 %1, i32* %11, align 8, !dbg !2265, !alias.scope !2262
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2265
  %13 = bitcast i32* %12 to i8*, !dbg !2265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2265
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2266
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2240, metadata !584), !dbg !2254
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2267
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2268
  ret i8* %14, !dbg !2269
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2270 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2241, metadata !2247), !dbg !2279
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2274, metadata !584), !dbg !2281
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2275, metadata !584), !dbg !2282
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2276, metadata !584), !dbg !2283
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2277, metadata !584), !dbg !2284
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2285
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2285
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2278, metadata !584), !dbg !2286
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2246, metadata !584) #9, !dbg !2287
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2288
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2288
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2241, metadata !584) #9, !dbg !2279
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2241, metadata !2257) #9, !dbg !2279
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2279
  %9 = icmp eq i32 %1, 10, !dbg !2289
  br i1 %9, label %10, label %11, !dbg !2290

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2291, !noalias !2292
  unreachable, !dbg !2291

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2241, metadata !2257) #9, !dbg !2279
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2295
  store i32 %1, i32* %12, align 8, !dbg !2295, !alias.scope !2292
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2295
  %14 = bitcast i32* %13 to i8*, !dbg !2295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2295
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2296
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2278, metadata !584), !dbg !2286
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2297
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2298
  ret i8* %15, !dbg !2299
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2300 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2241, metadata !2247), !dbg !2306
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2304, metadata !584), !dbg !2309
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2305, metadata !584), !dbg !2310
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2237, metadata !584) #9, !dbg !2311
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2238, metadata !584) #9, !dbg !2312
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2239, metadata !584) #9, !dbg !2313
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2314
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2314
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2240, metadata !584) #9, !dbg !2315
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2246, metadata !584) #9, !dbg !2316
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2317
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2317
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2241, metadata !584) #9, !dbg !2306
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2241, metadata !2257) #9, !dbg !2306
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2306
  %7 = icmp eq i32 %0, 10, !dbg !2318
  br i1 %7, label %8, label %9, !dbg !2319

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2320, !noalias !2321
  unreachable, !dbg !2320

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2241, metadata !2257) #9, !dbg !2306
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2324
  store i32 %0, i32* %10, align 8, !dbg !2324, !alias.scope !2321
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2324
  %12 = bitcast i32* %11 to i8*, !dbg !2324
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2324
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2325
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2240, metadata !584) #9, !dbg !2315
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2326
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2327
  ret i8* %13, !dbg !2328
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2329 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2241, metadata !2247), !dbg !2336
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2333, metadata !584), !dbg !2339
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2334, metadata !584), !dbg !2340
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2335, metadata !584), !dbg !2341
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2274, metadata !584) #9, !dbg !2342
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2275, metadata !584) #9, !dbg !2343
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2276, metadata !584) #9, !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2277, metadata !584) #9, !dbg !2345
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2346
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2278, metadata !584) #9, !dbg !2347
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2246, metadata !584) #9, !dbg !2348
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2349
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2349
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2241, metadata !584) #9, !dbg !2336
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2241, metadata !2257) #9, !dbg !2336
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2336
  %8 = icmp eq i32 %0, 10, !dbg !2350
  br i1 %8, label %9, label %10, !dbg !2351

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2352, !noalias !2353
  unreachable, !dbg !2352

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2241, metadata !2257) #9, !dbg !2336
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2356
  store i32 %0, i32* %11, align 8, !dbg !2356, !alias.scope !2353
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2356
  %13 = bitcast i32* %12 to i8*, !dbg !2356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2356
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2357
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2278, metadata !584) #9, !dbg !2347
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2358
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2359
  ret i8* %14, !dbg !2360
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2361 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2365, metadata !584), !dbg !2369
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2366, metadata !584), !dbg !2370
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2367, metadata !584), !dbg !2371
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2372
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2372
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2373, !tbaa.struct !2374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2368, metadata !584), !dbg !2375
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1116, metadata !584), !dbg !2376
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1117, metadata !584), !dbg !2378
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1118, metadata !584), !dbg !2379
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1119, metadata !584), !dbg !2380
  %6 = lshr i8 %2, 5, !dbg !2381
  %7 = zext i8 %6 to i64, !dbg !2381
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2382
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1120, metadata !584), !dbg !2383
  %9 = and i8 %2, 31, !dbg !2384
  %10 = zext i8 %9 to i32, !dbg !2385
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1122, metadata !584), !dbg !2386
  %11 = load i32, i32* %8, align 4, !dbg !2387, !tbaa !656
  %12 = lshr i32 %11, %10, !dbg !2388
  %13 = and i32 %12, 1, !dbg !2389
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1123, metadata !584), !dbg !2390
  %14 = xor i32 %13, 1, !dbg !2391
  %15 = shl i32 %14, %10, !dbg !2392
  %16 = xor i32 %15, %11, !dbg !2393
  store i32 %16, i32* %8, align 4, !dbg !2393, !tbaa !656
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2368, metadata !584), !dbg !2375
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2394
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2395
  ret i8* %17, !dbg !2396
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2397 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2401, metadata !584), !dbg !2403
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2402, metadata !584), !dbg !2404
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2365, metadata !584) #9, !dbg !2405
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2366, metadata !584) #9, !dbg !2407
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2367, metadata !584) #9, !dbg !2408
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2409
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2409
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2410, !tbaa.struct !2374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2368, metadata !584) #9, !dbg !2411
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1116, metadata !584) #9, !dbg !2412
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1117, metadata !584) #9, !dbg !2414
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1118, metadata !584) #9, !dbg !2415
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1119, metadata !584) #9, !dbg !2416
  %5 = lshr i8 %1, 5, !dbg !2417
  %6 = zext i8 %5 to i64, !dbg !2417
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2418
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1120, metadata !584) #9, !dbg !2419
  %8 = and i8 %1, 31, !dbg !2420
  %9 = zext i8 %8 to i32, !dbg !2421
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1122, metadata !584) #9, !dbg !2422
  %10 = load i32, i32* %7, align 4, !dbg !2423, !tbaa !656
  %11 = lshr i32 %10, %9, !dbg !2424
  %12 = and i32 %11, 1, !dbg !2425
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1123, metadata !584) #9, !dbg !2426
  %13 = xor i32 %12, 1, !dbg !2427
  %14 = shl i32 %13, %9, !dbg !2428
  %15 = xor i32 %14, %10, !dbg !2429
  store i32 %15, i32* %7, align 4, !dbg !2429, !tbaa !656
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2368, metadata !584) #9, !dbg !2411
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2430
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2431
  ret i8* %16, !dbg !2432
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2433 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2435, metadata !584), !dbg !2436
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2401, metadata !584) #9, !dbg !2437
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2402, metadata !584) #9, !dbg !2439
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2365, metadata !584) #9, !dbg !2440
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2366, metadata !584) #9, !dbg !2442
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2367, metadata !584) #9, !dbg !2443
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2444
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2444
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2445, !tbaa.struct !2374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2368, metadata !584) #9, !dbg !2446
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1116, metadata !584) #9, !dbg !2447
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1117, metadata !584) #9, !dbg !2449
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1118, metadata !584) #9, !dbg !2450
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1119, metadata !584) #9, !dbg !2451
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2452
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1120, metadata !584) #9, !dbg !2453
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1122, metadata !584) #9, !dbg !2454
  %5 = load i32, i32* %4, align 4, !dbg !2455, !tbaa !656
  %6 = or i32 %5, 67108864, !dbg !2456
  store i32 %6, i32* %4, align 4, !dbg !2456, !tbaa !656
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2368, metadata !584) #9, !dbg !2446
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2457
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2458
  ret i8* %7, !dbg !2459
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2460 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2462, metadata !584), !dbg !2464
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2463, metadata !584), !dbg !2465
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2365, metadata !584) #9, !dbg !2466
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2366, metadata !584) #9, !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2367, metadata !584) #9, !dbg !2469
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2470
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2470
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2471, !tbaa.struct !2374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2368, metadata !584) #9, !dbg !2472
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1116, metadata !584) #9, !dbg !2473
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1117, metadata !584) #9, !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1118, metadata !584) #9, !dbg !2476
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1119, metadata !584) #9, !dbg !2477
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2478
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1120, metadata !584) #9, !dbg !2479
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1122, metadata !584) #9, !dbg !2480
  %6 = load i32, i32* %5, align 4, !dbg !2481, !tbaa !656
  %7 = or i32 %6, 67108864, !dbg !2482
  store i32 %7, i32* %5, align 4, !dbg !2482, !tbaa !656
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2368, metadata !584) #9, !dbg !2472
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2483
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2484
  ret i8* %8, !dbg !2485
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2486 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2241, metadata !2247), !dbg !2492
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2488, metadata !584), !dbg !2494
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2489, metadata !584), !dbg !2495
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2490, metadata !584), !dbg !2496
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2497
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2497
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2246, metadata !584) #9, !dbg !2498
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2499
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2241, metadata !584) #9, !dbg !2492
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2241, metadata !2257) #9, !dbg !2492
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2492
  %9 = icmp eq i32 %1, 10, !dbg !2500
  br i1 %9, label %10, label %11, !dbg !2501

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2502, !noalias !2503
  unreachable, !dbg !2502

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2241, metadata !2257) #9, !dbg !2492
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2506
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2506
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2507
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2508
  store i32 %1, i32* %13, align 8, !dbg !2508
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2508
  %15 = bitcast i32* %14 to i8*, !dbg !2508
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2508
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2491, metadata !584), !dbg !2509
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1116, metadata !584), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1117, metadata !584), !dbg !2512
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1118, metadata !584), !dbg !2513
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1119, metadata !584), !dbg !2514
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2515
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1120, metadata !584), !dbg !2516
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1122, metadata !584), !dbg !2517
  %17 = load i32, i32* %16, align 4, !dbg !2518, !tbaa !656
  %18 = or i32 %17, 67108864, !dbg !2519
  store i32 %18, i32* %16, align 4, !dbg !2519, !tbaa !656
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2491, metadata !584), !dbg !2509
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2520
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2521
  ret i8* %19, !dbg !2522
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2523 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2527, metadata !584), !dbg !2531
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2528, metadata !584), !dbg !2532
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2529, metadata !584), !dbg !2533
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2530, metadata !584), !dbg !2534
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2535, metadata !584) #9, !dbg !2545
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2540, metadata !584) #9, !dbg !2547
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2541, metadata !584) #9, !dbg !2548
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2542, metadata !584) #9, !dbg !2549
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2543, metadata !584) #9, !dbg !2550
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2551
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2552, !tbaa.struct !2374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2544, metadata !584) #9, !dbg !2553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1165, metadata !584) #9, !dbg !2554
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1166, metadata !584) #9, !dbg !2556
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1167, metadata !584) #9, !dbg !2557
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1165, metadata !584) #9, !dbg !2554
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1165, metadata !584) #9, !dbg !2554
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2558
  store i32 10, i32* %7, align 8, !dbg !2559, !tbaa !1097
  %8 = icmp ne i8* %1, null, !dbg !2560
  %9 = icmp ne i8* %2, null, !dbg !2561
  %10 = and i1 %8, %9, !dbg !2562
  br i1 %10, label %12, label %11, !dbg !2562

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2563
  unreachable, !dbg !2563

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2564
  store i8* %1, i8** %13, align 8, !dbg !2565, !tbaa !1183
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2566
  store i8* %2, i8** %14, align 8, !dbg !2567, !tbaa !1186
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2544, metadata !584) #9, !dbg !2553
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2568
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2569
  ret i8* %15, !dbg !2570
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2536 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2535, metadata !584), !dbg !2571
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2540, metadata !584), !dbg !2572
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2541, metadata !584), !dbg !2573
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2542, metadata !584), !dbg !2574
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2543, metadata !584), !dbg !2575
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2577, !tbaa.struct !2374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2544, metadata !584), !dbg !2578
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1165, metadata !584) #9, !dbg !2579
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1166, metadata !584) #9, !dbg !2581
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1167, metadata !584) #9, !dbg !2582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1165, metadata !584) #9, !dbg !2579
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1165, metadata !584) #9, !dbg !2579
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2583
  store i32 10, i32* %8, align 8, !dbg !2584, !tbaa !1097
  %9 = icmp ne i8* %1, null, !dbg !2585
  %10 = icmp ne i8* %2, null, !dbg !2586
  %11 = and i1 %9, %10, !dbg !2587
  br i1 %11, label %13, label %12, !dbg !2587

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2588
  unreachable, !dbg !2588

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2589
  store i8* %1, i8** %14, align 8, !dbg !2590, !tbaa !1183
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2591
  store i8* %2, i8** %15, align 8, !dbg !2592, !tbaa !1186
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2544, metadata !584), !dbg !2578
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2593
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2594
  ret i8* %16, !dbg !2595
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2596 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2600, metadata !584), !dbg !2603
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2601, metadata !584), !dbg !2604
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2602, metadata !584), !dbg !2605
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2527, metadata !584) #9, !dbg !2606
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2528, metadata !584) #9, !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2529, metadata !584) #9, !dbg !2609
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2530, metadata !584) #9, !dbg !2610
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2535, metadata !584) #9, !dbg !2611
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2540, metadata !584) #9, !dbg !2613
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2541, metadata !584) #9, !dbg !2614
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2542, metadata !584) #9, !dbg !2615
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2543, metadata !584) #9, !dbg !2616
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2617
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2617
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2618, !tbaa.struct !2374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2544, metadata !584) #9, !dbg !2619
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1165, metadata !584) #9, !dbg !2620
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1166, metadata !584) #9, !dbg !2622
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1167, metadata !584) #9, !dbg !2623
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1165, metadata !584) #9, !dbg !2620
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1165, metadata !584) #9, !dbg !2620
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2624
  store i32 10, i32* %6, align 8, !dbg !2625, !tbaa !1097
  %7 = icmp ne i8* %0, null, !dbg !2626
  %8 = icmp ne i8* %1, null, !dbg !2627
  %9 = and i1 %7, %8, !dbg !2628
  br i1 %9, label %11, label %10, !dbg !2628

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2629
  unreachable, !dbg !2629

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2630
  store i8* %0, i8** %12, align 8, !dbg !2631, !tbaa !1183
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2632
  store i8* %1, i8** %13, align 8, !dbg !2633, !tbaa !1186
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2544, metadata !584) #9, !dbg !2619
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2634
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2635
  ret i8* %14, !dbg !2636
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2637 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2641, metadata !584), !dbg !2645
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2642, metadata !584), !dbg !2646
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2643, metadata !584), !dbg !2647
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2644, metadata !584), !dbg !2648
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2535, metadata !584) #9, !dbg !2649
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2540, metadata !584) #9, !dbg !2651
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2541, metadata !584) #9, !dbg !2652
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2542, metadata !584) #9, !dbg !2653
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2543, metadata !584) #9, !dbg !2654
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2655
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2655
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2656, !tbaa.struct !2374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2544, metadata !584) #9, !dbg !2657
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1165, metadata !584) #9, !dbg !2658
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1166, metadata !584) #9, !dbg !2660
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1167, metadata !584) #9, !dbg !2661
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1165, metadata !584) #9, !dbg !2658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1165, metadata !584) #9, !dbg !2658
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2662
  store i32 10, i32* %7, align 8, !dbg !2663, !tbaa !1097
  %8 = icmp ne i8* %0, null, !dbg !2664
  %9 = icmp ne i8* %1, null, !dbg !2665
  %10 = and i1 %8, %9, !dbg !2666
  br i1 %10, label %12, label %11, !dbg !2666

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2667
  unreachable, !dbg !2667

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2668
  store i8* %0, i8** %13, align 8, !dbg !2669, !tbaa !1183
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2670
  store i8* %1, i8** %14, align 8, !dbg !2671, !tbaa !1186
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2544, metadata !584) #9, !dbg !2657
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2672
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2673
  ret i8* %15, !dbg !2674
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2675 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2679, metadata !584), !dbg !2682
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2680, metadata !584), !dbg !2683
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2681, metadata !584), !dbg !2684
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2685
  ret i8* %4, !dbg !2686
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2687 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2691, metadata !584), !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2692, metadata !584), !dbg !2694
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2679, metadata !584) #9, !dbg !2695
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2680, metadata !584) #9, !dbg !2697
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2681, metadata !584) #9, !dbg !2698
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2699
  ret i8* %3, !dbg !2700
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2701 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2705, metadata !584), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2706, metadata !584), !dbg !2708
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2679, metadata !584) #9, !dbg !2709
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2680, metadata !584) #9, !dbg !2711
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2681, metadata !584) #9, !dbg !2712
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2713
  ret i8* %3, !dbg !2714
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2715 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2719, metadata !584), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2705, metadata !584) #9, !dbg !2721
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2706, metadata !584) #9, !dbg !2723
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2679, metadata !584) #9, !dbg !2724
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2680, metadata !584) #9, !dbg !2726
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2681, metadata !584) #9, !dbg !2727
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2728
  ret i8* %2, !dbg !2729
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2730 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2775, metadata !584), !dbg !2781
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2776, metadata !584), !dbg !2782
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2777, metadata !584), !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2778, metadata !584), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2779, metadata !584), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2780, metadata !584), !dbg !2786
  %7 = icmp eq i8* %1, null, !dbg !2787
  br i1 %7, label %10, label %8, !dbg !2789

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2790
  br label %12, !dbg !2790

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.61, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2791
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i32 5) #9, !dbg !2792
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2792
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.63, i64 0, i64 0), i32 5) #9, !dbg !2793
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2793
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
  ], !dbg !2794

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2795
  unreachable, !dbg !2795

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.64, i64 0, i64 0), i32 5) #9, !dbg !2797
  %20 = load i8*, i8** %4, align 8, !dbg !2797, !tbaa !591
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2797
  br label %146, !dbg !2798

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.65, i64 0, i64 0), i32 5) #9, !dbg !2799
  %24 = load i8*, i8** %4, align 8, !dbg !2799, !tbaa !591
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2799
  %26 = load i8*, i8** %25, align 8, !dbg !2799, !tbaa !591
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2799
  br label %146, !dbg !2800

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.66, i64 0, i64 0), i32 5) #9, !dbg !2801
  %30 = load i8*, i8** %4, align 8, !dbg !2801, !tbaa !591
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2801
  %32 = load i8*, i8** %31, align 8, !dbg !2801, !tbaa !591
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2801
  %34 = load i8*, i8** %33, align 8, !dbg !2801, !tbaa !591
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2801
  br label %146, !dbg !2802

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.67, i64 0, i64 0), i32 5) #9, !dbg !2803
  %38 = load i8*, i8** %4, align 8, !dbg !2803, !tbaa !591
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2803
  %40 = load i8*, i8** %39, align 8, !dbg !2803, !tbaa !591
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2803
  %42 = load i8*, i8** %41, align 8, !dbg !2803, !tbaa !591
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2803
  %44 = load i8*, i8** %43, align 8, !dbg !2803, !tbaa !591
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2803
  br label %146, !dbg !2804

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.68, i64 0, i64 0), i32 5) #9, !dbg !2805
  %48 = load i8*, i8** %4, align 8, !dbg !2805, !tbaa !591
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2805
  %50 = load i8*, i8** %49, align 8, !dbg !2805, !tbaa !591
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2805
  %52 = load i8*, i8** %51, align 8, !dbg !2805, !tbaa !591
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2805
  %54 = load i8*, i8** %53, align 8, !dbg !2805, !tbaa !591
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2805
  %56 = load i8*, i8** %55, align 8, !dbg !2805, !tbaa !591
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2805
  br label %146, !dbg !2806

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.69, i64 0, i64 0), i32 5) #9, !dbg !2807
  %60 = load i8*, i8** %4, align 8, !dbg !2807, !tbaa !591
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2807
  %62 = load i8*, i8** %61, align 8, !dbg !2807, !tbaa !591
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2807
  %64 = load i8*, i8** %63, align 8, !dbg !2807, !tbaa !591
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2807
  %66 = load i8*, i8** %65, align 8, !dbg !2807, !tbaa !591
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2807
  %68 = load i8*, i8** %67, align 8, !dbg !2807, !tbaa !591
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2807
  %70 = load i8*, i8** %69, align 8, !dbg !2807, !tbaa !591
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2807
  br label %146, !dbg !2808

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.70, i64 0, i64 0), i32 5) #9, !dbg !2809
  %74 = load i8*, i8** %4, align 8, !dbg !2809, !tbaa !591
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2809
  %76 = load i8*, i8** %75, align 8, !dbg !2809, !tbaa !591
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2809
  %78 = load i8*, i8** %77, align 8, !dbg !2809, !tbaa !591
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2809
  %80 = load i8*, i8** %79, align 8, !dbg !2809, !tbaa !591
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2809
  %82 = load i8*, i8** %81, align 8, !dbg !2809, !tbaa !591
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2809
  %84 = load i8*, i8** %83, align 8, !dbg !2809, !tbaa !591
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2809
  %86 = load i8*, i8** %85, align 8, !dbg !2809, !tbaa !591
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2809
  br label %146, !dbg !2810

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.71, i64 0, i64 0), i32 5) #9, !dbg !2811
  %90 = load i8*, i8** %4, align 8, !dbg !2811, !tbaa !591
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2811
  %92 = load i8*, i8** %91, align 8, !dbg !2811, !tbaa !591
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2811
  %94 = load i8*, i8** %93, align 8, !dbg !2811, !tbaa !591
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2811
  %96 = load i8*, i8** %95, align 8, !dbg !2811, !tbaa !591
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2811
  %98 = load i8*, i8** %97, align 8, !dbg !2811, !tbaa !591
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2811
  %100 = load i8*, i8** %99, align 8, !dbg !2811, !tbaa !591
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2811
  %102 = load i8*, i8** %101, align 8, !dbg !2811, !tbaa !591
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2811
  %104 = load i8*, i8** %103, align 8, !dbg !2811, !tbaa !591
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2811
  br label %146, !dbg !2812

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.72, i64 0, i64 0), i32 5) #9, !dbg !2813
  %108 = load i8*, i8** %4, align 8, !dbg !2813, !tbaa !591
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2813
  %110 = load i8*, i8** %109, align 8, !dbg !2813, !tbaa !591
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2813
  %112 = load i8*, i8** %111, align 8, !dbg !2813, !tbaa !591
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2813
  %114 = load i8*, i8** %113, align 8, !dbg !2813, !tbaa !591
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2813
  %116 = load i8*, i8** %115, align 8, !dbg !2813, !tbaa !591
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2813
  %118 = load i8*, i8** %117, align 8, !dbg !2813, !tbaa !591
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2813
  %120 = load i8*, i8** %119, align 8, !dbg !2813, !tbaa !591
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2813
  %122 = load i8*, i8** %121, align 8, !dbg !2813, !tbaa !591
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2813
  %124 = load i8*, i8** %123, align 8, !dbg !2813, !tbaa !591
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2813
  br label %146, !dbg !2814

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.73, i64 0, i64 0), i32 5) #9, !dbg !2815
  %128 = load i8*, i8** %4, align 8, !dbg !2815, !tbaa !591
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2815
  %130 = load i8*, i8** %129, align 8, !dbg !2815, !tbaa !591
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2815
  %132 = load i8*, i8** %131, align 8, !dbg !2815, !tbaa !591
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2815
  %134 = load i8*, i8** %133, align 8, !dbg !2815, !tbaa !591
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2815
  %136 = load i8*, i8** %135, align 8, !dbg !2815, !tbaa !591
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2815
  %138 = load i8*, i8** %137, align 8, !dbg !2815, !tbaa !591
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2815
  %140 = load i8*, i8** %139, align 8, !dbg !2815, !tbaa !591
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2815
  %142 = load i8*, i8** %141, align 8, !dbg !2815, !tbaa !591
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2815
  %144 = load i8*, i8** %143, align 8, !dbg !2815, !tbaa !591
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2815
  br label %146, !dbg !2816

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2817
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2818 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2822, metadata !584), !dbg !2828
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2823, metadata !584), !dbg !2829
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2824, metadata !584), !dbg !2830
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2825, metadata !584), !dbg !2831
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2826, metadata !584), !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2827, metadata !584), !dbg !2833
  br label %6, !dbg !2834

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2827, metadata !584), !dbg !2833
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2836
  %9 = load i8*, i8** %8, align 8, !dbg !2836, !tbaa !591
  %10 = icmp eq i8* %9, null, !dbg !2838
  %11 = add i64 %7, 1, !dbg !2839
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2827, metadata !584), !dbg !2833
  br i1 %10, label %12, label %6, !dbg !2838, !llvm.loop !2840

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2842
  ret void, !dbg !2843
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2844 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2855, metadata !584), !dbg !2863
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2856, metadata !584), !dbg !2864
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2857, metadata !584), !dbg !2865
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2858, metadata !584), !dbg !2866
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2859, metadata !584), !dbg !2867
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2868
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2868
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2861, metadata !584), !dbg !2869
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2860, metadata !584), !dbg !2870
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2860, metadata !584), !dbg !2870
  %11 = load i32, i32* %8, align 8, !dbg !2871
  %12 = icmp ult i32 %11, 41, !dbg !2871
  br i1 %12, label %13, label %18, !dbg !2871

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2871
  %15 = sext i32 %11 to i64, !dbg !2871
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2871
  %17 = add i32 %11, 8, !dbg !2871
  store i32 %17, i32* %8, align 8, !dbg !2871
  br label %21, !dbg !2871

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2871
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2871
  store i8* %20, i8** %10, align 8, !dbg !2871
  br label %21, !dbg !2871

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2871
  %25 = load i8*, i8** %24, align 8, !dbg !2871
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2874
  store i8* %25, i8** %26, align 16, !dbg !2875, !tbaa !591
  %27 = icmp eq i8* %25, null, !dbg !2876
  br i1 %27, label %30, label %28, !dbg !2877

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2860, metadata !584), !dbg !2870
  %29 = icmp ult i32 %22, 41, !dbg !2871
  br i1 %29, label %35, label %32, !dbg !2871

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2878
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2879
  ret void, !dbg !2879

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2871
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2871
  store i8* %34, i8** %10, align 8, !dbg !2871
  br label %40, !dbg !2871

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2871
  %37 = sext i32 %22 to i64, !dbg !2871
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2871
  %39 = add i32 %22, 8, !dbg !2871
  store i32 %39, i32* %8, align 8, !dbg !2871
  br label %40, !dbg !2871

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2871
  %44 = load i8*, i8** %43, align 8, !dbg !2871
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2874
  store i8* %44, i8** %45, align 8, !dbg !2875, !tbaa !591
  %46 = icmp eq i8* %44, null, !dbg !2876
  br i1 %46, label %30, label %47, !dbg !2877

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2860, metadata !584), !dbg !2870
  %48 = icmp ult i32 %41, 41, !dbg !2871
  br i1 %48, label %52, label %49, !dbg !2871

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2871
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2871
  store i8* %51, i8** %10, align 8, !dbg !2871
  br label %57, !dbg !2871

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2871
  %54 = sext i32 %41 to i64, !dbg !2871
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2871
  %56 = add i32 %41, 8, !dbg !2871
  store i32 %56, i32* %8, align 8, !dbg !2871
  br label %57, !dbg !2871

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2871
  %61 = load i8*, i8** %60, align 8, !dbg !2871
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2874
  store i8* %61, i8** %62, align 16, !dbg !2875, !tbaa !591
  %63 = icmp eq i8* %61, null, !dbg !2876
  br i1 %63, label %30, label %64, !dbg !2877

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2860, metadata !584), !dbg !2870
  %65 = icmp ult i32 %58, 41, !dbg !2871
  br i1 %65, label %69, label %66, !dbg !2871

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2871
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2871
  store i8* %68, i8** %10, align 8, !dbg !2871
  br label %74, !dbg !2871

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2871
  %71 = sext i32 %58 to i64, !dbg !2871
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2871
  %73 = add i32 %58, 8, !dbg !2871
  store i32 %73, i32* %8, align 8, !dbg !2871
  br label %74, !dbg !2871

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2871
  %78 = load i8*, i8** %77, align 8, !dbg !2871
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2874
  store i8* %78, i8** %79, align 8, !dbg !2875, !tbaa !591
  %80 = icmp eq i8* %78, null, !dbg !2876
  br i1 %80, label %30, label %81, !dbg !2877

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2860, metadata !584), !dbg !2870
  %82 = icmp ult i32 %75, 41, !dbg !2871
  br i1 %82, label %86, label %83, !dbg !2871

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2871
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2871
  store i8* %85, i8** %10, align 8, !dbg !2871
  br label %91, !dbg !2871

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2871
  %88 = sext i32 %75 to i64, !dbg !2871
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2871
  %90 = add i32 %75, 8, !dbg !2871
  store i32 %90, i32* %8, align 8, !dbg !2871
  br label %91, !dbg !2871

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2871
  %95 = load i8*, i8** %94, align 8, !dbg !2871
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2874
  store i8* %95, i8** %96, align 16, !dbg !2875, !tbaa !591
  %97 = icmp eq i8* %95, null, !dbg !2876
  br i1 %97, label %30, label %98, !dbg !2877

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2860, metadata !584), !dbg !2870
  %99 = icmp ult i32 %92, 41, !dbg !2871
  br i1 %99, label %103, label %100, !dbg !2871

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2871
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2871
  store i8* %102, i8** %10, align 8, !dbg !2871
  br label %108, !dbg !2871

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2871
  %105 = sext i32 %92 to i64, !dbg !2871
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2871
  %107 = add i32 %92, 8, !dbg !2871
  store i32 %107, i32* %8, align 8, !dbg !2871
  br label %108, !dbg !2871

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2871
  %111 = load i8*, i8** %110, align 8, !dbg !2871
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2874
  store i8* %111, i8** %112, align 8, !dbg !2875, !tbaa !591
  %113 = icmp eq i8* %111, null, !dbg !2876
  br i1 %113, label %30, label %114, !dbg !2877

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2860, metadata !584), !dbg !2870
  %115 = load i8*, i8** %10, align 8, !dbg !2871
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2871
  store i8* %116, i8** %10, align 8, !dbg !2871
  %117 = bitcast i8* %115 to i8**, !dbg !2871
  %118 = load i8*, i8** %117, align 8, !dbg !2871
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2874
  store i8* %118, i8** %119, align 16, !dbg !2875, !tbaa !591
  %120 = icmp eq i8* %118, null, !dbg !2876
  br i1 %120, label %30, label %121, !dbg !2877

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2860, metadata !584), !dbg !2870
  %122 = load i8*, i8** %10, align 8, !dbg !2871
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2871
  store i8* %123, i8** %10, align 8, !dbg !2871
  %124 = bitcast i8* %122 to i8**, !dbg !2871
  %125 = load i8*, i8** %124, align 8, !dbg !2871
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2874
  store i8* %125, i8** %126, align 8, !dbg !2875, !tbaa !591
  %127 = icmp eq i8* %125, null, !dbg !2876
  br i1 %127, label %30, label %128, !dbg !2877

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2860, metadata !584), !dbg !2870
  %129 = load i8*, i8** %10, align 8, !dbg !2871
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2871
  store i8* %130, i8** %10, align 8, !dbg !2871
  %131 = bitcast i8* %129 to i8**, !dbg !2871
  %132 = load i8*, i8** %131, align 8, !dbg !2871
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2874
  store i8* %132, i8** %133, align 16, !dbg !2875, !tbaa !591
  %134 = icmp eq i8* %132, null, !dbg !2876
  br i1 %134, label %30, label %135, !dbg !2877

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2860, metadata !584), !dbg !2870
  %136 = load i8*, i8** %10, align 8, !dbg !2871
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2871
  store i8* %137, i8** %10, align 8, !dbg !2871
  %138 = bitcast i8* %136 to i8**, !dbg !2871
  %139 = load i8*, i8** %138, align 8, !dbg !2871
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2874
  store i8* %139, i8** %140, align 8, !dbg !2875, !tbaa !591
  %141 = icmp eq i8* %139, null, !dbg !2876
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2860, metadata !584), !dbg !2870
  %142 = select i1 %141, i64 9, i64 10, !dbg !2877
  br label %30, !dbg !2877
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2880 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2884, metadata !584), !dbg !2893
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2885, metadata !584), !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2886, metadata !584), !dbg !2895
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2887, metadata !584), !dbg !2896
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2897
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2897
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2888, metadata !584), !dbg !2898
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2899
  call void @llvm.va_start(i8* nonnull %6), !dbg !2899
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2900
  call void @llvm.va_end(i8* nonnull %6), !dbg !2901
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2902
  ret void, !dbg !2902
}

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2903 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.76, i64 0, i64 0), i32 5) #9, !dbg !2904
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.77, i64 0, i64 0)) #9, !dbg !2904
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.78, i64 0, i64 0), i32 5) #9, !dbg !2905
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.80, i64 0, i64 0)) #9, !dbg !2905
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.81, i64 0, i64 0), i32 5) #9, !dbg !2906
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2906, !tbaa !591
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !2906
  ret void, !dbg !2907
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2908 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2912, metadata !584), !dbg !2914
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2913, metadata !584), !dbg !2915
  %3 = udiv i64 9223372036854775807, %1, !dbg !2916
  %4 = icmp ult i64 %3, %0, !dbg !2916
  br i1 %4, label %5, label %6, !dbg !2918

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2919
  unreachable, !dbg !2919

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2921, metadata !584) #9, !dbg !2928
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !2930
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2927, metadata !584) #9, !dbg !2931
  %9 = icmp eq i8* %8, null, !dbg !2932
  %10 = icmp ne i64 %7, 0, !dbg !2934
  %11 = and i1 %10, %9, !dbg !2935
  br i1 %11, label %12, label %13, !dbg !2935

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2936
  unreachable, !dbg !2936

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2937
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2922 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2921, metadata !584), !dbg !2938
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2939
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2927, metadata !584), !dbg !2940
  %3 = icmp eq i8* %2, null, !dbg !2941
  %4 = icmp ne i64 %0, 0, !dbg !2942
  %5 = and i1 %4, %3, !dbg !2943
  br i1 %5, label %6, label %7, !dbg !2943

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2944
  unreachable, !dbg !2944

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2945
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2946 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2950, metadata !584), !dbg !2953
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2951, metadata !584), !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2952, metadata !584), !dbg !2955
  %4 = udiv i64 9223372036854775807, %2, !dbg !2956
  %5 = icmp ult i64 %4, %1, !dbg !2956
  br i1 %5, label %6, label %7, !dbg !2958

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2959
  unreachable, !dbg !2959

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2960
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2961, metadata !584) #9, !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2966, metadata !584) #9, !dbg !2969
  %9 = icmp eq i64 %8, 0, !dbg !2970
  %10 = icmp ne i8* %0, null, !dbg !2972
  %11 = and i1 %10, %9, !dbg !2973
  br i1 %11, label %12, label %13, !dbg !2973

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !2974
  br label %19, !dbg !2976

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !2977
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2961, metadata !584) #9, !dbg !2967
  %15 = icmp eq i8* %14, null, !dbg !2978
  %16 = icmp ne i64 %8, 0, !dbg !2980
  %17 = and i1 %16, %15, !dbg !2981
  br i1 %17, label %18, label %19, !dbg !2981

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2982
  unreachable, !dbg !2982

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2983
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2962 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2961, metadata !584), !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2966, metadata !584), !dbg !2985
  %3 = icmp eq i64 %1, 0, !dbg !2986
  %4 = icmp ne i8* %0, null, !dbg !2987
  %5 = and i1 %4, %3, !dbg !2988
  br i1 %5, label %6, label %7, !dbg !2988

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !2989
  br label %13, !dbg !2990

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !2991
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2961, metadata !584), !dbg !2984
  %9 = icmp eq i8* %8, null, !dbg !2992
  %10 = icmp ne i64 %1, 0, !dbg !2993
  %11 = and i1 %10, %9, !dbg !2994
  br i1 %11, label %12, label %13, !dbg !2994

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2995
  unreachable, !dbg !2995

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2996
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !541 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !546, metadata !584), !dbg !2997
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !547, metadata !584), !dbg !2998
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !548, metadata !584), !dbg !2999
  %4 = load i64, i64* %1, align 8, !dbg !3000, !tbaa !2052
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !549, metadata !584), !dbg !3001
  %5 = icmp eq i8* %0, null, !dbg !3002
  br i1 %5, label %6, label %13, !dbg !3004

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3005
  br i1 %7, label %8, label %17, !dbg !3008

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3009
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !549, metadata !584), !dbg !3001
  %10 = icmp ugt i64 %2, 128, !dbg !3011
  %11 = zext i1 %10 to i64, !dbg !3011
  %12 = add nuw nsw i64 %9, %11, !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !549, metadata !584), !dbg !3001
  br label %17, !dbg !3013

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3014
  %15 = icmp ugt i64 %14, %4, !dbg !3017
  br i1 %15, label %20, label %16, !dbg !3018

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3019
  unreachable, !dbg !3019

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !549, metadata !584), !dbg !3001
  store i64 %18, i64* %1, align 8, !dbg !3020, !tbaa !2052
  %19 = mul i64 %18, %2, !dbg !3021
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2961, metadata !584) #9, !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2966, metadata !584) #9, !dbg !3024
  br label %27, !dbg !3025

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3026
  %22 = add i64 %4, 1, !dbg !3027
  %23 = add i64 %22, %21, !dbg !3028
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !549, metadata !584), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !549, metadata !584), !dbg !3001
  store i64 %23, i64* %1, align 8, !dbg !3020, !tbaa !2052
  %24 = mul i64 %23, %2, !dbg !3021
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2961, metadata !584) #9, !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2966, metadata !584) #9, !dbg !3024
  %25 = icmp eq i64 %24, 0, !dbg !3029
  br i1 %25, label %26, label %27, !dbg !3025

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !3030
  br label %34, !dbg !3031

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !3032
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2961, metadata !584) #9, !dbg !3022
  %30 = icmp eq i8* %29, null, !dbg !3033
  %31 = icmp ne i64 %28, 0, !dbg !3034
  %32 = and i1 %31, %30, !dbg !3035
  br i1 %32, label %33, label %34, !dbg !3035

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3036
  unreachable, !dbg !3036

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3037
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3038 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3040, metadata !584), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2921, metadata !584) #9, !dbg !3042
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3044
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2927, metadata !584) #9, !dbg !3045
  %3 = icmp eq i8* %2, null, !dbg !3046
  %4 = icmp ne i64 %0, 0, !dbg !3047
  %5 = and i1 %4, %3, !dbg !3048
  br i1 %5, label %6, label %7, !dbg !3048

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3049
  unreachable, !dbg !3049

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3050
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3051 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3055, metadata !584), !dbg !3057
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3056, metadata !584), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !546, metadata !584) #9, !dbg !3059
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !547, metadata !584) #9, !dbg !3061
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !548, metadata !584) #9, !dbg !3062
  %3 = load i64, i64* %1, align 8, !dbg !3063, !tbaa !2052
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !549, metadata !584) #9, !dbg !3064
  %4 = icmp eq i8* %0, null, !dbg !3065
  br i1 %4, label %5, label %8, !dbg !3066

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !549, metadata !584) #9, !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !549, metadata !584) #9, !dbg !3064
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !549, metadata !584) #9, !dbg !3064
  store i64 %7, i64* %1, align 8, !dbg !3069, !tbaa !2052
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2961, metadata !584) #9, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2966, metadata !584) #9, !dbg !3072
  br label %17, !dbg !3073

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3074
  br i1 %9, label %11, label %10, !dbg !3075

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3076
  unreachable, !dbg !3076

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3077
  %13 = add i64 %3, 1, !dbg !3078
  %14 = add i64 %13, %12, !dbg !3079
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !549, metadata !584) #9, !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !549, metadata !584) #9, !dbg !3064
  store i64 %14, i64* %1, align 8, !dbg !3069, !tbaa !2052
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2961, metadata !584) #9, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2966, metadata !584) #9, !dbg !3072
  %15 = icmp eq i64 %14, 0, !dbg !3080
  br i1 %15, label %16, label %17, !dbg !3073

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !3081
  br label %24, !dbg !3082

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !3083
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2961, metadata !584) #9, !dbg !3070
  %20 = icmp eq i8* %19, null, !dbg !3084
  %21 = icmp ne i64 %18, 0, !dbg !3085
  %22 = and i1 %21, %20, !dbg !3086
  br i1 %22, label %23, label %24, !dbg !3086

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3087
  unreachable, !dbg !3087

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3088
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3089 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3091, metadata !584), !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2921, metadata !584) #9, !dbg !3093
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3095
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2927, metadata !584) #9, !dbg !3096
  %3 = icmp eq i8* %2, null, !dbg !3097
  %4 = icmp ne i64 %0, 0, !dbg !3098
  %5 = and i1 %4, %3, !dbg !3099
  br i1 %5, label %6, label %7, !dbg !3099

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3100
  unreachable, !dbg !3100

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3101
  ret i8* %2, !dbg !3102
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3103 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3105, metadata !584), !dbg !3108
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3106, metadata !584), !dbg !3109
  %3 = udiv i64 9223372036854775807, %1, !dbg !3110
  %4 = icmp ult i64 %3, %0, !dbg !3110
  br i1 %4, label %8, label %5, !dbg !3112

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !3113
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3107, metadata !584), !dbg !3114
  %7 = icmp eq i8* %6, null, !dbg !3115
  br i1 %7, label %8, label %9, !dbg !3116

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3117
  unreachable, !dbg !3117

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3118
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3119 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3125, metadata !584), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3126, metadata !584), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2921, metadata !584) #9, !dbg !3129
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3131
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2927, metadata !584) #9, !dbg !3132
  %4 = icmp eq i8* %3, null, !dbg !3133
  %5 = icmp ne i64 %1, 0, !dbg !3134
  %6 = and i1 %5, %4, !dbg !3135
  br i1 %6, label %7, label %8, !dbg !3135

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3136
  unreachable, !dbg !3136

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3137
  ret i8* %3, !dbg !3138
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3139 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3141, metadata !584), !dbg !3142
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3143
  %3 = add i64 %2, 1, !dbg !3144
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3125, metadata !584) #9, !dbg !3145
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3126, metadata !584) #9, !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2921, metadata !584) #9, !dbg !3148
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2927, metadata !584) #9, !dbg !3151
  %5 = icmp eq i8* %4, null, !dbg !3152
  %6 = icmp ne i64 %3, 0, !dbg !3153
  %7 = and i1 %6, %5, !dbg !3154
  br i1 %7, label %8, label %9, !dbg !3154

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3155
  unreachable, !dbg !3155

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !3156
  ret i8* %4, !dbg !3157
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3158 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3160, !tbaa !656
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.92, i64 0, i64 0), i32 5) #9, !dbg !3161
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0), i8* %2) #9, !dbg !3162
  tail call void @abort() #15, !dbg !3163
  unreachable, !dbg !3163
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3164 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3167, metadata !584), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3168, metadata !584), !dbg !3174
  %3 = icmp eq i64 %0, 0, !dbg !3175
  %4 = icmp eq i64 %1, 0, !dbg !3176
  %5 = or i1 %3, %4, !dbg !3177
  br i1 %5, label %12, label %6, !dbg !3177

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3170, metadata !584), !dbg !3179
  %8 = udiv i64 %7, %1, !dbg !3180
  %9 = icmp eq i64 %8, %0, !dbg !3182
  br i1 %9, label %12, label %10, !dbg !3183

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3184
  store i32 12, i32* %11, align 4, !dbg !3186, !tbaa !656
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3167, metadata !584), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3168, metadata !584), !dbg !3174
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3187
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3169, metadata !584), !dbg !3188
  br label %16, !dbg !3189

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3190
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3191 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3208, metadata !584), !dbg !3217
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3209, metadata !584), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3210, metadata !584), !dbg !3219
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3211, metadata !584), !dbg !3220
  %6 = bitcast i32* %5 to i8*, !dbg !3221
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !3221
  %7 = icmp eq i32* %0, null, !dbg !3222
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3208, metadata !584), !dbg !3217
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3224
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3208, metadata !584), !dbg !3217
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3225
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3212, metadata !584), !dbg !3226
  %10 = icmp ugt i64 %9, -3, !dbg !3227
  %11 = icmp ne i64 %2, 0, !dbg !3228
  %12 = and i1 %11, %10, !dbg !3229
  br i1 %12, label %13, label %18, !dbg !3229

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3230
  br i1 %14, label %18, label %15, !dbg !3231

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3232, !tbaa !717
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3214, metadata !584), !dbg !3233
  %17 = zext i8 %16 to i32, !dbg !3234
  store i32 %17, i32* %8, align 4, !dbg !3235, !tbaa !656
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !3236
  ret i64 %19, !dbg !3236
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3237 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3282, metadata !584), !dbg !3287
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3288
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3289, metadata !584), !dbg !3292
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3294
  %4 = load i32, i32* %3, align 8, !dbg !3294, !tbaa !3295
  %5 = and i32 %4, 32, !dbg !3294
  %6 = icmp eq i32 %5, 0, !dbg !3296
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3297
  %8 = icmp ne i32 %7, 0, !dbg !3298
  br i1 %6, label %9, label %19, !dbg !3299

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3301
  %11 = xor i1 %8, true, !dbg !3302
  %12 = or i1 %10, %11, !dbg !3302
  %13 = sext i1 %8 to i32, !dbg !3302
  br i1 %12, label %22, label %14, !dbg !3302

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3303
  %16 = load i32, i32* %15, align 4, !dbg !3303, !tbaa !656
  %17 = icmp ne i32 %16, 9, !dbg !3304
  %18 = sext i1 %17 to i32, !dbg !3305
  br label %22, !dbg !3305

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3306

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3308
  store i32 0, i32* %21, align 4, !dbg !3310, !tbaa !656
  br label %22, !dbg !3308

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3311
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #11 !dbg !3312 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3315, metadata !584), !dbg !3319
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3316, metadata !584), !dbg !3320
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3318, metadata !584), !dbg !3321
  br label %2, !dbg !3322

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3316, metadata !584), !dbg !3320
  %4 = load i8, i8* %3, align 1, !dbg !3323, !tbaa !717
  %5 = icmp eq i8 %4, 47, !dbg !3323
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3324
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3316, metadata !584), !dbg !3320
  br i1 %5, label %2, label %7, !dbg !3322, !llvm.loop !3325

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !3326

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !3328
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !3318, metadata !584), !dbg !3321
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3317, metadata !584), !dbg !3330
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3316, metadata !584), !dbg !3320
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !3326

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !3331
  %15 = icmp eq i8 %14, 0, !dbg !3331
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3316, metadata !584), !dbg !3320
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3318, metadata !584), !dbg !3321
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !3335
  %17 = select i1 %15, i8 %12, i8 0, !dbg !3335
  br label %18, !dbg !3335

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !3318, metadata !584), !dbg !3321
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3316, metadata !584), !dbg !3320
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3336
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !3317, metadata !584), !dbg !3330
  %22 = load i8, i8* %21, align 1, !dbg !3328, !tbaa !717
  br label %8, !dbg !3337, !llvm.loop !3338

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !3340
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #11 !dbg !3341 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3345, metadata !584), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3347, metadata !584), !dbg !3349
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3346, metadata !584), !dbg !3352
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3346, metadata !584), !dbg !3352
  %3 = icmp ugt i64 %2, 1, !dbg !3353
  br i1 %3, label %4, label %13, !dbg !3355

; <label>:4:                                      ; preds = %1
  br label %7, !dbg !3356

; <label>:5:                                      ; preds = %7
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3346, metadata !584), !dbg !3352
  %6 = icmp ugt i64 %9, 1, !dbg !3353
  br i1 %6, label %7, label %13, !dbg !3355, !llvm.loop !3357

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %9, %5 ], [ %2, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3346, metadata !584), !dbg !3352
  %9 = add i64 %8, -1, !dbg !3356
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !3356
  %11 = load i8, i8* %10, align 1, !dbg !3356, !tbaa !717
  %12 = icmp eq i8 %11, 47, !dbg !3356
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3346, metadata !584), !dbg !3352
  br i1 %12, label %5, label %13, !dbg !3358

; <label>:13:                                     ; preds = %7, %5, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %5 ], [ %8, %7 ]
  ret i64 %14, !dbg !3360
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3361 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3366, metadata !584), !dbg !3369
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3367, metadata !584), !dbg !3370
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3371
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3368, metadata !584), !dbg !3372
  %3 = icmp eq i8* %2, null, !dbg !3373
  br i1 %3, label %11, label %4, !dbg !3375

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i64 0, i64 0)) #14, !dbg !3376
  %6 = icmp eq i32 %5, 0, !dbg !3381
  br i1 %6, label %10, label %7, !dbg !3382

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.107, i64 0, i64 0)) #14, !dbg !3383
  %9 = icmp eq i32 %8, 0, !dbg !3384
  br i1 %9, label %10, label %11, !dbg !3385

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3367, metadata !584), !dbg !3370
  br label %11, !dbg !3386

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3387
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3388 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3394, metadata !584), !dbg !3468
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3461, metadata !584), !dbg !3471
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3472
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3392, metadata !584), !dbg !3473
  %4 = icmp eq i8* %3, null, !dbg !3474
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), i8* %3, !dbg !3476
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3392, metadata !584), !dbg !3473
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3477, !tbaa !591
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3408, metadata !584) #9, !dbg !3478
  %7 = icmp eq i8* %6, null, !dbg !3479
  br i1 %7, label %8, label %123, !dbg !3480

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.111, i64 0, i64 0)) #9, !dbg !3481
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3409, metadata !584) #9, !dbg !3482
  %10 = icmp eq i8* %9, null, !dbg !3483
  br i1 %10, label %14, label %11, !dbg !3485

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3486, !tbaa !717
  %13 = icmp eq i8 %12, 0, !dbg !3487
  br i1 %13, label %14, label %15, !dbg !3488

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3489

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.112, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3409, metadata !584) #9, !dbg !3482
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3412, metadata !584) #9, !dbg !3491
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3414, metadata !584) #9, !dbg !3492
  %18 = icmp eq i64 %17, 0, !dbg !3493
  br i1 %18, label %24, label %19, !dbg !3494

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3495
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3495
  %22 = load i8, i8* %21, align 1, !dbg !3495, !tbaa !717
  %23 = icmp ne i8 %22, 47, !dbg !3495
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3496
  %27 = add i64 %17, 14, !dbg !3497
  %28 = add i64 %27, %26, !dbg !3498
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3499
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3411, metadata !584) #9, !dbg !3500
  %30 = icmp eq i8* %29, null, !dbg !3501
  br i1 %30, label %121, label %31, !dbg !3501

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3502
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3505

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3506, !tbaa !717
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3508
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.113, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3509
  br label %37, !dbg !3510

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3508
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.113, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3509
  br label %37, !dbg !3510

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3416, metadata !584) #9, !dbg !3512
  %39 = icmp slt i32 %38, 0, !dbg !3513
  br i1 %39, label %119, label %40, !dbg !3514

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.114, i64 0, i64 0)) #9, !dbg !3515
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3417, metadata !584) #9, !dbg !3516
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3517
  br i1 %42, label %43, label %45, !dbg !3518

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #9, !dbg !3519
  br label %119, !dbg !3521

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3458, metadata !584) #9, !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3459, metadata !584) #9, !dbg !3523
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3524

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3525

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3458, metadata !584) #9, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3459, metadata !584) #9, !dbg !3523
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3525
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3526
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3527, metadata !584) #9, !dbg !3532
  %54 = load i8*, i8** %48, align 8, !dbg !3534, !tbaa !3535
  %55 = load i8*, i8** %49, align 8, !dbg !3534, !tbaa !3536
  %56 = icmp ult i8* %54, %55, !dbg !3534
  br i1 %56, label %59, label %57, !dbg !3534, !prof !961

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3534
  br label %63, !dbg !3534

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3534
  store i8* %60, i8** %48, align 8, !dbg !3534, !tbaa !3535
  %61 = load i8, i8* %54, align 1, !dbg !3534, !tbaa !717
  %62 = zext i8 %61 to i32, !dbg !3534
  br label %63, !dbg !3534

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3534
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3460, metadata !584) #9, !dbg !3537
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3538, !llvm.loop !3539

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3544

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3527, metadata !584) #9, !dbg !3546
  %67 = load i8*, i8** %48, align 8, !dbg !3544, !tbaa !3535
  %68 = load i8*, i8** %49, align 8, !dbg !3544, !tbaa !3536
  %69 = icmp ult i8* %67, %68, !dbg !3544
  br i1 %69, label %72, label %70, !dbg !3544, !prof !961

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3544
  br label %76, !dbg !3544

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3544
  store i8* %73, i8** %48, align 8, !dbg !3544, !tbaa !3535
  %74 = load i8, i8* %67, align 1, !dbg !3544, !tbaa !717
  %75 = zext i8 %74 to i32, !dbg !3544
  br label %76, !dbg !3544

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3544
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3460, metadata !584) #9, !dbg !3537
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3547, !llvm.loop !3548

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #9, !dbg !3551
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.115, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #9, !dbg !3552
  %81 = icmp slt i32 %80, 2, !dbg !3554
  br i1 %81, label %112, label %82, !dbg !3555

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3556
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3465, metadata !584) #9, !dbg !3557
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3558
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3466, metadata !584) #9, !dbg !3559
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3467, metadata !584) #9, !dbg !3560
  %85 = icmp eq i64 %51, 0, !dbg !3561
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3563

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3459, metadata !584) #9, !dbg !3523
  %90 = add i64 %87, 2, !dbg !3564
  %91 = call noalias i8* @malloc(i64 %90) #9, !dbg !3566
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3458, metadata !584) #9, !dbg !3522
  br label %96, !dbg !3567

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3568
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3459, metadata !584) #9, !dbg !3523
  %94 = add i64 %93, 1, !dbg !3570
  %95 = call i8* @realloc(i8* %52, i64 %94) #9, !dbg !3571
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3458, metadata !584) #9, !dbg !3522
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3458, metadata !584) #9, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3459, metadata !584) #9, !dbg !3523
  %99 = icmp eq i8* %98, null, !dbg !3572
  br i1 %99, label %100, label %102, !dbg !3574

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3459, metadata !584) #9, !dbg !3523
  call void @free(i8* %52) #9, !dbg !3575
  br label %112, !dbg !3577

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3578
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3578
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3579
  %104 = xor i64 %84, -1, !dbg !3580
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3580
  %106 = xor i64 %83, -1, !dbg !3581
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3581
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3582, metadata !584) #9, !dbg !3590
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3589, metadata !584) #9, !dbg !3590
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #9, !dbg !3592
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #9, !dbg !3593
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3582, metadata !584) #9, !dbg !3594
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3589, metadata !584) #9, !dbg !3594
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #9, !dbg !3596
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #9, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3458, metadata !584) #9, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3459, metadata !584) #9, !dbg !3523
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3578
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3578
  br label %50, !dbg !3598, !llvm.loop !3548

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3578
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3578
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3599
  %116 = icmp eq i64 %113, 0, !dbg !3600
  br i1 %116, label %119, label %117, !dbg !3602

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3603
  store i8 0, i8* %118, align 1, !dbg !3605, !tbaa !717
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3408, metadata !584) #9, !dbg !3478
  call void @free(i8* %29) #9, !dbg !3606
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3408, metadata !584) #9, !dbg !3478
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3607, !tbaa !591
  br label %123, !dbg !3608

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3408, metadata !584) #9, !dbg !3478
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3393, metadata !584), !dbg !3609
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3393, metadata !584), !dbg !3609
  %125 = load i8, i8* %124, align 1, !dbg !3610, !tbaa !717
  %126 = icmp eq i8 %125, 0, !dbg !3612
  br i1 %126, label %152, label %127, !dbg !3613

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3614

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3393, metadata !584), !dbg !3609
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3614
  %132 = icmp eq i32 %131, 0, !dbg !3616
  br i1 %132, label %139, label %133, !dbg !3617

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3618
  br i1 %134, label %135, label %143, !dbg !3619

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3620
  %137 = load i8, i8* %136, align 1, !dbg !3620, !tbaa !717
  %138 = icmp eq i8 %137, 0, !dbg !3621
  br i1 %138, label %139, label %143, !dbg !3622

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3623
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3625
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3392, metadata !584), !dbg !3473
  br label %152, !dbg !3627

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3628
  %145 = add i64 %144, 1, !dbg !3629
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3630
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3393, metadata !584), !dbg !3609
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3631
  %148 = add i64 %147, 1, !dbg !3632
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3633
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3393, metadata !584), !dbg !3609
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3393, metadata !584), !dbg !3609
  %150 = load i8, i8* %149, align 1, !dbg !3610, !tbaa !717
  %151 = icmp eq i8 %150, 0, !dbg !3612
  br i1 %151, label %152, label %128, !dbg !3613, !llvm.loop !3634

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3392, metadata !584), !dbg !3473
  %154 = load i8, i8* %153, align 1, !dbg !3636, !tbaa !717
  %155 = icmp eq i8 %154, 0, !dbg !3638
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0), i8* %153, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3392, metadata !584), !dbg !3473
  ret i8* %156, !dbg !3640
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3641 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3686, metadata !584), !dbg !3690
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3687, metadata !584), !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3689, metadata !584), !dbg !3692
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3693
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3688, metadata !584), !dbg !3694
  %3 = icmp slt i32 %2, 0, !dbg !3695
  br i1 %3, label %4, label %6, !dbg !3697

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3698
  br label %24, !dbg !3699

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3700
  %8 = icmp eq i32 %7, 0, !dbg !3700
  br i1 %8, label %13, label %9, !dbg !3702

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3703
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3704
  %12 = icmp eq i64 %11, -1, !dbg !3705
  br i1 %12, label %16, label %13, !dbg !3706

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3707
  %15 = icmp eq i32 %14, 0, !dbg !3707
  br i1 %15, label %16, label %18, !dbg !3708

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3687, metadata !584), !dbg !3691
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3709
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3689, metadata !584), !dbg !3692
  br label %24, !dbg !3710

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3711
  %20 = load i32, i32* %19, align 4, !dbg !3711, !tbaa !656
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3687, metadata !584), !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3687, metadata !584), !dbg !3691
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3709
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3689, metadata !584), !dbg !3692
  %22 = icmp eq i32 %20, 0, !dbg !3712
  br i1 %22, label %24, label %23, !dbg !3710

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3714, !tbaa !656
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3689, metadata !584), !dbg !3692
  br label %24, !dbg !3716

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3717
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3718 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3763, metadata !584), !dbg !3764
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3765
  br i1 %2, label %6, label %3, !dbg !3767

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3768
  %5 = icmp eq i32 %4, 0, !dbg !3768
  br i1 %5, label %6, label %8, !dbg !3769

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3770
  br label %17, !dbg !3771

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3772, metadata !584) #9, !dbg !3777
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3779
  %10 = load i32, i32* %9, align 8, !dbg !3779, !tbaa !3295
  %11 = and i32 %10, 256, !dbg !3781
  %12 = icmp eq i32 %11, 0, !dbg !3781
  br i1 %12, label %15, label %13, !dbg !3782

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3783
  br label %15, !dbg !3783

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3784
  br label %17, !dbg !3785

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3786
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3787 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3833, metadata !584), !dbg !3839
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3834, metadata !584), !dbg !3840
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3835, metadata !584), !dbg !3841
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3842
  %5 = load i8*, i8** %4, align 8, !dbg !3842, !tbaa !3536
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3843
  %7 = load i8*, i8** %6, align 8, !dbg !3843, !tbaa !3535
  %8 = icmp eq i8* %5, %7, !dbg !3844
  br i1 %8, label %9, label %28, !dbg !3845

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3846
  %11 = load i8*, i8** %10, align 8, !dbg !3846, !tbaa !956
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3847
  %13 = load i8*, i8** %12, align 8, !dbg !3847, !tbaa !3848
  %14 = icmp eq i8* %11, %13, !dbg !3849
  br i1 %14, label %15, label %28, !dbg !3850

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3851
  %17 = load i8*, i8** %16, align 8, !dbg !3851, !tbaa !3852
  %18 = icmp eq i8* %17, null, !dbg !3853
  br i1 %18, label %19, label %28, !dbg !3854

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3855
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3856
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3836, metadata !584), !dbg !3857
  %22 = icmp eq i64 %21, -1, !dbg !3858
  br i1 %22, label %30, label %23, !dbg !3860

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3861
  %25 = load i32, i32* %24, align 8, !dbg !3862, !tbaa !3295
  %26 = and i32 %25, -17, !dbg !3862
  store i32 %26, i32* %24, align 8, !dbg !3862, !tbaa !3295
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3863
  store i64 %21, i64* %27, align 8, !dbg !3864, !tbaa !3865
  br label %30, !dbg !3866

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3867
  br label %30, !dbg !3868

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3869
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
attributes #9 = { nounwind }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !523, !66, !72, !526, !80, !87, !94, !528, !167, !536, !553, !555, !557, !560, !562, !565, !176, !567, !569, !571}
!llvm.ident = !{!573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573, !573}
!llvm.module.flags = !{!574, !575, !576, !577, !578}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "remove_empty_parents", scope: !2, file: !3, line: 40, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !23)
!3 = !DIFile(filename: "src/rmdir.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!23 = !{!0, !24, !27, !29, !51}
!24 = !DIGlobalVariableExpression(var: !25)
!25 = distinct !DIGlobalVariable(name: "ignore_fail_on_non_empty", scope: !2, file: !3, line: 44, type: !26, isLocal: true, isDefinition: true)
!26 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!27 = !DIGlobalVariableExpression(var: !28)
!28 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 47, type: !26, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30)
!30 = distinct !DIGlobalVariable(name: "infomap", scope: !31, file: !32, line: 632, type: !48, isLocal: true, isDefinition: true)
!31 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !32, file: !32, line: 630, type: !33, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !37)
!32 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!37 = !{!38, !39, !40, !47}
!38 = !DILocalVariable(name: "program", arg: 1, scope: !31, file: !32, line: 630, type: !35)
!39 = !DILocalVariable(name: "node", scope: !31, file: !32, line: 642, type: !35)
!40 = !DILocalVariable(name: "map_prog", scope: !31, file: !32, line: 643, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !31, file: !32, line: 632, size: 128, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !43, file: !32, line: 632, baseType: !35, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !43, file: !32, line: 632, baseType: !35, size: 64, offset: 64)
!47 = !DILocalVariable(name: "lc_messages", scope: !31, file: !32, line: 655, type: !35)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 896, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 7)
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 56, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1792, elements: !49)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !56, line: 50, size: 256, elements: !57)
!56 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!57 = !{!58, !59, !61, !63}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !55, file: !56, line: 52, baseType: !35, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !55, file: !56, line: 55, baseType: !60, size: 32, offset: 64)
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !55, file: !56, line: 56, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !55, file: !56, line: 57, baseType: !60, size: 32, offset: 192)
!64 = !DIGlobalVariableExpression(var: !65)
!65 = distinct !DIGlobalVariable(name: "Version", scope: !66, file: !67, line: 2, type: !35, isLocal: false, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !69)
!67 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!68 = !{}
!69 = !{!64}
!70 = !DIGlobalVariableExpression(var: !71)
!71 = distinct !DIGlobalVariable(name: "file_name", scope: !72, file: !77, line: 36, type: !35, isLocal: true, isDefinition: true)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !74)
!73 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!74 = !{!70, !75}
!75 = !DIGlobalVariableExpression(var: !76)
!76 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !72, file: !77, line: 46, type: !26, isLocal: true, isDefinition: true)
!77 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!78 = !DIGlobalVariableExpression(var: !79)
!79 = distinct !DIGlobalVariable(name: "exit_failure", scope: !80, file: !83, line: 24, type: !84, isLocal: false, isDefinition: true)
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !82)
!81 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!82 = !{!78}
!83 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!85 = !DIGlobalVariableExpression(var: !86)
!86 = distinct !DIGlobalVariable(name: "program_name", scope: !87, file: !91, line: 33, type: !35, isLocal: false, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !89, globals: !90)
!88 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!89 = !{!22, !20}
!90 = !{!85}
!91 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !94, file: !125, line: 77, type: !161, isLocal: false, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !96, retainedTypes: !117, globals: !122)
!95 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !{!5, !97, !102}
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !98)
!98 = !{!99, !100, !101}
!99 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!100 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!101 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 46, size: 32, elements: !104)
!103 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!105 = !DIEnumerator(name: "_ISupper", value: 256)
!106 = !DIEnumerator(name: "_ISlower", value: 512)
!107 = !DIEnumerator(name: "_ISalpha", value: 1024)
!108 = !DIEnumerator(name: "_ISdigit", value: 2048)
!109 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!110 = !DIEnumerator(name: "_ISspace", value: 8192)
!111 = !DIEnumerator(name: "_ISprint", value: 16384)
!112 = !DIEnumerator(name: "_ISgraph", value: 32768)
!113 = !DIEnumerator(name: "_ISblank", value: 1)
!114 = !DIEnumerator(name: "_IScntrl", value: 2)
!115 = !DIEnumerator(name: "_ISpunct", value: 4)
!116 = !DIEnumerator(name: "_ISalnum", value: 8)
!117 = !{!60, !118, !119, !20}
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 62, baseType: !121)
!120 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !{!92, !123, !130, !143, !145, !150, !157, !159}
!123 = !DIGlobalVariableExpression(var: !124)
!124 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !94, file: !125, line: 93, type: !126, isLocal: false, isDefinition: true)
!125 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 320, elements: !128)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!128 = !{!129}
!129 = !DISubrange(count: 10)
!130 = !DIGlobalVariableExpression(var: !131)
!131 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !94, file: !125, line: 1043, type: !132, isLocal: false, isDefinition: true)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !125, line: 57, size: 448, elements: !133)
!133 = !{!134, !135, !136, !141, !142}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !132, file: !125, line: 60, baseType: !5, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !125, line: 63, baseType: !60, size: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !132, file: !125, line: 67, baseType: !137, size: 256, offset: 64)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 256, elements: !139)
!138 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!139 = !{!140}
!140 = !DISubrange(count: 8)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !132, file: !125, line: 70, baseType: !35, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !132, file: !125, line: 73, baseType: !35, size: 64, offset: 384)
!143 = !DIGlobalVariableExpression(var: !144)
!144 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !94, file: !125, line: 108, type: !132, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "slot0", scope: !94, file: !125, line: 834, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 256)
!150 = !DIGlobalVariableExpression(var: !151)
!151 = distinct !DIGlobalVariable(name: "slotvec", scope: !94, file: !125, line: 837, type: !152, isLocal: true, isDefinition: true)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !125, line: 826, size: 128, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !153, file: !125, line: 828, baseType: !119, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !153, file: !125, line: 829, baseType: !20, size: 64, offset: 64)
!157 = !DIGlobalVariableExpression(var: !158)
!158 = distinct !DIGlobalVariable(name: "nslots", scope: !94, file: !125, line: 835, type: !60, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160)
!160 = distinct !DIGlobalVariable(name: "slotvec0", scope: !94, file: !125, line: 836, type: !153, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 704, elements: !163)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!163 = !{!164}
!164 = !DISubrange(count: 11)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !167, file: !170, line: 26, type: !171, isLocal: false, isDefinition: true)
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !169)
!168 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!169 = !{!165}
!170 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 376, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 47)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !176, file: !521, line: 120, type: !522, isLocal: true, isDefinition: true)
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, retainedTypes: !517, globals: !520)
!177 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!178 = !{!179}
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !180, line: 41, size: 32, elements: !181)
!180 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!182 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!183 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!184 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!185 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!186 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!187 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!188 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!189 = !DIEnumerator(name: "DAY_1", value: 131079)
!190 = !DIEnumerator(name: "DAY_2", value: 131080)
!191 = !DIEnumerator(name: "DAY_3", value: 131081)
!192 = !DIEnumerator(name: "DAY_4", value: 131082)
!193 = !DIEnumerator(name: "DAY_5", value: 131083)
!194 = !DIEnumerator(name: "DAY_6", value: 131084)
!195 = !DIEnumerator(name: "DAY_7", value: 131085)
!196 = !DIEnumerator(name: "ABMON_1", value: 131086)
!197 = !DIEnumerator(name: "ABMON_2", value: 131087)
!198 = !DIEnumerator(name: "ABMON_3", value: 131088)
!199 = !DIEnumerator(name: "ABMON_4", value: 131089)
!200 = !DIEnumerator(name: "ABMON_5", value: 131090)
!201 = !DIEnumerator(name: "ABMON_6", value: 131091)
!202 = !DIEnumerator(name: "ABMON_7", value: 131092)
!203 = !DIEnumerator(name: "ABMON_8", value: 131093)
!204 = !DIEnumerator(name: "ABMON_9", value: 131094)
!205 = !DIEnumerator(name: "ABMON_10", value: 131095)
!206 = !DIEnumerator(name: "ABMON_11", value: 131096)
!207 = !DIEnumerator(name: "ABMON_12", value: 131097)
!208 = !DIEnumerator(name: "MON_1", value: 131098)
!209 = !DIEnumerator(name: "MON_2", value: 131099)
!210 = !DIEnumerator(name: "MON_3", value: 131100)
!211 = !DIEnumerator(name: "MON_4", value: 131101)
!212 = !DIEnumerator(name: "MON_5", value: 131102)
!213 = !DIEnumerator(name: "MON_6", value: 131103)
!214 = !DIEnumerator(name: "MON_7", value: 131104)
!215 = !DIEnumerator(name: "MON_8", value: 131105)
!216 = !DIEnumerator(name: "MON_9", value: 131106)
!217 = !DIEnumerator(name: "MON_10", value: 131107)
!218 = !DIEnumerator(name: "MON_11", value: 131108)
!219 = !DIEnumerator(name: "MON_12", value: 131109)
!220 = !DIEnumerator(name: "AM_STR", value: 131110)
!221 = !DIEnumerator(name: "PM_STR", value: 131111)
!222 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!223 = !DIEnumerator(name: "D_FMT", value: 131113)
!224 = !DIEnumerator(name: "T_FMT", value: 131114)
!225 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!226 = !DIEnumerator(name: "ERA", value: 131116)
!227 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!228 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!229 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!230 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!231 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!232 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!233 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!234 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!235 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!236 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!237 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!238 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!239 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!240 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!241 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!242 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!243 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!244 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!245 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!246 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!247 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!248 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!249 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!250 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!251 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!252 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!253 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!254 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!255 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!256 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!257 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!258 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!259 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!260 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!261 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!262 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!263 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!264 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!265 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!266 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!267 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!268 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!269 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!270 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!271 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!272 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!273 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!274 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!275 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!276 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!277 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!278 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!279 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!280 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!281 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!282 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!283 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!284 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!285 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!286 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!287 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!288 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!289 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!290 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!291 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!292 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!293 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!294 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!295 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!296 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!297 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!298 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!299 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!300 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!301 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!302 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!303 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!304 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!305 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!306 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!307 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!308 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!309 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!310 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!311 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!312 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!313 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!314 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!315 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!316 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!317 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!318 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!319 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!320 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!321 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!322 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!323 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!324 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!325 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!326 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!327 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!328 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!329 = !DIEnumerator(name: "CODESET", value: 14)
!330 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!331 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!332 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!333 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!334 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!335 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!336 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!337 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!338 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!356 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!357 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!358 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!359 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!360 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!376 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!377 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!378 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!379 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!380 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!381 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!382 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!383 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!384 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!385 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!386 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!387 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!388 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!389 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!390 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!391 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!401 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!402 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!403 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!404 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!405 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!406 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!407 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!408 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!409 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!410 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!411 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!412 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!413 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!414 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!415 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!416 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!417 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!418 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!419 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!420 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!421 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!422 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!423 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!424 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!425 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!426 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!427 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!428 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!440 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!441 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!444 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!445 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!446 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!447 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!448 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!449 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!450 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!451 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!452 = !DIEnumerator(name: "THOUSEP", value: 65537)
!453 = !DIEnumerator(name: "__GROUPING", value: 65538)
!454 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!455 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!456 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!457 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!458 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!459 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!460 = !DIEnumerator(name: "__YESSTR", value: 327682)
!461 = !DIEnumerator(name: "__NOSTR", value: 327683)
!462 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!463 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!464 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!465 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!466 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!467 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!468 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!469 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!470 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!471 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!472 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!473 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!474 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!475 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!476 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!477 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!478 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!479 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!480 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!481 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!482 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!483 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!484 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!485 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!486 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!487 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!488 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!489 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!490 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!491 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!492 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!493 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!494 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!495 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!496 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!497 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!498 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!499 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!500 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!501 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!502 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!503 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!515 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!516 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!517 = !{!22, !20, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!520 = !{!174}
!521 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!522 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!523 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !525)
!524 = !DIFile(filename: "src/prog-fprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!525 = !{!519}
!526 = distinct !DICompileUnit(language: DW_LANG_C99, file: !527, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68)
!527 = !DIFile(filename: "./lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!528 = distinct !DICompileUnit(language: DW_LANG_C99, file: !529, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !530, retainedTypes: !535)
!529 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!530 = !{!531}
!531 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !532, line: 41, size: 32, elements: !533)
!532 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!533 = !{!534}
!534 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!535 = !{!22}
!536 = distinct !DICompileUnit(language: DW_LANG_C99, file: !537, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !538, retainedTypes: !552)
!537 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!538 = !{!539}
!539 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !541, file: !540, line: 192, size: 32, elements: !550)
!540 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!541 = distinct !DISubprogram(name: "x2nrealloc", scope: !540, file: !540, line: 180, type: !542, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !545)
!542 = !DISubroutineType(types: !543)
!543 = !{!22, !22, !544, !119}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!545 = !{!546, !547, !548, !549}
!546 = !DILocalVariable(name: "p", arg: 1, scope: !541, file: !540, line: 180, type: !22)
!547 = !DILocalVariable(name: "pn", arg: 2, scope: !541, file: !540, line: 180, type: !544)
!548 = !DILocalVariable(name: "s", arg: 3, scope: !541, file: !540, line: 180, type: !119)
!549 = !DILocalVariable(name: "n", scope: !541, file: !540, line: 182, type: !119)
!550 = !{!551}
!551 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!552 = !{!119, !20, !22}
!553 = distinct !DICompileUnit(language: DW_LANG_C99, file: !554, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68)
!554 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !535)
!556 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !559)
!558 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = !{!119}
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68)
!561 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !564)
!563 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = !{!20}
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68)
!566 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68)
!568 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !535)
!570 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !535)
!572 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!574 = !{i32 2, !"Dwarf Version", i32 4}
!575 = !{i32 2, !"Debug Info Version", i32 3}
!576 = !{i32 1, !"wchar_size", i32 4}
!577 = !{i32 7, !"PIC Level", i32 2}
!578 = !{i32 7, !"PIE Level", i32 2}
!579 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 157, type: !580, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !582)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !60}
!582 = !{!583}
!583 = !DILocalVariable(name: "status", arg: 1, scope: !579, file: !3, line: 157, type: !60)
!584 = !DIExpression()
!585 = !DILocation(line: 157, column: 12, scope: !579)
!586 = !DILocation(line: 159, column: 14, scope: !587)
!587 = distinct !DILexicalBlock(scope: !579, file: !3, line: 159, column: 7)
!588 = !DILocation(line: 159, column: 7, scope: !579)
!589 = !DILocation(line: 160, column: 5, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !3, line: 160, column: 5)
!591 = !{!592, !592, i64 0}
!592 = !{!"any pointer", !593, i64 0}
!593 = !{!"omnipotent char", !594, i64 0}
!594 = !{!"Simple C/C++ TBAA"}
!595 = !DILocation(line: 163, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !587, file: !3, line: 162, column: 5)
!597 = !DILocation(line: 164, column: 7, scope: !596)
!598 = !DILocation(line: 171, column: 7, scope: !596)
!599 = !DILocation(line: 177, column: 7, scope: !596)
!600 = !DILocation(line: 178, column: 7, scope: !596)
!601 = !DILocation(line: 642, column: 15, scope: !31, inlinedAt: !602)
!602 = distinct !DILocation(line: 179, column: 7, scope: !596)
!603 = !DILocation(line: 651, column: 3, scope: !31, inlinedAt: !602)
!604 = !DILocation(line: 655, column: 29, scope: !31, inlinedAt: !602)
!605 = !DILocation(line: 655, column: 15, scope: !31, inlinedAt: !602)
!606 = !DILocation(line: 656, column: 7, scope: !607, inlinedAt: !602)
!607 = distinct !DILexicalBlock(scope: !31, file: !32, line: 656, column: 7)
!608 = !DILocation(line: 656, column: 19, scope: !607, inlinedAt: !602)
!609 = !DILocation(line: 656, column: 22, scope: !607, inlinedAt: !602)
!610 = !DILocation(line: 656, column: 7, scope: !31, inlinedAt: !602)
!611 = !DILocation(line: 662, column: 7, scope: !612, inlinedAt: !602)
!612 = distinct !DILexicalBlock(scope: !607, file: !32, line: 657, column: 5)
!613 = !DILocation(line: 664, column: 5, scope: !612, inlinedAt: !602)
!614 = !DILocation(line: 665, column: 3, scope: !31, inlinedAt: !602)
!615 = !DILocation(line: 667, column: 3, scope: !31, inlinedAt: !602)
!616 = !DILocation(line: 181, column: 3, scope: !579)
!617 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 185, type: !618, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !621)
!618 = !DISubroutineType(types: !619)
!619 = !{!60, !60, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!621 = !{!622, !623, !624, !625, !626}
!622 = !DILocalVariable(name: "argc", arg: 1, scope: !617, file: !3, line: 185, type: !60)
!623 = !DILocalVariable(name: "argv", arg: 2, scope: !617, file: !3, line: 185, type: !620)
!624 = !DILocalVariable(name: "ok", scope: !617, file: !3, line: 187, type: !26)
!625 = !DILocalVariable(name: "optc", scope: !617, file: !3, line: 188, type: !60)
!626 = !DILocalVariable(name: "dir", scope: !627, file: !3, line: 228, type: !20)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 227, column: 5)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 226, column: 3)
!629 = distinct !DILexicalBlock(scope: !617, file: !3, line: 226, column: 3)
!630 = !DILocation(line: 185, column: 11, scope: !617)
!631 = !DILocation(line: 185, column: 24, scope: !617)
!632 = !DILocation(line: 187, column: 8, scope: !617)
!633 = !DILocation(line: 191, column: 21, scope: !617)
!634 = !DILocation(line: 191, column: 3, scope: !617)
!635 = !DILocation(line: 192, column: 3, scope: !617)
!636 = !DILocation(line: 193, column: 3, scope: !617)
!637 = !DILocation(line: 194, column: 3, scope: !617)
!638 = !DILocation(line: 196, column: 3, scope: !617)
!639 = !DILocation(line: 198, column: 24, scope: !617)
!640 = !{!641, !641, i64 0}
!641 = !{!"_Bool", !593, i64 0}
!642 = !DILocation(line: 200, column: 3, scope: !617)
!643 = !DILocation(line: 200, column: 18, scope: !617)
!644 = !DILocation(line: 188, column: 7, scope: !617)
!645 = !DILocation(line: 206, column: 11, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !3, line: 203, column: 9)
!647 = distinct !DILexicalBlock(scope: !617, file: !3, line: 201, column: 5)
!648 = !DILocation(line: 212, column: 11, scope: !646)
!649 = !DILocation(line: 213, column: 9, scope: !646)
!650 = !DILocation(line: 214, column: 9, scope: !646)
!651 = !DILocation(line: 216, column: 11, scope: !646)
!652 = distinct !{!652, !642, !653}
!653 = !DILocation(line: 218, column: 5, scope: !617)
!654 = !DILocation(line: 220, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !617, file: !3, line: 220, column: 7)
!656 = !{!657, !657, i64 0}
!657 = !{!"int", !593, i64 0}
!658 = !DILocation(line: 220, column: 14, scope: !655)
!659 = !DILocation(line: 220, column: 7, scope: !617)
!660 = !DILocation(line: 222, column: 20, scope: !661)
!661 = distinct !DILexicalBlock(scope: !655, file: !3, line: 221, column: 5)
!662 = !DILocation(line: 222, column: 7, scope: !661)
!663 = !DILocation(line: 223, column: 7, scope: !661)
!664 = !DILocation(line: 226, column: 17, scope: !628)
!665 = !DILocation(line: 226, column: 3, scope: !629)
!666 = !DILocation(line: 228, column: 19, scope: !627)
!667 = !DILocation(line: 228, column: 13, scope: !627)
!668 = !DILocation(line: 231, column: 11, scope: !669)
!669 = distinct !DILexicalBlock(scope: !627, file: !3, line: 231, column: 11)
!670 = !{i8 0, i8 2}
!671 = !DILocation(line: 231, column: 11, scope: !627)
!672 = !DILocation(line: 232, column: 23, scope: !669)
!673 = !DILocation(line: 232, column: 31, scope: !669)
!674 = !DILocation(line: 232, column: 60, scope: !669)
!675 = !DILocation(line: 232, column: 9, scope: !669)
!676 = !DILocation(line: 234, column: 11, scope: !677)
!677 = distinct !DILexicalBlock(scope: !627, file: !3, line: 234, column: 11)
!678 = !DILocation(line: 234, column: 23, scope: !677)
!679 = !DILocation(line: 234, column: 11, scope: !627)
!680 = !DILocation(line: 236, column: 34, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 236, column: 15)
!682 = distinct !DILexicalBlock(scope: !677, file: !3, line: 235, column: 9)
!683 = !DILocation(line: 236, column: 15, scope: !681)
!684 = !DILocation(line: 236, column: 15, scope: !682)
!685 = !DILocation(line: 241, column: 21, scope: !682)
!686 = !DILocation(line: 241, column: 28, scope: !682)
!687 = !DILocation(line: 241, column: 54, scope: !682)
!688 = !DILocation(line: 241, column: 11, scope: !682)
!689 = !DILocation(line: 243, column: 9, scope: !682)
!690 = !DILocation(line: 244, column: 16, scope: !691)
!691 = distinct !DILexicalBlock(scope: !677, file: !3, line: 244, column: 16)
!692 = !DILocation(line: 244, column: 16, scope: !677)
!693 = !DILocalVariable(name: "dir", arg: 1, scope: !694, file: !3, line: 114, type: !20)
!694 = distinct !DISubprogram(name: "remove_parents", scope: !3, file: !3, line: 114, type: !695, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{!26, !20}
!697 = !{!693, !698, !699}
!698 = !DILocalVariable(name: "slash", scope: !694, file: !3, line: 116, type: !20)
!699 = !DILocalVariable(name: "ok", scope: !694, file: !3, line: 117, type: !26)
!700 = !DILocation(line: 114, column: 23, scope: !694, inlinedAt: !701)
!701 = distinct !DILocation(line: 246, column: 17, scope: !702)
!702 = distinct !DILexicalBlock(scope: !691, file: !3, line: 245, column: 9)
!703 = !DILocation(line: 117, column: 8, scope: !694, inlinedAt: !701)
!704 = !DILocation(line: 119, column: 3, scope: !694, inlinedAt: !701)
!705 = !DILocation(line: 122, column: 15, scope: !706, inlinedAt: !701)
!706 = distinct !DILexicalBlock(scope: !694, file: !3, line: 121, column: 5)
!707 = !DILocation(line: 116, column: 9, scope: !694, inlinedAt: !701)
!708 = !DILocation(line: 123, column: 17, scope: !709, inlinedAt: !701)
!709 = distinct !DILexicalBlock(scope: !706, file: !3, line: 123, column: 11)
!710 = !DILocation(line: 123, column: 11, scope: !706, inlinedAt: !701)
!711 = !DILocation(line: 127, column: 20, scope: !706, inlinedAt: !701)
!712 = distinct !{!712, !713, !714}
!713 = !DILocation(line: 120, column: 3, scope: !694)
!714 = !DILocation(line: 152, column: 5, scope: !694)
!715 = !DILocation(line: 127, column: 26, scope: !706, inlinedAt: !701)
!716 = !DILocation(line: 127, column: 29, scope: !706, inlinedAt: !701)
!717 = !{!593, !593, i64 0}
!718 = !DILocation(line: 127, column: 36, scope: !706, inlinedAt: !701)
!719 = !DILocation(line: 127, column: 7, scope: !706, inlinedAt: !701)
!720 = !DILocation(line: 128, column: 9, scope: !706, inlinedAt: !701)
!721 = distinct !{!721, !722, !723}
!722 = !DILocation(line: 127, column: 7, scope: !706)
!723 = !DILocation(line: 128, column: 11, scope: !706)
!724 = !DILocation(line: 129, column: 7, scope: !706, inlinedAt: !701)
!725 = !DILocation(line: 129, column: 16, scope: !706, inlinedAt: !701)
!726 = !DILocation(line: 132, column: 11, scope: !727, inlinedAt: !701)
!727 = distinct !DILexicalBlock(scope: !706, file: !3, line: 132, column: 11)
!728 = !DILocation(line: 132, column: 11, scope: !706, inlinedAt: !701)
!729 = !DILocation(line: 133, column: 23, scope: !727, inlinedAt: !701)
!730 = !DILocation(line: 133, column: 31, scope: !727, inlinedAt: !701)
!731 = !DILocation(line: 133, column: 60, scope: !727, inlinedAt: !701)
!732 = !DILocation(line: 133, column: 9, scope: !727, inlinedAt: !701)
!733 = !DILocation(line: 135, column: 13, scope: !706, inlinedAt: !701)
!734 = !DILocation(line: 135, column: 25, scope: !706, inlinedAt: !701)
!735 = !DILocation(line: 137, column: 11, scope: !706, inlinedAt: !701)
!736 = !DILocation(line: 140, column: 34, scope: !737, inlinedAt: !701)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 140, column: 15)
!738 = distinct !DILexicalBlock(scope: !739, file: !3, line: 138, column: 9)
!739 = distinct !DILexicalBlock(scope: !706, file: !3, line: 137, column: 11)
!740 = !DILocation(line: 140, column: 15, scope: !737, inlinedAt: !701)
!741 = !DILocation(line: 140, column: 15, scope: !738, inlinedAt: !701)
!742 = !DILocation(line: 147, column: 25, scope: !743, inlinedAt: !701)
!743 = distinct !DILexicalBlock(scope: !737, file: !3, line: 145, column: 13)
!744 = !DILocation(line: 147, column: 32, scope: !743, inlinedAt: !701)
!745 = !DILocation(line: 148, column: 22, scope: !743, inlinedAt: !701)
!746 = !DILocation(line: 147, column: 15, scope: !743, inlinedAt: !701)
!747 = !DILocation(line: 246, column: 14, scope: !702)
!748 = !DILocation(line: 247, column: 9, scope: !702)
!749 = !DILocation(line: 226, column: 25, scope: !628)
!750 = distinct !{!750, !665, !751}
!751 = !DILocation(line: 248, column: 5, scope: !629)
!752 = !DILocation(line: 250, column: 10, scope: !617)
!753 = !DILocation(line: 251, column: 1, scope: !617)
!754 = distinct !DISubprogram(name: "ignorable_failure", scope: !3, file: !3, line: 100, type: !755, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!26, !60, !35}
!757 = !{!758, !759}
!758 = !DILocalVariable(name: "error_number", arg: 1, scope: !754, file: !3, line: 100, type: !60)
!759 = !DILocalVariable(name: "dir", arg: 2, scope: !754, file: !3, line: 100, type: !35)
!760 = !DILocation(line: 100, column: 24, scope: !754)
!761 = !DILocation(line: 100, column: 50, scope: !754)
!762 = !DILocation(line: 102, column: 11, scope: !754)
!763 = !DILocation(line: 103, column: 11, scope: !754)
!764 = !DILocation(line: 104, column: 15, scope: !754)
!765 = !DILocalVariable(name: "fd_cwd", arg: 1, scope: !766, file: !32, line: 290, type: !60)
!766 = distinct !DISubprogram(name: "is_empty_dir", scope: !32, file: !32, line: 290, type: !755, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !767)
!767 = !{!765, !768, !769, !774, !789, !790}
!768 = !DILocalVariable(name: "dir", arg: 2, scope: !766, file: !32, line: 290, type: !35)
!769 = !DILocalVariable(name: "dirp", scope: !766, file: !32, line: 292, type: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !772, line: 127, baseType: !773)
!772 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !772, line: 127, flags: DIFlagFwdDecl)
!774 = !DILocalVariable(name: "dp", scope: !766, file: !32, line: 293, type: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !778, line: 22, size: 2240, elements: !779)
!778 = !DIFile(filename: "/usr/include/bits/dirent.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!779 = !{!780, !783, !786, !787, !788}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !777, file: !778, line: 25, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !782, line: 136, baseType: !121)
!782 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!783 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !777, file: !778, line: 26, baseType: !784, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !782, line: 140, baseType: !785)
!785 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !777, file: !778, line: 31, baseType: !118, size: 16, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !777, file: !778, line: 32, baseType: !519, size: 8, offset: 144)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !777, file: !778, line: 33, baseType: !147, size: 2048, offset: 152)
!789 = !DILocalVariable(name: "saved_errno", scope: !766, file: !32, line: 294, type: !60)
!790 = !DILocalVariable(name: "fd", scope: !766, file: !32, line: 295, type: !60)
!791 = !DILocation(line: 290, column: 19, scope: !766, inlinedAt: !792)
!792 = distinct !DILocation(line: 105, column: 22, scope: !754)
!793 = !DILocation(line: 295, column: 12, scope: !766, inlinedAt: !792)
!794 = !DILocation(line: 295, column: 7, scope: !766, inlinedAt: !792)
!795 = !DILocation(line: 299, column: 10, scope: !796, inlinedAt: !792)
!796 = distinct !DILexicalBlock(scope: !766, file: !32, line: 299, column: 7)
!797 = !DILocation(line: 299, column: 7, scope: !766, inlinedAt: !792)
!798 = !DILocation(line: 302, column: 10, scope: !766, inlinedAt: !792)
!799 = !DILocation(line: 292, column: 8, scope: !766, inlinedAt: !792)
!800 = !DILocation(line: 303, column: 12, scope: !801, inlinedAt: !792)
!801 = distinct !DILexicalBlock(scope: !766, file: !32, line: 303, column: 7)
!802 = !DILocation(line: 303, column: 7, scope: !766, inlinedAt: !792)
!803 = !DILocation(line: 305, column: 7, scope: !804, inlinedAt: !792)
!804 = distinct !DILexicalBlock(scope: !801, file: !32, line: 304, column: 5)
!805 = !DILocation(line: 306, column: 7, scope: !804, inlinedAt: !792)
!806 = !DILocation(line: 309, column: 3, scope: !766, inlinedAt: !792)
!807 = !DILocation(line: 309, column: 9, scope: !766, inlinedAt: !792)
!808 = !DILocalVariable(name: "dirp", arg: 1, scope: !809, file: !32, line: 278, type: !770)
!809 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !32, file: !32, line: 278, type: !810, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{!775, !770}
!812 = !{!808, !813}
!813 = !DILocalVariable(name: "dp", scope: !814, file: !32, line: 282, type: !775)
!814 = distinct !DILexicalBlock(scope: !809, file: !32, line: 281, column: 5)
!815 = !DILocation(line: 278, column: 39, scope: !809, inlinedAt: !816)
!816 = distinct !DILocation(line: 310, column: 8, scope: !766, inlinedAt: !792)
!817 = !DILocation(line: 282, column: 33, scope: !814, inlinedAt: !816)
!818 = !DILocation(line: 282, column: 28, scope: !814, inlinedAt: !816)
!819 = !DILocation(line: 283, column: 14, scope: !820, inlinedAt: !816)
!820 = distinct !DILexicalBlock(scope: !814, file: !32, line: 283, column: 11)
!821 = !DILocation(line: 283, column: 22, scope: !820, inlinedAt: !816)
!822 = !DILocation(line: 283, column: 42, scope: !820, inlinedAt: !816)
!823 = !DILocalVariable(name: "file_name", arg: 1, scope: !824, file: !32, line: 265, type: !35)
!824 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !32, file: !32, line: 265, type: !825, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{!26, !35}
!827 = !{!823, !828}
!828 = !DILocalVariable(name: "sep", scope: !829, file: !32, line: 269, type: !21)
!829 = distinct !DILexicalBlock(scope: !830, file: !32, line: 268, column: 5)
!830 = distinct !DILexicalBlock(scope: !824, file: !32, line: 267, column: 7)
!831 = !DILocation(line: 265, column: 28, scope: !824, inlinedAt: !832)
!832 = distinct !DILocation(line: 283, column: 27, scope: !820, inlinedAt: !816)
!833 = !DILocation(line: 267, column: 7, scope: !830, inlinedAt: !832)
!834 = !DILocation(line: 267, column: 20, scope: !830, inlinedAt: !832)
!835 = !DILocation(line: 267, column: 7, scope: !824, inlinedAt: !832)
!836 = !DILocation(line: 269, column: 29, scope: !829, inlinedAt: !832)
!837 = !DILocation(line: 269, column: 42, scope: !829, inlinedAt: !832)
!838 = !DILocation(line: 269, column: 18, scope: !829, inlinedAt: !832)
!839 = !DILocation(line: 269, column: 12, scope: !829, inlinedAt: !832)
!840 = !DILocation(line: 283, column: 11, scope: !814, inlinedAt: !816)
!841 = distinct !{!841, !842, !843}
!842 = !DILocation(line: 280, column: 3, scope: !809)
!843 = !DILocation(line: 285, column: 5, scope: !809)
!844 = !DILocation(line: 293, column: 24, scope: !766, inlinedAt: !792)
!845 = !DILocation(line: 312, column: 3, scope: !766, inlinedAt: !792)
!846 = !DILocation(line: 311, column: 17, scope: !766, inlinedAt: !792)
!847 = !DILocation(line: 315, column: 22, scope: !766, inlinedAt: !792)
!848 = !DILocation(line: 315, column: 3, scope: !766, inlinedAt: !792)
!849 = !DILocation(line: 102, column: 3, scope: !754)
!850 = distinct !DISubprogram(name: "prog_fprintf", scope: !524, file: !524, line: 28, type: !851, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !905)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !853, !35, null}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !855, line: 7, baseType: !856)
!855 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !857, line: 241, size: 1728, elements: !858)
!857 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!858 = !{!859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !879, !880, !881, !882, !883, !884, !886, !890, !893, !895, !896, !897, !898, !899, !900, !901}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !856, file: !857, line: 242, baseType: !60, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !856, file: !857, line: 247, baseType: !20, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !856, file: !857, line: 248, baseType: !20, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !856, file: !857, line: 249, baseType: !20, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !856, file: !857, line: 250, baseType: !20, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !856, file: !857, line: 251, baseType: !20, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !856, file: !857, line: 252, baseType: !20, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !856, file: !857, line: 253, baseType: !20, size: 64, offset: 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !856, file: !857, line: 254, baseType: !20, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !856, file: !857, line: 256, baseType: !20, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !856, file: !857, line: 257, baseType: !20, size: 64, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !856, file: !857, line: 258, baseType: !20, size: 64, offset: 704)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !856, file: !857, line: 260, baseType: !872, size: 64, offset: 768)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !857, line: 156, size: 192, elements: !874)
!874 = !{!875, !876, !878}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !873, file: !857, line: 157, baseType: !872, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !873, file: !857, line: 158, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !873, file: !857, line: 162, baseType: !60, size: 32, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !856, file: !857, line: 262, baseType: !877, size: 64, offset: 832)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !856, file: !857, line: 264, baseType: !60, size: 32, offset: 896)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !856, file: !857, line: 268, baseType: !60, size: 32, offset: 928)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !856, file: !857, line: 270, baseType: !784, size: 64, offset: 960)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !856, file: !857, line: 274, baseType: !118, size: 16, offset: 1024)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !856, file: !857, line: 275, baseType: !885, size: 8, offset: 1040)
!885 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !856, file: !857, line: 276, baseType: !887, size: 8, offset: 1048)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !888)
!888 = !{!889}
!889 = !DISubrange(count: 1)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !856, file: !857, line: 280, baseType: !891, size: 64, offset: 1088)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !857, line: 150, baseType: null)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !856, file: !857, line: 289, baseType: !894, size: 64, offset: 1152)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !782, line: 141, baseType: !785)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !856, file: !857, line: 297, baseType: !22, size: 64, offset: 1216)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !856, file: !857, line: 298, baseType: !22, size: 64, offset: 1280)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !856, file: !857, line: 299, baseType: !22, size: 64, offset: 1344)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !856, file: !857, line: 300, baseType: !22, size: 64, offset: 1408)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !856, file: !857, line: 302, baseType: !119, size: 64, offset: 1472)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !856, file: !857, line: 303, baseType: !60, size: 32, offset: 1536)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !856, file: !857, line: 305, baseType: !902, size: 160, offset: 1568)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !903)
!903 = !{!904}
!904 = !DISubrange(count: 20)
!905 = !{!906, !907, !908}
!906 = !DILocalVariable(name: "fp", arg: 1, scope: !850, file: !524, line: 28, type: !853)
!907 = !DILocalVariable(name: "fmt", arg: 2, scope: !850, file: !524, line: 28, type: !35)
!908 = !DILocalVariable(name: "ap", scope: !850, file: !524, line: 30, type: !909)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !910, line: 46, baseType: !911)
!910 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !912, line: 48, baseType: !913)
!912 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !524, line: 30, baseType: !914)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 192, elements: !888)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !524, line: 30, size: 192, elements: !916)
!916 = !{!917, !918, !919, !920}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !915, file: !524, line: 30, baseType: !138, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !915, file: !524, line: 30, baseType: !138, size: 32, offset: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !915, file: !524, line: 30, baseType: !22, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !915, file: !524, line: 30, baseType: !22, size: 64, offset: 128)
!921 = !DILocation(line: 28, column: 21, scope: !850)
!922 = !DILocation(line: 28, column: 37, scope: !850)
!923 = !DILocation(line: 30, column: 3, scope: !850)
!924 = !DILocation(line: 30, column: 11, scope: !850)
!925 = !DILocation(line: 31, column: 3, scope: !850)
!926 = !DILocation(line: 32, column: 3, scope: !850)
!927 = !DILocation(line: 33, column: 3, scope: !850)
!928 = !DILocalVariable(name: "__stream", arg: 1, scope: !929, file: !930, line: 124, type: !933)
!929 = distinct !DISubprogram(name: "vfprintf", scope: !930, file: !930, line: 124, type: !931, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !936)
!930 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!931 = !DISubroutineType(types: !932)
!932 = !{!60, !933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !853)
!934 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!936 = !{!928, !937, !938}
!937 = !DILocalVariable(name: "__fmt", arg: 2, scope: !929, file: !930, line: 125, type: !934)
!938 = !DILocalVariable(name: "__ap", arg: 3, scope: !929, file: !930, line: 125, type: !935)
!939 = !DILocation(line: 124, column: 28, scope: !929, inlinedAt: !940)
!940 = distinct !DILocation(line: 34, column: 3, scope: !850)
!941 = !DILocation(line: 125, column: 27, scope: !929, inlinedAt: !940)
!942 = !DILocation(line: 125, column: 45, scope: !929, inlinedAt: !940)
!943 = !DILocation(line: 127, column: 10, scope: !929, inlinedAt: !940)
!944 = !DILocation(line: 35, column: 3, scope: !850)
!945 = !DILocalVariable(name: "__c", arg: 1, scope: !946, file: !947, line: 88, type: !60)
!946 = distinct !DISubprogram(name: "fputc_unlocked", scope: !947, file: !947, line: 88, type: !948, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !950)
!947 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!948 = !DISubroutineType(types: !949)
!949 = !{!60, !60, !853}
!950 = !{!945, !951}
!951 = !DILocalVariable(name: "__stream", arg: 2, scope: !946, file: !947, line: 88, type: !853)
!952 = !DILocation(line: 88, column: 21, scope: !946, inlinedAt: !953)
!953 = distinct !DILocation(line: 36, column: 3, scope: !850)
!954 = !DILocation(line: 88, column: 32, scope: !946, inlinedAt: !953)
!955 = !DILocation(line: 90, column: 10, scope: !946, inlinedAt: !953)
!956 = !{!957, !592, i64 40}
!957 = !{!"_IO_FILE", !657, i64 0, !592, i64 8, !592, i64 16, !592, i64 24, !592, i64 32, !592, i64 40, !592, i64 48, !592, i64 56, !592, i64 64, !592, i64 72, !592, i64 80, !592, i64 88, !592, i64 96, !592, i64 104, !657, i64 112, !657, i64 116, !958, i64 120, !959, i64 128, !593, i64 130, !593, i64 131, !592, i64 136, !958, i64 144, !592, i64 152, !592, i64 160, !592, i64 168, !592, i64 176, !958, i64 184, !657, i64 192, !593, i64 196}
!958 = !{!"long", !593, i64 0}
!959 = !{!"short", !593, i64 0}
!960 = !{!957, !592, i64 48}
!961 = !{!"branch_weights", i32 2000, i32 1}
!962 = !DILocation(line: 37, column: 1, scope: !850)
!963 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !77, file: !77, line: 41, type: !33, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !72, variables: !964)
!964 = !{!965}
!965 = !DILocalVariable(name: "file", arg: 1, scope: !963, file: !77, line: 41, type: !35)
!966 = !DILocation(line: 41, column: 41, scope: !963)
!967 = !DILocation(line: 43, column: 13, scope: !963)
!968 = !DILocation(line: 44, column: 1, scope: !963)
!969 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !77, file: !77, line: 78, type: !970, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !72, variables: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !26}
!972 = !{!973}
!973 = !DILocalVariable(name: "ignore", arg: 1, scope: !969, file: !77, line: 78, type: !26)
!974 = !DILocation(line: 78, column: 37, scope: !969)
!975 = !DILocation(line: 80, column: 16, scope: !969)
!976 = !DILocation(line: 81, column: 1, scope: !969)
!977 = distinct !DISubprogram(name: "close_stdout", scope: !77, file: !77, line: 107, type: !978, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !72, variables: !980)
!978 = !DISubroutineType(types: !979)
!979 = !{null}
!980 = !{!981}
!981 = !DILocalVariable(name: "write_error", scope: !982, file: !77, line: 112, type: !35)
!982 = distinct !DILexicalBlock(scope: !983, file: !77, line: 111, column: 5)
!983 = distinct !DILexicalBlock(scope: !977, file: !77, line: 109, column: 7)
!984 = !DILocation(line: 109, column: 21, scope: !983)
!985 = !DILocation(line: 109, column: 7, scope: !983)
!986 = !DILocation(line: 109, column: 29, scope: !983)
!987 = !DILocation(line: 110, column: 7, scope: !983)
!988 = !DILocation(line: 110, column: 12, scope: !983)
!989 = !DILocation(line: 114, column: 19, scope: !990)
!990 = distinct !DILexicalBlock(scope: !982, file: !77, line: 113, column: 11)
!991 = !DILocation(line: 110, column: 25, scope: !983)
!992 = !DILocation(line: 110, column: 28, scope: !983)
!993 = !DILocation(line: 110, column: 34, scope: !983)
!994 = !DILocation(line: 109, column: 7, scope: !977)
!995 = !DILocation(line: 112, column: 33, scope: !982)
!996 = !DILocation(line: 112, column: 19, scope: !982)
!997 = !DILocation(line: 113, column: 11, scope: !990)
!998 = !DILocation(line: 113, column: 11, scope: !982)
!999 = !DILocation(line: 114, column: 36, scope: !990)
!1000 = !DILocation(line: 114, column: 9, scope: !990)
!1001 = !DILocation(line: 117, column: 9, scope: !990)
!1002 = !DILocation(line: 119, column: 14, scope: !982)
!1003 = !DILocation(line: 119, column: 7, scope: !982)
!1004 = !DILocation(line: 122, column: 22, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !977, file: !77, line: 122, column: 8)
!1006 = !DILocation(line: 122, column: 8, scope: !1005)
!1007 = !DILocation(line: 122, column: 30, scope: !1005)
!1008 = !DILocation(line: 122, column: 8, scope: !977)
!1009 = !DILocation(line: 123, column: 13, scope: !1005)
!1010 = !DILocation(line: 123, column: 6, scope: !1005)
!1011 = !DILocation(line: 124, column: 1, scope: !977)
!1012 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !1013, file: !1013, line: 31, type: !695, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !1014)
!1013 = !DIFile(filename: "lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1014 = !{!1015, !1016, !1017, !1018}
!1015 = !DILocalVariable(name: "file", arg: 1, scope: !1012, file: !1013, line: 31, type: !20)
!1016 = !DILocalVariable(name: "base", scope: !1012, file: !1013, line: 33, type: !20)
!1017 = !DILocalVariable(name: "base_lim", scope: !1012, file: !1013, line: 34, type: !20)
!1018 = !DILocalVariable(name: "had_slash", scope: !1012, file: !1013, line: 35, type: !26)
!1019 = !DILocation(line: 31, column: 31, scope: !1012)
!1020 = !DILocation(line: 33, column: 16, scope: !1012)
!1021 = !DILocation(line: 33, column: 9, scope: !1012)
!1022 = !DILocation(line: 39, column: 9, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1012, file: !1013, line: 39, column: 7)
!1024 = !DILocation(line: 39, column: 7, scope: !1012)
!1025 = !DILocation(line: 41, column: 21, scope: !1012)
!1026 = !DILocation(line: 41, column: 19, scope: !1012)
!1027 = !DILocation(line: 34, column: 9, scope: !1012)
!1028 = !DILocation(line: 42, column: 16, scope: !1012)
!1029 = !DILocation(line: 42, column: 26, scope: !1012)
!1030 = !DILocation(line: 43, column: 13, scope: !1012)
!1031 = !DILocation(line: 44, column: 3, scope: !1012)
!1032 = distinct !DISubprogram(name: "set_program_name", scope: !91, file: !91, line: 39, type: !33, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DILocalVariable(name: "argv0", arg: 1, scope: !1032, file: !91, line: 39, type: !35)
!1035 = !DILocalVariable(name: "slash", scope: !1032, file: !91, line: 46, type: !35)
!1036 = !DILocalVariable(name: "base", scope: !1032, file: !91, line: 47, type: !35)
!1037 = !DILocation(line: 39, column: 31, scope: !1032)
!1038 = !DILocation(line: 51, column: 13, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1032, file: !91, line: 51, column: 7)
!1040 = !DILocation(line: 51, column: 7, scope: !1032)
!1041 = !DILocation(line: 55, column: 14, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !91, line: 52, column: 5)
!1043 = !DILocation(line: 54, column: 7, scope: !1042)
!1044 = !DILocation(line: 56, column: 7, scope: !1042)
!1045 = !DILocation(line: 59, column: 11, scope: !1032)
!1046 = !DILocation(line: 46, column: 15, scope: !1032)
!1047 = !DILocation(line: 60, column: 17, scope: !1032)
!1048 = !DILocation(line: 60, column: 33, scope: !1032)
!1049 = !DILocation(line: 60, column: 11, scope: !1032)
!1050 = !DILocation(line: 47, column: 15, scope: !1032)
!1051 = !DILocation(line: 61, column: 12, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1032, file: !91, line: 61, column: 7)
!1053 = !DILocation(line: 61, column: 20, scope: !1052)
!1054 = !DILocation(line: 61, column: 25, scope: !1052)
!1055 = !DILocation(line: 61, column: 42, scope: !1052)
!1056 = !DILocation(line: 61, column: 28, scope: !1052)
!1057 = !DILocation(line: 61, column: 61, scope: !1052)
!1058 = !DILocation(line: 61, column: 7, scope: !1032)
!1059 = !DILocation(line: 64, column: 11, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !91, line: 64, column: 11)
!1061 = distinct !DILexicalBlock(scope: !1052, file: !91, line: 62, column: 5)
!1062 = !DILocation(line: 64, column: 36, scope: !1060)
!1063 = !DILocation(line: 64, column: 11, scope: !1061)
!1064 = !DILocation(line: 66, column: 24, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !91, line: 65, column: 9)
!1066 = !DILocation(line: 70, column: 41, scope: !1065)
!1067 = !DILocation(line: 72, column: 9, scope: !1065)
!1068 = !DILocation(line: 84, column: 16, scope: !1032)
!1069 = !DILocation(line: 90, column: 27, scope: !1032)
!1070 = !DILocation(line: 92, column: 1, scope: !1032)
!1071 = distinct !DISubprogram(name: "clone_quoting_options", scope: !125, file: !125, line: 114, type: !1072, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1075)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!1074, !1074}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1075 = !{!1076, !1077, !1078}
!1076 = !DILocalVariable(name: "o", arg: 1, scope: !1071, file: !125, line: 114, type: !1074)
!1077 = !DILocalVariable(name: "e", scope: !1071, file: !125, line: 116, type: !60)
!1078 = !DILocalVariable(name: "p", scope: !1071, file: !125, line: 117, type: !1074)
!1079 = !DILocation(line: 114, column: 48, scope: !1071)
!1080 = !DILocation(line: 116, column: 11, scope: !1071)
!1081 = !DILocation(line: 116, column: 7, scope: !1071)
!1082 = !DILocation(line: 117, column: 40, scope: !1071)
!1083 = !DILocation(line: 117, column: 31, scope: !1071)
!1084 = !DILocation(line: 117, column: 27, scope: !1071)
!1085 = !DILocation(line: 119, column: 9, scope: !1071)
!1086 = !DILocation(line: 120, column: 3, scope: !1071)
!1087 = distinct !DISubprogram(name: "get_quoting_style", scope: !125, file: !125, line: 125, type: !1088, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1092)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!5, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1092 = !{!1093}
!1093 = !DILocalVariable(name: "o", arg: 1, scope: !1087, file: !125, line: 125, type: !1090)
!1094 = !DILocation(line: 125, column: 50, scope: !1087)
!1095 = !DILocation(line: 127, column: 11, scope: !1087)
!1096 = !DILocation(line: 127, column: 46, scope: !1087)
!1097 = !{!1098, !593, i64 0}
!1098 = !{!"quoting_options", !593, i64 0, !657, i64 4, !593, i64 8, !592, i64 40, !592, i64 48}
!1099 = !DILocation(line: 127, column: 3, scope: !1087)
!1100 = distinct !DISubprogram(name: "set_quoting_style", scope: !125, file: !125, line: 133, type: !1101, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1103)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !1074, !5}
!1103 = !{!1104, !1105}
!1104 = !DILocalVariable(name: "o", arg: 1, scope: !1100, file: !125, line: 133, type: !1074)
!1105 = !DILocalVariable(name: "s", arg: 2, scope: !1100, file: !125, line: 133, type: !5)
!1106 = !DILocation(line: 133, column: 44, scope: !1100)
!1107 = !DILocation(line: 133, column: 66, scope: !1100)
!1108 = !DILocation(line: 135, column: 4, scope: !1100)
!1109 = !DILocation(line: 135, column: 39, scope: !1100)
!1110 = !DILocation(line: 135, column: 45, scope: !1100)
!1111 = !DILocation(line: 136, column: 1, scope: !1100)
!1112 = distinct !DISubprogram(name: "set_char_quoting", scope: !125, file: !125, line: 144, type: !1113, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1115)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!60, !1074, !21, !60}
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1122, !1123}
!1116 = !DILocalVariable(name: "o", arg: 1, scope: !1112, file: !125, line: 144, type: !1074)
!1117 = !DILocalVariable(name: "c", arg: 2, scope: !1112, file: !125, line: 144, type: !21)
!1118 = !DILocalVariable(name: "i", arg: 3, scope: !1112, file: !125, line: 144, type: !60)
!1119 = !DILocalVariable(name: "uc", scope: !1112, file: !125, line: 146, type: !519)
!1120 = !DILocalVariable(name: "p", scope: !1112, file: !125, line: 147, type: !1121)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!1122 = !DILocalVariable(name: "shift", scope: !1112, file: !125, line: 149, type: !60)
!1123 = !DILocalVariable(name: "r", scope: !1112, file: !125, line: 150, type: !60)
!1124 = !DILocation(line: 144, column: 43, scope: !1112)
!1125 = !DILocation(line: 144, column: 51, scope: !1112)
!1126 = !DILocation(line: 144, column: 58, scope: !1112)
!1127 = !DILocation(line: 146, column: 17, scope: !1112)
!1128 = !DILocation(line: 148, column: 6, scope: !1112)
!1129 = !DILocation(line: 148, column: 62, scope: !1112)
!1130 = !DILocation(line: 148, column: 57, scope: !1112)
!1131 = !DILocation(line: 147, column: 17, scope: !1112)
!1132 = !DILocation(line: 149, column: 18, scope: !1112)
!1133 = !DILocation(line: 149, column: 15, scope: !1112)
!1134 = !DILocation(line: 149, column: 7, scope: !1112)
!1135 = !DILocation(line: 150, column: 12, scope: !1112)
!1136 = !DILocation(line: 150, column: 15, scope: !1112)
!1137 = !DILocation(line: 150, column: 25, scope: !1112)
!1138 = !DILocation(line: 150, column: 7, scope: !1112)
!1139 = !DILocation(line: 151, column: 13, scope: !1112)
!1140 = !DILocation(line: 151, column: 18, scope: !1112)
!1141 = !DILocation(line: 151, column: 23, scope: !1112)
!1142 = !DILocation(line: 151, column: 6, scope: !1112)
!1143 = !DILocation(line: 152, column: 3, scope: !1112)
!1144 = distinct !DISubprogram(name: "set_quoting_flags", scope: !125, file: !125, line: 160, type: !1145, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1147)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!60, !1074, !60}
!1147 = !{!1148, !1149, !1150}
!1148 = !DILocalVariable(name: "o", arg: 1, scope: !1144, file: !125, line: 160, type: !1074)
!1149 = !DILocalVariable(name: "i", arg: 2, scope: !1144, file: !125, line: 160, type: !60)
!1150 = !DILocalVariable(name: "r", scope: !1144, file: !125, line: 162, type: !60)
!1151 = !DILocation(line: 160, column: 44, scope: !1144)
!1152 = !DILocation(line: 160, column: 51, scope: !1144)
!1153 = !DILocation(line: 163, column: 8, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1144, file: !125, line: 163, column: 7)
!1155 = !DILocation(line: 163, column: 7, scope: !1144)
!1156 = !DILocation(line: 165, column: 10, scope: !1144)
!1157 = !{!1098, !657, i64 4}
!1158 = !DILocation(line: 162, column: 7, scope: !1144)
!1159 = !DILocation(line: 166, column: 12, scope: !1144)
!1160 = !DILocation(line: 167, column: 3, scope: !1144)
!1161 = distinct !DISubprogram(name: "set_custom_quoting", scope: !125, file: !125, line: 171, type: !1162, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1074, !35, !35}
!1164 = !{!1165, !1166, !1167}
!1165 = !DILocalVariable(name: "o", arg: 1, scope: !1161, file: !125, line: 171, type: !1074)
!1166 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1161, file: !125, line: 172, type: !35)
!1167 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1161, file: !125, line: 172, type: !35)
!1168 = !DILocation(line: 171, column: 45, scope: !1161)
!1169 = !DILocation(line: 172, column: 33, scope: !1161)
!1170 = !DILocation(line: 172, column: 57, scope: !1161)
!1171 = !DILocation(line: 174, column: 8, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1161, file: !125, line: 174, column: 7)
!1173 = !DILocation(line: 174, column: 7, scope: !1161)
!1174 = !DILocation(line: 176, column: 6, scope: !1161)
!1175 = !DILocation(line: 176, column: 12, scope: !1161)
!1176 = !DILocation(line: 177, column: 8, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1161, file: !125, line: 177, column: 7)
!1178 = !DILocation(line: 177, column: 23, scope: !1177)
!1179 = !DILocation(line: 177, column: 19, scope: !1177)
!1180 = !DILocation(line: 178, column: 5, scope: !1177)
!1181 = !DILocation(line: 179, column: 6, scope: !1161)
!1182 = !DILocation(line: 179, column: 17, scope: !1161)
!1183 = !{!1098, !592, i64 40}
!1184 = !DILocation(line: 180, column: 6, scope: !1161)
!1185 = !DILocation(line: 180, column: 18, scope: !1161)
!1186 = !{!1098, !592, i64 48}
!1187 = !DILocation(line: 181, column: 1, scope: !1161)
!1188 = distinct !DISubprogram(name: "quotearg_buffer", scope: !125, file: !125, line: 776, type: !1189, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!119, !20, !119, !35, !119, !1090}
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199}
!1192 = !DILocalVariable(name: "buffer", arg: 1, scope: !1188, file: !125, line: 776, type: !20)
!1193 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1188, file: !125, line: 776, type: !119)
!1194 = !DILocalVariable(name: "arg", arg: 3, scope: !1188, file: !125, line: 777, type: !35)
!1195 = !DILocalVariable(name: "argsize", arg: 4, scope: !1188, file: !125, line: 777, type: !119)
!1196 = !DILocalVariable(name: "o", arg: 5, scope: !1188, file: !125, line: 778, type: !1090)
!1197 = !DILocalVariable(name: "p", scope: !1188, file: !125, line: 780, type: !1090)
!1198 = !DILocalVariable(name: "e", scope: !1188, file: !125, line: 781, type: !60)
!1199 = !DILocalVariable(name: "r", scope: !1188, file: !125, line: 782, type: !119)
!1200 = !DILocation(line: 776, column: 24, scope: !1188)
!1201 = !DILocation(line: 776, column: 39, scope: !1188)
!1202 = !DILocation(line: 777, column: 30, scope: !1188)
!1203 = !DILocation(line: 777, column: 42, scope: !1188)
!1204 = !DILocation(line: 778, column: 48, scope: !1188)
!1205 = !DILocation(line: 780, column: 37, scope: !1188)
!1206 = !DILocation(line: 780, column: 33, scope: !1188)
!1207 = !DILocation(line: 781, column: 11, scope: !1188)
!1208 = !DILocation(line: 781, column: 7, scope: !1188)
!1209 = !DILocation(line: 783, column: 43, scope: !1188)
!1210 = !DILocation(line: 783, column: 53, scope: !1188)
!1211 = !DILocation(line: 783, column: 60, scope: !1188)
!1212 = !DILocation(line: 784, column: 43, scope: !1188)
!1213 = !DILocation(line: 784, column: 58, scope: !1188)
!1214 = !DILocation(line: 782, column: 14, scope: !1188)
!1215 = !DILocation(line: 782, column: 10, scope: !1188)
!1216 = !DILocation(line: 785, column: 9, scope: !1188)
!1217 = !DILocation(line: 786, column: 3, scope: !1188)
!1218 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !125, file: !125, line: 248, type: !1219, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1223)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!119, !20, !119, !35, !119, !5, !60, !1221, !35, !35}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1248, !1249, !1250, !1251, !1252, !1255, !1256, !1274, !1277, !1278, !1285}
!1224 = !DILocalVariable(name: "buffer", arg: 1, scope: !1218, file: !125, line: 248, type: !20)
!1225 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1218, file: !125, line: 248, type: !119)
!1226 = !DILocalVariable(name: "arg", arg: 3, scope: !1218, file: !125, line: 249, type: !35)
!1227 = !DILocalVariable(name: "argsize", arg: 4, scope: !1218, file: !125, line: 249, type: !119)
!1228 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1218, file: !125, line: 250, type: !5)
!1229 = !DILocalVariable(name: "flags", arg: 6, scope: !1218, file: !125, line: 250, type: !60)
!1230 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1218, file: !125, line: 251, type: !1221)
!1231 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1218, file: !125, line: 252, type: !35)
!1232 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1218, file: !125, line: 253, type: !35)
!1233 = !DILocalVariable(name: "i", scope: !1218, file: !125, line: 255, type: !119)
!1234 = !DILocalVariable(name: "len", scope: !1218, file: !125, line: 256, type: !119)
!1235 = !DILocalVariable(name: "orig_buffersize", scope: !1218, file: !125, line: 257, type: !119)
!1236 = !DILocalVariable(name: "quote_string", scope: !1218, file: !125, line: 258, type: !35)
!1237 = !DILocalVariable(name: "quote_string_len", scope: !1218, file: !125, line: 259, type: !119)
!1238 = !DILocalVariable(name: "backslash_escapes", scope: !1218, file: !125, line: 260, type: !26)
!1239 = !DILocalVariable(name: "unibyte_locale", scope: !1218, file: !125, line: 261, type: !26)
!1240 = !DILocalVariable(name: "elide_outer_quotes", scope: !1218, file: !125, line: 262, type: !26)
!1241 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1218, file: !125, line: 263, type: !26)
!1242 = !DILocalVariable(name: "encountered_single_quote", scope: !1218, file: !125, line: 264, type: !26)
!1243 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1218, file: !125, line: 265, type: !26)
!1244 = !DILocalVariable(name: "c", scope: !1245, file: !125, line: 394, type: !519)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !125, line: 393, column: 5)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !125, line: 392, column: 3)
!1247 = distinct !DILexicalBlock(scope: !1218, file: !125, line: 392, column: 3)
!1248 = !DILocalVariable(name: "esc", scope: !1245, file: !125, line: 395, type: !519)
!1249 = !DILocalVariable(name: "is_right_quote", scope: !1245, file: !125, line: 396, type: !26)
!1250 = !DILocalVariable(name: "escaping", scope: !1245, file: !125, line: 397, type: !26)
!1251 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1245, file: !125, line: 398, type: !26)
!1252 = !DILocalVariable(name: "m", scope: !1253, file: !125, line: 602, type: !119)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !125, line: 600, column: 11)
!1254 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 418, column: 9)
!1255 = !DILocalVariable(name: "printable", scope: !1253, file: !125, line: 604, type: !26)
!1256 = !DILocalVariable(name: "mbstate", scope: !1257, file: !125, line: 613, type: !1259)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !125, line: 612, column: 15)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !125, line: 606, column: 17)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1260, line: 6, baseType: !1261)
!1260 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1262, line: 21, baseType: !1263)
!1262 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1262, line: 13, size: 64, elements: !1264)
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1263, file: !1262, line: 15, baseType: !60, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1263, file: !1262, line: 20, baseType: !1267, size: 32, offset: 32)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !1262, line: 16, size: 32, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1267, file: !1262, line: 18, baseType: !138, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1267, file: !1262, line: 19, baseType: !1271, size: 32)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !1272)
!1272 = !{!1273}
!1273 = !DISubrange(count: 4)
!1274 = !DILocalVariable(name: "w", scope: !1275, file: !125, line: 623, type: !1276)
!1275 = distinct !DILexicalBlock(scope: !1257, file: !125, line: 622, column: 19)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !120, line: 90, baseType: !60)
!1277 = !DILocalVariable(name: "bytes", scope: !1275, file: !125, line: 624, type: !119)
!1278 = !DILocalVariable(name: "j", scope: !1279, file: !125, line: 649, type: !119)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !125, line: 648, column: 27)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !125, line: 646, column: 29)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !125, line: 641, column: 23)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !125, line: 633, column: 30)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !125, line: 628, column: 30)
!1284 = distinct !DILexicalBlock(scope: !1275, file: !125, line: 626, column: 25)
!1285 = !DILocalVariable(name: "ilim", scope: !1286, file: !125, line: 676, type: !119)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !125, line: 673, column: 15)
!1287 = distinct !DILexicalBlock(scope: !1253, file: !125, line: 672, column: 17)
!1288 = !DILocation(line: 248, column: 33, scope: !1218)
!1289 = !DILocation(line: 248, column: 48, scope: !1218)
!1290 = !DILocation(line: 249, column: 39, scope: !1218)
!1291 = !DILocation(line: 249, column: 51, scope: !1218)
!1292 = !DILocation(line: 250, column: 46, scope: !1218)
!1293 = !DILocation(line: 250, column: 65, scope: !1218)
!1294 = !DILocation(line: 251, column: 47, scope: !1218)
!1295 = !DILocation(line: 252, column: 39, scope: !1218)
!1296 = !DILocation(line: 253, column: 39, scope: !1218)
!1297 = !DILocation(line: 256, column: 10, scope: !1218)
!1298 = !DILocation(line: 257, column: 10, scope: !1218)
!1299 = !DILocation(line: 258, column: 15, scope: !1218)
!1300 = !DILocation(line: 259, column: 10, scope: !1218)
!1301 = !DILocation(line: 260, column: 8, scope: !1218)
!1302 = !DILocation(line: 261, column: 25, scope: !1218)
!1303 = !DILocation(line: 261, column: 36, scope: !1218)
!1304 = !DILocation(line: 262, column: 8, scope: !1218)
!1305 = !DILocation(line: 263, column: 8, scope: !1218)
!1306 = !DILocation(line: 264, column: 8, scope: !1218)
!1307 = !DILocation(line: 265, column: 8, scope: !1218)
!1308 = !DILocation(line: 265, column: 3, scope: !1218)
!1309 = !DILocation(line: 308, column: 3, scope: !1218)
!1310 = !DILocation(line: 315, column: 11, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1218, file: !125, line: 309, column: 5)
!1312 = !DILocation(line: 315, column: 12, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1311, file: !125, line: 315, column: 11)
!1314 = !DILocation(line: 316, column: 9, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !125, line: 316, column: 9)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !125, line: 316, column: 9)
!1317 = !DILocation(line: 316, column: 9, scope: !1316)
!1318 = !DILocation(line: 354, column: 26, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !125, line: 332, column: 11)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !125, line: 331, column: 13)
!1321 = distinct !DILexicalBlock(scope: !1311, file: !125, line: 330, column: 7)
!1322 = !DILocation(line: 355, column: 27, scope: !1319)
!1323 = !DILocation(line: 356, column: 11, scope: !1319)
!1324 = !DILocation(line: 357, column: 14, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !125, line: 357, column: 13)
!1326 = !DILocation(line: 357, column: 13, scope: !1321)
!1327 = !DILocation(line: 358, column: 43, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !125, line: 358, column: 11)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !125, line: 358, column: 11)
!1330 = !DILocation(line: 358, column: 11, scope: !1329)
!1331 = !DILocation(line: 359, column: 13, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !125, line: 359, column: 13)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !125, line: 359, column: 13)
!1334 = !DILocation(line: 359, column: 13, scope: !1333)
!1335 = !DILocation(line: 358, column: 70, scope: !1328)
!1336 = distinct !{!1336, !1330, !1337}
!1337 = !DILocation(line: 359, column: 13, scope: !1329)
!1338 = !DILocation(line: 362, column: 28, scope: !1321)
!1339 = !DILocation(line: 364, column: 7, scope: !1311)
!1340 = !DILocation(line: 367, column: 7, scope: !1311)
!1341 = !DILocation(line: 370, column: 7, scope: !1311)
!1342 = !DILocation(line: 373, column: 12, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1311, file: !125, line: 373, column: 11)
!1344 = !DILocation(line: 373, column: 11, scope: !1311)
!1345 = !DILocation(line: 378, column: 12, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1311, file: !125, line: 378, column: 11)
!1347 = !DILocation(line: 378, column: 11, scope: !1311)
!1348 = !DILocation(line: 379, column: 9, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !125, line: 379, column: 9)
!1350 = distinct !DILexicalBlock(scope: !1346, file: !125, line: 379, column: 9)
!1351 = !DILocation(line: 379, column: 9, scope: !1350)
!1352 = !DILocation(line: 386, column: 7, scope: !1311)
!1353 = !DILocation(line: 389, column: 7, scope: !1311)
!1354 = !DILocation(line: 255, column: 10, scope: !1218)
!1355 = !DILocation(line: 392, column: 8, scope: !1247)
!1356 = !DILocation(line: 392, column: 27, scope: !1246)
!1357 = !DILocation(line: 392, column: 19, scope: !1246)
!1358 = !DILocation(line: 392, column: 60, scope: !1246)
!1359 = !DILocation(line: 392, column: 3, scope: !1247)
!1360 = !DILocation(line: 392, column: 41, scope: !1246)
!1361 = !DILocation(line: 392, column: 48, scope: !1246)
!1362 = !DILocation(line: 396, column: 12, scope: !1245)
!1363 = !DILocation(line: 397, column: 12, scope: !1245)
!1364 = !DILocation(line: 398, column: 12, scope: !1245)
!1365 = !DILocation(line: 401, column: 11, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 400, column: 11)
!1367 = !DILocation(line: 403, column: 17, scope: !1366)
!1368 = !DILocation(line: 404, column: 39, scope: !1366)
!1369 = !DILocation(line: 408, column: 32, scope: !1366)
!1370 = !DILocation(line: 404, column: 19, scope: !1366)
!1371 = !DILocation(line: 404, column: 15, scope: !1366)
!1372 = !DILocation(line: 409, column: 11, scope: !1366)
!1373 = !DILocation(line: 409, column: 26, scope: !1366)
!1374 = !DILocation(line: 409, column: 14, scope: !1366)
!1375 = !DILocation(line: 409, column: 63, scope: !1366)
!1376 = !DILocation(line: 400, column: 11, scope: !1245)
!1377 = !DILocation(line: 416, column: 11, scope: !1245)
!1378 = !DILocation(line: 394, column: 21, scope: !1245)
!1379 = !DILocation(line: 417, column: 7, scope: !1245)
!1380 = !DILocation(line: 420, column: 15, scope: !1254)
!1381 = !DILocation(line: 422, column: 15, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !125, line: 422, column: 15)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !125, line: 421, column: 13)
!1384 = distinct !DILexicalBlock(scope: !1254, file: !125, line: 420, column: 15)
!1385 = !DILocation(line: 422, column: 15, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !125, line: 422, column: 15)
!1387 = !DILocation(line: 422, column: 15, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !125, line: 422, column: 15)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !125, line: 422, column: 15)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !125, line: 422, column: 15)
!1391 = !DILocation(line: 422, column: 15, scope: !1389)
!1392 = !DILocation(line: 422, column: 15, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !125, line: 422, column: 15)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !125, line: 422, column: 15)
!1395 = !DILocation(line: 422, column: 15, scope: !1394)
!1396 = !DILocation(line: 422, column: 15, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !125, line: 422, column: 15)
!1398 = distinct !DILexicalBlock(scope: !1390, file: !125, line: 422, column: 15)
!1399 = !DILocation(line: 422, column: 15, scope: !1398)
!1400 = !DILocation(line: 422, column: 15, scope: !1390)
!1401 = !DILocation(line: 422, column: 15, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !125, line: 422, column: 15)
!1403 = distinct !DILexicalBlock(scope: !1382, file: !125, line: 422, column: 15)
!1404 = !DILocation(line: 422, column: 15, scope: !1403)
!1405 = !DILocation(line: 430, column: 19, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1383, file: !125, line: 429, column: 19)
!1407 = !DILocation(line: 430, column: 24, scope: !1406)
!1408 = !DILocation(line: 430, column: 28, scope: !1406)
!1409 = !DILocation(line: 430, column: 38, scope: !1406)
!1410 = !DILocation(line: 430, column: 48, scope: !1406)
!1411 = !DILocation(line: 430, column: 59, scope: !1406)
!1412 = !DILocation(line: 432, column: 19, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !125, line: 432, column: 19)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !125, line: 432, column: 19)
!1415 = distinct !DILexicalBlock(scope: !1406, file: !125, line: 431, column: 17)
!1416 = !DILocation(line: 432, column: 19, scope: !1414)
!1417 = !DILocation(line: 433, column: 19, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !125, line: 433, column: 19)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !125, line: 433, column: 19)
!1420 = !DILocation(line: 433, column: 19, scope: !1419)
!1421 = !DILocation(line: 434, column: 17, scope: !1415)
!1422 = !DILocation(line: 441, column: 20, scope: !1384)
!1423 = !DILocation(line: 446, column: 11, scope: !1254)
!1424 = !DILocation(line: 449, column: 19, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1254, file: !125, line: 447, column: 13)
!1426 = !DILocation(line: 455, column: 19, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1425, file: !125, line: 454, column: 19)
!1428 = !DILocation(line: 455, column: 24, scope: !1427)
!1429 = !DILocation(line: 455, column: 28, scope: !1427)
!1430 = !DILocation(line: 455, column: 38, scope: !1427)
!1431 = !DILocation(line: 455, column: 47, scope: !1427)
!1432 = !DILocation(line: 455, column: 41, scope: !1427)
!1433 = !DILocation(line: 455, column: 52, scope: !1427)
!1434 = !DILocation(line: 454, column: 19, scope: !1425)
!1435 = !DILocation(line: 456, column: 25, scope: !1427)
!1436 = !DILocation(line: 456, column: 17, scope: !1427)
!1437 = !DILocation(line: 463, column: 25, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1427, file: !125, line: 457, column: 19)
!1439 = !DILocation(line: 467, column: 21, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !125, line: 467, column: 21)
!1441 = distinct !DILexicalBlock(scope: !1438, file: !125, line: 467, column: 21)
!1442 = !DILocation(line: 467, column: 21, scope: !1441)
!1443 = !DILocation(line: 468, column: 21, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !125, line: 468, column: 21)
!1445 = distinct !DILexicalBlock(scope: !1438, file: !125, line: 468, column: 21)
!1446 = !DILocation(line: 468, column: 21, scope: !1445)
!1447 = !DILocation(line: 469, column: 21, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !125, line: 469, column: 21)
!1449 = distinct !DILexicalBlock(scope: !1438, file: !125, line: 469, column: 21)
!1450 = !DILocation(line: 469, column: 21, scope: !1449)
!1451 = !DILocation(line: 470, column: 21, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !125, line: 470, column: 21)
!1453 = distinct !DILexicalBlock(scope: !1438, file: !125, line: 470, column: 21)
!1454 = !DILocation(line: 470, column: 21, scope: !1453)
!1455 = !DILocation(line: 471, column: 21, scope: !1438)
!1456 = !DILocation(line: 395, column: 21, scope: !1245)
!1457 = !DILocation(line: 484, column: 31, scope: !1254)
!1458 = !DILocation(line: 485, column: 31, scope: !1254)
!1459 = !DILocation(line: 487, column: 31, scope: !1254)
!1460 = !DILocation(line: 488, column: 31, scope: !1254)
!1461 = !DILocation(line: 489, column: 31, scope: !1254)
!1462 = !DILocation(line: 492, column: 15, scope: !1254)
!1463 = !DILocation(line: 494, column: 19, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !125, line: 493, column: 13)
!1465 = distinct !DILexicalBlock(scope: !1254, file: !125, line: 492, column: 15)
!1466 = !DILocation(line: 501, column: 33, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1254, file: !125, line: 501, column: 15)
!1468 = !DILocation(line: 506, column: 15, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1254, file: !125, line: 505, column: 15)
!1470 = !DILocation(line: 510, column: 15, scope: !1254)
!1471 = !DILocation(line: 518, column: 26, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1254, file: !125, line: 518, column: 15)
!1473 = !DILocation(line: 518, column: 15, scope: !1254)
!1474 = !DILocation(line: 518, column: 40, scope: !1472)
!1475 = !DILocation(line: 518, column: 47, scope: !1472)
!1476 = !DILocation(line: 522, column: 17, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1254, file: !125, line: 522, column: 15)
!1478 = !DILocation(line: 518, column: 18, scope: !1472)
!1479 = !DILocation(line: 518, column: 65, scope: !1472)
!1480 = !DILocation(line: 522, column: 15, scope: !1254)
!1481 = !DILocation(line: 526, column: 11, scope: !1254)
!1482 = !DILocation(line: 541, column: 15, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1254, file: !125, line: 540, column: 15)
!1484 = !DILocation(line: 548, column: 15, scope: !1254)
!1485 = !DILocation(line: 550, column: 19, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !125, line: 549, column: 13)
!1487 = distinct !DILexicalBlock(scope: !1254, file: !125, line: 548, column: 15)
!1488 = !DILocation(line: 553, column: 19, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1486, file: !125, line: 553, column: 19)
!1490 = !DILocation(line: 553, column: 35, scope: !1489)
!1491 = !DILocation(line: 553, column: 30, scope: !1489)
!1492 = !DILocation(line: 562, column: 15, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !125, line: 562, column: 15)
!1494 = distinct !DILexicalBlock(scope: !1486, file: !125, line: 562, column: 15)
!1495 = !DILocation(line: 562, column: 15, scope: !1494)
!1496 = !DILocation(line: 563, column: 15, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !125, line: 563, column: 15)
!1498 = distinct !DILexicalBlock(scope: !1486, file: !125, line: 563, column: 15)
!1499 = !DILocation(line: 563, column: 15, scope: !1498)
!1500 = !DILocation(line: 564, column: 15, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !125, line: 564, column: 15)
!1502 = distinct !DILexicalBlock(scope: !1486, file: !125, line: 564, column: 15)
!1503 = !DILocation(line: 564, column: 15, scope: !1502)
!1504 = !DILocation(line: 566, column: 13, scope: !1486)
!1505 = !DILocation(line: 606, column: 17, scope: !1253)
!1506 = !DILocation(line: 602, column: 20, scope: !1253)
!1507 = !DILocation(line: 609, column: 29, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1258, file: !125, line: 607, column: 15)
!1509 = !{!959, !959, i64 0}
!1510 = !DILocation(line: 609, column: 27, scope: !1508)
!1511 = !DILocation(line: 604, column: 18, scope: !1253)
!1512 = !DILocation(line: 610, column: 15, scope: !1508)
!1513 = !DILocation(line: 613, column: 17, scope: !1257)
!1514 = !DILocation(line: 614, column: 17, scope: !1257)
!1515 = !DILocation(line: 618, column: 29, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1257, file: !125, line: 618, column: 21)
!1517 = !DILocation(line: 618, column: 21, scope: !1257)
!1518 = !DILocation(line: 619, column: 29, scope: !1516)
!1519 = !DILocation(line: 619, column: 19, scope: !1516)
!1520 = !DILocation(line: 621, column: 17, scope: !1257)
!1521 = distinct !{!1521, !1520, !1522}
!1522 = !DILocation(line: 667, column: 44, scope: !1257)
!1523 = !DILocation(line: 623, column: 21, scope: !1275)
!1524 = !DILocation(line: 624, column: 56, scope: !1275)
!1525 = !DILocation(line: 624, column: 50, scope: !1275)
!1526 = !DILocation(line: 625, column: 53, scope: !1275)
!1527 = !DILocation(line: 613, column: 27, scope: !1257)
!1528 = !DILocation(line: 623, column: 29, scope: !1275)
!1529 = !DILocation(line: 624, column: 36, scope: !1275)
!1530 = !DILocation(line: 624, column: 28, scope: !1275)
!1531 = !DILocation(line: 626, column: 25, scope: !1275)
!1532 = !DILocation(line: 636, column: 38, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1282, file: !125, line: 634, column: 23)
!1534 = !DILocation(line: 636, column: 48, scope: !1533)
!1535 = !DILocation(line: 636, column: 51, scope: !1533)
!1536 = !DILocation(line: 636, column: 25, scope: !1533)
!1537 = !DILocation(line: 637, column: 28, scope: !1533)
!1538 = !DILocation(line: 636, column: 34, scope: !1533)
!1539 = distinct !{!1539, !1536, !1537}
!1540 = !DILocation(line: 650, column: 43, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !125, line: 650, column: 29)
!1542 = distinct !DILexicalBlock(scope: !1279, file: !125, line: 650, column: 29)
!1543 = !DILocation(line: 647, column: 29, scope: !1280)
!1544 = !DILocation(line: 649, column: 36, scope: !1279)
!1545 = !DILocation(line: 651, column: 49, scope: !1541)
!1546 = !DILocation(line: 651, column: 39, scope: !1541)
!1547 = !DILocation(line: 651, column: 31, scope: !1541)
!1548 = !DILocation(line: 650, column: 53, scope: !1541)
!1549 = !DILocation(line: 650, column: 29, scope: !1542)
!1550 = distinct !{!1550, !1549, !1551}
!1551 = !DILocation(line: 659, column: 33, scope: !1542)
!1552 = !DILocation(line: 666, column: 19, scope: !1257)
!1553 = !DILocation(line: 662, column: 41, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1281, file: !125, line: 662, column: 29)
!1555 = !DILocation(line: 662, column: 31, scope: !1554)
!1556 = !DILocation(line: 662, column: 29, scope: !1281)
!1557 = !DILocation(line: 664, column: 27, scope: !1281)
!1558 = !DILocation(line: 667, column: 26, scope: !1257)
!1559 = !DILocation(line: 667, column: 24, scope: !1257)
!1560 = !DILocation(line: 666, column: 19, scope: !1275)
!1561 = !DILocation(line: 668, column: 15, scope: !1258)
!1562 = !DILocation(line: 670, column: 40, scope: !1253)
!1563 = !DILocation(line: 672, column: 19, scope: !1287)
!1564 = !DILocation(line: 672, column: 45, scope: !1287)
!1565 = !DILocation(line: 672, column: 23, scope: !1287)
!1566 = !DILocation(line: 676, column: 33, scope: !1286)
!1567 = !DILocation(line: 676, column: 24, scope: !1286)
!1568 = !DILocation(line: 678, column: 17, scope: !1286)
!1569 = !DILocation(line: 680, column: 43, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !125, line: 680, column: 25)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !125, line: 679, column: 19)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !125, line: 678, column: 17)
!1573 = distinct !DILexicalBlock(scope: !1286, file: !125, line: 678, column: 17)
!1574 = !DILocation(line: 682, column: 25, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !125, line: 682, column: 25)
!1576 = distinct !DILexicalBlock(scope: !1570, file: !125, line: 681, column: 23)
!1577 = !DILocation(line: 682, column: 25, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !125, line: 682, column: 25)
!1579 = !DILocation(line: 682, column: 25, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !125, line: 682, column: 25)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !125, line: 682, column: 25)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !125, line: 682, column: 25)
!1583 = !DILocation(line: 682, column: 25, scope: !1581)
!1584 = !DILocation(line: 682, column: 25, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !125, line: 682, column: 25)
!1586 = distinct !DILexicalBlock(scope: !1582, file: !125, line: 682, column: 25)
!1587 = !DILocation(line: 682, column: 25, scope: !1586)
!1588 = !DILocation(line: 682, column: 25, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !125, line: 682, column: 25)
!1590 = distinct !DILexicalBlock(scope: !1582, file: !125, line: 682, column: 25)
!1591 = !DILocation(line: 682, column: 25, scope: !1590)
!1592 = !DILocation(line: 682, column: 25, scope: !1582)
!1593 = !DILocation(line: 682, column: 25, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !125, line: 682, column: 25)
!1595 = distinct !DILexicalBlock(scope: !1575, file: !125, line: 682, column: 25)
!1596 = !DILocation(line: 682, column: 25, scope: !1595)
!1597 = !DILocation(line: 683, column: 25, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !125, line: 683, column: 25)
!1599 = distinct !DILexicalBlock(scope: !1576, file: !125, line: 683, column: 25)
!1600 = !DILocation(line: 683, column: 25, scope: !1599)
!1601 = !DILocation(line: 684, column: 25, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !125, line: 684, column: 25)
!1603 = distinct !DILexicalBlock(scope: !1576, file: !125, line: 684, column: 25)
!1604 = !DILocation(line: 684, column: 25, scope: !1603)
!1605 = !DILocation(line: 685, column: 38, scope: !1576)
!1606 = !DILocation(line: 685, column: 33, scope: !1576)
!1607 = !DILocation(line: 686, column: 23, scope: !1576)
!1608 = !DILocation(line: 687, column: 30, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1570, file: !125, line: 687, column: 30)
!1610 = !DILocation(line: 687, column: 30, scope: !1570)
!1611 = !DILocation(line: 689, column: 25, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !125, line: 689, column: 25)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !125, line: 689, column: 25)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !125, line: 688, column: 23)
!1615 = !DILocation(line: 689, column: 25, scope: !1613)
!1616 = !DILocation(line: 691, column: 23, scope: !1614)
!1617 = !DILocation(line: 692, column: 35, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1571, file: !125, line: 692, column: 25)
!1619 = !DILocation(line: 692, column: 30, scope: !1618)
!1620 = !DILocation(line: 692, column: 25, scope: !1571)
!1621 = !DILocation(line: 694, column: 21, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !125, line: 694, column: 21)
!1623 = distinct !DILexicalBlock(scope: !1571, file: !125, line: 694, column: 21)
!1624 = !DILocation(line: 694, column: 21, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !125, line: 694, column: 21)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !125, line: 694, column: 21)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !125, line: 694, column: 21)
!1628 = !DILocation(line: 694, column: 21, scope: !1626)
!1629 = !DILocation(line: 694, column: 21, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !125, line: 694, column: 21)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !125, line: 694, column: 21)
!1632 = !DILocation(line: 694, column: 21, scope: !1631)
!1633 = !DILocation(line: 694, column: 21, scope: !1627)
!1634 = !DILocation(line: 695, column: 21, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !125, line: 695, column: 21)
!1636 = distinct !DILexicalBlock(scope: !1571, file: !125, line: 695, column: 21)
!1637 = !DILocation(line: 695, column: 21, scope: !1636)
!1638 = !DILocation(line: 696, column: 25, scope: !1571)
!1639 = !DILocation(line: 678, column: 17, scope: !1572)
!1640 = distinct !{!1640, !1641, !1642}
!1641 = !DILocation(line: 678, column: 17, scope: !1573)
!1642 = !DILocation(line: 697, column: 19, scope: !1573)
!1643 = !DILocation(line: 704, column: 34, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 704, column: 11)
!1645 = !DILocation(line: 706, column: 14, scope: !1644)
!1646 = !DILocation(line: 707, column: 14, scope: !1644)
!1647 = !DILocation(line: 707, column: 35, scope: !1644)
!1648 = !DILocation(line: 707, column: 17, scope: !1644)
!1649 = !DILocation(line: 707, column: 53, scope: !1644)
!1650 = !DILocation(line: 707, column: 47, scope: !1644)
!1651 = !DILocation(line: 707, column: 65, scope: !1644)
!1652 = !DILocation(line: 708, column: 15, scope: !1644)
!1653 = !DILocation(line: 708, column: 11, scope: !1644)
!1654 = !DILocation(line: 704, column: 11, scope: !1245)
!1655 = !DILocation(line: 712, column: 7, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 712, column: 7)
!1657 = !DILocation(line: 712, column: 7, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1656, file: !125, line: 712, column: 7)
!1659 = !DILocation(line: 712, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !125, line: 712, column: 7)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !125, line: 712, column: 7)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !125, line: 712, column: 7)
!1663 = !DILocation(line: 712, column: 7, scope: !1661)
!1664 = !DILocation(line: 712, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !125, line: 712, column: 7)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !125, line: 712, column: 7)
!1667 = !DILocation(line: 712, column: 7, scope: !1666)
!1668 = !DILocation(line: 712, column: 7, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !125, line: 712, column: 7)
!1670 = distinct !DILexicalBlock(scope: !1662, file: !125, line: 712, column: 7)
!1671 = !DILocation(line: 712, column: 7, scope: !1670)
!1672 = !DILocation(line: 712, column: 7, scope: !1662)
!1673 = !DILocation(line: 712, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !125, line: 712, column: 7)
!1675 = distinct !DILexicalBlock(scope: !1656, file: !125, line: 712, column: 7)
!1676 = !DILocation(line: 712, column: 7, scope: !1675)
!1677 = !DILocation(line: 715, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !125, line: 715, column: 7)
!1679 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 715, column: 7)
!1680 = !DILocation(line: 715, column: 7, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !125, line: 715, column: 7)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !125, line: 715, column: 7)
!1683 = distinct !DILexicalBlock(scope: !1678, file: !125, line: 715, column: 7)
!1684 = !DILocation(line: 715, column: 7, scope: !1682)
!1685 = !DILocation(line: 715, column: 7, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !125, line: 715, column: 7)
!1687 = distinct !DILexicalBlock(scope: !1683, file: !125, line: 715, column: 7)
!1688 = !DILocation(line: 715, column: 7, scope: !1687)
!1689 = !DILocation(line: 715, column: 7, scope: !1683)
!1690 = !DILocation(line: 716, column: 7, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !125, line: 716, column: 7)
!1692 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 716, column: 7)
!1693 = !DILocation(line: 716, column: 7, scope: !1692)
!1694 = !DILocation(line: 718, column: 13, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1245, file: !125, line: 718, column: 11)
!1696 = !DILocation(line: 718, column: 11, scope: !1245)
!1697 = !DILocation(line: 720, column: 5, scope: !1246)
!1698 = !DILocation(line: 392, column: 75, scope: !1246)
!1699 = !DILocation(line: 392, column: 3, scope: !1246)
!1700 = distinct !{!1700, !1359, !1701}
!1701 = !DILocation(line: 720, column: 5, scope: !1247)
!1702 = !DILocation(line: 722, column: 11, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1218, file: !125, line: 722, column: 7)
!1704 = !DILocation(line: 722, column: 16, scope: !1703)
!1705 = !DILocation(line: 730, column: 51, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1218, file: !125, line: 730, column: 7)
!1707 = !DILocation(line: 731, column: 10, scope: !1706)
!1708 = !DILocation(line: 733, column: 11, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !125, line: 733, column: 11)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !125, line: 732, column: 5)
!1711 = !DILocation(line: 733, column: 11, scope: !1710)
!1712 = !DILocation(line: 734, column: 16, scope: !1709)
!1713 = !DILocation(line: 734, column: 9, scope: !1709)
!1714 = !DILocation(line: 738, column: 18, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1709, file: !125, line: 738, column: 16)
!1716 = !DILocation(line: 738, column: 32, scope: !1715)
!1717 = !DILocation(line: 738, column: 29, scope: !1715)
!1718 = !DILocation(line: 747, column: 7, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1218, file: !125, line: 747, column: 7)
!1720 = !DILocation(line: 747, column: 20, scope: !1719)
!1721 = !DILocation(line: 748, column: 12, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !125, line: 748, column: 5)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !125, line: 748, column: 5)
!1724 = !DILocation(line: 748, column: 5, scope: !1723)
!1725 = !DILocation(line: 749, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !125, line: 749, column: 7)
!1727 = distinct !DILexicalBlock(scope: !1722, file: !125, line: 749, column: 7)
!1728 = !DILocation(line: 749, column: 7, scope: !1727)
!1729 = !DILocation(line: 748, column: 39, scope: !1722)
!1730 = distinct !{!1730, !1724, !1731}
!1731 = !DILocation(line: 749, column: 7, scope: !1723)
!1732 = !DILocation(line: 751, column: 11, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1218, file: !125, line: 751, column: 7)
!1734 = !DILocation(line: 751, column: 7, scope: !1218)
!1735 = !DILocation(line: 752, column: 5, scope: !1733)
!1736 = !DILocation(line: 752, column: 17, scope: !1733)
!1737 = !DILocation(line: 758, column: 21, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1218, file: !125, line: 758, column: 7)
!1739 = !DILocation(line: 758, column: 54, scope: !1738)
!1740 = !DILocation(line: 758, column: 51, scope: !1738)
!1741 = !DILocation(line: 762, column: 42, scope: !1218)
!1742 = !DILocation(line: 760, column: 10, scope: !1218)
!1743 = !DILocation(line: 760, column: 3, scope: !1218)
!1744 = !DILocation(line: 764, column: 1, scope: !1218)
!1745 = distinct !DISubprogram(name: "gettext_quote", scope: !125, file: !125, line: 199, type: !1746, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1748)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!35, !35, !5}
!1748 = !{!1749, !1750, !1751, !1752}
!1749 = !DILocalVariable(name: "msgid", arg: 1, scope: !1745, file: !125, line: 199, type: !35)
!1750 = !DILocalVariable(name: "s", arg: 2, scope: !1745, file: !125, line: 199, type: !5)
!1751 = !DILocalVariable(name: "translation", scope: !1745, file: !125, line: 201, type: !35)
!1752 = !DILocalVariable(name: "locale_code", scope: !1745, file: !125, line: 202, type: !35)
!1753 = !DILocation(line: 199, column: 28, scope: !1745)
!1754 = !DILocation(line: 199, column: 54, scope: !1745)
!1755 = !DILocation(line: 201, column: 29, scope: !1745)
!1756 = !DILocation(line: 201, column: 15, scope: !1745)
!1757 = !DILocation(line: 204, column: 19, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1745, file: !125, line: 204, column: 7)
!1759 = !DILocation(line: 204, column: 7, scope: !1745)
!1760 = !DILocation(line: 225, column: 17, scope: !1745)
!1761 = !DILocation(line: 202, column: 15, scope: !1745)
!1762 = !DILocalVariable(name: "s2", arg: 2, scope: !1763, file: !1764, line: 160, type: !35)
!1763 = distinct !DISubprogram(name: "strcaseeq0", scope: !1764, file: !1764, line: 160, type: !1765, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1767)
!1764 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!60, !35, !35, !21, !21, !21, !21, !21, !21, !21, !21, !21}
!1767 = !{!1768, !1762, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777}
!1768 = !DILocalVariable(name: "s1", arg: 1, scope: !1763, file: !1764, line: 160, type: !35)
!1769 = !DILocalVariable(name: "s20", arg: 3, scope: !1763, file: !1764, line: 160, type: !21)
!1770 = !DILocalVariable(name: "s21", arg: 4, scope: !1763, file: !1764, line: 160, type: !21)
!1771 = !DILocalVariable(name: "s22", arg: 5, scope: !1763, file: !1764, line: 160, type: !21)
!1772 = !DILocalVariable(name: "s23", arg: 6, scope: !1763, file: !1764, line: 160, type: !21)
!1773 = !DILocalVariable(name: "s24", arg: 7, scope: !1763, file: !1764, line: 160, type: !21)
!1774 = !DILocalVariable(name: "s25", arg: 8, scope: !1763, file: !1764, line: 160, type: !21)
!1775 = !DILocalVariable(name: "s26", arg: 9, scope: !1763, file: !1764, line: 160, type: !21)
!1776 = !DILocalVariable(name: "s27", arg: 10, scope: !1763, file: !1764, line: 160, type: !21)
!1777 = !DILocalVariable(name: "s28", arg: 11, scope: !1763, file: !1764, line: 160, type: !21)
!1778 = !DILocation(line: 160, column: 41, scope: !1763, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 226, column: 7, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1745, file: !125, line: 226, column: 7)
!1781 = !DILocation(line: 160, column: 120, scope: !1763, inlinedAt: !1779)
!1782 = !DILocation(line: 160, column: 130, scope: !1763, inlinedAt: !1779)
!1783 = !DILocation(line: 162, column: 7, scope: !1784, inlinedAt: !1779)
!1784 = distinct !DILexicalBlock(scope: !1763, file: !1764, line: 162, column: 7)
!1785 = !DILocalVariable(name: "s2", arg: 2, scope: !1786, file: !1764, line: 146, type: !35)
!1786 = distinct !DISubprogram(name: "strcaseeq1", scope: !1764, file: !1764, line: 146, type: !1787, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!60, !35, !35, !21, !21, !21, !21, !21, !21, !21, !21}
!1789 = !{!1790, !1785, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798}
!1790 = !DILocalVariable(name: "s1", arg: 1, scope: !1786, file: !1764, line: 146, type: !35)
!1791 = !DILocalVariable(name: "s21", arg: 3, scope: !1786, file: !1764, line: 146, type: !21)
!1792 = !DILocalVariable(name: "s22", arg: 4, scope: !1786, file: !1764, line: 146, type: !21)
!1793 = !DILocalVariable(name: "s23", arg: 5, scope: !1786, file: !1764, line: 146, type: !21)
!1794 = !DILocalVariable(name: "s24", arg: 6, scope: !1786, file: !1764, line: 146, type: !21)
!1795 = !DILocalVariable(name: "s25", arg: 7, scope: !1786, file: !1764, line: 146, type: !21)
!1796 = !DILocalVariable(name: "s26", arg: 8, scope: !1786, file: !1764, line: 146, type: !21)
!1797 = !DILocalVariable(name: "s27", arg: 9, scope: !1786, file: !1764, line: 146, type: !21)
!1798 = !DILocalVariable(name: "s28", arg: 10, scope: !1786, file: !1764, line: 146, type: !21)
!1799 = !DILocation(line: 146, column: 41, scope: !1786, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 167, column: 16, scope: !1801, inlinedAt: !1779)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !1764, line: 164, column: 11)
!1802 = distinct !DILexicalBlock(scope: !1784, file: !1764, line: 163, column: 5)
!1803 = !DILocation(line: 146, column: 110, scope: !1786, inlinedAt: !1800)
!1804 = !DILocation(line: 146, column: 120, scope: !1786, inlinedAt: !1800)
!1805 = !DILocation(line: 148, column: 7, scope: !1806, inlinedAt: !1800)
!1806 = distinct !DILexicalBlock(scope: !1786, file: !1764, line: 148, column: 7)
!1807 = !DILocalVariable(name: "s2", arg: 2, scope: !1808, file: !1764, line: 132, type: !35)
!1808 = distinct !DISubprogram(name: "strcaseeq2", scope: !1764, file: !1764, line: 132, type: !1809, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!60, !35, !35, !21, !21, !21, !21, !21, !21, !21}
!1811 = !{!1812, !1807, !1813, !1814, !1815, !1816, !1817, !1818, !1819}
!1812 = !DILocalVariable(name: "s1", arg: 1, scope: !1808, file: !1764, line: 132, type: !35)
!1813 = !DILocalVariable(name: "s22", arg: 3, scope: !1808, file: !1764, line: 132, type: !21)
!1814 = !DILocalVariable(name: "s23", arg: 4, scope: !1808, file: !1764, line: 132, type: !21)
!1815 = !DILocalVariable(name: "s24", arg: 5, scope: !1808, file: !1764, line: 132, type: !21)
!1816 = !DILocalVariable(name: "s25", arg: 6, scope: !1808, file: !1764, line: 132, type: !21)
!1817 = !DILocalVariable(name: "s26", arg: 7, scope: !1808, file: !1764, line: 132, type: !21)
!1818 = !DILocalVariable(name: "s27", arg: 8, scope: !1808, file: !1764, line: 132, type: !21)
!1819 = !DILocalVariable(name: "s28", arg: 9, scope: !1808, file: !1764, line: 132, type: !21)
!1820 = !DILocation(line: 132, column: 41, scope: !1808, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 153, column: 16, scope: !1822, inlinedAt: !1800)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !1764, line: 150, column: 11)
!1823 = distinct !DILexicalBlock(scope: !1806, file: !1764, line: 149, column: 5)
!1824 = !DILocation(line: 132, column: 100, scope: !1808, inlinedAt: !1821)
!1825 = !DILocation(line: 132, column: 110, scope: !1808, inlinedAt: !1821)
!1826 = !DILocation(line: 134, column: 7, scope: !1827, inlinedAt: !1821)
!1827 = distinct !DILexicalBlock(scope: !1808, file: !1764, line: 134, column: 7)
!1828 = !DILocalVariable(name: "s2", arg: 2, scope: !1829, file: !1764, line: 118, type: !35)
!1829 = distinct !DISubprogram(name: "strcaseeq3", scope: !1764, file: !1764, line: 118, type: !1830, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!60, !35, !35, !21, !21, !21, !21, !21, !21}
!1832 = !{!1833, !1828, !1834, !1835, !1836, !1837, !1838, !1839}
!1833 = !DILocalVariable(name: "s1", arg: 1, scope: !1829, file: !1764, line: 118, type: !35)
!1834 = !DILocalVariable(name: "s23", arg: 3, scope: !1829, file: !1764, line: 118, type: !21)
!1835 = !DILocalVariable(name: "s24", arg: 4, scope: !1829, file: !1764, line: 118, type: !21)
!1836 = !DILocalVariable(name: "s25", arg: 5, scope: !1829, file: !1764, line: 118, type: !21)
!1837 = !DILocalVariable(name: "s26", arg: 6, scope: !1829, file: !1764, line: 118, type: !21)
!1838 = !DILocalVariable(name: "s27", arg: 7, scope: !1829, file: !1764, line: 118, type: !21)
!1839 = !DILocalVariable(name: "s28", arg: 8, scope: !1829, file: !1764, line: 118, type: !21)
!1840 = !DILocation(line: 118, column: 41, scope: !1829, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 139, column: 16, scope: !1842, inlinedAt: !1821)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !1764, line: 136, column: 11)
!1843 = distinct !DILexicalBlock(scope: !1827, file: !1764, line: 135, column: 5)
!1844 = !DILocation(line: 118, column: 90, scope: !1829, inlinedAt: !1841)
!1845 = !DILocation(line: 118, column: 100, scope: !1829, inlinedAt: !1841)
!1846 = !DILocation(line: 120, column: 7, scope: !1847, inlinedAt: !1841)
!1847 = distinct !DILexicalBlock(scope: !1829, file: !1764, line: 120, column: 7)
!1848 = !DILocation(line: 120, column: 7, scope: !1829, inlinedAt: !1841)
!1849 = !DILocalVariable(name: "s2", arg: 2, scope: !1850, file: !1764, line: 104, type: !35)
!1850 = distinct !DISubprogram(name: "strcaseeq4", scope: !1764, file: !1764, line: 104, type: !1851, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!60, !35, !35, !21, !21, !21, !21, !21}
!1853 = !{!1854, !1849, !1855, !1856, !1857, !1858, !1859}
!1854 = !DILocalVariable(name: "s1", arg: 1, scope: !1850, file: !1764, line: 104, type: !35)
!1855 = !DILocalVariable(name: "s24", arg: 3, scope: !1850, file: !1764, line: 104, type: !21)
!1856 = !DILocalVariable(name: "s25", arg: 4, scope: !1850, file: !1764, line: 104, type: !21)
!1857 = !DILocalVariable(name: "s26", arg: 5, scope: !1850, file: !1764, line: 104, type: !21)
!1858 = !DILocalVariable(name: "s27", arg: 6, scope: !1850, file: !1764, line: 104, type: !21)
!1859 = !DILocalVariable(name: "s28", arg: 7, scope: !1850, file: !1764, line: 104, type: !21)
!1860 = !DILocation(line: 104, column: 41, scope: !1850, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 125, column: 16, scope: !1862, inlinedAt: !1841)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !1764, line: 122, column: 11)
!1863 = distinct !DILexicalBlock(scope: !1847, file: !1764, line: 121, column: 5)
!1864 = !DILocation(line: 104, column: 80, scope: !1850, inlinedAt: !1861)
!1865 = !DILocation(line: 104, column: 90, scope: !1850, inlinedAt: !1861)
!1866 = !DILocation(line: 106, column: 7, scope: !1867, inlinedAt: !1861)
!1867 = distinct !DILexicalBlock(scope: !1850, file: !1764, line: 106, column: 7)
!1868 = !DILocation(line: 106, column: 7, scope: !1850, inlinedAt: !1861)
!1869 = !DILocalVariable(name: "s2", arg: 2, scope: !1870, file: !1764, line: 90, type: !35)
!1870 = distinct !DISubprogram(name: "strcaseeq5", scope: !1764, file: !1764, line: 90, type: !1871, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!60, !35, !35, !21, !21, !21, !21}
!1873 = !{!1874, !1869, !1875, !1876, !1877, !1878}
!1874 = !DILocalVariable(name: "s1", arg: 1, scope: !1870, file: !1764, line: 90, type: !35)
!1875 = !DILocalVariable(name: "s25", arg: 3, scope: !1870, file: !1764, line: 90, type: !21)
!1876 = !DILocalVariable(name: "s26", arg: 4, scope: !1870, file: !1764, line: 90, type: !21)
!1877 = !DILocalVariable(name: "s27", arg: 5, scope: !1870, file: !1764, line: 90, type: !21)
!1878 = !DILocalVariable(name: "s28", arg: 6, scope: !1870, file: !1764, line: 90, type: !21)
!1879 = !DILocation(line: 90, column: 41, scope: !1870, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 111, column: 16, scope: !1881, inlinedAt: !1861)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !1764, line: 108, column: 11)
!1882 = distinct !DILexicalBlock(scope: !1867, file: !1764, line: 107, column: 5)
!1883 = !DILocation(line: 90, column: 70, scope: !1870, inlinedAt: !1880)
!1884 = !DILocation(line: 90, column: 80, scope: !1870, inlinedAt: !1880)
!1885 = !DILocation(line: 92, column: 7, scope: !1886, inlinedAt: !1880)
!1886 = distinct !DILexicalBlock(scope: !1870, file: !1764, line: 92, column: 7)
!1887 = !DILocation(line: 92, column: 7, scope: !1870, inlinedAt: !1880)
!1888 = !DILocation(line: 227, column: 12, scope: !1780)
!1889 = !DILocation(line: 227, column: 21, scope: !1780)
!1890 = !DILocation(line: 227, column: 5, scope: !1780)
!1891 = !DILocation(line: 146, column: 41, scope: !1786, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 167, column: 16, scope: !1801, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 228, column: 7, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1745, file: !125, line: 228, column: 7)
!1895 = !DILocation(line: 146, column: 110, scope: !1786, inlinedAt: !1892)
!1896 = !DILocation(line: 146, column: 120, scope: !1786, inlinedAt: !1892)
!1897 = !DILocation(line: 148, column: 7, scope: !1806, inlinedAt: !1892)
!1898 = !DILocation(line: 132, column: 41, scope: !1808, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 153, column: 16, scope: !1822, inlinedAt: !1892)
!1900 = !DILocation(line: 132, column: 100, scope: !1808, inlinedAt: !1899)
!1901 = !DILocation(line: 132, column: 110, scope: !1808, inlinedAt: !1899)
!1902 = !DILocation(line: 134, column: 7, scope: !1827, inlinedAt: !1899)
!1903 = !DILocation(line: 134, column: 7, scope: !1808, inlinedAt: !1899)
!1904 = !DILocation(line: 118, column: 41, scope: !1829, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 139, column: 16, scope: !1842, inlinedAt: !1899)
!1906 = !DILocation(line: 118, column: 90, scope: !1829, inlinedAt: !1905)
!1907 = !DILocation(line: 118, column: 100, scope: !1829, inlinedAt: !1905)
!1908 = !DILocation(line: 120, column: 7, scope: !1847, inlinedAt: !1905)
!1909 = !DILocation(line: 120, column: 7, scope: !1829, inlinedAt: !1905)
!1910 = !DILocation(line: 104, column: 41, scope: !1850, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 125, column: 16, scope: !1862, inlinedAt: !1905)
!1912 = !DILocation(line: 104, column: 80, scope: !1850, inlinedAt: !1911)
!1913 = !DILocation(line: 104, column: 90, scope: !1850, inlinedAt: !1911)
!1914 = !DILocation(line: 106, column: 7, scope: !1867, inlinedAt: !1911)
!1915 = !DILocation(line: 106, column: 7, scope: !1850, inlinedAt: !1911)
!1916 = !DILocation(line: 90, column: 41, scope: !1870, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 111, column: 16, scope: !1881, inlinedAt: !1911)
!1918 = !DILocation(line: 90, column: 70, scope: !1870, inlinedAt: !1917)
!1919 = !DILocation(line: 90, column: 80, scope: !1870, inlinedAt: !1917)
!1920 = !DILocation(line: 92, column: 7, scope: !1886, inlinedAt: !1917)
!1921 = !DILocation(line: 92, column: 7, scope: !1870, inlinedAt: !1917)
!1922 = !DILocalVariable(name: "s2", arg: 2, scope: !1923, file: !1764, line: 76, type: !35)
!1923 = distinct !DISubprogram(name: "strcaseeq6", scope: !1764, file: !1764, line: 76, type: !1924, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!60, !35, !35, !21, !21, !21}
!1926 = !{!1927, !1922, !1928, !1929, !1930}
!1927 = !DILocalVariable(name: "s1", arg: 1, scope: !1923, file: !1764, line: 76, type: !35)
!1928 = !DILocalVariable(name: "s26", arg: 3, scope: !1923, file: !1764, line: 76, type: !21)
!1929 = !DILocalVariable(name: "s27", arg: 4, scope: !1923, file: !1764, line: 76, type: !21)
!1930 = !DILocalVariable(name: "s28", arg: 5, scope: !1923, file: !1764, line: 76, type: !21)
!1931 = !DILocation(line: 76, column: 41, scope: !1923, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 97, column: 16, scope: !1933, inlinedAt: !1917)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !1764, line: 94, column: 11)
!1934 = distinct !DILexicalBlock(scope: !1886, file: !1764, line: 93, column: 5)
!1935 = !DILocation(line: 76, column: 60, scope: !1923, inlinedAt: !1932)
!1936 = !DILocation(line: 76, column: 70, scope: !1923, inlinedAt: !1932)
!1937 = !DILocation(line: 78, column: 7, scope: !1938, inlinedAt: !1932)
!1938 = distinct !DILexicalBlock(scope: !1923, file: !1764, line: 78, column: 7)
!1939 = !DILocation(line: 78, column: 7, scope: !1923, inlinedAt: !1932)
!1940 = !DILocalVariable(name: "s2", arg: 2, scope: !1941, file: !1764, line: 62, type: !35)
!1941 = distinct !DISubprogram(name: "strcaseeq7", scope: !1764, file: !1764, line: 62, type: !1942, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1944)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!60, !35, !35, !21, !21}
!1944 = !{!1945, !1940, !1946, !1947}
!1945 = !DILocalVariable(name: "s1", arg: 1, scope: !1941, file: !1764, line: 62, type: !35)
!1946 = !DILocalVariable(name: "s27", arg: 3, scope: !1941, file: !1764, line: 62, type: !21)
!1947 = !DILocalVariable(name: "s28", arg: 4, scope: !1941, file: !1764, line: 62, type: !21)
!1948 = !DILocation(line: 62, column: 41, scope: !1941, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 83, column: 16, scope: !1950, inlinedAt: !1932)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !1764, line: 80, column: 11)
!1951 = distinct !DILexicalBlock(scope: !1938, file: !1764, line: 79, column: 5)
!1952 = !DILocation(line: 62, column: 50, scope: !1941, inlinedAt: !1949)
!1953 = !DILocation(line: 62, column: 60, scope: !1941, inlinedAt: !1949)
!1954 = !DILocation(line: 64, column: 7, scope: !1955, inlinedAt: !1949)
!1955 = distinct !DILexicalBlock(scope: !1941, file: !1764, line: 64, column: 7)
!1956 = !DILocation(line: 228, column: 7, scope: !1745)
!1957 = !DILocation(line: 229, column: 12, scope: !1894)
!1958 = !DILocation(line: 229, column: 21, scope: !1894)
!1959 = !DILocation(line: 229, column: 5, scope: !1894)
!1960 = !DILocation(line: 231, column: 13, scope: !1745)
!1961 = !DILocation(line: 231, column: 11, scope: !1745)
!1962 = !DILocation(line: 231, column: 3, scope: !1745)
!1963 = !DILocation(line: 232, column: 1, scope: !1745)
!1964 = distinct !DISubprogram(name: "quotearg_alloc", scope: !125, file: !125, line: 791, type: !1965, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1967)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!20, !35, !119, !1090}
!1967 = !{!1968, !1969, !1970}
!1968 = !DILocalVariable(name: "arg", arg: 1, scope: !1964, file: !125, line: 791, type: !35)
!1969 = !DILocalVariable(name: "argsize", arg: 2, scope: !1964, file: !125, line: 791, type: !119)
!1970 = !DILocalVariable(name: "o", arg: 3, scope: !1964, file: !125, line: 792, type: !1090)
!1971 = !DILocation(line: 791, column: 29, scope: !1964)
!1972 = !DILocation(line: 791, column: 41, scope: !1964)
!1973 = !DILocation(line: 792, column: 47, scope: !1964)
!1974 = !DILocalVariable(name: "arg", arg: 1, scope: !1975, file: !125, line: 804, type: !35)
!1975 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !125, file: !125, line: 804, type: !1976, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!20, !35, !119, !544, !1090}
!1978 = !{!1974, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986}
!1979 = !DILocalVariable(name: "argsize", arg: 2, scope: !1975, file: !125, line: 804, type: !119)
!1980 = !DILocalVariable(name: "size", arg: 3, scope: !1975, file: !125, line: 804, type: !544)
!1981 = !DILocalVariable(name: "o", arg: 4, scope: !1975, file: !125, line: 805, type: !1090)
!1982 = !DILocalVariable(name: "p", scope: !1975, file: !125, line: 807, type: !1090)
!1983 = !DILocalVariable(name: "e", scope: !1975, file: !125, line: 808, type: !60)
!1984 = !DILocalVariable(name: "flags", scope: !1975, file: !125, line: 810, type: !60)
!1985 = !DILocalVariable(name: "bufsize", scope: !1975, file: !125, line: 811, type: !119)
!1986 = !DILocalVariable(name: "buf", scope: !1975, file: !125, line: 815, type: !20)
!1987 = !DILocation(line: 804, column: 33, scope: !1975, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 794, column: 10, scope: !1964)
!1989 = !DILocation(line: 804, column: 45, scope: !1975, inlinedAt: !1988)
!1990 = !DILocation(line: 804, column: 62, scope: !1975, inlinedAt: !1988)
!1991 = !DILocation(line: 805, column: 51, scope: !1975, inlinedAt: !1988)
!1992 = !DILocation(line: 807, column: 37, scope: !1975, inlinedAt: !1988)
!1993 = !DILocation(line: 807, column: 33, scope: !1975, inlinedAt: !1988)
!1994 = !DILocation(line: 808, column: 11, scope: !1975, inlinedAt: !1988)
!1995 = !DILocation(line: 808, column: 7, scope: !1975, inlinedAt: !1988)
!1996 = !DILocation(line: 810, column: 18, scope: !1975, inlinedAt: !1988)
!1997 = !DILocation(line: 810, column: 24, scope: !1975, inlinedAt: !1988)
!1998 = !DILocation(line: 810, column: 7, scope: !1975, inlinedAt: !1988)
!1999 = !DILocation(line: 811, column: 69, scope: !1975, inlinedAt: !1988)
!2000 = !DILocation(line: 812, column: 53, scope: !1975, inlinedAt: !1988)
!2001 = !DILocation(line: 813, column: 49, scope: !1975, inlinedAt: !1988)
!2002 = !DILocation(line: 814, column: 49, scope: !1975, inlinedAt: !1988)
!2003 = !DILocation(line: 811, column: 20, scope: !1975, inlinedAt: !1988)
!2004 = !DILocation(line: 814, column: 62, scope: !1975, inlinedAt: !1988)
!2005 = !DILocation(line: 811, column: 10, scope: !1975, inlinedAt: !1988)
!2006 = !DILocalVariable(name: "n", arg: 1, scope: !2007, file: !540, line: 220, type: !119)
!2007 = distinct !DISubprogram(name: "xcharalloc", scope: !540, file: !540, line: 220, type: !2008, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!20, !119}
!2010 = !{!2006}
!2011 = !DILocation(line: 220, column: 20, scope: !2007, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 815, column: 15, scope: !1975, inlinedAt: !1988)
!2013 = !DILocation(line: 222, column: 10, scope: !2007, inlinedAt: !2012)
!2014 = !DILocation(line: 815, column: 9, scope: !1975, inlinedAt: !1988)
!2015 = !DILocation(line: 816, column: 60, scope: !1975, inlinedAt: !1988)
!2016 = !DILocation(line: 818, column: 32, scope: !1975, inlinedAt: !1988)
!2017 = !DILocation(line: 818, column: 47, scope: !1975, inlinedAt: !1988)
!2018 = !DILocation(line: 816, column: 3, scope: !1975, inlinedAt: !1988)
!2019 = !DILocation(line: 819, column: 9, scope: !1975, inlinedAt: !1988)
!2020 = !DILocation(line: 794, column: 3, scope: !1964)
!2021 = !DILocation(line: 804, column: 33, scope: !1975)
!2022 = !DILocation(line: 804, column: 45, scope: !1975)
!2023 = !DILocation(line: 804, column: 62, scope: !1975)
!2024 = !DILocation(line: 805, column: 51, scope: !1975)
!2025 = !DILocation(line: 807, column: 37, scope: !1975)
!2026 = !DILocation(line: 807, column: 33, scope: !1975)
!2027 = !DILocation(line: 808, column: 11, scope: !1975)
!2028 = !DILocation(line: 808, column: 7, scope: !1975)
!2029 = !DILocation(line: 810, column: 18, scope: !1975)
!2030 = !DILocation(line: 810, column: 27, scope: !1975)
!2031 = !DILocation(line: 810, column: 24, scope: !1975)
!2032 = !DILocation(line: 810, column: 7, scope: !1975)
!2033 = !DILocation(line: 811, column: 69, scope: !1975)
!2034 = !DILocation(line: 812, column: 53, scope: !1975)
!2035 = !DILocation(line: 813, column: 49, scope: !1975)
!2036 = !DILocation(line: 814, column: 49, scope: !1975)
!2037 = !DILocation(line: 811, column: 20, scope: !1975)
!2038 = !DILocation(line: 814, column: 62, scope: !1975)
!2039 = !DILocation(line: 811, column: 10, scope: !1975)
!2040 = !DILocation(line: 220, column: 20, scope: !2007, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 815, column: 15, scope: !1975)
!2042 = !DILocation(line: 222, column: 10, scope: !2007, inlinedAt: !2041)
!2043 = !DILocation(line: 815, column: 9, scope: !1975)
!2044 = !DILocation(line: 816, column: 60, scope: !1975)
!2045 = !DILocation(line: 818, column: 32, scope: !1975)
!2046 = !DILocation(line: 818, column: 47, scope: !1975)
!2047 = !DILocation(line: 816, column: 3, scope: !1975)
!2048 = !DILocation(line: 819, column: 9, scope: !1975)
!2049 = !DILocation(line: 820, column: 7, scope: !1975)
!2050 = !DILocation(line: 821, column: 11, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1975, file: !125, line: 820, column: 7)
!2052 = !{!958, !958, i64 0}
!2053 = !DILocation(line: 821, column: 5, scope: !2051)
!2054 = !DILocation(line: 822, column: 3, scope: !1975)
!2055 = distinct !DISubprogram(name: "quotearg_free", scope: !125, file: !125, line: 840, type: !978, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2056)
!2056 = !{!2057, !2058}
!2057 = !DILocalVariable(name: "sv", scope: !2055, file: !125, line: 842, type: !152)
!2058 = !DILocalVariable(name: "i", scope: !2055, file: !125, line: 843, type: !60)
!2059 = !DILocation(line: 842, column: 24, scope: !2055)
!2060 = !DILocation(line: 842, column: 19, scope: !2055)
!2061 = !DILocation(line: 843, column: 7, scope: !2055)
!2062 = !DILocation(line: 844, column: 19, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !125, line: 844, column: 3)
!2064 = distinct !DILexicalBlock(scope: !2055, file: !125, line: 844, column: 3)
!2065 = !DILocation(line: 844, column: 17, scope: !2063)
!2066 = !DILocation(line: 844, column: 3, scope: !2064)
!2067 = !DILocation(line: 845, column: 17, scope: !2063)
!2068 = !{!2069, !592, i64 8}
!2069 = !{!"slotvec", !958, i64 0, !592, i64 8}
!2070 = !DILocation(line: 845, column: 5, scope: !2063)
!2071 = !DILocation(line: 844, column: 28, scope: !2063)
!2072 = distinct !{!2072, !2066, !2073}
!2073 = !DILocation(line: 845, column: 20, scope: !2064)
!2074 = !DILocation(line: 846, column: 13, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2055, file: !125, line: 846, column: 7)
!2076 = !DILocation(line: 846, column: 17, scope: !2075)
!2077 = !DILocation(line: 846, column: 7, scope: !2055)
!2078 = !DILocation(line: 848, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !125, line: 847, column: 5)
!2080 = !DILocation(line: 849, column: 21, scope: !2079)
!2081 = !{!2069, !958, i64 0}
!2082 = !DILocation(line: 850, column: 20, scope: !2079)
!2083 = !DILocation(line: 851, column: 5, scope: !2079)
!2084 = !DILocation(line: 852, column: 10, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2055, file: !125, line: 852, column: 7)
!2086 = !DILocation(line: 852, column: 7, scope: !2055)
!2087 = !DILocation(line: 854, column: 13, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !125, line: 853, column: 5)
!2089 = !DILocation(line: 854, column: 7, scope: !2088)
!2090 = !DILocation(line: 855, column: 15, scope: !2088)
!2091 = !DILocation(line: 856, column: 5, scope: !2088)
!2092 = !DILocation(line: 857, column: 10, scope: !2055)
!2093 = !DILocation(line: 858, column: 1, scope: !2055)
!2094 = distinct !DISubprogram(name: "quotearg_n", scope: !125, file: !125, line: 922, type: !2095, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!20, !60, !35}
!2097 = !{!2098, !2099}
!2098 = !DILocalVariable(name: "n", arg: 1, scope: !2094, file: !125, line: 922, type: !60)
!2099 = !DILocalVariable(name: "arg", arg: 2, scope: !2094, file: !125, line: 922, type: !35)
!2100 = !DILocation(line: 922, column: 17, scope: !2094)
!2101 = !DILocation(line: 922, column: 32, scope: !2094)
!2102 = !DILocation(line: 924, column: 10, scope: !2094)
!2103 = !DILocation(line: 924, column: 3, scope: !2094)
!2104 = distinct !DISubprogram(name: "quotearg_n_options", scope: !125, file: !125, line: 869, type: !2105, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!20, !60, !35, !119, !1090}
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2117, !2119, !2120, !2121}
!2108 = !DILocalVariable(name: "n", arg: 1, scope: !2104, file: !125, line: 869, type: !60)
!2109 = !DILocalVariable(name: "arg", arg: 2, scope: !2104, file: !125, line: 869, type: !35)
!2110 = !DILocalVariable(name: "argsize", arg: 3, scope: !2104, file: !125, line: 869, type: !119)
!2111 = !DILocalVariable(name: "options", arg: 4, scope: !2104, file: !125, line: 870, type: !1090)
!2112 = !DILocalVariable(name: "e", scope: !2104, file: !125, line: 872, type: !60)
!2113 = !DILocalVariable(name: "sv", scope: !2104, file: !125, line: 874, type: !152)
!2114 = !DILocalVariable(name: "preallocated", scope: !2115, file: !125, line: 881, type: !26)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !125, line: 880, column: 5)
!2116 = distinct !DILexicalBlock(scope: !2104, file: !125, line: 879, column: 7)
!2117 = !DILocalVariable(name: "size", scope: !2118, file: !125, line: 894, type: !119)
!2118 = distinct !DILexicalBlock(scope: !2104, file: !125, line: 893, column: 3)
!2119 = !DILocalVariable(name: "val", scope: !2118, file: !125, line: 895, type: !20)
!2120 = !DILocalVariable(name: "flags", scope: !2118, file: !125, line: 897, type: !60)
!2121 = !DILocalVariable(name: "qsize", scope: !2118, file: !125, line: 898, type: !119)
!2122 = !DILocation(line: 869, column: 25, scope: !2104)
!2123 = !DILocation(line: 869, column: 40, scope: !2104)
!2124 = !DILocation(line: 869, column: 52, scope: !2104)
!2125 = !DILocation(line: 870, column: 51, scope: !2104)
!2126 = !DILocation(line: 872, column: 11, scope: !2104)
!2127 = !DILocation(line: 872, column: 7, scope: !2104)
!2128 = !DILocation(line: 874, column: 24, scope: !2104)
!2129 = !DILocation(line: 874, column: 19, scope: !2104)
!2130 = !DILocation(line: 876, column: 9, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2104, file: !125, line: 876, column: 7)
!2132 = !DILocation(line: 876, column: 7, scope: !2104)
!2133 = !DILocation(line: 877, column: 5, scope: !2131)
!2134 = !DILocation(line: 879, column: 7, scope: !2116)
!2135 = !DILocation(line: 879, column: 14, scope: !2116)
!2136 = !DILocation(line: 879, column: 7, scope: !2104)
!2137 = !DILocation(line: 881, column: 31, scope: !2115)
!2138 = !DILocation(line: 883, column: 67, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2115, file: !125, line: 883, column: 11)
!2140 = !DILocation(line: 883, column: 11, scope: !2115)
!2141 = !DILocation(line: 884, column: 9, scope: !2139)
!2142 = !DILocation(line: 886, column: 32, scope: !2115)
!2143 = !DILocation(line: 886, column: 61, scope: !2115)
!2144 = !DILocation(line: 886, column: 58, scope: !2115)
!2145 = !DILocation(line: 886, column: 66, scope: !2115)
!2146 = !DILocation(line: 886, column: 22, scope: !2115)
!2147 = !DILocation(line: 886, column: 15, scope: !2115)
!2148 = !DILocation(line: 887, column: 11, scope: !2115)
!2149 = !DILocation(line: 888, column: 15, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2115, file: !125, line: 887, column: 11)
!2151 = !{i64 0, i64 8, !2052, i64 8, i64 8, !591}
!2152 = !DILocation(line: 888, column: 9, scope: !2150)
!2153 = !DILocation(line: 889, column: 20, scope: !2115)
!2154 = !DILocation(line: 889, column: 18, scope: !2115)
!2155 = !DILocation(line: 889, column: 7, scope: !2115)
!2156 = !DILocation(line: 889, column: 38, scope: !2115)
!2157 = !DILocation(line: 889, column: 31, scope: !2115)
!2158 = !DILocation(line: 889, column: 48, scope: !2115)
!2159 = !DILocation(line: 890, column: 14, scope: !2115)
!2160 = !DILocation(line: 891, column: 5, scope: !2115)
!2161 = !DILocation(line: 894, column: 19, scope: !2118)
!2162 = !DILocation(line: 894, column: 25, scope: !2118)
!2163 = !DILocation(line: 894, column: 12, scope: !2118)
!2164 = !DILocation(line: 895, column: 23, scope: !2118)
!2165 = !DILocation(line: 895, column: 11, scope: !2118)
!2166 = !DILocation(line: 897, column: 26, scope: !2118)
!2167 = !DILocation(line: 897, column: 32, scope: !2118)
!2168 = !DILocation(line: 897, column: 9, scope: !2118)
!2169 = !DILocation(line: 899, column: 55, scope: !2118)
!2170 = !DILocation(line: 900, column: 46, scope: !2118)
!2171 = !DILocation(line: 901, column: 55, scope: !2118)
!2172 = !DILocation(line: 902, column: 55, scope: !2118)
!2173 = !DILocation(line: 898, column: 20, scope: !2118)
!2174 = !DILocation(line: 898, column: 12, scope: !2118)
!2175 = !DILocation(line: 904, column: 14, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2118, file: !125, line: 904, column: 9)
!2177 = !DILocation(line: 904, column: 9, scope: !2118)
!2178 = !DILocation(line: 906, column: 35, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !125, line: 905, column: 7)
!2180 = !DILocation(line: 906, column: 20, scope: !2179)
!2181 = !DILocation(line: 907, column: 17, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2179, file: !125, line: 907, column: 13)
!2183 = !DILocation(line: 907, column: 13, scope: !2179)
!2184 = !DILocation(line: 908, column: 11, scope: !2182)
!2185 = !DILocation(line: 220, column: 20, scope: !2007, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 909, column: 27, scope: !2179)
!2187 = !DILocation(line: 222, column: 10, scope: !2007, inlinedAt: !2186)
!2188 = !DILocation(line: 909, column: 19, scope: !2179)
!2189 = !DILocation(line: 910, column: 69, scope: !2179)
!2190 = !DILocation(line: 912, column: 44, scope: !2179)
!2191 = !DILocation(line: 913, column: 44, scope: !2179)
!2192 = !DILocation(line: 910, column: 9, scope: !2179)
!2193 = !DILocation(line: 914, column: 7, scope: !2179)
!2194 = !DILocation(line: 916, column: 11, scope: !2118)
!2195 = !DILocation(line: 917, column: 5, scope: !2118)
!2196 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !125, file: !125, line: 928, type: !2197, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!20, !60, !35, !119}
!2199 = !{!2200, !2201, !2202}
!2200 = !DILocalVariable(name: "n", arg: 1, scope: !2196, file: !125, line: 928, type: !60)
!2201 = !DILocalVariable(name: "arg", arg: 2, scope: !2196, file: !125, line: 928, type: !35)
!2202 = !DILocalVariable(name: "argsize", arg: 3, scope: !2196, file: !125, line: 928, type: !119)
!2203 = !DILocation(line: 928, column: 21, scope: !2196)
!2204 = !DILocation(line: 928, column: 36, scope: !2196)
!2205 = !DILocation(line: 928, column: 48, scope: !2196)
!2206 = !DILocation(line: 930, column: 10, scope: !2196)
!2207 = !DILocation(line: 930, column: 3, scope: !2196)
!2208 = distinct !DISubprogram(name: "quotearg", scope: !125, file: !125, line: 934, type: !2209, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!20, !35}
!2211 = !{!2212}
!2212 = !DILocalVariable(name: "arg", arg: 1, scope: !2208, file: !125, line: 934, type: !35)
!2213 = !DILocation(line: 934, column: 23, scope: !2208)
!2214 = !DILocation(line: 922, column: 17, scope: !2094, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 936, column: 10, scope: !2208)
!2216 = !DILocation(line: 922, column: 32, scope: !2094, inlinedAt: !2215)
!2217 = !DILocation(line: 924, column: 10, scope: !2094, inlinedAt: !2215)
!2218 = !DILocation(line: 936, column: 3, scope: !2208)
!2219 = distinct !DISubprogram(name: "quotearg_mem", scope: !125, file: !125, line: 940, type: !2220, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!20, !35, !119}
!2222 = !{!2223, !2224}
!2223 = !DILocalVariable(name: "arg", arg: 1, scope: !2219, file: !125, line: 940, type: !35)
!2224 = !DILocalVariable(name: "argsize", arg: 2, scope: !2219, file: !125, line: 940, type: !119)
!2225 = !DILocation(line: 940, column: 27, scope: !2219)
!2226 = !DILocation(line: 940, column: 39, scope: !2219)
!2227 = !DILocation(line: 928, column: 21, scope: !2196, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 942, column: 10, scope: !2219)
!2229 = !DILocation(line: 928, column: 36, scope: !2196, inlinedAt: !2228)
!2230 = !DILocation(line: 928, column: 48, scope: !2196, inlinedAt: !2228)
!2231 = !DILocation(line: 930, column: 10, scope: !2196, inlinedAt: !2228)
!2232 = !DILocation(line: 942, column: 3, scope: !2219)
!2233 = distinct !DISubprogram(name: "quotearg_n_style", scope: !125, file: !125, line: 946, type: !2234, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!20, !60, !5, !35}
!2236 = !{!2237, !2238, !2239, !2240}
!2237 = !DILocalVariable(name: "n", arg: 1, scope: !2233, file: !125, line: 946, type: !60)
!2238 = !DILocalVariable(name: "s", arg: 2, scope: !2233, file: !125, line: 946, type: !5)
!2239 = !DILocalVariable(name: "arg", arg: 3, scope: !2233, file: !125, line: 946, type: !35)
!2240 = !DILocalVariable(name: "o", scope: !2233, file: !125, line: 948, type: !1091)
!2241 = !DILocalVariable(name: "o", scope: !2242, file: !125, line: 187, type: !132)
!2242 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !125, file: !125, line: 185, type: !2243, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!132, !5}
!2245 = !{!2246, !2241}
!2246 = !DILocalVariable(name: "style", arg: 1, scope: !2242, file: !125, line: 185, type: !5)
!2247 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2248 = !DILocation(line: 187, column: 26, scope: !2242, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 948, column: 36, scope: !2233)
!2250 = !DILocation(line: 946, column: 23, scope: !2233)
!2251 = !DILocation(line: 946, column: 45, scope: !2233)
!2252 = !DILocation(line: 946, column: 60, scope: !2233)
!2253 = !DILocation(line: 948, column: 3, scope: !2233)
!2254 = !DILocation(line: 948, column: 32, scope: !2233)
!2255 = !DILocation(line: 185, column: 48, scope: !2242, inlinedAt: !2249)
!2256 = !DILocation(line: 187, column: 3, scope: !2242, inlinedAt: !2249)
!2257 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2258 = !DILocation(line: 188, column: 13, scope: !2259, inlinedAt: !2249)
!2259 = distinct !DILexicalBlock(scope: !2242, file: !125, line: 188, column: 7)
!2260 = !DILocation(line: 188, column: 7, scope: !2242, inlinedAt: !2249)
!2261 = !DILocation(line: 189, column: 5, scope: !2259, inlinedAt: !2249)
!2262 = !{!2263}
!2263 = distinct !{!2263, !2264, !"quoting_options_from_style: argument 0"}
!2264 = distinct !{!2264, !"quoting_options_from_style"}
!2265 = !DILocation(line: 191, column: 10, scope: !2242, inlinedAt: !2249)
!2266 = !DILocation(line: 192, column: 1, scope: !2242, inlinedAt: !2249)
!2267 = !DILocation(line: 949, column: 10, scope: !2233)
!2268 = !DILocation(line: 950, column: 1, scope: !2233)
!2269 = !DILocation(line: 949, column: 3, scope: !2233)
!2270 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !125, file: !125, line: 953, type: !2271, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!20, !60, !5, !35, !119}
!2273 = !{!2274, !2275, !2276, !2277, !2278}
!2274 = !DILocalVariable(name: "n", arg: 1, scope: !2270, file: !125, line: 953, type: !60)
!2275 = !DILocalVariable(name: "s", arg: 2, scope: !2270, file: !125, line: 953, type: !5)
!2276 = !DILocalVariable(name: "arg", arg: 3, scope: !2270, file: !125, line: 954, type: !35)
!2277 = !DILocalVariable(name: "argsize", arg: 4, scope: !2270, file: !125, line: 954, type: !119)
!2278 = !DILocalVariable(name: "o", scope: !2270, file: !125, line: 956, type: !1091)
!2279 = !DILocation(line: 187, column: 26, scope: !2242, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 956, column: 36, scope: !2270)
!2281 = !DILocation(line: 953, column: 27, scope: !2270)
!2282 = !DILocation(line: 953, column: 49, scope: !2270)
!2283 = !DILocation(line: 954, column: 35, scope: !2270)
!2284 = !DILocation(line: 954, column: 47, scope: !2270)
!2285 = !DILocation(line: 956, column: 3, scope: !2270)
!2286 = !DILocation(line: 956, column: 32, scope: !2270)
!2287 = !DILocation(line: 185, column: 48, scope: !2242, inlinedAt: !2280)
!2288 = !DILocation(line: 187, column: 3, scope: !2242, inlinedAt: !2280)
!2289 = !DILocation(line: 188, column: 13, scope: !2259, inlinedAt: !2280)
!2290 = !DILocation(line: 188, column: 7, scope: !2242, inlinedAt: !2280)
!2291 = !DILocation(line: 189, column: 5, scope: !2259, inlinedAt: !2280)
!2292 = !{!2293}
!2293 = distinct !{!2293, !2294, !"quoting_options_from_style: argument 0"}
!2294 = distinct !{!2294, !"quoting_options_from_style"}
!2295 = !DILocation(line: 191, column: 10, scope: !2242, inlinedAt: !2280)
!2296 = !DILocation(line: 192, column: 1, scope: !2242, inlinedAt: !2280)
!2297 = !DILocation(line: 957, column: 10, scope: !2270)
!2298 = !DILocation(line: 958, column: 1, scope: !2270)
!2299 = !DILocation(line: 957, column: 3, scope: !2270)
!2300 = distinct !DISubprogram(name: "quotearg_style", scope: !125, file: !125, line: 961, type: !2301, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!20, !5, !35}
!2303 = !{!2304, !2305}
!2304 = !DILocalVariable(name: "s", arg: 1, scope: !2300, file: !125, line: 961, type: !5)
!2305 = !DILocalVariable(name: "arg", arg: 2, scope: !2300, file: !125, line: 961, type: !35)
!2306 = !DILocation(line: 187, column: 26, scope: !2242, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 948, column: 36, scope: !2233, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 963, column: 10, scope: !2300)
!2309 = !DILocation(line: 961, column: 36, scope: !2300)
!2310 = !DILocation(line: 961, column: 51, scope: !2300)
!2311 = !DILocation(line: 946, column: 23, scope: !2233, inlinedAt: !2308)
!2312 = !DILocation(line: 946, column: 45, scope: !2233, inlinedAt: !2308)
!2313 = !DILocation(line: 946, column: 60, scope: !2233, inlinedAt: !2308)
!2314 = !DILocation(line: 948, column: 3, scope: !2233, inlinedAt: !2308)
!2315 = !DILocation(line: 948, column: 32, scope: !2233, inlinedAt: !2308)
!2316 = !DILocation(line: 185, column: 48, scope: !2242, inlinedAt: !2307)
!2317 = !DILocation(line: 187, column: 3, scope: !2242, inlinedAt: !2307)
!2318 = !DILocation(line: 188, column: 13, scope: !2259, inlinedAt: !2307)
!2319 = !DILocation(line: 188, column: 7, scope: !2242, inlinedAt: !2307)
!2320 = !DILocation(line: 189, column: 5, scope: !2259, inlinedAt: !2307)
!2321 = !{!2322}
!2322 = distinct !{!2322, !2323, !"quoting_options_from_style: argument 0"}
!2323 = distinct !{!2323, !"quoting_options_from_style"}
!2324 = !DILocation(line: 191, column: 10, scope: !2242, inlinedAt: !2307)
!2325 = !DILocation(line: 192, column: 1, scope: !2242, inlinedAt: !2307)
!2326 = !DILocation(line: 949, column: 10, scope: !2233, inlinedAt: !2308)
!2327 = !DILocation(line: 950, column: 1, scope: !2233, inlinedAt: !2308)
!2328 = !DILocation(line: 963, column: 3, scope: !2300)
!2329 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !125, file: !125, line: 967, type: !2330, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!20, !5, !35, !119}
!2332 = !{!2333, !2334, !2335}
!2333 = !DILocalVariable(name: "s", arg: 1, scope: !2329, file: !125, line: 967, type: !5)
!2334 = !DILocalVariable(name: "arg", arg: 2, scope: !2329, file: !125, line: 967, type: !35)
!2335 = !DILocalVariable(name: "argsize", arg: 3, scope: !2329, file: !125, line: 967, type: !119)
!2336 = !DILocation(line: 187, column: 26, scope: !2242, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 956, column: 36, scope: !2270, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 969, column: 10, scope: !2329)
!2339 = !DILocation(line: 967, column: 40, scope: !2329)
!2340 = !DILocation(line: 967, column: 55, scope: !2329)
!2341 = !DILocation(line: 967, column: 67, scope: !2329)
!2342 = !DILocation(line: 953, column: 27, scope: !2270, inlinedAt: !2338)
!2343 = !DILocation(line: 953, column: 49, scope: !2270, inlinedAt: !2338)
!2344 = !DILocation(line: 954, column: 35, scope: !2270, inlinedAt: !2338)
!2345 = !DILocation(line: 954, column: 47, scope: !2270, inlinedAt: !2338)
!2346 = !DILocation(line: 956, column: 3, scope: !2270, inlinedAt: !2338)
!2347 = !DILocation(line: 956, column: 32, scope: !2270, inlinedAt: !2338)
!2348 = !DILocation(line: 185, column: 48, scope: !2242, inlinedAt: !2337)
!2349 = !DILocation(line: 187, column: 3, scope: !2242, inlinedAt: !2337)
!2350 = !DILocation(line: 188, column: 13, scope: !2259, inlinedAt: !2337)
!2351 = !DILocation(line: 188, column: 7, scope: !2242, inlinedAt: !2337)
!2352 = !DILocation(line: 189, column: 5, scope: !2259, inlinedAt: !2337)
!2353 = !{!2354}
!2354 = distinct !{!2354, !2355, !"quoting_options_from_style: argument 0"}
!2355 = distinct !{!2355, !"quoting_options_from_style"}
!2356 = !DILocation(line: 191, column: 10, scope: !2242, inlinedAt: !2337)
!2357 = !DILocation(line: 192, column: 1, scope: !2242, inlinedAt: !2337)
!2358 = !DILocation(line: 957, column: 10, scope: !2270, inlinedAt: !2338)
!2359 = !DILocation(line: 958, column: 1, scope: !2270, inlinedAt: !2338)
!2360 = !DILocation(line: 969, column: 3, scope: !2329)
!2361 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !125, file: !125, line: 973, type: !2362, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!20, !35, !119, !21}
!2364 = !{!2365, !2366, !2367, !2368}
!2365 = !DILocalVariable(name: "arg", arg: 1, scope: !2361, file: !125, line: 973, type: !35)
!2366 = !DILocalVariable(name: "argsize", arg: 2, scope: !2361, file: !125, line: 973, type: !119)
!2367 = !DILocalVariable(name: "ch", arg: 3, scope: !2361, file: !125, line: 973, type: !21)
!2368 = !DILocalVariable(name: "options", scope: !2361, file: !125, line: 975, type: !132)
!2369 = !DILocation(line: 973, column: 32, scope: !2361)
!2370 = !DILocation(line: 973, column: 44, scope: !2361)
!2371 = !DILocation(line: 973, column: 58, scope: !2361)
!2372 = !DILocation(line: 975, column: 3, scope: !2361)
!2373 = !DILocation(line: 976, column: 13, scope: !2361)
!2374 = !{i64 0, i64 4, !717, i64 4, i64 4, !656, i64 8, i64 32, !717, i64 40, i64 8, !591, i64 48, i64 8, !591}
!2375 = !DILocation(line: 975, column: 26, scope: !2361)
!2376 = !DILocation(line: 144, column: 43, scope: !1112, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 977, column: 3, scope: !2361)
!2378 = !DILocation(line: 144, column: 51, scope: !1112, inlinedAt: !2377)
!2379 = !DILocation(line: 144, column: 58, scope: !1112, inlinedAt: !2377)
!2380 = !DILocation(line: 146, column: 17, scope: !1112, inlinedAt: !2377)
!2381 = !DILocation(line: 148, column: 62, scope: !1112, inlinedAt: !2377)
!2382 = !DILocation(line: 148, column: 57, scope: !1112, inlinedAt: !2377)
!2383 = !DILocation(line: 147, column: 17, scope: !1112, inlinedAt: !2377)
!2384 = !DILocation(line: 149, column: 18, scope: !1112, inlinedAt: !2377)
!2385 = !DILocation(line: 149, column: 15, scope: !1112, inlinedAt: !2377)
!2386 = !DILocation(line: 149, column: 7, scope: !1112, inlinedAt: !2377)
!2387 = !DILocation(line: 150, column: 12, scope: !1112, inlinedAt: !2377)
!2388 = !DILocation(line: 150, column: 15, scope: !1112, inlinedAt: !2377)
!2389 = !DILocation(line: 150, column: 25, scope: !1112, inlinedAt: !2377)
!2390 = !DILocation(line: 150, column: 7, scope: !1112, inlinedAt: !2377)
!2391 = !DILocation(line: 151, column: 18, scope: !1112, inlinedAt: !2377)
!2392 = !DILocation(line: 151, column: 23, scope: !1112, inlinedAt: !2377)
!2393 = !DILocation(line: 151, column: 6, scope: !1112, inlinedAt: !2377)
!2394 = !DILocation(line: 978, column: 10, scope: !2361)
!2395 = !DILocation(line: 979, column: 1, scope: !2361)
!2396 = !DILocation(line: 978, column: 3, scope: !2361)
!2397 = distinct !DISubprogram(name: "quotearg_char", scope: !125, file: !125, line: 982, type: !2398, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!20, !35, !21}
!2400 = !{!2401, !2402}
!2401 = !DILocalVariable(name: "arg", arg: 1, scope: !2397, file: !125, line: 982, type: !35)
!2402 = !DILocalVariable(name: "ch", arg: 2, scope: !2397, file: !125, line: 982, type: !21)
!2403 = !DILocation(line: 982, column: 28, scope: !2397)
!2404 = !DILocation(line: 982, column: 38, scope: !2397)
!2405 = !DILocation(line: 973, column: 32, scope: !2361, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 984, column: 10, scope: !2397)
!2407 = !DILocation(line: 973, column: 44, scope: !2361, inlinedAt: !2406)
!2408 = !DILocation(line: 973, column: 58, scope: !2361, inlinedAt: !2406)
!2409 = !DILocation(line: 975, column: 3, scope: !2361, inlinedAt: !2406)
!2410 = !DILocation(line: 976, column: 13, scope: !2361, inlinedAt: !2406)
!2411 = !DILocation(line: 975, column: 26, scope: !2361, inlinedAt: !2406)
!2412 = !DILocation(line: 144, column: 43, scope: !1112, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 977, column: 3, scope: !2361, inlinedAt: !2406)
!2414 = !DILocation(line: 144, column: 51, scope: !1112, inlinedAt: !2413)
!2415 = !DILocation(line: 144, column: 58, scope: !1112, inlinedAt: !2413)
!2416 = !DILocation(line: 146, column: 17, scope: !1112, inlinedAt: !2413)
!2417 = !DILocation(line: 148, column: 62, scope: !1112, inlinedAt: !2413)
!2418 = !DILocation(line: 148, column: 57, scope: !1112, inlinedAt: !2413)
!2419 = !DILocation(line: 147, column: 17, scope: !1112, inlinedAt: !2413)
!2420 = !DILocation(line: 149, column: 18, scope: !1112, inlinedAt: !2413)
!2421 = !DILocation(line: 149, column: 15, scope: !1112, inlinedAt: !2413)
!2422 = !DILocation(line: 149, column: 7, scope: !1112, inlinedAt: !2413)
!2423 = !DILocation(line: 150, column: 12, scope: !1112, inlinedAt: !2413)
!2424 = !DILocation(line: 150, column: 15, scope: !1112, inlinedAt: !2413)
!2425 = !DILocation(line: 150, column: 25, scope: !1112, inlinedAt: !2413)
!2426 = !DILocation(line: 150, column: 7, scope: !1112, inlinedAt: !2413)
!2427 = !DILocation(line: 151, column: 18, scope: !1112, inlinedAt: !2413)
!2428 = !DILocation(line: 151, column: 23, scope: !1112, inlinedAt: !2413)
!2429 = !DILocation(line: 151, column: 6, scope: !1112, inlinedAt: !2413)
!2430 = !DILocation(line: 978, column: 10, scope: !2361, inlinedAt: !2406)
!2431 = !DILocation(line: 979, column: 1, scope: !2361, inlinedAt: !2406)
!2432 = !DILocation(line: 984, column: 3, scope: !2397)
!2433 = distinct !DISubprogram(name: "quotearg_colon", scope: !125, file: !125, line: 988, type: !2209, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2434)
!2434 = !{!2435}
!2435 = !DILocalVariable(name: "arg", arg: 1, scope: !2433, file: !125, line: 988, type: !35)
!2436 = !DILocation(line: 988, column: 29, scope: !2433)
!2437 = !DILocation(line: 982, column: 28, scope: !2397, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 990, column: 10, scope: !2433)
!2439 = !DILocation(line: 982, column: 38, scope: !2397, inlinedAt: !2438)
!2440 = !DILocation(line: 973, column: 32, scope: !2361, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 984, column: 10, scope: !2397, inlinedAt: !2438)
!2442 = !DILocation(line: 973, column: 44, scope: !2361, inlinedAt: !2441)
!2443 = !DILocation(line: 973, column: 58, scope: !2361, inlinedAt: !2441)
!2444 = !DILocation(line: 975, column: 3, scope: !2361, inlinedAt: !2441)
!2445 = !DILocation(line: 976, column: 13, scope: !2361, inlinedAt: !2441)
!2446 = !DILocation(line: 975, column: 26, scope: !2361, inlinedAt: !2441)
!2447 = !DILocation(line: 144, column: 43, scope: !1112, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 977, column: 3, scope: !2361, inlinedAt: !2441)
!2449 = !DILocation(line: 144, column: 51, scope: !1112, inlinedAt: !2448)
!2450 = !DILocation(line: 144, column: 58, scope: !1112, inlinedAt: !2448)
!2451 = !DILocation(line: 146, column: 17, scope: !1112, inlinedAt: !2448)
!2452 = !DILocation(line: 148, column: 57, scope: !1112, inlinedAt: !2448)
!2453 = !DILocation(line: 147, column: 17, scope: !1112, inlinedAt: !2448)
!2454 = !DILocation(line: 149, column: 7, scope: !1112, inlinedAt: !2448)
!2455 = !DILocation(line: 150, column: 12, scope: !1112, inlinedAt: !2448)
!2456 = !DILocation(line: 151, column: 6, scope: !1112, inlinedAt: !2448)
!2457 = !DILocation(line: 978, column: 10, scope: !2361, inlinedAt: !2441)
!2458 = !DILocation(line: 979, column: 1, scope: !2361, inlinedAt: !2441)
!2459 = !DILocation(line: 990, column: 3, scope: !2433)
!2460 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !125, file: !125, line: 994, type: !2220, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2461)
!2461 = !{!2462, !2463}
!2462 = !DILocalVariable(name: "arg", arg: 1, scope: !2460, file: !125, line: 994, type: !35)
!2463 = !DILocalVariable(name: "argsize", arg: 2, scope: !2460, file: !125, line: 994, type: !119)
!2464 = !DILocation(line: 994, column: 33, scope: !2460)
!2465 = !DILocation(line: 994, column: 45, scope: !2460)
!2466 = !DILocation(line: 973, column: 32, scope: !2361, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 996, column: 10, scope: !2460)
!2468 = !DILocation(line: 973, column: 44, scope: !2361, inlinedAt: !2467)
!2469 = !DILocation(line: 973, column: 58, scope: !2361, inlinedAt: !2467)
!2470 = !DILocation(line: 975, column: 3, scope: !2361, inlinedAt: !2467)
!2471 = !DILocation(line: 976, column: 13, scope: !2361, inlinedAt: !2467)
!2472 = !DILocation(line: 975, column: 26, scope: !2361, inlinedAt: !2467)
!2473 = !DILocation(line: 144, column: 43, scope: !1112, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 977, column: 3, scope: !2361, inlinedAt: !2467)
!2475 = !DILocation(line: 144, column: 51, scope: !1112, inlinedAt: !2474)
!2476 = !DILocation(line: 144, column: 58, scope: !1112, inlinedAt: !2474)
!2477 = !DILocation(line: 146, column: 17, scope: !1112, inlinedAt: !2474)
!2478 = !DILocation(line: 148, column: 57, scope: !1112, inlinedAt: !2474)
!2479 = !DILocation(line: 147, column: 17, scope: !1112, inlinedAt: !2474)
!2480 = !DILocation(line: 149, column: 7, scope: !1112, inlinedAt: !2474)
!2481 = !DILocation(line: 150, column: 12, scope: !1112, inlinedAt: !2474)
!2482 = !DILocation(line: 151, column: 6, scope: !1112, inlinedAt: !2474)
!2483 = !DILocation(line: 978, column: 10, scope: !2361, inlinedAt: !2467)
!2484 = !DILocation(line: 979, column: 1, scope: !2361, inlinedAt: !2467)
!2485 = !DILocation(line: 996, column: 3, scope: !2460)
!2486 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !125, file: !125, line: 1000, type: !2234, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2487)
!2487 = !{!2488, !2489, !2490, !2491}
!2488 = !DILocalVariable(name: "n", arg: 1, scope: !2486, file: !125, line: 1000, type: !60)
!2489 = !DILocalVariable(name: "s", arg: 2, scope: !2486, file: !125, line: 1000, type: !5)
!2490 = !DILocalVariable(name: "arg", arg: 3, scope: !2486, file: !125, line: 1000, type: !35)
!2491 = !DILocalVariable(name: "options", scope: !2486, file: !125, line: 1002, type: !132)
!2492 = !DILocation(line: 187, column: 26, scope: !2242, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 1003, column: 13, scope: !2486)
!2494 = !DILocation(line: 1000, column: 29, scope: !2486)
!2495 = !DILocation(line: 1000, column: 51, scope: !2486)
!2496 = !DILocation(line: 1000, column: 66, scope: !2486)
!2497 = !DILocation(line: 1002, column: 3, scope: !2486)
!2498 = !DILocation(line: 185, column: 48, scope: !2242, inlinedAt: !2493)
!2499 = !DILocation(line: 187, column: 3, scope: !2242, inlinedAt: !2493)
!2500 = !DILocation(line: 188, column: 13, scope: !2259, inlinedAt: !2493)
!2501 = !DILocation(line: 188, column: 7, scope: !2242, inlinedAt: !2493)
!2502 = !DILocation(line: 189, column: 5, scope: !2259, inlinedAt: !2493)
!2503 = !{!2504}
!2504 = distinct !{!2504, !2505, !"quoting_options_from_style: argument 0"}
!2505 = distinct !{!2505, !"quoting_options_from_style"}
!2506 = !DILocation(line: 191, column: 10, scope: !2242, inlinedAt: !2493)
!2507 = !DILocation(line: 192, column: 1, scope: !2242, inlinedAt: !2493)
!2508 = !DILocation(line: 1003, column: 13, scope: !2486)
!2509 = !DILocation(line: 1002, column: 26, scope: !2486)
!2510 = !DILocation(line: 144, column: 43, scope: !1112, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 1004, column: 3, scope: !2486)
!2512 = !DILocation(line: 144, column: 51, scope: !1112, inlinedAt: !2511)
!2513 = !DILocation(line: 144, column: 58, scope: !1112, inlinedAt: !2511)
!2514 = !DILocation(line: 146, column: 17, scope: !1112, inlinedAt: !2511)
!2515 = !DILocation(line: 148, column: 57, scope: !1112, inlinedAt: !2511)
!2516 = !DILocation(line: 147, column: 17, scope: !1112, inlinedAt: !2511)
!2517 = !DILocation(line: 149, column: 7, scope: !1112, inlinedAt: !2511)
!2518 = !DILocation(line: 150, column: 12, scope: !1112, inlinedAt: !2511)
!2519 = !DILocation(line: 151, column: 6, scope: !1112, inlinedAt: !2511)
!2520 = !DILocation(line: 1005, column: 10, scope: !2486)
!2521 = !DILocation(line: 1006, column: 1, scope: !2486)
!2522 = !DILocation(line: 1005, column: 3, scope: !2486)
!2523 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !125, file: !125, line: 1009, type: !2524, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!20, !60, !35, !35, !35}
!2526 = !{!2527, !2528, !2529, !2530}
!2527 = !DILocalVariable(name: "n", arg: 1, scope: !2523, file: !125, line: 1009, type: !60)
!2528 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2523, file: !125, line: 1009, type: !35)
!2529 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2523, file: !125, line: 1010, type: !35)
!2530 = !DILocalVariable(name: "arg", arg: 4, scope: !2523, file: !125, line: 1010, type: !35)
!2531 = !DILocation(line: 1009, column: 24, scope: !2523)
!2532 = !DILocation(line: 1009, column: 39, scope: !2523)
!2533 = !DILocation(line: 1010, column: 32, scope: !2523)
!2534 = !DILocation(line: 1010, column: 57, scope: !2523)
!2535 = !DILocalVariable(name: "n", arg: 1, scope: !2536, file: !125, line: 1017, type: !60)
!2536 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !125, file: !125, line: 1017, type: !2537, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!20, !60, !35, !35, !35, !119}
!2539 = !{!2535, !2540, !2541, !2542, !2543, !2544}
!2540 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2536, file: !125, line: 1017, type: !35)
!2541 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2536, file: !125, line: 1018, type: !35)
!2542 = !DILocalVariable(name: "arg", arg: 4, scope: !2536, file: !125, line: 1019, type: !35)
!2543 = !DILocalVariable(name: "argsize", arg: 5, scope: !2536, file: !125, line: 1019, type: !119)
!2544 = !DILocalVariable(name: "o", scope: !2536, file: !125, line: 1021, type: !132)
!2545 = !DILocation(line: 1017, column: 28, scope: !2536, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 1012, column: 10, scope: !2523)
!2547 = !DILocation(line: 1017, column: 43, scope: !2536, inlinedAt: !2546)
!2548 = !DILocation(line: 1018, column: 36, scope: !2536, inlinedAt: !2546)
!2549 = !DILocation(line: 1019, column: 36, scope: !2536, inlinedAt: !2546)
!2550 = !DILocation(line: 1019, column: 48, scope: !2536, inlinedAt: !2546)
!2551 = !DILocation(line: 1021, column: 3, scope: !2536, inlinedAt: !2546)
!2552 = !DILocation(line: 1021, column: 30, scope: !2536, inlinedAt: !2546)
!2553 = !DILocation(line: 1021, column: 26, scope: !2536, inlinedAt: !2546)
!2554 = !DILocation(line: 171, column: 45, scope: !1161, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 1022, column: 3, scope: !2536, inlinedAt: !2546)
!2556 = !DILocation(line: 172, column: 33, scope: !1161, inlinedAt: !2555)
!2557 = !DILocation(line: 172, column: 57, scope: !1161, inlinedAt: !2555)
!2558 = !DILocation(line: 176, column: 6, scope: !1161, inlinedAt: !2555)
!2559 = !DILocation(line: 176, column: 12, scope: !1161, inlinedAt: !2555)
!2560 = !DILocation(line: 177, column: 8, scope: !1177, inlinedAt: !2555)
!2561 = !DILocation(line: 177, column: 23, scope: !1177, inlinedAt: !2555)
!2562 = !DILocation(line: 177, column: 19, scope: !1177, inlinedAt: !2555)
!2563 = !DILocation(line: 178, column: 5, scope: !1177, inlinedAt: !2555)
!2564 = !DILocation(line: 179, column: 6, scope: !1161, inlinedAt: !2555)
!2565 = !DILocation(line: 179, column: 17, scope: !1161, inlinedAt: !2555)
!2566 = !DILocation(line: 180, column: 6, scope: !1161, inlinedAt: !2555)
!2567 = !DILocation(line: 180, column: 18, scope: !1161, inlinedAt: !2555)
!2568 = !DILocation(line: 1023, column: 10, scope: !2536, inlinedAt: !2546)
!2569 = !DILocation(line: 1024, column: 1, scope: !2536, inlinedAt: !2546)
!2570 = !DILocation(line: 1012, column: 3, scope: !2523)
!2571 = !DILocation(line: 1017, column: 28, scope: !2536)
!2572 = !DILocation(line: 1017, column: 43, scope: !2536)
!2573 = !DILocation(line: 1018, column: 36, scope: !2536)
!2574 = !DILocation(line: 1019, column: 36, scope: !2536)
!2575 = !DILocation(line: 1019, column: 48, scope: !2536)
!2576 = !DILocation(line: 1021, column: 3, scope: !2536)
!2577 = !DILocation(line: 1021, column: 30, scope: !2536)
!2578 = !DILocation(line: 1021, column: 26, scope: !2536)
!2579 = !DILocation(line: 171, column: 45, scope: !1161, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 1022, column: 3, scope: !2536)
!2581 = !DILocation(line: 172, column: 33, scope: !1161, inlinedAt: !2580)
!2582 = !DILocation(line: 172, column: 57, scope: !1161, inlinedAt: !2580)
!2583 = !DILocation(line: 176, column: 6, scope: !1161, inlinedAt: !2580)
!2584 = !DILocation(line: 176, column: 12, scope: !1161, inlinedAt: !2580)
!2585 = !DILocation(line: 177, column: 8, scope: !1177, inlinedAt: !2580)
!2586 = !DILocation(line: 177, column: 23, scope: !1177, inlinedAt: !2580)
!2587 = !DILocation(line: 177, column: 19, scope: !1177, inlinedAt: !2580)
!2588 = !DILocation(line: 178, column: 5, scope: !1177, inlinedAt: !2580)
!2589 = !DILocation(line: 179, column: 6, scope: !1161, inlinedAt: !2580)
!2590 = !DILocation(line: 179, column: 17, scope: !1161, inlinedAt: !2580)
!2591 = !DILocation(line: 180, column: 6, scope: !1161, inlinedAt: !2580)
!2592 = !DILocation(line: 180, column: 18, scope: !1161, inlinedAt: !2580)
!2593 = !DILocation(line: 1023, column: 10, scope: !2536)
!2594 = !DILocation(line: 1024, column: 1, scope: !2536)
!2595 = !DILocation(line: 1023, column: 3, scope: !2536)
!2596 = distinct !DISubprogram(name: "quotearg_custom", scope: !125, file: !125, line: 1027, type: !2597, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!20, !35, !35, !35}
!2599 = !{!2600, !2601, !2602}
!2600 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2596, file: !125, line: 1027, type: !35)
!2601 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2596, file: !125, line: 1027, type: !35)
!2602 = !DILocalVariable(name: "arg", arg: 3, scope: !2596, file: !125, line: 1028, type: !35)
!2603 = !DILocation(line: 1027, column: 30, scope: !2596)
!2604 = !DILocation(line: 1027, column: 54, scope: !2596)
!2605 = !DILocation(line: 1028, column: 30, scope: !2596)
!2606 = !DILocation(line: 1009, column: 24, scope: !2523, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 1030, column: 10, scope: !2596)
!2608 = !DILocation(line: 1009, column: 39, scope: !2523, inlinedAt: !2607)
!2609 = !DILocation(line: 1010, column: 32, scope: !2523, inlinedAt: !2607)
!2610 = !DILocation(line: 1010, column: 57, scope: !2523, inlinedAt: !2607)
!2611 = !DILocation(line: 1017, column: 28, scope: !2536, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 1012, column: 10, scope: !2523, inlinedAt: !2607)
!2613 = !DILocation(line: 1017, column: 43, scope: !2536, inlinedAt: !2612)
!2614 = !DILocation(line: 1018, column: 36, scope: !2536, inlinedAt: !2612)
!2615 = !DILocation(line: 1019, column: 36, scope: !2536, inlinedAt: !2612)
!2616 = !DILocation(line: 1019, column: 48, scope: !2536, inlinedAt: !2612)
!2617 = !DILocation(line: 1021, column: 3, scope: !2536, inlinedAt: !2612)
!2618 = !DILocation(line: 1021, column: 30, scope: !2536, inlinedAt: !2612)
!2619 = !DILocation(line: 1021, column: 26, scope: !2536, inlinedAt: !2612)
!2620 = !DILocation(line: 171, column: 45, scope: !1161, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 1022, column: 3, scope: !2536, inlinedAt: !2612)
!2622 = !DILocation(line: 172, column: 33, scope: !1161, inlinedAt: !2621)
!2623 = !DILocation(line: 172, column: 57, scope: !1161, inlinedAt: !2621)
!2624 = !DILocation(line: 176, column: 6, scope: !1161, inlinedAt: !2621)
!2625 = !DILocation(line: 176, column: 12, scope: !1161, inlinedAt: !2621)
!2626 = !DILocation(line: 177, column: 8, scope: !1177, inlinedAt: !2621)
!2627 = !DILocation(line: 177, column: 23, scope: !1177, inlinedAt: !2621)
!2628 = !DILocation(line: 177, column: 19, scope: !1177, inlinedAt: !2621)
!2629 = !DILocation(line: 178, column: 5, scope: !1177, inlinedAt: !2621)
!2630 = !DILocation(line: 179, column: 6, scope: !1161, inlinedAt: !2621)
!2631 = !DILocation(line: 179, column: 17, scope: !1161, inlinedAt: !2621)
!2632 = !DILocation(line: 180, column: 6, scope: !1161, inlinedAt: !2621)
!2633 = !DILocation(line: 180, column: 18, scope: !1161, inlinedAt: !2621)
!2634 = !DILocation(line: 1023, column: 10, scope: !2536, inlinedAt: !2612)
!2635 = !DILocation(line: 1024, column: 1, scope: !2536, inlinedAt: !2612)
!2636 = !DILocation(line: 1030, column: 3, scope: !2596)
!2637 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !125, file: !125, line: 1034, type: !2638, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!20, !35, !35, !35, !119}
!2640 = !{!2641, !2642, !2643, !2644}
!2641 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2637, file: !125, line: 1034, type: !35)
!2642 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2637, file: !125, line: 1034, type: !35)
!2643 = !DILocalVariable(name: "arg", arg: 3, scope: !2637, file: !125, line: 1035, type: !35)
!2644 = !DILocalVariable(name: "argsize", arg: 4, scope: !2637, file: !125, line: 1035, type: !119)
!2645 = !DILocation(line: 1034, column: 34, scope: !2637)
!2646 = !DILocation(line: 1034, column: 58, scope: !2637)
!2647 = !DILocation(line: 1035, column: 34, scope: !2637)
!2648 = !DILocation(line: 1035, column: 46, scope: !2637)
!2649 = !DILocation(line: 1017, column: 28, scope: !2536, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 1037, column: 10, scope: !2637)
!2651 = !DILocation(line: 1017, column: 43, scope: !2536, inlinedAt: !2650)
!2652 = !DILocation(line: 1018, column: 36, scope: !2536, inlinedAt: !2650)
!2653 = !DILocation(line: 1019, column: 36, scope: !2536, inlinedAt: !2650)
!2654 = !DILocation(line: 1019, column: 48, scope: !2536, inlinedAt: !2650)
!2655 = !DILocation(line: 1021, column: 3, scope: !2536, inlinedAt: !2650)
!2656 = !DILocation(line: 1021, column: 30, scope: !2536, inlinedAt: !2650)
!2657 = !DILocation(line: 1021, column: 26, scope: !2536, inlinedAt: !2650)
!2658 = !DILocation(line: 171, column: 45, scope: !1161, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1022, column: 3, scope: !2536, inlinedAt: !2650)
!2660 = !DILocation(line: 172, column: 33, scope: !1161, inlinedAt: !2659)
!2661 = !DILocation(line: 172, column: 57, scope: !1161, inlinedAt: !2659)
!2662 = !DILocation(line: 176, column: 6, scope: !1161, inlinedAt: !2659)
!2663 = !DILocation(line: 176, column: 12, scope: !1161, inlinedAt: !2659)
!2664 = !DILocation(line: 177, column: 8, scope: !1177, inlinedAt: !2659)
!2665 = !DILocation(line: 177, column: 23, scope: !1177, inlinedAt: !2659)
!2666 = !DILocation(line: 177, column: 19, scope: !1177, inlinedAt: !2659)
!2667 = !DILocation(line: 178, column: 5, scope: !1177, inlinedAt: !2659)
!2668 = !DILocation(line: 179, column: 6, scope: !1161, inlinedAt: !2659)
!2669 = !DILocation(line: 179, column: 17, scope: !1161, inlinedAt: !2659)
!2670 = !DILocation(line: 180, column: 6, scope: !1161, inlinedAt: !2659)
!2671 = !DILocation(line: 180, column: 18, scope: !1161, inlinedAt: !2659)
!2672 = !DILocation(line: 1023, column: 10, scope: !2536, inlinedAt: !2650)
!2673 = !DILocation(line: 1024, column: 1, scope: !2536, inlinedAt: !2650)
!2674 = !DILocation(line: 1037, column: 3, scope: !2637)
!2675 = distinct !DISubprogram(name: "quote_n_mem", scope: !125, file: !125, line: 1052, type: !2676, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!35, !60, !35, !119}
!2678 = !{!2679, !2680, !2681}
!2679 = !DILocalVariable(name: "n", arg: 1, scope: !2675, file: !125, line: 1052, type: !60)
!2680 = !DILocalVariable(name: "arg", arg: 2, scope: !2675, file: !125, line: 1052, type: !35)
!2681 = !DILocalVariable(name: "argsize", arg: 3, scope: !2675, file: !125, line: 1052, type: !119)
!2682 = !DILocation(line: 1052, column: 18, scope: !2675)
!2683 = !DILocation(line: 1052, column: 33, scope: !2675)
!2684 = !DILocation(line: 1052, column: 45, scope: !2675)
!2685 = !DILocation(line: 1054, column: 10, scope: !2675)
!2686 = !DILocation(line: 1054, column: 3, scope: !2675)
!2687 = distinct !DISubprogram(name: "quote_mem", scope: !125, file: !125, line: 1058, type: !2688, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2690)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!35, !35, !119}
!2690 = !{!2691, !2692}
!2691 = !DILocalVariable(name: "arg", arg: 1, scope: !2687, file: !125, line: 1058, type: !35)
!2692 = !DILocalVariable(name: "argsize", arg: 2, scope: !2687, file: !125, line: 1058, type: !119)
!2693 = !DILocation(line: 1058, column: 24, scope: !2687)
!2694 = !DILocation(line: 1058, column: 36, scope: !2687)
!2695 = !DILocation(line: 1052, column: 18, scope: !2675, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 1060, column: 10, scope: !2687)
!2697 = !DILocation(line: 1052, column: 33, scope: !2675, inlinedAt: !2696)
!2698 = !DILocation(line: 1052, column: 45, scope: !2675, inlinedAt: !2696)
!2699 = !DILocation(line: 1054, column: 10, scope: !2675, inlinedAt: !2696)
!2700 = !DILocation(line: 1060, column: 3, scope: !2687)
!2701 = distinct !DISubprogram(name: "quote_n", scope: !125, file: !125, line: 1064, type: !2702, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2704)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!35, !60, !35}
!2704 = !{!2705, !2706}
!2705 = !DILocalVariable(name: "n", arg: 1, scope: !2701, file: !125, line: 1064, type: !60)
!2706 = !DILocalVariable(name: "arg", arg: 2, scope: !2701, file: !125, line: 1064, type: !35)
!2707 = !DILocation(line: 1064, column: 14, scope: !2701)
!2708 = !DILocation(line: 1064, column: 29, scope: !2701)
!2709 = !DILocation(line: 1052, column: 18, scope: !2675, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 1066, column: 10, scope: !2701)
!2711 = !DILocation(line: 1052, column: 33, scope: !2675, inlinedAt: !2710)
!2712 = !DILocation(line: 1052, column: 45, scope: !2675, inlinedAt: !2710)
!2713 = !DILocation(line: 1054, column: 10, scope: !2675, inlinedAt: !2710)
!2714 = !DILocation(line: 1066, column: 3, scope: !2701)
!2715 = distinct !DISubprogram(name: "quote", scope: !125, file: !125, line: 1070, type: !2716, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!35, !35}
!2718 = !{!2719}
!2719 = !DILocalVariable(name: "arg", arg: 1, scope: !2715, file: !125, line: 1070, type: !35)
!2720 = !DILocation(line: 1070, column: 20, scope: !2715)
!2721 = !DILocation(line: 1064, column: 14, scope: !2701, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 1072, column: 10, scope: !2715)
!2723 = !DILocation(line: 1064, column: 29, scope: !2701, inlinedAt: !2722)
!2724 = !DILocation(line: 1052, column: 18, scope: !2675, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 1066, column: 10, scope: !2701, inlinedAt: !2722)
!2726 = !DILocation(line: 1052, column: 33, scope: !2675, inlinedAt: !2725)
!2727 = !DILocation(line: 1052, column: 45, scope: !2675, inlinedAt: !2725)
!2728 = !DILocation(line: 1054, column: 10, scope: !2675, inlinedAt: !2725)
!2729 = !DILocation(line: 1072, column: 3, scope: !2715)
!2730 = distinct !DISubprogram(name: "version_etc_arn", scope: !532, file: !532, line: 62, type: !2731, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !528, variables: !2774)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{null, !2733, !35, !35, !35, !2773, !119}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !855, line: 7, baseType: !2735)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !857, line: 241, size: 1728, elements: !2736)
!2736 = !{!2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2735, file: !857, line: 242, baseType: !60, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2735, file: !857, line: 247, baseType: !20, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2735, file: !857, line: 248, baseType: !20, size: 64, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2735, file: !857, line: 249, baseType: !20, size: 64, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2735, file: !857, line: 250, baseType: !20, size: 64, offset: 256)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2735, file: !857, line: 251, baseType: !20, size: 64, offset: 320)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2735, file: !857, line: 252, baseType: !20, size: 64, offset: 384)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2735, file: !857, line: 253, baseType: !20, size: 64, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2735, file: !857, line: 254, baseType: !20, size: 64, offset: 512)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2735, file: !857, line: 256, baseType: !20, size: 64, offset: 576)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2735, file: !857, line: 257, baseType: !20, size: 64, offset: 640)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2735, file: !857, line: 258, baseType: !20, size: 64, offset: 704)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2735, file: !857, line: 260, baseType: !2750, size: 64, offset: 768)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !857, line: 156, size: 192, elements: !2752)
!2752 = !{!2753, !2754, !2756}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2751, file: !857, line: 157, baseType: !2750, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2751, file: !857, line: 158, baseType: !2755, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2751, file: !857, line: 162, baseType: !60, size: 32, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2735, file: !857, line: 262, baseType: !2755, size: 64, offset: 832)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2735, file: !857, line: 264, baseType: !60, size: 32, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2735, file: !857, line: 268, baseType: !60, size: 32, offset: 928)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2735, file: !857, line: 270, baseType: !784, size: 64, offset: 960)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2735, file: !857, line: 274, baseType: !118, size: 16, offset: 1024)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2735, file: !857, line: 275, baseType: !885, size: 8, offset: 1040)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2735, file: !857, line: 276, baseType: !887, size: 8, offset: 1048)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2735, file: !857, line: 280, baseType: !891, size: 64, offset: 1088)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2735, file: !857, line: 289, baseType: !894, size: 64, offset: 1152)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2735, file: !857, line: 297, baseType: !22, size: 64, offset: 1216)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2735, file: !857, line: 298, baseType: !22, size: 64, offset: 1280)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2735, file: !857, line: 299, baseType: !22, size: 64, offset: 1344)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2735, file: !857, line: 300, baseType: !22, size: 64, offset: 1408)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2735, file: !857, line: 302, baseType: !119, size: 64, offset: 1472)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2735, file: !857, line: 303, baseType: !60, size: 32, offset: 1536)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2735, file: !857, line: 305, baseType: !902, size: 160, offset: 1568)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2774 = !{!2775, !2776, !2777, !2778, !2779, !2780}
!2775 = !DILocalVariable(name: "stream", arg: 1, scope: !2730, file: !532, line: 62, type: !2733)
!2776 = !DILocalVariable(name: "command_name", arg: 2, scope: !2730, file: !532, line: 63, type: !35)
!2777 = !DILocalVariable(name: "package", arg: 3, scope: !2730, file: !532, line: 63, type: !35)
!2778 = !DILocalVariable(name: "version", arg: 4, scope: !2730, file: !532, line: 64, type: !35)
!2779 = !DILocalVariable(name: "authors", arg: 5, scope: !2730, file: !532, line: 65, type: !2773)
!2780 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2730, file: !532, line: 65, type: !119)
!2781 = !DILocation(line: 62, column: 24, scope: !2730)
!2782 = !DILocation(line: 63, column: 30, scope: !2730)
!2783 = !DILocation(line: 63, column: 56, scope: !2730)
!2784 = !DILocation(line: 64, column: 30, scope: !2730)
!2785 = !DILocation(line: 65, column: 39, scope: !2730)
!2786 = !DILocation(line: 65, column: 55, scope: !2730)
!2787 = !DILocation(line: 67, column: 7, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2730, file: !532, line: 67, column: 7)
!2789 = !DILocation(line: 67, column: 7, scope: !2730)
!2790 = !DILocation(line: 68, column: 5, scope: !2788)
!2791 = !DILocation(line: 70, column: 5, scope: !2788)
!2792 = !DILocation(line: 84, column: 3, scope: !2730)
!2793 = !DILocation(line: 86, column: 3, scope: !2730)
!2794 = !DILocation(line: 95, column: 3, scope: !2730)
!2795 = !DILocation(line: 99, column: 7, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2730, file: !532, line: 96, column: 5)
!2797 = !DILocation(line: 102, column: 7, scope: !2796)
!2798 = !DILocation(line: 103, column: 7, scope: !2796)
!2799 = !DILocation(line: 106, column: 7, scope: !2796)
!2800 = !DILocation(line: 107, column: 7, scope: !2796)
!2801 = !DILocation(line: 110, column: 7, scope: !2796)
!2802 = !DILocation(line: 112, column: 7, scope: !2796)
!2803 = !DILocation(line: 117, column: 7, scope: !2796)
!2804 = !DILocation(line: 119, column: 7, scope: !2796)
!2805 = !DILocation(line: 124, column: 7, scope: !2796)
!2806 = !DILocation(line: 126, column: 7, scope: !2796)
!2807 = !DILocation(line: 131, column: 7, scope: !2796)
!2808 = !DILocation(line: 134, column: 7, scope: !2796)
!2809 = !DILocation(line: 139, column: 7, scope: !2796)
!2810 = !DILocation(line: 142, column: 7, scope: !2796)
!2811 = !DILocation(line: 147, column: 7, scope: !2796)
!2812 = !DILocation(line: 151, column: 7, scope: !2796)
!2813 = !DILocation(line: 156, column: 7, scope: !2796)
!2814 = !DILocation(line: 160, column: 7, scope: !2796)
!2815 = !DILocation(line: 167, column: 7, scope: !2796)
!2816 = !DILocation(line: 171, column: 7, scope: !2796)
!2817 = !DILocation(line: 173, column: 1, scope: !2730)
!2818 = distinct !DISubprogram(name: "version_etc_ar", scope: !532, file: !532, line: 180, type: !2819, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !528, variables: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !2733, !35, !35, !35, !2773}
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827}
!2822 = !DILocalVariable(name: "stream", arg: 1, scope: !2818, file: !532, line: 180, type: !2733)
!2823 = !DILocalVariable(name: "command_name", arg: 2, scope: !2818, file: !532, line: 181, type: !35)
!2824 = !DILocalVariable(name: "package", arg: 3, scope: !2818, file: !532, line: 181, type: !35)
!2825 = !DILocalVariable(name: "version", arg: 4, scope: !2818, file: !532, line: 182, type: !35)
!2826 = !DILocalVariable(name: "authors", arg: 5, scope: !2818, file: !532, line: 182, type: !2773)
!2827 = !DILocalVariable(name: "n_authors", scope: !2818, file: !532, line: 184, type: !119)
!2828 = !DILocation(line: 180, column: 23, scope: !2818)
!2829 = !DILocation(line: 181, column: 29, scope: !2818)
!2830 = !DILocation(line: 181, column: 55, scope: !2818)
!2831 = !DILocation(line: 182, column: 29, scope: !2818)
!2832 = !DILocation(line: 182, column: 59, scope: !2818)
!2833 = !DILocation(line: 184, column: 10, scope: !2818)
!2834 = !DILocation(line: 186, column: 8, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2818, file: !532, line: 186, column: 3)
!2836 = !DILocation(line: 186, column: 23, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2835, file: !532, line: 186, column: 3)
!2838 = !DILocation(line: 186, column: 3, scope: !2835)
!2839 = !DILocation(line: 186, column: 52, scope: !2837)
!2840 = distinct !{!2840, !2838, !2841}
!2841 = !DILocation(line: 187, column: 5, scope: !2835)
!2842 = !DILocation(line: 188, column: 3, scope: !2818)
!2843 = !DILocation(line: 189, column: 1, scope: !2818)
!2844 = distinct !DISubprogram(name: "version_etc_va", scope: !532, file: !532, line: 196, type: !2845, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !528, variables: !2854)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{null, !2733, !35, !35, !35, !2847}
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !529, line: 189, size: 192, elements: !2849)
!2849 = !{!2850, !2851, !2852, !2853}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2848, file: !529, line: 189, baseType: !138, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2848, file: !529, line: 189, baseType: !138, size: 32, offset: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2848, file: !529, line: 189, baseType: !22, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2848, file: !529, line: 189, baseType: !22, size: 64, offset: 128)
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2861}
!2855 = !DILocalVariable(name: "stream", arg: 1, scope: !2844, file: !532, line: 196, type: !2733)
!2856 = !DILocalVariable(name: "command_name", arg: 2, scope: !2844, file: !532, line: 197, type: !35)
!2857 = !DILocalVariable(name: "package", arg: 3, scope: !2844, file: !532, line: 197, type: !35)
!2858 = !DILocalVariable(name: "version", arg: 4, scope: !2844, file: !532, line: 198, type: !35)
!2859 = !DILocalVariable(name: "authors", arg: 5, scope: !2844, file: !532, line: 198, type: !2847)
!2860 = !DILocalVariable(name: "n_authors", scope: !2844, file: !532, line: 200, type: !119)
!2861 = !DILocalVariable(name: "authtab", scope: !2844, file: !532, line: 201, type: !2862)
!2862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !128)
!2863 = !DILocation(line: 196, column: 23, scope: !2844)
!2864 = !DILocation(line: 197, column: 29, scope: !2844)
!2865 = !DILocation(line: 197, column: 55, scope: !2844)
!2866 = !DILocation(line: 198, column: 29, scope: !2844)
!2867 = !DILocation(line: 198, column: 46, scope: !2844)
!2868 = !DILocation(line: 201, column: 3, scope: !2844)
!2869 = !DILocation(line: 201, column: 15, scope: !2844)
!2870 = !DILocation(line: 200, column: 10, scope: !2844)
!2871 = !DILocation(line: 205, column: 35, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !532, line: 203, column: 3)
!2873 = distinct !DILexicalBlock(scope: !2844, file: !532, line: 203, column: 3)
!2874 = !DILocation(line: 205, column: 14, scope: !2872)
!2875 = !DILocation(line: 205, column: 33, scope: !2872)
!2876 = !DILocation(line: 205, column: 67, scope: !2872)
!2877 = !DILocation(line: 203, column: 3, scope: !2873)
!2878 = !DILocation(line: 208, column: 3, scope: !2844)
!2879 = !DILocation(line: 210, column: 1, scope: !2844)
!2880 = distinct !DISubprogram(name: "version_etc", scope: !532, file: !532, line: 227, type: !2881, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !528, variables: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{null, !2733, !35, !35, !35, null}
!2883 = !{!2884, !2885, !2886, !2887, !2888}
!2884 = !DILocalVariable(name: "stream", arg: 1, scope: !2880, file: !532, line: 227, type: !2733)
!2885 = !DILocalVariable(name: "command_name", arg: 2, scope: !2880, file: !532, line: 228, type: !35)
!2886 = !DILocalVariable(name: "package", arg: 3, scope: !2880, file: !532, line: 228, type: !35)
!2887 = !DILocalVariable(name: "version", arg: 4, scope: !2880, file: !532, line: 229, type: !35)
!2888 = !DILocalVariable(name: "authors", scope: !2880, file: !532, line: 231, type: !2889)
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !910, line: 46, baseType: !2890)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !912, line: 48, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !529, line: 231, baseType: !2892)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2848, size: 192, elements: !888)
!2893 = !DILocation(line: 227, column: 20, scope: !2880)
!2894 = !DILocation(line: 228, column: 26, scope: !2880)
!2895 = !DILocation(line: 228, column: 52, scope: !2880)
!2896 = !DILocation(line: 229, column: 26, scope: !2880)
!2897 = !DILocation(line: 231, column: 3, scope: !2880)
!2898 = !DILocation(line: 231, column: 11, scope: !2880)
!2899 = !DILocation(line: 233, column: 3, scope: !2880)
!2900 = !DILocation(line: 234, column: 3, scope: !2880)
!2901 = !DILocation(line: 235, column: 3, scope: !2880)
!2902 = !DILocation(line: 236, column: 1, scope: !2880)
!2903 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !532, file: !532, line: 239, type: !978, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !528, variables: !68)
!2904 = !DILocation(line: 245, column: 3, scope: !2903)
!2905 = !DILocation(line: 251, column: 3, scope: !2903)
!2906 = !DILocation(line: 256, column: 3, scope: !2903)
!2907 = !DILocation(line: 258, column: 1, scope: !2903)
!2908 = distinct !DISubprogram(name: "xnmalloc", scope: !540, file: !540, line: 105, type: !2909, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!22, !119, !119}
!2911 = !{!2912, !2913}
!2912 = !DILocalVariable(name: "n", arg: 1, scope: !2908, file: !540, line: 105, type: !119)
!2913 = !DILocalVariable(name: "s", arg: 2, scope: !2908, file: !540, line: 105, type: !119)
!2914 = !DILocation(line: 105, column: 18, scope: !2908)
!2915 = !DILocation(line: 105, column: 28, scope: !2908)
!2916 = !DILocation(line: 107, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2908, file: !540, line: 107, column: 7)
!2918 = !DILocation(line: 107, column: 7, scope: !2908)
!2919 = !DILocation(line: 108, column: 5, scope: !2917)
!2920 = !DILocation(line: 109, column: 21, scope: !2908)
!2921 = !DILocalVariable(name: "n", arg: 1, scope: !2922, file: !2923, line: 39, type: !119)
!2922 = distinct !DISubprogram(name: "xmalloc", scope: !2923, file: !2923, line: 39, type: !2924, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2926)
!2923 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!22, !119}
!2926 = !{!2921, !2927}
!2927 = !DILocalVariable(name: "p", scope: !2922, file: !2923, line: 41, type: !22)
!2928 = !DILocation(line: 39, column: 17, scope: !2922, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 109, column: 10, scope: !2908)
!2930 = !DILocation(line: 41, column: 13, scope: !2922, inlinedAt: !2929)
!2931 = !DILocation(line: 41, column: 9, scope: !2922, inlinedAt: !2929)
!2932 = !DILocation(line: 42, column: 8, scope: !2933, inlinedAt: !2929)
!2933 = distinct !DILexicalBlock(scope: !2922, file: !2923, line: 42, column: 7)
!2934 = !DILocation(line: 42, column: 15, scope: !2933, inlinedAt: !2929)
!2935 = !DILocation(line: 42, column: 10, scope: !2933, inlinedAt: !2929)
!2936 = !DILocation(line: 43, column: 5, scope: !2933, inlinedAt: !2929)
!2937 = !DILocation(line: 109, column: 3, scope: !2908)
!2938 = !DILocation(line: 39, column: 17, scope: !2922)
!2939 = !DILocation(line: 41, column: 13, scope: !2922)
!2940 = !DILocation(line: 41, column: 9, scope: !2922)
!2941 = !DILocation(line: 42, column: 8, scope: !2933)
!2942 = !DILocation(line: 42, column: 15, scope: !2933)
!2943 = !DILocation(line: 42, column: 10, scope: !2933)
!2944 = !DILocation(line: 43, column: 5, scope: !2933)
!2945 = !DILocation(line: 44, column: 3, scope: !2922)
!2946 = distinct !DISubprogram(name: "xnrealloc", scope: !540, file: !540, line: 118, type: !2947, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!22, !22, !119, !119}
!2949 = !{!2950, !2951, !2952}
!2950 = !DILocalVariable(name: "p", arg: 1, scope: !2946, file: !540, line: 118, type: !22)
!2951 = !DILocalVariable(name: "n", arg: 2, scope: !2946, file: !540, line: 118, type: !119)
!2952 = !DILocalVariable(name: "s", arg: 3, scope: !2946, file: !540, line: 118, type: !119)
!2953 = !DILocation(line: 118, column: 18, scope: !2946)
!2954 = !DILocation(line: 118, column: 28, scope: !2946)
!2955 = !DILocation(line: 118, column: 38, scope: !2946)
!2956 = !DILocation(line: 120, column: 7, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2946, file: !540, line: 120, column: 7)
!2958 = !DILocation(line: 120, column: 7, scope: !2946)
!2959 = !DILocation(line: 121, column: 5, scope: !2957)
!2960 = !DILocation(line: 122, column: 25, scope: !2946)
!2961 = !DILocalVariable(name: "p", arg: 1, scope: !2962, file: !2923, line: 51, type: !22)
!2962 = distinct !DISubprogram(name: "xrealloc", scope: !2923, file: !2923, line: 51, type: !2963, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!22, !22, !119}
!2965 = !{!2961, !2966}
!2966 = !DILocalVariable(name: "n", arg: 2, scope: !2962, file: !2923, line: 51, type: !119)
!2967 = !DILocation(line: 51, column: 17, scope: !2962, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 122, column: 10, scope: !2946)
!2969 = !DILocation(line: 51, column: 27, scope: !2962, inlinedAt: !2968)
!2970 = !DILocation(line: 53, column: 8, scope: !2971, inlinedAt: !2968)
!2971 = distinct !DILexicalBlock(scope: !2962, file: !2923, line: 53, column: 7)
!2972 = !DILocation(line: 53, column: 13, scope: !2971, inlinedAt: !2968)
!2973 = !DILocation(line: 53, column: 10, scope: !2971, inlinedAt: !2968)
!2974 = !DILocation(line: 57, column: 7, scope: !2975, inlinedAt: !2968)
!2975 = distinct !DILexicalBlock(scope: !2971, file: !2923, line: 54, column: 5)
!2976 = !DILocation(line: 58, column: 7, scope: !2975, inlinedAt: !2968)
!2977 = !DILocation(line: 61, column: 7, scope: !2962, inlinedAt: !2968)
!2978 = !DILocation(line: 62, column: 8, scope: !2979, inlinedAt: !2968)
!2979 = distinct !DILexicalBlock(scope: !2962, file: !2923, line: 62, column: 7)
!2980 = !DILocation(line: 62, column: 13, scope: !2979, inlinedAt: !2968)
!2981 = !DILocation(line: 62, column: 10, scope: !2979, inlinedAt: !2968)
!2982 = !DILocation(line: 63, column: 5, scope: !2979, inlinedAt: !2968)
!2983 = !DILocation(line: 122, column: 3, scope: !2946)
!2984 = !DILocation(line: 51, column: 17, scope: !2962)
!2985 = !DILocation(line: 51, column: 27, scope: !2962)
!2986 = !DILocation(line: 53, column: 8, scope: !2971)
!2987 = !DILocation(line: 53, column: 13, scope: !2971)
!2988 = !DILocation(line: 53, column: 10, scope: !2971)
!2989 = !DILocation(line: 57, column: 7, scope: !2975)
!2990 = !DILocation(line: 58, column: 7, scope: !2975)
!2991 = !DILocation(line: 61, column: 7, scope: !2962)
!2992 = !DILocation(line: 62, column: 8, scope: !2979)
!2993 = !DILocation(line: 62, column: 13, scope: !2979)
!2994 = !DILocation(line: 62, column: 10, scope: !2979)
!2995 = !DILocation(line: 63, column: 5, scope: !2979)
!2996 = !DILocation(line: 65, column: 1, scope: !2962)
!2997 = !DILocation(line: 180, column: 19, scope: !541)
!2998 = !DILocation(line: 180, column: 30, scope: !541)
!2999 = !DILocation(line: 180, column: 41, scope: !541)
!3000 = !DILocation(line: 182, column: 14, scope: !541)
!3001 = !DILocation(line: 182, column: 10, scope: !541)
!3002 = !DILocation(line: 184, column: 9, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !541, file: !540, line: 184, column: 7)
!3004 = !DILocation(line: 184, column: 7, scope: !541)
!3005 = !DILocation(line: 186, column: 13, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !540, line: 186, column: 11)
!3007 = distinct !DILexicalBlock(scope: !3003, file: !540, line: 185, column: 5)
!3008 = !DILocation(line: 186, column: 11, scope: !3007)
!3009 = !DILocation(line: 194, column: 30, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3006, file: !540, line: 187, column: 9)
!3011 = !DILocation(line: 195, column: 16, scope: !3010)
!3012 = !DILocation(line: 195, column: 13, scope: !3010)
!3013 = !DILocation(line: 196, column: 9, scope: !3010)
!3014 = !DILocation(line: 204, column: 69, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !540, line: 204, column: 11)
!3016 = distinct !DILexicalBlock(scope: !3003, file: !540, line: 199, column: 5)
!3017 = !DILocation(line: 205, column: 11, scope: !3015)
!3018 = !DILocation(line: 204, column: 11, scope: !3016)
!3019 = !DILocation(line: 206, column: 9, scope: !3015)
!3020 = !DILocation(line: 210, column: 7, scope: !541)
!3021 = !DILocation(line: 211, column: 25, scope: !541)
!3022 = !DILocation(line: 51, column: 17, scope: !2962, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 211, column: 10, scope: !541)
!3024 = !DILocation(line: 51, column: 27, scope: !2962, inlinedAt: !3023)
!3025 = !DILocation(line: 53, column: 10, scope: !2971, inlinedAt: !3023)
!3026 = !DILocation(line: 207, column: 14, scope: !3016)
!3027 = !DILocation(line: 207, column: 18, scope: !3016)
!3028 = !DILocation(line: 207, column: 9, scope: !3016)
!3029 = !DILocation(line: 53, column: 8, scope: !2971, inlinedAt: !3023)
!3030 = !DILocation(line: 57, column: 7, scope: !2975, inlinedAt: !3023)
!3031 = !DILocation(line: 58, column: 7, scope: !2975, inlinedAt: !3023)
!3032 = !DILocation(line: 61, column: 7, scope: !2962, inlinedAt: !3023)
!3033 = !DILocation(line: 62, column: 8, scope: !2979, inlinedAt: !3023)
!3034 = !DILocation(line: 62, column: 13, scope: !2979, inlinedAt: !3023)
!3035 = !DILocation(line: 62, column: 10, scope: !2979, inlinedAt: !3023)
!3036 = !DILocation(line: 63, column: 5, scope: !2979, inlinedAt: !3023)
!3037 = !DILocation(line: 211, column: 3, scope: !541)
!3038 = distinct !DISubprogram(name: "xcharalloc", scope: !540, file: !540, line: 220, type: !2008, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !3039)
!3039 = !{!3040}
!3040 = !DILocalVariable(name: "n", arg: 1, scope: !3038, file: !540, line: 220, type: !119)
!3041 = !DILocation(line: 220, column: 20, scope: !3038)
!3042 = !DILocation(line: 39, column: 17, scope: !2922, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 222, column: 10, scope: !3038)
!3044 = !DILocation(line: 41, column: 13, scope: !2922, inlinedAt: !3043)
!3045 = !DILocation(line: 41, column: 9, scope: !2922, inlinedAt: !3043)
!3046 = !DILocation(line: 42, column: 8, scope: !2933, inlinedAt: !3043)
!3047 = !DILocation(line: 42, column: 15, scope: !2933, inlinedAt: !3043)
!3048 = !DILocation(line: 42, column: 10, scope: !2933, inlinedAt: !3043)
!3049 = !DILocation(line: 43, column: 5, scope: !2933, inlinedAt: !3043)
!3050 = !DILocation(line: 222, column: 3, scope: !3038)
!3051 = distinct !DISubprogram(name: "x2realloc", scope: !2923, file: !2923, line: 74, type: !3052, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!22, !22, !544}
!3054 = !{!3055, !3056}
!3055 = !DILocalVariable(name: "p", arg: 1, scope: !3051, file: !2923, line: 74, type: !22)
!3056 = !DILocalVariable(name: "pn", arg: 2, scope: !3051, file: !2923, line: 74, type: !544)
!3057 = !DILocation(line: 74, column: 18, scope: !3051)
!3058 = !DILocation(line: 74, column: 29, scope: !3051)
!3059 = !DILocation(line: 180, column: 19, scope: !541, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 76, column: 10, scope: !3051)
!3061 = !DILocation(line: 180, column: 30, scope: !541, inlinedAt: !3060)
!3062 = !DILocation(line: 180, column: 41, scope: !541, inlinedAt: !3060)
!3063 = !DILocation(line: 182, column: 14, scope: !541, inlinedAt: !3060)
!3064 = !DILocation(line: 182, column: 10, scope: !541, inlinedAt: !3060)
!3065 = !DILocation(line: 184, column: 9, scope: !3003, inlinedAt: !3060)
!3066 = !DILocation(line: 184, column: 7, scope: !541, inlinedAt: !3060)
!3067 = !DILocation(line: 186, column: 13, scope: !3006, inlinedAt: !3060)
!3068 = !DILocation(line: 186, column: 11, scope: !3007, inlinedAt: !3060)
!3069 = !DILocation(line: 210, column: 7, scope: !541, inlinedAt: !3060)
!3070 = !DILocation(line: 51, column: 17, scope: !2962, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 211, column: 10, scope: !541, inlinedAt: !3060)
!3072 = !DILocation(line: 51, column: 27, scope: !2962, inlinedAt: !3071)
!3073 = !DILocation(line: 53, column: 10, scope: !2971, inlinedAt: !3071)
!3074 = !DILocation(line: 205, column: 11, scope: !3015, inlinedAt: !3060)
!3075 = !DILocation(line: 204, column: 11, scope: !3016, inlinedAt: !3060)
!3076 = !DILocation(line: 206, column: 9, scope: !3015, inlinedAt: !3060)
!3077 = !DILocation(line: 207, column: 14, scope: !3016, inlinedAt: !3060)
!3078 = !DILocation(line: 207, column: 18, scope: !3016, inlinedAt: !3060)
!3079 = !DILocation(line: 207, column: 9, scope: !3016, inlinedAt: !3060)
!3080 = !DILocation(line: 53, column: 8, scope: !2971, inlinedAt: !3071)
!3081 = !DILocation(line: 57, column: 7, scope: !2975, inlinedAt: !3071)
!3082 = !DILocation(line: 58, column: 7, scope: !2975, inlinedAt: !3071)
!3083 = !DILocation(line: 61, column: 7, scope: !2962, inlinedAt: !3071)
!3084 = !DILocation(line: 62, column: 8, scope: !2979, inlinedAt: !3071)
!3085 = !DILocation(line: 62, column: 13, scope: !2979, inlinedAt: !3071)
!3086 = !DILocation(line: 62, column: 10, scope: !2979, inlinedAt: !3071)
!3087 = !DILocation(line: 63, column: 5, scope: !2979, inlinedAt: !3071)
!3088 = !DILocation(line: 76, column: 3, scope: !3051)
!3089 = distinct !DISubprogram(name: "xzalloc", scope: !2923, file: !2923, line: 84, type: !2924, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !3090)
!3090 = !{!3091}
!3091 = !DILocalVariable(name: "s", arg: 1, scope: !3089, file: !2923, line: 84, type: !119)
!3092 = !DILocation(line: 84, column: 17, scope: !3089)
!3093 = !DILocation(line: 39, column: 17, scope: !2922, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 86, column: 18, scope: !3089)
!3095 = !DILocation(line: 41, column: 13, scope: !2922, inlinedAt: !3094)
!3096 = !DILocation(line: 41, column: 9, scope: !2922, inlinedAt: !3094)
!3097 = !DILocation(line: 42, column: 8, scope: !2933, inlinedAt: !3094)
!3098 = !DILocation(line: 42, column: 15, scope: !2933, inlinedAt: !3094)
!3099 = !DILocation(line: 42, column: 10, scope: !2933, inlinedAt: !3094)
!3100 = !DILocation(line: 43, column: 5, scope: !2933, inlinedAt: !3094)
!3101 = !DILocation(line: 86, column: 10, scope: !3089)
!3102 = !DILocation(line: 86, column: 3, scope: !3089)
!3103 = distinct !DISubprogram(name: "xcalloc", scope: !2923, file: !2923, line: 93, type: !2909, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !3104)
!3104 = !{!3105, !3106, !3107}
!3105 = !DILocalVariable(name: "n", arg: 1, scope: !3103, file: !2923, line: 93, type: !119)
!3106 = !DILocalVariable(name: "s", arg: 2, scope: !3103, file: !2923, line: 93, type: !119)
!3107 = !DILocalVariable(name: "p", scope: !3103, file: !2923, line: 95, type: !22)
!3108 = !DILocation(line: 93, column: 17, scope: !3103)
!3109 = !DILocation(line: 93, column: 27, scope: !3103)
!3110 = !DILocation(line: 100, column: 7, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3103, file: !2923, line: 100, column: 7)
!3112 = !DILocation(line: 101, column: 7, scope: !3111)
!3113 = !DILocation(line: 101, column: 18, scope: !3111)
!3114 = !DILocation(line: 95, column: 9, scope: !3103)
!3115 = !DILocation(line: 101, column: 16, scope: !3111)
!3116 = !DILocation(line: 100, column: 7, scope: !3103)
!3117 = !DILocation(line: 102, column: 5, scope: !3111)
!3118 = !DILocation(line: 103, column: 3, scope: !3103)
!3119 = distinct !DISubprogram(name: "xmemdup", scope: !2923, file: !2923, line: 111, type: !3120, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !3124)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!22, !3122, !119}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3124 = !{!3125, !3126}
!3125 = !DILocalVariable(name: "p", arg: 1, scope: !3119, file: !2923, line: 111, type: !3122)
!3126 = !DILocalVariable(name: "s", arg: 2, scope: !3119, file: !2923, line: 111, type: !119)
!3127 = !DILocation(line: 111, column: 22, scope: !3119)
!3128 = !DILocation(line: 111, column: 32, scope: !3119)
!3129 = !DILocation(line: 39, column: 17, scope: !2922, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 113, column: 18, scope: !3119)
!3131 = !DILocation(line: 41, column: 13, scope: !2922, inlinedAt: !3130)
!3132 = !DILocation(line: 41, column: 9, scope: !2922, inlinedAt: !3130)
!3133 = !DILocation(line: 42, column: 8, scope: !2933, inlinedAt: !3130)
!3134 = !DILocation(line: 42, column: 15, scope: !2933, inlinedAt: !3130)
!3135 = !DILocation(line: 42, column: 10, scope: !2933, inlinedAt: !3130)
!3136 = !DILocation(line: 43, column: 5, scope: !2933, inlinedAt: !3130)
!3137 = !DILocation(line: 113, column: 10, scope: !3119)
!3138 = !DILocation(line: 113, column: 3, scope: !3119)
!3139 = distinct !DISubprogram(name: "xstrdup", scope: !2923, file: !2923, line: 119, type: !2209, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !3140)
!3140 = !{!3141}
!3141 = !DILocalVariable(name: "string", arg: 1, scope: !3139, file: !2923, line: 119, type: !35)
!3142 = !DILocation(line: 119, column: 22, scope: !3139)
!3143 = !DILocation(line: 121, column: 27, scope: !3139)
!3144 = !DILocation(line: 121, column: 43, scope: !3139)
!3145 = !DILocation(line: 111, column: 22, scope: !3119, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 121, column: 10, scope: !3139)
!3147 = !DILocation(line: 111, column: 32, scope: !3119, inlinedAt: !3146)
!3148 = !DILocation(line: 39, column: 17, scope: !2922, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 113, column: 18, scope: !3119, inlinedAt: !3146)
!3150 = !DILocation(line: 41, column: 13, scope: !2922, inlinedAt: !3149)
!3151 = !DILocation(line: 41, column: 9, scope: !2922, inlinedAt: !3149)
!3152 = !DILocation(line: 42, column: 8, scope: !2933, inlinedAt: !3149)
!3153 = !DILocation(line: 42, column: 15, scope: !2933, inlinedAt: !3149)
!3154 = !DILocation(line: 42, column: 10, scope: !2933, inlinedAt: !3149)
!3155 = !DILocation(line: 43, column: 5, scope: !2933, inlinedAt: !3149)
!3156 = !DILocation(line: 113, column: 10, scope: !3119, inlinedAt: !3146)
!3157 = !DILocation(line: 121, column: 3, scope: !3139)
!3158 = distinct !DISubprogram(name: "xalloc_die", scope: !3159, file: !3159, line: 32, type: !978, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !553, variables: !68)
!3159 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3160 = !DILocation(line: 34, column: 10, scope: !3158)
!3161 = !DILocation(line: 34, column: 33, scope: !3158)
!3162 = !DILocation(line: 34, column: 3, scope: !3158)
!3163 = !DILocation(line: 40, column: 3, scope: !3158)
!3164 = distinct !DISubprogram(name: "rpl_calloc", scope: !3165, file: !3165, line: 42, type: !2909, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3166)
!3165 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3166 = !{!3167, !3168, !3169, !3170}
!3167 = !DILocalVariable(name: "n", arg: 1, scope: !3164, file: !3165, line: 42, type: !119)
!3168 = !DILocalVariable(name: "s", arg: 2, scope: !3164, file: !3165, line: 42, type: !119)
!3169 = !DILocalVariable(name: "result", scope: !3164, file: !3165, line: 44, type: !22)
!3170 = !DILocalVariable(name: "bytes", scope: !3171, file: !3165, line: 56, type: !119)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !3165, line: 53, column: 5)
!3172 = distinct !DILexicalBlock(scope: !3164, file: !3165, line: 47, column: 7)
!3173 = !DILocation(line: 42, column: 20, scope: !3164)
!3174 = !DILocation(line: 42, column: 30, scope: !3164)
!3175 = !DILocation(line: 47, column: 9, scope: !3172)
!3176 = !DILocation(line: 47, column: 19, scope: !3172)
!3177 = !DILocation(line: 47, column: 14, scope: !3172)
!3178 = !DILocation(line: 56, column: 24, scope: !3171)
!3179 = !DILocation(line: 56, column: 14, scope: !3171)
!3180 = !DILocation(line: 57, column: 17, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3171, file: !3165, line: 57, column: 11)
!3182 = !DILocation(line: 57, column: 21, scope: !3181)
!3183 = !DILocation(line: 57, column: 11, scope: !3171)
!3184 = !DILocation(line: 59, column: 11, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3181, file: !3165, line: 58, column: 9)
!3186 = !DILocation(line: 59, column: 17, scope: !3185)
!3187 = !DILocation(line: 65, column: 12, scope: !3164)
!3188 = !DILocation(line: 44, column: 9, scope: !3164)
!3189 = !DILocation(line: 72, column: 3, scope: !3164)
!3190 = !DILocation(line: 73, column: 1, scope: !3164)
!3191 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3192, file: !3192, line: 334, type: !3193, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3207)
!3192 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!119, !3195, !35, !119, !3196}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1260, line: 6, baseType: !3198)
!3198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1262, line: 21, baseType: !3199)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1262, line: 13, size: 64, elements: !3200)
!3200 = !{!3201, !3202}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3199, file: !1262, line: 15, baseType: !60, size: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3199, file: !1262, line: 20, baseType: !3203, size: 32, offset: 32)
!3203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3199, file: !1262, line: 16, size: 32, elements: !3204)
!3204 = !{!3205, !3206}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3203, file: !1262, line: 18, baseType: !138, size: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3203, file: !1262, line: 19, baseType: !1271, size: 32)
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3213, !3214}
!3208 = !DILocalVariable(name: "pwc", arg: 1, scope: !3191, file: !3192, line: 334, type: !3195)
!3209 = !DILocalVariable(name: "s", arg: 2, scope: !3191, file: !3192, line: 334, type: !35)
!3210 = !DILocalVariable(name: "n", arg: 3, scope: !3191, file: !3192, line: 334, type: !119)
!3211 = !DILocalVariable(name: "ps", arg: 4, scope: !3191, file: !3192, line: 334, type: !3196)
!3212 = !DILocalVariable(name: "ret", scope: !3191, file: !3192, line: 336, type: !119)
!3213 = !DILocalVariable(name: "wc", scope: !3191, file: !3192, line: 337, type: !1276)
!3214 = !DILocalVariable(name: "uc", scope: !3215, file: !3192, line: 398, type: !519)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !3192, line: 397, column: 5)
!3216 = distinct !DILexicalBlock(scope: !3191, file: !3192, line: 396, column: 7)
!3217 = !DILocation(line: 334, column: 23, scope: !3191)
!3218 = !DILocation(line: 334, column: 40, scope: !3191)
!3219 = !DILocation(line: 334, column: 50, scope: !3191)
!3220 = !DILocation(line: 334, column: 64, scope: !3191)
!3221 = !DILocation(line: 337, column: 3, scope: !3191)
!3222 = !DILocation(line: 353, column: 9, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3191, file: !3192, line: 353, column: 7)
!3224 = !DILocation(line: 353, column: 7, scope: !3191)
!3225 = !DILocation(line: 388, column: 9, scope: !3191)
!3226 = !DILocation(line: 336, column: 10, scope: !3191)
!3227 = !DILocation(line: 396, column: 19, scope: !3216)
!3228 = !DILocation(line: 396, column: 31, scope: !3216)
!3229 = !DILocation(line: 396, column: 26, scope: !3216)
!3230 = !DILocation(line: 396, column: 41, scope: !3216)
!3231 = !DILocation(line: 396, column: 7, scope: !3191)
!3232 = !DILocation(line: 398, column: 26, scope: !3215)
!3233 = !DILocation(line: 398, column: 21, scope: !3215)
!3234 = !DILocation(line: 399, column: 14, scope: !3215)
!3235 = !DILocation(line: 399, column: 12, scope: !3215)
!3236 = !DILocation(line: 405, column: 1, scope: !3191)
!3237 = distinct !DISubprogram(name: "close_stream", scope: !3238, file: !3238, line: 56, type: !3239, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3281)
!3238 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!60, !3241}
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !855, line: 7, baseType: !3243)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !857, line: 241, size: 1728, elements: !3244)
!3244 = !{!3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3243, file: !857, line: 242, baseType: !60, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3243, file: !857, line: 247, baseType: !20, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3243, file: !857, line: 248, baseType: !20, size: 64, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3243, file: !857, line: 249, baseType: !20, size: 64, offset: 192)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3243, file: !857, line: 250, baseType: !20, size: 64, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3243, file: !857, line: 251, baseType: !20, size: 64, offset: 320)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3243, file: !857, line: 252, baseType: !20, size: 64, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3243, file: !857, line: 253, baseType: !20, size: 64, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3243, file: !857, line: 254, baseType: !20, size: 64, offset: 512)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3243, file: !857, line: 256, baseType: !20, size: 64, offset: 576)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3243, file: !857, line: 257, baseType: !20, size: 64, offset: 640)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3243, file: !857, line: 258, baseType: !20, size: 64, offset: 704)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3243, file: !857, line: 260, baseType: !3258, size: 64, offset: 768)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !857, line: 156, size: 192, elements: !3260)
!3260 = !{!3261, !3262, !3264}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3259, file: !857, line: 157, baseType: !3258, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3259, file: !857, line: 158, baseType: !3263, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3259, file: !857, line: 162, baseType: !60, size: 32, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3243, file: !857, line: 262, baseType: !3263, size: 64, offset: 832)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3243, file: !857, line: 264, baseType: !60, size: 32, offset: 896)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3243, file: !857, line: 268, baseType: !60, size: 32, offset: 928)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3243, file: !857, line: 270, baseType: !784, size: 64, offset: 960)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3243, file: !857, line: 274, baseType: !118, size: 16, offset: 1024)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3243, file: !857, line: 275, baseType: !885, size: 8, offset: 1040)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3243, file: !857, line: 276, baseType: !887, size: 8, offset: 1048)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3243, file: !857, line: 280, baseType: !891, size: 64, offset: 1088)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3243, file: !857, line: 289, baseType: !894, size: 64, offset: 1152)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3243, file: !857, line: 297, baseType: !22, size: 64, offset: 1216)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3243, file: !857, line: 298, baseType: !22, size: 64, offset: 1280)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3243, file: !857, line: 299, baseType: !22, size: 64, offset: 1344)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3243, file: !857, line: 300, baseType: !22, size: 64, offset: 1408)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3243, file: !857, line: 302, baseType: !119, size: 64, offset: 1472)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3243, file: !857, line: 303, baseType: !60, size: 32, offset: 1536)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3243, file: !857, line: 305, baseType: !902, size: 160, offset: 1568)
!3281 = !{!3282, !3283, !3285, !3286}
!3282 = !DILocalVariable(name: "stream", arg: 1, scope: !3237, file: !3238, line: 56, type: !3241)
!3283 = !DILocalVariable(name: "some_pending", scope: !3237, file: !3238, line: 58, type: !3284)
!3284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!3285 = !DILocalVariable(name: "prev_fail", scope: !3237, file: !3238, line: 59, type: !3284)
!3286 = !DILocalVariable(name: "fclose_fail", scope: !3237, file: !3238, line: 60, type: !3284)
!3287 = !DILocation(line: 56, column: 21, scope: !3237)
!3288 = !DILocation(line: 58, column: 30, scope: !3237)
!3289 = !DILocalVariable(name: "__stream", arg: 1, scope: !3290, file: !947, line: 132, type: !3241)
!3290 = distinct !DISubprogram(name: "ferror_unlocked", scope: !947, file: !947, line: 132, type: !3239, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3291)
!3291 = !{!3289}
!3292 = !DILocation(line: 132, column: 1, scope: !3290, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 59, column: 27, scope: !3237)
!3294 = !DILocation(line: 134, column: 10, scope: !3290, inlinedAt: !3293)
!3295 = !{!957, !657, i64 0}
!3296 = !DILocation(line: 59, column: 43, scope: !3237)
!3297 = !DILocation(line: 60, column: 29, scope: !3237)
!3298 = !DILocation(line: 60, column: 45, scope: !3237)
!3299 = !DILocation(line: 70, column: 17, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3237, file: !3238, line: 70, column: 7)
!3301 = !DILocation(line: 58, column: 50, scope: !3237)
!3302 = !DILocation(line: 70, column: 33, scope: !3300)
!3303 = !DILocation(line: 70, column: 53, scope: !3300)
!3304 = !DILocation(line: 70, column: 59, scope: !3300)
!3305 = !DILocation(line: 70, column: 7, scope: !3237)
!3306 = !DILocation(line: 72, column: 11, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3300, file: !3238, line: 71, column: 5)
!3308 = !DILocation(line: 73, column: 9, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3307, file: !3238, line: 72, column: 11)
!3310 = !DILocation(line: 73, column: 15, scope: !3309)
!3311 = !DILocation(line: 78, column: 1, scope: !3237)
!3312 = distinct !DISubprogram(name: "last_component", scope: !3313, file: !3313, line: 30, type: !2209, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3314)
!3313 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3314 = !{!3315, !3316, !3317, !3318}
!3315 = !DILocalVariable(name: "name", arg: 1, scope: !3312, file: !3313, line: 30, type: !35)
!3316 = !DILocalVariable(name: "base", scope: !3312, file: !3313, line: 32, type: !35)
!3317 = !DILocalVariable(name: "p", scope: !3312, file: !3313, line: 33, type: !35)
!3318 = !DILocalVariable(name: "saw_slash", scope: !3312, file: !3313, line: 34, type: !26)
!3319 = !DILocation(line: 30, column: 29, scope: !3312)
!3320 = !DILocation(line: 32, column: 15, scope: !3312)
!3321 = !DILocation(line: 34, column: 8, scope: !3312)
!3322 = !DILocation(line: 36, column: 3, scope: !3312)
!3323 = !DILocation(line: 36, column: 10, scope: !3312)
!3324 = !DILocation(line: 37, column: 9, scope: !3312)
!3325 = distinct !{!3325, !3322, !3324}
!3326 = !DILocation(line: 39, column: 3, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3312, file: !3313, line: 39, column: 3)
!3328 = !DILocation(line: 39, column: 18, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3327, file: !3313, line: 39, column: 3)
!3330 = !DILocation(line: 33, column: 15, scope: !3312)
!3331 = !DILocation(line: 43, column: 16, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !3313, line: 43, column: 16)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !3313, line: 41, column: 11)
!3334 = distinct !DILexicalBlock(scope: !3329, file: !3313, line: 40, column: 5)
!3335 = !DILocation(line: 43, column: 16, scope: !3333)
!3336 = !DILocation(line: 39, column: 23, scope: !3329)
!3337 = !DILocation(line: 39, column: 3, scope: !3329)
!3338 = distinct !{!3338, !3326, !3339}
!3339 = !DILocation(line: 48, column: 5, scope: !3327)
!3340 = !DILocation(line: 50, column: 3, scope: !3312)
!3341 = distinct !DISubprogram(name: "base_len", scope: !3313, file: !3313, line: 58, type: !3342, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3344)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!119, !35}
!3344 = !{!3345, !3346, !3347}
!3345 = !DILocalVariable(name: "name", arg: 1, scope: !3341, file: !3313, line: 58, type: !35)
!3346 = !DILocalVariable(name: "len", scope: !3341, file: !3313, line: 60, type: !119)
!3347 = !DILocalVariable(name: "prefix_len", scope: !3341, file: !3313, line: 61, type: !119)
!3348 = !DILocation(line: 58, column: 23, scope: !3341)
!3349 = !DILocation(line: 61, column: 10, scope: !3341)
!3350 = !DILocation(line: 63, column: 14, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3341, file: !3313, line: 63, column: 3)
!3352 = !DILocation(line: 60, column: 10, scope: !3341)
!3353 = !DILocation(line: 63, column: 32, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3351, file: !3313, line: 63, column: 3)
!3355 = !DILocation(line: 63, column: 38, scope: !3354)
!3356 = !DILocation(line: 63, column: 41, scope: !3354)
!3357 = distinct !{!3357, !3358, !3359}
!3358 = !DILocation(line: 63, column: 3, scope: !3351)
!3359 = !DILocation(line: 64, column: 5, scope: !3351)
!3360 = !DILocation(line: 74, column: 3, scope: !3341)
!3361 = distinct !DISubprogram(name: "hard_locale", scope: !3362, file: !3362, line: 38, type: !3363, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3365)
!3362 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!26, !60}
!3365 = !{!3366, !3367, !3368}
!3366 = !DILocalVariable(name: "category", arg: 1, scope: !3361, file: !3362, line: 38, type: !60)
!3367 = !DILocalVariable(name: "hard", scope: !3361, file: !3362, line: 40, type: !26)
!3368 = !DILocalVariable(name: "p", scope: !3361, file: !3362, line: 41, type: !35)
!3369 = !DILocation(line: 38, column: 18, scope: !3361)
!3370 = !DILocation(line: 40, column: 8, scope: !3361)
!3371 = !DILocation(line: 41, column: 19, scope: !3361)
!3372 = !DILocation(line: 41, column: 15, scope: !3361)
!3373 = !DILocation(line: 43, column: 7, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3361, file: !3362, line: 43, column: 7)
!3375 = !DILocation(line: 43, column: 7, scope: !3361)
!3376 = !DILocation(line: 47, column: 15, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3362, line: 47, column: 15)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3362, line: 46, column: 9)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !3362, line: 45, column: 11)
!3380 = distinct !DILexicalBlock(scope: !3374, file: !3362, line: 44, column: 5)
!3381 = !DILocation(line: 47, column: 31, scope: !3377)
!3382 = !DILocation(line: 47, column: 36, scope: !3377)
!3383 = !DILocation(line: 47, column: 39, scope: !3377)
!3384 = !DILocation(line: 47, column: 59, scope: !3377)
!3385 = !DILocation(line: 47, column: 15, scope: !3378)
!3386 = !DILocation(line: 48, column: 13, scope: !3377)
!3387 = !DILocation(line: 71, column: 3, scope: !3361)
!3388 = distinct !DISubprogram(name: "locale_charset", scope: !521, file: !521, line: 393, type: !3389, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !176, variables: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!35}
!3391 = !{!3392, !3393}
!3392 = !DILocalVariable(name: "codeset", scope: !3388, file: !521, line: 395, type: !35)
!3393 = !DILocalVariable(name: "aliases", scope: !3388, file: !521, line: 396, type: !35)
!3394 = !DILocalVariable(name: "buf1", scope: !3395, file: !521, line: 196, type: !3462)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !521, line: 194, column: 21)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !521, line: 193, column: 19)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !521, line: 193, column: 19)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !521, line: 188, column: 17)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !521, line: 181, column: 19)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !521, line: 177, column: 13)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !521, line: 173, column: 15)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !521, line: 161, column: 9)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !521, line: 157, column: 11)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !521, line: 130, column: 5)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !521, line: 129, column: 7)
!3406 = distinct !DISubprogram(name: "get_charset_aliases", scope: !521, file: !521, line: 124, type: !3389, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !176, variables: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3414, !3415, !3416, !3417, !3458, !3459, !3460, !3394, !3461, !3465, !3466, !3467}
!3408 = !DILocalVariable(name: "cp", scope: !3406, file: !521, line: 126, type: !35)
!3409 = !DILocalVariable(name: "dir", scope: !3404, file: !521, line: 132, type: !35)
!3410 = !DILocalVariable(name: "base", scope: !3404, file: !521, line: 133, type: !35)
!3411 = !DILocalVariable(name: "file_name", scope: !3404, file: !521, line: 134, type: !20)
!3412 = !DILocalVariable(name: "dir_len", scope: !3413, file: !521, line: 144, type: !119)
!3413 = distinct !DILexicalBlock(scope: !3404, file: !521, line: 143, column: 7)
!3414 = !DILocalVariable(name: "base_len", scope: !3413, file: !521, line: 145, type: !119)
!3415 = !DILocalVariable(name: "add_slash", scope: !3413, file: !521, line: 146, type: !60)
!3416 = !DILocalVariable(name: "fd", scope: !3402, file: !521, line: 162, type: !60)
!3417 = !DILocalVariable(name: "fp", scope: !3400, file: !521, line: 178, type: !3418)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !855, line: 7, baseType: !3420)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !857, line: 241, size: 1728, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3420, file: !857, line: 242, baseType: !60, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3420, file: !857, line: 247, baseType: !20, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3420, file: !857, line: 248, baseType: !20, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3420, file: !857, line: 249, baseType: !20, size: 64, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3420, file: !857, line: 250, baseType: !20, size: 64, offset: 256)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3420, file: !857, line: 251, baseType: !20, size: 64, offset: 320)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3420, file: !857, line: 252, baseType: !20, size: 64, offset: 384)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3420, file: !857, line: 253, baseType: !20, size: 64, offset: 448)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3420, file: !857, line: 254, baseType: !20, size: 64, offset: 512)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3420, file: !857, line: 256, baseType: !20, size: 64, offset: 576)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3420, file: !857, line: 257, baseType: !20, size: 64, offset: 640)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3420, file: !857, line: 258, baseType: !20, size: 64, offset: 704)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3420, file: !857, line: 260, baseType: !3435, size: 64, offset: 768)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !857, line: 156, size: 192, elements: !3437)
!3437 = !{!3438, !3439, !3441}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3436, file: !857, line: 157, baseType: !3435, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3436, file: !857, line: 158, baseType: !3440, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3436, file: !857, line: 162, baseType: !60, size: 32, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3420, file: !857, line: 262, baseType: !3440, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3420, file: !857, line: 264, baseType: !60, size: 32, offset: 896)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3420, file: !857, line: 268, baseType: !60, size: 32, offset: 928)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3420, file: !857, line: 270, baseType: !784, size: 64, offset: 960)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3420, file: !857, line: 274, baseType: !118, size: 16, offset: 1024)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3420, file: !857, line: 275, baseType: !885, size: 8, offset: 1040)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3420, file: !857, line: 276, baseType: !887, size: 8, offset: 1048)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3420, file: !857, line: 280, baseType: !891, size: 64, offset: 1088)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3420, file: !857, line: 289, baseType: !894, size: 64, offset: 1152)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3420, file: !857, line: 297, baseType: !22, size: 64, offset: 1216)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3420, file: !857, line: 298, baseType: !22, size: 64, offset: 1280)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3420, file: !857, line: 299, baseType: !22, size: 64, offset: 1344)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3420, file: !857, line: 300, baseType: !22, size: 64, offset: 1408)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3420, file: !857, line: 302, baseType: !119, size: 64, offset: 1472)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3420, file: !857, line: 303, baseType: !60, size: 32, offset: 1536)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3420, file: !857, line: 305, baseType: !902, size: 160, offset: 1568)
!3458 = !DILocalVariable(name: "res_ptr", scope: !3398, file: !521, line: 190, type: !20)
!3459 = !DILocalVariable(name: "res_size", scope: !3398, file: !521, line: 191, type: !119)
!3460 = !DILocalVariable(name: "c", scope: !3395, file: !521, line: 195, type: !60)
!3461 = !DILocalVariable(name: "buf2", scope: !3395, file: !521, line: 197, type: !3462)
!3462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 408, elements: !3463)
!3463 = !{!3464}
!3464 = !DISubrange(count: 51)
!3465 = !DILocalVariable(name: "l1", scope: !3395, file: !521, line: 198, type: !119)
!3466 = !DILocalVariable(name: "l2", scope: !3395, file: !521, line: 198, type: !119)
!3467 = !DILocalVariable(name: "old_res_ptr", scope: !3395, file: !521, line: 199, type: !20)
!3468 = !DILocation(line: 196, column: 28, scope: !3395, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 589, column: 18, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3388, file: !521, line: 589, column: 3)
!3471 = !DILocation(line: 197, column: 28, scope: !3395, inlinedAt: !3469)
!3472 = !DILocation(line: 403, column: 13, scope: !3388)
!3473 = !DILocation(line: 395, column: 15, scope: !3388)
!3474 = !DILocation(line: 584, column: 15, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3388, file: !521, line: 584, column: 7)
!3476 = !DILocation(line: 584, column: 7, scope: !3388)
!3477 = !DILocation(line: 128, column: 8, scope: !3406, inlinedAt: !3469)
!3478 = !DILocation(line: 126, column: 15, scope: !3406, inlinedAt: !3469)
!3479 = !DILocation(line: 129, column: 10, scope: !3405, inlinedAt: !3469)
!3480 = !DILocation(line: 129, column: 7, scope: !3406, inlinedAt: !3469)
!3481 = !DILocation(line: 138, column: 13, scope: !3404, inlinedAt: !3469)
!3482 = !DILocation(line: 132, column: 19, scope: !3404, inlinedAt: !3469)
!3483 = !DILocation(line: 139, column: 15, scope: !3484, inlinedAt: !3469)
!3484 = distinct !DILexicalBlock(scope: !3404, file: !521, line: 139, column: 11)
!3485 = !DILocation(line: 139, column: 23, scope: !3484, inlinedAt: !3469)
!3486 = !DILocation(line: 139, column: 26, scope: !3484, inlinedAt: !3469)
!3487 = !DILocation(line: 139, column: 33, scope: !3484, inlinedAt: !3469)
!3488 = !DILocation(line: 139, column: 11, scope: !3404, inlinedAt: !3469)
!3489 = !DILocation(line: 140, column: 9, scope: !3484, inlinedAt: !3469)
!3490 = !DILocation(line: 144, column: 26, scope: !3413, inlinedAt: !3469)
!3491 = !DILocation(line: 144, column: 16, scope: !3413, inlinedAt: !3469)
!3492 = !DILocation(line: 145, column: 16, scope: !3413, inlinedAt: !3469)
!3493 = !DILocation(line: 146, column: 34, scope: !3413, inlinedAt: !3469)
!3494 = !DILocation(line: 146, column: 38, scope: !3413, inlinedAt: !3469)
!3495 = !DILocation(line: 146, column: 42, scope: !3413, inlinedAt: !3469)
!3496 = !DILocation(line: 147, column: 48, scope: !3413, inlinedAt: !3469)
!3497 = !DILocation(line: 147, column: 46, scope: !3413, inlinedAt: !3469)
!3498 = !DILocation(line: 147, column: 69, scope: !3413, inlinedAt: !3469)
!3499 = !DILocation(line: 147, column: 30, scope: !3413, inlinedAt: !3469)
!3500 = !DILocation(line: 134, column: 13, scope: !3404, inlinedAt: !3469)
!3501 = !DILocation(line: 148, column: 13, scope: !3413, inlinedAt: !3469)
!3502 = !DILocation(line: 150, column: 13, scope: !3503, inlinedAt: !3469)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !521, line: 149, column: 11)
!3504 = distinct !DILexicalBlock(scope: !3413, file: !521, line: 148, column: 13)
!3505 = !DILocation(line: 151, column: 17, scope: !3503, inlinedAt: !3469)
!3506 = !DILocation(line: 152, column: 34, scope: !3507, inlinedAt: !3469)
!3507 = distinct !DILexicalBlock(scope: !3503, file: !521, line: 151, column: 17)
!3508 = !DILocation(line: 153, column: 41, scope: !3503, inlinedAt: !3469)
!3509 = !DILocation(line: 153, column: 13, scope: !3503, inlinedAt: !3469)
!3510 = !DILocation(line: 157, column: 11, scope: !3404, inlinedAt: !3469)
!3511 = !DILocation(line: 171, column: 16, scope: !3402, inlinedAt: !3469)
!3512 = !DILocation(line: 162, column: 15, scope: !3402, inlinedAt: !3469)
!3513 = !DILocation(line: 173, column: 18, scope: !3401, inlinedAt: !3469)
!3514 = !DILocation(line: 173, column: 15, scope: !3402, inlinedAt: !3469)
!3515 = !DILocation(line: 180, column: 20, scope: !3400, inlinedAt: !3469)
!3516 = !DILocation(line: 178, column: 21, scope: !3400, inlinedAt: !3469)
!3517 = !DILocation(line: 181, column: 22, scope: !3399, inlinedAt: !3469)
!3518 = !DILocation(line: 181, column: 19, scope: !3400, inlinedAt: !3469)
!3519 = !DILocation(line: 184, column: 19, scope: !3520, inlinedAt: !3469)
!3520 = distinct !DILexicalBlock(scope: !3399, file: !521, line: 182, column: 17)
!3521 = !DILocation(line: 186, column: 17, scope: !3520, inlinedAt: !3469)
!3522 = !DILocation(line: 190, column: 25, scope: !3398, inlinedAt: !3469)
!3523 = !DILocation(line: 191, column: 26, scope: !3398, inlinedAt: !3469)
!3524 = !DILocation(line: 193, column: 19, scope: !3398, inlinedAt: !3469)
!3525 = !DILocation(line: 196, column: 23, scope: !3395, inlinedAt: !3469)
!3526 = !DILocation(line: 197, column: 23, scope: !3395, inlinedAt: !3469)
!3527 = !DILocalVariable(name: "__fp", arg: 1, scope: !3528, file: !947, line: 63, type: !3418)
!3528 = distinct !DISubprogram(name: "getc_unlocked", scope: !947, file: !947, line: 63, type: !3529, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !176, variables: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!60, !3418}
!3531 = !{!3527}
!3532 = !DILocation(line: 63, column: 22, scope: !3528, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 201, column: 27, scope: !3395, inlinedAt: !3469)
!3534 = !DILocation(line: 65, column: 10, scope: !3528, inlinedAt: !3533)
!3535 = !{!957, !592, i64 8}
!3536 = !{!957, !592, i64 16}
!3537 = !DILocation(line: 195, column: 27, scope: !3395, inlinedAt: !3469)
!3538 = !DILocation(line: 202, column: 27, scope: !3395, inlinedAt: !3469)
!3539 = distinct !{!3539, !3540, !3543}
!3540 = !DILocation(line: 209, column: 27, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !521, line: 207, column: 25)
!3542 = distinct !DILexicalBlock(scope: !3395, file: !521, line: 206, column: 27)
!3543 = !DILocation(line: 211, column: 58, scope: !3541)
!3544 = !DILocation(line: 65, column: 10, scope: !3528, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 210, column: 33, scope: !3541, inlinedAt: !3469)
!3546 = !DILocation(line: 63, column: 22, scope: !3528, inlinedAt: !3545)
!3547 = !DILocation(line: 210, column: 29, scope: !3541, inlinedAt: !3469)
!3548 = distinct !{!3548, !3549, !3550}
!3549 = !DILocation(line: 193, column: 19, scope: !3397)
!3550 = !DILocation(line: 241, column: 21, scope: !3397)
!3551 = !DILocation(line: 216, column: 23, scope: !3395, inlinedAt: !3469)
!3552 = !DILocation(line: 217, column: 27, scope: !3553, inlinedAt: !3469)
!3553 = distinct !DILexicalBlock(scope: !3395, file: !521, line: 217, column: 27)
!3554 = !DILocation(line: 217, column: 64, scope: !3553, inlinedAt: !3469)
!3555 = !DILocation(line: 217, column: 27, scope: !3395, inlinedAt: !3469)
!3556 = !DILocation(line: 219, column: 28, scope: !3395, inlinedAt: !3469)
!3557 = !DILocation(line: 198, column: 30, scope: !3395, inlinedAt: !3469)
!3558 = !DILocation(line: 220, column: 28, scope: !3395, inlinedAt: !3469)
!3559 = !DILocation(line: 198, column: 34, scope: !3395, inlinedAt: !3469)
!3560 = !DILocation(line: 199, column: 29, scope: !3395, inlinedAt: !3469)
!3561 = !DILocation(line: 222, column: 36, scope: !3562, inlinedAt: !3469)
!3562 = distinct !DILexicalBlock(scope: !3395, file: !521, line: 222, column: 27)
!3563 = !DILocation(line: 222, column: 27, scope: !3395, inlinedAt: !3469)
!3564 = !DILocation(line: 225, column: 63, scope: !3565, inlinedAt: !3469)
!3565 = distinct !DILexicalBlock(scope: !3562, file: !521, line: 223, column: 25)
!3566 = !DILocation(line: 225, column: 46, scope: !3565, inlinedAt: !3469)
!3567 = !DILocation(line: 226, column: 25, scope: !3565, inlinedAt: !3469)
!3568 = !DILocation(line: 229, column: 36, scope: !3569, inlinedAt: !3469)
!3569 = distinct !DILexicalBlock(scope: !3562, file: !521, line: 228, column: 25)
!3570 = !DILocation(line: 230, column: 73, scope: !3569, inlinedAt: !3469)
!3571 = !DILocation(line: 230, column: 46, scope: !3569, inlinedAt: !3469)
!3572 = !DILocation(line: 232, column: 35, scope: !3573, inlinedAt: !3469)
!3573 = distinct !DILexicalBlock(scope: !3395, file: !521, line: 232, column: 27)
!3574 = !DILocation(line: 232, column: 27, scope: !3395, inlinedAt: !3469)
!3575 = !DILocation(line: 236, column: 27, scope: !3576, inlinedAt: !3469)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !521, line: 233, column: 25)
!3577 = !DILocation(line: 237, column: 27, scope: !3576, inlinedAt: !3469)
!3578 = !DILocation(line: 241, column: 21, scope: !3396, inlinedAt: !3469)
!3579 = !DILocation(line: 239, column: 39, scope: !3395, inlinedAt: !3469)
!3580 = !DILocation(line: 239, column: 50, scope: !3395, inlinedAt: !3469)
!3581 = !DILocation(line: 239, column: 61, scope: !3395, inlinedAt: !3469)
!3582 = !DILocalVariable(name: "__dest", arg: 1, scope: !3583, file: !3584, line: 88, type: !3587)
!3583 = distinct !DISubprogram(name: "strcpy", scope: !3584, file: !3584, line: 88, type: !3585, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !176, variables: !3588)
!3584 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!20, !3587, !934}
!3587 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!3588 = !{!3582, !3589}
!3589 = !DILocalVariable(name: "__src", arg: 2, scope: !3583, file: !3584, line: 88, type: !934)
!3590 = !DILocation(line: 88, column: 1, scope: !3583, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 239, column: 23, scope: !3395, inlinedAt: !3469)
!3592 = !DILocation(line: 90, column: 49, scope: !3583, inlinedAt: !3591)
!3593 = !DILocation(line: 90, column: 10, scope: !3583, inlinedAt: !3591)
!3594 = !DILocation(line: 88, column: 1, scope: !3583, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 240, column: 23, scope: !3395, inlinedAt: !3469)
!3596 = !DILocation(line: 90, column: 49, scope: !3583, inlinedAt: !3595)
!3597 = !DILocation(line: 90, column: 10, scope: !3583, inlinedAt: !3595)
!3598 = !DILocation(line: 193, column: 19, scope: !3396, inlinedAt: !3469)
!3599 = !DILocation(line: 242, column: 19, scope: !3398, inlinedAt: !3469)
!3600 = !DILocation(line: 243, column: 32, scope: !3601, inlinedAt: !3469)
!3601 = distinct !DILexicalBlock(scope: !3398, file: !521, line: 243, column: 23)
!3602 = !DILocation(line: 243, column: 23, scope: !3398, inlinedAt: !3469)
!3603 = !DILocation(line: 247, column: 33, scope: !3604, inlinedAt: !3469)
!3604 = distinct !DILexicalBlock(scope: !3601, file: !521, line: 246, column: 21)
!3605 = !DILocation(line: 247, column: 45, scope: !3604, inlinedAt: !3469)
!3606 = !DILocation(line: 253, column: 11, scope: !3402, inlinedAt: !3469)
!3607 = !DILocation(line: 377, column: 23, scope: !3404, inlinedAt: !3469)
!3608 = !DILocation(line: 378, column: 5, scope: !3404, inlinedAt: !3469)
!3609 = !DILocation(line: 396, column: 15, scope: !3388)
!3610 = !DILocation(line: 590, column: 8, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3470, file: !521, line: 589, column: 3)
!3612 = !DILocation(line: 590, column: 17, scope: !3611)
!3613 = !DILocation(line: 589, column: 3, scope: !3470)
!3614 = !DILocation(line: 592, column: 9, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3611, file: !521, line: 592, column: 9)
!3616 = !DILocation(line: 592, column: 35, scope: !3615)
!3617 = !DILocation(line: 593, column: 9, scope: !3615)
!3618 = !DILocation(line: 593, column: 24, scope: !3615)
!3619 = !DILocation(line: 593, column: 31, scope: !3615)
!3620 = !DILocation(line: 593, column: 34, scope: !3615)
!3621 = !DILocation(line: 593, column: 45, scope: !3615)
!3622 = !DILocation(line: 592, column: 9, scope: !3611)
!3623 = !DILocation(line: 595, column: 29, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3615, file: !521, line: 594, column: 7)
!3625 = !DILocation(line: 595, column: 27, scope: !3624)
!3626 = !DILocation(line: 595, column: 46, scope: !3624)
!3627 = !DILocation(line: 596, column: 9, scope: !3624)
!3628 = !DILocation(line: 591, column: 19, scope: !3611)
!3629 = !DILocation(line: 591, column: 36, scope: !3611)
!3630 = !DILocation(line: 591, column: 16, scope: !3611)
!3631 = !DILocation(line: 591, column: 52, scope: !3611)
!3632 = !DILocation(line: 591, column: 69, scope: !3611)
!3633 = !DILocation(line: 591, column: 49, scope: !3611)
!3634 = distinct !{!3634, !3613, !3635}
!3635 = !DILocation(line: 597, column: 7, scope: !3470)
!3636 = !DILocation(line: 602, column: 7, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3388, file: !521, line: 602, column: 7)
!3638 = !DILocation(line: 602, column: 18, scope: !3637)
!3639 = !DILocation(line: 602, column: 7, scope: !3388)
!3640 = !DILocation(line: 612, column: 3, scope: !3388)
!3641 = distinct !DISubprogram(name: "rpl_fclose", scope: !3642, file: !3642, line: 56, type: !3643, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !3685)
!3642 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!60, !3645}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !855, line: 7, baseType: !3647)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !857, line: 241, size: 1728, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3647, file: !857, line: 242, baseType: !60, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3647, file: !857, line: 247, baseType: !20, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3647, file: !857, line: 248, baseType: !20, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3647, file: !857, line: 249, baseType: !20, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3647, file: !857, line: 250, baseType: !20, size: 64, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3647, file: !857, line: 251, baseType: !20, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3647, file: !857, line: 252, baseType: !20, size: 64, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3647, file: !857, line: 253, baseType: !20, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3647, file: !857, line: 254, baseType: !20, size: 64, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3647, file: !857, line: 256, baseType: !20, size: 64, offset: 576)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3647, file: !857, line: 257, baseType: !20, size: 64, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3647, file: !857, line: 258, baseType: !20, size: 64, offset: 704)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3647, file: !857, line: 260, baseType: !3662, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !857, line: 156, size: 192, elements: !3664)
!3664 = !{!3665, !3666, !3668}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3663, file: !857, line: 157, baseType: !3662, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3663, file: !857, line: 158, baseType: !3667, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3663, file: !857, line: 162, baseType: !60, size: 32, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3647, file: !857, line: 262, baseType: !3667, size: 64, offset: 832)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3647, file: !857, line: 264, baseType: !60, size: 32, offset: 896)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3647, file: !857, line: 268, baseType: !60, size: 32, offset: 928)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3647, file: !857, line: 270, baseType: !784, size: 64, offset: 960)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3647, file: !857, line: 274, baseType: !118, size: 16, offset: 1024)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3647, file: !857, line: 275, baseType: !885, size: 8, offset: 1040)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3647, file: !857, line: 276, baseType: !887, size: 8, offset: 1048)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3647, file: !857, line: 280, baseType: !891, size: 64, offset: 1088)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3647, file: !857, line: 289, baseType: !894, size: 64, offset: 1152)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3647, file: !857, line: 297, baseType: !22, size: 64, offset: 1216)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3647, file: !857, line: 298, baseType: !22, size: 64, offset: 1280)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3647, file: !857, line: 299, baseType: !22, size: 64, offset: 1344)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3647, file: !857, line: 300, baseType: !22, size: 64, offset: 1408)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3647, file: !857, line: 302, baseType: !119, size: 64, offset: 1472)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3647, file: !857, line: 303, baseType: !60, size: 32, offset: 1536)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3647, file: !857, line: 305, baseType: !902, size: 160, offset: 1568)
!3685 = !{!3686, !3687, !3688, !3689}
!3686 = !DILocalVariable(name: "fp", arg: 1, scope: !3641, file: !3642, line: 56, type: !3645)
!3687 = !DILocalVariable(name: "saved_errno", scope: !3641, file: !3642, line: 58, type: !60)
!3688 = !DILocalVariable(name: "fd", scope: !3641, file: !3642, line: 59, type: !60)
!3689 = !DILocalVariable(name: "result", scope: !3641, file: !3642, line: 60, type: !60)
!3690 = !DILocation(line: 56, column: 19, scope: !3641)
!3691 = !DILocation(line: 58, column: 7, scope: !3641)
!3692 = !DILocation(line: 60, column: 7, scope: !3641)
!3693 = !DILocation(line: 63, column: 8, scope: !3641)
!3694 = !DILocation(line: 59, column: 7, scope: !3641)
!3695 = !DILocation(line: 64, column: 10, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3641, file: !3642, line: 64, column: 7)
!3697 = !DILocation(line: 64, column: 7, scope: !3641)
!3698 = !DILocation(line: 65, column: 12, scope: !3696)
!3699 = !DILocation(line: 65, column: 5, scope: !3696)
!3700 = !DILocation(line: 70, column: 9, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3641, file: !3642, line: 70, column: 7)
!3702 = !DILocation(line: 70, column: 23, scope: !3701)
!3703 = !DILocation(line: 70, column: 33, scope: !3701)
!3704 = !DILocation(line: 70, column: 26, scope: !3701)
!3705 = !DILocation(line: 70, column: 59, scope: !3701)
!3706 = !DILocation(line: 71, column: 7, scope: !3701)
!3707 = !DILocation(line: 71, column: 10, scope: !3701)
!3708 = !DILocation(line: 70, column: 7, scope: !3641)
!3709 = !DILocation(line: 98, column: 12, scope: !3641)
!3710 = !DILocation(line: 103, column: 7, scope: !3641)
!3711 = !DILocation(line: 72, column: 19, scope: !3701)
!3712 = !DILocation(line: 103, column: 19, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3641, file: !3642, line: 103, column: 7)
!3714 = !DILocation(line: 105, column: 13, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3713, file: !3642, line: 104, column: 5)
!3716 = !DILocation(line: 107, column: 5, scope: !3715)
!3717 = !DILocation(line: 110, column: 1, scope: !3641)
!3718 = distinct !DISubprogram(name: "rpl_fflush", scope: !3719, file: !3719, line: 127, type: !3720, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3762)
!3719 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!60, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !855, line: 7, baseType: !3724)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !857, line: 241, size: 1728, elements: !3725)
!3725 = !{!3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3724, file: !857, line: 242, baseType: !60, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3724, file: !857, line: 247, baseType: !20, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3724, file: !857, line: 248, baseType: !20, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3724, file: !857, line: 249, baseType: !20, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3724, file: !857, line: 250, baseType: !20, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3724, file: !857, line: 251, baseType: !20, size: 64, offset: 320)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3724, file: !857, line: 252, baseType: !20, size: 64, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3724, file: !857, line: 253, baseType: !20, size: 64, offset: 448)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3724, file: !857, line: 254, baseType: !20, size: 64, offset: 512)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3724, file: !857, line: 256, baseType: !20, size: 64, offset: 576)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3724, file: !857, line: 257, baseType: !20, size: 64, offset: 640)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3724, file: !857, line: 258, baseType: !20, size: 64, offset: 704)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3724, file: !857, line: 260, baseType: !3739, size: 64, offset: 768)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !857, line: 156, size: 192, elements: !3741)
!3741 = !{!3742, !3743, !3745}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3740, file: !857, line: 157, baseType: !3739, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3740, file: !857, line: 158, baseType: !3744, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3740, file: !857, line: 162, baseType: !60, size: 32, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3724, file: !857, line: 262, baseType: !3744, size: 64, offset: 832)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3724, file: !857, line: 264, baseType: !60, size: 32, offset: 896)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3724, file: !857, line: 268, baseType: !60, size: 32, offset: 928)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3724, file: !857, line: 270, baseType: !784, size: 64, offset: 960)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3724, file: !857, line: 274, baseType: !118, size: 16, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3724, file: !857, line: 275, baseType: !885, size: 8, offset: 1040)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3724, file: !857, line: 276, baseType: !887, size: 8, offset: 1048)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3724, file: !857, line: 280, baseType: !891, size: 64, offset: 1088)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3724, file: !857, line: 289, baseType: !894, size: 64, offset: 1152)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3724, file: !857, line: 297, baseType: !22, size: 64, offset: 1216)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3724, file: !857, line: 298, baseType: !22, size: 64, offset: 1280)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3724, file: !857, line: 299, baseType: !22, size: 64, offset: 1344)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3724, file: !857, line: 300, baseType: !22, size: 64, offset: 1408)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3724, file: !857, line: 302, baseType: !119, size: 64, offset: 1472)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3724, file: !857, line: 303, baseType: !60, size: 32, offset: 1536)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3724, file: !857, line: 305, baseType: !902, size: 160, offset: 1568)
!3762 = !{!3763}
!3763 = !DILocalVariable(name: "stream", arg: 1, scope: !3718, file: !3719, line: 127, type: !3722)
!3764 = !DILocation(line: 127, column: 19, scope: !3718)
!3765 = !DILocation(line: 148, column: 14, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3718, file: !3719, line: 148, column: 7)
!3767 = !DILocation(line: 148, column: 22, scope: !3766)
!3768 = !DILocation(line: 148, column: 27, scope: !3766)
!3769 = !DILocation(line: 148, column: 7, scope: !3718)
!3770 = !DILocation(line: 149, column: 12, scope: !3766)
!3771 = !DILocation(line: 149, column: 5, scope: !3766)
!3772 = !DILocalVariable(name: "fp", arg: 1, scope: !3773, file: !3719, line: 40, type: !3722)
!3773 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3719, file: !3719, line: 40, type: !3774, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !3776)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{null, !3722}
!3776 = !{!3772}
!3777 = !DILocation(line: 40, column: 48, scope: !3773, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 153, column: 3, scope: !3718)
!3779 = !DILocation(line: 42, column: 11, scope: !3780, inlinedAt: !3778)
!3780 = distinct !DILexicalBlock(scope: !3773, file: !3719, line: 42, column: 7)
!3781 = !DILocation(line: 42, column: 18, scope: !3780, inlinedAt: !3778)
!3782 = !DILocation(line: 42, column: 7, scope: !3773, inlinedAt: !3778)
!3783 = !DILocation(line: 44, column: 5, scope: !3780, inlinedAt: !3778)
!3784 = !DILocation(line: 155, column: 10, scope: !3718)
!3785 = !DILocation(line: 155, column: 3, scope: !3718)
!3786 = !DILocation(line: 229, column: 1, scope: !3718)
!3787 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3788, file: !3788, line: 28, type: !3789, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3832)
!3788 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!60, !3791, !3831, !60}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !855, line: 7, baseType: !3793)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !857, line: 241, size: 1728, elements: !3794)
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3793, file: !857, line: 242, baseType: !60, size: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3793, file: !857, line: 247, baseType: !20, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3793, file: !857, line: 248, baseType: !20, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3793, file: !857, line: 249, baseType: !20, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3793, file: !857, line: 250, baseType: !20, size: 64, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3793, file: !857, line: 251, baseType: !20, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3793, file: !857, line: 252, baseType: !20, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3793, file: !857, line: 253, baseType: !20, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3793, file: !857, line: 254, baseType: !20, size: 64, offset: 512)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3793, file: !857, line: 256, baseType: !20, size: 64, offset: 576)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3793, file: !857, line: 257, baseType: !20, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3793, file: !857, line: 258, baseType: !20, size: 64, offset: 704)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3793, file: !857, line: 260, baseType: !3808, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !857, line: 156, size: 192, elements: !3810)
!3810 = !{!3811, !3812, !3814}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3809, file: !857, line: 157, baseType: !3808, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3809, file: !857, line: 158, baseType: !3813, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3809, file: !857, line: 162, baseType: !60, size: 32, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3793, file: !857, line: 262, baseType: !3813, size: 64, offset: 832)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3793, file: !857, line: 264, baseType: !60, size: 32, offset: 896)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3793, file: !857, line: 268, baseType: !60, size: 32, offset: 928)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3793, file: !857, line: 270, baseType: !784, size: 64, offset: 960)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3793, file: !857, line: 274, baseType: !118, size: 16, offset: 1024)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3793, file: !857, line: 275, baseType: !885, size: 8, offset: 1040)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3793, file: !857, line: 276, baseType: !887, size: 8, offset: 1048)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3793, file: !857, line: 280, baseType: !891, size: 64, offset: 1088)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3793, file: !857, line: 289, baseType: !894, size: 64, offset: 1152)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3793, file: !857, line: 297, baseType: !22, size: 64, offset: 1216)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3793, file: !857, line: 298, baseType: !22, size: 64, offset: 1280)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3793, file: !857, line: 299, baseType: !22, size: 64, offset: 1344)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3793, file: !857, line: 300, baseType: !22, size: 64, offset: 1408)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3793, file: !857, line: 302, baseType: !119, size: 64, offset: 1472)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3793, file: !857, line: 303, baseType: !60, size: 32, offset: 1536)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3793, file: !857, line: 305, baseType: !902, size: 160, offset: 1568)
!3831 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !910, line: 57, baseType: !784)
!3832 = !{!3833, !3834, !3835, !3836}
!3833 = !DILocalVariable(name: "fp", arg: 1, scope: !3787, file: !3788, line: 28, type: !3791)
!3834 = !DILocalVariable(name: "offset", arg: 2, scope: !3787, file: !3788, line: 28, type: !3831)
!3835 = !DILocalVariable(name: "whence", arg: 3, scope: !3787, file: !3788, line: 28, type: !60)
!3836 = !DILocalVariable(name: "pos", scope: !3837, file: !3788, line: 116, type: !3831)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !3788, line: 112, column: 5)
!3838 = distinct !DILexicalBlock(scope: !3787, file: !3788, line: 51, column: 7)
!3839 = !DILocation(line: 28, column: 15, scope: !3787)
!3840 = !DILocation(line: 28, column: 25, scope: !3787)
!3841 = !DILocation(line: 28, column: 37, scope: !3787)
!3842 = !DILocation(line: 51, column: 11, scope: !3838)
!3843 = !DILocation(line: 51, column: 31, scope: !3838)
!3844 = !DILocation(line: 51, column: 24, scope: !3838)
!3845 = !DILocation(line: 52, column: 7, scope: !3838)
!3846 = !DILocation(line: 52, column: 14, scope: !3838)
!3847 = !DILocation(line: 52, column: 35, scope: !3838)
!3848 = !{!957, !592, i64 32}
!3849 = !DILocation(line: 52, column: 28, scope: !3838)
!3850 = !DILocation(line: 53, column: 7, scope: !3838)
!3851 = !DILocation(line: 53, column: 14, scope: !3838)
!3852 = !{!957, !592, i64 72}
!3853 = !DILocation(line: 53, column: 28, scope: !3838)
!3854 = !DILocation(line: 51, column: 7, scope: !3787)
!3855 = !DILocation(line: 116, column: 26, scope: !3837)
!3856 = !DILocation(line: 116, column: 19, scope: !3837)
!3857 = !DILocation(line: 116, column: 13, scope: !3837)
!3858 = !DILocation(line: 117, column: 15, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3837, file: !3788, line: 117, column: 11)
!3860 = !DILocation(line: 117, column: 11, scope: !3837)
!3861 = !DILocation(line: 127, column: 11, scope: !3837)
!3862 = !DILocation(line: 127, column: 18, scope: !3837)
!3863 = !DILocation(line: 128, column: 11, scope: !3837)
!3864 = !DILocation(line: 128, column: 19, scope: !3837)
!3865 = !{!957, !958, i64 144}
!3866 = !DILocation(line: 159, column: 7, scope: !3837)
!3867 = !DILocation(line: 161, column: 10, scope: !3787)
!3868 = !DILocation(line: 161, column: 3, scope: !3787)
!3869 = !DILocation(line: 162, column: 1, scope: !3787)
