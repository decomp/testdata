; ModuleID = 'coreutils-8.27/src/tsort.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.item = type { i8*, %struct.item*, %struct.item*, i32, i64, %struct.item*, %struct.successor* }
%struct.successor = type { %struct.item*, %struct.successor* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.tokenbuffer = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"Usage: %s [OPTION] [FILE]\0AWrite totally ordered list consistent with the partial ordering in FILE.\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"tsort\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Mark Kettenis\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"len != 0\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"src/tsort.c\00", align 1
@__PRETTY_FUNCTION__.tsort = private unnamed_addr constant [26 x i8] c"_Bool tsort(const char *)\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@__PRETTY_FUNCTION__.search_item = private unnamed_addr constant [54 x i8] c"struct item *search_item(struct item *, const char *)\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"!STREQ (str, s->str)\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"!STREQ (str, p->str)\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"%s: input contains an odd number of tokens\00", align 1
@n_strings = internal unnamed_addr global i64 0, align 8, !dbg !0
@head = internal unnamed_addr global %struct.item* null, align 8, !dbg !57
@zeros = internal unnamed_addr global %struct.item* null, align 8, !dbg !75
@.str.35 = private unnamed_addr constant [27 x i8] c"%s: input contains a loop:\00", align 1
@loop = internal unnamed_addr global %struct.item* null, align 8, !dbg !77
@.str.36 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), align 8, !dbg !79
@.str.13 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !85
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.16 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.17 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !94
@.str.40 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.44, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.45, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !101
@.str.1.44 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.45 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !119
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !127
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !155
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !162
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !175
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.tokenbuffer* @slotvec0, align 8, !dbg !182
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !189
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !177
@slotvec0 = internal global %struct.tokenbuffer { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !191
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.79 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.92 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.93 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.94 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.95 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.96 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !197
@.str.1.109 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.126 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !206
@.str.3.130 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.131 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.132 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.133 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.134 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !623 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !627, metadata !628), !dbg !629
  %2 = icmp eq i32 %0, 0, !dbg !630
  br i1 %2, label %8, label %3, !dbg !632

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !633, !tbaa !635
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !633
  %6 = load i8*, i8** @program_name, align 8, !dbg !633, !tbaa !635
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !633
  br label %39, !dbg !633

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !639
  %10 = load i8*, i8** @program_name, align 8, !dbg !639, !tbaa !635
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !639
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !641
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !641, !tbaa !635
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !641
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !646
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !646, !tbaa !635
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !646
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !647
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !647, !tbaa !635
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !647
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !648
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !648, !tbaa !635
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !648
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !45, metadata !628) #10, !dbg !649
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !45, metadata !628) #10, !dbg !649
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !651
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !651
  %26 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !652
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !53, metadata !628) #10, !dbg !653
  %27 = icmp eq i8* %26, null, !dbg !654
  br i1 %27, label %34, label %28, !dbg !656

; <label>:28:                                     ; preds = %8
  %29 = tail call i32 @strncmp(i8* nonnull %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #14, !dbg !657
  %30 = icmp eq i32 %29, 0, !dbg !657
  br i1 %30, label %34, label %31, !dbg !658

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !659
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !659
  br label %34, !dbg !661

; <label>:34:                                     ; preds = %8, %28, %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !662
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !662
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !663
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #10, !dbg !663
  br label %39

; <label>:39:                                     ; preds = %34, %3
  tail call void @exit(i32 %0) #15, !dbg !664
  unreachable, !dbg !664
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !665 {
  %3 = alloca %struct.tokenbuffer, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !670, metadata !628), !dbg !673
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !671, metadata !628), !dbg !674
  %4 = load i8*, i8** %1, align 8, !dbg !675, !tbaa !635
  tail call void @set_program_name(i8* %4) #10, !dbg !676
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !677
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !678
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !679
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !680
  %9 = load i8*, i8** @Version, align 8, !dbg !681, !tbaa !635
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %9, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* null) #10, !dbg !682
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !683
  %11 = icmp eq i32 %10, -1, !dbg !685
  br i1 %11, label %13, label %12, !dbg !686

; <label>:12:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !687
  unreachable, !dbg !687

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* @optind, align 4, !dbg !688, !tbaa !690
  %15 = sub nsw i32 %0, %14, !dbg !692
  %16 = icmp sgt i32 %15, 1, !dbg !693
  br i1 %16, label %17, label %25, !dbg !694

; <label>:17:                                     ; preds = %13
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !695
  %19 = load i32, i32* @optind, align 4, !dbg !697, !tbaa !690
  %20 = add nsw i32 %19, 1, !dbg !698
  %21 = sext i32 %20 to i64, !dbg !699
  %22 = getelementptr inbounds i8*, i8** %1, i64 %21, !dbg !699
  %23 = load i8*, i8** %22, align 8, !dbg !699, !tbaa !635
  %24 = tail call i8* @quote(i8* %23) #10, !dbg !700
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %18, i8* %24) #10, !dbg !701
  tail call void @usage(i32 1) #16, !dbg !702
  unreachable, !dbg !702

; <label>:25:                                     ; preds = %13
  %26 = icmp eq i32 %14, %0, !dbg !703
  br i1 %26, label %31, label %27, !dbg !704

; <label>:27:                                     ; preds = %25
  %28 = sext i32 %14 to i64, !dbg !705
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28, !dbg !705
  %30 = load i8*, i8** %29, align 8, !dbg !705, !tbaa !635
  br label %31, !dbg !704

; <label>:31:                                     ; preds = %25, %27
  %32 = phi i8* [ %30, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %25 ], !dbg !704
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !706, metadata !628) #10, !dbg !728
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !711, metadata !628) #10, !dbg !730
  tail call void @llvm.dbg.value(metadata %struct.item* null, i64 0, metadata !713, metadata !628) #10, !dbg !731
  tail call void @llvm.dbg.value(metadata %struct.item* null, i64 0, metadata !714, metadata !628) #10, !dbg !732
  %33 = bitcast %struct.tokenbuffer* %3 to i8*, !dbg !733
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %33) #10, !dbg !733
  %34 = tail call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #14, !dbg !734
  %35 = icmp eq i32 %34, 0, !dbg !734
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !735, metadata !628) #10, !dbg !741
  %36 = tail call noalias i8* @xmalloc(i64 56) #10, !dbg !743
  %37 = bitcast i8* %36 to %struct.item*, !dbg !743
  tail call void @llvm.dbg.value(metadata %struct.item* %37, i64 0, metadata !740, metadata !628) #10, !dbg !744
  %38 = getelementptr inbounds i8, i8* %36, i64 32, !dbg !745
  tail call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 24, i32 8, i1 false) #10, !dbg !746
  tail call void @llvm.dbg.value(metadata %struct.item* %37, i64 0, metadata !712, metadata !628) #10, !dbg !747
  tail call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 28, i32 8, i1 false) #10, !dbg !748
  br i1 %35, label %47, label %39, !dbg !749

; <label>:39:                                     ; preds = %31
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !751, !tbaa !635
  %41 = tail call %struct._IO_FILE* @freopen_safer(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %struct._IO_FILE* %40) #10, !dbg !752
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !752
  br i1 %42, label %43, label %47, !dbg !753

; <label>:43:                                     ; preds = %39
  %44 = tail call i32* @__errno_location() #17, !dbg !754
  %45 = load i32, i32* %44, align 4, !dbg !754, !tbaa !690
  %46 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #10, !dbg !754
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %46) #10, !dbg !754
  unreachable, !dbg !754

; <label>:47:                                     ; preds = %39, %31
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !755, !tbaa !635
  tail call void @fadvise(%struct._IO_FILE* %48, i32 2) #10, !dbg !756
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %3, i64 0, metadata !715, metadata !628) #10, !dbg !757
  call void @init_tokenbuffer(%struct.tokenbuffer* nonnull %3) #10, !dbg !758
  %49 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 1
  %50 = icmp eq i8* %36, null
  %51 = getelementptr inbounds i8, i8* %36, i64 16
  %52 = bitcast i8* %51 to %struct.item**
  %53 = bitcast i8* %51 to i8**
  br label %54, !dbg !759

; <label>:54:                                     ; preds = %232, %47
  %55 = phi %struct.item* [ null, %47 ], [ %233, %232 ]
  call void @llvm.dbg.value(metadata %struct.item* %55, i64 0, metadata !713, metadata !628) #10, !dbg !731
  call void @llvm.dbg.value(metadata %struct.item* %55, i64 0, metadata !714, metadata !628) #10, !dbg !732
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !760, !tbaa !635
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %3, i64 0, metadata !715, metadata !628) #10, !dbg !757
  %57 = call i64 @readtoken(%struct._IO_FILE* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3, %struct.tokenbuffer* nonnull %3) #10, !dbg !761
  call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !723, metadata !628) #10, !dbg !762
  switch i64 %57, label %59 [
    i64 -1, label %234
    i64 0, label %58
  ], !dbg !763

; <label>:58:                                     ; preds = %54
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 462, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.tsort, i64 0, i64 0)) #15, !dbg !764
  unreachable, !dbg !764

; <label>:59:                                     ; preds = %54
  %60 = load i8*, i8** %49, align 8, !dbg !767, !tbaa !768
  call void @llvm.dbg.value(metadata %struct.item* %37, i64 0, metadata !771, metadata !628) #10, !dbg !783
  call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !776, metadata !628) #10, !dbg !785
  br i1 %50, label %61, label %62, !dbg !786

; <label>:61:                                     ; preds = %59
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 133, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #15, !dbg !788
  unreachable, !dbg !788

; <label>:62:                                     ; preds = %59
  %63 = load %struct.item*, %struct.item** %52, align 8, !dbg !790, !tbaa !792
  %64 = icmp eq %struct.item* %63, null, !dbg !794
  br i1 %64, label %65, label %76, !dbg !795

; <label>:65:                                     ; preds = %62
  call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !735, metadata !628) #10, !dbg !796
  %66 = call noalias i8* @xmalloc(i64 56) #10, !dbg !798
  %67 = bitcast i8* %66 to %struct.item*, !dbg !798
  call void @llvm.dbg.value(metadata %struct.item* %67, i64 0, metadata !740, metadata !628) #10, !dbg !799
  %68 = icmp eq i8* %60, null, !dbg !800
  br i1 %68, label %71, label %69, !dbg !800

; <label>:69:                                     ; preds = %65
  %70 = call noalias i8* @xstrdup(i8* nonnull %60) #10, !dbg !801
  br label %71, !dbg !800

; <label>:71:                                     ; preds = %69, %65
  %72 = phi i8* [ %70, %69 ], [ null, %65 ], !dbg !800
  %73 = bitcast i8* %66 to i8**, !dbg !802
  store i8* %72, i8** %73, align 8, !dbg !803, !tbaa !804
  %74 = getelementptr inbounds i8, i8* %66, i64 8, !dbg !805
  %75 = getelementptr inbounds i8, i8* %66, i64 32, !dbg !806
  call void @llvm.memset.p0i8.i64(i8* %74, i8 0, i64 20, i32 8, i1 false) #10, !dbg !807
  call void @llvm.memset.p0i8.i64(i8* %75, i8 0, i64 24, i32 8, i1 false) #10, !dbg !808
  store i8* %66, i8** %53, align 8, !dbg !809, !tbaa !792
  br label %210, !dbg !810

; <label>:76:                                     ; preds = %62
  call void @llvm.dbg.value(metadata %struct.item* %37, i64 0, metadata !781, metadata !628) #10, !dbg !811
  call void @llvm.dbg.value(metadata %struct.item* %63, i64 0, metadata !777, metadata !628) #10, !dbg !812
  call void @llvm.dbg.value(metadata %struct.item* %63, i64 0, metadata !780, metadata !628) #10, !dbg !813
  call void @llvm.dbg.value(metadata %struct.item* %37, i64 0, metadata !781, metadata !628) #10, !dbg !811
  call void @llvm.dbg.value(metadata %struct.item* %63, i64 0, metadata !780, metadata !628) #10, !dbg !813
  call void @llvm.dbg.value(metadata %struct.item* %63, i64 0, metadata !777, metadata !628) #10, !dbg !812
  %77 = getelementptr inbounds %struct.item, %struct.item* %63, i64 0, i32 0, !dbg !814
  %78 = load i8*, i8** %77, align 8, !dbg !814, !tbaa !804
  %79 = call i32 @strcmp(i8* %60, i8* %78) #14, !dbg !816
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !782, metadata !628) #10, !dbg !817
  %80 = icmp eq i32 %79, 0, !dbg !818
  br i1 %80, label %210, label %81, !dbg !820

; <label>:81:                                     ; preds = %76
  br label %82, !dbg !821

; <label>:82:                                     ; preds = %81, %200
  %83 = phi i32 [ %208, %200 ], [ %79, %81 ]
  %84 = phi %struct.item* [ %205, %200 ], [ %37, %81 ]
  %85 = phi %struct.item* [ %204, %200 ], [ %63, %81 ]
  %86 = phi %struct.item* [ %91, %200 ], [ %63, %81 ]
  call void @llvm.dbg.value(metadata %struct.item* %86, i64 0, metadata !777, metadata !628) #10, !dbg !812
  call void @llvm.dbg.value(metadata %struct.item* %85, i64 0, metadata !780, metadata !628) #10, !dbg !813
  call void @llvm.dbg.value(metadata %struct.item* %84, i64 0, metadata !781, metadata !628) #10, !dbg !811
  %87 = icmp slt i32 %83, 0, !dbg !821
  %88 = getelementptr inbounds %struct.item, %struct.item* %86, i64 0, i32 1, !dbg !823
  call void @llvm.dbg.value(metadata %struct.item** %88, i64 0, metadata !778, metadata !824) #10, !dbg !825
  %89 = getelementptr inbounds %struct.item, %struct.item* %86, i64 0, i32 2, !dbg !826
  call void @llvm.dbg.value(metadata %struct.item** %89, i64 0, metadata !778, metadata !824) #10, !dbg !825
  %90 = select i1 %87, %struct.item** %88, %struct.item** %89, !dbg !827
  %91 = load %struct.item*, %struct.item** %90, align 8, !tbaa !635
  call void @llvm.dbg.value(metadata %struct.item* %91, i64 0, metadata !778, metadata !628) #10, !dbg !825
  %92 = icmp eq %struct.item* %91, null, !dbg !828
  br i1 %92, label %93, label %200, !dbg !830

; <label>:93:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !735, metadata !628) #10, !dbg !831
  %94 = call noalias i8* @xmalloc(i64 56) #10, !dbg !834
  %95 = bitcast i8* %94 to %struct.item*, !dbg !834
  call void @llvm.dbg.value(metadata %struct.item* %95, i64 0, metadata !740, metadata !628) #10, !dbg !835
  %96 = icmp eq i8* %60, null, !dbg !836
  br i1 %96, label %99, label %97, !dbg !836

; <label>:97:                                     ; preds = %93
  %98 = call noalias i8* @xstrdup(i8* nonnull %60) #10, !dbg !837
  br label %99, !dbg !836

; <label>:99:                                     ; preds = %97, %93
  %100 = phi i8* [ %98, %97 ], [ null, %93 ], !dbg !836
  %101 = bitcast i8* %94 to i8**, !dbg !838
  store i8* %100, i8** %101, align 8, !dbg !839, !tbaa !804
  %102 = getelementptr inbounds i8, i8* %94, i64 8, !dbg !840
  %103 = getelementptr inbounds i8, i8* %94, i64 32, !dbg !841
  call void @llvm.memset.p0i8.i64(i8* %102, i8 0, i64 20, i32 8, i1 false) #10, !dbg !842
  call void @llvm.memset.p0i8.i64(i8* %103, i8 0, i64 24, i32 8, i1 false) #10, !dbg !843
  call void @llvm.dbg.value(metadata %struct.item* %95, i64 0, metadata !778, metadata !628) #10, !dbg !825
  %104 = bitcast %struct.item** %90 to i8**
  store i8* %94, i8** %104, align 8, !tbaa !635
  %105 = getelementptr inbounds %struct.item, %struct.item* %85, i64 0, i32 0, !dbg !844
  %106 = load i8*, i8** %105, align 8, !dbg !844, !tbaa !804
  %107 = call i32 @strcmp(i8* %60, i8* %106) #14, !dbg !844
  %108 = icmp eq i32 %107, 0, !dbg !844
  br i1 %108, label %109, label %110, !dbg !847

; <label>:109:                                    ; preds = %99
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 169, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #15, !dbg !844
  unreachable, !dbg !844

; <label>:110:                                    ; preds = %99
  %111 = icmp slt i32 %107, 0, !dbg !848
  %112 = getelementptr inbounds %struct.item, %struct.item* %85, i64 0, i32 2, !dbg !850
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !782, metadata !628) #10, !dbg !817
  %113 = getelementptr inbounds %struct.item, %struct.item* %85, i64 0, i32 1, !dbg !852
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !782, metadata !628) #10, !dbg !817
  %114 = select i1 %111, %struct.item** %113, %struct.item** %112, !dbg !854
  %115 = ashr i32 %107, 31, !dbg !854
  %116 = or i32 %115, 1, !dbg !854
  %117 = load %struct.item*, %struct.item** %114, align 8, !tbaa !635
  call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !782, metadata !628) #10, !dbg !817
  call void @llvm.dbg.value(metadata %struct.item* %117, i64 0, metadata !779, metadata !628) #10, !dbg !855
  call void @llvm.dbg.value(metadata %struct.item* %117, i64 0, metadata !777, metadata !628) #10, !dbg !812
  call void @llvm.dbg.value(metadata %struct.item* %117, i64 0, metadata !777, metadata !628) #10, !dbg !812
  %118 = icmp eq %struct.item* %117, %95, !dbg !856
  br i1 %118, label %138, label %119, !dbg !857

; <label>:119:                                    ; preds = %110
  br label %120, !dbg !858

; <label>:120:                                    ; preds = %119, %134
  %121 = phi %struct.item* [ %136, %134 ], [ %117, %119 ]
  call void @llvm.dbg.value(metadata %struct.item* %121, i64 0, metadata !777, metadata !628) #10, !dbg !812
  %122 = getelementptr inbounds %struct.item, %struct.item* %121, i64 0, i32 0, !dbg !858
  %123 = load i8*, i8** %122, align 8, !dbg !858, !tbaa !804
  %124 = call i32 @strcmp(i8* %60, i8* %123) #14, !dbg !858
  %125 = icmp eq i32 %124, 0, !dbg !858
  br i1 %125, label %126, label %127, !dbg !862

; <label>:126:                                    ; preds = %120
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 183, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #15, !dbg !858
  unreachable, !dbg !858

; <label>:127:                                    ; preds = %120
  %128 = icmp slt i32 %124, 0, !dbg !863
  %129 = getelementptr inbounds %struct.item, %struct.item* %121, i64 0, i32 3
  br i1 %128, label %130, label %132, !dbg !865

; <label>:130:                                    ; preds = %127
  store i32 -1, i32* %129, align 8, !dbg !866, !tbaa !868
  %131 = getelementptr inbounds %struct.item, %struct.item* %121, i64 0, i32 1, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item** %131, i64 0, metadata !777, metadata !824) #10, !dbg !812
  br label %134, !dbg !870

; <label>:132:                                    ; preds = %127
  store i32 1, i32* %129, align 8, !dbg !871, !tbaa !868
  %133 = getelementptr inbounds %struct.item, %struct.item* %121, i64 0, i32 2, !dbg !873
  call void @llvm.dbg.value(metadata %struct.item** %133, i64 0, metadata !777, metadata !824) #10, !dbg !812
  br label %134

; <label>:134:                                    ; preds = %132, %130
  %135 = phi %struct.item** [ %131, %130 ], [ %133, %132 ]
  %136 = load %struct.item*, %struct.item** %135, align 8, !tbaa !635
  call void @llvm.dbg.value(metadata %struct.item* %136, i64 0, metadata !777, metadata !628) #10, !dbg !812
  call void @llvm.dbg.value(metadata %struct.item* %136, i64 0, metadata !777, metadata !628) #10, !dbg !812
  %137 = icmp eq %struct.item* %136, %95, !dbg !856
  br i1 %137, label %138, label %120, !dbg !857, !llvm.loop !874

; <label>:138:                                    ; preds = %134, %110
  %139 = getelementptr inbounds %struct.item, %struct.item* %85, i64 0, i32 3, !dbg !877
  %140 = load i32, i32* %139, align 8, !dbg !877, !tbaa !868
  %141 = icmp eq i32 %140, 0, !dbg !879
  br i1 %141, label %145, label %142, !dbg !880

; <label>:142:                                    ; preds = %138
  %143 = sub nsw i32 0, %116, !dbg !881
  %144 = icmp eq i32 %140, %143, !dbg !882
  br i1 %144, label %145, label %147, !dbg !883

; <label>:145:                                    ; preds = %142, %138
  %146 = add nsw i32 %140, %116, !dbg !884
  store i32 %146, i32* %139, align 8, !dbg !884, !tbaa !868
  br label %210, !dbg !886

; <label>:147:                                    ; preds = %142
  %148 = getelementptr inbounds %struct.item, %struct.item* %117, i64 0, i32 3, !dbg !887
  %149 = load i32, i32* %148, align 8, !dbg !887, !tbaa !868
  %150 = icmp eq i32 %149, %116, !dbg !889
  br i1 %150, label %151, label %158, !dbg !890

; <label>:151:                                    ; preds = %147
  call void @llvm.dbg.value(metadata %struct.item* %117, i64 0, metadata !777, metadata !628) #10, !dbg !812
  %152 = getelementptr inbounds %struct.item, %struct.item* %117, i64 0, i32 1, !dbg !891
  %153 = getelementptr inbounds %struct.item, %struct.item* %117, i64 0, i32 2, !dbg !895
  %154 = select i1 %111, %struct.item** %153, %struct.item** %152, !dbg !897
  %155 = bitcast %struct.item** %154 to i64*
  %156 = load i64, i64* %155, align 8, !tbaa !635
  %157 = bitcast %struct.item** %114 to i64*
  store i64 %156, i64* %157, align 8, !tbaa !635
  store %struct.item* %85, %struct.item** %154, align 8, !tbaa !635
  store i32 0, i32* %148, align 8, !dbg !898, !tbaa !868
  br label %191, !dbg !899

; <label>:158:                                    ; preds = %147
  br i1 %111, label %159, label %167, !dbg !900

; <label>:159:                                    ; preds = %158
  %160 = getelementptr inbounds %struct.item, %struct.item* %117, i64 0, i32 2, !dbg !902
  %161 = load %struct.item*, %struct.item** %160, align 8, !dbg !902, !tbaa !792
  call void @llvm.dbg.value(metadata %struct.item* %161, i64 0, metadata !777, metadata !628) #10, !dbg !812
  %162 = getelementptr inbounds %struct.item, %struct.item* %161, i64 0, i32 1, !dbg !905
  %163 = bitcast %struct.item** %162 to i64*, !dbg !905
  %164 = load i64, i64* %163, align 8, !dbg !905, !tbaa !906
  %165 = bitcast %struct.item** %160 to i64*, !dbg !907
  store i64 %164, i64* %165, align 8, !dbg !907, !tbaa !792
  store %struct.item* %117, %struct.item** %162, align 8, !dbg !908, !tbaa !906
  %166 = getelementptr inbounds %struct.item, %struct.item* %161, i64 0, i32 2, !dbg !909
  br label %175, !dbg !910

; <label>:167:                                    ; preds = %158
  %168 = getelementptr inbounds %struct.item, %struct.item* %117, i64 0, i32 1, !dbg !911
  %169 = load %struct.item*, %struct.item** %168, align 8, !dbg !911, !tbaa !906
  call void @llvm.dbg.value(metadata %struct.item* %169, i64 0, metadata !777, metadata !628) #10, !dbg !812
  %170 = getelementptr inbounds %struct.item, %struct.item* %169, i64 0, i32 2, !dbg !913
  %171 = bitcast %struct.item** %170 to i64*, !dbg !913
  %172 = load i64, i64* %171, align 8, !dbg !913, !tbaa !792
  %173 = bitcast %struct.item** %168 to i64*, !dbg !914
  store i64 %172, i64* %173, align 8, !dbg !914, !tbaa !906
  store %struct.item* %117, %struct.item** %170, align 8, !dbg !915, !tbaa !792
  %174 = getelementptr inbounds %struct.item, %struct.item* %169, i64 0, i32 1, !dbg !916
  br label %175

; <label>:175:                                    ; preds = %167, %159
  %176 = phi %struct.item** [ %174, %167 ], [ %166, %159 ]
  %177 = phi %struct.item** [ %112, %167 ], [ %113, %159 ]
  %178 = phi %struct.item* [ %169, %167 ], [ %161, %159 ]
  %179 = bitcast %struct.item** %176 to i64*
  %180 = load i64, i64* %179, align 8, !tbaa !635
  %181 = bitcast %struct.item** %177 to i64*
  store i64 %180, i64* %181, align 8, !tbaa !635
  store %struct.item* %85, %struct.item** %176, align 8, !tbaa !635
  call void @llvm.dbg.value(metadata %struct.item* %178, i64 0, metadata !777, metadata !628) #10, !dbg !812
  store i32 0, i32* %139, align 8, !dbg !917, !tbaa !868
  store i32 0, i32* %148, align 8, !dbg !918, !tbaa !868
  %182 = getelementptr inbounds %struct.item, %struct.item* %178, i64 0, i32 3, !dbg !919
  %183 = load i32, i32* %182, align 8, !dbg !919, !tbaa !868
  %184 = icmp eq i32 %183, %116, !dbg !921
  br i1 %184, label %187, label %185, !dbg !922

; <label>:185:                                    ; preds = %175
  %186 = icmp eq i32 %183, %143, !dbg !923
  br i1 %186, label %187, label %191, !dbg !925

; <label>:187:                                    ; preds = %185, %175
  %188 = phi %struct.item* [ %85, %175 ], [ %117, %185 ]
  %189 = phi i32 [ %143, %175 ], [ %116, %185 ]
  %190 = getelementptr inbounds %struct.item, %struct.item* %188, i64 0, i32 3
  store i32 %189, i32* %190, align 8, !tbaa !868
  br label %191, !dbg !926

; <label>:191:                                    ; preds = %187, %185, %151
  %192 = phi %struct.item* [ %117, %151 ], [ %178, %187 ], [ %178, %185 ]
  %193 = phi %struct.item* [ %85, %151 ], [ %178, %187 ], [ %178, %185 ]
  call void @llvm.dbg.value(metadata %struct.item* %192, i64 0, metadata !777, metadata !628) #10, !dbg !812
  %194 = getelementptr inbounds %struct.item, %struct.item* %193, i64 0, i32 3
  store i32 0, i32* %194, align 8, !tbaa !868
  %195 = getelementptr inbounds %struct.item, %struct.item* %84, i64 0, i32 2, !dbg !927
  %196 = load %struct.item*, %struct.item** %195, align 8, !dbg !927, !tbaa !792
  %197 = icmp eq %struct.item* %85, %196, !dbg !929
  %198 = getelementptr inbounds %struct.item, %struct.item* %84, i64 0, i32 1, !dbg !930
  %199 = select i1 %197, %struct.item** %195, %struct.item** %198, !dbg !931
  store %struct.item* %192, %struct.item** %199, align 8, !tbaa !635
  br label %210, !dbg !932

; <label>:200:                                    ; preds = %82
  %201 = getelementptr inbounds %struct.item, %struct.item* %91, i64 0, i32 3, !dbg !933
  %202 = load i32, i32* %201, align 8, !dbg !933, !tbaa !868
  %203 = icmp eq i32 %202, 0, !dbg !935
  call void @llvm.dbg.value(metadata %struct.item* %86, i64 0, metadata !781, metadata !628) #10, !dbg !811
  call void @llvm.dbg.value(metadata %struct.item* %91, i64 0, metadata !780, metadata !628) #10, !dbg !813
  %204 = select i1 %203, %struct.item* %85, %struct.item* %91, !dbg !936
  %205 = select i1 %203, %struct.item* %84, %struct.item* %86, !dbg !936
  call void @llvm.dbg.value(metadata %struct.item* %205, i64 0, metadata !781, metadata !628) #10, !dbg !811
  call void @llvm.dbg.value(metadata %struct.item* %204, i64 0, metadata !780, metadata !628) #10, !dbg !813
  call void @llvm.dbg.value(metadata %struct.item* %91, i64 0, metadata !777, metadata !628) #10, !dbg !812
  call void @llvm.dbg.value(metadata %struct.item* %205, i64 0, metadata !781, metadata !628) #10, !dbg !811
  call void @llvm.dbg.value(metadata %struct.item* %204, i64 0, metadata !780, metadata !628) #10, !dbg !813
  call void @llvm.dbg.value(metadata %struct.item* %91, i64 0, metadata !777, metadata !628) #10, !dbg !812
  %206 = getelementptr inbounds %struct.item, %struct.item* %91, i64 0, i32 0, !dbg !814
  %207 = load i8*, i8** %206, align 8, !dbg !814, !tbaa !804
  %208 = call i32 @strcmp(i8* %60, i8* %207) #14, !dbg !816
  call void @llvm.dbg.value(metadata i32 %208, i64 0, metadata !782, metadata !628) #10, !dbg !817
  %209 = icmp eq i32 %208, 0, !dbg !818
  br i1 %209, label %210, label %82, !dbg !820, !llvm.loop !937

; <label>:210:                                    ; preds = %200, %191, %145, %76, %71
  %211 = phi %struct.item* [ %67, %71 ], [ %95, %145 ], [ %95, %191 ], [ %63, %76 ], [ %91, %200 ]
  call void @llvm.dbg.value(metadata %struct.item* %211, i64 0, metadata !714, metadata !628) #10, !dbg !732
  %212 = icmp eq %struct.item* %55, null, !dbg !940
  br i1 %212, label %232, label %213, !dbg !942

; <label>:213:                                    ; preds = %210
  call void @llvm.dbg.value(metadata %struct.item* %55, i64 0, metadata !943, metadata !628) #10, !dbg !950
  call void @llvm.dbg.value(metadata %struct.item* %211, i64 0, metadata !948, metadata !628) #10, !dbg !953
  %214 = getelementptr inbounds %struct.item, %struct.item* %55, i64 0, i32 0, !dbg !954
  %215 = load i8*, i8** %214, align 8, !dbg !954, !tbaa !804
  %216 = getelementptr inbounds %struct.item, %struct.item* %211, i64 0, i32 0, !dbg !954
  %217 = load i8*, i8** %216, align 8, !dbg !954, !tbaa !804
  %218 = call i32 @strcmp(i8* %215, i8* %217) #14, !dbg !954
  %219 = icmp eq i32 %218, 0, !dbg !954
  br i1 %219, label %232, label %220, !dbg !956

; <label>:220:                                    ; preds = %213
  %221 = getelementptr inbounds %struct.item, %struct.item* %211, i64 0, i32 4, !dbg !957
  %222 = load i64, i64* %221, align 8, !dbg !959, !tbaa !960
  %223 = add i64 %222, 1, !dbg !959
  store i64 %223, i64* %221, align 8, !dbg !959, !tbaa !960
  %224 = call noalias i8* @xmalloc(i64 16) #10, !dbg !961
  call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !949, metadata !628) #10, !dbg !962
  %225 = bitcast i8* %224 to %struct.item**, !dbg !963
  store %struct.item* %211, %struct.item** %225, align 8, !dbg !964, !tbaa !965
  %226 = getelementptr inbounds %struct.item, %struct.item* %55, i64 0, i32 6, !dbg !967
  %227 = bitcast %struct.successor** %226 to i64*, !dbg !967
  %228 = load i64, i64* %227, align 8, !dbg !967, !tbaa !968
  %229 = getelementptr inbounds i8, i8* %224, i64 8, !dbg !969
  %230 = bitcast i8* %229 to i64*, !dbg !970
  store i64 %228, i64* %230, align 8, !dbg !970, !tbaa !971
  %231 = bitcast %struct.successor** %226 to i8**, !dbg !972
  store i8* %224, i8** %231, align 8, !dbg !972, !tbaa !968
  br label %232, !dbg !973

; <label>:232:                                    ; preds = %220, %213, %210
  %233 = phi %struct.item* [ null, %220 ], [ null, %213 ], [ %211, %210 ]
  br label %54, !dbg !731, !llvm.loop !974

; <label>:234:                                    ; preds = %54
  call void @llvm.dbg.value(metadata %struct.item* %55, i64 0, metadata !713, metadata !628) #10, !dbg !731
  call void @llvm.dbg.value(metadata %struct.item* %55, i64 0, metadata !714, metadata !628) #10, !dbg !732
  %235 = icmp eq %struct.item* %55, null, !dbg !977
  br i1 %235, label %239, label %236, !dbg !979

; <label>:236:                                    ; preds = %234
  %237 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !980
  %238 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #10, !dbg !980
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %237, i8* %238) #10, !dbg !980
  unreachable, !dbg !980

; <label>:239:                                    ; preds = %234
  call void @llvm.dbg.value(metadata %struct.item* %37, i64 0, metadata !981, metadata !628) #10, !dbg !990
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @count_items, i64 0, metadata !989, metadata !628) #10, !dbg !992
  %240 = load %struct.item*, %struct.item** %52, align 8, !dbg !993, !tbaa !792
  %241 = icmp eq %struct.item* %240, null, !dbg !995
  br i1 %241, label %244, label %242, !dbg !996

; <label>:242:                                    ; preds = %239
  %243 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %240, i1 (%struct.item*)* nonnull @count_items) #10, !dbg !997
  br label %244, !dbg !997

; <label>:244:                                    ; preds = %242, %239
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !711, metadata !628) #10, !dbg !730
  %245 = load i64, i64* @n_strings, align 8, !dbg !998, !tbaa !999
  %246 = icmp eq i64 %245, 0, !dbg !1000
  br i1 %246, label %309, label %247, !dbg !1001

; <label>:247:                                    ; preds = %244
  br label %248, !dbg !1002

; <label>:248:                                    ; preds = %247, %306
  %249 = phi i32 [ 0, %306 ], [ 1, %247 ]
  call void @llvm.dbg.value(metadata %struct.item* %37, i64 0, metadata !981, metadata !628) #10, !dbg !1004
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @scan_zeros, i64 0, metadata !989, metadata !628) #10, !dbg !1005
  br i1 %241, label %252, label %250, !dbg !1002

; <label>:250:                                    ; preds = %248
  %251 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %240, i1 (%struct.item*)* nonnull @scan_zeros) #10, !dbg !1006
  br label %252, !dbg !1006

; <label>:252:                                    ; preds = %250, %248
  %253 = load %struct.item*, %struct.item** @head, align 8, !dbg !1007, !tbaa !635
  %254 = icmp eq %struct.item* %253, null, !dbg !1008
  br i1 %254, label %256, label %255, !dbg !1008

; <label>:255:                                    ; preds = %252
  br label %258, !dbg !1009

; <label>:256:                                    ; preds = %252
  %257 = load i64, i64* @n_strings, align 8, !dbg !1010, !tbaa !999
  br label %294, !dbg !1008

; <label>:258:                                    ; preds = %255, %287
  %259 = phi %struct.item* [ %292, %287 ], [ %253, %255 ]
  %260 = getelementptr inbounds %struct.item, %struct.item* %259, i64 0, i32 6, !dbg !1009
  %261 = load %struct.successor*, %struct.successor** %260, align 8, !dbg !1009, !tbaa !968
  call void @llvm.dbg.value(metadata %struct.successor* %261, i64 0, metadata !725, metadata !628) #10, !dbg !1012
  %262 = getelementptr inbounds %struct.item, %struct.item* %259, i64 0, i32 0, !dbg !1013
  %263 = load i8*, i8** %262, align 8, !dbg !1013, !tbaa !804
  %264 = call i32 @puts(i8* %263) #10, !dbg !1014
  %265 = load %struct.item*, %struct.item** @head, align 8, !dbg !1015, !tbaa !635
  %266 = getelementptr inbounds %struct.item, %struct.item* %265, i64 0, i32 0, !dbg !1016
  store i8* null, i8** %266, align 8, !dbg !1017, !tbaa !804
  %267 = load i64, i64* @n_strings, align 8, !dbg !1018, !tbaa !999
  %268 = add i64 %267, -1, !dbg !1018
  store i64 %268, i64* @n_strings, align 8, !dbg !1018, !tbaa !999
  call void @llvm.dbg.value(metadata %struct.successor* %261, i64 0, metadata !725, metadata !628) #10, !dbg !1012
  %269 = icmp eq %struct.successor* %261, null, !dbg !1019
  br i1 %269, label %287, label %270, !dbg !1019

; <label>:270:                                    ; preds = %258
  br label %271, !dbg !1020

; <label>:271:                                    ; preds = %270, %283
  %272 = phi %struct.successor* [ %285, %283 ], [ %261, %270 ]
  call void @llvm.dbg.value(metadata %struct.successor* %272, i64 0, metadata !725, metadata !628) #10, !dbg !1012
  %273 = getelementptr inbounds %struct.successor, %struct.successor* %272, i64 0, i32 0, !dbg !1020
  %274 = load %struct.item*, %struct.item** %273, align 8, !dbg !1020, !tbaa !965
  %275 = getelementptr inbounds %struct.item, %struct.item* %274, i64 0, i32 4, !dbg !1022
  %276 = load i64, i64* %275, align 8, !dbg !1023, !tbaa !960
  %277 = add i64 %276, -1, !dbg !1023
  store i64 %277, i64* %275, align 8, !dbg !1023, !tbaa !960
  %278 = icmp eq i64 %277, 0, !dbg !1024
  br i1 %278, label %279, label %283, !dbg !1026

; <label>:279:                                    ; preds = %271
  %280 = ptrtoint %struct.item* %274 to i64, !dbg !1026
  %281 = load %struct.item*, %struct.item** @zeros, align 8, !dbg !1027, !tbaa !635
  %282 = getelementptr inbounds %struct.item, %struct.item* %281, i64 0, i32 5, !dbg !1029
  store %struct.item* %274, %struct.item** %282, align 8, !dbg !1030, !tbaa !1031
  store i64 %280, i64* bitcast (%struct.item** @zeros to i64*), align 8, !dbg !1032, !tbaa !635
  br label %283, !dbg !1033

; <label>:283:                                    ; preds = %279, %271
  %284 = getelementptr inbounds %struct.successor, %struct.successor* %272, i64 0, i32 1, !dbg !1034
  %285 = load %struct.successor*, %struct.successor** %284, align 8, !dbg !1034, !tbaa !971
  call void @llvm.dbg.value(metadata %struct.successor* %285, i64 0, metadata !725, metadata !628) #10, !dbg !1012
  call void @llvm.dbg.value(metadata %struct.successor* %285, i64 0, metadata !725, metadata !628) #10, !dbg !1012
  %286 = icmp eq %struct.successor* %285, null, !dbg !1019
  br i1 %286, label %287, label %271, !dbg !1019, !llvm.loop !1035

; <label>:287:                                    ; preds = %283, %258
  %288 = load %struct.item*, %struct.item** @head, align 8, !dbg !1038, !tbaa !635
  %289 = getelementptr inbounds %struct.item, %struct.item* %288, i64 0, i32 5, !dbg !1039
  %290 = bitcast %struct.item** %289 to i64*, !dbg !1039
  %291 = load i64, i64* %290, align 8, !dbg !1039, !tbaa !1031
  store i64 %291, i64* bitcast (%struct.item** @head to i64*), align 8, !dbg !1040, !tbaa !635
  %292 = inttoptr i64 %291 to %struct.item*
  %293 = icmp eq i64 %291, 0, !dbg !1008
  br i1 %293, label %294, label %258, !dbg !1008, !llvm.loop !1041

; <label>:294:                                    ; preds = %287, %256
  %295 = phi i64 [ %257, %256 ], [ %268, %287 ], !dbg !1010
  %296 = icmp eq i64 %295, 0, !dbg !1044
  br i1 %296, label %309, label %297, !dbg !1045

; <label>:297:                                    ; preds = %294
  %298 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !1046
  %299 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #10, !dbg !1048
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %298, i8* %299) #10, !dbg !1049
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !711, metadata !628) #10, !dbg !730
  br label %300, !dbg !1050, !llvm.loop !1051

; <label>:300:                                    ; preds = %303, %297
  call void @llvm.dbg.value(metadata %struct.item* %37, i64 0, metadata !981, metadata !628) #10, !dbg !1054
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @detect_loop, i64 0, metadata !989, metadata !628) #10, !dbg !1056
  br i1 %241, label %303, label %301, !dbg !1057

; <label>:301:                                    ; preds = %300
  %302 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %240, i1 (%struct.item*)* nonnull @detect_loop) #10, !dbg !1058
  br label %303, !dbg !1058

; <label>:303:                                    ; preds = %301, %300
  %304 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1059, !tbaa !635
  %305 = icmp eq %struct.item* %304, null, !dbg !1060
  br i1 %305, label %306, label %300, !dbg !1060, !llvm.loop !1051

; <label>:306:                                    ; preds = %303
  %307 = load i64, i64* @n_strings, align 8, !dbg !998, !tbaa !999
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !711, metadata !628) #10, !dbg !730
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !711, metadata !628) #10, !dbg !730
  %308 = icmp eq i64 %307, 0, !dbg !1000
  br i1 %308, label %309, label %248, !dbg !1001, !llvm.loop !1061

; <label>:309:                                    ; preds = %306, %294, %244
  %310 = phi i32 [ 1, %244 ], [ 0, %306 ], [ %249, %294 ]
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1064, !tbaa !635
  %312 = call i32 @rpl_fclose(%struct._IO_FILE* %311) #10, !dbg !1066
  %313 = icmp eq i32 %312, 0, !dbg !1067
  br i1 %313, label %323, label %314, !dbg !1068

; <label>:314:                                    ; preds = %309
  %315 = tail call i32* @__errno_location() #17, !dbg !1069
  %316 = load i32, i32* %315, align 4, !dbg !1069, !tbaa !690
  br i1 %35, label %317, label %319, !dbg !1069

; <label>:317:                                    ; preds = %314
  %318 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !1069
  br label %321, !dbg !1069

; <label>:319:                                    ; preds = %314
  %320 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #10, !dbg !1069
  br label %321, !dbg !1069

; <label>:321:                                    ; preds = %319, %317
  %322 = phi i8* [ %318, %317 ], [ %320, %319 ], !dbg !1069
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %316, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %322) #10, !dbg !1069
  unreachable, !dbg !1069

; <label>:323:                                    ; preds = %309
  %324 = and i32 %310, 1, !dbg !1070
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %33) #10, !dbg !1071
  %325 = xor i32 %324, 1, !dbg !1072
  ret i32 %325, !dbg !1073
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

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @count_items(%struct.item* nocapture readnone) #6 !dbg !1074 {
  tail call void @llvm.dbg.value(metadata %struct.item* %0, i64 0, metadata !1076, metadata !628), !dbg !1077
  %2 = load i64, i64* @n_strings, align 8, !dbg !1078, !tbaa !999
  %3 = add i64 %2, 1, !dbg !1078
  store i64 %3, i64* @n_strings, align 8, !dbg !1078, !tbaa !999
  ret i1 false, !dbg !1079
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @recurse_tree(%struct.item*, i1 (%struct.item*)*) unnamed_addr #6 !dbg !1080 {
  tail call void @llvm.dbg.value(metadata %struct.item* %0, i64 0, metadata !1084, metadata !628), !dbg !1086
  tail call void @llvm.dbg.value(metadata i1 (%struct.item*)* %1, i64 0, metadata !1085, metadata !628), !dbg !1087
  %3 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 1, !dbg !1088
  %4 = load %struct.item*, %struct.item** %3, align 8, !dbg !1088, !tbaa !906
  %5 = icmp eq %struct.item* %4, null, !dbg !1090
  br i1 %5, label %6, label %12, !dbg !1091

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 2, !dbg !1092
  %8 = load %struct.item*, %struct.item** %7, align 8, !dbg !1092, !tbaa !792
  %9 = icmp eq %struct.item* %8, null, !dbg !1093
  br i1 %9, label %10, label %14, !dbg !1094

; <label>:10:                                     ; preds = %6
  %11 = tail call zeroext i1 %1(%struct.item* nonnull %0) #10, !dbg !1095
  br label %23, !dbg !1096

; <label>:12:                                     ; preds = %2
  %13 = tail call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %4, i1 (%struct.item*)* %1), !dbg !1097
  br i1 %13, label %23, label %14, !dbg !1101

; <label>:14:                                     ; preds = %6, %12
  %15 = tail call zeroext i1 %1(%struct.item* nonnull %0) #10, !dbg !1102
  br i1 %15, label %23, label %16, !dbg !1104

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 2, !dbg !1105
  %18 = load %struct.item*, %struct.item** %17, align 8, !dbg !1105, !tbaa !792
  %19 = icmp eq %struct.item* %18, null, !dbg !1107
  br i1 %19, label %22, label %20, !dbg !1108

; <label>:20:                                     ; preds = %16
  %21 = tail call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %18, i1 (%struct.item*)* %1), !dbg !1109
  br i1 %21, label %23, label %22, !dbg !1111

; <label>:22:                                     ; preds = %16, %20
  br label %23, !dbg !1112

; <label>:23:                                     ; preds = %20, %14, %12, %22, %10
  %24 = phi i1 [ %11, %10 ], [ false, %22 ], [ true, %12 ], [ true, %14 ], [ true, %20 ]
  ret i1 %24, !dbg !1113
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @scan_zeros(%struct.item*) #6 !dbg !1114 {
  tail call void @llvm.dbg.value(metadata %struct.item* %0, i64 0, metadata !1116, metadata !628), !dbg !1117
  %2 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 4, !dbg !1118
  %3 = load i64, i64* %2, align 8, !dbg !1118, !tbaa !960
  %4 = icmp eq i64 %3, 0, !dbg !1120
  br i1 %4, label %5, label %15, !dbg !1121

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 0, !dbg !1122
  %7 = load i8*, i8** %6, align 8, !dbg !1122, !tbaa !804
  %8 = icmp eq i8* %7, null, !dbg !1123
  br i1 %8, label %15, label %9, !dbg !1124

; <label>:9:                                      ; preds = %5
  %10 = load %struct.item*, %struct.item** @head, align 8, !dbg !1125, !tbaa !635
  %11 = icmp eq %struct.item* %10, null, !dbg !1128
  %12 = load %struct.item*, %struct.item** @zeros, align 8, !dbg !1129
  %13 = getelementptr inbounds %struct.item, %struct.item* %12, i64 0, i32 5, !dbg !1130
  %14 = select i1 %11, %struct.item** @head, %struct.item** %13, !dbg !1131
  store %struct.item* %0, %struct.item** %14, align 8, !tbaa !635
  store %struct.item* %0, %struct.item** @zeros, align 8, !dbg !1132, !tbaa !635
  br label %15, !dbg !1133

; <label>:15:                                     ; preds = %5, %9, %1
  ret i1 false, !dbg !1134
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @detect_loop(%struct.item*) #6 !dbg !1135 {
  tail call void @llvm.dbg.value(metadata %struct.item* %0, i64 0, metadata !1137, metadata !628), !dbg !1153
  %2 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 4, !dbg !1154
  %3 = load i64, i64* %2, align 8, !dbg !1154, !tbaa !960
  %4 = icmp eq i64 %3, 0, !dbg !1155
  br i1 %4, label %66, label %5, !dbg !1156

; <label>:5:                                      ; preds = %1
  %6 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1157, !tbaa !635
  %7 = icmp eq %struct.item* %6, null, !dbg !1158
  br i1 %7, label %8, label %9, !dbg !1159

; <label>:8:                                      ; preds = %5
  store %struct.item* %0, %struct.item** @loop, align 8, !dbg !1160, !tbaa !635
  br label %66, !dbg !1161

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 6, !dbg !1162
  tail call void @llvm.dbg.value(metadata %struct.successor** %10, i64 0, metadata !1138, metadata !628), !dbg !1163
  tail call void @llvm.dbg.value(metadata %struct.successor** %10, i64 0, metadata !1138, metadata !628), !dbg !1163
  %11 = load %struct.successor*, %struct.successor** %10, align 8, !dbg !1164, !tbaa !635
  %12 = icmp eq %struct.successor* %11, null, !dbg !1165
  br i1 %12, label %66, label %13, !dbg !1165

; <label>:13:                                     ; preds = %9
  br label %17, !dbg !1166

; <label>:14:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata %struct.successor** %23, i64 0, metadata !1138, metadata !628), !dbg !1163
  %15 = load %struct.successor*, %struct.successor** %23, align 8, !dbg !1164, !tbaa !635
  %16 = icmp eq %struct.successor* %15, null, !dbg !1165
  br i1 %16, label %66, label %17, !dbg !1165, !llvm.loop !1167

; <label>:17:                                     ; preds = %13, %14
  %18 = phi %struct.successor* [ %15, %14 ], [ %11, %13 ]
  %19 = phi %struct.successor** [ %23, %14 ], [ %10, %13 ]
  tail call void @llvm.dbg.value(metadata %struct.successor** %19, i64 0, metadata !1138, metadata !628), !dbg !1163
  %20 = getelementptr inbounds %struct.successor, %struct.successor* %18, i64 0, i32 0, !dbg !1166
  %21 = load %struct.item*, %struct.item** %20, align 8, !dbg !1166, !tbaa !965
  %22 = icmp eq %struct.item* %21, %6, !dbg !1169
  %23 = getelementptr inbounds %struct.successor, %struct.successor* %18, i64 0, i32 1, !dbg !1170
  tail call void @llvm.dbg.value(metadata %struct.successor** %23, i64 0, metadata !1138, metadata !628), !dbg !1163
  br i1 %22, label %24, label %14, !dbg !1171

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 5, !dbg !1172
  %26 = load %struct.item*, %struct.item** %25, align 8, !dbg !1172, !tbaa !1031
  %27 = icmp eq %struct.item* %26, null, !dbg !1173
  br i1 %27, label %64, label %28, !dbg !1174

; <label>:28:                                     ; preds = %24
  br label %29, !dbg !1175

; <label>:29:                                     ; preds = %28, %49
  %30 = phi %struct.item* [ %51, %49 ], [ %6, %28 ]
  %31 = getelementptr inbounds %struct.item, %struct.item* %30, i64 0, i32 5, !dbg !1175
  %32 = bitcast %struct.item** %31 to i64*, !dbg !1175
  %33 = load i64, i64* %32, align 8, !dbg !1175, !tbaa !1031
  tail call void @llvm.dbg.value(metadata %struct.item** %31, i64 0, metadata !1144, metadata !824), !dbg !1176
  %34 = getelementptr inbounds %struct.item, %struct.item* %30, i64 0, i32 0, !dbg !1177
  %35 = load i8*, i8** %34, align 8, !dbg !1177, !tbaa !804
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %35) #10, !dbg !1178
  %36 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1179, !tbaa !635
  %37 = icmp eq %struct.item* %36, %0, !dbg !1181
  br i1 %37, label %38, label %49, !dbg !1182

; <label>:38:                                     ; preds = %29
  %39 = load %struct.successor*, %struct.successor** %19, align 8, !dbg !1183, !tbaa !635
  %40 = getelementptr inbounds %struct.successor, %struct.successor* %39, i64 0, i32 0, !dbg !1185
  %41 = load %struct.item*, %struct.item** %40, align 8, !dbg !1185, !tbaa !965
  %42 = getelementptr inbounds %struct.item, %struct.item* %41, i64 0, i32 4, !dbg !1186
  %43 = load i64, i64* %42, align 8, !dbg !1187, !tbaa !960
  %44 = add i64 %43, -1, !dbg !1187
  store i64 %44, i64* %42, align 8, !dbg !1187, !tbaa !960
  %45 = getelementptr inbounds %struct.successor, %struct.successor* %39, i64 0, i32 1, !dbg !1188
  %46 = bitcast %struct.successor** %45 to i64*, !dbg !1188
  %47 = load i64, i64* %46, align 8, !dbg !1188, !tbaa !971
  %48 = bitcast %struct.successor** %19 to i64*, !dbg !1189
  store i64 %47, i64* %48, align 8, !dbg !1189, !tbaa !635
  br label %53

; <label>:49:                                     ; preds = %29
  %50 = getelementptr inbounds %struct.item, %struct.item* %36, i64 0, i32 5, !dbg !1190
  store %struct.item* null, %struct.item** %50, align 8, !dbg !1191, !tbaa !1031
  store i64 %33, i64* bitcast (%struct.item** @loop to i64*), align 8, !dbg !1192, !tbaa !635
  %51 = inttoptr i64 %33 to %struct.item*
  %52 = icmp eq i64 %33, 0, !dbg !1193
  br i1 %52, label %53, label %29, !dbg !1193, !llvm.loop !1194

; <label>:53:                                     ; preds = %49, %38
  %54 = phi %struct.item* [ %0, %38 ], [ %51, %49 ], !dbg !1196
  %55 = icmp eq %struct.item* %54, null, !dbg !1197
  br i1 %55, label %66, label %56, !dbg !1197

; <label>:56:                                     ; preds = %53
  br label %57, !dbg !1198

; <label>:57:                                     ; preds = %56, %57
  %58 = phi %struct.item* [ %62, %57 ], [ %54, %56 ]
  %59 = getelementptr inbounds %struct.item, %struct.item* %58, i64 0, i32 5, !dbg !1198
  %60 = bitcast %struct.item** %59 to i64*, !dbg !1198
  %61 = load i64, i64* %60, align 8, !dbg !1198, !tbaa !1031
  tail call void @llvm.dbg.value(metadata %struct.item** %59, i64 0, metadata !1151, metadata !824), !dbg !1199
  store %struct.item* null, %struct.item** %59, align 8, !dbg !1200, !tbaa !1031
  %62 = inttoptr i64 %61 to %struct.item*
  %63 = icmp eq i64 %61, 0, !dbg !1197
  br i1 %63, label %65, label %57, !dbg !1197, !llvm.loop !1201

; <label>:64:                                     ; preds = %24
  store %struct.item* %6, %struct.item** %25, align 8, !dbg !1203, !tbaa !1031
  store %struct.item* %0, %struct.item** @loop, align 8, !dbg !1205, !tbaa !635
  br label %66, !dbg !1206

; <label>:65:                                     ; preds = %57
  store i64 0, i64* bitcast (%struct.item** @loop to i64*), align 8, !dbg !1207, !tbaa !635
  br label %66, !dbg !1197

; <label>:66:                                     ; preds = %14, %9, %53, %65, %8, %1, %64
  %67 = phi i1 [ false, %64 ], [ false, %1 ], [ false, %8 ], [ true, %65 ], [ true, %53 ], [ false, %9 ], [ false, %14 ]
  ret i1 %67, !dbg !1208
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1209 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1211, metadata !628), !dbg !1212
  store i8* %0, i8** @file_name, align 8, !dbg !1213, !tbaa !635
  ret void, !dbg !1214
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1215 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1219, metadata !628), !dbg !1220
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1221, !tbaa !1222
  ret void, !dbg !1224
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1225 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1230, !tbaa !635
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1231
  %3 = icmp eq i32 %2, 0, !dbg !1232
  br i1 %3, label %21, label %4, !dbg !1233

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1234, !tbaa !1222, !range !1235
  %6 = icmp eq i8 %5, 0, !dbg !1234
  %7 = tail call i32* @__errno_location() #17, !dbg !1236
  br i1 %6, label %11, label %8, !dbg !1238

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1239, !tbaa !690
  %10 = icmp eq i32 %9, 32, !dbg !1240
  br i1 %10, label %21, label %11, !dbg !1241

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !1242
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1227, metadata !628), !dbg !1243
  %13 = load i8*, i8** @file_name, align 8, !dbg !1244, !tbaa !635
  %14 = icmp eq i8* %13, null, !dbg !1244
  %15 = load i32, i32* %7, align 4, !tbaa !690
  br i1 %14, label %18, label %16, !dbg !1245

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1246
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.17, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1247
  br label %19, !dbg !1247

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.18, i64 0, i64 0), i8* %12) #10, !dbg !1248
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1249, !tbaa !690
  tail call void @_exit(i32 %20) #15, !dbg !1250
  unreachable, !dbg !1250

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1251, !tbaa !635
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1253
  %24 = icmp eq i32 %23, 0, !dbg !1254
  br i1 %24, label %27, label %25, !dbg !1255

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1256, !tbaa !690
  tail call void @_exit(i32 %26) #15, !dbg !1257
  unreachable, !dbg !1257

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1258
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1259 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1270, metadata !628), !dbg !1276
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1271, metadata !628), !dbg !1277
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1272, metadata !628), !dbg !1278
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1273, metadata !628), !dbg !1279
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1280
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1274, metadata !628), !dbg !1280
  ret void, !dbg !1281
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1282 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1338, metadata !628), !dbg !1340
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1339, metadata !628), !dbg !1341
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1342
  br i1 %3, label %7, label %4, !dbg !1344

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1345
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1270, metadata !628) #10, !dbg !1346
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1271, metadata !628) #10, !dbg !1348
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1272, metadata !628) #10, !dbg !1349
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1273, metadata !628) #10, !dbg !1350
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1351
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1274, metadata !628) #10, !dbg !1351
  br label %7, !dbg !1352

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1353
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1354 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1399, metadata !628), !dbg !1406
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1400, metadata !628), !dbg !1407
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, i64 0, metadata !1401, metadata !628), !dbg !1408
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1402, metadata !628), !dbg !1409
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1403, metadata !628), !dbg !1410
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1404, metadata !628), !dbg !1411
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #10, !dbg !1412
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ], !dbg !1413

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #10, !dbg !1414
  %7 = icmp ne i32 %6, 2, !dbg !1417
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1404, metadata !628), !dbg !1411
  %8 = zext i1 %7 to i8, !dbg !1418
  br label %9, !dbg !1418

; <label>:9:                                      ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ]
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !1404, metadata !628), !dbg !1411
  %11 = tail call i32 @dup2(i32 1, i32 1) #10, !dbg !1419
  %12 = icmp ne i32 %11, 1, !dbg !1421
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1403, metadata !628), !dbg !1410
  %13 = zext i1 %12 to i8, !dbg !1422
  br label %14, !dbg !1422

; <label>:14:                                     ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ]
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !1404, metadata !628), !dbg !1411
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1403, metadata !628), !dbg !1410
  %17 = tail call i32 @dup2(i32 0, i32 0) #10, !dbg !1423
  %18 = icmp eq i32 %17, 0, !dbg !1425
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1402, metadata !628), !dbg !1409
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !1404, metadata !628), !dbg !1411
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1403, metadata !628), !dbg !1410
  br i1 %18, label %27, label %19, !dbg !1426

; <label>:19:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1428, metadata !628) #10, !dbg !1434
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i32 0) #10, !dbg !1436
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !1433, metadata !628) #10, !dbg !1437
  %21 = icmp eq i32 %20, 0, !dbg !1438
  br i1 %21, label %27, label %22, !dbg !1440

; <label>:22:                                     ; preds = %19
  %23 = icmp sgt i32 %20, -1, !dbg !1441
  br i1 %23, label %24, label %54, !dbg !1444

; <label>:24:                                     ; preds = %22
  %25 = tail call i32 @close(i32 %20) #10, !dbg !1445
  %26 = tail call i32* @__errno_location() #17, !dbg !1447
  store i32 9, i32* %26, align 4, !dbg !1448, !tbaa !690
  br label %54, !dbg !1449

; <label>:27:                                     ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0, !dbg !1450
  br i1 %29, label %38, label %30, !dbg !1452

; <label>:30:                                     ; preds = %27
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1428, metadata !628) #10, !dbg !1453
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i32 0) #10, !dbg !1455
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !1433, metadata !628) #10, !dbg !1456
  %32 = icmp eq i32 %31, 1, !dbg !1457
  br i1 %32, label %38, label %33, !dbg !1458

; <label>:33:                                     ; preds = %30
  %34 = icmp sgt i32 %31, -1, !dbg !1459
  br i1 %34, label %35, label %54, !dbg !1460

; <label>:35:                                     ; preds = %33
  %36 = tail call i32 @close(i32 %31) #10, !dbg !1461
  %37 = tail call i32* @__errno_location() #17, !dbg !1462
  store i32 9, i32* %37, align 4, !dbg !1463, !tbaa !690
  br label %54, !dbg !1464

; <label>:38:                                     ; preds = %30, %27
  %39 = and i8 %16, 1, !dbg !1465
  %40 = icmp eq i8 %39, 0, !dbg !1465
  br i1 %40, label %49, label %41, !dbg !1467

; <label>:41:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1428, metadata !628) #10, !dbg !1468
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i32 0) #10, !dbg !1470
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1433, metadata !628) #10, !dbg !1471
  %43 = icmp eq i32 %42, 2, !dbg !1472
  br i1 %43, label %49, label %44, !dbg !1473

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1, !dbg !1474
  br i1 %45, label %46, label %54, !dbg !1475

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @close(i32 %42) #10, !dbg !1476
  %48 = tail call i32* @__errno_location() #17, !dbg !1477
  store i32 9, i32* %48, align 4, !dbg !1478, !tbaa !690
  br label %54, !dbg !1479

; <label>:49:                                     ; preds = %3, %41, %38
  %50 = phi i8 [ %16, %38 ], [ %16, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %15, %38 ], [ %15, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #10, !dbg !1480
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %53, i64 0, metadata !1401, metadata !628), !dbg !1408
  br label %54

; <label>:54:                                     ; preds = %44, %46, %33, %35, %22, %24, %49
  %55 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ], [ %16, %46 ], [ %16, %44 ]
  %56 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ], [ %15, %46 ], [ %15, %44 ]
  %57 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ], [ %28, %46 ], [ %28, %44 ]
  %58 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], [ null, %46 ], [ null, %44 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, i64 0, metadata !1401, metadata !628), !dbg !1408
  %59 = tail call i32* @__errno_location() #17, !dbg !1481
  %60 = load i32, i32* %59, align 4, !dbg !1481, !tbaa !690
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !1405, metadata !628), !dbg !1482
  %61 = and i8 %55, 1, !dbg !1483
  %62 = icmp eq i8 %61, 0, !dbg !1483
  br i1 %62, label %65, label %63, !dbg !1485

; <label>:63:                                     ; preds = %54
  %64 = tail call i32 @close(i32 2) #10, !dbg !1486
  br label %65, !dbg !1486

; <label>:65:                                     ; preds = %54, %63
  %66 = and i8 %56, 1, !dbg !1487
  %67 = icmp eq i8 %66, 0, !dbg !1487
  br i1 %67, label %70, label %68, !dbg !1489

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @close(i32 1) #10, !dbg !1490
  br label %70, !dbg !1490

; <label>:70:                                     ; preds = %65, %68
  br i1 %57, label %71, label %73, !dbg !1491

; <label>:71:                                     ; preds = %70
  %72 = tail call i32 @close(i32 0) #10, !dbg !1492
  br label %73, !dbg !1492

; <label>:73:                                     ; preds = %71, %70
  %74 = icmp eq %struct._IO_FILE* %58, null, !dbg !1494
  br i1 %74, label %75, label %76, !dbg !1496

; <label>:75:                                     ; preds = %73
  store i32 %60, i32* %59, align 4, !dbg !1497, !tbaa !690
  br label %76, !dbg !1498

; <label>:76:                                     ; preds = %73, %75
  ret %struct._IO_FILE* %58, !dbg !1499
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !1500 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1505, metadata !628), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1506, metadata !628), !dbg !1530
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1507, metadata !628), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1508, metadata !628), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1509, metadata !628), !dbg !1533
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !1510, metadata !628), !dbg !1534
  %8 = load i32, i32* @opterr, align 4, !dbg !1535, !tbaa !690
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1512, metadata !628), !dbg !1536
  store i32 0, i32* @opterr, align 4, !dbg !1537, !tbaa !690
  %9 = icmp eq i32 %0, 2, !dbg !1538
  br i1 %9, label %10, label %17, !dbg !1539

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !1540
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !1511, metadata !628), !dbg !1541
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1542

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !1543
  br label %17, !dbg !1544

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1545
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !1545
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1513, metadata !628), !dbg !1546
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1547
  call void @llvm.va_start(i8* nonnull %14), !dbg !1547
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1548, !tbaa !635
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !1549
  call void @exit(i32 0) #15, !dbg !1550
  unreachable, !dbg !1550

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1551, !tbaa !690
  store i32 0, i32* @optind, align 4, !dbg !1552, !tbaa !690
  ret void, !dbg !1553
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1554 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1556, metadata !628), !dbg !1559
  %2 = icmp eq i8* %0, null, !dbg !1560
  br i1 %2, label %3, label %6, !dbg !1562

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1563, !tbaa !635
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1565
  tail call void @abort() #15, !dbg !1566
  unreachable, !dbg !1566

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1567
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1557, metadata !628), !dbg !1568
  %8 = icmp eq i8* %7, null, !dbg !1569
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1570
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1571
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1558, metadata !628), !dbg !1572
  %11 = ptrtoint i8* %10 to i64, !dbg !1573
  %12 = ptrtoint i8* %0 to i64, !dbg !1573
  %13 = sub i64 %11, %12, !dbg !1573
  %14 = icmp sgt i64 %13, 6, !dbg !1575
  br i1 %14, label %15, label %24, !dbg !1576

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1577
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #14, !dbg !1578
  %18 = icmp eq i32 %17, 0, !dbg !1579
  br i1 %18, label %19, label %24, !dbg !1580

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1556, metadata !628), !dbg !1559
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #14, !dbg !1581
  %21 = icmp eq i32 %20, 0, !dbg !1584
  br i1 %21, label %22, label %24, !dbg !1585

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1586
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1556, metadata !628), !dbg !1559
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1588, !tbaa !635
  br label %24, !dbg !1589

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1556, metadata !628), !dbg !1559
  store i8* %25, i8** @program_name, align 8, !dbg !1590, !tbaa !635
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1591, !tbaa !635
  ret void, !dbg !1592
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1593 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1598, metadata !628), !dbg !1601
  %2 = tail call i32* @__errno_location() #17, !dbg !1602
  %3 = load i32, i32* %2, align 4, !dbg !1602, !tbaa !690
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1599, metadata !628), !dbg !1603
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1604
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1604
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1604
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1605
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1605
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1600, metadata !628), !dbg !1606
  store i32 %3, i32* %2, align 4, !dbg !1607, !tbaa !690
  ret %struct.quoting_options* %8, !dbg !1608
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1609 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1615, metadata !628), !dbg !1616
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1617
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1617
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1618
  %5 = load i32, i32* %4, align 8, !dbg !1618, !tbaa !1619
  ret i32 %5, !dbg !1621
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1622 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1626, metadata !628), !dbg !1628
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1627, metadata !628), !dbg !1629
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1630
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1630
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1631
  store i32 %1, i32* %5, align 8, !dbg !1632, !tbaa !1619
  ret void, !dbg !1633
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1634 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1638, metadata !628), !dbg !1646
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1639, metadata !628), !dbg !1647
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1640, metadata !628), !dbg !1648
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1641, metadata !628), !dbg !1649
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1650
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1650
  %6 = lshr i8 %1, 5, !dbg !1651
  %7 = zext i8 %6 to i64, !dbg !1651
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1652
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1642, metadata !628), !dbg !1653
  %9 = and i8 %1, 31, !dbg !1654
  %10 = zext i8 %9 to i32, !dbg !1655
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1644, metadata !628), !dbg !1656
  %11 = load i32, i32* %8, align 4, !dbg !1657, !tbaa !690
  %12 = lshr i32 %11, %10, !dbg !1658
  %13 = and i32 %12, 1, !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1645, metadata !628), !dbg !1660
  %14 = and i32 %2, 1, !dbg !1661
  %15 = xor i32 %13, %14, !dbg !1662
  %16 = shl i32 %15, %10, !dbg !1663
  %17 = xor i32 %16, %11, !dbg !1664
  store i32 %17, i32* %8, align 4, !dbg !1664, !tbaa !690
  ret i32 %13, !dbg !1665
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1666 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1670, metadata !628), !dbg !1673
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1671, metadata !628), !dbg !1674
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1675
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1670, metadata !628), !dbg !1673
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1677
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1670, metadata !628), !dbg !1673
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1678
  %6 = load i32, i32* %5, align 4, !dbg !1678, !tbaa !1679
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1672, metadata !628), !dbg !1680
  store i32 %1, i32* %5, align 4, !dbg !1681, !tbaa !1679
  ret i32 %6, !dbg !1682
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1683 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1687, metadata !628), !dbg !1690
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1688, metadata !628), !dbg !1691
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1689, metadata !628), !dbg !1692
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1693
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1687, metadata !628), !dbg !1690
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1695
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1687, metadata !628), !dbg !1690
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1696
  store i32 10, i32* %6, align 8, !dbg !1697, !tbaa !1619
  %7 = icmp ne i8* %1, null, !dbg !1698
  %8 = icmp ne i8* %2, null, !dbg !1700
  %9 = and i1 %7, %8, !dbg !1701
  br i1 %9, label %11, label %10, !dbg !1701

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1702
  unreachable, !dbg !1702

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1703
  store i8* %1, i8** %12, align 8, !dbg !1704, !tbaa !1705
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1706
  store i8* %2, i8** %13, align 8, !dbg !1707, !tbaa !1708
  ret void, !dbg !1709
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1710 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1714, metadata !628), !dbg !1722
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1715, metadata !628), !dbg !1723
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1716, metadata !628), !dbg !1724
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1717, metadata !628), !dbg !1725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1718, metadata !628), !dbg !1726
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1727
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1719, metadata !628), !dbg !1728
  %8 = tail call i32* @__errno_location() #17, !dbg !1729
  %9 = load i32, i32* %8, align 4, !dbg !1729, !tbaa !690
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1720, metadata !628), !dbg !1730
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1731
  %11 = load i32, i32* %10, align 8, !dbg !1731, !tbaa !1619
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1732
  %13 = load i32, i32* %12, align 4, !dbg !1732, !tbaa !1679
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1733
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1734
  %16 = load i8*, i8** %15, align 8, !dbg !1734, !tbaa !1705
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1735
  %18 = load i8*, i8** %17, align 8, !dbg !1735, !tbaa !1708
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1736
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1721, metadata !628), !dbg !1737
  store i32 %9, i32* %8, align 4, !dbg !1738, !tbaa !690
  ret i64 %19, !dbg !1739
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1740 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1746, metadata !628), !dbg !1810
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1747, metadata !628), !dbg !1811
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1748, metadata !628), !dbg !1812
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1749, metadata !628), !dbg !1813
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1750, metadata !628), !dbg !1814
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1751, metadata !628), !dbg !1815
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1752, metadata !628), !dbg !1816
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1753, metadata !628), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1754, metadata !628), !dbg !1818
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1756, metadata !628), !dbg !1819
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1757, metadata !628), !dbg !1820
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1758, metadata !628), !dbg !1821
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1759, metadata !628), !dbg !1822
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1760, metadata !628), !dbg !1823
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1824
  %14 = icmp eq i64 %13, 1, !dbg !1825
  %15 = lshr i32 %5, 1, !dbg !1826
  %16 = trunc i32 %15 to i8, !dbg !1826
  %17 = and i8 %16, 1, !dbg !1826
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1762, metadata !628), !dbg !1826
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1763, metadata !628), !dbg !1827
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1764, metadata !628), !dbg !1828
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1765, metadata !628), !dbg !1829
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1830

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1747, metadata !628), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1765, metadata !628), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1764, metadata !628), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1762, metadata !628), !dbg !1826
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1749, metadata !628), !dbg !1813
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1760, metadata !628), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1759, metadata !628), !dbg !1822
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1758, metadata !628), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1757, metadata !628), !dbg !1820
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1754, metadata !628), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1753, metadata !628), !dbg !1817
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1750, metadata !628), !dbg !1814
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
  ], !dbg !1831

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1750, metadata !628), !dbg !1814
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1762, metadata !628), !dbg !1826
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1762, metadata !628), !dbg !1826
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1750, metadata !628), !dbg !1814
  br label %94, !dbg !1832

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1762, metadata !628), !dbg !1826
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1750, metadata !628), !dbg !1814
  %43 = and i8 %36, 1, !dbg !1834
  %44 = icmp eq i8 %43, 0, !dbg !1834
  br i1 %44, label %45, label %94, !dbg !1832

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1836
  br i1 %46, label %94, label %47, !dbg !1839

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1836, !tbaa !1840
  br label %94, !dbg !1836

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %28), !dbg !1841
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1753, metadata !628), !dbg !1817
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %28), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1754, metadata !628), !dbg !1818
  br label %51, !dbg !1846

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1754, metadata !628), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1753, metadata !628), !dbg !1817
  %54 = and i8 %36, 1, !dbg !1847
  %55 = icmp eq i8 %54, 0, !dbg !1847
  br i1 %55, label %56, label %72, !dbg !1849

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1758, metadata !628), !dbg !1821
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1758, metadata !628), !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1756, metadata !628), !dbg !1819
  %57 = load i8, i8* %52, align 1, !dbg !1850, !tbaa !1840
  %58 = icmp eq i8 %57, 0, !dbg !1853
  br i1 %58, label %72, label %59, !dbg !1853

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1854

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1758, metadata !628), !dbg !1821
  %64 = icmp ult i64 %63, %40, !dbg !1854
  br i1 %64, label %65, label %67, !dbg !1857

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1854
  store i8 %61, i8* %66, align 1, !dbg !1854, !tbaa !1840
  br label %67, !dbg !1854

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1756, metadata !628), !dbg !1819
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1858
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1758, metadata !628), !dbg !1821
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1758, metadata !628), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1756, metadata !628), !dbg !1819
  %70 = load i8, i8* %69, align 1, !dbg !1850, !tbaa !1840
  %71 = icmp eq i8 %70, 0, !dbg !1853
  br i1 %71, label %72, label %60, !dbg !1853, !llvm.loop !1859

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1760, metadata !628), !dbg !1823
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1758, metadata !628), !dbg !1821
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1759, metadata !628), !dbg !1822
  br label %94, !dbg !1862

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1760, metadata !628), !dbg !1823
  br label %76, !dbg !1863

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1760, metadata !628), !dbg !1823
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1762, metadata !628), !dbg !1826
  br label %78, !dbg !1864

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1762, metadata !628), !dbg !1826
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1760, metadata !628), !dbg !1823
  %81 = and i8 %80, 1, !dbg !1865
  %82 = icmp eq i8 %81, 0, !dbg !1865
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1760, metadata !628), !dbg !1823
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1867
  br label %84, !dbg !1867

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1762, metadata !628), !dbg !1826
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1760, metadata !628), !dbg !1823
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1750, metadata !628), !dbg !1814
  %87 = and i8 %86, 1, !dbg !1868
  %88 = icmp eq i8 %87, 0, !dbg !1868
  br i1 %88, label %89, label %94, !dbg !1870

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1871
  br i1 %90, label %94, label %91, !dbg !1874

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1871, !tbaa !1840
  br label %94, !dbg !1871

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1762, metadata !628), !dbg !1826
  br label %94, !dbg !1875

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1876
  unreachable, !dbg !1876

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1762, metadata !628), !dbg !1826
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1760, metadata !628), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1759, metadata !628), !dbg !1822
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1758, metadata !628), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1754, metadata !628), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1753, metadata !628), !dbg !1817
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1750, metadata !628), !dbg !1814
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1755, metadata !628), !dbg !1877
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
  br label %122, !dbg !1878

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1747, metadata !628), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1765, metadata !628), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1764, metadata !628), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1749, metadata !628), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1757, metadata !628), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1755, metadata !628), !dbg !1877
  %131 = icmp eq i64 %126, -1, !dbg !1879
  br i1 %131, label %134, label %132, !dbg !1880

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1881
  br i1 %133, label %590, label %138, !dbg !1882

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1883
  %136 = load i8, i8* %135, align 1, !dbg !1883, !tbaa !1840
  %137 = icmp eq i8 %136, 0, !dbg !1884
  br i1 %137, label %590, label %138, !dbg !1882

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1771, metadata !628), !dbg !1885
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1772, metadata !628), !dbg !1886
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1773, metadata !628), !dbg !1887
  br i1 %108, label %139, label %154, !dbg !1888

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1890
  %141 = and i1 %109, %131, !dbg !1891
  br i1 %141, label %142, label %144, !dbg !1891

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1749, metadata !628), !dbg !1813
  br label %144, !dbg !1893

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1749, metadata !628), !dbg !1813
  %146 = icmp ugt i64 %140, %145, !dbg !1894
  br i1 %146, label %154, label %147, !dbg !1895

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1896
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1897
  %150 = icmp ne i32 %149, 0, !dbg !1898
  %151 = or i1 %150, %111, !dbg !1899
  %152 = xor i1 %150, true, !dbg !1899
  %153 = zext i1 %152 to i8, !dbg !1899
  br i1 %151, label %154, label %635, !dbg !1899

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1771, metadata !628), !dbg !1885
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1749, metadata !628), !dbg !1813
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1900
  %158 = load i8, i8* %157, align 1, !dbg !1900, !tbaa !1840
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1766, metadata !628), !dbg !1901
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
  ], !dbg !1902

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1903

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1904

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1772, metadata !628), !dbg !1886
  %162 = and i8 %127, 1, !dbg !1908
  %163 = icmp eq i8 %162, 0, !dbg !1908
  %164 = and i1 %113, %163, !dbg !1908
  br i1 %164, label %165, label %181, !dbg !1908

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1910
  br i1 %166, label %167, label %169, !dbg !1914

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1910
  store i8 39, i8* %168, align 1, !dbg !1910, !tbaa !1840
  br label %169, !dbg !1910

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1756, metadata !628), !dbg !1819
  %171 = icmp ult i64 %170, %130, !dbg !1915
  br i1 %171, label %172, label %174, !dbg !1918

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1915
  store i8 36, i8* %173, align 1, !dbg !1915, !tbaa !1840
  br label %174, !dbg !1915

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1756, metadata !628), !dbg !1819
  %176 = icmp ult i64 %175, %130, !dbg !1919
  br i1 %176, label %177, label %179, !dbg !1922

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1919
  store i8 39, i8* %178, align 1, !dbg !1919, !tbaa !1840
  br label %179, !dbg !1919

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1763, metadata !628), !dbg !1827
  br label %181, !dbg !1923

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1756, metadata !628), !dbg !1819
  %184 = icmp ult i64 %182, %130, !dbg !1924
  br i1 %184, label %185, label %187, !dbg !1927

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1924
  store i8 92, i8* %186, align 1, !dbg !1924, !tbaa !1840
  br label %187, !dbg !1924

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1756, metadata !628), !dbg !1819
  br i1 %105, label %189, label %470, !dbg !1928

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1930
  %191 = icmp ult i64 %190, %155, !dbg !1931
  br i1 %191, label %192, label %470, !dbg !1932

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1933
  %194 = load i8, i8* %193, align 1, !dbg !1933, !tbaa !1840
  %195 = add i8 %194, -48, !dbg !1934
  %196 = icmp ult i8 %195, 10, !dbg !1934
  br i1 %196, label %197, label %470, !dbg !1934

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1935
  br i1 %198, label %199, label %201, !dbg !1939

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1935
  store i8 48, i8* %200, align 1, !dbg !1935, !tbaa !1840
  br label %201, !dbg !1935

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1756, metadata !628), !dbg !1819
  %203 = icmp ult i64 %202, %130, !dbg !1940
  br i1 %203, label %204, label %206, !dbg !1943

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1940
  store i8 48, i8* %205, align 1, !dbg !1940, !tbaa !1840
  br label %206, !dbg !1940

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1756, metadata !628), !dbg !1819
  br label %470, !dbg !1944

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1945

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1946

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1947

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1949

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1951
  %214 = icmp ult i64 %213, %155, !dbg !1952
  br i1 %214, label %215, label %470, !dbg !1953

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1954
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1955
  %218 = load i8, i8* %217, align 1, !dbg !1955, !tbaa !1840
  %219 = icmp eq i8 %218, 63, !dbg !1956
  br i1 %219, label %220, label %470, !dbg !1957

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1958
  %222 = load i8, i8* %221, align 1, !dbg !1958, !tbaa !1840
  %223 = sext i8 %222 to i32, !dbg !1958
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
  ], !dbg !1959

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1960

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1766, metadata !628), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1755, metadata !628), !dbg !1877
  %226 = icmp ult i64 %124, %130, !dbg !1962
  br i1 %226, label %227, label %229, !dbg !1965

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1962
  store i8 63, i8* %228, align 1, !dbg !1962, !tbaa !1840
  br label %229, !dbg !1962

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1756, metadata !628), !dbg !1819
  %231 = icmp ult i64 %230, %130, !dbg !1966
  br i1 %231, label %232, label %234, !dbg !1969

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1966
  store i8 34, i8* %233, align 1, !dbg !1966, !tbaa !1840
  br label %234, !dbg !1966

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1756, metadata !628), !dbg !1819
  %236 = icmp ult i64 %235, %130, !dbg !1970
  br i1 %236, label %237, label %239, !dbg !1973

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1970
  store i8 34, i8* %238, align 1, !dbg !1970, !tbaa !1840
  br label %239, !dbg !1970

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1756, metadata !628), !dbg !1819
  %241 = icmp ult i64 %240, %130, !dbg !1974
  br i1 %241, label %242, label %244, !dbg !1977

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1974
  store i8 63, i8* %243, align 1, !dbg !1974, !tbaa !1840
  br label %244, !dbg !1974

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1756, metadata !628), !dbg !1819
  br label %470, !dbg !1978

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1770, metadata !628), !dbg !1979
  br label %256, !dbg !1980

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1770, metadata !628), !dbg !1979
  br label %256, !dbg !1981

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1770, metadata !628), !dbg !1979
  br label %254, !dbg !1982

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1770, metadata !628), !dbg !1979
  br label %254, !dbg !1983

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1770, metadata !628), !dbg !1979
  br label %256, !dbg !1984

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1770, metadata !628), !dbg !1979
  br i1 %113, label %252, label %253, !dbg !1985

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1986

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1989

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1770, metadata !628), !dbg !1979
  br i1 %117, label %256, label %635, !dbg !1991

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1770, metadata !628), !dbg !1979
  br i1 %104, label %497, label %470, !dbg !1993

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1994
  br i1 %259, label %260, label %265, !dbg !1996

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1997, !tbaa !1840
  %262 = icmp ne i8 %261, 0, !dbg !1998
  %263 = icmp ne i64 %123, 0, !dbg !1999
  %264 = or i1 %263, %262, !dbg !2001
  br i1 %264, label %470, label %271, !dbg !2001

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2002
  %267 = icmp ne i64 %123, 0, !dbg !1999
  %268 = or i1 %267, %266, !dbg !1996
  br i1 %268, label %470, label %271, !dbg !1996

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1999
  br i1 %270, label %271, label %470, !dbg !2003

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1773, metadata !628), !dbg !1887
  br label %272, !dbg !2004

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1773, metadata !628), !dbg !1887
  br i1 %117, label %470, label %635, !dbg !2005

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1764, metadata !628), !dbg !1828
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1773, metadata !628), !dbg !1887
  br i1 %113, label %275, label %470, !dbg !2007

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2008

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2011
  %278 = icmp ne i64 %125, 0, !dbg !2013
  %279 = or i1 %278, %277, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1757, metadata !628), !dbg !1820
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1747, metadata !628), !dbg !1811
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2014
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1747, metadata !628), !dbg !1811
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1757, metadata !628), !dbg !1820
  %282 = icmp ult i64 %124, %281, !dbg !2015
  br i1 %282, label %283, label %285, !dbg !2018

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2015
  store i8 39, i8* %284, align 1, !dbg !2015, !tbaa !1840
  br label %285, !dbg !2015

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1756, metadata !628), !dbg !1819
  %287 = icmp ult i64 %286, %281, !dbg !2019
  br i1 %287, label %288, label %290, !dbg !2022

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2019
  store i8 92, i8* %289, align 1, !dbg !2019, !tbaa !1840
  br label %290, !dbg !2019

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1756, metadata !628), !dbg !1819
  %292 = icmp ult i64 %291, %281, !dbg !2023
  br i1 %292, label %293, label %295, !dbg !2026

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2023
  store i8 39, i8* %294, align 1, !dbg !2023, !tbaa !1840
  br label %295, !dbg !2023

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1763, metadata !628), !dbg !1827
  br label %470, !dbg !2027

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2028

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1774, metadata !628), !dbg !2029
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2030
  %300 = load i16*, i16** %299, align 8, !dbg !2030, !tbaa !635
  %301 = zext i8 %158 to i64, !dbg !2030
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2030
  %303 = load i16, i16* %302, align 2, !dbg !2030, !tbaa !2032
  %304 = lshr i16 %303, 14, !dbg !2034
  %305 = trunc i16 %304 to i8, !dbg !2034
  %306 = and i8 %305, 1, !dbg !2034
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1777, metadata !628), !dbg !2035
  br label %362, !dbg !2036

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2037
  store i64 0, i64* %10, align 8, !dbg !2038
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1774, metadata !628), !dbg !2029
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1777, metadata !628), !dbg !2035
  %308 = icmp eq i64 %155, -1, !dbg !2039
  br i1 %308, label %309, label %311, !dbg !2041

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1749, metadata !628), !dbg !1813
  br label %311, !dbg !2043

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1749, metadata !628), !dbg !1813
  br label %313, !dbg !2044, !llvm.loop !2045

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1777, metadata !628), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1774, metadata !628), !dbg !2029
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2047
  %316 = add i64 %314, %123, !dbg !2048
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2049
  %318 = sub i64 %312, %316, !dbg !2050
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1778, metadata !628), !dbg !2051
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1796, metadata !628), !dbg !2052
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1799, metadata !628), !dbg !2054
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2055

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1777, metadata !628), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1774, metadata !628), !dbg !2029
  %321 = icmp ugt i64 %312, %316, !dbg !2056
  br i1 %321, label %322, label %347, !dbg !2058

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2059

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1774, metadata !628), !dbg !2029
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2059
  %327 = load i8, i8* %326, align 1, !dbg !2059, !tbaa !1840
  %328 = icmp eq i8 %327, 0, !dbg !2058
  br i1 %328, label %347, label %329, !dbg !2060

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1774, metadata !628), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1774, metadata !628), !dbg !2029
  %331 = add i64 %330, %123, !dbg !2062
  %332 = icmp ult i64 %331, %312, !dbg !2056
  br i1 %332, label %323, label %347, !dbg !2058, !llvm.loop !2063

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2064
  %335 = and i1 %115, %334, !dbg !2067
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1800, metadata !628), !dbg !2068
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1800, metadata !628), !dbg !2068
  br i1 %335, label %336, label %350, !dbg !2067

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2069

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1800, metadata !628), !dbg !2068
  %339 = add i64 %338, %316, !dbg !2069
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2070
  %341 = load i8, i8* %340, align 1, !dbg !2070, !tbaa !1840
  %342 = sext i8 %341 to i32, !dbg !2070
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2071

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1800, metadata !628), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1800, metadata !628), !dbg !2068
  %345 = icmp ult i64 %344, %319, !dbg !2064
  br i1 %345, label %337, label %350, !dbg !2073, !llvm.loop !2074

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2076

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1777, metadata !628), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1774, metadata !628), !dbg !2029
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2076
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2077, !tbaa !690
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1796, metadata !628), !dbg !2052
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !2079
  %353 = icmp eq i32 %352, 0, !dbg !2079
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1777, metadata !628), !dbg !2035
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2080
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1777, metadata !628), !dbg !2035
  %355 = add i64 %319, %314, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1774, metadata !628), !dbg !2029
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1777, metadata !628), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1774, metadata !628), !dbg !2029
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2076
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1778, metadata !628), !dbg !2051
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2082
  %357 = icmp eq i32 %356, 0, !dbg !2083
  br i1 %357, label %313, label %358, !dbg !2084, !llvm.loop !2045

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2085
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1777, metadata !628), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1774, metadata !628), !dbg !2029
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2076
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2085
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1777, metadata !628), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1774, metadata !628), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1749, metadata !628), !dbg !1813
  %366 = and i8 %365, 1, !dbg !2086
  %367 = icmp ne i8 %366, 0, !dbg !2086
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1773, metadata !628), !dbg !1887
  %368 = icmp ult i64 %364, 2, !dbg !2087
  %369 = or i1 %367, %112, !dbg !2088
  %370 = and i1 %368, %369, !dbg !2089
  br i1 %370, label %470, label %371, !dbg !2089

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1807, metadata !628), !dbg !2091
  br label %373, !dbg !2092

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1772, metadata !628), !dbg !1886
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1771, metadata !628), !dbg !1885
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1766, metadata !628), !dbg !1901
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1755, metadata !628), !dbg !1877
  br i1 %369, label %426, label %380, !dbg !2093

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2098

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1772, metadata !628), !dbg !1886
  %382 = and i8 %376, 1, !dbg !2101
  %383 = icmp eq i8 %382, 0, !dbg !2101
  %384 = and i1 %113, %383, !dbg !2101
  br i1 %384, label %385, label %401, !dbg !2101

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2103
  br i1 %386, label %387, label %389, !dbg !2107

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2103
  store i8 39, i8* %388, align 1, !dbg !2103, !tbaa !1840
  br label %389, !dbg !2103

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1756, metadata !628), !dbg !1819
  %391 = icmp ult i64 %390, %130, !dbg !2108
  br i1 %391, label %392, label %394, !dbg !2111

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2108
  store i8 36, i8* %393, align 1, !dbg !2108, !tbaa !1840
  br label %394, !dbg !2108

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1756, metadata !628), !dbg !1819
  %396 = icmp ult i64 %395, %130, !dbg !2112
  br i1 %396, label %397, label %399, !dbg !2115

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2112
  store i8 39, i8* %398, align 1, !dbg !2112, !tbaa !1840
  br label %399, !dbg !2112

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1763, metadata !628), !dbg !1827
  br label %401, !dbg !2116

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1756, metadata !628), !dbg !1819
  %404 = icmp ult i64 %402, %130, !dbg !2117
  br i1 %404, label %405, label %407, !dbg !2120

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2117
  store i8 92, i8* %406, align 1, !dbg !2117, !tbaa !1840
  br label %407, !dbg !2117

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1756, metadata !628), !dbg !1819
  %409 = icmp ult i64 %408, %130, !dbg !2121
  br i1 %409, label %410, label %414, !dbg !2124

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2121
  %412 = or i8 %411, 48, !dbg !2121
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2121
  store i8 %412, i8* %413, align 1, !dbg !2121, !tbaa !1840
  br label %414, !dbg !2121

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1756, metadata !628), !dbg !1819
  %416 = icmp ult i64 %415, %130, !dbg !2125
  br i1 %416, label %417, label %422, !dbg !2128

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2125
  %419 = and i8 %418, 7, !dbg !2125
  %420 = or i8 %419, 48, !dbg !2125
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2125
  store i8 %420, i8* %421, align 1, !dbg !2125, !tbaa !1840
  br label %422, !dbg !2125

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1756, metadata !628), !dbg !1819
  %424 = and i8 %377, 7, !dbg !2129
  %425 = or i8 %424, 48, !dbg !2130
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1766, metadata !628), !dbg !1901
  br label %435, !dbg !2131

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2132
  %428 = icmp eq i8 %427, 0, !dbg !2132
  br i1 %428, label %435, label %429, !dbg !2134

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2135
  br i1 %430, label %431, label %433, !dbg !2139

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2135
  store i8 92, i8* %432, align 1, !dbg !2135, !tbaa !1840
  br label %433, !dbg !2135

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1771, metadata !628), !dbg !1885
  br label %435, !dbg !2140

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1772, metadata !628), !dbg !1886
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1771, metadata !628), !dbg !1885
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1766, metadata !628), !dbg !1901
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1756, metadata !628), !dbg !1819
  %441 = add i64 %374, 1, !dbg !2141
  %442 = icmp ugt i64 %372, %441, !dbg !2143
  br i1 %442, label %443, label %535, !dbg !2144

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2145
  %445 = icmp ne i8 %444, 0, !dbg !2145
  %446 = and i8 %440, 1, !dbg !2145
  %447 = icmp eq i8 %446, 0, !dbg !2145
  %448 = and i1 %445, %447, !dbg !2145
  br i1 %448, label %449, label %460, !dbg !2145

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2148
  br i1 %450, label %451, label %453, !dbg !2152

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2148
  store i8 39, i8* %452, align 1, !dbg !2148, !tbaa !1840
  br label %453, !dbg !2148

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1756, metadata !628), !dbg !1819
  %455 = icmp ult i64 %454, %130, !dbg !2153
  br i1 %455, label %456, label %458, !dbg !2156

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2153
  store i8 39, i8* %457, align 1, !dbg !2153, !tbaa !1840
  br label %458, !dbg !2153

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1763, metadata !628), !dbg !1827
  br label %460, !dbg !2157

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1756, metadata !628), !dbg !1819
  %463 = icmp ult i64 %461, %130, !dbg !2158
  br i1 %463, label %464, label %466, !dbg !2161

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2158
  store i8 %438, i8* %465, align 1, !dbg !2158, !tbaa !1840
  br label %466, !dbg !2158

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1755, metadata !628), !dbg !1877
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2162
  %469 = load i8, i8* %468, align 1, !dbg !2162, !tbaa !1840
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1766, metadata !628), !dbg !1901
  br label %373, !dbg !2163, !llvm.loop !2164

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1747, metadata !628), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1773, metadata !628), !dbg !1887
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1772, metadata !628), !dbg !1886
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1771, metadata !628), !dbg !1885
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1766, metadata !628), !dbg !1901
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1764, metadata !628), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1749, metadata !628), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1757, metadata !628), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1755, metadata !628), !dbg !1877
  br i1 %106, label %482, label %481, !dbg !2167

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2169

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2170

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2171
  %485 = zext i8 %484 to i64, !dbg !2171
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2172
  %487 = load i32, i32* %486, align 4, !dbg !2172, !tbaa !690
  %488 = and i8 %477, 31, !dbg !2173
  %489 = zext i8 %488 to i32, !dbg !2174
  %490 = shl i32 1, %489, !dbg !2175
  %491 = and i32 %487, %490, !dbg !2175
  %492 = icmp eq i32 %491, 0, !dbg !2175
  %493 = icmp eq i8 %156, 0, !dbg !2176
  %494 = and i1 %493, %492, !dbg !2177
  br i1 %494, label %535, label %497, !dbg !2177

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2176
  br i1 %496, label %535, label %497, !dbg !2178

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1747, metadata !628), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1773, metadata !628), !dbg !1887
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1766, metadata !628), !dbg !1901
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1764, metadata !628), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1749, metadata !628), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1757, metadata !628), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1755, metadata !628), !dbg !1877
  br i1 %111, label %507, label %635, !dbg !2179

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1772, metadata !628), !dbg !1886
  %508 = and i8 %502, 1, !dbg !2181
  %509 = icmp eq i8 %508, 0, !dbg !2181
  %510 = and i1 %113, %509, !dbg !2181
  br i1 %510, label %511, label %527, !dbg !2181

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2183
  br i1 %512, label %513, label %515, !dbg !2187

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2183
  store i8 39, i8* %514, align 1, !dbg !2183, !tbaa !1840
  br label %515, !dbg !2183

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1756, metadata !628), !dbg !1819
  %517 = icmp ult i64 %516, %506, !dbg !2188
  br i1 %517, label %518, label %520, !dbg !2191

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2188
  store i8 36, i8* %519, align 1, !dbg !2188, !tbaa !1840
  br label %520, !dbg !2188

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1756, metadata !628), !dbg !1819
  %522 = icmp ult i64 %521, %506, !dbg !2192
  br i1 %522, label %523, label %525, !dbg !2195

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2192
  store i8 39, i8* %524, align 1, !dbg !2192, !tbaa !1840
  br label %525, !dbg !2192

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1763, metadata !628), !dbg !1827
  br label %527, !dbg !2196

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1756, metadata !628), !dbg !1819
  %530 = icmp ult i64 %528, %506, !dbg !2197
  br i1 %530, label %531, label %533, !dbg !2200

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2197
  store i8 92, i8* %532, align 1, !dbg !2197, !tbaa !1840
  br label %533, !dbg !2197

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1747, metadata !628), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1773, metadata !628), !dbg !1887
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1772, metadata !628), !dbg !1886
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1766, metadata !628), !dbg !1901
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1764, metadata !628), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1749, metadata !628), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1757, metadata !628), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1755, metadata !628), !dbg !1877
  br label %562, !dbg !2201

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1747, metadata !628), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1773, metadata !628), !dbg !1887
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1772, metadata !628), !dbg !1886
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1766, metadata !628), !dbg !1901
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1764, metadata !628), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1749, metadata !628), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1757, metadata !628), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1755, metadata !628), !dbg !1877
  %546 = and i8 %540, 1, !dbg !2201
  %547 = icmp ne i8 %546, 0, !dbg !2201
  %548 = and i8 %543, 1, !dbg !2201
  %549 = icmp eq i8 %548, 0, !dbg !2201
  %550 = and i1 %547, %549, !dbg !2201
  br i1 %550, label %551, label %562, !dbg !2201

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2204
  br i1 %552, label %553, label %555, !dbg !2208

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2204
  store i8 39, i8* %554, align 1, !dbg !2204, !tbaa !1840
  br label %555, !dbg !2204

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1756, metadata !628), !dbg !1819
  %557 = icmp ult i64 %556, %545, !dbg !2209
  br i1 %557, label %558, label %560, !dbg !2212

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2209
  store i8 39, i8* %559, align 1, !dbg !2209, !tbaa !1840
  br label %560, !dbg !2209

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1763, metadata !628), !dbg !1827
  br label %562, !dbg !2213

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1756, metadata !628), !dbg !1819
  %572 = icmp ult i64 %570, %563, !dbg !2214
  br i1 %572, label %573, label %575, !dbg !2217

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2214
  store i8 %565, i8* %574, align 1, !dbg !2214, !tbaa !1840
  br label %575, !dbg !2214

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1756, metadata !628), !dbg !1819
  %577 = and i8 %564, 1, !dbg !2218
  %578 = icmp eq i8 %577, 0, !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1765, metadata !628), !dbg !1829
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2220
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1765, metadata !628), !dbg !1829
  br label %580, !dbg !2221

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1747, metadata !628), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1765, metadata !628), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1764, metadata !628), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1763, metadata !628), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1749, metadata !628), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1757, metadata !628), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1755, metadata !628), !dbg !1877
  %589 = add i64 %581, 1, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1755, metadata !628), !dbg !1877
  br label %122, !dbg !2223, !llvm.loop !2224

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2226
  %593 = and i1 %113, %592, !dbg !2228
  %594 = xor i1 %593, true, !dbg !2228
  %595 = or i1 %111, %594, !dbg !2228
  br i1 %595, label %596, label %635, !dbg !2228

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2229
  %598 = xor i1 %597, true, !dbg !2229
  %599 = and i8 %128, 1, !dbg !2231
  %600 = icmp eq i8 %599, 0, !dbg !2231
  %601 = or i1 %600, %598, !dbg !2229
  br i1 %601, label %611, label %602, !dbg !2229

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2232
  %604 = icmp eq i8 %603, 0, !dbg !2232
  br i1 %604, label %607, label %605, !dbg !2235

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2236
  br label %645, !dbg !2237

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2238
  %609 = icmp ne i64 %125, 0, !dbg !2240
  %610 = and i1 %609, %608, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1747, metadata !628), !dbg !1811
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1756, metadata !628), !dbg !1819
  br i1 %610, label %27, label %611, !dbg !2241

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2242
  %613 = and i1 %612, %111, !dbg !2244
  br i1 %613, label %614, label %630, !dbg !2244

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1758, metadata !628), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1756, metadata !628), !dbg !1819
  %615 = load i8, i8* %99, align 1, !dbg !2245, !tbaa !1840
  %616 = icmp eq i8 %615, 0, !dbg !2248
  br i1 %616, label %630, label %617, !dbg !2248

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2249

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1756, metadata !628), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1758, metadata !628), !dbg !1821
  %622 = icmp ult i64 %621, %130, !dbg !2249
  br i1 %622, label %623, label %625, !dbg !2252

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2249
  store i8 %619, i8* %624, align 1, !dbg !2249, !tbaa !1840
  br label %625, !dbg !2249

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1756, metadata !628), !dbg !1819
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2253
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1758, metadata !628), !dbg !1821
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1758, metadata !628), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1756, metadata !628), !dbg !1819
  %628 = load i8, i8* %627, align 1, !dbg !2245, !tbaa !1840
  %629 = icmp eq i8 %628, 0, !dbg !2248
  br i1 %629, label %630, label %618, !dbg !2248, !llvm.loop !2254

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1756, metadata !628), !dbg !1819
  %632 = icmp ult i64 %631, %130, !dbg !2256
  br i1 %632, label %633, label %645, !dbg !2258

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2259
  store i8 0, i8* %634, align 1, !dbg !2260, !tbaa !1840
  br label %645, !dbg !2259

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1747, metadata !628), !dbg !1811
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1749, metadata !628), !dbg !1813
  %639 = icmp ne i32 %636, 2, !dbg !2261
  %640 = icmp eq i8 %103, 0, !dbg !2263
  %641 = or i1 %639, %640, !dbg !2264
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1750, metadata !628), !dbg !1814
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2264
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1750, metadata !628), !dbg !1814
  %643 = and i32 %5, -3, !dbg !2265
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2266
  br label %645, !dbg !2267

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2268
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2269 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2273, metadata !628), !dbg !2277
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2274, metadata !628), !dbg !2278
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2279
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2275, metadata !628), !dbg !2280
  %4 = icmp eq i8* %3, %0, !dbg !2281
  br i1 %4, label %5, label %75, !dbg !2283

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2284
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2276, metadata !628), !dbg !2285
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2286, metadata !628), !dbg !2302
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2300, metadata !628), !dbg !2305
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2301, metadata !628), !dbg !2306
  %7 = load i8, i8* %6, align 1, !dbg !2307, !tbaa !1840
  %8 = sext i8 %7 to i32, !dbg !2307
  %9 = and i32 %8, -33, !dbg !2307
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2307

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2309, metadata !628), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2321, metadata !628), !dbg !2327
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2322, metadata !628), !dbg !2328
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2329
  %12 = load i8, i8* %11, align 1, !dbg !2329, !tbaa !1840
  %13 = sext i8 %12 to i32, !dbg !2329
  %14 = and i32 %13, -33, !dbg !2329
  %15 = icmp eq i32 %14, 84, !dbg !2329
  br i1 %15, label %16, label %72, !dbg !2329

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2331, metadata !628), !dbg !2344
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2342, metadata !628), !dbg !2348
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2343, metadata !628), !dbg !2349
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2350
  %18 = load i8, i8* %17, align 1, !dbg !2350, !tbaa !1840
  %19 = sext i8 %18 to i32, !dbg !2350
  %20 = and i32 %19, -33, !dbg !2350
  %21 = icmp eq i32 %20, 70, !dbg !2350
  br i1 %21, label %22, label %72, !dbg !2350

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2352, metadata !628), !dbg !2364
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2362, metadata !628), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2363, metadata !628), !dbg !2369
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2370
  %24 = load i8, i8* %23, align 1, !dbg !2370, !tbaa !1840
  %25 = icmp eq i8 %24, 45, !dbg !2370
  br i1 %25, label %26, label %72, !dbg !2372

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2373, metadata !628), !dbg !2384
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2382, metadata !628), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2383, metadata !628), !dbg !2389
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2390
  %28 = load i8, i8* %27, align 1, !dbg !2390, !tbaa !1840
  %29 = icmp eq i8 %28, 56, !dbg !2390
  br i1 %29, label %30, label %72, !dbg !2392

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2393, metadata !628), !dbg !2403
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2401, metadata !628), !dbg !2407
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2402, metadata !628), !dbg !2408
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2409
  %32 = load i8, i8* %31, align 1, !dbg !2409, !tbaa !1840
  %33 = icmp eq i8 %32, 0, !dbg !2409
  br i1 %33, label %34, label %72, !dbg !2411

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2412, !tbaa !1840
  %36 = icmp eq i8 %35, 96, !dbg !2413
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !2412
  br label %75, !dbg !2414

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2309, metadata !628), !dbg !2415
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2321, metadata !628), !dbg !2419
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2322, metadata !628), !dbg !2420
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2421
  %40 = load i8, i8* %39, align 1, !dbg !2421, !tbaa !1840
  %41 = sext i8 %40 to i32, !dbg !2421
  %42 = and i32 %41, -33, !dbg !2421
  %43 = icmp eq i32 %42, 66, !dbg !2421
  br i1 %43, label %44, label %72, !dbg !2421

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2331, metadata !628), !dbg !2422
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2342, metadata !628), !dbg !2424
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2343, metadata !628), !dbg !2425
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2426
  %46 = load i8, i8* %45, align 1, !dbg !2426, !tbaa !1840
  %47 = icmp eq i8 %46, 49, !dbg !2426
  br i1 %47, label %48, label %72, !dbg !2427

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2352, metadata !628), !dbg !2428
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2362, metadata !628), !dbg !2430
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2363, metadata !628), !dbg !2431
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2432
  %50 = load i8, i8* %49, align 1, !dbg !2432, !tbaa !1840
  %51 = icmp eq i8 %50, 56, !dbg !2432
  br i1 %51, label %52, label %72, !dbg !2433

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2373, metadata !628), !dbg !2434
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2382, metadata !628), !dbg !2436
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2383, metadata !628), !dbg !2437
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2438
  %54 = load i8, i8* %53, align 1, !dbg !2438, !tbaa !1840
  %55 = icmp eq i8 %54, 48, !dbg !2438
  br i1 %55, label %56, label %72, !dbg !2439

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2393, metadata !628), !dbg !2440
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2401, metadata !628), !dbg !2442
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2402, metadata !628), !dbg !2443
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2444
  %58 = load i8, i8* %57, align 1, !dbg !2444, !tbaa !1840
  %59 = icmp eq i8 %58, 51, !dbg !2444
  br i1 %59, label %60, label %72, !dbg !2445

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2446, metadata !628), !dbg !2455
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2453, metadata !628), !dbg !2459
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2454, metadata !628), !dbg !2460
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2461
  %62 = load i8, i8* %61, align 1, !dbg !2461, !tbaa !1840
  %63 = icmp eq i8 %62, 48, !dbg !2461
  br i1 %63, label %64, label %72, !dbg !2463

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2464, metadata !628), !dbg !2472
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2470, metadata !628), !dbg !2476
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2471, metadata !628), !dbg !2477
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2478
  %66 = load i8, i8* %65, align 1, !dbg !2478, !tbaa !1840
  %67 = icmp eq i8 %66, 0, !dbg !2478
  br i1 %67, label %68, label %72, !dbg !2480

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2481, !tbaa !1840
  %70 = icmp eq i8 %69, 96, !dbg !2482
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2481
  br label %75, !dbg !2483

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2484
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !2485
  br label %75, !dbg !2486

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2487
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2488 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2492, metadata !628), !dbg !2495
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2493, metadata !628), !dbg !2496
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2494, metadata !628), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2498, metadata !628) #10, !dbg !2511
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2503, metadata !628) #10, !dbg !2513
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2504, metadata !628) #10, !dbg !2514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2505, metadata !628) #10, !dbg !2515
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2516
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2506, metadata !628) #10, !dbg !2517
  %6 = tail call i32* @__errno_location() #17, !dbg !2518
  %7 = load i32, i32* %6, align 4, !dbg !2518, !tbaa !690
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2507, metadata !628) #10, !dbg !2519
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2520
  %9 = load i32, i32* %8, align 4, !dbg !2520, !tbaa !1679
  %10 = or i32 %9, 1, !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2508, metadata !628) #10, !dbg !2522
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2523
  %12 = load i32, i32* %11, align 8, !dbg !2523, !tbaa !1619
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2524
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2525
  %15 = load i8*, i8** %14, align 8, !dbg !2525, !tbaa !1705
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2526
  %17 = load i8*, i8** %16, align 8, !dbg !2526, !tbaa !1708
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2527
  %19 = add i64 %18, 1, !dbg !2528
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2509, metadata !628) #10, !dbg !2529
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2530, metadata !628) #10, !dbg !2535
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2537
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2510, metadata !628) #10, !dbg !2538
  %21 = load i32, i32* %11, align 8, !dbg !2539, !tbaa !1619
  %22 = load i8*, i8** %14, align 8, !dbg !2540, !tbaa !1705
  %23 = load i8*, i8** %16, align 8, !dbg !2541, !tbaa !1708
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2542
  store i32 %7, i32* %6, align 4, !dbg !2543, !tbaa !690
  ret i8* %20, !dbg !2544
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2499 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2498, metadata !628), !dbg !2545
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2503, metadata !628), !dbg !2546
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2504, metadata !628), !dbg !2547
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2505, metadata !628), !dbg !2548
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2549
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2549
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2506, metadata !628), !dbg !2550
  %7 = tail call i32* @__errno_location() #17, !dbg !2551
  %8 = load i32, i32* %7, align 4, !dbg !2551, !tbaa !690
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2507, metadata !628), !dbg !2552
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2553
  %10 = load i32, i32* %9, align 4, !dbg !2553, !tbaa !1679
  %11 = icmp ne i64* %2, null, !dbg !2554
  %12 = xor i1 %11, true, !dbg !2554
  %13 = zext i1 %12 to i32, !dbg !2554
  %14 = or i32 %10, %13, !dbg !2555
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2508, metadata !628), !dbg !2556
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2557
  %16 = load i32, i32* %15, align 8, !dbg !2557, !tbaa !1619
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2558
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2559
  %19 = load i8*, i8** %18, align 8, !dbg !2559, !tbaa !1705
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2560
  %21 = load i8*, i8** %20, align 8, !dbg !2560, !tbaa !1708
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2561
  %23 = add i64 %22, 1, !dbg !2562
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2509, metadata !628), !dbg !2563
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2530, metadata !628) #10, !dbg !2564
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2566
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2510, metadata !628), !dbg !2567
  %25 = load i32, i32* %15, align 8, !dbg !2568, !tbaa !1619
  %26 = load i8*, i8** %18, align 8, !dbg !2569, !tbaa !1705
  %27 = load i8*, i8** %20, align 8, !dbg !2570, !tbaa !1708
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2571
  store i32 %8, i32* %7, align 4, !dbg !2572, !tbaa !690
  br i1 %11, label %29, label %30, !dbg !2573

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2574, !tbaa !999
  br label %30, !dbg !2576

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2577
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2578 {
  %1 = load %struct.tokenbuffer*, %struct.tokenbuffer** @slotvec, align 8, !dbg !2582, !tbaa !635
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %1, i64 0, metadata !2580, metadata !628), !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2581, metadata !628), !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2581, metadata !628), !dbg !2584
  %2 = load i32, i32* @nslots, align 4, !dbg !2585, !tbaa !690
  %3 = icmp sgt i32 %2, 1, !dbg !2588
  br i1 %3, label %4, label %13, !dbg !2589

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2590

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2581, metadata !628), !dbg !2584
  %7 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %1, i64 %6, i32 1, !dbg !2590
  %8 = load i8*, i8** %7, align 8, !dbg !2590, !tbaa !2591
  tail call void @free(i8* %8) #10, !dbg !2593
  %9 = add nuw i64 %6, 1, !dbg !2594
  %10 = load i32, i32* @nslots, align 4, !dbg !2585, !tbaa !690
  %11 = sext i32 %10 to i64, !dbg !2588
  %12 = icmp slt i64 %9, %11, !dbg !2588
  br i1 %12, label %5, label %13, !dbg !2589, !llvm.loop !2595

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %1, i64 0, i32 1, !dbg !2597
  %15 = load i8*, i8** %14, align 8, !dbg !2597, !tbaa !2591
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2599
  br i1 %16, label %18, label %17, !dbg !2600

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !2601
  store i64 256, i64* getelementptr inbounds (%struct.tokenbuffer, %struct.tokenbuffer* @slotvec0, i64 0, i32 0), align 8, !dbg !2603, !tbaa !2604
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.tokenbuffer, %struct.tokenbuffer* @slotvec0, i64 0, i32 1), align 8, !dbg !2605, !tbaa !2591
  br label %18, !dbg !2606

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.tokenbuffer* %1, @slotvec0, !dbg !2607
  br i1 %19, label %22, label %20, !dbg !2609

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.tokenbuffer* %1 to i8*, !dbg !2610
  tail call void @free(i8* %21) #10, !dbg !2612
  store %struct.tokenbuffer* @slotvec0, %struct.tokenbuffer** @slotvec, align 8, !dbg !2613, !tbaa !635
  br label %22, !dbg !2614

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2615, !tbaa !690
  ret void, !dbg !2616
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2617 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2621, metadata !628), !dbg !2623
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2622, metadata !628), !dbg !2624
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2625
  ret i8* %3, !dbg !2626
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2627 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2631, metadata !628), !dbg !2645
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2632, metadata !628), !dbg !2646
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2633, metadata !628), !dbg !2647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2634, metadata !628), !dbg !2648
  %5 = tail call i32* @__errno_location() #17, !dbg !2649
  %6 = load i32, i32* %5, align 4, !dbg !2649, !tbaa !690
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2635, metadata !628), !dbg !2650
  %7 = load %struct.tokenbuffer*, %struct.tokenbuffer** @slotvec, align 8, !dbg !2651, !tbaa !635
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, i64 0, metadata !2636, metadata !628), !dbg !2652
  %8 = icmp slt i32 %0, 0, !dbg !2653
  br i1 %8, label %9, label %10, !dbg !2655

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2656
  unreachable, !dbg !2656

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2657, !tbaa !690
  %12 = icmp sgt i32 %11, %0, !dbg !2658
  br i1 %12, label %34, label %13, !dbg !2659

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.tokenbuffer* %7, @slotvec0, !dbg !2660
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2661
  br i1 %15, label %16, label %17, !dbg !2663

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2664
  unreachable, !dbg !2664

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.tokenbuffer* %7 to i8*, !dbg !2665
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2665
  %20 = add nsw i32 %0, 1, !dbg !2666
  %21 = sext i32 %20 to i64, !dbg !2667
  %22 = shl nsw i64 %21, 4, !dbg !2668
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2669
  %24 = bitcast i8* %23 to %struct.tokenbuffer*, !dbg !2669
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %24, i64 0, metadata !2636, metadata !628), !dbg !2652
  store i8* %23, i8** bitcast (%struct.tokenbuffer** @slotvec to i8**), align 8, !dbg !2670, !tbaa !635
  br i1 %14, label %25, label %26, !dbg !2671

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.tokenbuffer* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2672, !tbaa.struct !2674
  br label %26, !dbg !2675

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2676, !tbaa !690
  %28 = sext i32 %27 to i64, !dbg !2677
  %29 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %24, i64 %28, !dbg !2677
  %30 = bitcast %struct.tokenbuffer* %29 to i8*, !dbg !2678
  %31 = sub nsw i32 %20, %27, !dbg !2679
  %32 = sext i32 %31 to i64, !dbg !2680
  %33 = shl nsw i64 %32, 4, !dbg !2681
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2678
  store i32 %20, i32* @nslots, align 4, !dbg !2682, !tbaa !690
  br label %34, !dbg !2683

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.tokenbuffer* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %35, i64 0, metadata !2636, metadata !628), !dbg !2652
  %36 = sext i32 %0 to i64, !dbg !2684
  %37 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %35, i64 %36, i32 0, !dbg !2685
  %38 = load i64, i64* %37, align 8, !dbg !2685, !tbaa !2604
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2640, metadata !628), !dbg !2686
  %39 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %35, i64 %36, i32 1, !dbg !2687
  %40 = load i8*, i8** %39, align 8, !dbg !2687, !tbaa !2591
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2642, metadata !628), !dbg !2688
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2689
  %42 = load i32, i32* %41, align 4, !dbg !2689, !tbaa !1679
  %43 = or i32 %42, 1, !dbg !2690
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2643, metadata !628), !dbg !2691
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2692
  %45 = load i32, i32* %44, align 8, !dbg !2692, !tbaa !1619
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2693
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2694
  %48 = load i8*, i8** %47, align 8, !dbg !2694, !tbaa !1705
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2695
  %50 = load i8*, i8** %49, align 8, !dbg !2695, !tbaa !1708
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2696
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2644, metadata !628), !dbg !2697
  %52 = icmp ugt i64 %38, %51, !dbg !2698
  br i1 %52, label %63, label %53, !dbg !2700

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2640, metadata !628), !dbg !2686
  store i64 %54, i64* %37, align 8, !dbg !2703, !tbaa !2604
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2704
  br i1 %55, label %57, label %56, !dbg !2706

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2707
  br label %57, !dbg !2707

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2530, metadata !628) #10, !dbg !2708
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2710
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2642, metadata !628), !dbg !2688
  store i8* %58, i8** %39, align 8, !dbg !2711, !tbaa !2591
  %59 = load i32, i32* %44, align 8, !dbg !2712, !tbaa !1619
  %60 = load i8*, i8** %47, align 8, !dbg !2713, !tbaa !1705
  %61 = load i8*, i8** %49, align 8, !dbg !2714, !tbaa !1708
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2715
  br label %63, !dbg !2716

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2642, metadata !628), !dbg !2688
  store i32 %6, i32* %5, align 4, !dbg !2717, !tbaa !690
  ret i8* %64, !dbg !2718
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2719 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2723, metadata !628), !dbg !2726
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2724, metadata !628), !dbg !2727
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2725, metadata !628), !dbg !2728
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2729
  ret i8* %4, !dbg !2730
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2731 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2735, metadata !628), !dbg !2736
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2621, metadata !628) #10, !dbg !2737
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2622, metadata !628) #10, !dbg !2739
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2740
  ret i8* %2, !dbg !2741
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2742 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2746, metadata !628), !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2747, metadata !628), !dbg !2749
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2723, metadata !628) #10, !dbg !2750
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2724, metadata !628) #10, !dbg !2752
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2725, metadata !628) #10, !dbg !2753
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2754
  ret i8* %3, !dbg !2755
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2756 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2764, metadata !2770), !dbg !2771
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2760, metadata !628), !dbg !2773
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2761, metadata !628), !dbg !2774
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2762, metadata !628), !dbg !2775
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2776
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2776
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2763, metadata !628), !dbg !2777
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2769, metadata !628) #10, !dbg !2778
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2779
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2779
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2764, metadata !628) #10, !dbg !2771
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2764, metadata !2780) #10, !dbg !2771
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2771
  %8 = icmp eq i32 %1, 10, !dbg !2781
  br i1 %8, label %9, label %10, !dbg !2783

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2784, !noalias !2785
  unreachable, !dbg !2784

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2764, metadata !2780) #10, !dbg !2771
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2788
  store i32 %1, i32* %11, align 8, !dbg !2788, !alias.scope !2785
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2788
  %13 = bitcast i32* %12 to i8*, !dbg !2788
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2788
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2789
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2763, metadata !628), !dbg !2777
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2790
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2791
  ret i8* %14, !dbg !2792
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2793 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2764, metadata !2770), !dbg !2802
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2797, metadata !628), !dbg !2804
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2798, metadata !628), !dbg !2805
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2799, metadata !628), !dbg !2806
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2800, metadata !628), !dbg !2807
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2808
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2808
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2801, metadata !628), !dbg !2809
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2769, metadata !628) #10, !dbg !2810
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2811
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2811
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2764, metadata !628) #10, !dbg !2802
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2764, metadata !2780) #10, !dbg !2802
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2802
  %9 = icmp eq i32 %1, 10, !dbg !2812
  br i1 %9, label %10, label %11, !dbg !2813

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2814, !noalias !2815
  unreachable, !dbg !2814

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2764, metadata !2780) #10, !dbg !2802
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2818
  store i32 %1, i32* %12, align 8, !dbg !2818, !alias.scope !2815
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2818
  %14 = bitcast i32* %13 to i8*, !dbg !2818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2818
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2819
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2801, metadata !628), !dbg !2809
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2820
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2821
  ret i8* %15, !dbg !2822
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2823 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2764, metadata !2770), !dbg !2829
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2827, metadata !628), !dbg !2832
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2828, metadata !628), !dbg !2833
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2760, metadata !628) #10, !dbg !2834
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2761, metadata !628) #10, !dbg !2835
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2762, metadata !628) #10, !dbg !2836
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2837
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2837
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2763, metadata !628) #10, !dbg !2838
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2769, metadata !628) #10, !dbg !2839
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2840
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2840
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2764, metadata !628) #10, !dbg !2829
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2764, metadata !2780) #10, !dbg !2829
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2829
  %7 = icmp eq i32 %0, 10, !dbg !2841
  br i1 %7, label %8, label %9, !dbg !2842

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2843, !noalias !2844
  unreachable, !dbg !2843

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2764, metadata !2780) #10, !dbg !2829
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2847
  store i32 %0, i32* %10, align 8, !dbg !2847, !alias.scope !2844
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2847
  %12 = bitcast i32* %11 to i8*, !dbg !2847
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2847
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2848
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2763, metadata !628) #10, !dbg !2838
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2849
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2850
  ret i8* %13, !dbg !2851
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2852 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2764, metadata !2770), !dbg !2859
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2856, metadata !628), !dbg !2862
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2857, metadata !628), !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2858, metadata !628), !dbg !2864
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2797, metadata !628) #10, !dbg !2865
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2798, metadata !628) #10, !dbg !2866
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2799, metadata !628) #10, !dbg !2867
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2800, metadata !628) #10, !dbg !2868
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2869
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2869
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2801, metadata !628) #10, !dbg !2870
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2769, metadata !628) #10, !dbg !2871
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2872
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2872
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2764, metadata !628) #10, !dbg !2859
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2764, metadata !2780) #10, !dbg !2859
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2859
  %8 = icmp eq i32 %0, 10, !dbg !2873
  br i1 %8, label %9, label %10, !dbg !2874

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2875, !noalias !2876
  unreachable, !dbg !2875

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2764, metadata !2780) #10, !dbg !2859
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2879
  store i32 %0, i32* %11, align 8, !dbg !2879, !alias.scope !2876
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2879
  %13 = bitcast i32* %12 to i8*, !dbg !2879
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2879
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2880
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2801, metadata !628) #10, !dbg !2870
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2881
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2882
  ret i8* %14, !dbg !2883
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2884 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2888, metadata !628), !dbg !2892
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2889, metadata !628), !dbg !2893
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2890, metadata !628), !dbg !2894
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2895
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2896, !tbaa.struct !2897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2891, metadata !628), !dbg !2898
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1638, metadata !628), !dbg !2899
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1639, metadata !628), !dbg !2901
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1640, metadata !628), !dbg !2902
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1641, metadata !628), !dbg !2903
  %6 = lshr i8 %2, 5, !dbg !2904
  %7 = zext i8 %6 to i64, !dbg !2904
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2905
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1642, metadata !628), !dbg !2906
  %9 = and i8 %2, 31, !dbg !2907
  %10 = zext i8 %9 to i32, !dbg !2908
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1644, metadata !628), !dbg !2909
  %11 = load i32, i32* %8, align 4, !dbg !2910, !tbaa !690
  %12 = lshr i32 %11, %10, !dbg !2911
  %13 = and i32 %12, 1, !dbg !2912
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1645, metadata !628), !dbg !2913
  %14 = xor i32 %13, 1, !dbg !2914
  %15 = shl i32 %14, %10, !dbg !2915
  %16 = xor i32 %15, %11, !dbg !2916
  store i32 %16, i32* %8, align 4, !dbg !2916, !tbaa !690
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2891, metadata !628), !dbg !2898
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2917
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2918
  ret i8* %17, !dbg !2919
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2920 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2924, metadata !628), !dbg !2926
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2925, metadata !628), !dbg !2927
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2888, metadata !628) #10, !dbg !2928
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2889, metadata !628) #10, !dbg !2930
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2890, metadata !628) #10, !dbg !2931
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2932
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2932
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2933, !tbaa.struct !2897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2891, metadata !628) #10, !dbg !2934
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1638, metadata !628) #10, !dbg !2935
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1639, metadata !628) #10, !dbg !2937
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1640, metadata !628) #10, !dbg !2938
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1641, metadata !628) #10, !dbg !2939
  %5 = lshr i8 %1, 5, !dbg !2940
  %6 = zext i8 %5 to i64, !dbg !2940
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2941
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1642, metadata !628) #10, !dbg !2942
  %8 = and i8 %1, 31, !dbg !2943
  %9 = zext i8 %8 to i32, !dbg !2944
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1644, metadata !628) #10, !dbg !2945
  %10 = load i32, i32* %7, align 4, !dbg !2946, !tbaa !690
  %11 = lshr i32 %10, %9, !dbg !2947
  %12 = and i32 %11, 1, !dbg !2948
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1645, metadata !628) #10, !dbg !2949
  %13 = xor i32 %12, 1, !dbg !2950
  %14 = shl i32 %13, %9, !dbg !2951
  %15 = xor i32 %14, %10, !dbg !2952
  store i32 %15, i32* %7, align 4, !dbg !2952, !tbaa !690
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2891, metadata !628) #10, !dbg !2934
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2953
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2954
  ret i8* %16, !dbg !2955
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2956 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2958, metadata !628), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2924, metadata !628) #10, !dbg !2960
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2925, metadata !628) #10, !dbg !2962
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2888, metadata !628) #10, !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2889, metadata !628) #10, !dbg !2965
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2890, metadata !628) #10, !dbg !2966
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2967
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2967
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2968, !tbaa.struct !2897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2891, metadata !628) #10, !dbg !2969
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1638, metadata !628) #10, !dbg !2970
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1639, metadata !628) #10, !dbg !2972
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1640, metadata !628) #10, !dbg !2973
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1641, metadata !628) #10, !dbg !2974
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2975
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1642, metadata !628) #10, !dbg !2976
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1644, metadata !628) #10, !dbg !2977
  %5 = load i32, i32* %4, align 4, !dbg !2978, !tbaa !690
  %6 = or i32 %5, 67108864, !dbg !2979
  store i32 %6, i32* %4, align 4, !dbg !2979, !tbaa !690
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2891, metadata !628) #10, !dbg !2969
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2980
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2981
  ret i8* %7, !dbg !2982
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2983 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2985, metadata !628), !dbg !2987
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2986, metadata !628), !dbg !2988
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2888, metadata !628) #10, !dbg !2989
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2889, metadata !628) #10, !dbg !2991
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2890, metadata !628) #10, !dbg !2992
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2993
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2993
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2994, !tbaa.struct !2897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2891, metadata !628) #10, !dbg !2995
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1638, metadata !628) #10, !dbg !2996
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1639, metadata !628) #10, !dbg !2998
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1640, metadata !628) #10, !dbg !2999
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1641, metadata !628) #10, !dbg !3000
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3001
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1642, metadata !628) #10, !dbg !3002
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1644, metadata !628) #10, !dbg !3003
  %6 = load i32, i32* %5, align 4, !dbg !3004, !tbaa !690
  %7 = or i32 %6, 67108864, !dbg !3005
  store i32 %7, i32* %5, align 4, !dbg !3005, !tbaa !690
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2891, metadata !628) #10, !dbg !2995
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3007
  ret i8* %8, !dbg !3008
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3009 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2764, metadata !2770), !dbg !3015
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3011, metadata !628), !dbg !3017
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3012, metadata !628), !dbg !3018
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3013, metadata !628), !dbg !3019
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3020
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3020
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2769, metadata !628) #10, !dbg !3021
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3022
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3022
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2764, metadata !628) #10, !dbg !3015
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2764, metadata !2780) #10, !dbg !3015
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3015
  %9 = icmp eq i32 %1, 10, !dbg !3023
  br i1 %9, label %10, label %11, !dbg !3024

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3025, !noalias !3026
  unreachable, !dbg !3025

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2764, metadata !2780) #10, !dbg !3015
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3029
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3029
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3030
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3031
  store i32 %1, i32* %13, align 8, !dbg !3031
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3031
  %15 = bitcast i32* %14 to i8*, !dbg !3031
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3031
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3014, metadata !628), !dbg !3032
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1638, metadata !628), !dbg !3033
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1639, metadata !628), !dbg !3035
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1640, metadata !628), !dbg !3036
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1641, metadata !628), !dbg !3037
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3038
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1642, metadata !628), !dbg !3039
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1644, metadata !628), !dbg !3040
  %17 = load i32, i32* %16, align 4, !dbg !3041, !tbaa !690
  %18 = or i32 %17, 67108864, !dbg !3042
  store i32 %18, i32* %16, align 4, !dbg !3042, !tbaa !690
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3014, metadata !628), !dbg !3032
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3043
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3044
  ret i8* %19, !dbg !3045
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3046 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3050, metadata !628), !dbg !3054
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3051, metadata !628), !dbg !3055
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3052, metadata !628), !dbg !3056
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3053, metadata !628), !dbg !3057
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3058, metadata !628) #10, !dbg !3068
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3063, metadata !628) #10, !dbg !3070
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3064, metadata !628) #10, !dbg !3071
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3065, metadata !628) #10, !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3066, metadata !628) #10, !dbg !3073
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3074
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3075, !tbaa.struct !2897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3067, metadata !628) #10, !dbg !3076
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1687, metadata !628) #10, !dbg !3077
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1688, metadata !628) #10, !dbg !3079
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1689, metadata !628) #10, !dbg !3080
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1687, metadata !628) #10, !dbg !3077
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1687, metadata !628) #10, !dbg !3077
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3081
  store i32 10, i32* %7, align 8, !dbg !3082, !tbaa !1619
  %8 = icmp ne i8* %1, null, !dbg !3083
  %9 = icmp ne i8* %2, null, !dbg !3084
  %10 = and i1 %8, %9, !dbg !3085
  br i1 %10, label %12, label %11, !dbg !3085

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3086
  unreachable, !dbg !3086

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3087
  store i8* %1, i8** %13, align 8, !dbg !3088, !tbaa !1705
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3089
  store i8* %2, i8** %14, align 8, !dbg !3090, !tbaa !1708
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3067, metadata !628) #10, !dbg !3076
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3091
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3092
  ret i8* %15, !dbg !3093
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3059 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3058, metadata !628), !dbg !3094
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3063, metadata !628), !dbg !3095
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3064, metadata !628), !dbg !3096
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3065, metadata !628), !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3066, metadata !628), !dbg !3098
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3099
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3099
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3100, !tbaa.struct !2897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3067, metadata !628), !dbg !3101
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1687, metadata !628) #10, !dbg !3102
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1688, metadata !628) #10, !dbg !3104
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1689, metadata !628) #10, !dbg !3105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1687, metadata !628) #10, !dbg !3102
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1687, metadata !628) #10, !dbg !3102
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3106
  store i32 10, i32* %8, align 8, !dbg !3107, !tbaa !1619
  %9 = icmp ne i8* %1, null, !dbg !3108
  %10 = icmp ne i8* %2, null, !dbg !3109
  %11 = and i1 %9, %10, !dbg !3110
  br i1 %11, label %13, label %12, !dbg !3110

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3111
  unreachable, !dbg !3111

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3112
  store i8* %1, i8** %14, align 8, !dbg !3113, !tbaa !1705
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3114
  store i8* %2, i8** %15, align 8, !dbg !3115, !tbaa !1708
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3067, metadata !628), !dbg !3101
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3116
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3117
  ret i8* %16, !dbg !3118
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3119 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3123, metadata !628), !dbg !3126
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3124, metadata !628), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3125, metadata !628), !dbg !3128
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3050, metadata !628) #10, !dbg !3129
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3051, metadata !628) #10, !dbg !3131
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3052, metadata !628) #10, !dbg !3132
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3053, metadata !628) #10, !dbg !3133
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3058, metadata !628) #10, !dbg !3134
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3063, metadata !628) #10, !dbg !3136
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3064, metadata !628) #10, !dbg !3137
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3065, metadata !628) #10, !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3066, metadata !628) #10, !dbg !3139
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3140
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3140
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3141, !tbaa.struct !2897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3067, metadata !628) #10, !dbg !3142
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1687, metadata !628) #10, !dbg !3143
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1688, metadata !628) #10, !dbg !3145
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1689, metadata !628) #10, !dbg !3146
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1687, metadata !628) #10, !dbg !3143
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1687, metadata !628) #10, !dbg !3143
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3147
  store i32 10, i32* %6, align 8, !dbg !3148, !tbaa !1619
  %7 = icmp ne i8* %0, null, !dbg !3149
  %8 = icmp ne i8* %1, null, !dbg !3150
  %9 = and i1 %7, %8, !dbg !3151
  br i1 %9, label %11, label %10, !dbg !3151

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3152
  unreachable, !dbg !3152

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3153
  store i8* %0, i8** %12, align 8, !dbg !3154, !tbaa !1705
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3155
  store i8* %1, i8** %13, align 8, !dbg !3156, !tbaa !1708
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3067, metadata !628) #10, !dbg !3142
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3157
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3158
  ret i8* %14, !dbg !3159
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3160 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3164, metadata !628), !dbg !3168
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3165, metadata !628), !dbg !3169
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3166, metadata !628), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3167, metadata !628), !dbg !3171
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3058, metadata !628) #10, !dbg !3172
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3063, metadata !628) #10, !dbg !3174
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3064, metadata !628) #10, !dbg !3175
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3065, metadata !628) #10, !dbg !3176
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3066, metadata !628) #10, !dbg !3177
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3178
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3178
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3179, !tbaa.struct !2897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3067, metadata !628) #10, !dbg !3180
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1687, metadata !628) #10, !dbg !3181
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1688, metadata !628) #10, !dbg !3183
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1689, metadata !628) #10, !dbg !3184
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1687, metadata !628) #10, !dbg !3181
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1687, metadata !628) #10, !dbg !3181
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3185
  store i32 10, i32* %7, align 8, !dbg !3186, !tbaa !1619
  %8 = icmp ne i8* %0, null, !dbg !3187
  %9 = icmp ne i8* %1, null, !dbg !3188
  %10 = and i1 %8, %9, !dbg !3189
  br i1 %10, label %12, label %11, !dbg !3189

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3190
  unreachable, !dbg !3190

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3191
  store i8* %0, i8** %13, align 8, !dbg !3192, !tbaa !1705
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3193
  store i8* %1, i8** %14, align 8, !dbg !3194, !tbaa !1708
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3067, metadata !628) #10, !dbg !3180
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3195
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3196
  ret i8* %15, !dbg !3197
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3198 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3202, metadata !628), !dbg !3205
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3203, metadata !628), !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3204, metadata !628), !dbg !3207
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3208
  ret i8* %4, !dbg !3209
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3210 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3214, metadata !628), !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3215, metadata !628), !dbg !3217
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3202, metadata !628) #10, !dbg !3218
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3203, metadata !628) #10, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3204, metadata !628) #10, !dbg !3221
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3222
  ret i8* %3, !dbg !3223
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3224 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3228, metadata !628), !dbg !3230
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3229, metadata !628), !dbg !3231
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3202, metadata !628) #10, !dbg !3232
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3203, metadata !628) #10, !dbg !3234
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3204, metadata !628) #10, !dbg !3235
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3236
  ret i8* %3, !dbg !3237
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3238 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3242, metadata !628), !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3228, metadata !628) #10, !dbg !3244
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3229, metadata !628) #10, !dbg !3246
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3202, metadata !628) #10, !dbg !3247
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3203, metadata !628) #10, !dbg !3249
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3204, metadata !628) #10, !dbg !3250
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3251
  ret i8* %2, !dbg !3252
}

; Function Attrs: nounwind sspstrong uwtable
define void @init_tokenbuffer(%struct.tokenbuffer* nocapture) local_unnamed_addr #6 !dbg !3253 {
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %0, i64 0, metadata !3263, metadata !628), !dbg !3264
  %2 = bitcast %struct.tokenbuffer* %0 to i8*, !dbg !3265
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false), !dbg !3266
  ret void, !dbg !3265
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @readtoken(%struct._IO_FILE*, i8* nocapture readonly, i64, %struct.tokenbuffer* nocapture) local_unnamed_addr #6 !dbg !3267 {
  %5 = alloca [4 x i64], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3311, metadata !628), !dbg !3326
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3312, metadata !628), !dbg !3327
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3313, metadata !628), !dbg !3328
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %3, i64 0, metadata !3314, metadata !628), !dbg !3329
  %6 = bitcast [4 x i64]* %5 to i8*, !dbg !3330
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #10, !dbg !3330
  tail call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !3319, metadata !628), !dbg !3331
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 32, i32 16, i1 false), !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3317, metadata !628), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3317, metadata !628), !dbg !3333
  %7 = icmp eq i64 %2, 0, !dbg !3334
  br i1 %7, label %51, label %8, !dbg !3335

; <label>:8:                                      ; preds = %4
  %9 = and i64 %2, 1, !dbg !3336
  %10 = icmp eq i64 %2, 1, !dbg !3336
  br i1 %10, label %38, label %11, !dbg !3336

; <label>:11:                                     ; preds = %8
  %12 = sub i64 %2, %9, !dbg !3336
  br label %13, !dbg !3336

; <label>:13:                                     ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %35, %13 ]
  %15 = phi i64 [ %12, %11 ], [ %36, %13 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3317, metadata !628), !dbg !3333
  %16 = getelementptr inbounds i8, i8* %1, i64 %14, !dbg !3336
  %17 = load i8, i8* %16, align 1, !dbg !3336, !tbaa !1840
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3322, metadata !628), !dbg !3337
  %18 = zext i8 %17 to i64, !dbg !3338
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !3339, metadata !628), !dbg !3347
  tail call void @llvm.dbg.value(metadata [4 x i64]* %5, i64 0, metadata !3345, metadata !3349), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3346, metadata !628), !dbg !3351
  %19 = and i64 %18, 63, !dbg !3352
  %20 = shl i64 1, %19, !dbg !3353
  %21 = lshr i64 %18, 6, !dbg !3354
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %21, !dbg !3355
  %23 = load i64, i64* %22, align 8, !dbg !3356, !tbaa !999
  %24 = or i64 %20, %23, !dbg !3356
  store i64 %24, i64* %22, align 8, !dbg !3356, !tbaa !999
  %25 = or i64 %14, 1, !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !3317, metadata !628), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !3317, metadata !628), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3317, metadata !628), !dbg !3333
  %26 = getelementptr inbounds i8, i8* %1, i64 %25, !dbg !3336
  %27 = load i8, i8* %26, align 1, !dbg !3336, !tbaa !1840
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3322, metadata !628), !dbg !3337
  %28 = zext i8 %27 to i64, !dbg !3338
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !3339, metadata !628), !dbg !3347
  tail call void @llvm.dbg.value(metadata [4 x i64]* %5, i64 0, metadata !3345, metadata !3349), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3346, metadata !628), !dbg !3351
  %29 = and i64 %28, 63, !dbg !3352
  %30 = shl i64 1, %29, !dbg !3353
  %31 = lshr i64 %28, 6, !dbg !3354
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %31, !dbg !3355
  %33 = load i64, i64* %32, align 8, !dbg !3356, !tbaa !999
  %34 = or i64 %30, %33, !dbg !3356
  store i64 %34, i64* %32, align 8, !dbg !3356, !tbaa !999
  %35 = add i64 %14, 2, !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !3317, metadata !628), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !3317, metadata !628), !dbg !3333
  %36 = add i64 %15, -2, !dbg !3335
  %37 = icmp eq i64 %36, 0, !dbg !3335
  br i1 %37, label %38, label %13, !dbg !3335, !llvm.loop !3358

; <label>:38:                                     ; preds = %13, %8
  %39 = phi i64 [ 0, %8 ], [ %35, %13 ]
  %40 = icmp eq i64 %9, 0
  br i1 %40, label %51, label %41

; <label>:41:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !3317, metadata !628), !dbg !3333
  %42 = getelementptr inbounds i8, i8* %1, i64 %39, !dbg !3336
  %43 = load i8, i8* %42, align 1, !dbg !3336, !tbaa !1840
  tail call void @llvm.dbg.value(metadata i8 %43, i64 0, metadata !3322, metadata !628), !dbg !3337
  %44 = zext i8 %43 to i64, !dbg !3338
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !3339, metadata !628), !dbg !3347
  tail call void @llvm.dbg.value(metadata [4 x i64]* %5, i64 0, metadata !3345, metadata !3349), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3346, metadata !628), !dbg !3351
  %45 = and i64 %44, 63, !dbg !3352
  %46 = shl i64 1, %45, !dbg !3353
  %47 = lshr i64 %44, 6, !dbg !3354
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %47, !dbg !3355
  %49 = load i64, i64* %48, align 8, !dbg !3356, !tbaa !999
  %50 = or i64 %46, %49, !dbg !3356
  store i64 %50, i64* %48, align 8, !dbg !3356, !tbaa !999
  br label %51

; <label>:51:                                     ; preds = %41, %38, %4
  %52 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %53 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  br label %54, !dbg !3360

; <label>:54:                                     ; preds = %65, %51
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3362, metadata !628) #10, !dbg !3368
  %55 = load i8*, i8** %52, align 8, !dbg !3371, !tbaa !3372
  %56 = load i8*, i8** %53, align 8, !dbg !3371, !tbaa !3374
  %57 = icmp ult i8* %55, %56, !dbg !3371
  br i1 %57, label %58, label %62, !dbg !3371, !prof !3375

; <label>:58:                                     ; preds = %54
  %59 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !3371
  store i8* %59, i8** %52, align 8, !dbg !3371, !tbaa !3372
  %60 = load i8, i8* %55, align 1, !dbg !3371, !tbaa !1840
  %61 = zext i8 %60 to i32, !dbg !3371
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3316, metadata !628), !dbg !3376
  br label %65, !dbg !3377

; <label>:62:                                     ; preds = %54
  %63 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #10, !dbg !3371
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3316, metadata !628), !dbg !3376
  %64 = icmp sgt i32 %63, -1, !dbg !3378
  br i1 %64, label %65, label %135, !dbg !3377

; <label>:65:                                     ; preds = %58, %62
  %66 = phi i32 [ %61, %58 ], [ %63, %62 ]
  %67 = sext i32 %66 to i64, !dbg !3379
  tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !3380, metadata !628), !dbg !3388
  tail call void @llvm.dbg.value(metadata [4 x i64]* %5, i64 0, metadata !3387, metadata !3349), !dbg !3390
  %68 = lshr i64 %67, 6, !dbg !3391
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %68, !dbg !3392
  %70 = load i64, i64* %69, align 8, !dbg !3392, !tbaa !999
  %71 = and i64 %67, 63, !dbg !3393
  %72 = shl i64 1, %71, !dbg !3392
  %73 = and i64 %72, %70, !dbg !3392
  %74 = icmp eq i64 %73, 0, !dbg !3392
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3316, metadata !628), !dbg !3376
  br i1 %74, label %75, label %54, !dbg !3394, !llvm.loop !3395

; <label>:75:                                     ; preds = %65
  %76 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 1, !dbg !3397
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !3315, metadata !628), !dbg !3398
  %77 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 0, !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !3318, metadata !628), !dbg !3400
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3317, metadata !628), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3317, metadata !628), !dbg !3333
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !3316, metadata !628), !dbg !3376
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !3315, metadata !628), !dbg !3398
  %78 = load i64, i64* %77, align 8, !dbg !3399, !tbaa !3401
  %79 = load i8*, i8** %76, align 8, !dbg !3397, !tbaa !768
  br label %80, !dbg !3402

; <label>:80:                                     ; preds = %130, %75
  %81 = phi i1 [ false, %75 ], [ %131, %130 ]
  %82 = phi i64 [ 0, %75 ], [ %116, %130 ]
  %83 = phi i32 [ %66, %75 ], [ %132, %130 ]
  %84 = phi i8* [ %79, %75 ], [ %104, %130 ]
  %85 = phi i64 [ %78, %75 ], [ %103, %130 ]
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !3318, metadata !628), !dbg !3400
  tail call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !3315, metadata !628), !dbg !3398
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !3316, metadata !628), !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3317, metadata !628), !dbg !3333
  %86 = icmp eq i64 %82, %85, !dbg !3407
  br i1 %86, label %87, label %102, !dbg !3409

; <label>:87:                                     ; preds = %80
  tail call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !574, metadata !628) #10, !dbg !3410
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !576, metadata !628) #10, !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !577, metadata !628) #10, !dbg !3413
  %88 = icmp eq i8* %84, null, !dbg !3414
  br i1 %88, label %89, label %92, !dbg !3416

; <label>:89:                                     ; preds = %87
  %90 = icmp eq i64 %82, 0, !dbg !3417
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !577, metadata !628) #10, !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !577, metadata !628) #10, !dbg !3413
  %91 = select i1 %90, i64 128, i64 %82, !dbg !3420
  br label %99, !dbg !3420

; <label>:92:                                     ; preds = %87
  %93 = icmp ult i64 %82, 6148914691236517204, !dbg !3421
  br i1 %93, label %95, label %94, !dbg !3424

; <label>:94:                                     ; preds = %92
  tail call void @xalloc_die() #15, !dbg !3425
  unreachable, !dbg !3425

; <label>:95:                                     ; preds = %92
  %96 = lshr i64 %82, 1, !dbg !3426
  %97 = add i64 %82, 1, !dbg !3427
  %98 = add i64 %97, %96, !dbg !3428
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !577, metadata !628) #10, !dbg !3413
  br label %99

; <label>:99:                                     ; preds = %89, %95
  %100 = phi i64 [ %98, %95 ], [ %91, %89 ]
  tail call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !577, metadata !628) #10, !dbg !3413
  %101 = tail call i8* @xrealloc(i8* %84, i64 %100) #10, !dbg !3429
  tail call void @llvm.dbg.value(metadata i8* %101, i64 0, metadata !3315, metadata !628), !dbg !3398
  br label %102, !dbg !3430

; <label>:102:                                    ; preds = %99, %80
  %103 = phi i64 [ %100, %99 ], [ %85, %80 ]
  %104 = phi i8* [ %101, %99 ], [ %84, %80 ]
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !3315, metadata !628), !dbg !3398
  br i1 %81, label %133, label %105, !dbg !3431

; <label>:105:                                    ; preds = %102
  %106 = sext i32 %83 to i64, !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !3380, metadata !628), !dbg !3434
  tail call void @llvm.dbg.value(metadata [4 x i64]* %5, i64 0, metadata !3387, metadata !3349), !dbg !3436
  %107 = lshr i64 %106, 6, !dbg !3437
  %108 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %107, !dbg !3438
  %109 = load i64, i64* %108, align 8, !dbg !3438, !tbaa !999
  %110 = and i64 %106, 63, !dbg !3439
  %111 = shl i64 1, %110, !dbg !3438
  %112 = and i64 %109, %111, !dbg !3438
  %113 = icmp eq i64 %112, 0, !dbg !3438
  br i1 %113, label %114, label %133, !dbg !3440

; <label>:114:                                    ; preds = %105
  %115 = trunc i32 %83 to i8, !dbg !3441
  %116 = add i64 %82, 1, !dbg !3442
  tail call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !3317, metadata !628), !dbg !3333
  %117 = getelementptr inbounds i8, i8* %104, i64 %82, !dbg !3443
  store i8 %115, i8* %117, align 1, !dbg !3444, !tbaa !1840
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3362, metadata !628) #10, !dbg !3445
  %118 = load i8*, i8** %52, align 8, !dbg !3447, !tbaa !3372
  %119 = load i8*, i8** %53, align 8, !dbg !3447, !tbaa !3374
  %120 = icmp ult i8* %118, %119, !dbg !3447
  br i1 %120, label %121, label %125, !dbg !3447, !prof !3375

; <label>:121:                                    ; preds = %114
  %122 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !3447
  store i8* %122, i8** %52, align 8, !dbg !3447, !tbaa !3372
  %123 = load i8, i8* %118, align 1, !dbg !3447, !tbaa !1840
  %124 = zext i8 %123 to i32, !dbg !3447
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !3316, metadata !628), !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !3317, metadata !628), !dbg !3333
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !3316, metadata !628), !dbg !3376
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !3315, metadata !628), !dbg !3398
  br label %130, !dbg !3402

; <label>:125:                                    ; preds = %114
  %126 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #10, !dbg !3447
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !3316, metadata !628), !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !3317, metadata !628), !dbg !3333
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !3316, metadata !628), !dbg !3376
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !3315, metadata !628), !dbg !3398
  %127 = icmp slt i32 %126, 0, !dbg !3448
  %128 = icmp eq i64 %116, 0, !dbg !3449
  %129 = and i1 %127, %128, !dbg !3402
  br i1 %129, label %135, label %130, !dbg !3402

; <label>:130:                                    ; preds = %125, %121
  %131 = phi i1 [ %127, %125 ], [ false, %121 ]
  %132 = phi i32 [ %126, %125 ], [ %124, %121 ]
  br label %80, !dbg !3400, !llvm.loop !3450

; <label>:133:                                    ; preds = %105, %102
  %134 = getelementptr inbounds i8, i8* %104, i64 %82
  store i8 0, i8* %134, align 1, !tbaa !1840
  store i8* %104, i8** %76, align 8, !dbg !3453, !tbaa !768
  tail call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !3318, metadata !628), !dbg !3400
  store i64 %103, i64* %77, align 8, !dbg !3454, !tbaa !3401
  br label %135, !dbg !3455

; <label>:135:                                    ; preds = %62, %125, %133
  %136 = phi i64 [ %82, %133 ], [ -1, %125 ], [ -1, %62 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #10, !dbg !3456
  ret i64 %136, !dbg !3456
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @readtokens(%struct._IO_FILE*, i64, i8* nocapture readonly, i64, i8*** nocapture, i64**) local_unnamed_addr #6 !dbg !3457 {
  %7 = alloca %struct.tokenbuffer, align 8
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3463, metadata !628), !dbg !3480
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3464, metadata !628), !dbg !3481
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3465, metadata !628), !dbg !3482
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3466, metadata !628), !dbg !3483
  tail call void @llvm.dbg.value(metadata i8*** %4, i64 0, metadata !3467, metadata !628), !dbg !3484
  tail call void @llvm.dbg.value(metadata i64** %5, i64 0, metadata !3468, metadata !628), !dbg !3485
  %8 = bitcast %struct.tokenbuffer* %7 to i8*, !dbg !3486
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #10, !dbg !3486
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, i64 0, metadata !3470, metadata !628), !dbg !3487
  %9 = icmp eq i64 %1, 0, !dbg !3488
  %10 = add i64 %1, 1, !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !3464, metadata !628), !dbg !3481
  %11 = select i1 %9, i64 64, i64 %10, !dbg !3491
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3464, metadata !628), !dbg !3481
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3473, metadata !628), !dbg !3492
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3493, metadata !628) #10, !dbg !3499
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !3498, metadata !628) #10, !dbg !3501
  %12 = icmp ugt i64 %11, 1152921504606846975, !dbg !3502
  br i1 %12, label %13, label %14, !dbg !3504

; <label>:13:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3505
  unreachable, !dbg !3505

; <label>:14:                                     ; preds = %6
  %15 = shl i64 %11, 3, !dbg !3506
  %16 = tail call noalias i8* @xmalloc(i64 %15) #10, !dbg !3507
  %17 = bitcast i8* %16 to i8**, !dbg !3508
  tail call void @llvm.dbg.value(metadata i8** %17, i64 0, metadata !3471, metadata !628), !dbg !3509
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3473, metadata !628), !dbg !3492
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3493, metadata !628) #10, !dbg !3510
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !3498, metadata !628) #10, !dbg !3512
  %18 = tail call noalias i8* @xmalloc(i64 %15) #10, !dbg !3513
  %19 = bitcast i8* %18 to i64*, !dbg !3514
  tail call void @llvm.dbg.value(metadata i64* %19, i64 0, metadata !3472, metadata !628), !dbg !3515
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3474, metadata !628), !dbg !3516
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, i64 0, metadata !3469, metadata !628), !dbg !3517
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, i64 0, metadata !3263, metadata !628) #10, !dbg !3518
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 16, i32 8, i1 false) #10, !dbg !3520
  %20 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %7, i64 0, i32 1
  br label %21, !dbg !3521

; <label>:21:                                     ; preds = %69, %14
  %22 = phi i64 [ %11, %14 ], [ %58, %69 ]
  %23 = phi i8* [ %18, %14 ], [ %59, %69 ]
  %24 = phi i8* [ %18, %14 ], [ %60, %69 ]
  %25 = phi i64* [ %19, %14 ], [ %61, %69 ]
  %26 = phi i64 [ 0, %14 ], [ %74, %69 ]
  %27 = phi i8* [ %16, %14 ], [ %62, %69 ]
  %28 = phi i8** [ %17, %14 ], [ %63, %69 ]
  tail call void @llvm.dbg.value(metadata i8** %28, i64 0, metadata !3471, metadata !628), !dbg !3509
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !3474, metadata !628), !dbg !3516
  tail call void @llvm.dbg.value(metadata i64* %25, i64 0, metadata !3472, metadata !628), !dbg !3515
  tail call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, i64 0, metadata !3469, metadata !628), !dbg !3517
  %29 = call i64 @readtoken(%struct._IO_FILE* %0, i8* %2, i64 %3, %struct.tokenbuffer* nonnull %7), !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !3479, metadata !628), !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !3473, metadata !628), !dbg !3492
  %30 = icmp ult i64 %26, %22, !dbg !3524
  br i1 %30, label %57, label %31, !dbg !3526

; <label>:31:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !574, metadata !628) #10, !dbg !3527
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !576, metadata !628) #10, !dbg !3530
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !577, metadata !628) #10, !dbg !3531
  %32 = icmp eq i8* %27, null, !dbg !3532
  br i1 %32, label %33, label %35, !dbg !3533

; <label>:33:                                     ; preds = %31
  %34 = icmp eq i64 %22, 0, !dbg !3534
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !577, metadata !628) #10, !dbg !3531
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !577, metadata !628) #10, !dbg !3531
  br i1 %34, label %42, label %44

; <label>:35:                                     ; preds = %31
  %36 = icmp ult i64 %22, 768614336404564650, !dbg !3535
  br i1 %36, label %38, label %37, !dbg !3536

; <label>:37:                                     ; preds = %35
  tail call void @xalloc_die() #15, !dbg !3537
  unreachable, !dbg !3537

; <label>:38:                                     ; preds = %35
  %39 = lshr i64 %22, 1, !dbg !3538
  %40 = add i64 %22, 1, !dbg !3539
  %41 = add i64 %40, %39, !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !577, metadata !628) #10, !dbg !3531
  br label %44

; <label>:42:                                     ; preds = %33
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !577, metadata !628) #10, !dbg !3531
  %43 = tail call i8* @xrealloc(i8* %27, i64 128) #10, !dbg !3541
  tail call void @llvm.dbg.value(metadata i8** %54, i64 0, metadata !3471, metadata !628), !dbg !3509
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !3473, metadata !628), !dbg !3492
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3542, metadata !628) #10, !dbg !3549
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !3547, metadata !628) #10, !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !3548, metadata !628) #10, !dbg !3552
  br label %50, !dbg !3553

; <label>:44:                                     ; preds = %33, %38
  %45 = phi i64 [ %41, %38 ], [ %22, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !577, metadata !628) #10, !dbg !3531
  %46 = shl i64 %45, 3, !dbg !3554
  %47 = tail call i8* @xrealloc(i8* %27, i64 %46) #10, !dbg !3541
  tail call void @llvm.dbg.value(metadata i8** %54, i64 0, metadata !3471, metadata !628), !dbg !3509
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !3473, metadata !628), !dbg !3492
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3542, metadata !628) #10, !dbg !3549
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !3547, metadata !628) #10, !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !3548, metadata !628) #10, !dbg !3552
  %48 = icmp ugt i64 %45, 1152921504606846975, !dbg !3555
  br i1 %48, label %49, label %50, !dbg !3553

; <label>:49:                                     ; preds = %44
  tail call void @xalloc_die() #15, !dbg !3557
  unreachable, !dbg !3557

; <label>:50:                                     ; preds = %42, %44
  %51 = phi i8* [ %43, %42 ], [ %47, %44 ]
  %52 = phi i64 [ 128, %42 ], [ %46, %44 ]
  %53 = phi i64 [ 16, %42 ], [ %45, %44 ]
  %54 = bitcast i8* %51 to i8**, !dbg !3558
  %55 = tail call i8* @xrealloc(i8* %24, i64 %52) #10, !dbg !3559
  %56 = bitcast i8* %55 to i64*, !dbg !3560
  tail call void @llvm.dbg.value(metadata i64* %56, i64 0, metadata !3472, metadata !628), !dbg !3515
  br label %57, !dbg !3561

; <label>:57:                                     ; preds = %21, %50
  %58 = phi i64 [ %22, %21 ], [ %53, %50 ]
  %59 = phi i8* [ %23, %21 ], [ %55, %50 ]
  %60 = phi i8* [ %24, %21 ], [ %55, %50 ]
  %61 = phi i64* [ %25, %21 ], [ %56, %50 ]
  %62 = phi i8* [ %27, %21 ], [ %51, %50 ]
  %63 = phi i8** [ %28, %21 ], [ %54, %50 ]
  tail call void @llvm.dbg.value(metadata i8** %63, i64 0, metadata !3471, metadata !628), !dbg !3509
  tail call void @llvm.dbg.value(metadata i64* %61, i64 0, metadata !3472, metadata !628), !dbg !3515
  %64 = icmp eq i64 %29, -1, !dbg !3562
  br i1 %64, label %75, label %65, !dbg !3564

; <label>:65:                                     ; preds = %57
  %66 = add i64 %29, 1, !dbg !3565
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !3493, metadata !628) #10, !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3498, metadata !628) #10, !dbg !3568
  %67 = icmp slt i64 %66, 0, !dbg !3569
  br i1 %67, label %68, label %69, !dbg !3570

; <label>:68:                                     ; preds = %65
  tail call void @xalloc_die() #15, !dbg !3571
  unreachable, !dbg !3571

; <label>:69:                                     ; preds = %65
  %70 = tail call noalias i8* @xmalloc(i64 %66) #10, !dbg !3572
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !3475, metadata !628), !dbg !3573
  %71 = getelementptr inbounds i64, i64* %61, i64 %26, !dbg !3574
  store i64 %29, i64* %71, align 8, !dbg !3575, !tbaa !999
  %72 = load i8*, i8** %20, align 8, !dbg !3576, !tbaa !768
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %72, i64 %66, i32 1, i1 false), !dbg !3577
  %73 = getelementptr inbounds i8*, i8** %63, i64 %26, !dbg !3578
  store i8* %70, i8** %73, align 8, !dbg !3579, !tbaa !635
  %74 = add i64 %26, 1, !dbg !3580
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3474, metadata !628), !dbg !3516
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !3474, metadata !628), !dbg !3516
  br label %21, !dbg !3581, !llvm.loop !3582

; <label>:75:                                     ; preds = %57
  %76 = getelementptr inbounds i8*, i8** %63, i64 %26, !dbg !3585
  store i8* null, i8** %76, align 8, !dbg !3587, !tbaa !635
  %77 = getelementptr inbounds i64, i64* %61, i64 %26, !dbg !3588
  store i64 0, i64* %77, align 8, !dbg !3589, !tbaa !999
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !3474, metadata !628), !dbg !3516
  %78 = load i8*, i8** %20, align 8, !dbg !3590, !tbaa !768
  tail call void @free(i8* %78) #10, !dbg !3591
  store i8** %63, i8*** %4, align 8, !dbg !3592, !tbaa !635
  %79 = icmp eq i64** %5, null, !dbg !3593
  br i1 %79, label %82, label %80, !dbg !3595

; <label>:80:                                     ; preds = %75
  %81 = bitcast i64** %5 to i8**, !dbg !3596
  store i8* %59, i8** %81, align 8, !dbg !3596, !tbaa !635
  br label %83, !dbg !3597

; <label>:82:                                     ; preds = %75
  tail call void @free(i8* %59) #10, !dbg !3598
  br label %83

; <label>:83:                                     ; preds = %82, %80
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #10, !dbg !3599
  ret i64 %26, !dbg !3600
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3601 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3646, metadata !628), !dbg !3652
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3647, metadata !628), !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3648, metadata !628), !dbg !3654
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3649, metadata !628), !dbg !3655
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3650, metadata !628), !dbg !3656
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3651, metadata !628), !dbg !3657
  %7 = icmp eq i8* %1, null, !dbg !3658
  br i1 %7, label %10, label %8, !dbg !3660

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3661
  br label %12, !dbg !3661

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3662
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #10, !dbg !3663
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3663
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.79, i64 0, i64 0), i32 5) #10, !dbg !3664
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3664
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
  ], !dbg !3665

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3666
  unreachable, !dbg !3666

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #10, !dbg !3668
  %20 = load i8*, i8** %4, align 8, !dbg !3668, !tbaa !635
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3668
  br label %146, !dbg !3669

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.81, i64 0, i64 0), i32 5) #10, !dbg !3670
  %24 = load i8*, i8** %4, align 8, !dbg !3670, !tbaa !635
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3670
  %26 = load i8*, i8** %25, align 8, !dbg !3670, !tbaa !635
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3670
  br label %146, !dbg !3671

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #10, !dbg !3672
  %30 = load i8*, i8** %4, align 8, !dbg !3672, !tbaa !635
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3672
  %32 = load i8*, i8** %31, align 8, !dbg !3672, !tbaa !635
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3672
  %34 = load i8*, i8** %33, align 8, !dbg !3672, !tbaa !635
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3672
  br label %146, !dbg !3673

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #10, !dbg !3674
  %38 = load i8*, i8** %4, align 8, !dbg !3674, !tbaa !635
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3674
  %40 = load i8*, i8** %39, align 8, !dbg !3674, !tbaa !635
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3674
  %42 = load i8*, i8** %41, align 8, !dbg !3674, !tbaa !635
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3674
  %44 = load i8*, i8** %43, align 8, !dbg !3674, !tbaa !635
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3674
  br label %146, !dbg !3675

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #10, !dbg !3676
  %48 = load i8*, i8** %4, align 8, !dbg !3676, !tbaa !635
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3676
  %50 = load i8*, i8** %49, align 8, !dbg !3676, !tbaa !635
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3676
  %52 = load i8*, i8** %51, align 8, !dbg !3676, !tbaa !635
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3676
  %54 = load i8*, i8** %53, align 8, !dbg !3676, !tbaa !635
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3676
  %56 = load i8*, i8** %55, align 8, !dbg !3676, !tbaa !635
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3676
  br label %146, !dbg !3677

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #10, !dbg !3678
  %60 = load i8*, i8** %4, align 8, !dbg !3678, !tbaa !635
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3678
  %62 = load i8*, i8** %61, align 8, !dbg !3678, !tbaa !635
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3678
  %64 = load i8*, i8** %63, align 8, !dbg !3678, !tbaa !635
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3678
  %66 = load i8*, i8** %65, align 8, !dbg !3678, !tbaa !635
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3678
  %68 = load i8*, i8** %67, align 8, !dbg !3678, !tbaa !635
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3678
  %70 = load i8*, i8** %69, align 8, !dbg !3678, !tbaa !635
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3678
  br label %146, !dbg !3679

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #10, !dbg !3680
  %74 = load i8*, i8** %4, align 8, !dbg !3680, !tbaa !635
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3680
  %76 = load i8*, i8** %75, align 8, !dbg !3680, !tbaa !635
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3680
  %78 = load i8*, i8** %77, align 8, !dbg !3680, !tbaa !635
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3680
  %80 = load i8*, i8** %79, align 8, !dbg !3680, !tbaa !635
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3680
  %82 = load i8*, i8** %81, align 8, !dbg !3680, !tbaa !635
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3680
  %84 = load i8*, i8** %83, align 8, !dbg !3680, !tbaa !635
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3680
  %86 = load i8*, i8** %85, align 8, !dbg !3680, !tbaa !635
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3680
  br label %146, !dbg !3681

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #10, !dbg !3682
  %90 = load i8*, i8** %4, align 8, !dbg !3682, !tbaa !635
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3682
  %92 = load i8*, i8** %91, align 8, !dbg !3682, !tbaa !635
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3682
  %94 = load i8*, i8** %93, align 8, !dbg !3682, !tbaa !635
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3682
  %96 = load i8*, i8** %95, align 8, !dbg !3682, !tbaa !635
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3682
  %98 = load i8*, i8** %97, align 8, !dbg !3682, !tbaa !635
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3682
  %100 = load i8*, i8** %99, align 8, !dbg !3682, !tbaa !635
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3682
  %102 = load i8*, i8** %101, align 8, !dbg !3682, !tbaa !635
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3682
  %104 = load i8*, i8** %103, align 8, !dbg !3682, !tbaa !635
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3682
  br label %146, !dbg !3683

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #10, !dbg !3684
  %108 = load i8*, i8** %4, align 8, !dbg !3684, !tbaa !635
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3684
  %110 = load i8*, i8** %109, align 8, !dbg !3684, !tbaa !635
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3684
  %112 = load i8*, i8** %111, align 8, !dbg !3684, !tbaa !635
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3684
  %114 = load i8*, i8** %113, align 8, !dbg !3684, !tbaa !635
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3684
  %116 = load i8*, i8** %115, align 8, !dbg !3684, !tbaa !635
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3684
  %118 = load i8*, i8** %117, align 8, !dbg !3684, !tbaa !635
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3684
  %120 = load i8*, i8** %119, align 8, !dbg !3684, !tbaa !635
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3684
  %122 = load i8*, i8** %121, align 8, !dbg !3684, !tbaa !635
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3684
  %124 = load i8*, i8** %123, align 8, !dbg !3684, !tbaa !635
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3684
  br label %146, !dbg !3685

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #10, !dbg !3686
  %128 = load i8*, i8** %4, align 8, !dbg !3686, !tbaa !635
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3686
  %130 = load i8*, i8** %129, align 8, !dbg !3686, !tbaa !635
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3686
  %132 = load i8*, i8** %131, align 8, !dbg !3686, !tbaa !635
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3686
  %134 = load i8*, i8** %133, align 8, !dbg !3686, !tbaa !635
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3686
  %136 = load i8*, i8** %135, align 8, !dbg !3686, !tbaa !635
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3686
  %138 = load i8*, i8** %137, align 8, !dbg !3686, !tbaa !635
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3686
  %140 = load i8*, i8** %139, align 8, !dbg !3686, !tbaa !635
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3686
  %142 = load i8*, i8** %141, align 8, !dbg !3686, !tbaa !635
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3686
  %144 = load i8*, i8** %143, align 8, !dbg !3686, !tbaa !635
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3686
  br label %146, !dbg !3687

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3688
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3689 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3693, metadata !628), !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3694, metadata !628), !dbg !3700
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3695, metadata !628), !dbg !3701
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3696, metadata !628), !dbg !3702
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3697, metadata !628), !dbg !3703
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3698, metadata !628), !dbg !3704
  br label %6, !dbg !3705

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3698, metadata !628), !dbg !3704
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3707
  %9 = load i8*, i8** %8, align 8, !dbg !3707, !tbaa !635
  %10 = icmp eq i8* %9, null, !dbg !3709
  %11 = add i64 %7, 1, !dbg !3710
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3698, metadata !628), !dbg !3704
  br i1 %10, label %12, label %6, !dbg !3709, !llvm.loop !3711

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3713
  ret void, !dbg !3714
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3715 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3726, metadata !628), !dbg !3734
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3727, metadata !628), !dbg !3735
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3728, metadata !628), !dbg !3736
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3729, metadata !628), !dbg !3737
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3730, metadata !628), !dbg !3738
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3739
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3739
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3732, metadata !628), !dbg !3740
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3731, metadata !628), !dbg !3741
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3731, metadata !628), !dbg !3741
  %11 = load i32, i32* %8, align 8, !dbg !3742
  %12 = icmp ult i32 %11, 41, !dbg !3742
  br i1 %12, label %13, label %18, !dbg !3742

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3742
  %15 = sext i32 %11 to i64, !dbg !3742
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3742
  %17 = add i32 %11, 8, !dbg !3742
  store i32 %17, i32* %8, align 8, !dbg !3742
  br label %21, !dbg !3742

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3742
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3742
  store i8* %20, i8** %10, align 8, !dbg !3742
  br label %21, !dbg !3742

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3742
  %25 = load i8*, i8** %24, align 8, !dbg !3742
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3745
  store i8* %25, i8** %26, align 16, !dbg !3746, !tbaa !635
  %27 = icmp eq i8* %25, null, !dbg !3747
  br i1 %27, label %30, label %28, !dbg !3748

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3731, metadata !628), !dbg !3741
  %29 = icmp ult i32 %22, 41, !dbg !3742
  br i1 %29, label %35, label %32, !dbg !3742

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3749
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3750
  ret void, !dbg !3750

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3742
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3742
  store i8* %34, i8** %10, align 8, !dbg !3742
  br label %40, !dbg !3742

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3742
  %37 = sext i32 %22 to i64, !dbg !3742
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3742
  %39 = add i32 %22, 8, !dbg !3742
  store i32 %39, i32* %8, align 8, !dbg !3742
  br label %40, !dbg !3742

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3742
  %44 = load i8*, i8** %43, align 8, !dbg !3742
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3745
  store i8* %44, i8** %45, align 8, !dbg !3746, !tbaa !635
  %46 = icmp eq i8* %44, null, !dbg !3747
  br i1 %46, label %30, label %47, !dbg !3748

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3731, metadata !628), !dbg !3741
  %48 = icmp ult i32 %41, 41, !dbg !3742
  br i1 %48, label %52, label %49, !dbg !3742

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3742
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3742
  store i8* %51, i8** %10, align 8, !dbg !3742
  br label %57, !dbg !3742

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3742
  %54 = sext i32 %41 to i64, !dbg !3742
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3742
  %56 = add i32 %41, 8, !dbg !3742
  store i32 %56, i32* %8, align 8, !dbg !3742
  br label %57, !dbg !3742

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3742
  %61 = load i8*, i8** %60, align 8, !dbg !3742
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3745
  store i8* %61, i8** %62, align 16, !dbg !3746, !tbaa !635
  %63 = icmp eq i8* %61, null, !dbg !3747
  br i1 %63, label %30, label %64, !dbg !3748

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3731, metadata !628), !dbg !3741
  %65 = icmp ult i32 %58, 41, !dbg !3742
  br i1 %65, label %69, label %66, !dbg !3742

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3742
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3742
  store i8* %68, i8** %10, align 8, !dbg !3742
  br label %74, !dbg !3742

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3742
  %71 = sext i32 %58 to i64, !dbg !3742
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3742
  %73 = add i32 %58, 8, !dbg !3742
  store i32 %73, i32* %8, align 8, !dbg !3742
  br label %74, !dbg !3742

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3742
  %78 = load i8*, i8** %77, align 8, !dbg !3742
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3745
  store i8* %78, i8** %79, align 8, !dbg !3746, !tbaa !635
  %80 = icmp eq i8* %78, null, !dbg !3747
  br i1 %80, label %30, label %81, !dbg !3748

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3731, metadata !628), !dbg !3741
  %82 = icmp ult i32 %75, 41, !dbg !3742
  br i1 %82, label %86, label %83, !dbg !3742

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3742
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3742
  store i8* %85, i8** %10, align 8, !dbg !3742
  br label %91, !dbg !3742

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3742
  %88 = sext i32 %75 to i64, !dbg !3742
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3742
  %90 = add i32 %75, 8, !dbg !3742
  store i32 %90, i32* %8, align 8, !dbg !3742
  br label %91, !dbg !3742

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3742
  %95 = load i8*, i8** %94, align 8, !dbg !3742
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3745
  store i8* %95, i8** %96, align 16, !dbg !3746, !tbaa !635
  %97 = icmp eq i8* %95, null, !dbg !3747
  br i1 %97, label %30, label %98, !dbg !3748

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3731, metadata !628), !dbg !3741
  %99 = icmp ult i32 %92, 41, !dbg !3742
  br i1 %99, label %103, label %100, !dbg !3742

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3742
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3742
  store i8* %102, i8** %10, align 8, !dbg !3742
  br label %108, !dbg !3742

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3742
  %105 = sext i32 %92 to i64, !dbg !3742
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3742
  %107 = add i32 %92, 8, !dbg !3742
  store i32 %107, i32* %8, align 8, !dbg !3742
  br label %108, !dbg !3742

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3742
  %111 = load i8*, i8** %110, align 8, !dbg !3742
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3745
  store i8* %111, i8** %112, align 8, !dbg !3746, !tbaa !635
  %113 = icmp eq i8* %111, null, !dbg !3747
  br i1 %113, label %30, label %114, !dbg !3748

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3731, metadata !628), !dbg !3741
  %115 = load i8*, i8** %10, align 8, !dbg !3742
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3742
  store i8* %116, i8** %10, align 8, !dbg !3742
  %117 = bitcast i8* %115 to i8**, !dbg !3742
  %118 = load i8*, i8** %117, align 8, !dbg !3742
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3745
  store i8* %118, i8** %119, align 16, !dbg !3746, !tbaa !635
  %120 = icmp eq i8* %118, null, !dbg !3747
  br i1 %120, label %30, label %121, !dbg !3748

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3731, metadata !628), !dbg !3741
  %122 = load i8*, i8** %10, align 8, !dbg !3742
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3742
  store i8* %123, i8** %10, align 8, !dbg !3742
  %124 = bitcast i8* %122 to i8**, !dbg !3742
  %125 = load i8*, i8** %124, align 8, !dbg !3742
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3745
  store i8* %125, i8** %126, align 8, !dbg !3746, !tbaa !635
  %127 = icmp eq i8* %125, null, !dbg !3747
  br i1 %127, label %30, label %128, !dbg !3748

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3731, metadata !628), !dbg !3741
  %129 = load i8*, i8** %10, align 8, !dbg !3742
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3742
  store i8* %130, i8** %10, align 8, !dbg !3742
  %131 = bitcast i8* %129 to i8**, !dbg !3742
  %132 = load i8*, i8** %131, align 8, !dbg !3742
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3745
  store i8* %132, i8** %133, align 16, !dbg !3746, !tbaa !635
  %134 = icmp eq i8* %132, null, !dbg !3747
  br i1 %134, label %30, label %135, !dbg !3748

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3731, metadata !628), !dbg !3741
  %136 = load i8*, i8** %10, align 8, !dbg !3742
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3742
  store i8* %137, i8** %10, align 8, !dbg !3742
  %138 = bitcast i8* %136 to i8**, !dbg !3742
  %139 = load i8*, i8** %138, align 8, !dbg !3742
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3745
  store i8* %139, i8** %140, align 8, !dbg !3746, !tbaa !635
  %141 = icmp eq i8* %139, null, !dbg !3747
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3731, metadata !628), !dbg !3741
  %142 = select i1 %141, i64 9, i64 10, !dbg !3748
  br label %30, !dbg !3748
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3751 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3755, metadata !628), !dbg !3764
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3756, metadata !628), !dbg !3765
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3757, metadata !628), !dbg !3766
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3758, metadata !628), !dbg !3767
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3768
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3768
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3759, metadata !628), !dbg !3769
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3770
  call void @llvm.va_start(i8* nonnull %6), !dbg !3770
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3771
  call void @llvm.va_end(i8* nonnull %6), !dbg !3772
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3773
  ret void, !dbg !3773
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3774 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #10, !dbg !3775
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.93, i64 0, i64 0)) #10, !dbg !3775
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #10, !dbg !3776
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.95, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.96, i64 0, i64 0)) #10, !dbg !3776
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3777
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3777, !tbaa !635
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3777
  ret void, !dbg !3778
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3779 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3781, metadata !628), !dbg !3783
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3782, metadata !628), !dbg !3784
  %3 = udiv i64 9223372036854775807, %1, !dbg !3785
  %4 = icmp ult i64 %3, %0, !dbg !3785
  br i1 %4, label %5, label %6, !dbg !3787

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3788
  unreachable, !dbg !3788

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3789
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3790, metadata !628) #10, !dbg !3797
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3799
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3796, metadata !628) #10, !dbg !3800
  %9 = icmp eq i8* %8, null, !dbg !3801
  %10 = icmp ne i64 %7, 0, !dbg !3803
  %11 = and i1 %10, %9, !dbg !3804
  br i1 %11, label %12, label %13, !dbg !3804

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3805
  unreachable, !dbg !3805

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3806
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3791 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3790, metadata !628), !dbg !3807
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3808
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3796, metadata !628), !dbg !3809
  %3 = icmp eq i8* %2, null, !dbg !3810
  %4 = icmp ne i64 %0, 0, !dbg !3811
  %5 = and i1 %4, %3, !dbg !3812
  br i1 %5, label %6, label %7, !dbg !3812

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3813
  unreachable, !dbg !3813

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3814
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3815 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3817, metadata !628), !dbg !3820
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3818, metadata !628), !dbg !3821
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3819, metadata !628), !dbg !3822
  %4 = udiv i64 9223372036854775807, %2, !dbg !3823
  %5 = icmp ult i64 %4, %1, !dbg !3823
  br i1 %5, label %6, label %7, !dbg !3825

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3826
  unreachable, !dbg !3826

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3827
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3828, metadata !628) #10, !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3833, metadata !628) #10, !dbg !3836
  %9 = icmp eq i64 %8, 0, !dbg !3837
  %10 = icmp ne i8* %0, null, !dbg !3839
  %11 = and i1 %10, %9, !dbg !3840
  br i1 %11, label %12, label %13, !dbg !3840

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3841
  br label %19, !dbg !3843

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3844
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3828, metadata !628) #10, !dbg !3834
  %15 = icmp eq i8* %14, null, !dbg !3845
  %16 = icmp ne i64 %8, 0, !dbg !3847
  %17 = and i1 %16, %15, !dbg !3848
  br i1 %17, label %18, label %19, !dbg !3848

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3849
  unreachable, !dbg !3849

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3850
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3829 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3828, metadata !628), !dbg !3851
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3833, metadata !628), !dbg !3852
  %3 = icmp eq i64 %1, 0, !dbg !3853
  %4 = icmp ne i8* %0, null, !dbg !3854
  %5 = and i1 %4, %3, !dbg !3855
  br i1 %5, label %6, label %7, !dbg !3855

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3856
  br label %13, !dbg !3857

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3858
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3828, metadata !628), !dbg !3851
  %9 = icmp eq i8* %8, null, !dbg !3859
  %10 = icmp ne i64 %1, 0, !dbg !3860
  %11 = and i1 %10, %9, !dbg !3861
  br i1 %11, label %12, label %13, !dbg !3861

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3862
  unreachable, !dbg !3862

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3863
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !593 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !595, metadata !628), !dbg !3864
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !596, metadata !628), !dbg !3865
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !597, metadata !628), !dbg !3866
  %4 = load i64, i64* %1, align 8, !dbg !3867, !tbaa !999
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !598, metadata !628), !dbg !3868
  %5 = icmp eq i8* %0, null, !dbg !3869
  br i1 %5, label %6, label %13, !dbg !3871

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3872
  br i1 %7, label %8, label %17, !dbg !3875

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3876
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !598, metadata !628), !dbg !3868
  %10 = icmp ugt i64 %2, 128, !dbg !3878
  %11 = zext i1 %10 to i64, !dbg !3878
  %12 = add nuw nsw i64 %9, %11, !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !598, metadata !628), !dbg !3868
  br label %17, !dbg !3880

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3881
  %15 = icmp ugt i64 %14, %4, !dbg !3884
  br i1 %15, label %20, label %16, !dbg !3885

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3886
  unreachable, !dbg !3886

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !598, metadata !628), !dbg !3868
  store i64 %18, i64* %1, align 8, !dbg !3887, !tbaa !999
  %19 = mul i64 %18, %2, !dbg !3888
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3828, metadata !628) #10, !dbg !3889
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3833, metadata !628) #10, !dbg !3891
  br label %27, !dbg !3892

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3893
  %22 = add i64 %4, 1, !dbg !3894
  %23 = add i64 %22, %21, !dbg !3895
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !598, metadata !628), !dbg !3868
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !598, metadata !628), !dbg !3868
  store i64 %23, i64* %1, align 8, !dbg !3887, !tbaa !999
  %24 = mul i64 %23, %2, !dbg !3888
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3828, metadata !628) #10, !dbg !3889
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3833, metadata !628) #10, !dbg !3891
  %25 = icmp eq i64 %24, 0, !dbg !3896
  br i1 %25, label %26, label %27, !dbg !3892

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3897
  br label %34, !dbg !3898

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3899
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3828, metadata !628) #10, !dbg !3889
  %30 = icmp eq i8* %29, null, !dbg !3900
  %31 = icmp ne i64 %28, 0, !dbg !3901
  %32 = and i1 %31, %30, !dbg !3902
  br i1 %32, label %33, label %34, !dbg !3902

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3903
  unreachable, !dbg !3903

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3904
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3905 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3907, metadata !628), !dbg !3908
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3790, metadata !628) #10, !dbg !3909
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3911
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3796, metadata !628) #10, !dbg !3912
  %3 = icmp eq i8* %2, null, !dbg !3913
  %4 = icmp ne i64 %0, 0, !dbg !3914
  %5 = and i1 %4, %3, !dbg !3915
  br i1 %5, label %6, label %7, !dbg !3915

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3916
  unreachable, !dbg !3916

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3917
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3918 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3922, metadata !628), !dbg !3924
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3923, metadata !628), !dbg !3925
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !595, metadata !628) #10, !dbg !3926
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !596, metadata !628) #10, !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !597, metadata !628) #10, !dbg !3929
  %3 = load i64, i64* %1, align 8, !dbg !3930, !tbaa !999
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !598, metadata !628) #10, !dbg !3931
  %4 = icmp eq i8* %0, null, !dbg !3932
  br i1 %4, label %5, label %8, !dbg !3933

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3934
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !598, metadata !628) #10, !dbg !3931
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !598, metadata !628) #10, !dbg !3931
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3935
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !598, metadata !628) #10, !dbg !3931
  store i64 %7, i64* %1, align 8, !dbg !3936, !tbaa !999
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3828, metadata !628) #10, !dbg !3937
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3833, metadata !628) #10, !dbg !3939
  br label %17, !dbg !3940

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3941
  br i1 %9, label %11, label %10, !dbg !3942

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3943
  unreachable, !dbg !3943

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3944
  %13 = add i64 %3, 1, !dbg !3945
  %14 = add i64 %13, %12, !dbg !3946
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !598, metadata !628) #10, !dbg !3931
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !598, metadata !628) #10, !dbg !3931
  store i64 %14, i64* %1, align 8, !dbg !3936, !tbaa !999
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3828, metadata !628) #10, !dbg !3937
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3833, metadata !628) #10, !dbg !3939
  %15 = icmp eq i64 %14, 0, !dbg !3947
  br i1 %15, label %16, label %17, !dbg !3940

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3948
  br label %24, !dbg !3949

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3950
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3828, metadata !628) #10, !dbg !3937
  %20 = icmp eq i8* %19, null, !dbg !3951
  %21 = icmp ne i64 %18, 0, !dbg !3952
  %22 = and i1 %21, %20, !dbg !3953
  br i1 %22, label %23, label %24, !dbg !3953

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3954
  unreachable, !dbg !3954

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3955
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3956 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3958, metadata !628), !dbg !3959
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3790, metadata !628) #10, !dbg !3960
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3962
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3796, metadata !628) #10, !dbg !3963
  %3 = icmp eq i8* %2, null, !dbg !3964
  %4 = icmp ne i64 %0, 0, !dbg !3965
  %5 = and i1 %4, %3, !dbg !3966
  br i1 %5, label %6, label %7, !dbg !3966

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3967
  unreachable, !dbg !3967

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3968
  ret i8* %2, !dbg !3969
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3970 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3972, metadata !628), !dbg !3975
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3973, metadata !628), !dbg !3976
  %3 = udiv i64 9223372036854775807, %1, !dbg !3977
  %4 = icmp ult i64 %3, %0, !dbg !3977
  br i1 %4, label %8, label %5, !dbg !3979

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3980
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3974, metadata !628), !dbg !3981
  %7 = icmp eq i8* %6, null, !dbg !3982
  br i1 %7, label %8, label %9, !dbg !3983

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3984
  unreachable, !dbg !3984

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3985
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3986 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3992, metadata !628), !dbg !3994
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3993, metadata !628), !dbg !3995
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3790, metadata !628) #10, !dbg !3996
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3998
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3796, metadata !628) #10, !dbg !3999
  %4 = icmp eq i8* %3, null, !dbg !4000
  %5 = icmp ne i64 %1, 0, !dbg !4001
  %6 = and i1 %5, %4, !dbg !4002
  br i1 %6, label %7, label %8, !dbg !4002

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4003
  unreachable, !dbg !4003

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4004
  ret i8* %3, !dbg !4005
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4006 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4008, metadata !628), !dbg !4009
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4010
  %3 = add i64 %2, 1, !dbg !4011
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3992, metadata !628) #10, !dbg !4012
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3993, metadata !628) #10, !dbg !4014
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3790, metadata !628) #10, !dbg !4015
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4017
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3796, metadata !628) #10, !dbg !4018
  %5 = icmp eq i8* %4, null, !dbg !4019
  %6 = icmp ne i64 %3, 0, !dbg !4020
  %7 = and i1 %6, %5, !dbg !4021
  br i1 %7, label %8, label %9, !dbg !4021

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4022
  unreachable, !dbg !4022

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4023
  ret i8* %4, !dbg !4024
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4025 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4027, !tbaa !690
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.109, i64 0, i64 0), i32 5) #10, !dbg !4028
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), i8* %2) #10, !dbg !4029
  tail call void @abort() #15, !dbg !4030
  unreachable, !dbg !4030
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4031 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4034, metadata !628), !dbg !4040
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4035, metadata !628), !dbg !4041
  %3 = icmp eq i64 %0, 0, !dbg !4042
  %4 = icmp eq i64 %1, 0, !dbg !4043
  %5 = or i1 %3, %4, !dbg !4044
  br i1 %5, label %12, label %6, !dbg !4044

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4045
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4037, metadata !628), !dbg !4046
  %8 = udiv i64 %7, %1, !dbg !4047
  %9 = icmp eq i64 %8, %0, !dbg !4049
  br i1 %9, label %12, label %10, !dbg !4050

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4051
  store i32 12, i32* %11, align 4, !dbg !4053, !tbaa !690
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4034, metadata !628), !dbg !4040
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4035, metadata !628), !dbg !4041
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4054
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4036, metadata !628), !dbg !4055
  br label %16, !dbg !4056

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4057
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4058 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4103, metadata !628), !dbg !4107
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4104, metadata !628), !dbg !4108
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4106, metadata !628), !dbg !4109
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4110
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4105, metadata !628), !dbg !4111
  %3 = icmp slt i32 %2, 0, !dbg !4112
  br i1 %3, label %4, label %6, !dbg !4114

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4115
  br label %24, !dbg !4116

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4117
  %8 = icmp eq i32 %7, 0, !dbg !4117
  br i1 %8, label %13, label %9, !dbg !4119

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4120
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4121
  %12 = icmp eq i64 %11, -1, !dbg !4122
  br i1 %12, label %16, label %13, !dbg !4123

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4124
  %15 = icmp eq i32 %14, 0, !dbg !4124
  br i1 %15, label %16, label %18, !dbg !4125

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4104, metadata !628), !dbg !4108
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4126
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4106, metadata !628), !dbg !4109
  br label %24, !dbg !4127

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4128
  %20 = load i32, i32* %19, align 4, !dbg !4128, !tbaa !690
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4104, metadata !628), !dbg !4108
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4104, metadata !628), !dbg !4108
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4126
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4106, metadata !628), !dbg !4109
  %22 = icmp eq i32 %20, 0, !dbg !4129
  br i1 %22, label %24, label %23, !dbg !4127

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4131, !tbaa !690
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4106, metadata !628), !dbg !4109
  br label %24, !dbg !4133

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4134
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4135 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4180, metadata !628), !dbg !4181
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4182
  br i1 %2, label %6, label %3, !dbg !4184

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4185
  %5 = icmp eq i32 %4, 0, !dbg !4185
  br i1 %5, label %6, label %8, !dbg !4186

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4187
  br label %17, !dbg !4188

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4189, metadata !628) #10, !dbg !4194
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4196
  %10 = load i32, i32* %9, align 8, !dbg !4196, !tbaa !4198
  %11 = and i32 %10, 256, !dbg !4199
  %12 = icmp eq i32 %11, 0, !dbg !4199
  br i1 %12, label %15, label %13, !dbg !4200

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4201
  br label %15, !dbg !4201

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4202
  br label %17, !dbg !4203

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4204
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4205 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4250, metadata !628), !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4251, metadata !628), !dbg !4257
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4252, metadata !628), !dbg !4258
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4259
  %5 = load i8*, i8** %4, align 8, !dbg !4259, !tbaa !3374
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4260
  %7 = load i8*, i8** %6, align 8, !dbg !4260, !tbaa !3372
  %8 = icmp eq i8* %5, %7, !dbg !4261
  br i1 %8, label %9, label %28, !dbg !4262

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4263
  %11 = load i8*, i8** %10, align 8, !dbg !4263, !tbaa !4264
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4265
  %13 = load i8*, i8** %12, align 8, !dbg !4265, !tbaa !4266
  %14 = icmp eq i8* %11, %13, !dbg !4267
  br i1 %14, label %15, label %28, !dbg !4268

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4269
  %17 = load i8*, i8** %16, align 8, !dbg !4269, !tbaa !4270
  %18 = icmp eq i8* %17, null, !dbg !4271
  br i1 %18, label %19, label %28, !dbg !4272

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4273
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4274
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4253, metadata !628), !dbg !4275
  %22 = icmp eq i64 %21, -1, !dbg !4276
  br i1 %22, label %30, label %23, !dbg !4278

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4279
  %25 = load i32, i32* %24, align 8, !dbg !4280, !tbaa !4198
  %26 = and i32 %25, -17, !dbg !4280
  store i32 %26, i32* %24, align 8, !dbg !4280, !tbaa !4198
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4281
  store i64 %21, i64* %27, align 8, !dbg !4282, !tbaa !4283
  br label %30, !dbg !4284

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4285
  br label %30, !dbg !4286

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4287
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4288 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4305, metadata !628), !dbg !4314
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4306, metadata !628), !dbg !4315
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4307, metadata !628), !dbg !4316
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4308, metadata !628), !dbg !4317
  %6 = bitcast i32* %5 to i8*, !dbg !4318
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4318
  %7 = icmp eq i32* %0, null, !dbg !4319
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4305, metadata !628), !dbg !4314
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4321
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4305, metadata !628), !dbg !4314
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4309, metadata !628), !dbg !4323
  %10 = icmp ugt i64 %9, -3, !dbg !4324
  %11 = icmp ne i64 %2, 0, !dbg !4325
  %12 = and i1 %11, %10, !dbg !4326
  br i1 %12, label %13, label %18, !dbg !4326

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4327
  br i1 %14, label %18, label %15, !dbg !4328

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4329, !tbaa !1840
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4311, metadata !628), !dbg !4330
  %17 = zext i8 %16 to i32, !dbg !4331
  store i32 %17, i32* %8, align 4, !dbg !4332, !tbaa !690
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4333
  ret i64 %19, !dbg !4333
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4334 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4379, metadata !628), !dbg !4384
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4385
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4386, metadata !628), !dbg !4389
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4391
  %4 = load i32, i32* %3, align 8, !dbg !4391, !tbaa !4198
  %5 = and i32 %4, 32, !dbg !4391
  %6 = icmp eq i32 %5, 0, !dbg !4392
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4393
  %8 = icmp ne i32 %7, 0, !dbg !4394
  br i1 %6, label %9, label %19, !dbg !4395

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4397
  %11 = xor i1 %8, true, !dbg !4398
  %12 = or i1 %10, %11, !dbg !4398
  %13 = sext i1 %8 to i32, !dbg !4398
  br i1 %12, label %22, label %14, !dbg !4398

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4399
  %16 = load i32, i32* %15, align 4, !dbg !4399, !tbaa !690
  %17 = icmp ne i32 %16, 9, !dbg !4400
  %18 = sext i1 %17 to i32, !dbg !4401
  br label %22, !dbg !4401

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4402

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4404
  store i32 0, i32* %21, align 4, !dbg !4406, !tbaa !690
  br label %22, !dbg !4404

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4407
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4408 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4411, metadata !628), !dbg !4414
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4412, metadata !628), !dbg !4415
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4416
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4413, metadata !628), !dbg !4417
  %3 = icmp eq i8* %2, null, !dbg !4418
  br i1 %3, label %11, label %4, !dbg !4420

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i64 0, i64 0)) #14, !dbg !4421
  %6 = icmp eq i32 %5, 0, !dbg !4426
  br i1 %6, label %10, label %7, !dbg !4427

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i64 0, i64 0)) #14, !dbg !4428
  %9 = icmp eq i32 %8, 0, !dbg !4429
  br i1 %9, label %10, label %11, !dbg !4430

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4412, metadata !628), !dbg !4415
  br label %11, !dbg !4431

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4432
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4433 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4439, metadata !628), !dbg !4513
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4506, metadata !628), !dbg !4516
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4517
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4437, metadata !628), !dbg !4518
  %4 = icmp eq i8* %3, null, !dbg !4519
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), i8* %3, !dbg !4521
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4437, metadata !628), !dbg !4518
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4522, !tbaa !635
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4453, metadata !628) #10, !dbg !4523
  %7 = icmp eq i8* %6, null, !dbg !4524
  br i1 %7, label %8, label %123, !dbg !4525

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.130, i64 0, i64 0)) #10, !dbg !4526
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4454, metadata !628) #10, !dbg !4527
  %10 = icmp eq i8* %9, null, !dbg !4528
  br i1 %10, label %14, label %11, !dbg !4530

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4531, !tbaa !1840
  %13 = icmp eq i8 %12, 0, !dbg !4532
  br i1 %13, label %14, label %15, !dbg !4533

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4534

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.131, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4454, metadata !628) #10, !dbg !4527
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4535
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4457, metadata !628) #10, !dbg !4536
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4459, metadata !628) #10, !dbg !4537
  %18 = icmp eq i64 %17, 0, !dbg !4538
  br i1 %18, label %24, label %19, !dbg !4539

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4540
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4540
  %22 = load i8, i8* %21, align 1, !dbg !4540, !tbaa !1840
  %23 = icmp ne i8 %22, 47, !dbg !4540
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4541
  %27 = add i64 %17, 14, !dbg !4542
  %28 = add i64 %27, %26, !dbg !4543
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4456, metadata !628) #10, !dbg !4545
  %30 = icmp eq i8* %29, null, !dbg !4546
  br i1 %30, label %121, label %31, !dbg !4546

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4547
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4550

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4551, !tbaa !1840
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4553
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.132, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4554
  br label %37, !dbg !4555

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4553
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.132, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4554
  br label %37, !dbg !4555

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4556
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4461, metadata !628) #10, !dbg !4557
  %39 = icmp slt i32 %38, 0, !dbg !4558
  br i1 %39, label %119, label %40, !dbg !4559

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.133, i64 0, i64 0)) #10, !dbg !4560
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4462, metadata !628) #10, !dbg !4561
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4562
  br i1 %42, label %43, label %45, !dbg !4563

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !4564
  br label %119, !dbg !4566

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4503, metadata !628) #10, !dbg !4567
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4504, metadata !628) #10, !dbg !4568
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4569

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4570

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4503, metadata !628) #10, !dbg !4567
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4504, metadata !628) #10, !dbg !4568
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4570
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4571
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4572, metadata !628) #10, !dbg !4577
  %54 = load i8*, i8** %48, align 8, !dbg !4579, !tbaa !3372
  %55 = load i8*, i8** %49, align 8, !dbg !4579, !tbaa !3374
  %56 = icmp ult i8* %54, %55, !dbg !4579
  br i1 %56, label %59, label %57, !dbg !4579, !prof !3375

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4579
  br label %63, !dbg !4579

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4579
  store i8* %60, i8** %48, align 8, !dbg !4579, !tbaa !3372
  %61 = load i8, i8* %54, align 1, !dbg !4579, !tbaa !1840
  %62 = zext i8 %61 to i32, !dbg !4579
  br label %63, !dbg !4579

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4579
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4505, metadata !628) #10, !dbg !4580
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4581, !llvm.loop !4582

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4587

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4572, metadata !628) #10, !dbg !4589
  %67 = load i8*, i8** %48, align 8, !dbg !4587, !tbaa !3372
  %68 = load i8*, i8** %49, align 8, !dbg !4587, !tbaa !3374
  %69 = icmp ult i8* %67, %68, !dbg !4587
  br i1 %69, label %72, label %70, !dbg !4587, !prof !3375

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4587
  br label %76, !dbg !4587

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4587
  store i8* %73, i8** %48, align 8, !dbg !4587, !tbaa !3372
  %74 = load i8, i8* %67, align 1, !dbg !4587, !tbaa !1840
  %75 = zext i8 %74 to i32, !dbg !4587
  br label %76, !dbg !4587

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4587
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4505, metadata !628) #10, !dbg !4580
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4590, !llvm.loop !4591

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !4594
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.134, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !4595
  %81 = icmp slt i32 %80, 2, !dbg !4597
  br i1 %81, label %112, label %82, !dbg !4598

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4599
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4510, metadata !628) #10, !dbg !4600
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4601
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4511, metadata !628) #10, !dbg !4602
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4512, metadata !628) #10, !dbg !4603
  %85 = icmp eq i64 %51, 0, !dbg !4604
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4606

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4504, metadata !628) #10, !dbg !4568
  %90 = add i64 %87, 2, !dbg !4607
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !4609
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4503, metadata !628) #10, !dbg !4567
  br label %96, !dbg !4610

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4611
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4504, metadata !628) #10, !dbg !4568
  %94 = add i64 %93, 1, !dbg !4613
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !4614
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4503, metadata !628) #10, !dbg !4567
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4503, metadata !628) #10, !dbg !4567
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4504, metadata !628) #10, !dbg !4568
  %99 = icmp eq i8* %98, null, !dbg !4615
  br i1 %99, label %100, label %102, !dbg !4617

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4504, metadata !628) #10, !dbg !4568
  call void @free(i8* %52) #10, !dbg !4618
  br label %112, !dbg !4620

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4621
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4621
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4622
  %104 = xor i64 %84, -1, !dbg !4623
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4623
  %106 = xor i64 %83, -1, !dbg !4624
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4624
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4625, metadata !628) #10, !dbg !4634
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4633, metadata !628) #10, !dbg !4634
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !4636
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !4637
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4625, metadata !628) #10, !dbg !4638
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4633, metadata !628) #10, !dbg !4638
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !4640
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !4641
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4503, metadata !628) #10, !dbg !4567
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4504, metadata !628) #10, !dbg !4568
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4621
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4621
  br label %50, !dbg !4642, !llvm.loop !4591

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4621
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4621
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4643
  %116 = icmp eq i64 %113, 0, !dbg !4644
  br i1 %116, label %119, label %117, !dbg !4646

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4647
  store i8 0, i8* %118, align 1, !dbg !4649, !tbaa !1840
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4453, metadata !628) #10, !dbg !4523
  call void @free(i8* %29) #10, !dbg !4650
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4453, metadata !628) #10, !dbg !4523
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4651, !tbaa !635
  br label %123, !dbg !4652

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4453, metadata !628) #10, !dbg !4523
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4438, metadata !628), !dbg !4653
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4438, metadata !628), !dbg !4653
  %125 = load i8, i8* %124, align 1, !dbg !4654, !tbaa !1840
  %126 = icmp eq i8 %125, 0, !dbg !4656
  br i1 %126, label %152, label %127, !dbg !4657

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4658

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4438, metadata !628), !dbg !4653
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4658
  %132 = icmp eq i32 %131, 0, !dbg !4660
  br i1 %132, label %139, label %133, !dbg !4661

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4662
  br i1 %134, label %135, label %143, !dbg !4663

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4664
  %137 = load i8, i8* %136, align 1, !dbg !4664, !tbaa !1840
  %138 = icmp eq i8 %137, 0, !dbg !4665
  br i1 %138, label %139, label %143, !dbg !4666

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4667
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4669
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4670
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4437, metadata !628), !dbg !4518
  br label %152, !dbg !4671

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4672
  %145 = add i64 %144, 1, !dbg !4673
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4674
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4438, metadata !628), !dbg !4653
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4675
  %148 = add i64 %147, 1, !dbg !4676
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4677
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4438, metadata !628), !dbg !4653
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4438, metadata !628), !dbg !4653
  %150 = load i8, i8* %149, align 1, !dbg !4654, !tbaa !1840
  %151 = icmp eq i8 %150, 0, !dbg !4656
  br i1 %151, label %152, label %128, !dbg !4657, !llvm.loop !4678

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4437, metadata !628), !dbg !4518
  %154 = load i8, i8* %153, align 1, !dbg !4680, !tbaa !1840
  %155 = icmp eq i8 %154, 0, !dbg !4682
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0), i8* %153, !dbg !4683
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4437, metadata !628), !dbg !4518
  ret i8* %156, !dbg !4684
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

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
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !81, !87, !96, !555, !558, !103, !121, !129, !560, !581, !199, !589, !600, !602, !604, !606, !608, !610, !613, !615, !208}
!llvm.ident = !{!617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617, !617}
!llvm.module.flags = !{!618, !619, !620, !621, !622}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "n_strings", scope: !2, file: !3, line: 74, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !36)
!3 = !DIFile(filename: "src/tsort.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 45, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!23 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!24 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!25 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!26 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!27 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!28 = !{!29, !32, !33}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 62, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !{!37, !0, !57, !75, !77}
!37 = !DIGlobalVariableExpression(var: !38)
!38 = distinct !DIGlobalVariable(name: "infomap", scope: !39, file: !40, line: 632, type: !54, isLocal: true, isDefinition: true)
!39 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !40, file: !40, line: 630, type: !41, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !43)
!40 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!41 = !DISubroutineType(types: !42)
!42 = !{null, !29}
!43 = !{!44, !45, !46, !53}
!44 = !DILocalVariable(name: "program", arg: 1, scope: !39, file: !40, line: 630, type: !29)
!45 = !DILocalVariable(name: "node", scope: !39, file: !40, line: 642, type: !29)
!46 = !DILocalVariable(name: "map_prog", scope: !39, file: !40, line: 643, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !39, file: !40, line: 632, size: 128, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !49, file: !40, line: 632, baseType: !29, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !49, file: !40, line: 632, baseType: !29, size: 64, offset: 64)
!53 = !DILocalVariable(name: "lc_messages", scope: !39, file: !40, line: 655, type: !29)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 896, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 7)
!57 = !DIGlobalVariableExpression(var: !58)
!58 = distinct !DIGlobalVariable(name: "head", scope: !2, file: !3, line: 65, type: !59, isLocal: true, isDefinition: true)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "item", file: !3, line: 54, size: 448, elements: !61)
!61 = !{!62, !63, !64, !65, !67, !68, !69}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !60, file: !3, line: 56, baseType: !29, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !60, file: !3, line: 57, baseType: !59, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !60, file: !3, line: 57, baseType: !59, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "balance", scope: !60, file: !3, line: 58, baseType: !66, size: 32, offset: 192)
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !60, file: !3, line: 59, baseType: !33, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "qlink", scope: !60, file: !3, line: 60, baseType: !59, size: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !60, file: !3, line: 61, baseType: !70, size: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "successor", file: !3, line: 47, size: 128, elements: !72)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "suc", scope: !71, file: !3, line: 49, baseType: !59, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !71, file: !3, line: 50, baseType: !70, size: 64, offset: 64)
!75 = !DIGlobalVariableExpression(var: !76)
!76 = distinct !DIGlobalVariable(name: "zeros", scope: !2, file: !3, line: 68, type: !59, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "loop", scope: !2, file: !3, line: 71, type: !59, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "Version", scope: !81, file: !82, line: 2, type: !29, isLocal: false, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, globals: !84)
!82 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !{}
!84 = !{!79}
!85 = !DIGlobalVariableExpression(var: !86)
!86 = distinct !DIGlobalVariable(name: "file_name", scope: !87, file: !92, line: 36, type: !29, isLocal: true, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, globals: !89)
!88 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!89 = !{!85, !90}
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !87, file: !92, line: 46, type: !93, isLocal: true, isDefinition: true)
!92 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!93 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "exit_failure", scope: !96, file: !99, line: 24, type: !100, isLocal: false, isDefinition: true)
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, globals: !98)
!97 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !{!94}
!99 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !66)
!101 = !DIGlobalVariableExpression(var: !102)
!102 = distinct !DIGlobalVariable(name: "long_options", scope: !103, file: !106, line: 33, type: !107, isLocal: true, isDefinition: true)
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, globals: !105)
!104 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!105 = !{!101}
!106 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 768, elements: !117)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !110, line: 50, size: 256, elements: !111)
!110 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!111 = !{!112, !113, !114, !116}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !109, file: !110, line: 52, baseType: !29, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !109, file: !110, line: 55, baseType: !66, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !109, file: !110, line: 56, baseType: !115, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !109, file: !110, line: 57, baseType: !66, size: 32, offset: 192)
!117 = !{!118}
!118 = !DISubrange(count: 3)
!119 = !DIGlobalVariableExpression(var: !120)
!120 = distinct !DIGlobalVariable(name: "program_name", scope: !121, file: !126, line: 33, type: !29, isLocal: false, isDefinition: true)
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !123, globals: !125)
!122 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !{!32, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!125 = !{!119}
!126 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !129, file: !157, line: 77, type: !193, isLocal: false, isDefinition: true)
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, retainedTypes: !152, globals: !154)
!130 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !{!5, !132, !137}
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !133)
!133 = !{!134, !135, !136}
!134 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!135 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!136 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 46, size: 32, elements: !139)
!138 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!140 = !DIEnumerator(name: "_ISupper", value: 256)
!141 = !DIEnumerator(name: "_ISlower", value: 512)
!142 = !DIEnumerator(name: "_ISalpha", value: 1024)
!143 = !DIEnumerator(name: "_ISdigit", value: 2048)
!144 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!145 = !DIEnumerator(name: "_ISspace", value: 8192)
!146 = !DIEnumerator(name: "_ISprint", value: 16384)
!147 = !DIEnumerator(name: "_ISgraph", value: 32768)
!148 = !DIEnumerator(name: "_ISblank", value: 1)
!149 = !DIEnumerator(name: "_IScntrl", value: 2)
!150 = !DIEnumerator(name: "_ISpunct", value: 4)
!151 = !DIEnumerator(name: "_ISalnum", value: 8)
!152 = !{!66, !153, !33, !124}
!153 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!154 = !{!127, !155, !162, !175, !177, !182, !189, !191}
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !129, file: !157, line: 93, type: !158, isLocal: false, isDefinition: true)
!157 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 320, elements: !160)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!160 = !{!161}
!161 = !DISubrange(count: 10)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !129, file: !157, line: 1043, type: !164, isLocal: false, isDefinition: true)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !157, line: 57, size: 448, elements: !165)
!165 = !{!166, !167, !168, !173, !174}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !164, file: !157, line: 60, baseType: !5, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !157, line: 63, baseType: !66, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !164, file: !157, line: 67, baseType: !169, size: 256, offset: 64)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 256, elements: !171)
!170 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!171 = !{!172}
!172 = !DISubrange(count: 8)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !164, file: !157, line: 70, baseType: !29, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !164, file: !157, line: 73, baseType: !29, size: 64, offset: 384)
!175 = !DIGlobalVariableExpression(var: !176)
!176 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !129, file: !157, line: 108, type: !164, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "slot0", scope: !129, file: !157, line: 834, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 256)
!182 = !DIGlobalVariableExpression(var: !183)
!183 = distinct !DIGlobalVariable(name: "slotvec", scope: !129, file: !157, line: 837, type: !184, isLocal: true, isDefinition: true)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !157, line: 826, size: 128, elements: !186)
!186 = !{!187, !188}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !185, file: !157, line: 828, baseType: !33, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !185, file: !157, line: 829, baseType: !124, size: 64, offset: 64)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "nslots", scope: !129, file: !157, line: 835, type: !66, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "slotvec0", scope: !129, file: !157, line: 836, type: !185, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 704, elements: !195)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!195 = !{!196}
!196 = !DISubrange(count: 11)
!197 = !DIGlobalVariableExpression(var: !198)
!198 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !199, file: !202, line: 26, type: !203, isLocal: false, isDefinition: true)
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, globals: !201)
!200 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!201 = !{!197}
!202 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 376, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 47)
!206 = !DIGlobalVariableExpression(var: !207)
!207 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !208, file: !553, line: 120, type: !554, isLocal: true, isDefinition: true)
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !210, retainedTypes: !549, globals: !552)
!209 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!210 = !{!211}
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !212, line: 41, size: 32, elements: !213)
!212 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548}
!214 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!215 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!216 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!217 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!218 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!219 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!220 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!221 = !DIEnumerator(name: "DAY_1", value: 131079)
!222 = !DIEnumerator(name: "DAY_2", value: 131080)
!223 = !DIEnumerator(name: "DAY_3", value: 131081)
!224 = !DIEnumerator(name: "DAY_4", value: 131082)
!225 = !DIEnumerator(name: "DAY_5", value: 131083)
!226 = !DIEnumerator(name: "DAY_6", value: 131084)
!227 = !DIEnumerator(name: "DAY_7", value: 131085)
!228 = !DIEnumerator(name: "ABMON_1", value: 131086)
!229 = !DIEnumerator(name: "ABMON_2", value: 131087)
!230 = !DIEnumerator(name: "ABMON_3", value: 131088)
!231 = !DIEnumerator(name: "ABMON_4", value: 131089)
!232 = !DIEnumerator(name: "ABMON_5", value: 131090)
!233 = !DIEnumerator(name: "ABMON_6", value: 131091)
!234 = !DIEnumerator(name: "ABMON_7", value: 131092)
!235 = !DIEnumerator(name: "ABMON_8", value: 131093)
!236 = !DIEnumerator(name: "ABMON_9", value: 131094)
!237 = !DIEnumerator(name: "ABMON_10", value: 131095)
!238 = !DIEnumerator(name: "ABMON_11", value: 131096)
!239 = !DIEnumerator(name: "ABMON_12", value: 131097)
!240 = !DIEnumerator(name: "MON_1", value: 131098)
!241 = !DIEnumerator(name: "MON_2", value: 131099)
!242 = !DIEnumerator(name: "MON_3", value: 131100)
!243 = !DIEnumerator(name: "MON_4", value: 131101)
!244 = !DIEnumerator(name: "MON_5", value: 131102)
!245 = !DIEnumerator(name: "MON_6", value: 131103)
!246 = !DIEnumerator(name: "MON_7", value: 131104)
!247 = !DIEnumerator(name: "MON_8", value: 131105)
!248 = !DIEnumerator(name: "MON_9", value: 131106)
!249 = !DIEnumerator(name: "MON_10", value: 131107)
!250 = !DIEnumerator(name: "MON_11", value: 131108)
!251 = !DIEnumerator(name: "MON_12", value: 131109)
!252 = !DIEnumerator(name: "AM_STR", value: 131110)
!253 = !DIEnumerator(name: "PM_STR", value: 131111)
!254 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!255 = !DIEnumerator(name: "D_FMT", value: 131113)
!256 = !DIEnumerator(name: "T_FMT", value: 131114)
!257 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!258 = !DIEnumerator(name: "ERA", value: 131116)
!259 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!260 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!261 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!262 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!263 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!264 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!265 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!266 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!267 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!268 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!269 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!270 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!271 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!272 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!273 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!274 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!275 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!276 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!277 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!278 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!279 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!280 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!281 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!282 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!283 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!284 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!285 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!286 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!287 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!288 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!289 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!290 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!291 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!292 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!293 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!294 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!295 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!296 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!297 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!298 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!299 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!300 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!301 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!302 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!303 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!304 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!305 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!306 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!307 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!308 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!309 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!310 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!311 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!312 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!313 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!314 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!315 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!316 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!317 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!318 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!319 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!320 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!321 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!322 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!323 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!324 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!325 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!326 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!327 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!328 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!329 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!330 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!331 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!332 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!333 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!334 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!335 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!336 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!337 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!338 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!339 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!340 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!341 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!342 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!343 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!344 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!345 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!346 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!347 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!348 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!349 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!350 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!351 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!352 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!353 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!354 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!355 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!356 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!357 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!358 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!359 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!360 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!361 = !DIEnumerator(name: "CODESET", value: 14)
!362 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!363 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!364 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!365 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!408 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!409 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!410 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!411 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!412 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!413 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!414 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!415 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!416 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!417 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!418 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!425 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!433 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!434 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!435 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!436 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!437 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!438 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!439 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!440 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!441 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!442 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!443 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!444 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!445 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!446 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!447 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!448 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!449 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!450 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!451 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!452 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!453 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!454 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!455 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!472 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!473 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!476 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!477 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!478 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!479 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!480 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!481 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!482 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!483 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!484 = !DIEnumerator(name: "THOUSEP", value: 65537)
!485 = !DIEnumerator(name: "__GROUPING", value: 65538)
!486 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!487 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!488 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!489 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!490 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!491 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!492 = !DIEnumerator(name: "__YESSTR", value: 327682)
!493 = !DIEnumerator(name: "__NOSTR", value: 327683)
!494 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!495 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!496 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!497 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!498 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!499 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!500 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!501 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!502 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!503 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!504 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!505 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!506 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!507 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!508 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!509 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!510 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!511 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!512 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!513 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!514 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!515 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!516 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!517 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!518 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!519 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!520 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!521 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!522 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!523 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!524 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!525 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!526 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!527 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!528 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!529 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!530 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!547 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!548 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!549 = !{!32, !124, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!552 = !{!206}
!553 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !557)
!556 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = !{!19}
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83)
!559 = !DIFile(filename: "./lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !562, retainedTypes: !580)
!561 = !DIFile(filename: "./lib/readtokens.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!562 = !{!563, !567}
!563 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !564, line: 51, size: 32, elements: !565)
!564 = !DIFile(filename: "lib/readtokens.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = !{!566}
!566 = !DIEnumerator(name: "bits_per_word", value: 64)
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !569, file: !568, line: 192, size: 32, elements: !578)
!568 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!569 = distinct !DISubprogram(name: "x2nrealloc", scope: !568, file: !568, line: 180, type: !570, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !573)
!570 = !DISubroutineType(types: !571)
!571 = !{!32, !32, !572, !33}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!573 = !{!574, !575, !576, !577}
!574 = !DILocalVariable(name: "p", arg: 1, scope: !569, file: !568, line: 180, type: !32)
!575 = !DILocalVariable(name: "pn", arg: 2, scope: !569, file: !568, line: 180, type: !572)
!576 = !DILocalVariable(name: "s", arg: 3, scope: !569, file: !568, line: 180, type: !33)
!577 = !DILocalVariable(name: "n", scope: !569, file: !568, line: 182, type: !33)
!578 = !{!579}
!579 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!580 = !{!33, !32, !550}
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !583, retainedTypes: !588)
!582 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = !{!584}
!584 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !585, line: 41, size: 32, elements: !586)
!585 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!586 = !{!587}
!587 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!588 = !{!32}
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !591, retainedTypes: !599)
!590 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = !{!592}
!592 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !593, file: !568, line: 192, size: 32, elements: !578)
!593 = distinct !DISubprogram(name: "x2nrealloc", scope: !568, file: !568, line: 180, type: !570, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !594)
!594 = !{!595, !596, !597, !598}
!595 = !DILocalVariable(name: "p", arg: 1, scope: !593, file: !568, line: 180, type: !32)
!596 = !DILocalVariable(name: "pn", arg: 2, scope: !593, file: !568, line: 180, type: !572)
!597 = !DILocalVariable(name: "s", arg: 3, scope: !593, file: !568, line: 180, type: !33)
!598 = !DILocalVariable(name: "n", scope: !593, file: !568, line: 182, type: !33)
!599 = !{!33, !124, !32}
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83)
!601 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !588)
!603 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = distinct !DICompileUnit(language: DW_LANG_C99, file: !605, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83)
!605 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = distinct !DICompileUnit(language: DW_LANG_C99, file: !607, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !588)
!607 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !588)
!609 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !612)
!611 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = !{!33}
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83)
!614 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83)
!616 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!617 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!618 = !{i32 2, !"Dwarf Version", i32 4}
!619 = !{i32 2, !"Debug Info Version", i32 3}
!620 = !{i32 1, !"wchar_size", i32 4}
!621 = !{i32 7, !"PIC Level", i32 2}
!622 = !{i32 7, !"PIE Level", i32 2}
!623 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 77, type: !624, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !66}
!626 = !{!627}
!627 = !DILocalVariable(name: "status", arg: 1, scope: !623, file: !3, line: 77, type: !66)
!628 = !DIExpression()
!629 = !DILocation(line: 77, column: 12, scope: !623)
!630 = !DILocation(line: 79, column: 14, scope: !631)
!631 = distinct !DILexicalBlock(scope: !623, file: !3, line: 79, column: 7)
!632 = !DILocation(line: 79, column: 7, scope: !623)
!633 = !DILocation(line: 80, column: 5, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !3, line: 80, column: 5)
!635 = !{!636, !636, i64 0}
!636 = !{!"any pointer", !637, i64 0}
!637 = !{!"omnipotent char", !638, i64 0}
!638 = !{!"Simple C/C++ TBAA"}
!639 = !DILocation(line: 83, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !631, file: !3, line: 82, column: 5)
!641 = !DILocation(line: 580, column: 3, scope: !642, inlinedAt: !645)
!642 = distinct !DISubprogram(name: "emit_stdin_note", scope: !40, file: !40, line: 578, type: !643, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !83)
!643 = !DISubroutineType(types: !644)
!644 = !{null}
!645 = distinct !DILocation(line: 88, column: 7, scope: !640)
!646 = !DILocation(line: 90, column: 7, scope: !640)
!647 = !DILocation(line: 93, column: 7, scope: !640)
!648 = !DILocation(line: 94, column: 7, scope: !640)
!649 = !DILocation(line: 642, column: 15, scope: !39, inlinedAt: !650)
!650 = distinct !DILocation(line: 95, column: 7, scope: !640)
!651 = !DILocation(line: 651, column: 3, scope: !39, inlinedAt: !650)
!652 = !DILocation(line: 655, column: 29, scope: !39, inlinedAt: !650)
!653 = !DILocation(line: 655, column: 15, scope: !39, inlinedAt: !650)
!654 = !DILocation(line: 656, column: 7, scope: !655, inlinedAt: !650)
!655 = distinct !DILexicalBlock(scope: !39, file: !40, line: 656, column: 7)
!656 = !DILocation(line: 656, column: 19, scope: !655, inlinedAt: !650)
!657 = !DILocation(line: 656, column: 22, scope: !655, inlinedAt: !650)
!658 = !DILocation(line: 656, column: 7, scope: !39, inlinedAt: !650)
!659 = !DILocation(line: 662, column: 7, scope: !660, inlinedAt: !650)
!660 = distinct !DILexicalBlock(scope: !655, file: !40, line: 657, column: 5)
!661 = !DILocation(line: 664, column: 5, scope: !660, inlinedAt: !650)
!662 = !DILocation(line: 665, column: 3, scope: !39, inlinedAt: !650)
!663 = !DILocation(line: 667, column: 3, scope: !39, inlinedAt: !650)
!664 = !DILocation(line: 98, column: 3, scope: !623)
!665 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 542, type: !666, isLocal: false, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !669)
!666 = !DISubroutineType(types: !667)
!667 = !{!66, !66, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!669 = !{!670, !671, !672}
!670 = !DILocalVariable(name: "argc", arg: 1, scope: !665, file: !3, line: 542, type: !66)
!671 = !DILocalVariable(name: "argv", arg: 2, scope: !665, file: !3, line: 542, type: !668)
!672 = !DILocalVariable(name: "ok", scope: !665, file: !3, line: 544, type: !93)
!673 = !DILocation(line: 542, column: 11, scope: !665)
!674 = !DILocation(line: 542, column: 24, scope: !665)
!675 = !DILocation(line: 547, column: 21, scope: !665)
!676 = !DILocation(line: 547, column: 3, scope: !665)
!677 = !DILocation(line: 548, column: 3, scope: !665)
!678 = !DILocation(line: 549, column: 3, scope: !665)
!679 = !DILocation(line: 550, column: 3, scope: !665)
!680 = !DILocation(line: 552, column: 3, scope: !665)
!681 = !DILocation(line: 554, column: 58, scope: !665)
!682 = !DILocation(line: 554, column: 3, scope: !665)
!683 = !DILocation(line: 556, column: 7, scope: !684)
!684 = distinct !DILexicalBlock(scope: !665, file: !3, line: 556, column: 7)
!685 = !DILocation(line: 556, column: 48, scope: !684)
!686 = !DILocation(line: 556, column: 7, scope: !665)
!687 = !DILocation(line: 557, column: 5, scope: !684)
!688 = !DILocation(line: 559, column: 18, scope: !689)
!689 = distinct !DILexicalBlock(scope: !665, file: !3, line: 559, column: 7)
!690 = !{!691, !691, i64 0}
!691 = !{!"int", !637, i64 0}
!692 = !DILocation(line: 559, column: 16, scope: !689)
!693 = !DILocation(line: 559, column: 9, scope: !689)
!694 = !DILocation(line: 559, column: 7, scope: !665)
!695 = !DILocation(line: 561, column: 20, scope: !696)
!696 = distinct !DILexicalBlock(scope: !689, file: !3, line: 560, column: 5)
!697 = !DILocation(line: 561, column: 55, scope: !696)
!698 = !DILocation(line: 561, column: 62, scope: !696)
!699 = !DILocation(line: 561, column: 50, scope: !696)
!700 = !DILocation(line: 561, column: 43, scope: !696)
!701 = !DILocation(line: 561, column: 7, scope: !696)
!702 = !DILocation(line: 562, column: 7, scope: !696)
!703 = !DILocation(line: 565, column: 22, scope: !665)
!704 = !DILocation(line: 565, column: 15, scope: !665)
!705 = !DILocation(line: 565, column: 38, scope: !665)
!706 = !DILocalVariable(name: "file", arg: 1, scope: !707, file: !3, line: 436, type: !29)
!707 = distinct !DISubprogram(name: "tsort", scope: !3, file: !3, line: 436, type: !708, isLocal: true, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!93, !29}
!710 = !{!706, !711, !712, !713, !714, !715, !722, !723, !725}
!711 = !DILocalVariable(name: "ok", scope: !707, file: !3, line: 438, type: !93)
!712 = !DILocalVariable(name: "root", scope: !707, file: !3, line: 439, type: !59)
!713 = !DILocalVariable(name: "j", scope: !707, file: !3, line: 440, type: !59)
!714 = !DILocalVariable(name: "k", scope: !707, file: !3, line: 441, type: !59)
!715 = !DILocalVariable(name: "tokenbuffer", scope: !707, file: !3, line: 442, type: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !717, line: 31, baseType: !718)
!717 = !DIFile(filename: "./lib/readtokens.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !717, line: 26, size: 128, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !718, file: !717, line: 28, baseType: !33, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !718, file: !717, line: 29, baseType: !124, size: 64, offset: 64)
!722 = !DILocalVariable(name: "is_stdin", scope: !707, file: !3, line: 443, type: !93)
!723 = !DILocalVariable(name: "len", scope: !724, file: !3, line: 458, type: !33)
!724 = distinct !DILexicalBlock(scope: !707, file: !3, line: 456, column: 5)
!725 = !DILocalVariable(name: "p", scope: !726, file: !3, line: 489, type: !70)
!726 = distinct !DILexicalBlock(scope: !727, file: !3, line: 488, column: 9)
!727 = distinct !DILexicalBlock(scope: !707, file: !3, line: 483, column: 5)
!728 = !DILocation(line: 436, column: 20, scope: !707, inlinedAt: !729)
!729 = distinct !DILocation(line: 565, column: 8, scope: !665)
!730 = !DILocation(line: 438, column: 8, scope: !707, inlinedAt: !729)
!731 = !DILocation(line: 440, column: 16, scope: !707, inlinedAt: !729)
!732 = !DILocation(line: 441, column: 16, scope: !707, inlinedAt: !729)
!733 = !DILocation(line: 442, column: 3, scope: !707, inlinedAt: !729)
!734 = !DILocation(line: 443, column: 19, scope: !707, inlinedAt: !729)
!735 = !DILocalVariable(name: "str", arg: 1, scope: !736, file: !3, line: 103, type: !29)
!736 = distinct !DISubprogram(name: "new_item", scope: !3, file: !3, line: 103, type: !737, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{!59, !29}
!739 = !{!735, !740}
!740 = !DILocalVariable(name: "k", scope: !736, file: !3, line: 105, type: !59)
!741 = !DILocation(line: 103, column: 23, scope: !736, inlinedAt: !742)
!742 = distinct !DILocation(line: 446, column: 10, scope: !707, inlinedAt: !729)
!743 = !DILocation(line: 105, column: 20, scope: !736, inlinedAt: !742)
!744 = !DILocation(line: 105, column: 16, scope: !736, inlinedAt: !742)
!745 = !DILocation(line: 112, column: 6, scope: !736, inlinedAt: !742)
!746 = !DILocation(line: 112, column: 12, scope: !736, inlinedAt: !742)
!747 = !DILocation(line: 439, column: 16, scope: !707, inlinedAt: !729)
!748 = !DILocation(line: 108, column: 11, scope: !736, inlinedAt: !742)
!749 = !DILocation(line: 448, column: 17, scope: !750, inlinedAt: !729)
!750 = distinct !DILexicalBlock(scope: !707, file: !3, line: 448, column: 7)
!751 = !DILocation(line: 448, column: 42, scope: !750, inlinedAt: !729)
!752 = !DILocation(line: 448, column: 22, scope: !750, inlinedAt: !729)
!753 = !DILocation(line: 448, column: 7, scope: !707, inlinedAt: !729)
!754 = !DILocation(line: 449, column: 5, scope: !750, inlinedAt: !729)
!755 = !DILocation(line: 451, column: 12, scope: !707, inlinedAt: !729)
!756 = !DILocation(line: 451, column: 3, scope: !707, inlinedAt: !729)
!757 = !DILocation(line: 442, column: 16, scope: !707, inlinedAt: !729)
!758 = !DILocation(line: 453, column: 3, scope: !707, inlinedAt: !729)
!759 = !DILocation(line: 455, column: 3, scope: !707, inlinedAt: !729)
!760 = !DILocation(line: 458, column: 31, scope: !724, inlinedAt: !729)
!761 = !DILocation(line: 458, column: 20, scope: !724, inlinedAt: !729)
!762 = !DILocation(line: 458, column: 14, scope: !724, inlinedAt: !729)
!763 = !DILocation(line: 459, column: 11, scope: !724, inlinedAt: !729)
!764 = !DILocation(line: 462, column: 7, scope: !765, inlinedAt: !729)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 462, column: 7)
!766 = distinct !DILexicalBlock(scope: !724, file: !3, line: 462, column: 7)
!767 = !DILocation(line: 464, column: 42, scope: !724, inlinedAt: !729)
!768 = !{!769, !636, i64 8}
!769 = !{!"tokenbuffer", !770, i64 0, !636, i64 8}
!770 = !{!"long", !637, i64 0}
!771 = !DILocalVariable(name: "root", arg: 1, scope: !772, file: !3, line: 128, type: !59)
!772 = distinct !DISubprogram(name: "search_item", scope: !3, file: !3, line: 128, type: !773, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!59, !59, !29}
!775 = !{!771, !776, !777, !778, !779, !780, !781, !782}
!776 = !DILocalVariable(name: "str", arg: 2, scope: !772, file: !3, line: 128, type: !29)
!777 = !DILocalVariable(name: "p", scope: !772, file: !3, line: 130, type: !59)
!778 = !DILocalVariable(name: "q", scope: !772, file: !3, line: 130, type: !59)
!779 = !DILocalVariable(name: "r", scope: !772, file: !3, line: 130, type: !59)
!780 = !DILocalVariable(name: "s", scope: !772, file: !3, line: 130, type: !59)
!781 = !DILocalVariable(name: "t", scope: !772, file: !3, line: 130, type: !59)
!782 = !DILocalVariable(name: "a", scope: !772, file: !3, line: 131, type: !66)
!783 = !DILocation(line: 128, column: 27, scope: !772, inlinedAt: !784)
!784 = distinct !DILocation(line: 464, column: 11, scope: !724, inlinedAt: !729)
!785 = !DILocation(line: 128, column: 45, scope: !772, inlinedAt: !784)
!786 = !DILocation(line: 133, column: 3, scope: !787, inlinedAt: !784)
!787 = distinct !DILexicalBlock(scope: !772, file: !3, line: 133, column: 3)
!788 = !DILocation(line: 133, column: 3, scope: !789, inlinedAt: !784)
!789 = distinct !DILexicalBlock(scope: !787, file: !3, line: 133, column: 3)
!790 = !DILocation(line: 137, column: 13, scope: !791, inlinedAt: !784)
!791 = distinct !DILexicalBlock(scope: !772, file: !3, line: 137, column: 7)
!792 = !{!793, !636, i64 16}
!793 = !{!"item", !636, i64 0, !636, i64 8, !636, i64 16, !691, i64 24, !770, i64 32, !636, i64 40, !636, i64 48}
!794 = !DILocation(line: 137, column: 19, scope: !791, inlinedAt: !784)
!795 = !DILocation(line: 137, column: 7, scope: !772, inlinedAt: !784)
!796 = !DILocation(line: 103, column: 23, scope: !736, inlinedAt: !797)
!797 = distinct !DILocation(line: 138, column: 27, scope: !791, inlinedAt: !784)
!798 = !DILocation(line: 105, column: 20, scope: !736, inlinedAt: !797)
!799 = !DILocation(line: 105, column: 16, scope: !736, inlinedAt: !797)
!800 = !DILocation(line: 107, column: 13, scope: !736, inlinedAt: !797)
!801 = !DILocation(line: 107, column: 19, scope: !736, inlinedAt: !797)
!802 = !DILocation(line: 107, column: 6, scope: !736, inlinedAt: !797)
!803 = !DILocation(line: 107, column: 10, scope: !736, inlinedAt: !797)
!804 = !{!793, !636, i64 0}
!805 = !DILocation(line: 108, column: 6, scope: !736, inlinedAt: !797)
!806 = !DILocation(line: 112, column: 6, scope: !736, inlinedAt: !797)
!807 = !DILocation(line: 108, column: 11, scope: !736, inlinedAt: !797)
!808 = !DILocation(line: 112, column: 12, scope: !736, inlinedAt: !797)
!809 = !DILocation(line: 138, column: 25, scope: !791, inlinedAt: !784)
!810 = !DILocation(line: 138, column: 5, scope: !791, inlinedAt: !784)
!811 = !DILocation(line: 130, column: 32, scope: !772, inlinedAt: !784)
!812 = !DILocation(line: 130, column: 16, scope: !772, inlinedAt: !784)
!813 = !DILocation(line: 130, column: 28, scope: !772, inlinedAt: !784)
!814 = !DILocation(line: 147, column: 27, scope: !815, inlinedAt: !784)
!815 = distinct !DILexicalBlock(scope: !772, file: !3, line: 145, column: 5)
!816 = !DILocation(line: 147, column: 11, scope: !815, inlinedAt: !784)
!817 = !DILocation(line: 131, column: 7, scope: !772, inlinedAt: !784)
!818 = !DILocation(line: 148, column: 13, scope: !819, inlinedAt: !784)
!819 = distinct !DILexicalBlock(scope: !815, file: !3, line: 148, column: 11)
!820 = !DILocation(line: 148, column: 11, scope: !815, inlinedAt: !784)
!821 = !DILocation(line: 152, column: 13, scope: !822, inlinedAt: !784)
!822 = distinct !DILexicalBlock(scope: !815, file: !3, line: 152, column: 11)
!823 = !DILocation(line: 153, column: 16, scope: !822, inlinedAt: !784)
!824 = !DIExpression(DW_OP_deref)
!825 = !DILocation(line: 130, column: 20, scope: !772, inlinedAt: !784)
!826 = !DILocation(line: 155, column: 16, scope: !822, inlinedAt: !784)
!827 = !DILocation(line: 152, column: 11, scope: !815, inlinedAt: !784)
!828 = !DILocation(line: 157, column: 13, scope: !829, inlinedAt: !784)
!829 = distinct !DILexicalBlock(scope: !815, file: !3, line: 157, column: 11)
!830 = !DILocation(line: 157, column: 11, scope: !815, inlinedAt: !784)
!831 = !DILocation(line: 103, column: 23, scope: !736, inlinedAt: !832)
!832 = distinct !DILocation(line: 160, column: 15, scope: !833, inlinedAt: !784)
!833 = distinct !DILexicalBlock(scope: !829, file: !3, line: 158, column: 9)
!834 = !DILocation(line: 105, column: 20, scope: !736, inlinedAt: !832)
!835 = !DILocation(line: 105, column: 16, scope: !736, inlinedAt: !832)
!836 = !DILocation(line: 107, column: 13, scope: !736, inlinedAt: !832)
!837 = !DILocation(line: 107, column: 19, scope: !736, inlinedAt: !832)
!838 = !DILocation(line: 107, column: 6, scope: !736, inlinedAt: !832)
!839 = !DILocation(line: 107, column: 10, scope: !736, inlinedAt: !832)
!840 = !DILocation(line: 108, column: 6, scope: !736, inlinedAt: !832)
!841 = !DILocation(line: 112, column: 6, scope: !736, inlinedAt: !832)
!842 = !DILocation(line: 108, column: 11, scope: !736, inlinedAt: !832)
!843 = !DILocation(line: 112, column: 12, scope: !736, inlinedAt: !832)
!844 = !DILocation(line: 169, column: 11, scope: !845, inlinedAt: !784)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 169, column: 11)
!846 = distinct !DILexicalBlock(scope: !833, file: !3, line: 169, column: 11)
!847 = !DILocation(line: 169, column: 11, scope: !846, inlinedAt: !784)
!848 = !DILocation(line: 170, column: 36, scope: !849, inlinedAt: !784)
!849 = distinct !DILexicalBlock(scope: !833, file: !3, line: 170, column: 15)
!850 = !DILocation(line: 177, column: 26, scope: !851, inlinedAt: !784)
!851 = distinct !DILexicalBlock(scope: !849, file: !3, line: 176, column: 13)
!852 = !DILocation(line: 172, column: 26, scope: !853, inlinedAt: !784)
!853 = distinct !DILexicalBlock(scope: !849, file: !3, line: 171, column: 13)
!854 = !DILocation(line: 170, column: 15, scope: !833, inlinedAt: !784)
!855 = !DILocation(line: 130, column: 24, scope: !772, inlinedAt: !784)
!856 = !DILocation(line: 181, column: 20, scope: !833, inlinedAt: !784)
!857 = !DILocation(line: 181, column: 11, scope: !833, inlinedAt: !784)
!858 = !DILocation(line: 183, column: 15, scope: !859, inlinedAt: !784)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 183, column: 15)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 183, column: 15)
!861 = distinct !DILexicalBlock(scope: !833, file: !3, line: 182, column: 13)
!862 = !DILocation(line: 183, column: 15, scope: !860, inlinedAt: !784)
!863 = !DILocation(line: 184, column: 40, scope: !864, inlinedAt: !784)
!864 = distinct !DILexicalBlock(scope: !861, file: !3, line: 184, column: 19)
!865 = !DILocation(line: 184, column: 19, scope: !861, inlinedAt: !784)
!866 = !DILocation(line: 186, column: 30, scope: !867, inlinedAt: !784)
!867 = distinct !DILexicalBlock(scope: !864, file: !3, line: 185, column: 17)
!868 = !{!793, !691, i64 24}
!869 = !DILocation(line: 187, column: 26, scope: !867, inlinedAt: !784)
!870 = !DILocation(line: 188, column: 17, scope: !867, inlinedAt: !784)
!871 = !DILocation(line: 191, column: 30, scope: !872, inlinedAt: !784)
!872 = distinct !DILexicalBlock(scope: !864, file: !3, line: 190, column: 17)
!873 = !DILocation(line: 192, column: 26, scope: !872, inlinedAt: !784)
!874 = distinct !{!874, !875, !876}
!875 = !DILocation(line: 181, column: 11, scope: !833)
!876 = !DILocation(line: 194, column: 13, scope: !833)
!877 = !DILocation(line: 197, column: 18, scope: !878, inlinedAt: !784)
!878 = distinct !DILexicalBlock(scope: !833, file: !3, line: 197, column: 15)
!879 = !DILocation(line: 197, column: 26, scope: !878, inlinedAt: !784)
!880 = !DILocation(line: 197, column: 31, scope: !878, inlinedAt: !784)
!881 = !DILocation(line: 197, column: 48, scope: !878, inlinedAt: !784)
!882 = !DILocation(line: 197, column: 45, scope: !878, inlinedAt: !784)
!883 = !DILocation(line: 197, column: 15, scope: !833, inlinedAt: !784)
!884 = !DILocation(line: 199, column: 26, scope: !885, inlinedAt: !784)
!885 = distinct !DILexicalBlock(scope: !878, file: !3, line: 198, column: 13)
!886 = !DILocation(line: 200, column: 15, scope: !885, inlinedAt: !784)
!887 = !DILocation(line: 203, column: 18, scope: !888, inlinedAt: !784)
!888 = distinct !DILexicalBlock(scope: !833, file: !3, line: 203, column: 15)
!889 = !DILocation(line: 203, column: 26, scope: !888, inlinedAt: !784)
!890 = !DILocation(line: 203, column: 15, scope: !833, inlinedAt: !784)
!891 = !DILocation(line: 214, column: 33, scope: !892, inlinedAt: !784)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 213, column: 17)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 207, column: 19)
!894 = distinct !DILexicalBlock(scope: !888, file: !3, line: 204, column: 13)
!895 = !DILocation(line: 209, column: 32, scope: !896, inlinedAt: !784)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 208, column: 17)
!897 = !DILocation(line: 207, column: 19, scope: !894, inlinedAt: !784)
!898 = !DILocation(line: 217, column: 39, scope: !894, inlinedAt: !784)
!899 = !DILocation(line: 218, column: 13, scope: !894, inlinedAt: !784)
!900 = !DILocation(line: 222, column: 19, scope: !901, inlinedAt: !784)
!901 = distinct !DILexicalBlock(scope: !888, file: !3, line: 220, column: 13)
!902 = !DILocation(line: 224, column: 26, scope: !903, inlinedAt: !784)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 223, column: 17)
!904 = distinct !DILexicalBlock(scope: !901, file: !3, line: 222, column: 19)
!905 = !DILocation(line: 225, column: 33, scope: !903, inlinedAt: !784)
!906 = !{!793, !636, i64 8}
!907 = !DILocation(line: 225, column: 28, scope: !903, inlinedAt: !784)
!908 = !DILocation(line: 226, column: 27, scope: !903, inlinedAt: !784)
!909 = !DILocation(line: 227, column: 32, scope: !903, inlinedAt: !784)
!910 = !DILocation(line: 229, column: 17, scope: !903, inlinedAt: !784)
!911 = !DILocation(line: 232, column: 26, scope: !912, inlinedAt: !784)
!912 = distinct !DILexicalBlock(scope: !904, file: !3, line: 231, column: 17)
!913 = !DILocation(line: 233, column: 32, scope: !912, inlinedAt: !784)
!914 = !DILocation(line: 233, column: 27, scope: !912, inlinedAt: !784)
!915 = !DILocation(line: 234, column: 28, scope: !912, inlinedAt: !784)
!916 = !DILocation(line: 235, column: 33, scope: !912, inlinedAt: !784)
!917 = !DILocation(line: 239, column: 26, scope: !901, inlinedAt: !784)
!918 = !DILocation(line: 240, column: 26, scope: !901, inlinedAt: !784)
!919 = !DILocation(line: 241, column: 22, scope: !920, inlinedAt: !784)
!920 = distinct !DILexicalBlock(scope: !901, file: !3, line: 241, column: 19)
!921 = !DILocation(line: 241, column: 30, scope: !920, inlinedAt: !784)
!922 = !DILocation(line: 241, column: 19, scope: !901, inlinedAt: !784)
!923 = !DILocation(line: 243, column: 35, scope: !924, inlinedAt: !784)
!924 = distinct !DILexicalBlock(scope: !920, file: !3, line: 243, column: 24)
!925 = !DILocation(line: 243, column: 24, scope: !920, inlinedAt: !784)
!926 = !DILocation(line: 245, column: 15, scope: !901, inlinedAt: !784)
!927 = !DILocation(line: 249, column: 23, scope: !928, inlinedAt: !784)
!928 = distinct !DILexicalBlock(scope: !833, file: !3, line: 249, column: 15)
!929 = !DILocation(line: 249, column: 17, scope: !928, inlinedAt: !784)
!930 = !DILocation(line: 252, column: 16, scope: !928, inlinedAt: !784)
!931 = !DILocation(line: 249, column: 15, scope: !833, inlinedAt: !784)
!932 = !DILocation(line: 254, column: 11, scope: !833, inlinedAt: !784)
!933 = !DILocation(line: 258, column: 14, scope: !934, inlinedAt: !784)
!934 = distinct !DILexicalBlock(scope: !815, file: !3, line: 258, column: 11)
!935 = !DILocation(line: 258, column: 11, scope: !934, inlinedAt: !784)
!936 = !DILocation(line: 258, column: 11, scope: !815, inlinedAt: !784)
!937 = distinct !{!937, !938, !939}
!938 = !DILocation(line: 144, column: 3, scope: !772)
!939 = !DILocation(line: 265, column: 5, scope: !772)
!940 = !DILocation(line: 465, column: 11, scope: !941, inlinedAt: !729)
!941 = distinct !DILexicalBlock(scope: !724, file: !3, line: 465, column: 11)
!942 = !DILocation(line: 465, column: 11, scope: !724, inlinedAt: !729)
!943 = !DILocalVariable(name: "j", arg: 1, scope: !944, file: !3, line: 273, type: !59)
!944 = distinct !DISubprogram(name: "record_relation", scope: !3, file: !3, line: 273, type: !945, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !59, !59}
!947 = !{!943, !948, !949}
!948 = !DILocalVariable(name: "k", arg: 2, scope: !944, file: !3, line: 273, type: !59)
!949 = !DILocalVariable(name: "p", scope: !944, file: !3, line: 275, type: !70)
!950 = !DILocation(line: 273, column: 31, scope: !944, inlinedAt: !951)
!951 = distinct !DILocation(line: 468, column: 11, scope: !952, inlinedAt: !729)
!952 = distinct !DILexicalBlock(scope: !941, file: !3, line: 466, column: 9)
!953 = !DILocation(line: 273, column: 47, scope: !944, inlinedAt: !951)
!954 = !DILocation(line: 277, column: 8, scope: !955, inlinedAt: !951)
!955 = distinct !DILexicalBlock(scope: !944, file: !3, line: 277, column: 7)
!956 = !DILocation(line: 277, column: 7, scope: !944, inlinedAt: !951)
!957 = !DILocation(line: 279, column: 10, scope: !958, inlinedAt: !951)
!958 = distinct !DILexicalBlock(scope: !955, file: !3, line: 278, column: 5)
!959 = !DILocation(line: 279, column: 15, scope: !958, inlinedAt: !951)
!960 = !{!793, !770, i64 32}
!961 = !DILocation(line: 280, column: 11, scope: !958, inlinedAt: !951)
!962 = !DILocation(line: 275, column: 21, scope: !944, inlinedAt: !951)
!963 = !DILocation(line: 281, column: 10, scope: !958, inlinedAt: !951)
!964 = !DILocation(line: 281, column: 14, scope: !958, inlinedAt: !951)
!965 = !{!966, !636, i64 0}
!966 = !{!"successor", !636, i64 0, !636, i64 8}
!967 = !DILocation(line: 282, column: 20, scope: !958, inlinedAt: !951)
!968 = !{!793, !636, i64 48}
!969 = !DILocation(line: 282, column: 10, scope: !958, inlinedAt: !951)
!970 = !DILocation(line: 282, column: 15, scope: !958, inlinedAt: !951)
!971 = !{!966, !636, i64 8}
!972 = !DILocation(line: 283, column: 14, scope: !958, inlinedAt: !951)
!973 = !DILocation(line: 284, column: 5, scope: !958, inlinedAt: !951)
!974 = distinct !{!974, !975, !976}
!975 = !DILocation(line: 455, column: 3, scope: !707)
!976 = !DILocation(line: 473, column: 5, scope: !707)
!977 = !DILocation(line: 475, column: 9, scope: !978, inlinedAt: !729)
!978 = distinct !DILexicalBlock(scope: !707, file: !3, line: 475, column: 7)
!979 = !DILocation(line: 475, column: 7, scope: !707, inlinedAt: !729)
!980 = !DILocation(line: 476, column: 5, scope: !978, inlinedAt: !729)
!981 = !DILocalVariable(name: "root", arg: 1, scope: !982, file: !3, line: 427, type: !59)
!982 = distinct !DISubprogram(name: "walk_tree", scope: !3, file: !3, line: 427, type: !983, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !988)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !59, !985}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!93, !59}
!988 = !{!981, !989}
!989 = !DILocalVariable(name: "action", arg: 2, scope: !982, file: !3, line: 427, type: !985)
!990 = !DILocation(line: 427, column: 25, scope: !982, inlinedAt: !991)
!991 = distinct !DILocation(line: 480, column: 3, scope: !707, inlinedAt: !729)
!992 = !DILocation(line: 427, column: 38, scope: !982, inlinedAt: !991)
!993 = !DILocation(line: 429, column: 13, scope: !994, inlinedAt: !991)
!994 = distinct !DILexicalBlock(scope: !982, file: !3, line: 429, column: 7)
!995 = !DILocation(line: 429, column: 7, scope: !994, inlinedAt: !991)
!996 = !DILocation(line: 429, column: 7, scope: !982, inlinedAt: !991)
!997 = !DILocation(line: 430, column: 5, scope: !994, inlinedAt: !991)
!998 = !DILocation(line: 482, column: 10, scope: !707, inlinedAt: !729)
!999 = !{!770, !770, i64 0}
!1000 = !DILocation(line: 482, column: 20, scope: !707, inlinedAt: !729)
!1001 = !DILocation(line: 482, column: 3, scope: !707, inlinedAt: !729)
!1002 = !DILocation(line: 429, column: 7, scope: !982, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 485, column: 7, scope: !727, inlinedAt: !729)
!1004 = !DILocation(line: 427, column: 25, scope: !982, inlinedAt: !1003)
!1005 = !DILocation(line: 427, column: 38, scope: !982, inlinedAt: !1003)
!1006 = !DILocation(line: 430, column: 5, scope: !994, inlinedAt: !1003)
!1007 = !DILocation(line: 487, column: 14, scope: !727, inlinedAt: !729)
!1008 = !DILocation(line: 487, column: 7, scope: !727, inlinedAt: !729)
!1009 = !DILocation(line: 489, column: 39, scope: !726, inlinedAt: !729)
!1010 = !DILocation(line: 519, column: 11, scope: !1011, inlinedAt: !729)
!1011 = distinct !DILexicalBlock(scope: !727, file: !3, line: 519, column: 11)
!1012 = !DILocation(line: 489, column: 29, scope: !726, inlinedAt: !729)
!1013 = !DILocation(line: 492, column: 23, scope: !726, inlinedAt: !729)
!1014 = !DILocation(line: 492, column: 11, scope: !726, inlinedAt: !729)
!1015 = !DILocation(line: 498, column: 11, scope: !726, inlinedAt: !729)
!1016 = !DILocation(line: 498, column: 17, scope: !726, inlinedAt: !729)
!1017 = !DILocation(line: 498, column: 21, scope: !726, inlinedAt: !729)
!1018 = !DILocation(line: 499, column: 20, scope: !726, inlinedAt: !729)
!1019 = !DILocation(line: 502, column: 11, scope: !726, inlinedAt: !729)
!1020 = !DILocation(line: 504, column: 18, scope: !1021, inlinedAt: !729)
!1021 = distinct !DILexicalBlock(scope: !726, file: !3, line: 503, column: 13)
!1022 = !DILocation(line: 504, column: 23, scope: !1021, inlinedAt: !729)
!1023 = !DILocation(line: 504, column: 28, scope: !1021, inlinedAt: !729)
!1024 = !DILocation(line: 505, column: 33, scope: !1025, inlinedAt: !729)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 505, column: 19)
!1026 = !DILocation(line: 505, column: 19, scope: !1021, inlinedAt: !729)
!1027 = !DILocation(line: 507, column: 19, scope: !1028, inlinedAt: !729)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 506, column: 17)
!1029 = !DILocation(line: 507, column: 26, scope: !1028, inlinedAt: !729)
!1030 = !DILocation(line: 507, column: 32, scope: !1028, inlinedAt: !729)
!1031 = !{!793, !636, i64 40}
!1032 = !DILocation(line: 508, column: 25, scope: !1028, inlinedAt: !729)
!1033 = !DILocation(line: 509, column: 17, scope: !1028, inlinedAt: !729)
!1034 = !DILocation(line: 511, column: 22, scope: !1021, inlinedAt: !729)
!1035 = distinct !{!1035, !1036, !1037}
!1036 = !DILocation(line: 502, column: 11, scope: !726)
!1037 = !DILocation(line: 512, column: 13, scope: !726)
!1038 = !DILocation(line: 515, column: 18, scope: !726, inlinedAt: !729)
!1039 = !DILocation(line: 515, column: 24, scope: !726, inlinedAt: !729)
!1040 = !DILocation(line: 515, column: 16, scope: !726, inlinedAt: !729)
!1041 = distinct !{!1041, !1042, !1043}
!1042 = !DILocation(line: 487, column: 7, scope: !727)
!1043 = !DILocation(line: 516, column: 9, scope: !727)
!1044 = !DILocation(line: 519, column: 21, scope: !1011, inlinedAt: !729)
!1045 = !DILocation(line: 519, column: 11, scope: !727, inlinedAt: !729)
!1046 = !DILocation(line: 522, column: 24, scope: !1047, inlinedAt: !729)
!1047 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 520, column: 9)
!1048 = !DILocation(line: 522, column: 57, scope: !1047, inlinedAt: !729)
!1049 = !DILocation(line: 522, column: 11, scope: !1047, inlinedAt: !729)
!1050 = !DILocation(line: 526, column: 11, scope: !1047, inlinedAt: !729)
!1051 = distinct !{!1051, !1052, !1053}
!1052 = !DILocation(line: 526, column: 11, scope: !1047)
!1053 = !DILocation(line: 528, column: 22, scope: !1047)
!1054 = !DILocation(line: 427, column: 25, scope: !982, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 527, column: 13, scope: !1047, inlinedAt: !729)
!1056 = !DILocation(line: 427, column: 38, scope: !982, inlinedAt: !1055)
!1057 = !DILocation(line: 429, column: 7, scope: !982, inlinedAt: !1055)
!1058 = !DILocation(line: 430, column: 5, scope: !994, inlinedAt: !1055)
!1059 = !DILocation(line: 528, column: 18, scope: !1047, inlinedAt: !729)
!1060 = !DILocation(line: 527, column: 13, scope: !1047, inlinedAt: !729)
!1061 = distinct !{!1061, !1062, !1063}
!1062 = !DILocation(line: 482, column: 3, scope: !707)
!1063 = !DILocation(line: 530, column: 5, scope: !707)
!1064 = !DILocation(line: 534, column: 15, scope: !1065, inlinedAt: !729)
!1065 = distinct !DILexicalBlock(scope: !707, file: !3, line: 534, column: 7)
!1066 = !DILocation(line: 534, column: 7, scope: !1065, inlinedAt: !729)
!1067 = !DILocation(line: 534, column: 22, scope: !1065, inlinedAt: !729)
!1068 = !DILocation(line: 534, column: 7, scope: !707, inlinedAt: !729)
!1069 = !DILocation(line: 535, column: 5, scope: !1065, inlinedAt: !729)
!1070 = !DILocation(line: 538, column: 10, scope: !707, inlinedAt: !729)
!1071 = !DILocation(line: 539, column: 1, scope: !707, inlinedAt: !729)
!1072 = !DILocation(line: 567, column: 10, scope: !665)
!1073 = !DILocation(line: 567, column: 3, scope: !665)
!1074 = distinct !DISubprogram(name: "count_items", scope: !3, file: !3, line: 288, type: !986, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1075)
!1075 = !{!1076}
!1076 = !DILocalVariable(name: "unused", arg: 1, scope: !1074, file: !3, line: 288, type: !59)
!1077 = !DILocation(line: 288, column: 27, scope: !1074)
!1078 = !DILocation(line: 290, column: 12, scope: !1074)
!1079 = !DILocation(line: 291, column: 3, scope: !1074)
!1080 = distinct !DISubprogram(name: "recurse_tree", scope: !3, file: !3, line: 404, type: !1081, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1083)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!93, !59, !985}
!1083 = !{!1084, !1085}
!1084 = !DILocalVariable(name: "root", arg: 1, scope: !1080, file: !3, line: 404, type: !59)
!1085 = !DILocalVariable(name: "action", arg: 2, scope: !1080, file: !3, line: 404, type: !985)
!1086 = !DILocation(line: 404, column: 28, scope: !1080)
!1087 = !DILocation(line: 404, column: 41, scope: !1080)
!1088 = !DILocation(line: 406, column: 13, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 406, column: 7)
!1090 = !DILocation(line: 406, column: 18, scope: !1089)
!1091 = !DILocation(line: 406, column: 26, scope: !1089)
!1092 = !DILocation(line: 406, column: 35, scope: !1089)
!1093 = !DILocation(line: 406, column: 41, scope: !1089)
!1094 = !DILocation(line: 406, column: 7, scope: !1080)
!1095 = !DILocation(line: 407, column: 12, scope: !1089)
!1096 = !DILocation(line: 407, column: 5, scope: !1089)
!1097 = !DILocation(line: 411, column: 13, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 411, column: 13)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 410, column: 11)
!1100 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 409, column: 5)
!1101 = !DILocation(line: 411, column: 13, scope: !1099)
!1102 = !DILocation(line: 413, column: 11, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 413, column: 11)
!1104 = !DILocation(line: 413, column: 11, scope: !1100)
!1105 = !DILocation(line: 415, column: 17, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 415, column: 11)
!1107 = !DILocation(line: 415, column: 23, scope: !1106)
!1108 = !DILocation(line: 415, column: 11, scope: !1100)
!1109 = !DILocation(line: 416, column: 13, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 416, column: 13)
!1111 = !DILocation(line: 416, column: 13, scope: !1106)
!1112 = !DILocation(line: 420, column: 3, scope: !1080)
!1113 = !DILocation(line: 421, column: 1, scope: !1080)
!1114 = distinct !DISubprogram(name: "scan_zeros", scope: !3, file: !3, line: 295, type: !986, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1115)
!1115 = !{!1116}
!1116 = !DILocalVariable(name: "k", arg: 1, scope: !1114, file: !3, line: 295, type: !59)
!1117 = !DILocation(line: 295, column: 26, scope: !1114)
!1118 = !DILocation(line: 298, column: 10, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 298, column: 7)
!1120 = !DILocation(line: 298, column: 16, scope: !1119)
!1121 = !DILocation(line: 298, column: 21, scope: !1119)
!1122 = !DILocation(line: 298, column: 27, scope: !1119)
!1123 = !DILocation(line: 298, column: 24, scope: !1119)
!1124 = !DILocation(line: 298, column: 7, scope: !1114)
!1125 = !DILocation(line: 300, column: 11, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 300, column: 11)
!1127 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 299, column: 5)
!1128 = !DILocation(line: 300, column: 16, scope: !1126)
!1129 = !DILocation(line: 303, column: 9, scope: !1126)
!1130 = !DILocation(line: 303, column: 16, scope: !1126)
!1131 = !DILocation(line: 300, column: 11, scope: !1127)
!1132 = !DILocation(line: 305, column: 13, scope: !1127)
!1133 = !DILocation(line: 306, column: 5, scope: !1127)
!1134 = !DILocation(line: 308, column: 3, scope: !1114)
!1135 = distinct !DISubprogram(name: "detect_loop", scope: !3, file: !3, line: 330, type: !986, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1136)
!1136 = !{!1137, !1138, !1144, !1151}
!1137 = !DILocalVariable(name: "k", arg: 1, scope: !1135, file: !3, line: 330, type: !59)
!1138 = !DILocalVariable(name: "p", scope: !1139, file: !3, line: 342, type: !1143)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 341, column: 9)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 337, column: 11)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 333, column: 5)
!1142 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 332, column: 7)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1144 = !DILocalVariable(name: "tmp", scope: !1145, file: !3, line: 353, type: !59)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 352, column: 25)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 349, column: 21)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 348, column: 23)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 347, column: 17)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 346, column: 19)
!1150 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 345, column: 13)
!1151 = !DILocalVariable(name: "tmp", scope: !1152, file: !3, line: 374, type: !59)
!1152 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 373, column: 25)
!1153 = !DILocation(line: 330, column: 27, scope: !1135)
!1154 = !DILocation(line: 332, column: 10, scope: !1142)
!1155 = !DILocation(line: 332, column: 16, scope: !1142)
!1156 = !DILocation(line: 332, column: 7, scope: !1135)
!1157 = !DILocation(line: 337, column: 11, scope: !1140)
!1158 = !DILocation(line: 337, column: 16, scope: !1140)
!1159 = !DILocation(line: 337, column: 11, scope: !1141)
!1160 = !DILocation(line: 339, column: 14, scope: !1140)
!1161 = !DILocation(line: 339, column: 9, scope: !1140)
!1162 = !DILocation(line: 342, column: 38, scope: !1139)
!1163 = !DILocation(line: 342, column: 30, scope: !1139)
!1164 = !DILocation(line: 344, column: 18, scope: !1139)
!1165 = !DILocation(line: 344, column: 11, scope: !1139)
!1166 = !DILocation(line: 346, column: 25, scope: !1149)
!1167 = distinct !{!1167, !1165, !1168}
!1168 = !DILocation(line: 393, column: 13, scope: !1139)
!1169 = !DILocation(line: 346, column: 29, scope: !1149)
!1170 = !DILocation(line: 392, column: 26, scope: !1150)
!1171 = !DILocation(line: 346, column: 19, scope: !1150)
!1172 = !DILocation(line: 348, column: 26, scope: !1147)
!1173 = !DILocation(line: 348, column: 23, scope: !1147)
!1174 = !DILocation(line: 348, column: 23, scope: !1148)
!1175 = !DILocation(line: 353, column: 52, scope: !1145)
!1176 = !DILocation(line: 353, column: 40, scope: !1145)
!1177 = !DILocation(line: 355, column: 53, scope: !1145)
!1178 = !DILocation(line: 355, column: 27, scope: !1145)
!1179 = !DILocation(line: 358, column: 31, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 358, column: 31)
!1181 = !DILocation(line: 358, column: 36, scope: !1180)
!1182 = !DILocation(line: 358, column: 31, scope: !1145)
!1183 = !DILocation(line: 361, column: 32, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 359, column: 29)
!1185 = !DILocation(line: 361, column: 37, scope: !1184)
!1186 = !DILocation(line: 361, column: 42, scope: !1184)
!1187 = !DILocation(line: 361, column: 47, scope: !1184)
!1188 = !DILocation(line: 362, column: 42, scope: !1184)
!1189 = !DILocation(line: 362, column: 34, scope: !1184)
!1190 = !DILocation(line: 368, column: 33, scope: !1145)
!1191 = !DILocation(line: 368, column: 39, scope: !1145)
!1192 = !DILocation(line: 369, column: 32, scope: !1145)
!1193 = !DILocation(line: 351, column: 23, scope: !1146)
!1194 = distinct !{!1194, !1193, !1195}
!1195 = !DILocation(line: 370, column: 25, scope: !1146)
!1196 = !DILocation(line: 372, column: 30, scope: !1146)
!1197 = !DILocation(line: 372, column: 23, scope: !1146)
!1198 = !DILocation(line: 374, column: 52, scope: !1152)
!1199 = !DILocation(line: 374, column: 40, scope: !1152)
!1200 = !DILocation(line: 376, column: 39, scope: !1152)
!1201 = distinct !{!1201, !1197, !1202}
!1202 = !DILocation(line: 378, column: 25, scope: !1146)
!1203 = !DILocation(line: 386, column: 32, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 385, column: 21)
!1205 = !DILocation(line: 387, column: 28, scope: !1204)
!1206 = !DILocation(line: 388, column: 23, scope: !1204)
!1207 = !DILocation(line: 377, column: 32, scope: !1152)
!1208 = !DILocation(line: 398, column: 1, scope: !1135)
!1209 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !92, file: !92, line: 41, type: !41, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1210)
!1210 = !{!1211}
!1211 = !DILocalVariable(name: "file", arg: 1, scope: !1209, file: !92, line: 41, type: !29)
!1212 = !DILocation(line: 41, column: 41, scope: !1209)
!1213 = !DILocation(line: 43, column: 13, scope: !1209)
!1214 = !DILocation(line: 44, column: 1, scope: !1209)
!1215 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !92, file: !92, line: 78, type: !1216, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !93}
!1218 = !{!1219}
!1219 = !DILocalVariable(name: "ignore", arg: 1, scope: !1215, file: !92, line: 78, type: !93)
!1220 = !DILocation(line: 78, column: 37, scope: !1215)
!1221 = !DILocation(line: 80, column: 16, scope: !1215)
!1222 = !{!1223, !1223, i64 0}
!1223 = !{!"_Bool", !637, i64 0}
!1224 = !DILocation(line: 81, column: 1, scope: !1215)
!1225 = distinct !DISubprogram(name: "close_stdout", scope: !92, file: !92, line: 107, type: !643, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1226)
!1226 = !{!1227}
!1227 = !DILocalVariable(name: "write_error", scope: !1228, file: !92, line: 112, type: !29)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !92, line: 111, column: 5)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !92, line: 109, column: 7)
!1230 = !DILocation(line: 109, column: 21, scope: !1229)
!1231 = !DILocation(line: 109, column: 7, scope: !1229)
!1232 = !DILocation(line: 109, column: 29, scope: !1229)
!1233 = !DILocation(line: 110, column: 7, scope: !1229)
!1234 = !DILocation(line: 110, column: 12, scope: !1229)
!1235 = !{i8 0, i8 2}
!1236 = !DILocation(line: 114, column: 19, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1228, file: !92, line: 113, column: 11)
!1238 = !DILocation(line: 110, column: 25, scope: !1229)
!1239 = !DILocation(line: 110, column: 28, scope: !1229)
!1240 = !DILocation(line: 110, column: 34, scope: !1229)
!1241 = !DILocation(line: 109, column: 7, scope: !1225)
!1242 = !DILocation(line: 112, column: 33, scope: !1228)
!1243 = !DILocation(line: 112, column: 19, scope: !1228)
!1244 = !DILocation(line: 113, column: 11, scope: !1237)
!1245 = !DILocation(line: 113, column: 11, scope: !1228)
!1246 = !DILocation(line: 114, column: 36, scope: !1237)
!1247 = !DILocation(line: 114, column: 9, scope: !1237)
!1248 = !DILocation(line: 117, column: 9, scope: !1237)
!1249 = !DILocation(line: 119, column: 14, scope: !1228)
!1250 = !DILocation(line: 119, column: 7, scope: !1228)
!1251 = !DILocation(line: 122, column: 22, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1225, file: !92, line: 122, column: 8)
!1253 = !DILocation(line: 122, column: 8, scope: !1252)
!1254 = !DILocation(line: 122, column: 30, scope: !1252)
!1255 = !DILocation(line: 122, column: 8, scope: !1225)
!1256 = !DILocation(line: 123, column: 13, scope: !1252)
!1257 = !DILocation(line: 123, column: 6, scope: !1252)
!1258 = !DILocation(line: 124, column: 1, scope: !1225)
!1259 = distinct !DISubprogram(name: "fdadvise", scope: !1260, file: !1260, line: 31, type: !1261, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !1269)
!1260 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !66, !1263, !1263, !1268}
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1264, line: 57, baseType: !1265)
!1264 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1266, line: 140, baseType: !1267)
!1266 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1267 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1269 = !{!1270, !1271, !1272, !1273, !1274}
!1270 = !DILocalVariable(name: "fd", arg: 1, scope: !1259, file: !1260, line: 31, type: !66)
!1271 = !DILocalVariable(name: "offset", arg: 2, scope: !1259, file: !1260, line: 31, type: !1263)
!1272 = !DILocalVariable(name: "len", arg: 3, scope: !1259, file: !1260, line: 31, type: !1263)
!1273 = !DILocalVariable(name: "advice", arg: 4, scope: !1259, file: !1260, line: 31, type: !1268)
!1274 = !DILocalVariable(name: "__x", scope: !1275, file: !1260, line: 34, type: !66)
!1275 = distinct !DILexicalBlock(scope: !1259, file: !1260, line: 34, column: 3)
!1276 = !DILocation(line: 31, column: 15, scope: !1259)
!1277 = !DILocation(line: 31, column: 25, scope: !1259)
!1278 = !DILocation(line: 31, column: 39, scope: !1259)
!1279 = !DILocation(line: 31, column: 54, scope: !1259)
!1280 = !DILocation(line: 34, column: 3, scope: !1275)
!1281 = !DILocation(line: 36, column: 1, scope: !1259)
!1282 = distinct !DISubprogram(name: "fadvise", scope: !1260, file: !1260, line: 39, type: !1283, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !1337)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !1285, !1268}
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1287, line: 7, baseType: !1288)
!1287 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1289, line: 241, size: 1728, elements: !1290)
!1289 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1311, !1312, !1313, !1314, !1315, !1316, !1318, !1322, !1325, !1327, !1328, !1329, !1330, !1331, !1332, !1333}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1288, file: !1289, line: 242, baseType: !66, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1288, file: !1289, line: 247, baseType: !124, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1288, file: !1289, line: 248, baseType: !124, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1288, file: !1289, line: 249, baseType: !124, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1288, file: !1289, line: 250, baseType: !124, size: 64, offset: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1288, file: !1289, line: 251, baseType: !124, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1288, file: !1289, line: 252, baseType: !124, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1288, file: !1289, line: 253, baseType: !124, size: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1288, file: !1289, line: 254, baseType: !124, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1288, file: !1289, line: 256, baseType: !124, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1288, file: !1289, line: 257, baseType: !124, size: 64, offset: 640)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1288, file: !1289, line: 258, baseType: !124, size: 64, offset: 704)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1288, file: !1289, line: 260, baseType: !1304, size: 64, offset: 768)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1289, line: 156, size: 192, elements: !1306)
!1306 = !{!1307, !1308, !1310}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1305, file: !1289, line: 157, baseType: !1304, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1305, file: !1289, line: 158, baseType: !1309, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1305, file: !1289, line: 162, baseType: !66, size: 32, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1288, file: !1289, line: 262, baseType: !1309, size: 64, offset: 832)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1288, file: !1289, line: 264, baseType: !66, size: 32, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1288, file: !1289, line: 268, baseType: !66, size: 32, offset: 928)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1288, file: !1289, line: 270, baseType: !1265, size: 64, offset: 960)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1288, file: !1289, line: 274, baseType: !153, size: 16, offset: 1024)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1288, file: !1289, line: 275, baseType: !1317, size: 8, offset: 1040)
!1317 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1288, file: !1289, line: 276, baseType: !1319, size: 8, offset: 1048)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 1)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1288, file: !1289, line: 280, baseType: !1323, size: 64, offset: 1088)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1289, line: 150, baseType: null)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1288, file: !1289, line: 289, baseType: !1326, size: 64, offset: 1152)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1266, line: 141, baseType: !1267)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1288, file: !1289, line: 297, baseType: !32, size: 64, offset: 1216)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1288, file: !1289, line: 298, baseType: !32, size: 64, offset: 1280)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1288, file: !1289, line: 299, baseType: !32, size: 64, offset: 1344)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1288, file: !1289, line: 300, baseType: !32, size: 64, offset: 1408)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1288, file: !1289, line: 302, baseType: !33, size: 64, offset: 1472)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1288, file: !1289, line: 303, baseType: !66, size: 32, offset: 1536)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1288, file: !1289, line: 305, baseType: !1334, size: 160, offset: 1568)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !1335)
!1335 = !{!1336}
!1336 = !DISubrange(count: 20)
!1337 = !{!1338, !1339}
!1338 = !DILocalVariable(name: "fp", arg: 1, scope: !1282, file: !1260, line: 39, type: !1285)
!1339 = !DILocalVariable(name: "advice", arg: 2, scope: !1282, file: !1260, line: 39, type: !1268)
!1340 = !DILocation(line: 39, column: 16, scope: !1282)
!1341 = !DILocation(line: 39, column: 30, scope: !1282)
!1342 = !DILocation(line: 41, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1282, file: !1260, line: 41, column: 7)
!1344 = !DILocation(line: 41, column: 7, scope: !1282)
!1345 = !DILocation(line: 42, column: 15, scope: !1343)
!1346 = !DILocation(line: 31, column: 15, scope: !1259, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 42, column: 5, scope: !1343)
!1348 = !DILocation(line: 31, column: 25, scope: !1259, inlinedAt: !1347)
!1349 = !DILocation(line: 31, column: 39, scope: !1259, inlinedAt: !1347)
!1350 = !DILocation(line: 31, column: 54, scope: !1259, inlinedAt: !1347)
!1351 = !DILocation(line: 34, column: 3, scope: !1275, inlinedAt: !1347)
!1352 = !DILocation(line: 42, column: 5, scope: !1343)
!1353 = !DILocation(line: 43, column: 1, scope: !1282)
!1354 = distinct !DISubprogram(name: "freopen_safer", scope: !1355, file: !1355, line: 54, type: !1356, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !1398)
!1355 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1358, !29, !29, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1287, line: 7, baseType: !1360)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1289, line: 241, size: 1728, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1360, file: !1289, line: 242, baseType: !66, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1360, file: !1289, line: 247, baseType: !124, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1360, file: !1289, line: 248, baseType: !124, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1360, file: !1289, line: 249, baseType: !124, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1360, file: !1289, line: 250, baseType: !124, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1360, file: !1289, line: 251, baseType: !124, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1360, file: !1289, line: 252, baseType: !124, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1360, file: !1289, line: 253, baseType: !124, size: 64, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1360, file: !1289, line: 254, baseType: !124, size: 64, offset: 512)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1360, file: !1289, line: 256, baseType: !124, size: 64, offset: 576)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1360, file: !1289, line: 257, baseType: !124, size: 64, offset: 640)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1360, file: !1289, line: 258, baseType: !124, size: 64, offset: 704)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1360, file: !1289, line: 260, baseType: !1375, size: 64, offset: 768)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1289, line: 156, size: 192, elements: !1377)
!1377 = !{!1378, !1379, !1381}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1376, file: !1289, line: 157, baseType: !1375, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1376, file: !1289, line: 158, baseType: !1380, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1376, file: !1289, line: 162, baseType: !66, size: 32, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1360, file: !1289, line: 262, baseType: !1380, size: 64, offset: 832)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1360, file: !1289, line: 264, baseType: !66, size: 32, offset: 896)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1360, file: !1289, line: 268, baseType: !66, size: 32, offset: 928)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1360, file: !1289, line: 270, baseType: !1265, size: 64, offset: 960)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1360, file: !1289, line: 274, baseType: !153, size: 16, offset: 1024)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1360, file: !1289, line: 275, baseType: !1317, size: 8, offset: 1040)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1360, file: !1289, line: 276, baseType: !1319, size: 8, offset: 1048)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1360, file: !1289, line: 280, baseType: !1323, size: 64, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1360, file: !1289, line: 289, baseType: !1326, size: 64, offset: 1152)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1360, file: !1289, line: 297, baseType: !32, size: 64, offset: 1216)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1360, file: !1289, line: 298, baseType: !32, size: 64, offset: 1280)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1360, file: !1289, line: 299, baseType: !32, size: 64, offset: 1344)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1360, file: !1289, line: 300, baseType: !32, size: 64, offset: 1408)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1360, file: !1289, line: 302, baseType: !33, size: 64, offset: 1472)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1360, file: !1289, line: 303, baseType: !66, size: 32, offset: 1536)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1360, file: !1289, line: 305, baseType: !1334, size: 160, offset: 1568)
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1399 = !DILocalVariable(name: "name", arg: 1, scope: !1354, file: !1355, line: 54, type: !29)
!1400 = !DILocalVariable(name: "mode", arg: 2, scope: !1354, file: !1355, line: 54, type: !29)
!1401 = !DILocalVariable(name: "f", arg: 3, scope: !1354, file: !1355, line: 54, type: !1358)
!1402 = !DILocalVariable(name: "protect_in", scope: !1354, file: !1355, line: 62, type: !93)
!1403 = !DILocalVariable(name: "protect_out", scope: !1354, file: !1355, line: 63, type: !93)
!1404 = !DILocalVariable(name: "protect_err", scope: !1354, file: !1355, line: 64, type: !93)
!1405 = !DILocalVariable(name: "saved_errno", scope: !1354, file: !1355, line: 65, type: !66)
!1406 = !DILocation(line: 54, column: 28, scope: !1354)
!1407 = !DILocation(line: 54, column: 46, scope: !1354)
!1408 = !DILocation(line: 54, column: 58, scope: !1354)
!1409 = !DILocation(line: 62, column: 8, scope: !1354)
!1410 = !DILocation(line: 63, column: 8, scope: !1354)
!1411 = !DILocation(line: 64, column: 8, scope: !1354)
!1412 = !DILocation(line: 67, column: 11, scope: !1354)
!1413 = !DILocation(line: 67, column: 3, scope: !1354)
!1414 = !DILocation(line: 70, column: 11, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !1355, line: 70, column: 11)
!1416 = distinct !DILexicalBlock(scope: !1354, file: !1355, line: 68, column: 5)
!1417 = !DILocation(line: 70, column: 47, scope: !1415)
!1418 = !DILocation(line: 70, column: 11, scope: !1416)
!1419 = !DILocation(line: 74, column: 11, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !1355, line: 74, column: 11)
!1421 = !DILocation(line: 74, column: 47, scope: !1420)
!1422 = !DILocation(line: 74, column: 11, scope: !1416)
!1423 = !DILocation(line: 78, column: 11, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1416, file: !1355, line: 78, column: 11)
!1425 = !DILocation(line: 78, column: 45, scope: !1424)
!1426 = !DILocation(line: 85, column: 18, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1354, file: !1355, line: 85, column: 7)
!1428 = !DILocalVariable(name: "fd", arg: 1, scope: !1429, file: !1355, line: 32, type: !66)
!1429 = distinct !DISubprogram(name: "protect_fd", scope: !1355, file: !1355, line: 32, type: !1430, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !1432)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!93, !66}
!1432 = !{!1428, !1433}
!1433 = !DILocalVariable(name: "value", scope: !1429, file: !1355, line: 34, type: !66)
!1434 = !DILocation(line: 32, column: 17, scope: !1429, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 85, column: 22, scope: !1427)
!1436 = !DILocation(line: 34, column: 15, scope: !1429, inlinedAt: !1435)
!1437 = !DILocation(line: 34, column: 7, scope: !1429, inlinedAt: !1435)
!1438 = !DILocation(line: 35, column: 13, scope: !1439, inlinedAt: !1435)
!1439 = distinct !DILexicalBlock(scope: !1429, file: !1355, line: 35, column: 7)
!1440 = !DILocation(line: 35, column: 7, scope: !1429, inlinedAt: !1435)
!1441 = !DILocation(line: 37, column: 13, scope: !1442, inlinedAt: !1435)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !1355, line: 37, column: 11)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !1355, line: 36, column: 5)
!1444 = !DILocation(line: 37, column: 11, scope: !1443, inlinedAt: !1435)
!1445 = !DILocation(line: 39, column: 11, scope: !1446, inlinedAt: !1435)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !1355, line: 38, column: 9)
!1447 = !DILocation(line: 40, column: 11, scope: !1446, inlinedAt: !1435)
!1448 = !DILocation(line: 40, column: 17, scope: !1446, inlinedAt: !1435)
!1449 = !DILocation(line: 41, column: 9, scope: !1446, inlinedAt: !1435)
!1450 = !DILocation(line: 87, column: 12, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1427, file: !1355, line: 87, column: 12)
!1452 = !DILocation(line: 87, column: 24, scope: !1451)
!1453 = !DILocation(line: 32, column: 17, scope: !1429, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 87, column: 28, scope: !1451)
!1455 = !DILocation(line: 34, column: 15, scope: !1429, inlinedAt: !1454)
!1456 = !DILocation(line: 34, column: 7, scope: !1429, inlinedAt: !1454)
!1457 = !DILocation(line: 35, column: 13, scope: !1439, inlinedAt: !1454)
!1458 = !DILocation(line: 35, column: 7, scope: !1429, inlinedAt: !1454)
!1459 = !DILocation(line: 37, column: 13, scope: !1442, inlinedAt: !1454)
!1460 = !DILocation(line: 37, column: 11, scope: !1443, inlinedAt: !1454)
!1461 = !DILocation(line: 39, column: 11, scope: !1446, inlinedAt: !1454)
!1462 = !DILocation(line: 40, column: 11, scope: !1446, inlinedAt: !1454)
!1463 = !DILocation(line: 40, column: 17, scope: !1446, inlinedAt: !1454)
!1464 = !DILocation(line: 41, column: 9, scope: !1446, inlinedAt: !1454)
!1465 = !DILocation(line: 89, column: 12, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1451, file: !1355, line: 89, column: 12)
!1467 = !DILocation(line: 89, column: 24, scope: !1466)
!1468 = !DILocation(line: 32, column: 17, scope: !1429, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 89, column: 28, scope: !1466)
!1470 = !DILocation(line: 34, column: 15, scope: !1429, inlinedAt: !1469)
!1471 = !DILocation(line: 34, column: 7, scope: !1429, inlinedAt: !1469)
!1472 = !DILocation(line: 35, column: 13, scope: !1439, inlinedAt: !1469)
!1473 = !DILocation(line: 35, column: 7, scope: !1429, inlinedAt: !1469)
!1474 = !DILocation(line: 37, column: 13, scope: !1442, inlinedAt: !1469)
!1475 = !DILocation(line: 37, column: 11, scope: !1443, inlinedAt: !1469)
!1476 = !DILocation(line: 39, column: 11, scope: !1446, inlinedAt: !1469)
!1477 = !DILocation(line: 40, column: 11, scope: !1446, inlinedAt: !1469)
!1478 = !DILocation(line: 40, column: 17, scope: !1446, inlinedAt: !1469)
!1479 = !DILocation(line: 41, column: 9, scope: !1446, inlinedAt: !1469)
!1480 = !DILocation(line: 92, column: 9, scope: !1466)
!1481 = !DILocation(line: 93, column: 17, scope: !1354)
!1482 = !DILocation(line: 65, column: 7, scope: !1354)
!1483 = !DILocation(line: 94, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1354, file: !1355, line: 94, column: 7)
!1485 = !DILocation(line: 94, column: 7, scope: !1354)
!1486 = !DILocation(line: 95, column: 5, scope: !1484)
!1487 = !DILocation(line: 96, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1354, file: !1355, line: 96, column: 7)
!1489 = !DILocation(line: 96, column: 7, scope: !1354)
!1490 = !DILocation(line: 97, column: 5, scope: !1488)
!1491 = !DILocation(line: 98, column: 7, scope: !1354)
!1492 = !DILocation(line: 99, column: 5, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1354, file: !1355, line: 98, column: 7)
!1494 = !DILocation(line: 100, column: 8, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1354, file: !1355, line: 100, column: 7)
!1496 = !DILocation(line: 100, column: 7, scope: !1354)
!1497 = !DILocation(line: 101, column: 11, scope: !1495)
!1498 = !DILocation(line: 101, column: 5, scope: !1495)
!1499 = !DILocation(line: 102, column: 3, scope: !1354)
!1500 = distinct !DISubprogram(name: "parse_long_options", scope: !106, file: !106, line: 44, type: !1501, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !103, variables: !1504)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !66, !668, !29, !29, !29, !1503, null}
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513}
!1505 = !DILocalVariable(name: "argc", arg: 1, scope: !1500, file: !106, line: 44, type: !66)
!1506 = !DILocalVariable(name: "argv", arg: 2, scope: !1500, file: !106, line: 45, type: !668)
!1507 = !DILocalVariable(name: "command_name", arg: 3, scope: !1500, file: !106, line: 46, type: !29)
!1508 = !DILocalVariable(name: "package", arg: 4, scope: !1500, file: !106, line: 47, type: !29)
!1509 = !DILocalVariable(name: "version", arg: 5, scope: !1500, file: !106, line: 48, type: !29)
!1510 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1500, file: !106, line: 49, type: !1503)
!1511 = !DILocalVariable(name: "c", scope: !1500, file: !106, line: 52, type: !66)
!1512 = !DILocalVariable(name: "saved_opterr", scope: !1500, file: !106, line: 53, type: !66)
!1513 = !DILocalVariable(name: "authors", scope: !1514, file: !106, line: 71, type: !1518)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !106, line: 70, column: 11)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !106, line: 64, column: 9)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !106, line: 62, column: 5)
!1517 = distinct !DILexicalBlock(scope: !1500, file: !106, line: 60, column: 7)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1264, line: 46, baseType: !1519)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1520, line: 48, baseType: !1521)
!1520 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !104, line: 71, baseType: !1522)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1523, size: 192, elements: !1320)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !104, line: 71, size: 192, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1523, file: !104, line: 71, baseType: !170, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1523, file: !104, line: 71, baseType: !170, size: 32, offset: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1523, file: !104, line: 71, baseType: !32, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1523, file: !104, line: 71, baseType: !32, size: 64, offset: 128)
!1529 = !DILocation(line: 44, column: 25, scope: !1500)
!1530 = !DILocation(line: 45, column: 28, scope: !1500)
!1531 = !DILocation(line: 46, column: 33, scope: !1500)
!1532 = !DILocation(line: 47, column: 33, scope: !1500)
!1533 = !DILocation(line: 48, column: 33, scope: !1500)
!1534 = !DILocation(line: 49, column: 28, scope: !1500)
!1535 = !DILocation(line: 55, column: 18, scope: !1500)
!1536 = !DILocation(line: 53, column: 7, scope: !1500)
!1537 = !DILocation(line: 58, column: 10, scope: !1500)
!1538 = !DILocation(line: 60, column: 12, scope: !1517)
!1539 = !DILocation(line: 61, column: 7, scope: !1517)
!1540 = !DILocation(line: 61, column: 15, scope: !1517)
!1541 = !DILocation(line: 52, column: 7, scope: !1500)
!1542 = !DILocation(line: 60, column: 7, scope: !1500)
!1543 = !DILocation(line: 66, column: 11, scope: !1515)
!1544 = !DILocation(line: 67, column: 11, scope: !1515)
!1545 = !DILocation(line: 71, column: 13, scope: !1514)
!1546 = !DILocation(line: 71, column: 21, scope: !1514)
!1547 = !DILocation(line: 72, column: 13, scope: !1514)
!1548 = !DILocation(line: 73, column: 29, scope: !1514)
!1549 = !DILocation(line: 73, column: 13, scope: !1514)
!1550 = !DILocation(line: 74, column: 13, scope: !1514)
!1551 = !DILocation(line: 84, column: 10, scope: !1500)
!1552 = !DILocation(line: 88, column: 10, scope: !1500)
!1553 = !DILocation(line: 89, column: 1, scope: !1500)
!1554 = distinct !DISubprogram(name: "set_program_name", scope: !126, file: !126, line: 39, type: !41, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1555)
!1555 = !{!1556, !1557, !1558}
!1556 = !DILocalVariable(name: "argv0", arg: 1, scope: !1554, file: !126, line: 39, type: !29)
!1557 = !DILocalVariable(name: "slash", scope: !1554, file: !126, line: 46, type: !29)
!1558 = !DILocalVariable(name: "base", scope: !1554, file: !126, line: 47, type: !29)
!1559 = !DILocation(line: 39, column: 31, scope: !1554)
!1560 = !DILocation(line: 51, column: 13, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1554, file: !126, line: 51, column: 7)
!1562 = !DILocation(line: 51, column: 7, scope: !1554)
!1563 = !DILocation(line: 55, column: 14, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1561, file: !126, line: 52, column: 5)
!1565 = !DILocation(line: 54, column: 7, scope: !1564)
!1566 = !DILocation(line: 56, column: 7, scope: !1564)
!1567 = !DILocation(line: 59, column: 11, scope: !1554)
!1568 = !DILocation(line: 46, column: 15, scope: !1554)
!1569 = !DILocation(line: 60, column: 17, scope: !1554)
!1570 = !DILocation(line: 60, column: 33, scope: !1554)
!1571 = !DILocation(line: 60, column: 11, scope: !1554)
!1572 = !DILocation(line: 47, column: 15, scope: !1554)
!1573 = !DILocation(line: 61, column: 12, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1554, file: !126, line: 61, column: 7)
!1575 = !DILocation(line: 61, column: 20, scope: !1574)
!1576 = !DILocation(line: 61, column: 25, scope: !1574)
!1577 = !DILocation(line: 61, column: 42, scope: !1574)
!1578 = !DILocation(line: 61, column: 28, scope: !1574)
!1579 = !DILocation(line: 61, column: 61, scope: !1574)
!1580 = !DILocation(line: 61, column: 7, scope: !1554)
!1581 = !DILocation(line: 64, column: 11, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !126, line: 64, column: 11)
!1583 = distinct !DILexicalBlock(scope: !1574, file: !126, line: 62, column: 5)
!1584 = !DILocation(line: 64, column: 36, scope: !1582)
!1585 = !DILocation(line: 64, column: 11, scope: !1583)
!1586 = !DILocation(line: 66, column: 24, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1582, file: !126, line: 65, column: 9)
!1588 = !DILocation(line: 70, column: 41, scope: !1587)
!1589 = !DILocation(line: 72, column: 9, scope: !1587)
!1590 = !DILocation(line: 84, column: 16, scope: !1554)
!1591 = !DILocation(line: 90, column: 27, scope: !1554)
!1592 = !DILocation(line: 92, column: 1, scope: !1554)
!1593 = distinct !DISubprogram(name: "clone_quoting_options", scope: !157, file: !157, line: 114, type: !1594, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1597)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1596, !1596}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1597 = !{!1598, !1599, !1600}
!1598 = !DILocalVariable(name: "o", arg: 1, scope: !1593, file: !157, line: 114, type: !1596)
!1599 = !DILocalVariable(name: "e", scope: !1593, file: !157, line: 116, type: !66)
!1600 = !DILocalVariable(name: "p", scope: !1593, file: !157, line: 117, type: !1596)
!1601 = !DILocation(line: 114, column: 48, scope: !1593)
!1602 = !DILocation(line: 116, column: 11, scope: !1593)
!1603 = !DILocation(line: 116, column: 7, scope: !1593)
!1604 = !DILocation(line: 117, column: 40, scope: !1593)
!1605 = !DILocation(line: 117, column: 31, scope: !1593)
!1606 = !DILocation(line: 117, column: 27, scope: !1593)
!1607 = !DILocation(line: 119, column: 9, scope: !1593)
!1608 = !DILocation(line: 120, column: 3, scope: !1593)
!1609 = distinct !DISubprogram(name: "get_quoting_style", scope: !157, file: !157, line: 125, type: !1610, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1614)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!5, !1612}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1614 = !{!1615}
!1615 = !DILocalVariable(name: "o", arg: 1, scope: !1609, file: !157, line: 125, type: !1612)
!1616 = !DILocation(line: 125, column: 50, scope: !1609)
!1617 = !DILocation(line: 127, column: 11, scope: !1609)
!1618 = !DILocation(line: 127, column: 46, scope: !1609)
!1619 = !{!1620, !637, i64 0}
!1620 = !{!"quoting_options", !637, i64 0, !691, i64 4, !637, i64 8, !636, i64 40, !636, i64 48}
!1621 = !DILocation(line: 127, column: 3, scope: !1609)
!1622 = distinct !DISubprogram(name: "set_quoting_style", scope: !157, file: !157, line: 133, type: !1623, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1625)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !1596, !5}
!1625 = !{!1626, !1627}
!1626 = !DILocalVariable(name: "o", arg: 1, scope: !1622, file: !157, line: 133, type: !1596)
!1627 = !DILocalVariable(name: "s", arg: 2, scope: !1622, file: !157, line: 133, type: !5)
!1628 = !DILocation(line: 133, column: 44, scope: !1622)
!1629 = !DILocation(line: 133, column: 66, scope: !1622)
!1630 = !DILocation(line: 135, column: 4, scope: !1622)
!1631 = !DILocation(line: 135, column: 39, scope: !1622)
!1632 = !DILocation(line: 135, column: 45, scope: !1622)
!1633 = !DILocation(line: 136, column: 1, scope: !1622)
!1634 = distinct !DISubprogram(name: "set_char_quoting", scope: !157, file: !157, line: 144, type: !1635, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1637)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!66, !1596, !31, !66}
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1644, !1645}
!1638 = !DILocalVariable(name: "o", arg: 1, scope: !1634, file: !157, line: 144, type: !1596)
!1639 = !DILocalVariable(name: "c", arg: 2, scope: !1634, file: !157, line: 144, type: !31)
!1640 = !DILocalVariable(name: "i", arg: 3, scope: !1634, file: !157, line: 144, type: !66)
!1641 = !DILocalVariable(name: "uc", scope: !1634, file: !157, line: 146, type: !551)
!1642 = !DILocalVariable(name: "p", scope: !1634, file: !157, line: 147, type: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!1644 = !DILocalVariable(name: "shift", scope: !1634, file: !157, line: 149, type: !66)
!1645 = !DILocalVariable(name: "r", scope: !1634, file: !157, line: 150, type: !66)
!1646 = !DILocation(line: 144, column: 43, scope: !1634)
!1647 = !DILocation(line: 144, column: 51, scope: !1634)
!1648 = !DILocation(line: 144, column: 58, scope: !1634)
!1649 = !DILocation(line: 146, column: 17, scope: !1634)
!1650 = !DILocation(line: 148, column: 6, scope: !1634)
!1651 = !DILocation(line: 148, column: 62, scope: !1634)
!1652 = !DILocation(line: 148, column: 57, scope: !1634)
!1653 = !DILocation(line: 147, column: 17, scope: !1634)
!1654 = !DILocation(line: 149, column: 18, scope: !1634)
!1655 = !DILocation(line: 149, column: 15, scope: !1634)
!1656 = !DILocation(line: 149, column: 7, scope: !1634)
!1657 = !DILocation(line: 150, column: 12, scope: !1634)
!1658 = !DILocation(line: 150, column: 15, scope: !1634)
!1659 = !DILocation(line: 150, column: 25, scope: !1634)
!1660 = !DILocation(line: 150, column: 7, scope: !1634)
!1661 = !DILocation(line: 151, column: 13, scope: !1634)
!1662 = !DILocation(line: 151, column: 18, scope: !1634)
!1663 = !DILocation(line: 151, column: 23, scope: !1634)
!1664 = !DILocation(line: 151, column: 6, scope: !1634)
!1665 = !DILocation(line: 152, column: 3, scope: !1634)
!1666 = distinct !DISubprogram(name: "set_quoting_flags", scope: !157, file: !157, line: 160, type: !1667, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!66, !1596, !66}
!1669 = !{!1670, !1671, !1672}
!1670 = !DILocalVariable(name: "o", arg: 1, scope: !1666, file: !157, line: 160, type: !1596)
!1671 = !DILocalVariable(name: "i", arg: 2, scope: !1666, file: !157, line: 160, type: !66)
!1672 = !DILocalVariable(name: "r", scope: !1666, file: !157, line: 162, type: !66)
!1673 = !DILocation(line: 160, column: 44, scope: !1666)
!1674 = !DILocation(line: 160, column: 51, scope: !1666)
!1675 = !DILocation(line: 163, column: 8, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1666, file: !157, line: 163, column: 7)
!1677 = !DILocation(line: 163, column: 7, scope: !1666)
!1678 = !DILocation(line: 165, column: 10, scope: !1666)
!1679 = !{!1620, !691, i64 4}
!1680 = !DILocation(line: 162, column: 7, scope: !1666)
!1681 = !DILocation(line: 166, column: 12, scope: !1666)
!1682 = !DILocation(line: 167, column: 3, scope: !1666)
!1683 = distinct !DISubprogram(name: "set_custom_quoting", scope: !157, file: !157, line: 171, type: !1684, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !1596, !29, !29}
!1686 = !{!1687, !1688, !1689}
!1687 = !DILocalVariable(name: "o", arg: 1, scope: !1683, file: !157, line: 171, type: !1596)
!1688 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1683, file: !157, line: 172, type: !29)
!1689 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1683, file: !157, line: 172, type: !29)
!1690 = !DILocation(line: 171, column: 45, scope: !1683)
!1691 = !DILocation(line: 172, column: 33, scope: !1683)
!1692 = !DILocation(line: 172, column: 57, scope: !1683)
!1693 = !DILocation(line: 174, column: 8, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1683, file: !157, line: 174, column: 7)
!1695 = !DILocation(line: 174, column: 7, scope: !1683)
!1696 = !DILocation(line: 176, column: 6, scope: !1683)
!1697 = !DILocation(line: 176, column: 12, scope: !1683)
!1698 = !DILocation(line: 177, column: 8, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1683, file: !157, line: 177, column: 7)
!1700 = !DILocation(line: 177, column: 23, scope: !1699)
!1701 = !DILocation(line: 177, column: 19, scope: !1699)
!1702 = !DILocation(line: 178, column: 5, scope: !1699)
!1703 = !DILocation(line: 179, column: 6, scope: !1683)
!1704 = !DILocation(line: 179, column: 17, scope: !1683)
!1705 = !{!1620, !636, i64 40}
!1706 = !DILocation(line: 180, column: 6, scope: !1683)
!1707 = !DILocation(line: 180, column: 18, scope: !1683)
!1708 = !{!1620, !636, i64 48}
!1709 = !DILocation(line: 181, column: 1, scope: !1683)
!1710 = distinct !DISubprogram(name: "quotearg_buffer", scope: !157, file: !157, line: 776, type: !1711, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1713)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!33, !124, !33, !29, !33, !1612}
!1713 = !{!1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721}
!1714 = !DILocalVariable(name: "buffer", arg: 1, scope: !1710, file: !157, line: 776, type: !124)
!1715 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1710, file: !157, line: 776, type: !33)
!1716 = !DILocalVariable(name: "arg", arg: 3, scope: !1710, file: !157, line: 777, type: !29)
!1717 = !DILocalVariable(name: "argsize", arg: 4, scope: !1710, file: !157, line: 777, type: !33)
!1718 = !DILocalVariable(name: "o", arg: 5, scope: !1710, file: !157, line: 778, type: !1612)
!1719 = !DILocalVariable(name: "p", scope: !1710, file: !157, line: 780, type: !1612)
!1720 = !DILocalVariable(name: "e", scope: !1710, file: !157, line: 781, type: !66)
!1721 = !DILocalVariable(name: "r", scope: !1710, file: !157, line: 782, type: !33)
!1722 = !DILocation(line: 776, column: 24, scope: !1710)
!1723 = !DILocation(line: 776, column: 39, scope: !1710)
!1724 = !DILocation(line: 777, column: 30, scope: !1710)
!1725 = !DILocation(line: 777, column: 42, scope: !1710)
!1726 = !DILocation(line: 778, column: 48, scope: !1710)
!1727 = !DILocation(line: 780, column: 37, scope: !1710)
!1728 = !DILocation(line: 780, column: 33, scope: !1710)
!1729 = !DILocation(line: 781, column: 11, scope: !1710)
!1730 = !DILocation(line: 781, column: 7, scope: !1710)
!1731 = !DILocation(line: 783, column: 43, scope: !1710)
!1732 = !DILocation(line: 783, column: 53, scope: !1710)
!1733 = !DILocation(line: 783, column: 60, scope: !1710)
!1734 = !DILocation(line: 784, column: 43, scope: !1710)
!1735 = !DILocation(line: 784, column: 58, scope: !1710)
!1736 = !DILocation(line: 782, column: 14, scope: !1710)
!1737 = !DILocation(line: 782, column: 10, scope: !1710)
!1738 = !DILocation(line: 785, column: 9, scope: !1710)
!1739 = !DILocation(line: 786, column: 3, scope: !1710)
!1740 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !157, file: !157, line: 248, type: !1741, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1745)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!33, !124, !33, !29, !33, !5, !66, !1743, !29, !29}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1770, !1771, !1772, !1773, !1774, !1777, !1778, !1796, !1799, !1800, !1807}
!1746 = !DILocalVariable(name: "buffer", arg: 1, scope: !1740, file: !157, line: 248, type: !124)
!1747 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1740, file: !157, line: 248, type: !33)
!1748 = !DILocalVariable(name: "arg", arg: 3, scope: !1740, file: !157, line: 249, type: !29)
!1749 = !DILocalVariable(name: "argsize", arg: 4, scope: !1740, file: !157, line: 249, type: !33)
!1750 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1740, file: !157, line: 250, type: !5)
!1751 = !DILocalVariable(name: "flags", arg: 6, scope: !1740, file: !157, line: 250, type: !66)
!1752 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1740, file: !157, line: 251, type: !1743)
!1753 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1740, file: !157, line: 252, type: !29)
!1754 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1740, file: !157, line: 253, type: !29)
!1755 = !DILocalVariable(name: "i", scope: !1740, file: !157, line: 255, type: !33)
!1756 = !DILocalVariable(name: "len", scope: !1740, file: !157, line: 256, type: !33)
!1757 = !DILocalVariable(name: "orig_buffersize", scope: !1740, file: !157, line: 257, type: !33)
!1758 = !DILocalVariable(name: "quote_string", scope: !1740, file: !157, line: 258, type: !29)
!1759 = !DILocalVariable(name: "quote_string_len", scope: !1740, file: !157, line: 259, type: !33)
!1760 = !DILocalVariable(name: "backslash_escapes", scope: !1740, file: !157, line: 260, type: !93)
!1761 = !DILocalVariable(name: "unibyte_locale", scope: !1740, file: !157, line: 261, type: !93)
!1762 = !DILocalVariable(name: "elide_outer_quotes", scope: !1740, file: !157, line: 262, type: !93)
!1763 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1740, file: !157, line: 263, type: !93)
!1764 = !DILocalVariable(name: "encountered_single_quote", scope: !1740, file: !157, line: 264, type: !93)
!1765 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1740, file: !157, line: 265, type: !93)
!1766 = !DILocalVariable(name: "c", scope: !1767, file: !157, line: 394, type: !551)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !157, line: 393, column: 5)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !157, line: 392, column: 3)
!1769 = distinct !DILexicalBlock(scope: !1740, file: !157, line: 392, column: 3)
!1770 = !DILocalVariable(name: "esc", scope: !1767, file: !157, line: 395, type: !551)
!1771 = !DILocalVariable(name: "is_right_quote", scope: !1767, file: !157, line: 396, type: !93)
!1772 = !DILocalVariable(name: "escaping", scope: !1767, file: !157, line: 397, type: !93)
!1773 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1767, file: !157, line: 398, type: !93)
!1774 = !DILocalVariable(name: "m", scope: !1775, file: !157, line: 602, type: !33)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !157, line: 600, column: 11)
!1776 = distinct !DILexicalBlock(scope: !1767, file: !157, line: 418, column: 9)
!1777 = !DILocalVariable(name: "printable", scope: !1775, file: !157, line: 604, type: !93)
!1778 = !DILocalVariable(name: "mbstate", scope: !1779, file: !157, line: 613, type: !1781)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !157, line: 612, column: 15)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !157, line: 606, column: 17)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1782, line: 6, baseType: !1783)
!1782 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1784, line: 21, baseType: !1785)
!1784 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1784, line: 13, size: 64, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1785, file: !1784, line: 15, baseType: !66, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1785, file: !1784, line: 20, baseType: !1789, size: 32, offset: 32)
!1789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1785, file: !1784, line: 16, size: 32, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1789, file: !1784, line: 18, baseType: !170, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1789, file: !1784, line: 19, baseType: !1793, size: 32)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !1794)
!1794 = !{!1795}
!1795 = !DISubrange(count: 4)
!1796 = !DILocalVariable(name: "w", scope: !1797, file: !157, line: 623, type: !1798)
!1797 = distinct !DILexicalBlock(scope: !1779, file: !157, line: 622, column: 19)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !34, line: 90, baseType: !66)
!1799 = !DILocalVariable(name: "bytes", scope: !1797, file: !157, line: 624, type: !33)
!1800 = !DILocalVariable(name: "j", scope: !1801, file: !157, line: 649, type: !33)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !157, line: 648, column: 27)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !157, line: 646, column: 29)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !157, line: 641, column: 23)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !157, line: 633, column: 30)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !157, line: 628, column: 30)
!1806 = distinct !DILexicalBlock(scope: !1797, file: !157, line: 626, column: 25)
!1807 = !DILocalVariable(name: "ilim", scope: !1808, file: !157, line: 676, type: !33)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !157, line: 673, column: 15)
!1809 = distinct !DILexicalBlock(scope: !1775, file: !157, line: 672, column: 17)
!1810 = !DILocation(line: 248, column: 33, scope: !1740)
!1811 = !DILocation(line: 248, column: 48, scope: !1740)
!1812 = !DILocation(line: 249, column: 39, scope: !1740)
!1813 = !DILocation(line: 249, column: 51, scope: !1740)
!1814 = !DILocation(line: 250, column: 46, scope: !1740)
!1815 = !DILocation(line: 250, column: 65, scope: !1740)
!1816 = !DILocation(line: 251, column: 47, scope: !1740)
!1817 = !DILocation(line: 252, column: 39, scope: !1740)
!1818 = !DILocation(line: 253, column: 39, scope: !1740)
!1819 = !DILocation(line: 256, column: 10, scope: !1740)
!1820 = !DILocation(line: 257, column: 10, scope: !1740)
!1821 = !DILocation(line: 258, column: 15, scope: !1740)
!1822 = !DILocation(line: 259, column: 10, scope: !1740)
!1823 = !DILocation(line: 260, column: 8, scope: !1740)
!1824 = !DILocation(line: 261, column: 25, scope: !1740)
!1825 = !DILocation(line: 261, column: 36, scope: !1740)
!1826 = !DILocation(line: 262, column: 8, scope: !1740)
!1827 = !DILocation(line: 263, column: 8, scope: !1740)
!1828 = !DILocation(line: 264, column: 8, scope: !1740)
!1829 = !DILocation(line: 265, column: 8, scope: !1740)
!1830 = !DILocation(line: 265, column: 3, scope: !1740)
!1831 = !DILocation(line: 308, column: 3, scope: !1740)
!1832 = !DILocation(line: 315, column: 11, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1740, file: !157, line: 309, column: 5)
!1834 = !DILocation(line: 315, column: 12, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1833, file: !157, line: 315, column: 11)
!1836 = !DILocation(line: 316, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !157, line: 316, column: 9)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !157, line: 316, column: 9)
!1839 = !DILocation(line: 316, column: 9, scope: !1838)
!1840 = !{!637, !637, i64 0}
!1841 = !DILocation(line: 354, column: 26, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !157, line: 332, column: 11)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !157, line: 331, column: 13)
!1844 = distinct !DILexicalBlock(scope: !1833, file: !157, line: 330, column: 7)
!1845 = !DILocation(line: 355, column: 27, scope: !1842)
!1846 = !DILocation(line: 356, column: 11, scope: !1842)
!1847 = !DILocation(line: 357, column: 14, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !157, line: 357, column: 13)
!1849 = !DILocation(line: 357, column: 13, scope: !1844)
!1850 = !DILocation(line: 358, column: 43, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !157, line: 358, column: 11)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !157, line: 358, column: 11)
!1853 = !DILocation(line: 358, column: 11, scope: !1852)
!1854 = !DILocation(line: 359, column: 13, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !157, line: 359, column: 13)
!1856 = distinct !DILexicalBlock(scope: !1851, file: !157, line: 359, column: 13)
!1857 = !DILocation(line: 359, column: 13, scope: !1856)
!1858 = !DILocation(line: 358, column: 70, scope: !1851)
!1859 = distinct !{!1859, !1853, !1860}
!1860 = !DILocation(line: 359, column: 13, scope: !1852)
!1861 = !DILocation(line: 362, column: 28, scope: !1844)
!1862 = !DILocation(line: 364, column: 7, scope: !1833)
!1863 = !DILocation(line: 367, column: 7, scope: !1833)
!1864 = !DILocation(line: 370, column: 7, scope: !1833)
!1865 = !DILocation(line: 373, column: 12, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1833, file: !157, line: 373, column: 11)
!1867 = !DILocation(line: 373, column: 11, scope: !1833)
!1868 = !DILocation(line: 378, column: 12, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1833, file: !157, line: 378, column: 11)
!1870 = !DILocation(line: 378, column: 11, scope: !1833)
!1871 = !DILocation(line: 379, column: 9, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !157, line: 379, column: 9)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !157, line: 379, column: 9)
!1874 = !DILocation(line: 379, column: 9, scope: !1873)
!1875 = !DILocation(line: 386, column: 7, scope: !1833)
!1876 = !DILocation(line: 389, column: 7, scope: !1833)
!1877 = !DILocation(line: 255, column: 10, scope: !1740)
!1878 = !DILocation(line: 392, column: 8, scope: !1769)
!1879 = !DILocation(line: 392, column: 27, scope: !1768)
!1880 = !DILocation(line: 392, column: 19, scope: !1768)
!1881 = !DILocation(line: 392, column: 60, scope: !1768)
!1882 = !DILocation(line: 392, column: 3, scope: !1769)
!1883 = !DILocation(line: 392, column: 41, scope: !1768)
!1884 = !DILocation(line: 392, column: 48, scope: !1768)
!1885 = !DILocation(line: 396, column: 12, scope: !1767)
!1886 = !DILocation(line: 397, column: 12, scope: !1767)
!1887 = !DILocation(line: 398, column: 12, scope: !1767)
!1888 = !DILocation(line: 401, column: 11, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1767, file: !157, line: 400, column: 11)
!1890 = !DILocation(line: 403, column: 17, scope: !1889)
!1891 = !DILocation(line: 404, column: 39, scope: !1889)
!1892 = !DILocation(line: 408, column: 32, scope: !1889)
!1893 = !DILocation(line: 404, column: 19, scope: !1889)
!1894 = !DILocation(line: 404, column: 15, scope: !1889)
!1895 = !DILocation(line: 409, column: 11, scope: !1889)
!1896 = !DILocation(line: 409, column: 26, scope: !1889)
!1897 = !DILocation(line: 409, column: 14, scope: !1889)
!1898 = !DILocation(line: 409, column: 63, scope: !1889)
!1899 = !DILocation(line: 400, column: 11, scope: !1767)
!1900 = !DILocation(line: 416, column: 11, scope: !1767)
!1901 = !DILocation(line: 394, column: 21, scope: !1767)
!1902 = !DILocation(line: 417, column: 7, scope: !1767)
!1903 = !DILocation(line: 420, column: 15, scope: !1776)
!1904 = !DILocation(line: 422, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !157, line: 422, column: 15)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !157, line: 421, column: 13)
!1907 = distinct !DILexicalBlock(scope: !1776, file: !157, line: 420, column: 15)
!1908 = !DILocation(line: 422, column: 15, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1905, file: !157, line: 422, column: 15)
!1910 = !DILocation(line: 422, column: 15, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !157, line: 422, column: 15)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !157, line: 422, column: 15)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !157, line: 422, column: 15)
!1914 = !DILocation(line: 422, column: 15, scope: !1912)
!1915 = !DILocation(line: 422, column: 15, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !157, line: 422, column: 15)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !157, line: 422, column: 15)
!1918 = !DILocation(line: 422, column: 15, scope: !1917)
!1919 = !DILocation(line: 422, column: 15, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !157, line: 422, column: 15)
!1921 = distinct !DILexicalBlock(scope: !1913, file: !157, line: 422, column: 15)
!1922 = !DILocation(line: 422, column: 15, scope: !1921)
!1923 = !DILocation(line: 422, column: 15, scope: !1913)
!1924 = !DILocation(line: 422, column: 15, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !157, line: 422, column: 15)
!1926 = distinct !DILexicalBlock(scope: !1905, file: !157, line: 422, column: 15)
!1927 = !DILocation(line: 422, column: 15, scope: !1926)
!1928 = !DILocation(line: 430, column: 19, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1906, file: !157, line: 429, column: 19)
!1930 = !DILocation(line: 430, column: 24, scope: !1929)
!1931 = !DILocation(line: 430, column: 28, scope: !1929)
!1932 = !DILocation(line: 430, column: 38, scope: !1929)
!1933 = !DILocation(line: 430, column: 48, scope: !1929)
!1934 = !DILocation(line: 430, column: 59, scope: !1929)
!1935 = !DILocation(line: 432, column: 19, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !157, line: 432, column: 19)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !157, line: 432, column: 19)
!1938 = distinct !DILexicalBlock(scope: !1929, file: !157, line: 431, column: 17)
!1939 = !DILocation(line: 432, column: 19, scope: !1937)
!1940 = !DILocation(line: 433, column: 19, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !157, line: 433, column: 19)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !157, line: 433, column: 19)
!1943 = !DILocation(line: 433, column: 19, scope: !1942)
!1944 = !DILocation(line: 434, column: 17, scope: !1938)
!1945 = !DILocation(line: 441, column: 20, scope: !1907)
!1946 = !DILocation(line: 446, column: 11, scope: !1776)
!1947 = !DILocation(line: 449, column: 19, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1776, file: !157, line: 447, column: 13)
!1949 = !DILocation(line: 455, column: 19, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1948, file: !157, line: 454, column: 19)
!1951 = !DILocation(line: 455, column: 24, scope: !1950)
!1952 = !DILocation(line: 455, column: 28, scope: !1950)
!1953 = !DILocation(line: 455, column: 38, scope: !1950)
!1954 = !DILocation(line: 455, column: 47, scope: !1950)
!1955 = !DILocation(line: 455, column: 41, scope: !1950)
!1956 = !DILocation(line: 455, column: 52, scope: !1950)
!1957 = !DILocation(line: 454, column: 19, scope: !1948)
!1958 = !DILocation(line: 456, column: 25, scope: !1950)
!1959 = !DILocation(line: 456, column: 17, scope: !1950)
!1960 = !DILocation(line: 463, column: 25, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1950, file: !157, line: 457, column: 19)
!1962 = !DILocation(line: 467, column: 21, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !157, line: 467, column: 21)
!1964 = distinct !DILexicalBlock(scope: !1961, file: !157, line: 467, column: 21)
!1965 = !DILocation(line: 467, column: 21, scope: !1964)
!1966 = !DILocation(line: 468, column: 21, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !157, line: 468, column: 21)
!1968 = distinct !DILexicalBlock(scope: !1961, file: !157, line: 468, column: 21)
!1969 = !DILocation(line: 468, column: 21, scope: !1968)
!1970 = !DILocation(line: 469, column: 21, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !157, line: 469, column: 21)
!1972 = distinct !DILexicalBlock(scope: !1961, file: !157, line: 469, column: 21)
!1973 = !DILocation(line: 469, column: 21, scope: !1972)
!1974 = !DILocation(line: 470, column: 21, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !157, line: 470, column: 21)
!1976 = distinct !DILexicalBlock(scope: !1961, file: !157, line: 470, column: 21)
!1977 = !DILocation(line: 470, column: 21, scope: !1976)
!1978 = !DILocation(line: 471, column: 21, scope: !1961)
!1979 = !DILocation(line: 395, column: 21, scope: !1767)
!1980 = !DILocation(line: 484, column: 31, scope: !1776)
!1981 = !DILocation(line: 485, column: 31, scope: !1776)
!1982 = !DILocation(line: 487, column: 31, scope: !1776)
!1983 = !DILocation(line: 488, column: 31, scope: !1776)
!1984 = !DILocation(line: 489, column: 31, scope: !1776)
!1985 = !DILocation(line: 492, column: 15, scope: !1776)
!1986 = !DILocation(line: 494, column: 19, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !157, line: 493, column: 13)
!1988 = distinct !DILexicalBlock(scope: !1776, file: !157, line: 492, column: 15)
!1989 = !DILocation(line: 501, column: 33, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1776, file: !157, line: 501, column: 15)
!1991 = !DILocation(line: 506, column: 15, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1776, file: !157, line: 505, column: 15)
!1993 = !DILocation(line: 510, column: 15, scope: !1776)
!1994 = !DILocation(line: 518, column: 26, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1776, file: !157, line: 518, column: 15)
!1996 = !DILocation(line: 518, column: 15, scope: !1776)
!1997 = !DILocation(line: 518, column: 40, scope: !1995)
!1998 = !DILocation(line: 518, column: 47, scope: !1995)
!1999 = !DILocation(line: 522, column: 17, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1776, file: !157, line: 522, column: 15)
!2001 = !DILocation(line: 518, column: 18, scope: !1995)
!2002 = !DILocation(line: 518, column: 65, scope: !1995)
!2003 = !DILocation(line: 522, column: 15, scope: !1776)
!2004 = !DILocation(line: 526, column: 11, scope: !1776)
!2005 = !DILocation(line: 541, column: 15, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1776, file: !157, line: 540, column: 15)
!2007 = !DILocation(line: 548, column: 15, scope: !1776)
!2008 = !DILocation(line: 550, column: 19, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !157, line: 549, column: 13)
!2010 = distinct !DILexicalBlock(scope: !1776, file: !157, line: 548, column: 15)
!2011 = !DILocation(line: 553, column: 19, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2009, file: !157, line: 553, column: 19)
!2013 = !DILocation(line: 553, column: 35, scope: !2012)
!2014 = !DILocation(line: 553, column: 30, scope: !2012)
!2015 = !DILocation(line: 562, column: 15, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !157, line: 562, column: 15)
!2017 = distinct !DILexicalBlock(scope: !2009, file: !157, line: 562, column: 15)
!2018 = !DILocation(line: 562, column: 15, scope: !2017)
!2019 = !DILocation(line: 563, column: 15, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !157, line: 563, column: 15)
!2021 = distinct !DILexicalBlock(scope: !2009, file: !157, line: 563, column: 15)
!2022 = !DILocation(line: 563, column: 15, scope: !2021)
!2023 = !DILocation(line: 564, column: 15, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !157, line: 564, column: 15)
!2025 = distinct !DILexicalBlock(scope: !2009, file: !157, line: 564, column: 15)
!2026 = !DILocation(line: 564, column: 15, scope: !2025)
!2027 = !DILocation(line: 566, column: 13, scope: !2009)
!2028 = !DILocation(line: 606, column: 17, scope: !1775)
!2029 = !DILocation(line: 602, column: 20, scope: !1775)
!2030 = !DILocation(line: 609, column: 29, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1780, file: !157, line: 607, column: 15)
!2032 = !{!2033, !2033, i64 0}
!2033 = !{!"short", !637, i64 0}
!2034 = !DILocation(line: 609, column: 27, scope: !2031)
!2035 = !DILocation(line: 604, column: 18, scope: !1775)
!2036 = !DILocation(line: 610, column: 15, scope: !2031)
!2037 = !DILocation(line: 613, column: 17, scope: !1779)
!2038 = !DILocation(line: 614, column: 17, scope: !1779)
!2039 = !DILocation(line: 618, column: 29, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1779, file: !157, line: 618, column: 21)
!2041 = !DILocation(line: 618, column: 21, scope: !1779)
!2042 = !DILocation(line: 619, column: 29, scope: !2040)
!2043 = !DILocation(line: 619, column: 19, scope: !2040)
!2044 = !DILocation(line: 621, column: 17, scope: !1779)
!2045 = distinct !{!2045, !2044, !2046}
!2046 = !DILocation(line: 667, column: 44, scope: !1779)
!2047 = !DILocation(line: 623, column: 21, scope: !1797)
!2048 = !DILocation(line: 624, column: 56, scope: !1797)
!2049 = !DILocation(line: 624, column: 50, scope: !1797)
!2050 = !DILocation(line: 625, column: 53, scope: !1797)
!2051 = !DILocation(line: 613, column: 27, scope: !1779)
!2052 = !DILocation(line: 623, column: 29, scope: !1797)
!2053 = !DILocation(line: 624, column: 36, scope: !1797)
!2054 = !DILocation(line: 624, column: 28, scope: !1797)
!2055 = !DILocation(line: 626, column: 25, scope: !1797)
!2056 = !DILocation(line: 636, column: 38, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1804, file: !157, line: 634, column: 23)
!2058 = !DILocation(line: 636, column: 48, scope: !2057)
!2059 = !DILocation(line: 636, column: 51, scope: !2057)
!2060 = !DILocation(line: 636, column: 25, scope: !2057)
!2061 = !DILocation(line: 637, column: 28, scope: !2057)
!2062 = !DILocation(line: 636, column: 34, scope: !2057)
!2063 = distinct !{!2063, !2060, !2061}
!2064 = !DILocation(line: 650, column: 43, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !157, line: 650, column: 29)
!2066 = distinct !DILexicalBlock(scope: !1801, file: !157, line: 650, column: 29)
!2067 = !DILocation(line: 647, column: 29, scope: !1802)
!2068 = !DILocation(line: 649, column: 36, scope: !1801)
!2069 = !DILocation(line: 651, column: 49, scope: !2065)
!2070 = !DILocation(line: 651, column: 39, scope: !2065)
!2071 = !DILocation(line: 651, column: 31, scope: !2065)
!2072 = !DILocation(line: 650, column: 53, scope: !2065)
!2073 = !DILocation(line: 650, column: 29, scope: !2066)
!2074 = distinct !{!2074, !2073, !2075}
!2075 = !DILocation(line: 659, column: 33, scope: !2066)
!2076 = !DILocation(line: 666, column: 19, scope: !1779)
!2077 = !DILocation(line: 662, column: 41, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1803, file: !157, line: 662, column: 29)
!2079 = !DILocation(line: 662, column: 31, scope: !2078)
!2080 = !DILocation(line: 662, column: 29, scope: !1803)
!2081 = !DILocation(line: 664, column: 27, scope: !1803)
!2082 = !DILocation(line: 667, column: 26, scope: !1779)
!2083 = !DILocation(line: 667, column: 24, scope: !1779)
!2084 = !DILocation(line: 666, column: 19, scope: !1797)
!2085 = !DILocation(line: 668, column: 15, scope: !1780)
!2086 = !DILocation(line: 670, column: 40, scope: !1775)
!2087 = !DILocation(line: 672, column: 19, scope: !1809)
!2088 = !DILocation(line: 672, column: 45, scope: !1809)
!2089 = !DILocation(line: 672, column: 23, scope: !1809)
!2090 = !DILocation(line: 676, column: 33, scope: !1808)
!2091 = !DILocation(line: 676, column: 24, scope: !1808)
!2092 = !DILocation(line: 678, column: 17, scope: !1808)
!2093 = !DILocation(line: 680, column: 43, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !157, line: 680, column: 25)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !157, line: 679, column: 19)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !157, line: 678, column: 17)
!2097 = distinct !DILexicalBlock(scope: !1808, file: !157, line: 678, column: 17)
!2098 = !DILocation(line: 682, column: 25, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !157, line: 682, column: 25)
!2100 = distinct !DILexicalBlock(scope: !2094, file: !157, line: 681, column: 23)
!2101 = !DILocation(line: 682, column: 25, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !157, line: 682, column: 25)
!2103 = !DILocation(line: 682, column: 25, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !157, line: 682, column: 25)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !157, line: 682, column: 25)
!2106 = distinct !DILexicalBlock(scope: !2102, file: !157, line: 682, column: 25)
!2107 = !DILocation(line: 682, column: 25, scope: !2105)
!2108 = !DILocation(line: 682, column: 25, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !157, line: 682, column: 25)
!2110 = distinct !DILexicalBlock(scope: !2106, file: !157, line: 682, column: 25)
!2111 = !DILocation(line: 682, column: 25, scope: !2110)
!2112 = !DILocation(line: 682, column: 25, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !157, line: 682, column: 25)
!2114 = distinct !DILexicalBlock(scope: !2106, file: !157, line: 682, column: 25)
!2115 = !DILocation(line: 682, column: 25, scope: !2114)
!2116 = !DILocation(line: 682, column: 25, scope: !2106)
!2117 = !DILocation(line: 682, column: 25, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !157, line: 682, column: 25)
!2119 = distinct !DILexicalBlock(scope: !2099, file: !157, line: 682, column: 25)
!2120 = !DILocation(line: 682, column: 25, scope: !2119)
!2121 = !DILocation(line: 683, column: 25, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !157, line: 683, column: 25)
!2123 = distinct !DILexicalBlock(scope: !2100, file: !157, line: 683, column: 25)
!2124 = !DILocation(line: 683, column: 25, scope: !2123)
!2125 = !DILocation(line: 684, column: 25, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !157, line: 684, column: 25)
!2127 = distinct !DILexicalBlock(scope: !2100, file: !157, line: 684, column: 25)
!2128 = !DILocation(line: 684, column: 25, scope: !2127)
!2129 = !DILocation(line: 685, column: 38, scope: !2100)
!2130 = !DILocation(line: 685, column: 33, scope: !2100)
!2131 = !DILocation(line: 686, column: 23, scope: !2100)
!2132 = !DILocation(line: 687, column: 30, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2094, file: !157, line: 687, column: 30)
!2134 = !DILocation(line: 687, column: 30, scope: !2094)
!2135 = !DILocation(line: 689, column: 25, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !157, line: 689, column: 25)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !157, line: 689, column: 25)
!2138 = distinct !DILexicalBlock(scope: !2133, file: !157, line: 688, column: 23)
!2139 = !DILocation(line: 689, column: 25, scope: !2137)
!2140 = !DILocation(line: 691, column: 23, scope: !2138)
!2141 = !DILocation(line: 692, column: 35, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2095, file: !157, line: 692, column: 25)
!2143 = !DILocation(line: 692, column: 30, scope: !2142)
!2144 = !DILocation(line: 692, column: 25, scope: !2095)
!2145 = !DILocation(line: 694, column: 21, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !157, line: 694, column: 21)
!2147 = distinct !DILexicalBlock(scope: !2095, file: !157, line: 694, column: 21)
!2148 = !DILocation(line: 694, column: 21, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !157, line: 694, column: 21)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !157, line: 694, column: 21)
!2151 = distinct !DILexicalBlock(scope: !2146, file: !157, line: 694, column: 21)
!2152 = !DILocation(line: 694, column: 21, scope: !2150)
!2153 = !DILocation(line: 694, column: 21, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !157, line: 694, column: 21)
!2155 = distinct !DILexicalBlock(scope: !2151, file: !157, line: 694, column: 21)
!2156 = !DILocation(line: 694, column: 21, scope: !2155)
!2157 = !DILocation(line: 694, column: 21, scope: !2151)
!2158 = !DILocation(line: 695, column: 21, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !157, line: 695, column: 21)
!2160 = distinct !DILexicalBlock(scope: !2095, file: !157, line: 695, column: 21)
!2161 = !DILocation(line: 695, column: 21, scope: !2160)
!2162 = !DILocation(line: 696, column: 25, scope: !2095)
!2163 = !DILocation(line: 678, column: 17, scope: !2096)
!2164 = distinct !{!2164, !2165, !2166}
!2165 = !DILocation(line: 678, column: 17, scope: !2097)
!2166 = !DILocation(line: 697, column: 19, scope: !2097)
!2167 = !DILocation(line: 704, column: 34, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !1767, file: !157, line: 704, column: 11)
!2169 = !DILocation(line: 706, column: 14, scope: !2168)
!2170 = !DILocation(line: 707, column: 14, scope: !2168)
!2171 = !DILocation(line: 707, column: 35, scope: !2168)
!2172 = !DILocation(line: 707, column: 17, scope: !2168)
!2173 = !DILocation(line: 707, column: 53, scope: !2168)
!2174 = !DILocation(line: 707, column: 47, scope: !2168)
!2175 = !DILocation(line: 707, column: 65, scope: !2168)
!2176 = !DILocation(line: 708, column: 15, scope: !2168)
!2177 = !DILocation(line: 708, column: 11, scope: !2168)
!2178 = !DILocation(line: 704, column: 11, scope: !1767)
!2179 = !DILocation(line: 712, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !1767, file: !157, line: 712, column: 7)
!2181 = !DILocation(line: 712, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2180, file: !157, line: 712, column: 7)
!2183 = !DILocation(line: 712, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !157, line: 712, column: 7)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !157, line: 712, column: 7)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !157, line: 712, column: 7)
!2187 = !DILocation(line: 712, column: 7, scope: !2185)
!2188 = !DILocation(line: 712, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !157, line: 712, column: 7)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !157, line: 712, column: 7)
!2191 = !DILocation(line: 712, column: 7, scope: !2190)
!2192 = !DILocation(line: 712, column: 7, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !157, line: 712, column: 7)
!2194 = distinct !DILexicalBlock(scope: !2186, file: !157, line: 712, column: 7)
!2195 = !DILocation(line: 712, column: 7, scope: !2194)
!2196 = !DILocation(line: 712, column: 7, scope: !2186)
!2197 = !DILocation(line: 712, column: 7, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !157, line: 712, column: 7)
!2199 = distinct !DILexicalBlock(scope: !2180, file: !157, line: 712, column: 7)
!2200 = !DILocation(line: 712, column: 7, scope: !2199)
!2201 = !DILocation(line: 715, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !157, line: 715, column: 7)
!2203 = distinct !DILexicalBlock(scope: !1767, file: !157, line: 715, column: 7)
!2204 = !DILocation(line: 715, column: 7, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !157, line: 715, column: 7)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !157, line: 715, column: 7)
!2207 = distinct !DILexicalBlock(scope: !2202, file: !157, line: 715, column: 7)
!2208 = !DILocation(line: 715, column: 7, scope: !2206)
!2209 = !DILocation(line: 715, column: 7, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !157, line: 715, column: 7)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !157, line: 715, column: 7)
!2212 = !DILocation(line: 715, column: 7, scope: !2211)
!2213 = !DILocation(line: 715, column: 7, scope: !2207)
!2214 = !DILocation(line: 716, column: 7, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !157, line: 716, column: 7)
!2216 = distinct !DILexicalBlock(scope: !1767, file: !157, line: 716, column: 7)
!2217 = !DILocation(line: 716, column: 7, scope: !2216)
!2218 = !DILocation(line: 718, column: 13, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !1767, file: !157, line: 718, column: 11)
!2220 = !DILocation(line: 718, column: 11, scope: !1767)
!2221 = !DILocation(line: 720, column: 5, scope: !1768)
!2222 = !DILocation(line: 392, column: 75, scope: !1768)
!2223 = !DILocation(line: 392, column: 3, scope: !1768)
!2224 = distinct !{!2224, !1882, !2225}
!2225 = !DILocation(line: 720, column: 5, scope: !1769)
!2226 = !DILocation(line: 722, column: 11, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !1740, file: !157, line: 722, column: 7)
!2228 = !DILocation(line: 722, column: 16, scope: !2227)
!2229 = !DILocation(line: 730, column: 51, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !1740, file: !157, line: 730, column: 7)
!2231 = !DILocation(line: 731, column: 10, scope: !2230)
!2232 = !DILocation(line: 733, column: 11, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !157, line: 733, column: 11)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !157, line: 732, column: 5)
!2235 = !DILocation(line: 733, column: 11, scope: !2234)
!2236 = !DILocation(line: 734, column: 16, scope: !2233)
!2237 = !DILocation(line: 734, column: 9, scope: !2233)
!2238 = !DILocation(line: 738, column: 18, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2233, file: !157, line: 738, column: 16)
!2240 = !DILocation(line: 738, column: 32, scope: !2239)
!2241 = !DILocation(line: 738, column: 29, scope: !2239)
!2242 = !DILocation(line: 747, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !1740, file: !157, line: 747, column: 7)
!2244 = !DILocation(line: 747, column: 20, scope: !2243)
!2245 = !DILocation(line: 748, column: 12, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !157, line: 748, column: 5)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !157, line: 748, column: 5)
!2248 = !DILocation(line: 748, column: 5, scope: !2247)
!2249 = !DILocation(line: 749, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !157, line: 749, column: 7)
!2251 = distinct !DILexicalBlock(scope: !2246, file: !157, line: 749, column: 7)
!2252 = !DILocation(line: 749, column: 7, scope: !2251)
!2253 = !DILocation(line: 748, column: 39, scope: !2246)
!2254 = distinct !{!2254, !2248, !2255}
!2255 = !DILocation(line: 749, column: 7, scope: !2247)
!2256 = !DILocation(line: 751, column: 11, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !1740, file: !157, line: 751, column: 7)
!2258 = !DILocation(line: 751, column: 7, scope: !1740)
!2259 = !DILocation(line: 752, column: 5, scope: !2257)
!2260 = !DILocation(line: 752, column: 17, scope: !2257)
!2261 = !DILocation(line: 758, column: 21, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !1740, file: !157, line: 758, column: 7)
!2263 = !DILocation(line: 758, column: 54, scope: !2262)
!2264 = !DILocation(line: 758, column: 51, scope: !2262)
!2265 = !DILocation(line: 762, column: 42, scope: !1740)
!2266 = !DILocation(line: 760, column: 10, scope: !1740)
!2267 = !DILocation(line: 760, column: 3, scope: !1740)
!2268 = !DILocation(line: 764, column: 1, scope: !1740)
!2269 = distinct !DISubprogram(name: "gettext_quote", scope: !157, file: !157, line: 199, type: !2270, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!29, !29, !5}
!2272 = !{!2273, !2274, !2275, !2276}
!2273 = !DILocalVariable(name: "msgid", arg: 1, scope: !2269, file: !157, line: 199, type: !29)
!2274 = !DILocalVariable(name: "s", arg: 2, scope: !2269, file: !157, line: 199, type: !5)
!2275 = !DILocalVariable(name: "translation", scope: !2269, file: !157, line: 201, type: !29)
!2276 = !DILocalVariable(name: "locale_code", scope: !2269, file: !157, line: 202, type: !29)
!2277 = !DILocation(line: 199, column: 28, scope: !2269)
!2278 = !DILocation(line: 199, column: 54, scope: !2269)
!2279 = !DILocation(line: 201, column: 29, scope: !2269)
!2280 = !DILocation(line: 201, column: 15, scope: !2269)
!2281 = !DILocation(line: 204, column: 19, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2269, file: !157, line: 204, column: 7)
!2283 = !DILocation(line: 204, column: 7, scope: !2269)
!2284 = !DILocation(line: 225, column: 17, scope: !2269)
!2285 = !DILocation(line: 202, column: 15, scope: !2269)
!2286 = !DILocalVariable(name: "s2", arg: 2, scope: !2287, file: !2288, line: 160, type: !29)
!2287 = distinct !DISubprogram(name: "strcaseeq0", scope: !2288, file: !2288, line: 160, type: !2289, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2291)
!2288 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!66, !29, !29, !31, !31, !31, !31, !31, !31, !31, !31, !31}
!2291 = !{!2292, !2286, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301}
!2292 = !DILocalVariable(name: "s1", arg: 1, scope: !2287, file: !2288, line: 160, type: !29)
!2293 = !DILocalVariable(name: "s20", arg: 3, scope: !2287, file: !2288, line: 160, type: !31)
!2294 = !DILocalVariable(name: "s21", arg: 4, scope: !2287, file: !2288, line: 160, type: !31)
!2295 = !DILocalVariable(name: "s22", arg: 5, scope: !2287, file: !2288, line: 160, type: !31)
!2296 = !DILocalVariable(name: "s23", arg: 6, scope: !2287, file: !2288, line: 160, type: !31)
!2297 = !DILocalVariable(name: "s24", arg: 7, scope: !2287, file: !2288, line: 160, type: !31)
!2298 = !DILocalVariable(name: "s25", arg: 8, scope: !2287, file: !2288, line: 160, type: !31)
!2299 = !DILocalVariable(name: "s26", arg: 9, scope: !2287, file: !2288, line: 160, type: !31)
!2300 = !DILocalVariable(name: "s27", arg: 10, scope: !2287, file: !2288, line: 160, type: !31)
!2301 = !DILocalVariable(name: "s28", arg: 11, scope: !2287, file: !2288, line: 160, type: !31)
!2302 = !DILocation(line: 160, column: 41, scope: !2287, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 226, column: 7, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2269, file: !157, line: 226, column: 7)
!2305 = !DILocation(line: 160, column: 120, scope: !2287, inlinedAt: !2303)
!2306 = !DILocation(line: 160, column: 130, scope: !2287, inlinedAt: !2303)
!2307 = !DILocation(line: 162, column: 7, scope: !2308, inlinedAt: !2303)
!2308 = distinct !DILexicalBlock(scope: !2287, file: !2288, line: 162, column: 7)
!2309 = !DILocalVariable(name: "s2", arg: 2, scope: !2310, file: !2288, line: 146, type: !29)
!2310 = distinct !DISubprogram(name: "strcaseeq1", scope: !2288, file: !2288, line: 146, type: !2311, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!66, !29, !29, !31, !31, !31, !31, !31, !31, !31, !31}
!2313 = !{!2314, !2309, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322}
!2314 = !DILocalVariable(name: "s1", arg: 1, scope: !2310, file: !2288, line: 146, type: !29)
!2315 = !DILocalVariable(name: "s21", arg: 3, scope: !2310, file: !2288, line: 146, type: !31)
!2316 = !DILocalVariable(name: "s22", arg: 4, scope: !2310, file: !2288, line: 146, type: !31)
!2317 = !DILocalVariable(name: "s23", arg: 5, scope: !2310, file: !2288, line: 146, type: !31)
!2318 = !DILocalVariable(name: "s24", arg: 6, scope: !2310, file: !2288, line: 146, type: !31)
!2319 = !DILocalVariable(name: "s25", arg: 7, scope: !2310, file: !2288, line: 146, type: !31)
!2320 = !DILocalVariable(name: "s26", arg: 8, scope: !2310, file: !2288, line: 146, type: !31)
!2321 = !DILocalVariable(name: "s27", arg: 9, scope: !2310, file: !2288, line: 146, type: !31)
!2322 = !DILocalVariable(name: "s28", arg: 10, scope: !2310, file: !2288, line: 146, type: !31)
!2323 = !DILocation(line: 146, column: 41, scope: !2310, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 167, column: 16, scope: !2325, inlinedAt: !2303)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !2288, line: 164, column: 11)
!2326 = distinct !DILexicalBlock(scope: !2308, file: !2288, line: 163, column: 5)
!2327 = !DILocation(line: 146, column: 110, scope: !2310, inlinedAt: !2324)
!2328 = !DILocation(line: 146, column: 120, scope: !2310, inlinedAt: !2324)
!2329 = !DILocation(line: 148, column: 7, scope: !2330, inlinedAt: !2324)
!2330 = distinct !DILexicalBlock(scope: !2310, file: !2288, line: 148, column: 7)
!2331 = !DILocalVariable(name: "s2", arg: 2, scope: !2332, file: !2288, line: 132, type: !29)
!2332 = distinct !DISubprogram(name: "strcaseeq2", scope: !2288, file: !2288, line: 132, type: !2333, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!66, !29, !29, !31, !31, !31, !31, !31, !31, !31}
!2335 = !{!2336, !2331, !2337, !2338, !2339, !2340, !2341, !2342, !2343}
!2336 = !DILocalVariable(name: "s1", arg: 1, scope: !2332, file: !2288, line: 132, type: !29)
!2337 = !DILocalVariable(name: "s22", arg: 3, scope: !2332, file: !2288, line: 132, type: !31)
!2338 = !DILocalVariable(name: "s23", arg: 4, scope: !2332, file: !2288, line: 132, type: !31)
!2339 = !DILocalVariable(name: "s24", arg: 5, scope: !2332, file: !2288, line: 132, type: !31)
!2340 = !DILocalVariable(name: "s25", arg: 6, scope: !2332, file: !2288, line: 132, type: !31)
!2341 = !DILocalVariable(name: "s26", arg: 7, scope: !2332, file: !2288, line: 132, type: !31)
!2342 = !DILocalVariable(name: "s27", arg: 8, scope: !2332, file: !2288, line: 132, type: !31)
!2343 = !DILocalVariable(name: "s28", arg: 9, scope: !2332, file: !2288, line: 132, type: !31)
!2344 = !DILocation(line: 132, column: 41, scope: !2332, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 153, column: 16, scope: !2346, inlinedAt: !2324)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !2288, line: 150, column: 11)
!2347 = distinct !DILexicalBlock(scope: !2330, file: !2288, line: 149, column: 5)
!2348 = !DILocation(line: 132, column: 100, scope: !2332, inlinedAt: !2345)
!2349 = !DILocation(line: 132, column: 110, scope: !2332, inlinedAt: !2345)
!2350 = !DILocation(line: 134, column: 7, scope: !2351, inlinedAt: !2345)
!2351 = distinct !DILexicalBlock(scope: !2332, file: !2288, line: 134, column: 7)
!2352 = !DILocalVariable(name: "s2", arg: 2, scope: !2353, file: !2288, line: 118, type: !29)
!2353 = distinct !DISubprogram(name: "strcaseeq3", scope: !2288, file: !2288, line: 118, type: !2354, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!66, !29, !29, !31, !31, !31, !31, !31, !31}
!2356 = !{!2357, !2352, !2358, !2359, !2360, !2361, !2362, !2363}
!2357 = !DILocalVariable(name: "s1", arg: 1, scope: !2353, file: !2288, line: 118, type: !29)
!2358 = !DILocalVariable(name: "s23", arg: 3, scope: !2353, file: !2288, line: 118, type: !31)
!2359 = !DILocalVariable(name: "s24", arg: 4, scope: !2353, file: !2288, line: 118, type: !31)
!2360 = !DILocalVariable(name: "s25", arg: 5, scope: !2353, file: !2288, line: 118, type: !31)
!2361 = !DILocalVariable(name: "s26", arg: 6, scope: !2353, file: !2288, line: 118, type: !31)
!2362 = !DILocalVariable(name: "s27", arg: 7, scope: !2353, file: !2288, line: 118, type: !31)
!2363 = !DILocalVariable(name: "s28", arg: 8, scope: !2353, file: !2288, line: 118, type: !31)
!2364 = !DILocation(line: 118, column: 41, scope: !2353, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 139, column: 16, scope: !2366, inlinedAt: !2345)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !2288, line: 136, column: 11)
!2367 = distinct !DILexicalBlock(scope: !2351, file: !2288, line: 135, column: 5)
!2368 = !DILocation(line: 118, column: 90, scope: !2353, inlinedAt: !2365)
!2369 = !DILocation(line: 118, column: 100, scope: !2353, inlinedAt: !2365)
!2370 = !DILocation(line: 120, column: 7, scope: !2371, inlinedAt: !2365)
!2371 = distinct !DILexicalBlock(scope: !2353, file: !2288, line: 120, column: 7)
!2372 = !DILocation(line: 120, column: 7, scope: !2353, inlinedAt: !2365)
!2373 = !DILocalVariable(name: "s2", arg: 2, scope: !2374, file: !2288, line: 104, type: !29)
!2374 = distinct !DISubprogram(name: "strcaseeq4", scope: !2288, file: !2288, line: 104, type: !2375, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!66, !29, !29, !31, !31, !31, !31, !31}
!2377 = !{!2378, !2373, !2379, !2380, !2381, !2382, !2383}
!2378 = !DILocalVariable(name: "s1", arg: 1, scope: !2374, file: !2288, line: 104, type: !29)
!2379 = !DILocalVariable(name: "s24", arg: 3, scope: !2374, file: !2288, line: 104, type: !31)
!2380 = !DILocalVariable(name: "s25", arg: 4, scope: !2374, file: !2288, line: 104, type: !31)
!2381 = !DILocalVariable(name: "s26", arg: 5, scope: !2374, file: !2288, line: 104, type: !31)
!2382 = !DILocalVariable(name: "s27", arg: 6, scope: !2374, file: !2288, line: 104, type: !31)
!2383 = !DILocalVariable(name: "s28", arg: 7, scope: !2374, file: !2288, line: 104, type: !31)
!2384 = !DILocation(line: 104, column: 41, scope: !2374, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 125, column: 16, scope: !2386, inlinedAt: !2365)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !2288, line: 122, column: 11)
!2387 = distinct !DILexicalBlock(scope: !2371, file: !2288, line: 121, column: 5)
!2388 = !DILocation(line: 104, column: 80, scope: !2374, inlinedAt: !2385)
!2389 = !DILocation(line: 104, column: 90, scope: !2374, inlinedAt: !2385)
!2390 = !DILocation(line: 106, column: 7, scope: !2391, inlinedAt: !2385)
!2391 = distinct !DILexicalBlock(scope: !2374, file: !2288, line: 106, column: 7)
!2392 = !DILocation(line: 106, column: 7, scope: !2374, inlinedAt: !2385)
!2393 = !DILocalVariable(name: "s2", arg: 2, scope: !2394, file: !2288, line: 90, type: !29)
!2394 = distinct !DISubprogram(name: "strcaseeq5", scope: !2288, file: !2288, line: 90, type: !2395, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!66, !29, !29, !31, !31, !31, !31}
!2397 = !{!2398, !2393, !2399, !2400, !2401, !2402}
!2398 = !DILocalVariable(name: "s1", arg: 1, scope: !2394, file: !2288, line: 90, type: !29)
!2399 = !DILocalVariable(name: "s25", arg: 3, scope: !2394, file: !2288, line: 90, type: !31)
!2400 = !DILocalVariable(name: "s26", arg: 4, scope: !2394, file: !2288, line: 90, type: !31)
!2401 = !DILocalVariable(name: "s27", arg: 5, scope: !2394, file: !2288, line: 90, type: !31)
!2402 = !DILocalVariable(name: "s28", arg: 6, scope: !2394, file: !2288, line: 90, type: !31)
!2403 = !DILocation(line: 90, column: 41, scope: !2394, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 111, column: 16, scope: !2405, inlinedAt: !2385)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !2288, line: 108, column: 11)
!2406 = distinct !DILexicalBlock(scope: !2391, file: !2288, line: 107, column: 5)
!2407 = !DILocation(line: 90, column: 70, scope: !2394, inlinedAt: !2404)
!2408 = !DILocation(line: 90, column: 80, scope: !2394, inlinedAt: !2404)
!2409 = !DILocation(line: 92, column: 7, scope: !2410, inlinedAt: !2404)
!2410 = distinct !DILexicalBlock(scope: !2394, file: !2288, line: 92, column: 7)
!2411 = !DILocation(line: 92, column: 7, scope: !2394, inlinedAt: !2404)
!2412 = !DILocation(line: 227, column: 12, scope: !2304)
!2413 = !DILocation(line: 227, column: 21, scope: !2304)
!2414 = !DILocation(line: 227, column: 5, scope: !2304)
!2415 = !DILocation(line: 146, column: 41, scope: !2310, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 167, column: 16, scope: !2325, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 228, column: 7, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2269, file: !157, line: 228, column: 7)
!2419 = !DILocation(line: 146, column: 110, scope: !2310, inlinedAt: !2416)
!2420 = !DILocation(line: 146, column: 120, scope: !2310, inlinedAt: !2416)
!2421 = !DILocation(line: 148, column: 7, scope: !2330, inlinedAt: !2416)
!2422 = !DILocation(line: 132, column: 41, scope: !2332, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 153, column: 16, scope: !2346, inlinedAt: !2416)
!2424 = !DILocation(line: 132, column: 100, scope: !2332, inlinedAt: !2423)
!2425 = !DILocation(line: 132, column: 110, scope: !2332, inlinedAt: !2423)
!2426 = !DILocation(line: 134, column: 7, scope: !2351, inlinedAt: !2423)
!2427 = !DILocation(line: 134, column: 7, scope: !2332, inlinedAt: !2423)
!2428 = !DILocation(line: 118, column: 41, scope: !2353, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 139, column: 16, scope: !2366, inlinedAt: !2423)
!2430 = !DILocation(line: 118, column: 90, scope: !2353, inlinedAt: !2429)
!2431 = !DILocation(line: 118, column: 100, scope: !2353, inlinedAt: !2429)
!2432 = !DILocation(line: 120, column: 7, scope: !2371, inlinedAt: !2429)
!2433 = !DILocation(line: 120, column: 7, scope: !2353, inlinedAt: !2429)
!2434 = !DILocation(line: 104, column: 41, scope: !2374, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 125, column: 16, scope: !2386, inlinedAt: !2429)
!2436 = !DILocation(line: 104, column: 80, scope: !2374, inlinedAt: !2435)
!2437 = !DILocation(line: 104, column: 90, scope: !2374, inlinedAt: !2435)
!2438 = !DILocation(line: 106, column: 7, scope: !2391, inlinedAt: !2435)
!2439 = !DILocation(line: 106, column: 7, scope: !2374, inlinedAt: !2435)
!2440 = !DILocation(line: 90, column: 41, scope: !2394, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 111, column: 16, scope: !2405, inlinedAt: !2435)
!2442 = !DILocation(line: 90, column: 70, scope: !2394, inlinedAt: !2441)
!2443 = !DILocation(line: 90, column: 80, scope: !2394, inlinedAt: !2441)
!2444 = !DILocation(line: 92, column: 7, scope: !2410, inlinedAt: !2441)
!2445 = !DILocation(line: 92, column: 7, scope: !2394, inlinedAt: !2441)
!2446 = !DILocalVariable(name: "s2", arg: 2, scope: !2447, file: !2288, line: 76, type: !29)
!2447 = distinct !DISubprogram(name: "strcaseeq6", scope: !2288, file: !2288, line: 76, type: !2448, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!66, !29, !29, !31, !31, !31}
!2450 = !{!2451, !2446, !2452, !2453, !2454}
!2451 = !DILocalVariable(name: "s1", arg: 1, scope: !2447, file: !2288, line: 76, type: !29)
!2452 = !DILocalVariable(name: "s26", arg: 3, scope: !2447, file: !2288, line: 76, type: !31)
!2453 = !DILocalVariable(name: "s27", arg: 4, scope: !2447, file: !2288, line: 76, type: !31)
!2454 = !DILocalVariable(name: "s28", arg: 5, scope: !2447, file: !2288, line: 76, type: !31)
!2455 = !DILocation(line: 76, column: 41, scope: !2447, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 97, column: 16, scope: !2457, inlinedAt: !2441)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !2288, line: 94, column: 11)
!2458 = distinct !DILexicalBlock(scope: !2410, file: !2288, line: 93, column: 5)
!2459 = !DILocation(line: 76, column: 60, scope: !2447, inlinedAt: !2456)
!2460 = !DILocation(line: 76, column: 70, scope: !2447, inlinedAt: !2456)
!2461 = !DILocation(line: 78, column: 7, scope: !2462, inlinedAt: !2456)
!2462 = distinct !DILexicalBlock(scope: !2447, file: !2288, line: 78, column: 7)
!2463 = !DILocation(line: 78, column: 7, scope: !2447, inlinedAt: !2456)
!2464 = !DILocalVariable(name: "s2", arg: 2, scope: !2465, file: !2288, line: 62, type: !29)
!2465 = distinct !DISubprogram(name: "strcaseeq7", scope: !2288, file: !2288, line: 62, type: !2466, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!66, !29, !29, !31, !31}
!2468 = !{!2469, !2464, !2470, !2471}
!2469 = !DILocalVariable(name: "s1", arg: 1, scope: !2465, file: !2288, line: 62, type: !29)
!2470 = !DILocalVariable(name: "s27", arg: 3, scope: !2465, file: !2288, line: 62, type: !31)
!2471 = !DILocalVariable(name: "s28", arg: 4, scope: !2465, file: !2288, line: 62, type: !31)
!2472 = !DILocation(line: 62, column: 41, scope: !2465, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 83, column: 16, scope: !2474, inlinedAt: !2456)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !2288, line: 80, column: 11)
!2475 = distinct !DILexicalBlock(scope: !2462, file: !2288, line: 79, column: 5)
!2476 = !DILocation(line: 62, column: 50, scope: !2465, inlinedAt: !2473)
!2477 = !DILocation(line: 62, column: 60, scope: !2465, inlinedAt: !2473)
!2478 = !DILocation(line: 64, column: 7, scope: !2479, inlinedAt: !2473)
!2479 = distinct !DILexicalBlock(scope: !2465, file: !2288, line: 64, column: 7)
!2480 = !DILocation(line: 228, column: 7, scope: !2269)
!2481 = !DILocation(line: 229, column: 12, scope: !2418)
!2482 = !DILocation(line: 229, column: 21, scope: !2418)
!2483 = !DILocation(line: 229, column: 5, scope: !2418)
!2484 = !DILocation(line: 231, column: 13, scope: !2269)
!2485 = !DILocation(line: 231, column: 11, scope: !2269)
!2486 = !DILocation(line: 231, column: 3, scope: !2269)
!2487 = !DILocation(line: 232, column: 1, scope: !2269)
!2488 = distinct !DISubprogram(name: "quotearg_alloc", scope: !157, file: !157, line: 791, type: !2489, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!124, !29, !33, !1612}
!2491 = !{!2492, !2493, !2494}
!2492 = !DILocalVariable(name: "arg", arg: 1, scope: !2488, file: !157, line: 791, type: !29)
!2493 = !DILocalVariable(name: "argsize", arg: 2, scope: !2488, file: !157, line: 791, type: !33)
!2494 = !DILocalVariable(name: "o", arg: 3, scope: !2488, file: !157, line: 792, type: !1612)
!2495 = !DILocation(line: 791, column: 29, scope: !2488)
!2496 = !DILocation(line: 791, column: 41, scope: !2488)
!2497 = !DILocation(line: 792, column: 47, scope: !2488)
!2498 = !DILocalVariable(name: "arg", arg: 1, scope: !2499, file: !157, line: 804, type: !29)
!2499 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !157, file: !157, line: 804, type: !2500, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!124, !29, !33, !572, !1612}
!2502 = !{!2498, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510}
!2503 = !DILocalVariable(name: "argsize", arg: 2, scope: !2499, file: !157, line: 804, type: !33)
!2504 = !DILocalVariable(name: "size", arg: 3, scope: !2499, file: !157, line: 804, type: !572)
!2505 = !DILocalVariable(name: "o", arg: 4, scope: !2499, file: !157, line: 805, type: !1612)
!2506 = !DILocalVariable(name: "p", scope: !2499, file: !157, line: 807, type: !1612)
!2507 = !DILocalVariable(name: "e", scope: !2499, file: !157, line: 808, type: !66)
!2508 = !DILocalVariable(name: "flags", scope: !2499, file: !157, line: 810, type: !66)
!2509 = !DILocalVariable(name: "bufsize", scope: !2499, file: !157, line: 811, type: !33)
!2510 = !DILocalVariable(name: "buf", scope: !2499, file: !157, line: 815, type: !124)
!2511 = !DILocation(line: 804, column: 33, scope: !2499, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 794, column: 10, scope: !2488)
!2513 = !DILocation(line: 804, column: 45, scope: !2499, inlinedAt: !2512)
!2514 = !DILocation(line: 804, column: 62, scope: !2499, inlinedAt: !2512)
!2515 = !DILocation(line: 805, column: 51, scope: !2499, inlinedAt: !2512)
!2516 = !DILocation(line: 807, column: 37, scope: !2499, inlinedAt: !2512)
!2517 = !DILocation(line: 807, column: 33, scope: !2499, inlinedAt: !2512)
!2518 = !DILocation(line: 808, column: 11, scope: !2499, inlinedAt: !2512)
!2519 = !DILocation(line: 808, column: 7, scope: !2499, inlinedAt: !2512)
!2520 = !DILocation(line: 810, column: 18, scope: !2499, inlinedAt: !2512)
!2521 = !DILocation(line: 810, column: 24, scope: !2499, inlinedAt: !2512)
!2522 = !DILocation(line: 810, column: 7, scope: !2499, inlinedAt: !2512)
!2523 = !DILocation(line: 811, column: 69, scope: !2499, inlinedAt: !2512)
!2524 = !DILocation(line: 812, column: 53, scope: !2499, inlinedAt: !2512)
!2525 = !DILocation(line: 813, column: 49, scope: !2499, inlinedAt: !2512)
!2526 = !DILocation(line: 814, column: 49, scope: !2499, inlinedAt: !2512)
!2527 = !DILocation(line: 811, column: 20, scope: !2499, inlinedAt: !2512)
!2528 = !DILocation(line: 814, column: 62, scope: !2499, inlinedAt: !2512)
!2529 = !DILocation(line: 811, column: 10, scope: !2499, inlinedAt: !2512)
!2530 = !DILocalVariable(name: "n", arg: 1, scope: !2531, file: !568, line: 220, type: !33)
!2531 = distinct !DISubprogram(name: "xcharalloc", scope: !568, file: !568, line: 220, type: !2532, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!124, !33}
!2534 = !{!2530}
!2535 = !DILocation(line: 220, column: 20, scope: !2531, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 815, column: 15, scope: !2499, inlinedAt: !2512)
!2537 = !DILocation(line: 222, column: 10, scope: !2531, inlinedAt: !2536)
!2538 = !DILocation(line: 815, column: 9, scope: !2499, inlinedAt: !2512)
!2539 = !DILocation(line: 816, column: 60, scope: !2499, inlinedAt: !2512)
!2540 = !DILocation(line: 818, column: 32, scope: !2499, inlinedAt: !2512)
!2541 = !DILocation(line: 818, column: 47, scope: !2499, inlinedAt: !2512)
!2542 = !DILocation(line: 816, column: 3, scope: !2499, inlinedAt: !2512)
!2543 = !DILocation(line: 819, column: 9, scope: !2499, inlinedAt: !2512)
!2544 = !DILocation(line: 794, column: 3, scope: !2488)
!2545 = !DILocation(line: 804, column: 33, scope: !2499)
!2546 = !DILocation(line: 804, column: 45, scope: !2499)
!2547 = !DILocation(line: 804, column: 62, scope: !2499)
!2548 = !DILocation(line: 805, column: 51, scope: !2499)
!2549 = !DILocation(line: 807, column: 37, scope: !2499)
!2550 = !DILocation(line: 807, column: 33, scope: !2499)
!2551 = !DILocation(line: 808, column: 11, scope: !2499)
!2552 = !DILocation(line: 808, column: 7, scope: !2499)
!2553 = !DILocation(line: 810, column: 18, scope: !2499)
!2554 = !DILocation(line: 810, column: 27, scope: !2499)
!2555 = !DILocation(line: 810, column: 24, scope: !2499)
!2556 = !DILocation(line: 810, column: 7, scope: !2499)
!2557 = !DILocation(line: 811, column: 69, scope: !2499)
!2558 = !DILocation(line: 812, column: 53, scope: !2499)
!2559 = !DILocation(line: 813, column: 49, scope: !2499)
!2560 = !DILocation(line: 814, column: 49, scope: !2499)
!2561 = !DILocation(line: 811, column: 20, scope: !2499)
!2562 = !DILocation(line: 814, column: 62, scope: !2499)
!2563 = !DILocation(line: 811, column: 10, scope: !2499)
!2564 = !DILocation(line: 220, column: 20, scope: !2531, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 815, column: 15, scope: !2499)
!2566 = !DILocation(line: 222, column: 10, scope: !2531, inlinedAt: !2565)
!2567 = !DILocation(line: 815, column: 9, scope: !2499)
!2568 = !DILocation(line: 816, column: 60, scope: !2499)
!2569 = !DILocation(line: 818, column: 32, scope: !2499)
!2570 = !DILocation(line: 818, column: 47, scope: !2499)
!2571 = !DILocation(line: 816, column: 3, scope: !2499)
!2572 = !DILocation(line: 819, column: 9, scope: !2499)
!2573 = !DILocation(line: 820, column: 7, scope: !2499)
!2574 = !DILocation(line: 821, column: 11, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2499, file: !157, line: 820, column: 7)
!2576 = !DILocation(line: 821, column: 5, scope: !2575)
!2577 = !DILocation(line: 822, column: 3, scope: !2499)
!2578 = distinct !DISubprogram(name: "quotearg_free", scope: !157, file: !157, line: 840, type: !643, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2579)
!2579 = !{!2580, !2581}
!2580 = !DILocalVariable(name: "sv", scope: !2578, file: !157, line: 842, type: !184)
!2581 = !DILocalVariable(name: "i", scope: !2578, file: !157, line: 843, type: !66)
!2582 = !DILocation(line: 842, column: 24, scope: !2578)
!2583 = !DILocation(line: 842, column: 19, scope: !2578)
!2584 = !DILocation(line: 843, column: 7, scope: !2578)
!2585 = !DILocation(line: 844, column: 19, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !157, line: 844, column: 3)
!2587 = distinct !DILexicalBlock(scope: !2578, file: !157, line: 844, column: 3)
!2588 = !DILocation(line: 844, column: 17, scope: !2586)
!2589 = !DILocation(line: 844, column: 3, scope: !2587)
!2590 = !DILocation(line: 845, column: 17, scope: !2586)
!2591 = !{!2592, !636, i64 8}
!2592 = !{!"slotvec", !770, i64 0, !636, i64 8}
!2593 = !DILocation(line: 845, column: 5, scope: !2586)
!2594 = !DILocation(line: 844, column: 28, scope: !2586)
!2595 = distinct !{!2595, !2589, !2596}
!2596 = !DILocation(line: 845, column: 20, scope: !2587)
!2597 = !DILocation(line: 846, column: 13, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2578, file: !157, line: 846, column: 7)
!2599 = !DILocation(line: 846, column: 17, scope: !2598)
!2600 = !DILocation(line: 846, column: 7, scope: !2578)
!2601 = !DILocation(line: 848, column: 7, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2598, file: !157, line: 847, column: 5)
!2603 = !DILocation(line: 849, column: 21, scope: !2602)
!2604 = !{!2592, !770, i64 0}
!2605 = !DILocation(line: 850, column: 20, scope: !2602)
!2606 = !DILocation(line: 851, column: 5, scope: !2602)
!2607 = !DILocation(line: 852, column: 10, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2578, file: !157, line: 852, column: 7)
!2609 = !DILocation(line: 852, column: 7, scope: !2578)
!2610 = !DILocation(line: 854, column: 13, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2608, file: !157, line: 853, column: 5)
!2612 = !DILocation(line: 854, column: 7, scope: !2611)
!2613 = !DILocation(line: 855, column: 15, scope: !2611)
!2614 = !DILocation(line: 856, column: 5, scope: !2611)
!2615 = !DILocation(line: 857, column: 10, scope: !2578)
!2616 = !DILocation(line: 858, column: 1, scope: !2578)
!2617 = distinct !DISubprogram(name: "quotearg_n", scope: !157, file: !157, line: 922, type: !2618, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!124, !66, !29}
!2620 = !{!2621, !2622}
!2621 = !DILocalVariable(name: "n", arg: 1, scope: !2617, file: !157, line: 922, type: !66)
!2622 = !DILocalVariable(name: "arg", arg: 2, scope: !2617, file: !157, line: 922, type: !29)
!2623 = !DILocation(line: 922, column: 17, scope: !2617)
!2624 = !DILocation(line: 922, column: 32, scope: !2617)
!2625 = !DILocation(line: 924, column: 10, scope: !2617)
!2626 = !DILocation(line: 924, column: 3, scope: !2617)
!2627 = distinct !DISubprogram(name: "quotearg_n_options", scope: !157, file: !157, line: 869, type: !2628, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!124, !66, !29, !33, !1612}
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2640, !2642, !2643, !2644}
!2631 = !DILocalVariable(name: "n", arg: 1, scope: !2627, file: !157, line: 869, type: !66)
!2632 = !DILocalVariable(name: "arg", arg: 2, scope: !2627, file: !157, line: 869, type: !29)
!2633 = !DILocalVariable(name: "argsize", arg: 3, scope: !2627, file: !157, line: 869, type: !33)
!2634 = !DILocalVariable(name: "options", arg: 4, scope: !2627, file: !157, line: 870, type: !1612)
!2635 = !DILocalVariable(name: "e", scope: !2627, file: !157, line: 872, type: !66)
!2636 = !DILocalVariable(name: "sv", scope: !2627, file: !157, line: 874, type: !184)
!2637 = !DILocalVariable(name: "preallocated", scope: !2638, file: !157, line: 881, type: !93)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !157, line: 880, column: 5)
!2639 = distinct !DILexicalBlock(scope: !2627, file: !157, line: 879, column: 7)
!2640 = !DILocalVariable(name: "size", scope: !2641, file: !157, line: 894, type: !33)
!2641 = distinct !DILexicalBlock(scope: !2627, file: !157, line: 893, column: 3)
!2642 = !DILocalVariable(name: "val", scope: !2641, file: !157, line: 895, type: !124)
!2643 = !DILocalVariable(name: "flags", scope: !2641, file: !157, line: 897, type: !66)
!2644 = !DILocalVariable(name: "qsize", scope: !2641, file: !157, line: 898, type: !33)
!2645 = !DILocation(line: 869, column: 25, scope: !2627)
!2646 = !DILocation(line: 869, column: 40, scope: !2627)
!2647 = !DILocation(line: 869, column: 52, scope: !2627)
!2648 = !DILocation(line: 870, column: 51, scope: !2627)
!2649 = !DILocation(line: 872, column: 11, scope: !2627)
!2650 = !DILocation(line: 872, column: 7, scope: !2627)
!2651 = !DILocation(line: 874, column: 24, scope: !2627)
!2652 = !DILocation(line: 874, column: 19, scope: !2627)
!2653 = !DILocation(line: 876, column: 9, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2627, file: !157, line: 876, column: 7)
!2655 = !DILocation(line: 876, column: 7, scope: !2627)
!2656 = !DILocation(line: 877, column: 5, scope: !2654)
!2657 = !DILocation(line: 879, column: 7, scope: !2639)
!2658 = !DILocation(line: 879, column: 14, scope: !2639)
!2659 = !DILocation(line: 879, column: 7, scope: !2627)
!2660 = !DILocation(line: 881, column: 31, scope: !2638)
!2661 = !DILocation(line: 883, column: 67, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2638, file: !157, line: 883, column: 11)
!2663 = !DILocation(line: 883, column: 11, scope: !2638)
!2664 = !DILocation(line: 884, column: 9, scope: !2662)
!2665 = !DILocation(line: 886, column: 32, scope: !2638)
!2666 = !DILocation(line: 886, column: 61, scope: !2638)
!2667 = !DILocation(line: 886, column: 58, scope: !2638)
!2668 = !DILocation(line: 886, column: 66, scope: !2638)
!2669 = !DILocation(line: 886, column: 22, scope: !2638)
!2670 = !DILocation(line: 886, column: 15, scope: !2638)
!2671 = !DILocation(line: 887, column: 11, scope: !2638)
!2672 = !DILocation(line: 888, column: 15, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2638, file: !157, line: 887, column: 11)
!2674 = !{i64 0, i64 8, !999, i64 8, i64 8, !635}
!2675 = !DILocation(line: 888, column: 9, scope: !2673)
!2676 = !DILocation(line: 889, column: 20, scope: !2638)
!2677 = !DILocation(line: 889, column: 18, scope: !2638)
!2678 = !DILocation(line: 889, column: 7, scope: !2638)
!2679 = !DILocation(line: 889, column: 38, scope: !2638)
!2680 = !DILocation(line: 889, column: 31, scope: !2638)
!2681 = !DILocation(line: 889, column: 48, scope: !2638)
!2682 = !DILocation(line: 890, column: 14, scope: !2638)
!2683 = !DILocation(line: 891, column: 5, scope: !2638)
!2684 = !DILocation(line: 894, column: 19, scope: !2641)
!2685 = !DILocation(line: 894, column: 25, scope: !2641)
!2686 = !DILocation(line: 894, column: 12, scope: !2641)
!2687 = !DILocation(line: 895, column: 23, scope: !2641)
!2688 = !DILocation(line: 895, column: 11, scope: !2641)
!2689 = !DILocation(line: 897, column: 26, scope: !2641)
!2690 = !DILocation(line: 897, column: 32, scope: !2641)
!2691 = !DILocation(line: 897, column: 9, scope: !2641)
!2692 = !DILocation(line: 899, column: 55, scope: !2641)
!2693 = !DILocation(line: 900, column: 46, scope: !2641)
!2694 = !DILocation(line: 901, column: 55, scope: !2641)
!2695 = !DILocation(line: 902, column: 55, scope: !2641)
!2696 = !DILocation(line: 898, column: 20, scope: !2641)
!2697 = !DILocation(line: 898, column: 12, scope: !2641)
!2698 = !DILocation(line: 904, column: 14, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2641, file: !157, line: 904, column: 9)
!2700 = !DILocation(line: 904, column: 9, scope: !2641)
!2701 = !DILocation(line: 906, column: 35, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2699, file: !157, line: 905, column: 7)
!2703 = !DILocation(line: 906, column: 20, scope: !2702)
!2704 = !DILocation(line: 907, column: 17, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2702, file: !157, line: 907, column: 13)
!2706 = !DILocation(line: 907, column: 13, scope: !2702)
!2707 = !DILocation(line: 908, column: 11, scope: !2705)
!2708 = !DILocation(line: 220, column: 20, scope: !2531, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 909, column: 27, scope: !2702)
!2710 = !DILocation(line: 222, column: 10, scope: !2531, inlinedAt: !2709)
!2711 = !DILocation(line: 909, column: 19, scope: !2702)
!2712 = !DILocation(line: 910, column: 69, scope: !2702)
!2713 = !DILocation(line: 912, column: 44, scope: !2702)
!2714 = !DILocation(line: 913, column: 44, scope: !2702)
!2715 = !DILocation(line: 910, column: 9, scope: !2702)
!2716 = !DILocation(line: 914, column: 7, scope: !2702)
!2717 = !DILocation(line: 916, column: 11, scope: !2641)
!2718 = !DILocation(line: 917, column: 5, scope: !2641)
!2719 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !157, file: !157, line: 928, type: !2720, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!124, !66, !29, !33}
!2722 = !{!2723, !2724, !2725}
!2723 = !DILocalVariable(name: "n", arg: 1, scope: !2719, file: !157, line: 928, type: !66)
!2724 = !DILocalVariable(name: "arg", arg: 2, scope: !2719, file: !157, line: 928, type: !29)
!2725 = !DILocalVariable(name: "argsize", arg: 3, scope: !2719, file: !157, line: 928, type: !33)
!2726 = !DILocation(line: 928, column: 21, scope: !2719)
!2727 = !DILocation(line: 928, column: 36, scope: !2719)
!2728 = !DILocation(line: 928, column: 48, scope: !2719)
!2729 = !DILocation(line: 930, column: 10, scope: !2719)
!2730 = !DILocation(line: 930, column: 3, scope: !2719)
!2731 = distinct !DISubprogram(name: "quotearg", scope: !157, file: !157, line: 934, type: !2732, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!124, !29}
!2734 = !{!2735}
!2735 = !DILocalVariable(name: "arg", arg: 1, scope: !2731, file: !157, line: 934, type: !29)
!2736 = !DILocation(line: 934, column: 23, scope: !2731)
!2737 = !DILocation(line: 922, column: 17, scope: !2617, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 936, column: 10, scope: !2731)
!2739 = !DILocation(line: 922, column: 32, scope: !2617, inlinedAt: !2738)
!2740 = !DILocation(line: 924, column: 10, scope: !2617, inlinedAt: !2738)
!2741 = !DILocation(line: 936, column: 3, scope: !2731)
!2742 = distinct !DISubprogram(name: "quotearg_mem", scope: !157, file: !157, line: 940, type: !2743, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!124, !29, !33}
!2745 = !{!2746, !2747}
!2746 = !DILocalVariable(name: "arg", arg: 1, scope: !2742, file: !157, line: 940, type: !29)
!2747 = !DILocalVariable(name: "argsize", arg: 2, scope: !2742, file: !157, line: 940, type: !33)
!2748 = !DILocation(line: 940, column: 27, scope: !2742)
!2749 = !DILocation(line: 940, column: 39, scope: !2742)
!2750 = !DILocation(line: 928, column: 21, scope: !2719, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 942, column: 10, scope: !2742)
!2752 = !DILocation(line: 928, column: 36, scope: !2719, inlinedAt: !2751)
!2753 = !DILocation(line: 928, column: 48, scope: !2719, inlinedAt: !2751)
!2754 = !DILocation(line: 930, column: 10, scope: !2719, inlinedAt: !2751)
!2755 = !DILocation(line: 942, column: 3, scope: !2742)
!2756 = distinct !DISubprogram(name: "quotearg_n_style", scope: !157, file: !157, line: 946, type: !2757, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2759)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!124, !66, !5, !29}
!2759 = !{!2760, !2761, !2762, !2763}
!2760 = !DILocalVariable(name: "n", arg: 1, scope: !2756, file: !157, line: 946, type: !66)
!2761 = !DILocalVariable(name: "s", arg: 2, scope: !2756, file: !157, line: 946, type: !5)
!2762 = !DILocalVariable(name: "arg", arg: 3, scope: !2756, file: !157, line: 946, type: !29)
!2763 = !DILocalVariable(name: "o", scope: !2756, file: !157, line: 948, type: !1613)
!2764 = !DILocalVariable(name: "o", scope: !2765, file: !157, line: 187, type: !164)
!2765 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !157, file: !157, line: 185, type: !2766, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!164, !5}
!2768 = !{!2769, !2764}
!2769 = !DILocalVariable(name: "style", arg: 1, scope: !2765, file: !157, line: 185, type: !5)
!2770 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2771 = !DILocation(line: 187, column: 26, scope: !2765, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 948, column: 36, scope: !2756)
!2773 = !DILocation(line: 946, column: 23, scope: !2756)
!2774 = !DILocation(line: 946, column: 45, scope: !2756)
!2775 = !DILocation(line: 946, column: 60, scope: !2756)
!2776 = !DILocation(line: 948, column: 3, scope: !2756)
!2777 = !DILocation(line: 948, column: 32, scope: !2756)
!2778 = !DILocation(line: 185, column: 48, scope: !2765, inlinedAt: !2772)
!2779 = !DILocation(line: 187, column: 3, scope: !2765, inlinedAt: !2772)
!2780 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2781 = !DILocation(line: 188, column: 13, scope: !2782, inlinedAt: !2772)
!2782 = distinct !DILexicalBlock(scope: !2765, file: !157, line: 188, column: 7)
!2783 = !DILocation(line: 188, column: 7, scope: !2765, inlinedAt: !2772)
!2784 = !DILocation(line: 189, column: 5, scope: !2782, inlinedAt: !2772)
!2785 = !{!2786}
!2786 = distinct !{!2786, !2787, !"quoting_options_from_style: argument 0"}
!2787 = distinct !{!2787, !"quoting_options_from_style"}
!2788 = !DILocation(line: 191, column: 10, scope: !2765, inlinedAt: !2772)
!2789 = !DILocation(line: 192, column: 1, scope: !2765, inlinedAt: !2772)
!2790 = !DILocation(line: 949, column: 10, scope: !2756)
!2791 = !DILocation(line: 950, column: 1, scope: !2756)
!2792 = !DILocation(line: 949, column: 3, scope: !2756)
!2793 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !157, file: !157, line: 953, type: !2794, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!124, !66, !5, !29, !33}
!2796 = !{!2797, !2798, !2799, !2800, !2801}
!2797 = !DILocalVariable(name: "n", arg: 1, scope: !2793, file: !157, line: 953, type: !66)
!2798 = !DILocalVariable(name: "s", arg: 2, scope: !2793, file: !157, line: 953, type: !5)
!2799 = !DILocalVariable(name: "arg", arg: 3, scope: !2793, file: !157, line: 954, type: !29)
!2800 = !DILocalVariable(name: "argsize", arg: 4, scope: !2793, file: !157, line: 954, type: !33)
!2801 = !DILocalVariable(name: "o", scope: !2793, file: !157, line: 956, type: !1613)
!2802 = !DILocation(line: 187, column: 26, scope: !2765, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 956, column: 36, scope: !2793)
!2804 = !DILocation(line: 953, column: 27, scope: !2793)
!2805 = !DILocation(line: 953, column: 49, scope: !2793)
!2806 = !DILocation(line: 954, column: 35, scope: !2793)
!2807 = !DILocation(line: 954, column: 47, scope: !2793)
!2808 = !DILocation(line: 956, column: 3, scope: !2793)
!2809 = !DILocation(line: 956, column: 32, scope: !2793)
!2810 = !DILocation(line: 185, column: 48, scope: !2765, inlinedAt: !2803)
!2811 = !DILocation(line: 187, column: 3, scope: !2765, inlinedAt: !2803)
!2812 = !DILocation(line: 188, column: 13, scope: !2782, inlinedAt: !2803)
!2813 = !DILocation(line: 188, column: 7, scope: !2765, inlinedAt: !2803)
!2814 = !DILocation(line: 189, column: 5, scope: !2782, inlinedAt: !2803)
!2815 = !{!2816}
!2816 = distinct !{!2816, !2817, !"quoting_options_from_style: argument 0"}
!2817 = distinct !{!2817, !"quoting_options_from_style"}
!2818 = !DILocation(line: 191, column: 10, scope: !2765, inlinedAt: !2803)
!2819 = !DILocation(line: 192, column: 1, scope: !2765, inlinedAt: !2803)
!2820 = !DILocation(line: 957, column: 10, scope: !2793)
!2821 = !DILocation(line: 958, column: 1, scope: !2793)
!2822 = !DILocation(line: 957, column: 3, scope: !2793)
!2823 = distinct !DISubprogram(name: "quotearg_style", scope: !157, file: !157, line: 961, type: !2824, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!124, !5, !29}
!2826 = !{!2827, !2828}
!2827 = !DILocalVariable(name: "s", arg: 1, scope: !2823, file: !157, line: 961, type: !5)
!2828 = !DILocalVariable(name: "arg", arg: 2, scope: !2823, file: !157, line: 961, type: !29)
!2829 = !DILocation(line: 187, column: 26, scope: !2765, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 948, column: 36, scope: !2756, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 963, column: 10, scope: !2823)
!2832 = !DILocation(line: 961, column: 36, scope: !2823)
!2833 = !DILocation(line: 961, column: 51, scope: !2823)
!2834 = !DILocation(line: 946, column: 23, scope: !2756, inlinedAt: !2831)
!2835 = !DILocation(line: 946, column: 45, scope: !2756, inlinedAt: !2831)
!2836 = !DILocation(line: 946, column: 60, scope: !2756, inlinedAt: !2831)
!2837 = !DILocation(line: 948, column: 3, scope: !2756, inlinedAt: !2831)
!2838 = !DILocation(line: 948, column: 32, scope: !2756, inlinedAt: !2831)
!2839 = !DILocation(line: 185, column: 48, scope: !2765, inlinedAt: !2830)
!2840 = !DILocation(line: 187, column: 3, scope: !2765, inlinedAt: !2830)
!2841 = !DILocation(line: 188, column: 13, scope: !2782, inlinedAt: !2830)
!2842 = !DILocation(line: 188, column: 7, scope: !2765, inlinedAt: !2830)
!2843 = !DILocation(line: 189, column: 5, scope: !2782, inlinedAt: !2830)
!2844 = !{!2845}
!2845 = distinct !{!2845, !2846, !"quoting_options_from_style: argument 0"}
!2846 = distinct !{!2846, !"quoting_options_from_style"}
!2847 = !DILocation(line: 191, column: 10, scope: !2765, inlinedAt: !2830)
!2848 = !DILocation(line: 192, column: 1, scope: !2765, inlinedAt: !2830)
!2849 = !DILocation(line: 949, column: 10, scope: !2756, inlinedAt: !2831)
!2850 = !DILocation(line: 950, column: 1, scope: !2756, inlinedAt: !2831)
!2851 = !DILocation(line: 963, column: 3, scope: !2823)
!2852 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !157, file: !157, line: 967, type: !2853, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!124, !5, !29, !33}
!2855 = !{!2856, !2857, !2858}
!2856 = !DILocalVariable(name: "s", arg: 1, scope: !2852, file: !157, line: 967, type: !5)
!2857 = !DILocalVariable(name: "arg", arg: 2, scope: !2852, file: !157, line: 967, type: !29)
!2858 = !DILocalVariable(name: "argsize", arg: 3, scope: !2852, file: !157, line: 967, type: !33)
!2859 = !DILocation(line: 187, column: 26, scope: !2765, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 956, column: 36, scope: !2793, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 969, column: 10, scope: !2852)
!2862 = !DILocation(line: 967, column: 40, scope: !2852)
!2863 = !DILocation(line: 967, column: 55, scope: !2852)
!2864 = !DILocation(line: 967, column: 67, scope: !2852)
!2865 = !DILocation(line: 953, column: 27, scope: !2793, inlinedAt: !2861)
!2866 = !DILocation(line: 953, column: 49, scope: !2793, inlinedAt: !2861)
!2867 = !DILocation(line: 954, column: 35, scope: !2793, inlinedAt: !2861)
!2868 = !DILocation(line: 954, column: 47, scope: !2793, inlinedAt: !2861)
!2869 = !DILocation(line: 956, column: 3, scope: !2793, inlinedAt: !2861)
!2870 = !DILocation(line: 956, column: 32, scope: !2793, inlinedAt: !2861)
!2871 = !DILocation(line: 185, column: 48, scope: !2765, inlinedAt: !2860)
!2872 = !DILocation(line: 187, column: 3, scope: !2765, inlinedAt: !2860)
!2873 = !DILocation(line: 188, column: 13, scope: !2782, inlinedAt: !2860)
!2874 = !DILocation(line: 188, column: 7, scope: !2765, inlinedAt: !2860)
!2875 = !DILocation(line: 189, column: 5, scope: !2782, inlinedAt: !2860)
!2876 = !{!2877}
!2877 = distinct !{!2877, !2878, !"quoting_options_from_style: argument 0"}
!2878 = distinct !{!2878, !"quoting_options_from_style"}
!2879 = !DILocation(line: 191, column: 10, scope: !2765, inlinedAt: !2860)
!2880 = !DILocation(line: 192, column: 1, scope: !2765, inlinedAt: !2860)
!2881 = !DILocation(line: 957, column: 10, scope: !2793, inlinedAt: !2861)
!2882 = !DILocation(line: 958, column: 1, scope: !2793, inlinedAt: !2861)
!2883 = !DILocation(line: 969, column: 3, scope: !2852)
!2884 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !157, file: !157, line: 973, type: !2885, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!124, !29, !33, !31}
!2887 = !{!2888, !2889, !2890, !2891}
!2888 = !DILocalVariable(name: "arg", arg: 1, scope: !2884, file: !157, line: 973, type: !29)
!2889 = !DILocalVariable(name: "argsize", arg: 2, scope: !2884, file: !157, line: 973, type: !33)
!2890 = !DILocalVariable(name: "ch", arg: 3, scope: !2884, file: !157, line: 973, type: !31)
!2891 = !DILocalVariable(name: "options", scope: !2884, file: !157, line: 975, type: !164)
!2892 = !DILocation(line: 973, column: 32, scope: !2884)
!2893 = !DILocation(line: 973, column: 44, scope: !2884)
!2894 = !DILocation(line: 973, column: 58, scope: !2884)
!2895 = !DILocation(line: 975, column: 3, scope: !2884)
!2896 = !DILocation(line: 976, column: 13, scope: !2884)
!2897 = !{i64 0, i64 4, !1840, i64 4, i64 4, !690, i64 8, i64 32, !1840, i64 40, i64 8, !635, i64 48, i64 8, !635}
!2898 = !DILocation(line: 975, column: 26, scope: !2884)
!2899 = !DILocation(line: 144, column: 43, scope: !1634, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 977, column: 3, scope: !2884)
!2901 = !DILocation(line: 144, column: 51, scope: !1634, inlinedAt: !2900)
!2902 = !DILocation(line: 144, column: 58, scope: !1634, inlinedAt: !2900)
!2903 = !DILocation(line: 146, column: 17, scope: !1634, inlinedAt: !2900)
!2904 = !DILocation(line: 148, column: 62, scope: !1634, inlinedAt: !2900)
!2905 = !DILocation(line: 148, column: 57, scope: !1634, inlinedAt: !2900)
!2906 = !DILocation(line: 147, column: 17, scope: !1634, inlinedAt: !2900)
!2907 = !DILocation(line: 149, column: 18, scope: !1634, inlinedAt: !2900)
!2908 = !DILocation(line: 149, column: 15, scope: !1634, inlinedAt: !2900)
!2909 = !DILocation(line: 149, column: 7, scope: !1634, inlinedAt: !2900)
!2910 = !DILocation(line: 150, column: 12, scope: !1634, inlinedAt: !2900)
!2911 = !DILocation(line: 150, column: 15, scope: !1634, inlinedAt: !2900)
!2912 = !DILocation(line: 150, column: 25, scope: !1634, inlinedAt: !2900)
!2913 = !DILocation(line: 150, column: 7, scope: !1634, inlinedAt: !2900)
!2914 = !DILocation(line: 151, column: 18, scope: !1634, inlinedAt: !2900)
!2915 = !DILocation(line: 151, column: 23, scope: !1634, inlinedAt: !2900)
!2916 = !DILocation(line: 151, column: 6, scope: !1634, inlinedAt: !2900)
!2917 = !DILocation(line: 978, column: 10, scope: !2884)
!2918 = !DILocation(line: 979, column: 1, scope: !2884)
!2919 = !DILocation(line: 978, column: 3, scope: !2884)
!2920 = distinct !DISubprogram(name: "quotearg_char", scope: !157, file: !157, line: 982, type: !2921, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!124, !29, !31}
!2923 = !{!2924, !2925}
!2924 = !DILocalVariable(name: "arg", arg: 1, scope: !2920, file: !157, line: 982, type: !29)
!2925 = !DILocalVariable(name: "ch", arg: 2, scope: !2920, file: !157, line: 982, type: !31)
!2926 = !DILocation(line: 982, column: 28, scope: !2920)
!2927 = !DILocation(line: 982, column: 38, scope: !2920)
!2928 = !DILocation(line: 973, column: 32, scope: !2884, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 984, column: 10, scope: !2920)
!2930 = !DILocation(line: 973, column: 44, scope: !2884, inlinedAt: !2929)
!2931 = !DILocation(line: 973, column: 58, scope: !2884, inlinedAt: !2929)
!2932 = !DILocation(line: 975, column: 3, scope: !2884, inlinedAt: !2929)
!2933 = !DILocation(line: 976, column: 13, scope: !2884, inlinedAt: !2929)
!2934 = !DILocation(line: 975, column: 26, scope: !2884, inlinedAt: !2929)
!2935 = !DILocation(line: 144, column: 43, scope: !1634, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 977, column: 3, scope: !2884, inlinedAt: !2929)
!2937 = !DILocation(line: 144, column: 51, scope: !1634, inlinedAt: !2936)
!2938 = !DILocation(line: 144, column: 58, scope: !1634, inlinedAt: !2936)
!2939 = !DILocation(line: 146, column: 17, scope: !1634, inlinedAt: !2936)
!2940 = !DILocation(line: 148, column: 62, scope: !1634, inlinedAt: !2936)
!2941 = !DILocation(line: 148, column: 57, scope: !1634, inlinedAt: !2936)
!2942 = !DILocation(line: 147, column: 17, scope: !1634, inlinedAt: !2936)
!2943 = !DILocation(line: 149, column: 18, scope: !1634, inlinedAt: !2936)
!2944 = !DILocation(line: 149, column: 15, scope: !1634, inlinedAt: !2936)
!2945 = !DILocation(line: 149, column: 7, scope: !1634, inlinedAt: !2936)
!2946 = !DILocation(line: 150, column: 12, scope: !1634, inlinedAt: !2936)
!2947 = !DILocation(line: 150, column: 15, scope: !1634, inlinedAt: !2936)
!2948 = !DILocation(line: 150, column: 25, scope: !1634, inlinedAt: !2936)
!2949 = !DILocation(line: 150, column: 7, scope: !1634, inlinedAt: !2936)
!2950 = !DILocation(line: 151, column: 18, scope: !1634, inlinedAt: !2936)
!2951 = !DILocation(line: 151, column: 23, scope: !1634, inlinedAt: !2936)
!2952 = !DILocation(line: 151, column: 6, scope: !1634, inlinedAt: !2936)
!2953 = !DILocation(line: 978, column: 10, scope: !2884, inlinedAt: !2929)
!2954 = !DILocation(line: 979, column: 1, scope: !2884, inlinedAt: !2929)
!2955 = !DILocation(line: 984, column: 3, scope: !2920)
!2956 = distinct !DISubprogram(name: "quotearg_colon", scope: !157, file: !157, line: 988, type: !2732, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2957)
!2957 = !{!2958}
!2958 = !DILocalVariable(name: "arg", arg: 1, scope: !2956, file: !157, line: 988, type: !29)
!2959 = !DILocation(line: 988, column: 29, scope: !2956)
!2960 = !DILocation(line: 982, column: 28, scope: !2920, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 990, column: 10, scope: !2956)
!2962 = !DILocation(line: 982, column: 38, scope: !2920, inlinedAt: !2961)
!2963 = !DILocation(line: 973, column: 32, scope: !2884, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 984, column: 10, scope: !2920, inlinedAt: !2961)
!2965 = !DILocation(line: 973, column: 44, scope: !2884, inlinedAt: !2964)
!2966 = !DILocation(line: 973, column: 58, scope: !2884, inlinedAt: !2964)
!2967 = !DILocation(line: 975, column: 3, scope: !2884, inlinedAt: !2964)
!2968 = !DILocation(line: 976, column: 13, scope: !2884, inlinedAt: !2964)
!2969 = !DILocation(line: 975, column: 26, scope: !2884, inlinedAt: !2964)
!2970 = !DILocation(line: 144, column: 43, scope: !1634, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 977, column: 3, scope: !2884, inlinedAt: !2964)
!2972 = !DILocation(line: 144, column: 51, scope: !1634, inlinedAt: !2971)
!2973 = !DILocation(line: 144, column: 58, scope: !1634, inlinedAt: !2971)
!2974 = !DILocation(line: 146, column: 17, scope: !1634, inlinedAt: !2971)
!2975 = !DILocation(line: 148, column: 57, scope: !1634, inlinedAt: !2971)
!2976 = !DILocation(line: 147, column: 17, scope: !1634, inlinedAt: !2971)
!2977 = !DILocation(line: 149, column: 7, scope: !1634, inlinedAt: !2971)
!2978 = !DILocation(line: 150, column: 12, scope: !1634, inlinedAt: !2971)
!2979 = !DILocation(line: 151, column: 6, scope: !1634, inlinedAt: !2971)
!2980 = !DILocation(line: 978, column: 10, scope: !2884, inlinedAt: !2964)
!2981 = !DILocation(line: 979, column: 1, scope: !2884, inlinedAt: !2964)
!2982 = !DILocation(line: 990, column: 3, scope: !2956)
!2983 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !157, file: !157, line: 994, type: !2743, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2984)
!2984 = !{!2985, !2986}
!2985 = !DILocalVariable(name: "arg", arg: 1, scope: !2983, file: !157, line: 994, type: !29)
!2986 = !DILocalVariable(name: "argsize", arg: 2, scope: !2983, file: !157, line: 994, type: !33)
!2987 = !DILocation(line: 994, column: 33, scope: !2983)
!2988 = !DILocation(line: 994, column: 45, scope: !2983)
!2989 = !DILocation(line: 973, column: 32, scope: !2884, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 996, column: 10, scope: !2983)
!2991 = !DILocation(line: 973, column: 44, scope: !2884, inlinedAt: !2990)
!2992 = !DILocation(line: 973, column: 58, scope: !2884, inlinedAt: !2990)
!2993 = !DILocation(line: 975, column: 3, scope: !2884, inlinedAt: !2990)
!2994 = !DILocation(line: 976, column: 13, scope: !2884, inlinedAt: !2990)
!2995 = !DILocation(line: 975, column: 26, scope: !2884, inlinedAt: !2990)
!2996 = !DILocation(line: 144, column: 43, scope: !1634, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 977, column: 3, scope: !2884, inlinedAt: !2990)
!2998 = !DILocation(line: 144, column: 51, scope: !1634, inlinedAt: !2997)
!2999 = !DILocation(line: 144, column: 58, scope: !1634, inlinedAt: !2997)
!3000 = !DILocation(line: 146, column: 17, scope: !1634, inlinedAt: !2997)
!3001 = !DILocation(line: 148, column: 57, scope: !1634, inlinedAt: !2997)
!3002 = !DILocation(line: 147, column: 17, scope: !1634, inlinedAt: !2997)
!3003 = !DILocation(line: 149, column: 7, scope: !1634, inlinedAt: !2997)
!3004 = !DILocation(line: 150, column: 12, scope: !1634, inlinedAt: !2997)
!3005 = !DILocation(line: 151, column: 6, scope: !1634, inlinedAt: !2997)
!3006 = !DILocation(line: 978, column: 10, scope: !2884, inlinedAt: !2990)
!3007 = !DILocation(line: 979, column: 1, scope: !2884, inlinedAt: !2990)
!3008 = !DILocation(line: 996, column: 3, scope: !2983)
!3009 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !157, file: !157, line: 1000, type: !2757, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3010)
!3010 = !{!3011, !3012, !3013, !3014}
!3011 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !157, line: 1000, type: !66)
!3012 = !DILocalVariable(name: "s", arg: 2, scope: !3009, file: !157, line: 1000, type: !5)
!3013 = !DILocalVariable(name: "arg", arg: 3, scope: !3009, file: !157, line: 1000, type: !29)
!3014 = !DILocalVariable(name: "options", scope: !3009, file: !157, line: 1002, type: !164)
!3015 = !DILocation(line: 187, column: 26, scope: !2765, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 1003, column: 13, scope: !3009)
!3017 = !DILocation(line: 1000, column: 29, scope: !3009)
!3018 = !DILocation(line: 1000, column: 51, scope: !3009)
!3019 = !DILocation(line: 1000, column: 66, scope: !3009)
!3020 = !DILocation(line: 1002, column: 3, scope: !3009)
!3021 = !DILocation(line: 185, column: 48, scope: !2765, inlinedAt: !3016)
!3022 = !DILocation(line: 187, column: 3, scope: !2765, inlinedAt: !3016)
!3023 = !DILocation(line: 188, column: 13, scope: !2782, inlinedAt: !3016)
!3024 = !DILocation(line: 188, column: 7, scope: !2765, inlinedAt: !3016)
!3025 = !DILocation(line: 189, column: 5, scope: !2782, inlinedAt: !3016)
!3026 = !{!3027}
!3027 = distinct !{!3027, !3028, !"quoting_options_from_style: argument 0"}
!3028 = distinct !{!3028, !"quoting_options_from_style"}
!3029 = !DILocation(line: 191, column: 10, scope: !2765, inlinedAt: !3016)
!3030 = !DILocation(line: 192, column: 1, scope: !2765, inlinedAt: !3016)
!3031 = !DILocation(line: 1003, column: 13, scope: !3009)
!3032 = !DILocation(line: 1002, column: 26, scope: !3009)
!3033 = !DILocation(line: 144, column: 43, scope: !1634, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 1004, column: 3, scope: !3009)
!3035 = !DILocation(line: 144, column: 51, scope: !1634, inlinedAt: !3034)
!3036 = !DILocation(line: 144, column: 58, scope: !1634, inlinedAt: !3034)
!3037 = !DILocation(line: 146, column: 17, scope: !1634, inlinedAt: !3034)
!3038 = !DILocation(line: 148, column: 57, scope: !1634, inlinedAt: !3034)
!3039 = !DILocation(line: 147, column: 17, scope: !1634, inlinedAt: !3034)
!3040 = !DILocation(line: 149, column: 7, scope: !1634, inlinedAt: !3034)
!3041 = !DILocation(line: 150, column: 12, scope: !1634, inlinedAt: !3034)
!3042 = !DILocation(line: 151, column: 6, scope: !1634, inlinedAt: !3034)
!3043 = !DILocation(line: 1005, column: 10, scope: !3009)
!3044 = !DILocation(line: 1006, column: 1, scope: !3009)
!3045 = !DILocation(line: 1005, column: 3, scope: !3009)
!3046 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !157, file: !157, line: 1009, type: !3047, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!124, !66, !29, !29, !29}
!3049 = !{!3050, !3051, !3052, !3053}
!3050 = !DILocalVariable(name: "n", arg: 1, scope: !3046, file: !157, line: 1009, type: !66)
!3051 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3046, file: !157, line: 1009, type: !29)
!3052 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3046, file: !157, line: 1010, type: !29)
!3053 = !DILocalVariable(name: "arg", arg: 4, scope: !3046, file: !157, line: 1010, type: !29)
!3054 = !DILocation(line: 1009, column: 24, scope: !3046)
!3055 = !DILocation(line: 1009, column: 39, scope: !3046)
!3056 = !DILocation(line: 1010, column: 32, scope: !3046)
!3057 = !DILocation(line: 1010, column: 57, scope: !3046)
!3058 = !DILocalVariable(name: "n", arg: 1, scope: !3059, file: !157, line: 1017, type: !66)
!3059 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !157, file: !157, line: 1017, type: !3060, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!124, !66, !29, !29, !29, !33}
!3062 = !{!3058, !3063, !3064, !3065, !3066, !3067}
!3063 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3059, file: !157, line: 1017, type: !29)
!3064 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3059, file: !157, line: 1018, type: !29)
!3065 = !DILocalVariable(name: "arg", arg: 4, scope: !3059, file: !157, line: 1019, type: !29)
!3066 = !DILocalVariable(name: "argsize", arg: 5, scope: !3059, file: !157, line: 1019, type: !33)
!3067 = !DILocalVariable(name: "o", scope: !3059, file: !157, line: 1021, type: !164)
!3068 = !DILocation(line: 1017, column: 28, scope: !3059, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 1012, column: 10, scope: !3046)
!3070 = !DILocation(line: 1017, column: 43, scope: !3059, inlinedAt: !3069)
!3071 = !DILocation(line: 1018, column: 36, scope: !3059, inlinedAt: !3069)
!3072 = !DILocation(line: 1019, column: 36, scope: !3059, inlinedAt: !3069)
!3073 = !DILocation(line: 1019, column: 48, scope: !3059, inlinedAt: !3069)
!3074 = !DILocation(line: 1021, column: 3, scope: !3059, inlinedAt: !3069)
!3075 = !DILocation(line: 1021, column: 30, scope: !3059, inlinedAt: !3069)
!3076 = !DILocation(line: 1021, column: 26, scope: !3059, inlinedAt: !3069)
!3077 = !DILocation(line: 171, column: 45, scope: !1683, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 1022, column: 3, scope: !3059, inlinedAt: !3069)
!3079 = !DILocation(line: 172, column: 33, scope: !1683, inlinedAt: !3078)
!3080 = !DILocation(line: 172, column: 57, scope: !1683, inlinedAt: !3078)
!3081 = !DILocation(line: 176, column: 6, scope: !1683, inlinedAt: !3078)
!3082 = !DILocation(line: 176, column: 12, scope: !1683, inlinedAt: !3078)
!3083 = !DILocation(line: 177, column: 8, scope: !1699, inlinedAt: !3078)
!3084 = !DILocation(line: 177, column: 23, scope: !1699, inlinedAt: !3078)
!3085 = !DILocation(line: 177, column: 19, scope: !1699, inlinedAt: !3078)
!3086 = !DILocation(line: 178, column: 5, scope: !1699, inlinedAt: !3078)
!3087 = !DILocation(line: 179, column: 6, scope: !1683, inlinedAt: !3078)
!3088 = !DILocation(line: 179, column: 17, scope: !1683, inlinedAt: !3078)
!3089 = !DILocation(line: 180, column: 6, scope: !1683, inlinedAt: !3078)
!3090 = !DILocation(line: 180, column: 18, scope: !1683, inlinedAt: !3078)
!3091 = !DILocation(line: 1023, column: 10, scope: !3059, inlinedAt: !3069)
!3092 = !DILocation(line: 1024, column: 1, scope: !3059, inlinedAt: !3069)
!3093 = !DILocation(line: 1012, column: 3, scope: !3046)
!3094 = !DILocation(line: 1017, column: 28, scope: !3059)
!3095 = !DILocation(line: 1017, column: 43, scope: !3059)
!3096 = !DILocation(line: 1018, column: 36, scope: !3059)
!3097 = !DILocation(line: 1019, column: 36, scope: !3059)
!3098 = !DILocation(line: 1019, column: 48, scope: !3059)
!3099 = !DILocation(line: 1021, column: 3, scope: !3059)
!3100 = !DILocation(line: 1021, column: 30, scope: !3059)
!3101 = !DILocation(line: 1021, column: 26, scope: !3059)
!3102 = !DILocation(line: 171, column: 45, scope: !1683, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 1022, column: 3, scope: !3059)
!3104 = !DILocation(line: 172, column: 33, scope: !1683, inlinedAt: !3103)
!3105 = !DILocation(line: 172, column: 57, scope: !1683, inlinedAt: !3103)
!3106 = !DILocation(line: 176, column: 6, scope: !1683, inlinedAt: !3103)
!3107 = !DILocation(line: 176, column: 12, scope: !1683, inlinedAt: !3103)
!3108 = !DILocation(line: 177, column: 8, scope: !1699, inlinedAt: !3103)
!3109 = !DILocation(line: 177, column: 23, scope: !1699, inlinedAt: !3103)
!3110 = !DILocation(line: 177, column: 19, scope: !1699, inlinedAt: !3103)
!3111 = !DILocation(line: 178, column: 5, scope: !1699, inlinedAt: !3103)
!3112 = !DILocation(line: 179, column: 6, scope: !1683, inlinedAt: !3103)
!3113 = !DILocation(line: 179, column: 17, scope: !1683, inlinedAt: !3103)
!3114 = !DILocation(line: 180, column: 6, scope: !1683, inlinedAt: !3103)
!3115 = !DILocation(line: 180, column: 18, scope: !1683, inlinedAt: !3103)
!3116 = !DILocation(line: 1023, column: 10, scope: !3059)
!3117 = !DILocation(line: 1024, column: 1, scope: !3059)
!3118 = !DILocation(line: 1023, column: 3, scope: !3059)
!3119 = distinct !DISubprogram(name: "quotearg_custom", scope: !157, file: !157, line: 1027, type: !3120, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!124, !29, !29, !29}
!3122 = !{!3123, !3124, !3125}
!3123 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3119, file: !157, line: 1027, type: !29)
!3124 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3119, file: !157, line: 1027, type: !29)
!3125 = !DILocalVariable(name: "arg", arg: 3, scope: !3119, file: !157, line: 1028, type: !29)
!3126 = !DILocation(line: 1027, column: 30, scope: !3119)
!3127 = !DILocation(line: 1027, column: 54, scope: !3119)
!3128 = !DILocation(line: 1028, column: 30, scope: !3119)
!3129 = !DILocation(line: 1009, column: 24, scope: !3046, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 1030, column: 10, scope: !3119)
!3131 = !DILocation(line: 1009, column: 39, scope: !3046, inlinedAt: !3130)
!3132 = !DILocation(line: 1010, column: 32, scope: !3046, inlinedAt: !3130)
!3133 = !DILocation(line: 1010, column: 57, scope: !3046, inlinedAt: !3130)
!3134 = !DILocation(line: 1017, column: 28, scope: !3059, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 1012, column: 10, scope: !3046, inlinedAt: !3130)
!3136 = !DILocation(line: 1017, column: 43, scope: !3059, inlinedAt: !3135)
!3137 = !DILocation(line: 1018, column: 36, scope: !3059, inlinedAt: !3135)
!3138 = !DILocation(line: 1019, column: 36, scope: !3059, inlinedAt: !3135)
!3139 = !DILocation(line: 1019, column: 48, scope: !3059, inlinedAt: !3135)
!3140 = !DILocation(line: 1021, column: 3, scope: !3059, inlinedAt: !3135)
!3141 = !DILocation(line: 1021, column: 30, scope: !3059, inlinedAt: !3135)
!3142 = !DILocation(line: 1021, column: 26, scope: !3059, inlinedAt: !3135)
!3143 = !DILocation(line: 171, column: 45, scope: !1683, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 1022, column: 3, scope: !3059, inlinedAt: !3135)
!3145 = !DILocation(line: 172, column: 33, scope: !1683, inlinedAt: !3144)
!3146 = !DILocation(line: 172, column: 57, scope: !1683, inlinedAt: !3144)
!3147 = !DILocation(line: 176, column: 6, scope: !1683, inlinedAt: !3144)
!3148 = !DILocation(line: 176, column: 12, scope: !1683, inlinedAt: !3144)
!3149 = !DILocation(line: 177, column: 8, scope: !1699, inlinedAt: !3144)
!3150 = !DILocation(line: 177, column: 23, scope: !1699, inlinedAt: !3144)
!3151 = !DILocation(line: 177, column: 19, scope: !1699, inlinedAt: !3144)
!3152 = !DILocation(line: 178, column: 5, scope: !1699, inlinedAt: !3144)
!3153 = !DILocation(line: 179, column: 6, scope: !1683, inlinedAt: !3144)
!3154 = !DILocation(line: 179, column: 17, scope: !1683, inlinedAt: !3144)
!3155 = !DILocation(line: 180, column: 6, scope: !1683, inlinedAt: !3144)
!3156 = !DILocation(line: 180, column: 18, scope: !1683, inlinedAt: !3144)
!3157 = !DILocation(line: 1023, column: 10, scope: !3059, inlinedAt: !3135)
!3158 = !DILocation(line: 1024, column: 1, scope: !3059, inlinedAt: !3135)
!3159 = !DILocation(line: 1030, column: 3, scope: !3119)
!3160 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !157, file: !157, line: 1034, type: !3161, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!124, !29, !29, !29, !33}
!3163 = !{!3164, !3165, !3166, !3167}
!3164 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3160, file: !157, line: 1034, type: !29)
!3165 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3160, file: !157, line: 1034, type: !29)
!3166 = !DILocalVariable(name: "arg", arg: 3, scope: !3160, file: !157, line: 1035, type: !29)
!3167 = !DILocalVariable(name: "argsize", arg: 4, scope: !3160, file: !157, line: 1035, type: !33)
!3168 = !DILocation(line: 1034, column: 34, scope: !3160)
!3169 = !DILocation(line: 1034, column: 58, scope: !3160)
!3170 = !DILocation(line: 1035, column: 34, scope: !3160)
!3171 = !DILocation(line: 1035, column: 46, scope: !3160)
!3172 = !DILocation(line: 1017, column: 28, scope: !3059, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 1037, column: 10, scope: !3160)
!3174 = !DILocation(line: 1017, column: 43, scope: !3059, inlinedAt: !3173)
!3175 = !DILocation(line: 1018, column: 36, scope: !3059, inlinedAt: !3173)
!3176 = !DILocation(line: 1019, column: 36, scope: !3059, inlinedAt: !3173)
!3177 = !DILocation(line: 1019, column: 48, scope: !3059, inlinedAt: !3173)
!3178 = !DILocation(line: 1021, column: 3, scope: !3059, inlinedAt: !3173)
!3179 = !DILocation(line: 1021, column: 30, scope: !3059, inlinedAt: !3173)
!3180 = !DILocation(line: 1021, column: 26, scope: !3059, inlinedAt: !3173)
!3181 = !DILocation(line: 171, column: 45, scope: !1683, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 1022, column: 3, scope: !3059, inlinedAt: !3173)
!3183 = !DILocation(line: 172, column: 33, scope: !1683, inlinedAt: !3182)
!3184 = !DILocation(line: 172, column: 57, scope: !1683, inlinedAt: !3182)
!3185 = !DILocation(line: 176, column: 6, scope: !1683, inlinedAt: !3182)
!3186 = !DILocation(line: 176, column: 12, scope: !1683, inlinedAt: !3182)
!3187 = !DILocation(line: 177, column: 8, scope: !1699, inlinedAt: !3182)
!3188 = !DILocation(line: 177, column: 23, scope: !1699, inlinedAt: !3182)
!3189 = !DILocation(line: 177, column: 19, scope: !1699, inlinedAt: !3182)
!3190 = !DILocation(line: 178, column: 5, scope: !1699, inlinedAt: !3182)
!3191 = !DILocation(line: 179, column: 6, scope: !1683, inlinedAt: !3182)
!3192 = !DILocation(line: 179, column: 17, scope: !1683, inlinedAt: !3182)
!3193 = !DILocation(line: 180, column: 6, scope: !1683, inlinedAt: !3182)
!3194 = !DILocation(line: 180, column: 18, scope: !1683, inlinedAt: !3182)
!3195 = !DILocation(line: 1023, column: 10, scope: !3059, inlinedAt: !3173)
!3196 = !DILocation(line: 1024, column: 1, scope: !3059, inlinedAt: !3173)
!3197 = !DILocation(line: 1037, column: 3, scope: !3160)
!3198 = distinct !DISubprogram(name: "quote_n_mem", scope: !157, file: !157, line: 1052, type: !3199, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!29, !66, !29, !33}
!3201 = !{!3202, !3203, !3204}
!3202 = !DILocalVariable(name: "n", arg: 1, scope: !3198, file: !157, line: 1052, type: !66)
!3203 = !DILocalVariable(name: "arg", arg: 2, scope: !3198, file: !157, line: 1052, type: !29)
!3204 = !DILocalVariable(name: "argsize", arg: 3, scope: !3198, file: !157, line: 1052, type: !33)
!3205 = !DILocation(line: 1052, column: 18, scope: !3198)
!3206 = !DILocation(line: 1052, column: 33, scope: !3198)
!3207 = !DILocation(line: 1052, column: 45, scope: !3198)
!3208 = !DILocation(line: 1054, column: 10, scope: !3198)
!3209 = !DILocation(line: 1054, column: 3, scope: !3198)
!3210 = distinct !DISubprogram(name: "quote_mem", scope: !157, file: !157, line: 1058, type: !3211, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!29, !29, !33}
!3213 = !{!3214, !3215}
!3214 = !DILocalVariable(name: "arg", arg: 1, scope: !3210, file: !157, line: 1058, type: !29)
!3215 = !DILocalVariable(name: "argsize", arg: 2, scope: !3210, file: !157, line: 1058, type: !33)
!3216 = !DILocation(line: 1058, column: 24, scope: !3210)
!3217 = !DILocation(line: 1058, column: 36, scope: !3210)
!3218 = !DILocation(line: 1052, column: 18, scope: !3198, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 1060, column: 10, scope: !3210)
!3220 = !DILocation(line: 1052, column: 33, scope: !3198, inlinedAt: !3219)
!3221 = !DILocation(line: 1052, column: 45, scope: !3198, inlinedAt: !3219)
!3222 = !DILocation(line: 1054, column: 10, scope: !3198, inlinedAt: !3219)
!3223 = !DILocation(line: 1060, column: 3, scope: !3210)
!3224 = distinct !DISubprogram(name: "quote_n", scope: !157, file: !157, line: 1064, type: !3225, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!29, !66, !29}
!3227 = !{!3228, !3229}
!3228 = !DILocalVariable(name: "n", arg: 1, scope: !3224, file: !157, line: 1064, type: !66)
!3229 = !DILocalVariable(name: "arg", arg: 2, scope: !3224, file: !157, line: 1064, type: !29)
!3230 = !DILocation(line: 1064, column: 14, scope: !3224)
!3231 = !DILocation(line: 1064, column: 29, scope: !3224)
!3232 = !DILocation(line: 1052, column: 18, scope: !3198, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 1066, column: 10, scope: !3224)
!3234 = !DILocation(line: 1052, column: 33, scope: !3198, inlinedAt: !3233)
!3235 = !DILocation(line: 1052, column: 45, scope: !3198, inlinedAt: !3233)
!3236 = !DILocation(line: 1054, column: 10, scope: !3198, inlinedAt: !3233)
!3237 = !DILocation(line: 1066, column: 3, scope: !3224)
!3238 = distinct !DISubprogram(name: "quote", scope: !157, file: !157, line: 1070, type: !3239, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!29, !29}
!3241 = !{!3242}
!3242 = !DILocalVariable(name: "arg", arg: 1, scope: !3238, file: !157, line: 1070, type: !29)
!3243 = !DILocation(line: 1070, column: 20, scope: !3238)
!3244 = !DILocation(line: 1064, column: 14, scope: !3224, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 1072, column: 10, scope: !3238)
!3246 = !DILocation(line: 1064, column: 29, scope: !3224, inlinedAt: !3245)
!3247 = !DILocation(line: 1052, column: 18, scope: !3198, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 1066, column: 10, scope: !3224, inlinedAt: !3245)
!3249 = !DILocation(line: 1052, column: 33, scope: !3198, inlinedAt: !3248)
!3250 = !DILocation(line: 1052, column: 45, scope: !3198, inlinedAt: !3248)
!3251 = !DILocation(line: 1054, column: 10, scope: !3198, inlinedAt: !3248)
!3252 = !DILocation(line: 1072, column: 3, scope: !3238)
!3253 = distinct !DISubprogram(name: "init_tokenbuffer", scope: !564, file: !564, line: 44, type: !3254, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3262)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{null, !3256}
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !717, line: 31, baseType: !3258)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !717, line: 26, size: 128, elements: !3259)
!3259 = !{!3260, !3261}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3258, file: !717, line: 28, baseType: !33, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3258, file: !717, line: 29, baseType: !124, size: 64, offset: 64)
!3262 = !{!3263}
!3263 = !DILocalVariable(name: "tokenbuffer", arg: 1, scope: !3253, file: !564, line: 44, type: !3256)
!3264 = !DILocation(line: 44, column: 33, scope: !3253)
!3265 = !DILocation(line: 48, column: 1, scope: !3253)
!3266 = !DILocation(line: 47, column: 23, scope: !3253)
!3267 = distinct !DISubprogram(name: "readtoken", scope: !564, file: !564, line: 80, type: !3268, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3310)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!33, !3270, !29, !33, !3256}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1287, line: 7, baseType: !3272)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1289, line: 241, size: 1728, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3272, file: !1289, line: 242, baseType: !66, size: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3272, file: !1289, line: 247, baseType: !124, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3272, file: !1289, line: 248, baseType: !124, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3272, file: !1289, line: 249, baseType: !124, size: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3272, file: !1289, line: 250, baseType: !124, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3272, file: !1289, line: 251, baseType: !124, size: 64, offset: 320)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3272, file: !1289, line: 252, baseType: !124, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3272, file: !1289, line: 253, baseType: !124, size: 64, offset: 448)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3272, file: !1289, line: 254, baseType: !124, size: 64, offset: 512)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3272, file: !1289, line: 256, baseType: !124, size: 64, offset: 576)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3272, file: !1289, line: 257, baseType: !124, size: 64, offset: 640)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3272, file: !1289, line: 258, baseType: !124, size: 64, offset: 704)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3272, file: !1289, line: 260, baseType: !3287, size: 64, offset: 768)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1289, line: 156, size: 192, elements: !3289)
!3289 = !{!3290, !3291, !3293}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3288, file: !1289, line: 157, baseType: !3287, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3288, file: !1289, line: 158, baseType: !3292, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3288, file: !1289, line: 162, baseType: !66, size: 32, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3272, file: !1289, line: 262, baseType: !3292, size: 64, offset: 832)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3272, file: !1289, line: 264, baseType: !66, size: 32, offset: 896)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3272, file: !1289, line: 268, baseType: !66, size: 32, offset: 928)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3272, file: !1289, line: 270, baseType: !1265, size: 64, offset: 960)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3272, file: !1289, line: 274, baseType: !153, size: 16, offset: 1024)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3272, file: !1289, line: 275, baseType: !1317, size: 8, offset: 1040)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3272, file: !1289, line: 276, baseType: !1319, size: 8, offset: 1048)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3272, file: !1289, line: 280, baseType: !1323, size: 64, offset: 1088)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3272, file: !1289, line: 289, baseType: !1326, size: 64, offset: 1152)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3272, file: !1289, line: 297, baseType: !32, size: 64, offset: 1216)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3272, file: !1289, line: 298, baseType: !32, size: 64, offset: 1280)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3272, file: !1289, line: 299, baseType: !32, size: 64, offset: 1344)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3272, file: !1289, line: 300, baseType: !32, size: 64, offset: 1408)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3272, file: !1289, line: 302, baseType: !33, size: 64, offset: 1472)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3272, file: !1289, line: 303, baseType: !66, size: 32, offset: 1536)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3272, file: !1289, line: 305, baseType: !1334, size: 160, offset: 1568)
!3310 = !{!3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3322}
!3311 = !DILocalVariable(name: "stream", arg: 1, scope: !3267, file: !564, line: 80, type: !3270)
!3312 = !DILocalVariable(name: "delim", arg: 2, scope: !3267, file: !564, line: 81, type: !29)
!3313 = !DILocalVariable(name: "n_delim", arg: 3, scope: !3267, file: !564, line: 82, type: !33)
!3314 = !DILocalVariable(name: "tokenbuffer", arg: 4, scope: !3267, file: !564, line: 83, type: !3256)
!3315 = !DILocalVariable(name: "p", scope: !3267, file: !564, line: 85, type: !124)
!3316 = !DILocalVariable(name: "c", scope: !3267, file: !564, line: 86, type: !66)
!3317 = !DILocalVariable(name: "i", scope: !3267, file: !564, line: 87, type: !33)
!3318 = !DILocalVariable(name: "n", scope: !3267, file: !564, line: 87, type: !33)
!3319 = !DILocalVariable(name: "isdelim", scope: !3267, file: !564, line: 88, type: !3320)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3321, size: 256, elements: !1794)
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "word", file: !564, line: 50, baseType: !33)
!3322 = !DILocalVariable(name: "ch", scope: !3323, file: !564, line: 93, type: !551)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !564, line: 92, column: 5)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !564, line: 91, column: 3)
!3325 = distinct !DILexicalBlock(scope: !3267, file: !564, line: 91, column: 3)
!3326 = !DILocation(line: 80, column: 18, scope: !3267)
!3327 = !DILocation(line: 81, column: 24, scope: !3267)
!3328 = !DILocation(line: 82, column: 19, scope: !3267)
!3329 = !DILocation(line: 83, column: 26, scope: !3267)
!3330 = !DILocation(line: 88, column: 3, scope: !3267)
!3331 = !DILocation(line: 88, column: 8, scope: !3267)
!3332 = !DILocation(line: 90, column: 3, scope: !3267)
!3333 = !DILocation(line: 87, column: 10, scope: !3267)
!3334 = !DILocation(line: 91, column: 17, scope: !3324)
!3335 = !DILocation(line: 91, column: 3, scope: !3325)
!3336 = !DILocation(line: 93, column: 26, scope: !3323)
!3337 = !DILocation(line: 93, column: 21, scope: !3323)
!3338 = !DILocation(line: 94, column: 20, scope: !3323)
!3339 = !DILocalVariable(name: "n", arg: 1, scope: !3340, file: !564, line: 60, type: !33)
!3340 = distinct !DISubprogram(name: "set_nth_bit", scope: !564, file: !564, line: 60, type: !3341, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3344)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{null, !33, !3343}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3344 = !{!3339, !3345, !3346}
!3345 = !DILocalVariable(name: "bitset", arg: 2, scope: !3340, file: !564, line: 60, type: !3343)
!3346 = !DILocalVariable(name: "one", scope: !3340, file: !564, line: 62, type: !33)
!3347 = !DILocation(line: 60, column: 21, scope: !3340, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 94, column: 7, scope: !3323)
!3349 = !DIExpression(DW_OP_stack_value)
!3350 = !DILocation(line: 60, column: 30, scope: !3340, inlinedAt: !3348)
!3351 = !DILocation(line: 62, column: 10, scope: !3340, inlinedAt: !3348)
!3352 = !DILocation(line: 63, column: 41, scope: !3340, inlinedAt: !3348)
!3353 = !DILocation(line: 63, column: 36, scope: !3340, inlinedAt: !3348)
!3354 = !DILocation(line: 63, column: 12, scope: !3340, inlinedAt: !3348)
!3355 = !DILocation(line: 63, column: 3, scope: !3340, inlinedAt: !3348)
!3356 = !DILocation(line: 63, column: 29, scope: !3340, inlinedAt: !3348)
!3357 = !DILocation(line: 91, column: 29, scope: !3324)
!3358 = distinct !{!3358, !3335, !3359}
!3359 = !DILocation(line: 95, column: 5, scope: !3325)
!3360 = !DILocation(line: 98, column: 8, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3267, file: !564, line: 98, column: 3)
!3362 = !DILocalVariable(name: "__fp", arg: 1, scope: !3363, file: !3364, line: 63, type: !3270)
!3363 = distinct !DISubprogram(name: "getc_unlocked", scope: !3364, file: !3364, line: 63, type: !3365, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3367)
!3364 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!66, !3270}
!3367 = !{!3362}
!3368 = !DILocation(line: 63, column: 22, scope: !3363, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 98, column: 67, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3361, file: !564, line: 98, column: 3)
!3371 = !DILocation(line: 65, column: 10, scope: !3363, inlinedAt: !3369)
!3372 = !{!3373, !636, i64 8}
!3373 = !{!"_IO_FILE", !691, i64 0, !636, i64 8, !636, i64 16, !636, i64 24, !636, i64 32, !636, i64 40, !636, i64 48, !636, i64 56, !636, i64 64, !636, i64 72, !636, i64 80, !636, i64 88, !636, i64 96, !636, i64 104, !691, i64 112, !691, i64 116, !770, i64 120, !2033, i64 128, !637, i64 130, !637, i64 131, !636, i64 136, !770, i64 144, !636, i64 152, !636, i64 160, !636, i64 168, !636, i64 176, !770, i64 184, !691, i64 192, !637, i64 196}
!3374 = !{!3373, !636, i64 16}
!3375 = !{!"branch_weights", i32 2000, i32 1}
!3376 = !DILocation(line: 86, column: 7, scope: !3267)
!3377 = !DILocation(line: 98, column: 34, scope: !3370)
!3378 = !DILocation(line: 98, column: 29, scope: !3370)
!3379 = !DILocation(line: 98, column: 50, scope: !3370)
!3380 = !DILocalVariable(name: "n", arg: 1, scope: !3381, file: !564, line: 54, type: !33)
!3381 = distinct !DISubprogram(name: "get_nth_bit", scope: !564, file: !564, line: 54, type: !3382, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3386)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!93, !33, !3384}
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3321)
!3386 = !{!3380, !3387}
!3387 = !DILocalVariable(name: "bitset", arg: 2, scope: !3381, file: !564, line: 54, type: !3384)
!3388 = !DILocation(line: 54, column: 21, scope: !3381, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 98, column: 37, scope: !3370)
!3390 = !DILocation(line: 54, column: 36, scope: !3381, inlinedAt: !3389)
!3391 = !DILocation(line: 56, column: 19, scope: !3381, inlinedAt: !3389)
!3392 = !DILocation(line: 56, column: 10, scope: !3381, inlinedAt: !3389)
!3393 = !DILocation(line: 56, column: 41, scope: !3381, inlinedAt: !3389)
!3394 = !DILocation(line: 98, column: 3, scope: !3361)
!3395 = distinct !{!3395, !3394, !3396}
!3396 = !DILocation(line: 101, column: 5, scope: !3361)
!3397 = !DILocation(line: 103, column: 20, scope: !3267)
!3398 = !DILocation(line: 85, column: 9, scope: !3267)
!3399 = !DILocation(line: 104, column: 20, scope: !3267)
!3400 = !DILocation(line: 87, column: 13, scope: !3267)
!3401 = !{!769, !770, i64 0}
!3402 = !DILocation(line: 108, column: 17, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !564, line: 108, column: 11)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !564, line: 107, column: 5)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !564, line: 106, column: 3)
!3406 = distinct !DILexicalBlock(scope: !3267, file: !564, line: 106, column: 3)
!3407 = !DILocation(line: 111, column: 13, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3404, file: !564, line: 111, column: 11)
!3409 = !DILocation(line: 111, column: 11, scope: !3404)
!3410 = !DILocation(line: 180, column: 19, scope: !569, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 112, column: 13, scope: !3408)
!3412 = !DILocation(line: 180, column: 41, scope: !569, inlinedAt: !3411)
!3413 = !DILocation(line: 182, column: 10, scope: !569, inlinedAt: !3411)
!3414 = !DILocation(line: 184, column: 9, scope: !3415, inlinedAt: !3411)
!3415 = distinct !DILexicalBlock(scope: !569, file: !568, line: 184, column: 7)
!3416 = !DILocation(line: 184, column: 7, scope: !569, inlinedAt: !3411)
!3417 = !DILocation(line: 186, column: 13, scope: !3418, inlinedAt: !3411)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !568, line: 186, column: 11)
!3419 = distinct !DILexicalBlock(scope: !3415, file: !568, line: 185, column: 5)
!3420 = !DILocation(line: 186, column: 11, scope: !3419, inlinedAt: !3411)
!3421 = !DILocation(line: 205, column: 11, scope: !3422, inlinedAt: !3411)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !568, line: 204, column: 11)
!3423 = distinct !DILexicalBlock(scope: !3415, file: !568, line: 199, column: 5)
!3424 = !DILocation(line: 204, column: 11, scope: !3423, inlinedAt: !3411)
!3425 = !DILocation(line: 206, column: 9, scope: !3422, inlinedAt: !3411)
!3426 = !DILocation(line: 207, column: 14, scope: !3423, inlinedAt: !3411)
!3427 = !DILocation(line: 207, column: 18, scope: !3423, inlinedAt: !3411)
!3428 = !DILocation(line: 207, column: 9, scope: !3423, inlinedAt: !3411)
!3429 = !DILocation(line: 211, column: 10, scope: !569, inlinedAt: !3411)
!3430 = !DILocation(line: 112, column: 9, scope: !3408)
!3431 = !DILocation(line: 114, column: 11, scope: !3404)
!3432 = !DILocation(line: 119, column: 24, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3404, file: !564, line: 119, column: 11)
!3434 = !DILocation(line: 54, column: 21, scope: !3381, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 119, column: 11, scope: !3433)
!3436 = !DILocation(line: 54, column: 36, scope: !3381, inlinedAt: !3435)
!3437 = !DILocation(line: 56, column: 19, scope: !3381, inlinedAt: !3435)
!3438 = !DILocation(line: 56, column: 10, scope: !3381, inlinedAt: !3435)
!3439 = !DILocation(line: 56, column: 41, scope: !3381, inlinedAt: !3435)
!3440 = !DILocation(line: 119, column: 11, scope: !3404)
!3441 = !DILocation(line: 124, column: 16, scope: !3404)
!3442 = !DILocation(line: 124, column: 10, scope: !3404)
!3443 = !DILocation(line: 124, column: 7, scope: !3404)
!3444 = !DILocation(line: 124, column: 14, scope: !3404)
!3445 = !DILocation(line: 63, column: 22, scope: !3363, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 125, column: 11, scope: !3404)
!3447 = !DILocation(line: 65, column: 10, scope: !3363, inlinedAt: !3446)
!3448 = !DILocation(line: 108, column: 13, scope: !3403)
!3449 = !DILocation(line: 108, column: 22, scope: !3403)
!3450 = distinct !{!3450, !3451, !3452}
!3451 = !DILocation(line: 106, column: 3, scope: !3406)
!3452 = !DILocation(line: 126, column: 5, scope: !3406)
!3453 = !DILocation(line: 128, column: 23, scope: !3267)
!3454 = !DILocation(line: 129, column: 21, scope: !3267)
!3455 = !DILocation(line: 130, column: 3, scope: !3267)
!3456 = !DILocation(line: 131, column: 1, scope: !3267)
!3457 = distinct !DISubprogram(name: "readtokens", scope: !564, file: !564, line: 141, type: !3458, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3462)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!33, !3270, !33, !29, !33, !3460, !3461}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3479}
!3463 = !DILocalVariable(name: "stream", arg: 1, scope: !3457, file: !564, line: 141, type: !3270)
!3464 = !DILocalVariable(name: "projected_n_tokens", arg: 2, scope: !3457, file: !564, line: 142, type: !33)
!3465 = !DILocalVariable(name: "delim", arg: 3, scope: !3457, file: !564, line: 143, type: !29)
!3466 = !DILocalVariable(name: "n_delim", arg: 4, scope: !3457, file: !564, line: 144, type: !33)
!3467 = !DILocalVariable(name: "tokens_out", arg: 5, scope: !3457, file: !564, line: 145, type: !3460)
!3468 = !DILocalVariable(name: "token_lengths", arg: 6, scope: !3457, file: !564, line: 146, type: !3461)
!3469 = !DILocalVariable(name: "tb", scope: !3457, file: !564, line: 148, type: !3257)
!3470 = !DILocalVariable(name: "token", scope: !3457, file: !564, line: 148, type: !3256)
!3471 = !DILocalVariable(name: "tokens", scope: !3457, file: !564, line: 149, type: !668)
!3472 = !DILocalVariable(name: "lengths", scope: !3457, file: !564, line: 150, type: !572)
!3473 = !DILocalVariable(name: "sz", scope: !3457, file: !564, line: 151, type: !33)
!3474 = !DILocalVariable(name: "n_tokens", scope: !3457, file: !564, line: 152, type: !33)
!3475 = !DILocalVariable(name: "tmp", scope: !3476, file: !564, line: 167, type: !124)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !564, line: 166, column: 5)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !564, line: 165, column: 3)
!3478 = distinct !DILexicalBlock(scope: !3457, file: !564, line: 165, column: 3)
!3479 = !DILocalVariable(name: "token_length", scope: !3476, file: !564, line: 168, type: !33)
!3480 = !DILocation(line: 141, column: 19, scope: !3457)
!3481 = !DILocation(line: 142, column: 20, scope: !3457)
!3482 = !DILocation(line: 143, column: 25, scope: !3457)
!3483 = !DILocation(line: 144, column: 20, scope: !3457)
!3484 = !DILocation(line: 145, column: 21, scope: !3457)
!3485 = !DILocation(line: 146, column: 22, scope: !3457)
!3486 = !DILocation(line: 148, column: 3, scope: !3457)
!3487 = !DILocation(line: 148, column: 21, scope: !3457)
!3488 = !DILocation(line: 154, column: 26, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3457, file: !564, line: 154, column: 7)
!3490 = !DILocation(line: 157, column: 23, scope: !3489)
!3491 = !DILocation(line: 154, column: 7, scope: !3457)
!3492 = !DILocation(line: 151, column: 10, scope: !3457)
!3493 = !DILocalVariable(name: "n", arg: 1, scope: !3494, file: !568, line: 105, type: !33)
!3494 = distinct !DISubprogram(name: "xnmalloc", scope: !568, file: !568, line: 105, type: !3495, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!32, !33, !33}
!3497 = !{!3493, !3498}
!3498 = !DILocalVariable(name: "s", arg: 2, scope: !3494, file: !568, line: 105, type: !33)
!3499 = !DILocation(line: 105, column: 18, scope: !3494, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 160, column: 12, scope: !3457)
!3501 = !DILocation(line: 105, column: 28, scope: !3494, inlinedAt: !3500)
!3502 = !DILocation(line: 107, column: 7, scope: !3503, inlinedAt: !3500)
!3503 = distinct !DILexicalBlock(scope: !3494, file: !568, line: 107, column: 7)
!3504 = !DILocation(line: 107, column: 7, scope: !3494, inlinedAt: !3500)
!3505 = !DILocation(line: 108, column: 5, scope: !3503, inlinedAt: !3500)
!3506 = !DILocation(line: 109, column: 21, scope: !3494, inlinedAt: !3500)
!3507 = !DILocation(line: 109, column: 10, scope: !3494, inlinedAt: !3500)
!3508 = !DILocation(line: 160, column: 12, scope: !3457)
!3509 = !DILocation(line: 149, column: 10, scope: !3457)
!3510 = !DILocation(line: 105, column: 18, scope: !3494, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 161, column: 13, scope: !3457)
!3512 = !DILocation(line: 105, column: 28, scope: !3494, inlinedAt: !3511)
!3513 = !DILocation(line: 109, column: 10, scope: !3494, inlinedAt: !3511)
!3514 = !DILocation(line: 161, column: 13, scope: !3457)
!3515 = !DILocation(line: 150, column: 11, scope: !3457)
!3516 = !DILocation(line: 152, column: 10, scope: !3457)
!3517 = !DILocation(line: 148, column: 16, scope: !3457)
!3518 = !DILocation(line: 44, column: 33, scope: !3253, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 164, column: 3, scope: !3457)
!3520 = !DILocation(line: 47, column: 23, scope: !3253, inlinedAt: !3519)
!3521 = !DILocation(line: 165, column: 3, scope: !3457)
!3522 = !DILocation(line: 168, column: 29, scope: !3476)
!3523 = !DILocation(line: 168, column: 14, scope: !3476)
!3524 = !DILocation(line: 169, column: 20, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3476, file: !564, line: 169, column: 11)
!3526 = !DILocation(line: 169, column: 11, scope: !3476)
!3527 = !DILocation(line: 180, column: 19, scope: !569, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 171, column: 20, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3525, file: !564, line: 170, column: 9)
!3530 = !DILocation(line: 180, column: 41, scope: !569, inlinedAt: !3528)
!3531 = !DILocation(line: 182, column: 10, scope: !569, inlinedAt: !3528)
!3532 = !DILocation(line: 184, column: 9, scope: !3415, inlinedAt: !3528)
!3533 = !DILocation(line: 184, column: 7, scope: !569, inlinedAt: !3528)
!3534 = !DILocation(line: 186, column: 13, scope: !3418, inlinedAt: !3528)
!3535 = !DILocation(line: 205, column: 11, scope: !3422, inlinedAt: !3528)
!3536 = !DILocation(line: 204, column: 11, scope: !3423, inlinedAt: !3528)
!3537 = !DILocation(line: 206, column: 9, scope: !3422, inlinedAt: !3528)
!3538 = !DILocation(line: 207, column: 14, scope: !3423, inlinedAt: !3528)
!3539 = !DILocation(line: 207, column: 18, scope: !3423, inlinedAt: !3528)
!3540 = !DILocation(line: 207, column: 9, scope: !3423, inlinedAt: !3528)
!3541 = !DILocation(line: 211, column: 10, scope: !569, inlinedAt: !3528)
!3542 = !DILocalVariable(name: "p", arg: 1, scope: !3543, file: !568, line: 118, type: !32)
!3543 = distinct !DISubprogram(name: "xnrealloc", scope: !568, file: !568, line: 118, type: !3544, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!32, !32, !33, !33}
!3546 = !{!3542, !3547, !3548}
!3547 = !DILocalVariable(name: "n", arg: 2, scope: !3543, file: !568, line: 118, type: !33)
!3548 = !DILocalVariable(name: "s", arg: 3, scope: !3543, file: !568, line: 118, type: !33)
!3549 = !DILocation(line: 118, column: 18, scope: !3543, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 172, column: 21, scope: !3529)
!3551 = !DILocation(line: 118, column: 28, scope: !3543, inlinedAt: !3550)
!3552 = !DILocation(line: 118, column: 38, scope: !3543, inlinedAt: !3550)
!3553 = !DILocation(line: 120, column: 7, scope: !3543, inlinedAt: !3550)
!3554 = !DILocation(line: 211, column: 25, scope: !569, inlinedAt: !3528)
!3555 = !DILocation(line: 120, column: 7, scope: !3556, inlinedAt: !3550)
!3556 = distinct !DILexicalBlock(scope: !3543, file: !568, line: 120, column: 7)
!3557 = !DILocation(line: 121, column: 5, scope: !3556, inlinedAt: !3550)
!3558 = !DILocation(line: 171, column: 20, scope: !3529)
!3559 = !DILocation(line: 122, column: 10, scope: !3543, inlinedAt: !3550)
!3560 = !DILocation(line: 172, column: 21, scope: !3529)
!3561 = !DILocation(line: 173, column: 9, scope: !3529)
!3562 = !DILocation(line: 175, column: 24, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3476, file: !564, line: 175, column: 11)
!3564 = !DILocation(line: 175, column: 11, scope: !3476)
!3565 = !DILocation(line: 182, column: 36, scope: !3476)
!3566 = !DILocation(line: 105, column: 18, scope: !3494, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 182, column: 13, scope: !3476)
!3568 = !DILocation(line: 105, column: 28, scope: !3494, inlinedAt: !3567)
!3569 = !DILocation(line: 107, column: 7, scope: !3503, inlinedAt: !3567)
!3570 = !DILocation(line: 107, column: 7, scope: !3494, inlinedAt: !3567)
!3571 = !DILocation(line: 108, column: 5, scope: !3503, inlinedAt: !3567)
!3572 = !DILocation(line: 109, column: 10, scope: !3494, inlinedAt: !3567)
!3573 = !DILocation(line: 167, column: 13, scope: !3476)
!3574 = !DILocation(line: 183, column: 7, scope: !3476)
!3575 = !DILocation(line: 183, column: 25, scope: !3476)
!3576 = !DILocation(line: 184, column: 46, scope: !3476)
!3577 = !DILocation(line: 184, column: 26, scope: !3476)
!3578 = !DILocation(line: 184, column: 7, scope: !3476)
!3579 = !DILocation(line: 184, column: 24, scope: !3476)
!3580 = !DILocation(line: 185, column: 15, scope: !3476)
!3581 = !DILocation(line: 165, column: 3, scope: !3477)
!3582 = distinct !{!3582, !3583, !3584}
!3583 = !DILocation(line: 165, column: 3, scope: !3478)
!3584 = !DILocation(line: 186, column: 5, scope: !3478)
!3585 = !DILocation(line: 178, column: 11, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3563, file: !564, line: 176, column: 9)
!3587 = !DILocation(line: 178, column: 28, scope: !3586)
!3588 = !DILocation(line: 179, column: 11, scope: !3586)
!3589 = !DILocation(line: 179, column: 29, scope: !3586)
!3590 = !DILocation(line: 188, column: 16, scope: !3457)
!3591 = !DILocation(line: 188, column: 3, scope: !3457)
!3592 = !DILocation(line: 189, column: 15, scope: !3457)
!3593 = !DILocation(line: 190, column: 21, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3457, file: !564, line: 190, column: 7)
!3595 = !DILocation(line: 190, column: 7, scope: !3457)
!3596 = !DILocation(line: 191, column: 20, scope: !3594)
!3597 = !DILocation(line: 191, column: 5, scope: !3594)
!3598 = !DILocation(line: 193, column: 5, scope: !3594)
!3599 = !DILocation(line: 195, column: 1, scope: !3457)
!3600 = !DILocation(line: 194, column: 3, scope: !3457)
!3601 = distinct !DISubprogram(name: "version_etc_arn", scope: !585, file: !585, line: 62, type: !3602, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !3645)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !3604, !29, !29, !29, !3644, !33}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1287, line: 7, baseType: !3606)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1289, line: 241, size: 1728, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3606, file: !1289, line: 242, baseType: !66, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3606, file: !1289, line: 247, baseType: !124, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3606, file: !1289, line: 248, baseType: !124, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3606, file: !1289, line: 249, baseType: !124, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3606, file: !1289, line: 250, baseType: !124, size: 64, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3606, file: !1289, line: 251, baseType: !124, size: 64, offset: 320)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3606, file: !1289, line: 252, baseType: !124, size: 64, offset: 384)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3606, file: !1289, line: 253, baseType: !124, size: 64, offset: 448)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3606, file: !1289, line: 254, baseType: !124, size: 64, offset: 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3606, file: !1289, line: 256, baseType: !124, size: 64, offset: 576)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3606, file: !1289, line: 257, baseType: !124, size: 64, offset: 640)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3606, file: !1289, line: 258, baseType: !124, size: 64, offset: 704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3606, file: !1289, line: 260, baseType: !3621, size: 64, offset: 768)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1289, line: 156, size: 192, elements: !3623)
!3623 = !{!3624, !3625, !3627}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3622, file: !1289, line: 157, baseType: !3621, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3622, file: !1289, line: 158, baseType: !3626, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3622, file: !1289, line: 162, baseType: !66, size: 32, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3606, file: !1289, line: 262, baseType: !3626, size: 64, offset: 832)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3606, file: !1289, line: 264, baseType: !66, size: 32, offset: 896)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3606, file: !1289, line: 268, baseType: !66, size: 32, offset: 928)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3606, file: !1289, line: 270, baseType: !1265, size: 64, offset: 960)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3606, file: !1289, line: 274, baseType: !153, size: 16, offset: 1024)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3606, file: !1289, line: 275, baseType: !1317, size: 8, offset: 1040)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3606, file: !1289, line: 276, baseType: !1319, size: 8, offset: 1048)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3606, file: !1289, line: 280, baseType: !1323, size: 64, offset: 1088)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3606, file: !1289, line: 289, baseType: !1326, size: 64, offset: 1152)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3606, file: !1289, line: 297, baseType: !32, size: 64, offset: 1216)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3606, file: !1289, line: 298, baseType: !32, size: 64, offset: 1280)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3606, file: !1289, line: 299, baseType: !32, size: 64, offset: 1344)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3606, file: !1289, line: 300, baseType: !32, size: 64, offset: 1408)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3606, file: !1289, line: 302, baseType: !33, size: 64, offset: 1472)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3606, file: !1289, line: 303, baseType: !66, size: 32, offset: 1536)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3606, file: !1289, line: 305, baseType: !1334, size: 160, offset: 1568)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!3645 = !{!3646, !3647, !3648, !3649, !3650, !3651}
!3646 = !DILocalVariable(name: "stream", arg: 1, scope: !3601, file: !585, line: 62, type: !3604)
!3647 = !DILocalVariable(name: "command_name", arg: 2, scope: !3601, file: !585, line: 63, type: !29)
!3648 = !DILocalVariable(name: "package", arg: 3, scope: !3601, file: !585, line: 63, type: !29)
!3649 = !DILocalVariable(name: "version", arg: 4, scope: !3601, file: !585, line: 64, type: !29)
!3650 = !DILocalVariable(name: "authors", arg: 5, scope: !3601, file: !585, line: 65, type: !3644)
!3651 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3601, file: !585, line: 65, type: !33)
!3652 = !DILocation(line: 62, column: 24, scope: !3601)
!3653 = !DILocation(line: 63, column: 30, scope: !3601)
!3654 = !DILocation(line: 63, column: 56, scope: !3601)
!3655 = !DILocation(line: 64, column: 30, scope: !3601)
!3656 = !DILocation(line: 65, column: 39, scope: !3601)
!3657 = !DILocation(line: 65, column: 55, scope: !3601)
!3658 = !DILocation(line: 67, column: 7, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3601, file: !585, line: 67, column: 7)
!3660 = !DILocation(line: 67, column: 7, scope: !3601)
!3661 = !DILocation(line: 68, column: 5, scope: !3659)
!3662 = !DILocation(line: 70, column: 5, scope: !3659)
!3663 = !DILocation(line: 84, column: 3, scope: !3601)
!3664 = !DILocation(line: 86, column: 3, scope: !3601)
!3665 = !DILocation(line: 95, column: 3, scope: !3601)
!3666 = !DILocation(line: 99, column: 7, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3601, file: !585, line: 96, column: 5)
!3668 = !DILocation(line: 102, column: 7, scope: !3667)
!3669 = !DILocation(line: 103, column: 7, scope: !3667)
!3670 = !DILocation(line: 106, column: 7, scope: !3667)
!3671 = !DILocation(line: 107, column: 7, scope: !3667)
!3672 = !DILocation(line: 110, column: 7, scope: !3667)
!3673 = !DILocation(line: 112, column: 7, scope: !3667)
!3674 = !DILocation(line: 117, column: 7, scope: !3667)
!3675 = !DILocation(line: 119, column: 7, scope: !3667)
!3676 = !DILocation(line: 124, column: 7, scope: !3667)
!3677 = !DILocation(line: 126, column: 7, scope: !3667)
!3678 = !DILocation(line: 131, column: 7, scope: !3667)
!3679 = !DILocation(line: 134, column: 7, scope: !3667)
!3680 = !DILocation(line: 139, column: 7, scope: !3667)
!3681 = !DILocation(line: 142, column: 7, scope: !3667)
!3682 = !DILocation(line: 147, column: 7, scope: !3667)
!3683 = !DILocation(line: 151, column: 7, scope: !3667)
!3684 = !DILocation(line: 156, column: 7, scope: !3667)
!3685 = !DILocation(line: 160, column: 7, scope: !3667)
!3686 = !DILocation(line: 167, column: 7, scope: !3667)
!3687 = !DILocation(line: 171, column: 7, scope: !3667)
!3688 = !DILocation(line: 173, column: 1, scope: !3601)
!3689 = distinct !DISubprogram(name: "version_etc_ar", scope: !585, file: !585, line: 180, type: !3690, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !3604, !29, !29, !29, !3644}
!3692 = !{!3693, !3694, !3695, !3696, !3697, !3698}
!3693 = !DILocalVariable(name: "stream", arg: 1, scope: !3689, file: !585, line: 180, type: !3604)
!3694 = !DILocalVariable(name: "command_name", arg: 2, scope: !3689, file: !585, line: 181, type: !29)
!3695 = !DILocalVariable(name: "package", arg: 3, scope: !3689, file: !585, line: 181, type: !29)
!3696 = !DILocalVariable(name: "version", arg: 4, scope: !3689, file: !585, line: 182, type: !29)
!3697 = !DILocalVariable(name: "authors", arg: 5, scope: !3689, file: !585, line: 182, type: !3644)
!3698 = !DILocalVariable(name: "n_authors", scope: !3689, file: !585, line: 184, type: !33)
!3699 = !DILocation(line: 180, column: 23, scope: !3689)
!3700 = !DILocation(line: 181, column: 29, scope: !3689)
!3701 = !DILocation(line: 181, column: 55, scope: !3689)
!3702 = !DILocation(line: 182, column: 29, scope: !3689)
!3703 = !DILocation(line: 182, column: 59, scope: !3689)
!3704 = !DILocation(line: 184, column: 10, scope: !3689)
!3705 = !DILocation(line: 186, column: 8, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3689, file: !585, line: 186, column: 3)
!3707 = !DILocation(line: 186, column: 23, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3706, file: !585, line: 186, column: 3)
!3709 = !DILocation(line: 186, column: 3, scope: !3706)
!3710 = !DILocation(line: 186, column: 52, scope: !3708)
!3711 = distinct !{!3711, !3709, !3712}
!3712 = !DILocation(line: 187, column: 5, scope: !3706)
!3713 = !DILocation(line: 188, column: 3, scope: !3689)
!3714 = !DILocation(line: 189, column: 1, scope: !3689)
!3715 = distinct !DISubprogram(name: "version_etc_va", scope: !585, file: !585, line: 196, type: !3716, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !3725)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{null, !3604, !29, !29, !29, !3718}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !582, line: 189, size: 192, elements: !3720)
!3720 = !{!3721, !3722, !3723, !3724}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3719, file: !582, line: 189, baseType: !170, size: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3719, file: !582, line: 189, baseType: !170, size: 32, offset: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3719, file: !582, line: 189, baseType: !32, size: 64, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3719, file: !582, line: 189, baseType: !32, size: 64, offset: 128)
!3725 = !{!3726, !3727, !3728, !3729, !3730, !3731, !3732}
!3726 = !DILocalVariable(name: "stream", arg: 1, scope: !3715, file: !585, line: 196, type: !3604)
!3727 = !DILocalVariable(name: "command_name", arg: 2, scope: !3715, file: !585, line: 197, type: !29)
!3728 = !DILocalVariable(name: "package", arg: 3, scope: !3715, file: !585, line: 197, type: !29)
!3729 = !DILocalVariable(name: "version", arg: 4, scope: !3715, file: !585, line: 198, type: !29)
!3730 = !DILocalVariable(name: "authors", arg: 5, scope: !3715, file: !585, line: 198, type: !3718)
!3731 = !DILocalVariable(name: "n_authors", scope: !3715, file: !585, line: 200, type: !33)
!3732 = !DILocalVariable(name: "authtab", scope: !3715, file: !585, line: 201, type: !3733)
!3733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 640, elements: !160)
!3734 = !DILocation(line: 196, column: 23, scope: !3715)
!3735 = !DILocation(line: 197, column: 29, scope: !3715)
!3736 = !DILocation(line: 197, column: 55, scope: !3715)
!3737 = !DILocation(line: 198, column: 29, scope: !3715)
!3738 = !DILocation(line: 198, column: 46, scope: !3715)
!3739 = !DILocation(line: 201, column: 3, scope: !3715)
!3740 = !DILocation(line: 201, column: 15, scope: !3715)
!3741 = !DILocation(line: 200, column: 10, scope: !3715)
!3742 = !DILocation(line: 205, column: 35, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !585, line: 203, column: 3)
!3744 = distinct !DILexicalBlock(scope: !3715, file: !585, line: 203, column: 3)
!3745 = !DILocation(line: 205, column: 14, scope: !3743)
!3746 = !DILocation(line: 205, column: 33, scope: !3743)
!3747 = !DILocation(line: 205, column: 67, scope: !3743)
!3748 = !DILocation(line: 203, column: 3, scope: !3744)
!3749 = !DILocation(line: 208, column: 3, scope: !3715)
!3750 = !DILocation(line: 210, column: 1, scope: !3715)
!3751 = distinct !DISubprogram(name: "version_etc", scope: !585, file: !585, line: 227, type: !3752, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !3754)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{null, !3604, !29, !29, !29, null}
!3754 = !{!3755, !3756, !3757, !3758, !3759}
!3755 = !DILocalVariable(name: "stream", arg: 1, scope: !3751, file: !585, line: 227, type: !3604)
!3756 = !DILocalVariable(name: "command_name", arg: 2, scope: !3751, file: !585, line: 228, type: !29)
!3757 = !DILocalVariable(name: "package", arg: 3, scope: !3751, file: !585, line: 228, type: !29)
!3758 = !DILocalVariable(name: "version", arg: 4, scope: !3751, file: !585, line: 229, type: !29)
!3759 = !DILocalVariable(name: "authors", scope: !3751, file: !585, line: 231, type: !3760)
!3760 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1264, line: 46, baseType: !3761)
!3761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1520, line: 48, baseType: !3762)
!3762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !582, line: 231, baseType: !3763)
!3763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3719, size: 192, elements: !1320)
!3764 = !DILocation(line: 227, column: 20, scope: !3751)
!3765 = !DILocation(line: 228, column: 26, scope: !3751)
!3766 = !DILocation(line: 228, column: 52, scope: !3751)
!3767 = !DILocation(line: 229, column: 26, scope: !3751)
!3768 = !DILocation(line: 231, column: 3, scope: !3751)
!3769 = !DILocation(line: 231, column: 11, scope: !3751)
!3770 = !DILocation(line: 233, column: 3, scope: !3751)
!3771 = !DILocation(line: 234, column: 3, scope: !3751)
!3772 = !DILocation(line: 235, column: 3, scope: !3751)
!3773 = !DILocation(line: 236, column: 1, scope: !3751)
!3774 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !585, file: !585, line: 239, type: !643, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !83)
!3775 = !DILocation(line: 245, column: 3, scope: !3774)
!3776 = !DILocation(line: 251, column: 3, scope: !3774)
!3777 = !DILocation(line: 256, column: 3, scope: !3774)
!3778 = !DILocation(line: 258, column: 1, scope: !3774)
!3779 = distinct !DISubprogram(name: "xnmalloc", scope: !568, file: !568, line: 105, type: !3495, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3780)
!3780 = !{!3781, !3782}
!3781 = !DILocalVariable(name: "n", arg: 1, scope: !3779, file: !568, line: 105, type: !33)
!3782 = !DILocalVariable(name: "s", arg: 2, scope: !3779, file: !568, line: 105, type: !33)
!3783 = !DILocation(line: 105, column: 18, scope: !3779)
!3784 = !DILocation(line: 105, column: 28, scope: !3779)
!3785 = !DILocation(line: 107, column: 7, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3779, file: !568, line: 107, column: 7)
!3787 = !DILocation(line: 107, column: 7, scope: !3779)
!3788 = !DILocation(line: 108, column: 5, scope: !3786)
!3789 = !DILocation(line: 109, column: 21, scope: !3779)
!3790 = !DILocalVariable(name: "n", arg: 1, scope: !3791, file: !3792, line: 39, type: !33)
!3791 = distinct !DISubprogram(name: "xmalloc", scope: !3792, file: !3792, line: 39, type: !3793, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3795)
!3792 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!32, !33}
!3795 = !{!3790, !3796}
!3796 = !DILocalVariable(name: "p", scope: !3791, file: !3792, line: 41, type: !32)
!3797 = !DILocation(line: 39, column: 17, scope: !3791, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 109, column: 10, scope: !3779)
!3799 = !DILocation(line: 41, column: 13, scope: !3791, inlinedAt: !3798)
!3800 = !DILocation(line: 41, column: 9, scope: !3791, inlinedAt: !3798)
!3801 = !DILocation(line: 42, column: 8, scope: !3802, inlinedAt: !3798)
!3802 = distinct !DILexicalBlock(scope: !3791, file: !3792, line: 42, column: 7)
!3803 = !DILocation(line: 42, column: 15, scope: !3802, inlinedAt: !3798)
!3804 = !DILocation(line: 42, column: 10, scope: !3802, inlinedAt: !3798)
!3805 = !DILocation(line: 43, column: 5, scope: !3802, inlinedAt: !3798)
!3806 = !DILocation(line: 109, column: 3, scope: !3779)
!3807 = !DILocation(line: 39, column: 17, scope: !3791)
!3808 = !DILocation(line: 41, column: 13, scope: !3791)
!3809 = !DILocation(line: 41, column: 9, scope: !3791)
!3810 = !DILocation(line: 42, column: 8, scope: !3802)
!3811 = !DILocation(line: 42, column: 15, scope: !3802)
!3812 = !DILocation(line: 42, column: 10, scope: !3802)
!3813 = !DILocation(line: 43, column: 5, scope: !3802)
!3814 = !DILocation(line: 44, column: 3, scope: !3791)
!3815 = distinct !DISubprogram(name: "xnrealloc", scope: !568, file: !568, line: 118, type: !3544, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3816)
!3816 = !{!3817, !3818, !3819}
!3817 = !DILocalVariable(name: "p", arg: 1, scope: !3815, file: !568, line: 118, type: !32)
!3818 = !DILocalVariable(name: "n", arg: 2, scope: !3815, file: !568, line: 118, type: !33)
!3819 = !DILocalVariable(name: "s", arg: 3, scope: !3815, file: !568, line: 118, type: !33)
!3820 = !DILocation(line: 118, column: 18, scope: !3815)
!3821 = !DILocation(line: 118, column: 28, scope: !3815)
!3822 = !DILocation(line: 118, column: 38, scope: !3815)
!3823 = !DILocation(line: 120, column: 7, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3815, file: !568, line: 120, column: 7)
!3825 = !DILocation(line: 120, column: 7, scope: !3815)
!3826 = !DILocation(line: 121, column: 5, scope: !3824)
!3827 = !DILocation(line: 122, column: 25, scope: !3815)
!3828 = !DILocalVariable(name: "p", arg: 1, scope: !3829, file: !3792, line: 51, type: !32)
!3829 = distinct !DISubprogram(name: "xrealloc", scope: !3792, file: !3792, line: 51, type: !3830, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!32, !32, !33}
!3832 = !{!3828, !3833}
!3833 = !DILocalVariable(name: "n", arg: 2, scope: !3829, file: !3792, line: 51, type: !33)
!3834 = !DILocation(line: 51, column: 17, scope: !3829, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 122, column: 10, scope: !3815)
!3836 = !DILocation(line: 51, column: 27, scope: !3829, inlinedAt: !3835)
!3837 = !DILocation(line: 53, column: 8, scope: !3838, inlinedAt: !3835)
!3838 = distinct !DILexicalBlock(scope: !3829, file: !3792, line: 53, column: 7)
!3839 = !DILocation(line: 53, column: 13, scope: !3838, inlinedAt: !3835)
!3840 = !DILocation(line: 53, column: 10, scope: !3838, inlinedAt: !3835)
!3841 = !DILocation(line: 57, column: 7, scope: !3842, inlinedAt: !3835)
!3842 = distinct !DILexicalBlock(scope: !3838, file: !3792, line: 54, column: 5)
!3843 = !DILocation(line: 58, column: 7, scope: !3842, inlinedAt: !3835)
!3844 = !DILocation(line: 61, column: 7, scope: !3829, inlinedAt: !3835)
!3845 = !DILocation(line: 62, column: 8, scope: !3846, inlinedAt: !3835)
!3846 = distinct !DILexicalBlock(scope: !3829, file: !3792, line: 62, column: 7)
!3847 = !DILocation(line: 62, column: 13, scope: !3846, inlinedAt: !3835)
!3848 = !DILocation(line: 62, column: 10, scope: !3846, inlinedAt: !3835)
!3849 = !DILocation(line: 63, column: 5, scope: !3846, inlinedAt: !3835)
!3850 = !DILocation(line: 122, column: 3, scope: !3815)
!3851 = !DILocation(line: 51, column: 17, scope: !3829)
!3852 = !DILocation(line: 51, column: 27, scope: !3829)
!3853 = !DILocation(line: 53, column: 8, scope: !3838)
!3854 = !DILocation(line: 53, column: 13, scope: !3838)
!3855 = !DILocation(line: 53, column: 10, scope: !3838)
!3856 = !DILocation(line: 57, column: 7, scope: !3842)
!3857 = !DILocation(line: 58, column: 7, scope: !3842)
!3858 = !DILocation(line: 61, column: 7, scope: !3829)
!3859 = !DILocation(line: 62, column: 8, scope: !3846)
!3860 = !DILocation(line: 62, column: 13, scope: !3846)
!3861 = !DILocation(line: 62, column: 10, scope: !3846)
!3862 = !DILocation(line: 63, column: 5, scope: !3846)
!3863 = !DILocation(line: 65, column: 1, scope: !3829)
!3864 = !DILocation(line: 180, column: 19, scope: !593)
!3865 = !DILocation(line: 180, column: 30, scope: !593)
!3866 = !DILocation(line: 180, column: 41, scope: !593)
!3867 = !DILocation(line: 182, column: 14, scope: !593)
!3868 = !DILocation(line: 182, column: 10, scope: !593)
!3869 = !DILocation(line: 184, column: 9, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !593, file: !568, line: 184, column: 7)
!3871 = !DILocation(line: 184, column: 7, scope: !593)
!3872 = !DILocation(line: 186, column: 13, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !568, line: 186, column: 11)
!3874 = distinct !DILexicalBlock(scope: !3870, file: !568, line: 185, column: 5)
!3875 = !DILocation(line: 186, column: 11, scope: !3874)
!3876 = !DILocation(line: 194, column: 30, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3873, file: !568, line: 187, column: 9)
!3878 = !DILocation(line: 195, column: 16, scope: !3877)
!3879 = !DILocation(line: 195, column: 13, scope: !3877)
!3880 = !DILocation(line: 196, column: 9, scope: !3877)
!3881 = !DILocation(line: 204, column: 69, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !568, line: 204, column: 11)
!3883 = distinct !DILexicalBlock(scope: !3870, file: !568, line: 199, column: 5)
!3884 = !DILocation(line: 205, column: 11, scope: !3882)
!3885 = !DILocation(line: 204, column: 11, scope: !3883)
!3886 = !DILocation(line: 206, column: 9, scope: !3882)
!3887 = !DILocation(line: 210, column: 7, scope: !593)
!3888 = !DILocation(line: 211, column: 25, scope: !593)
!3889 = !DILocation(line: 51, column: 17, scope: !3829, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 211, column: 10, scope: !593)
!3891 = !DILocation(line: 51, column: 27, scope: !3829, inlinedAt: !3890)
!3892 = !DILocation(line: 53, column: 10, scope: !3838, inlinedAt: !3890)
!3893 = !DILocation(line: 207, column: 14, scope: !3883)
!3894 = !DILocation(line: 207, column: 18, scope: !3883)
!3895 = !DILocation(line: 207, column: 9, scope: !3883)
!3896 = !DILocation(line: 53, column: 8, scope: !3838, inlinedAt: !3890)
!3897 = !DILocation(line: 57, column: 7, scope: !3842, inlinedAt: !3890)
!3898 = !DILocation(line: 58, column: 7, scope: !3842, inlinedAt: !3890)
!3899 = !DILocation(line: 61, column: 7, scope: !3829, inlinedAt: !3890)
!3900 = !DILocation(line: 62, column: 8, scope: !3846, inlinedAt: !3890)
!3901 = !DILocation(line: 62, column: 13, scope: !3846, inlinedAt: !3890)
!3902 = !DILocation(line: 62, column: 10, scope: !3846, inlinedAt: !3890)
!3903 = !DILocation(line: 63, column: 5, scope: !3846, inlinedAt: !3890)
!3904 = !DILocation(line: 211, column: 3, scope: !593)
!3905 = distinct !DISubprogram(name: "xcharalloc", scope: !568, file: !568, line: 220, type: !2532, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3906)
!3906 = !{!3907}
!3907 = !DILocalVariable(name: "n", arg: 1, scope: !3905, file: !568, line: 220, type: !33)
!3908 = !DILocation(line: 220, column: 20, scope: !3905)
!3909 = !DILocation(line: 39, column: 17, scope: !3791, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 222, column: 10, scope: !3905)
!3911 = !DILocation(line: 41, column: 13, scope: !3791, inlinedAt: !3910)
!3912 = !DILocation(line: 41, column: 9, scope: !3791, inlinedAt: !3910)
!3913 = !DILocation(line: 42, column: 8, scope: !3802, inlinedAt: !3910)
!3914 = !DILocation(line: 42, column: 15, scope: !3802, inlinedAt: !3910)
!3915 = !DILocation(line: 42, column: 10, scope: !3802, inlinedAt: !3910)
!3916 = !DILocation(line: 43, column: 5, scope: !3802, inlinedAt: !3910)
!3917 = !DILocation(line: 222, column: 3, scope: !3905)
!3918 = distinct !DISubprogram(name: "x2realloc", scope: !3792, file: !3792, line: 74, type: !3919, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3921)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!32, !32, !572}
!3921 = !{!3922, !3923}
!3922 = !DILocalVariable(name: "p", arg: 1, scope: !3918, file: !3792, line: 74, type: !32)
!3923 = !DILocalVariable(name: "pn", arg: 2, scope: !3918, file: !3792, line: 74, type: !572)
!3924 = !DILocation(line: 74, column: 18, scope: !3918)
!3925 = !DILocation(line: 74, column: 29, scope: !3918)
!3926 = !DILocation(line: 180, column: 19, scope: !593, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 76, column: 10, scope: !3918)
!3928 = !DILocation(line: 180, column: 30, scope: !593, inlinedAt: !3927)
!3929 = !DILocation(line: 180, column: 41, scope: !593, inlinedAt: !3927)
!3930 = !DILocation(line: 182, column: 14, scope: !593, inlinedAt: !3927)
!3931 = !DILocation(line: 182, column: 10, scope: !593, inlinedAt: !3927)
!3932 = !DILocation(line: 184, column: 9, scope: !3870, inlinedAt: !3927)
!3933 = !DILocation(line: 184, column: 7, scope: !593, inlinedAt: !3927)
!3934 = !DILocation(line: 186, column: 13, scope: !3873, inlinedAt: !3927)
!3935 = !DILocation(line: 186, column: 11, scope: !3874, inlinedAt: !3927)
!3936 = !DILocation(line: 210, column: 7, scope: !593, inlinedAt: !3927)
!3937 = !DILocation(line: 51, column: 17, scope: !3829, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 211, column: 10, scope: !593, inlinedAt: !3927)
!3939 = !DILocation(line: 51, column: 27, scope: !3829, inlinedAt: !3938)
!3940 = !DILocation(line: 53, column: 10, scope: !3838, inlinedAt: !3938)
!3941 = !DILocation(line: 205, column: 11, scope: !3882, inlinedAt: !3927)
!3942 = !DILocation(line: 204, column: 11, scope: !3883, inlinedAt: !3927)
!3943 = !DILocation(line: 206, column: 9, scope: !3882, inlinedAt: !3927)
!3944 = !DILocation(line: 207, column: 14, scope: !3883, inlinedAt: !3927)
!3945 = !DILocation(line: 207, column: 18, scope: !3883, inlinedAt: !3927)
!3946 = !DILocation(line: 207, column: 9, scope: !3883, inlinedAt: !3927)
!3947 = !DILocation(line: 53, column: 8, scope: !3838, inlinedAt: !3938)
!3948 = !DILocation(line: 57, column: 7, scope: !3842, inlinedAt: !3938)
!3949 = !DILocation(line: 58, column: 7, scope: !3842, inlinedAt: !3938)
!3950 = !DILocation(line: 61, column: 7, scope: !3829, inlinedAt: !3938)
!3951 = !DILocation(line: 62, column: 8, scope: !3846, inlinedAt: !3938)
!3952 = !DILocation(line: 62, column: 13, scope: !3846, inlinedAt: !3938)
!3953 = !DILocation(line: 62, column: 10, scope: !3846, inlinedAt: !3938)
!3954 = !DILocation(line: 63, column: 5, scope: !3846, inlinedAt: !3938)
!3955 = !DILocation(line: 76, column: 3, scope: !3918)
!3956 = distinct !DISubprogram(name: "xzalloc", scope: !3792, file: !3792, line: 84, type: !3793, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3957)
!3957 = !{!3958}
!3958 = !DILocalVariable(name: "s", arg: 1, scope: !3956, file: !3792, line: 84, type: !33)
!3959 = !DILocation(line: 84, column: 17, scope: !3956)
!3960 = !DILocation(line: 39, column: 17, scope: !3791, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 86, column: 18, scope: !3956)
!3962 = !DILocation(line: 41, column: 13, scope: !3791, inlinedAt: !3961)
!3963 = !DILocation(line: 41, column: 9, scope: !3791, inlinedAt: !3961)
!3964 = !DILocation(line: 42, column: 8, scope: !3802, inlinedAt: !3961)
!3965 = !DILocation(line: 42, column: 15, scope: !3802, inlinedAt: !3961)
!3966 = !DILocation(line: 42, column: 10, scope: !3802, inlinedAt: !3961)
!3967 = !DILocation(line: 43, column: 5, scope: !3802, inlinedAt: !3961)
!3968 = !DILocation(line: 86, column: 10, scope: !3956)
!3969 = !DILocation(line: 86, column: 3, scope: !3956)
!3970 = distinct !DISubprogram(name: "xcalloc", scope: !3792, file: !3792, line: 93, type: !3495, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3971)
!3971 = !{!3972, !3973, !3974}
!3972 = !DILocalVariable(name: "n", arg: 1, scope: !3970, file: !3792, line: 93, type: !33)
!3973 = !DILocalVariable(name: "s", arg: 2, scope: !3970, file: !3792, line: 93, type: !33)
!3974 = !DILocalVariable(name: "p", scope: !3970, file: !3792, line: 95, type: !32)
!3975 = !DILocation(line: 93, column: 17, scope: !3970)
!3976 = !DILocation(line: 93, column: 27, scope: !3970)
!3977 = !DILocation(line: 100, column: 7, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3970, file: !3792, line: 100, column: 7)
!3979 = !DILocation(line: 101, column: 7, scope: !3978)
!3980 = !DILocation(line: 101, column: 18, scope: !3978)
!3981 = !DILocation(line: 95, column: 9, scope: !3970)
!3982 = !DILocation(line: 101, column: 16, scope: !3978)
!3983 = !DILocation(line: 100, column: 7, scope: !3970)
!3984 = !DILocation(line: 102, column: 5, scope: !3978)
!3985 = !DILocation(line: 103, column: 3, scope: !3970)
!3986 = distinct !DISubprogram(name: "xmemdup", scope: !3792, file: !3792, line: 111, type: !3987, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3991)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!32, !3989, !33}
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3991 = !{!3992, !3993}
!3992 = !DILocalVariable(name: "p", arg: 1, scope: !3986, file: !3792, line: 111, type: !3989)
!3993 = !DILocalVariable(name: "s", arg: 2, scope: !3986, file: !3792, line: 111, type: !33)
!3994 = !DILocation(line: 111, column: 22, scope: !3986)
!3995 = !DILocation(line: 111, column: 32, scope: !3986)
!3996 = !DILocation(line: 39, column: 17, scope: !3791, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 113, column: 18, scope: !3986)
!3998 = !DILocation(line: 41, column: 13, scope: !3791, inlinedAt: !3997)
!3999 = !DILocation(line: 41, column: 9, scope: !3791, inlinedAt: !3997)
!4000 = !DILocation(line: 42, column: 8, scope: !3802, inlinedAt: !3997)
!4001 = !DILocation(line: 42, column: 15, scope: !3802, inlinedAt: !3997)
!4002 = !DILocation(line: 42, column: 10, scope: !3802, inlinedAt: !3997)
!4003 = !DILocation(line: 43, column: 5, scope: !3802, inlinedAt: !3997)
!4004 = !DILocation(line: 113, column: 10, scope: !3986)
!4005 = !DILocation(line: 113, column: 3, scope: !3986)
!4006 = distinct !DISubprogram(name: "xstrdup", scope: !3792, file: !3792, line: 119, type: !2732, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !4007)
!4007 = !{!4008}
!4008 = !DILocalVariable(name: "string", arg: 1, scope: !4006, file: !3792, line: 119, type: !29)
!4009 = !DILocation(line: 119, column: 22, scope: !4006)
!4010 = !DILocation(line: 121, column: 27, scope: !4006)
!4011 = !DILocation(line: 121, column: 43, scope: !4006)
!4012 = !DILocation(line: 111, column: 22, scope: !3986, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 121, column: 10, scope: !4006)
!4014 = !DILocation(line: 111, column: 32, scope: !3986, inlinedAt: !4013)
!4015 = !DILocation(line: 39, column: 17, scope: !3791, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 113, column: 18, scope: !3986, inlinedAt: !4013)
!4017 = !DILocation(line: 41, column: 13, scope: !3791, inlinedAt: !4016)
!4018 = !DILocation(line: 41, column: 9, scope: !3791, inlinedAt: !4016)
!4019 = !DILocation(line: 42, column: 8, scope: !3802, inlinedAt: !4016)
!4020 = !DILocation(line: 42, column: 15, scope: !3802, inlinedAt: !4016)
!4021 = !DILocation(line: 42, column: 10, scope: !3802, inlinedAt: !4016)
!4022 = !DILocation(line: 43, column: 5, scope: !3802, inlinedAt: !4016)
!4023 = !DILocation(line: 113, column: 10, scope: !3986, inlinedAt: !4013)
!4024 = !DILocation(line: 121, column: 3, scope: !4006)
!4025 = distinct !DISubprogram(name: "xalloc_die", scope: !4026, file: !4026, line: 32, type: !643, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !600, variables: !83)
!4026 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4027 = !DILocation(line: 34, column: 10, scope: !4025)
!4028 = !DILocation(line: 34, column: 33, scope: !4025)
!4029 = !DILocation(line: 34, column: 3, scope: !4025)
!4030 = !DILocation(line: 40, column: 3, scope: !4025)
!4031 = distinct !DISubprogram(name: "rpl_calloc", scope: !4032, file: !4032, line: 42, type: !3495, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !602, variables: !4033)
!4032 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4033 = !{!4034, !4035, !4036, !4037}
!4034 = !DILocalVariable(name: "n", arg: 1, scope: !4031, file: !4032, line: 42, type: !33)
!4035 = !DILocalVariable(name: "s", arg: 2, scope: !4031, file: !4032, line: 42, type: !33)
!4036 = !DILocalVariable(name: "result", scope: !4031, file: !4032, line: 44, type: !32)
!4037 = !DILocalVariable(name: "bytes", scope: !4038, file: !4032, line: 56, type: !33)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !4032, line: 53, column: 5)
!4039 = distinct !DILexicalBlock(scope: !4031, file: !4032, line: 47, column: 7)
!4040 = !DILocation(line: 42, column: 20, scope: !4031)
!4041 = !DILocation(line: 42, column: 30, scope: !4031)
!4042 = !DILocation(line: 47, column: 9, scope: !4039)
!4043 = !DILocation(line: 47, column: 19, scope: !4039)
!4044 = !DILocation(line: 47, column: 14, scope: !4039)
!4045 = !DILocation(line: 56, column: 24, scope: !4038)
!4046 = !DILocation(line: 56, column: 14, scope: !4038)
!4047 = !DILocation(line: 57, column: 17, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4038, file: !4032, line: 57, column: 11)
!4049 = !DILocation(line: 57, column: 21, scope: !4048)
!4050 = !DILocation(line: 57, column: 11, scope: !4038)
!4051 = !DILocation(line: 59, column: 11, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4048, file: !4032, line: 58, column: 9)
!4053 = !DILocation(line: 59, column: 17, scope: !4052)
!4054 = !DILocation(line: 65, column: 12, scope: !4031)
!4055 = !DILocation(line: 44, column: 9, scope: !4031)
!4056 = !DILocation(line: 72, column: 3, scope: !4031)
!4057 = !DILocation(line: 73, column: 1, scope: !4031)
!4058 = distinct !DISubprogram(name: "rpl_fclose", scope: !4059, file: !4059, line: 56, type: !4060, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !604, variables: !4102)
!4059 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!66, !4062}
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1287, line: 7, baseType: !4064)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1289, line: 241, size: 1728, elements: !4065)
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4064, file: !1289, line: 242, baseType: !66, size: 32)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4064, file: !1289, line: 247, baseType: !124, size: 64, offset: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4064, file: !1289, line: 248, baseType: !124, size: 64, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4064, file: !1289, line: 249, baseType: !124, size: 64, offset: 192)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4064, file: !1289, line: 250, baseType: !124, size: 64, offset: 256)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4064, file: !1289, line: 251, baseType: !124, size: 64, offset: 320)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4064, file: !1289, line: 252, baseType: !124, size: 64, offset: 384)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4064, file: !1289, line: 253, baseType: !124, size: 64, offset: 448)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4064, file: !1289, line: 254, baseType: !124, size: 64, offset: 512)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4064, file: !1289, line: 256, baseType: !124, size: 64, offset: 576)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4064, file: !1289, line: 257, baseType: !124, size: 64, offset: 640)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4064, file: !1289, line: 258, baseType: !124, size: 64, offset: 704)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4064, file: !1289, line: 260, baseType: !4079, size: 64, offset: 768)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1289, line: 156, size: 192, elements: !4081)
!4081 = !{!4082, !4083, !4085}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4080, file: !1289, line: 157, baseType: !4079, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4080, file: !1289, line: 158, baseType: !4084, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4080, file: !1289, line: 162, baseType: !66, size: 32, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4064, file: !1289, line: 262, baseType: !4084, size: 64, offset: 832)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4064, file: !1289, line: 264, baseType: !66, size: 32, offset: 896)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4064, file: !1289, line: 268, baseType: !66, size: 32, offset: 928)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4064, file: !1289, line: 270, baseType: !1265, size: 64, offset: 960)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4064, file: !1289, line: 274, baseType: !153, size: 16, offset: 1024)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4064, file: !1289, line: 275, baseType: !1317, size: 8, offset: 1040)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4064, file: !1289, line: 276, baseType: !1319, size: 8, offset: 1048)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4064, file: !1289, line: 280, baseType: !1323, size: 64, offset: 1088)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4064, file: !1289, line: 289, baseType: !1326, size: 64, offset: 1152)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4064, file: !1289, line: 297, baseType: !32, size: 64, offset: 1216)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4064, file: !1289, line: 298, baseType: !32, size: 64, offset: 1280)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4064, file: !1289, line: 299, baseType: !32, size: 64, offset: 1344)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4064, file: !1289, line: 300, baseType: !32, size: 64, offset: 1408)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4064, file: !1289, line: 302, baseType: !33, size: 64, offset: 1472)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4064, file: !1289, line: 303, baseType: !66, size: 32, offset: 1536)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4064, file: !1289, line: 305, baseType: !1334, size: 160, offset: 1568)
!4102 = !{!4103, !4104, !4105, !4106}
!4103 = !DILocalVariable(name: "fp", arg: 1, scope: !4058, file: !4059, line: 56, type: !4062)
!4104 = !DILocalVariable(name: "saved_errno", scope: !4058, file: !4059, line: 58, type: !66)
!4105 = !DILocalVariable(name: "fd", scope: !4058, file: !4059, line: 59, type: !66)
!4106 = !DILocalVariable(name: "result", scope: !4058, file: !4059, line: 60, type: !66)
!4107 = !DILocation(line: 56, column: 19, scope: !4058)
!4108 = !DILocation(line: 58, column: 7, scope: !4058)
!4109 = !DILocation(line: 60, column: 7, scope: !4058)
!4110 = !DILocation(line: 63, column: 8, scope: !4058)
!4111 = !DILocation(line: 59, column: 7, scope: !4058)
!4112 = !DILocation(line: 64, column: 10, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4058, file: !4059, line: 64, column: 7)
!4114 = !DILocation(line: 64, column: 7, scope: !4058)
!4115 = !DILocation(line: 65, column: 12, scope: !4113)
!4116 = !DILocation(line: 65, column: 5, scope: !4113)
!4117 = !DILocation(line: 70, column: 9, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4058, file: !4059, line: 70, column: 7)
!4119 = !DILocation(line: 70, column: 23, scope: !4118)
!4120 = !DILocation(line: 70, column: 33, scope: !4118)
!4121 = !DILocation(line: 70, column: 26, scope: !4118)
!4122 = !DILocation(line: 70, column: 59, scope: !4118)
!4123 = !DILocation(line: 71, column: 7, scope: !4118)
!4124 = !DILocation(line: 71, column: 10, scope: !4118)
!4125 = !DILocation(line: 70, column: 7, scope: !4058)
!4126 = !DILocation(line: 98, column: 12, scope: !4058)
!4127 = !DILocation(line: 103, column: 7, scope: !4058)
!4128 = !DILocation(line: 72, column: 19, scope: !4118)
!4129 = !DILocation(line: 103, column: 19, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4058, file: !4059, line: 103, column: 7)
!4131 = !DILocation(line: 105, column: 13, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4130, file: !4059, line: 104, column: 5)
!4133 = !DILocation(line: 107, column: 5, scope: !4132)
!4134 = !DILocation(line: 110, column: 1, scope: !4058)
!4135 = distinct !DISubprogram(name: "rpl_fflush", scope: !4136, file: !4136, line: 127, type: !4137, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4179)
!4136 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!66, !4139}
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1287, line: 7, baseType: !4141)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1289, line: 241, size: 1728, elements: !4142)
!4142 = !{!4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4141, file: !1289, line: 242, baseType: !66, size: 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4141, file: !1289, line: 247, baseType: !124, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4141, file: !1289, line: 248, baseType: !124, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4141, file: !1289, line: 249, baseType: !124, size: 64, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4141, file: !1289, line: 250, baseType: !124, size: 64, offset: 256)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4141, file: !1289, line: 251, baseType: !124, size: 64, offset: 320)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4141, file: !1289, line: 252, baseType: !124, size: 64, offset: 384)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4141, file: !1289, line: 253, baseType: !124, size: 64, offset: 448)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4141, file: !1289, line: 254, baseType: !124, size: 64, offset: 512)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4141, file: !1289, line: 256, baseType: !124, size: 64, offset: 576)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4141, file: !1289, line: 257, baseType: !124, size: 64, offset: 640)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4141, file: !1289, line: 258, baseType: !124, size: 64, offset: 704)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4141, file: !1289, line: 260, baseType: !4156, size: 64, offset: 768)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1289, line: 156, size: 192, elements: !4158)
!4158 = !{!4159, !4160, !4162}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4157, file: !1289, line: 157, baseType: !4156, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4157, file: !1289, line: 158, baseType: !4161, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4157, file: !1289, line: 162, baseType: !66, size: 32, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4141, file: !1289, line: 262, baseType: !4161, size: 64, offset: 832)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4141, file: !1289, line: 264, baseType: !66, size: 32, offset: 896)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4141, file: !1289, line: 268, baseType: !66, size: 32, offset: 928)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4141, file: !1289, line: 270, baseType: !1265, size: 64, offset: 960)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4141, file: !1289, line: 274, baseType: !153, size: 16, offset: 1024)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4141, file: !1289, line: 275, baseType: !1317, size: 8, offset: 1040)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4141, file: !1289, line: 276, baseType: !1319, size: 8, offset: 1048)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4141, file: !1289, line: 280, baseType: !1323, size: 64, offset: 1088)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4141, file: !1289, line: 289, baseType: !1326, size: 64, offset: 1152)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4141, file: !1289, line: 297, baseType: !32, size: 64, offset: 1216)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4141, file: !1289, line: 298, baseType: !32, size: 64, offset: 1280)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4141, file: !1289, line: 299, baseType: !32, size: 64, offset: 1344)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4141, file: !1289, line: 300, baseType: !32, size: 64, offset: 1408)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4141, file: !1289, line: 302, baseType: !33, size: 64, offset: 1472)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4141, file: !1289, line: 303, baseType: !66, size: 32, offset: 1536)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4141, file: !1289, line: 305, baseType: !1334, size: 160, offset: 1568)
!4179 = !{!4180}
!4180 = !DILocalVariable(name: "stream", arg: 1, scope: !4135, file: !4136, line: 127, type: !4139)
!4181 = !DILocation(line: 127, column: 19, scope: !4135)
!4182 = !DILocation(line: 148, column: 14, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4135, file: !4136, line: 148, column: 7)
!4184 = !DILocation(line: 148, column: 22, scope: !4183)
!4185 = !DILocation(line: 148, column: 27, scope: !4183)
!4186 = !DILocation(line: 148, column: 7, scope: !4135)
!4187 = !DILocation(line: 149, column: 12, scope: !4183)
!4188 = !DILocation(line: 149, column: 5, scope: !4183)
!4189 = !DILocalVariable(name: "fp", arg: 1, scope: !4190, file: !4136, line: 40, type: !4139)
!4190 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4136, file: !4136, line: 40, type: !4191, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4193)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{null, !4139}
!4193 = !{!4189}
!4194 = !DILocation(line: 40, column: 48, scope: !4190, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 153, column: 3, scope: !4135)
!4196 = !DILocation(line: 42, column: 11, scope: !4197, inlinedAt: !4195)
!4197 = distinct !DILexicalBlock(scope: !4190, file: !4136, line: 42, column: 7)
!4198 = !{!3373, !691, i64 0}
!4199 = !DILocation(line: 42, column: 18, scope: !4197, inlinedAt: !4195)
!4200 = !DILocation(line: 42, column: 7, scope: !4190, inlinedAt: !4195)
!4201 = !DILocation(line: 44, column: 5, scope: !4197, inlinedAt: !4195)
!4202 = !DILocation(line: 155, column: 10, scope: !4135)
!4203 = !DILocation(line: 155, column: 3, scope: !4135)
!4204 = !DILocation(line: 229, column: 1, scope: !4135)
!4205 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4206, file: !4206, line: 28, type: !4207, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !4249)
!4206 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!66, !4209, !1263, !66}
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1287, line: 7, baseType: !4211)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1289, line: 241, size: 1728, elements: !4212)
!4212 = !{!4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4211, file: !1289, line: 242, baseType: !66, size: 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4211, file: !1289, line: 247, baseType: !124, size: 64, offset: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4211, file: !1289, line: 248, baseType: !124, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4211, file: !1289, line: 249, baseType: !124, size: 64, offset: 192)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4211, file: !1289, line: 250, baseType: !124, size: 64, offset: 256)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4211, file: !1289, line: 251, baseType: !124, size: 64, offset: 320)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4211, file: !1289, line: 252, baseType: !124, size: 64, offset: 384)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4211, file: !1289, line: 253, baseType: !124, size: 64, offset: 448)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4211, file: !1289, line: 254, baseType: !124, size: 64, offset: 512)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4211, file: !1289, line: 256, baseType: !124, size: 64, offset: 576)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4211, file: !1289, line: 257, baseType: !124, size: 64, offset: 640)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4211, file: !1289, line: 258, baseType: !124, size: 64, offset: 704)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4211, file: !1289, line: 260, baseType: !4226, size: 64, offset: 768)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1289, line: 156, size: 192, elements: !4228)
!4228 = !{!4229, !4230, !4232}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4227, file: !1289, line: 157, baseType: !4226, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4227, file: !1289, line: 158, baseType: !4231, size: 64, offset: 64)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4227, file: !1289, line: 162, baseType: !66, size: 32, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4211, file: !1289, line: 262, baseType: !4231, size: 64, offset: 832)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4211, file: !1289, line: 264, baseType: !66, size: 32, offset: 896)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4211, file: !1289, line: 268, baseType: !66, size: 32, offset: 928)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4211, file: !1289, line: 270, baseType: !1265, size: 64, offset: 960)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4211, file: !1289, line: 274, baseType: !153, size: 16, offset: 1024)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4211, file: !1289, line: 275, baseType: !1317, size: 8, offset: 1040)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4211, file: !1289, line: 276, baseType: !1319, size: 8, offset: 1048)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4211, file: !1289, line: 280, baseType: !1323, size: 64, offset: 1088)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4211, file: !1289, line: 289, baseType: !1326, size: 64, offset: 1152)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4211, file: !1289, line: 297, baseType: !32, size: 64, offset: 1216)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4211, file: !1289, line: 298, baseType: !32, size: 64, offset: 1280)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4211, file: !1289, line: 299, baseType: !32, size: 64, offset: 1344)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4211, file: !1289, line: 300, baseType: !32, size: 64, offset: 1408)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4211, file: !1289, line: 302, baseType: !33, size: 64, offset: 1472)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4211, file: !1289, line: 303, baseType: !66, size: 32, offset: 1536)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4211, file: !1289, line: 305, baseType: !1334, size: 160, offset: 1568)
!4249 = !{!4250, !4251, !4252, !4253}
!4250 = !DILocalVariable(name: "fp", arg: 1, scope: !4205, file: !4206, line: 28, type: !4209)
!4251 = !DILocalVariable(name: "offset", arg: 2, scope: !4205, file: !4206, line: 28, type: !1263)
!4252 = !DILocalVariable(name: "whence", arg: 3, scope: !4205, file: !4206, line: 28, type: !66)
!4253 = !DILocalVariable(name: "pos", scope: !4254, file: !4206, line: 116, type: !1263)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !4206, line: 112, column: 5)
!4255 = distinct !DILexicalBlock(scope: !4205, file: !4206, line: 51, column: 7)
!4256 = !DILocation(line: 28, column: 15, scope: !4205)
!4257 = !DILocation(line: 28, column: 25, scope: !4205)
!4258 = !DILocation(line: 28, column: 37, scope: !4205)
!4259 = !DILocation(line: 51, column: 11, scope: !4255)
!4260 = !DILocation(line: 51, column: 31, scope: !4255)
!4261 = !DILocation(line: 51, column: 24, scope: !4255)
!4262 = !DILocation(line: 52, column: 7, scope: !4255)
!4263 = !DILocation(line: 52, column: 14, scope: !4255)
!4264 = !{!3373, !636, i64 40}
!4265 = !DILocation(line: 52, column: 35, scope: !4255)
!4266 = !{!3373, !636, i64 32}
!4267 = !DILocation(line: 52, column: 28, scope: !4255)
!4268 = !DILocation(line: 53, column: 7, scope: !4255)
!4269 = !DILocation(line: 53, column: 14, scope: !4255)
!4270 = !{!3373, !636, i64 72}
!4271 = !DILocation(line: 53, column: 28, scope: !4255)
!4272 = !DILocation(line: 51, column: 7, scope: !4205)
!4273 = !DILocation(line: 116, column: 26, scope: !4254)
!4274 = !DILocation(line: 116, column: 19, scope: !4254)
!4275 = !DILocation(line: 116, column: 13, scope: !4254)
!4276 = !DILocation(line: 117, column: 15, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4254, file: !4206, line: 117, column: 11)
!4278 = !DILocation(line: 117, column: 11, scope: !4254)
!4279 = !DILocation(line: 127, column: 11, scope: !4254)
!4280 = !DILocation(line: 127, column: 18, scope: !4254)
!4281 = !DILocation(line: 128, column: 11, scope: !4254)
!4282 = !DILocation(line: 128, column: 19, scope: !4254)
!4283 = !{!3373, !770, i64 144}
!4284 = !DILocation(line: 159, column: 7, scope: !4254)
!4285 = !DILocation(line: 161, column: 10, scope: !4205)
!4286 = !DILocation(line: 161, column: 3, scope: !4205)
!4287 = !DILocation(line: 162, column: 1, scope: !4205)
!4288 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4289, file: !4289, line: 334, type: !4290, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !4304)
!4289 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!33, !4292, !29, !33, !4293}
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1782, line: 6, baseType: !4295)
!4295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1784, line: 21, baseType: !4296)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1784, line: 13, size: 64, elements: !4297)
!4297 = !{!4298, !4299}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4296, file: !1784, line: 15, baseType: !66, size: 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4296, file: !1784, line: 20, baseType: !4300, size: 32, offset: 32)
!4300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4296, file: !1784, line: 16, size: 32, elements: !4301)
!4301 = !{!4302, !4303}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4300, file: !1784, line: 18, baseType: !170, size: 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4300, file: !1784, line: 19, baseType: !1793, size: 32)
!4304 = !{!4305, !4306, !4307, !4308, !4309, !4310, !4311}
!4305 = !DILocalVariable(name: "pwc", arg: 1, scope: !4288, file: !4289, line: 334, type: !4292)
!4306 = !DILocalVariable(name: "s", arg: 2, scope: !4288, file: !4289, line: 334, type: !29)
!4307 = !DILocalVariable(name: "n", arg: 3, scope: !4288, file: !4289, line: 334, type: !33)
!4308 = !DILocalVariable(name: "ps", arg: 4, scope: !4288, file: !4289, line: 334, type: !4293)
!4309 = !DILocalVariable(name: "ret", scope: !4288, file: !4289, line: 336, type: !33)
!4310 = !DILocalVariable(name: "wc", scope: !4288, file: !4289, line: 337, type: !1798)
!4311 = !DILocalVariable(name: "uc", scope: !4312, file: !4289, line: 398, type: !551)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !4289, line: 397, column: 5)
!4313 = distinct !DILexicalBlock(scope: !4288, file: !4289, line: 396, column: 7)
!4314 = !DILocation(line: 334, column: 23, scope: !4288)
!4315 = !DILocation(line: 334, column: 40, scope: !4288)
!4316 = !DILocation(line: 334, column: 50, scope: !4288)
!4317 = !DILocation(line: 334, column: 64, scope: !4288)
!4318 = !DILocation(line: 337, column: 3, scope: !4288)
!4319 = !DILocation(line: 353, column: 9, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4288, file: !4289, line: 353, column: 7)
!4321 = !DILocation(line: 353, column: 7, scope: !4288)
!4322 = !DILocation(line: 388, column: 9, scope: !4288)
!4323 = !DILocation(line: 336, column: 10, scope: !4288)
!4324 = !DILocation(line: 396, column: 19, scope: !4313)
!4325 = !DILocation(line: 396, column: 31, scope: !4313)
!4326 = !DILocation(line: 396, column: 26, scope: !4313)
!4327 = !DILocation(line: 396, column: 41, scope: !4313)
!4328 = !DILocation(line: 396, column: 7, scope: !4288)
!4329 = !DILocation(line: 398, column: 26, scope: !4312)
!4330 = !DILocation(line: 398, column: 21, scope: !4312)
!4331 = !DILocation(line: 399, column: 14, scope: !4312)
!4332 = !DILocation(line: 399, column: 12, scope: !4312)
!4333 = !DILocation(line: 405, column: 1, scope: !4288)
!4334 = distinct !DISubprogram(name: "close_stream", scope: !4335, file: !4335, line: 56, type: !4336, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !613, variables: !4378)
!4335 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!66, !4338}
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1287, line: 7, baseType: !4340)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1289, line: 241, size: 1728, elements: !4341)
!4341 = !{!4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4340, file: !1289, line: 242, baseType: !66, size: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4340, file: !1289, line: 247, baseType: !124, size: 64, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4340, file: !1289, line: 248, baseType: !124, size: 64, offset: 128)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4340, file: !1289, line: 249, baseType: !124, size: 64, offset: 192)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4340, file: !1289, line: 250, baseType: !124, size: 64, offset: 256)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4340, file: !1289, line: 251, baseType: !124, size: 64, offset: 320)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4340, file: !1289, line: 252, baseType: !124, size: 64, offset: 384)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4340, file: !1289, line: 253, baseType: !124, size: 64, offset: 448)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4340, file: !1289, line: 254, baseType: !124, size: 64, offset: 512)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4340, file: !1289, line: 256, baseType: !124, size: 64, offset: 576)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4340, file: !1289, line: 257, baseType: !124, size: 64, offset: 640)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4340, file: !1289, line: 258, baseType: !124, size: 64, offset: 704)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4340, file: !1289, line: 260, baseType: !4355, size: 64, offset: 768)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1289, line: 156, size: 192, elements: !4357)
!4357 = !{!4358, !4359, !4361}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4356, file: !1289, line: 157, baseType: !4355, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4356, file: !1289, line: 158, baseType: !4360, size: 64, offset: 64)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4356, file: !1289, line: 162, baseType: !66, size: 32, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4340, file: !1289, line: 262, baseType: !4360, size: 64, offset: 832)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4340, file: !1289, line: 264, baseType: !66, size: 32, offset: 896)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4340, file: !1289, line: 268, baseType: !66, size: 32, offset: 928)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4340, file: !1289, line: 270, baseType: !1265, size: 64, offset: 960)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4340, file: !1289, line: 274, baseType: !153, size: 16, offset: 1024)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4340, file: !1289, line: 275, baseType: !1317, size: 8, offset: 1040)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4340, file: !1289, line: 276, baseType: !1319, size: 8, offset: 1048)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4340, file: !1289, line: 280, baseType: !1323, size: 64, offset: 1088)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4340, file: !1289, line: 289, baseType: !1326, size: 64, offset: 1152)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4340, file: !1289, line: 297, baseType: !32, size: 64, offset: 1216)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4340, file: !1289, line: 298, baseType: !32, size: 64, offset: 1280)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4340, file: !1289, line: 299, baseType: !32, size: 64, offset: 1344)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4340, file: !1289, line: 300, baseType: !32, size: 64, offset: 1408)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4340, file: !1289, line: 302, baseType: !33, size: 64, offset: 1472)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4340, file: !1289, line: 303, baseType: !66, size: 32, offset: 1536)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4340, file: !1289, line: 305, baseType: !1334, size: 160, offset: 1568)
!4378 = !{!4379, !4380, !4382, !4383}
!4379 = !DILocalVariable(name: "stream", arg: 1, scope: !4334, file: !4335, line: 56, type: !4338)
!4380 = !DILocalVariable(name: "some_pending", scope: !4334, file: !4335, line: 58, type: !4381)
!4381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!4382 = !DILocalVariable(name: "prev_fail", scope: !4334, file: !4335, line: 59, type: !4381)
!4383 = !DILocalVariable(name: "fclose_fail", scope: !4334, file: !4335, line: 60, type: !4381)
!4384 = !DILocation(line: 56, column: 21, scope: !4334)
!4385 = !DILocation(line: 58, column: 30, scope: !4334)
!4386 = !DILocalVariable(name: "__stream", arg: 1, scope: !4387, file: !3364, line: 132, type: !4338)
!4387 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3364, file: !3364, line: 132, type: !4336, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !613, variables: !4388)
!4388 = !{!4386}
!4389 = !DILocation(line: 132, column: 1, scope: !4387, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 59, column: 27, scope: !4334)
!4391 = !DILocation(line: 134, column: 10, scope: !4387, inlinedAt: !4390)
!4392 = !DILocation(line: 59, column: 43, scope: !4334)
!4393 = !DILocation(line: 60, column: 29, scope: !4334)
!4394 = !DILocation(line: 60, column: 45, scope: !4334)
!4395 = !DILocation(line: 70, column: 17, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4334, file: !4335, line: 70, column: 7)
!4397 = !DILocation(line: 58, column: 50, scope: !4334)
!4398 = !DILocation(line: 70, column: 33, scope: !4396)
!4399 = !DILocation(line: 70, column: 53, scope: !4396)
!4400 = !DILocation(line: 70, column: 59, scope: !4396)
!4401 = !DILocation(line: 70, column: 7, scope: !4334)
!4402 = !DILocation(line: 72, column: 11, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4396, file: !4335, line: 71, column: 5)
!4404 = !DILocation(line: 73, column: 9, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4403, file: !4335, line: 72, column: 11)
!4406 = !DILocation(line: 73, column: 15, scope: !4405)
!4407 = !DILocation(line: 78, column: 1, scope: !4334)
!4408 = distinct !DISubprogram(name: "hard_locale", scope: !4409, file: !4409, line: 38, type: !1430, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !4410)
!4409 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4410 = !{!4411, !4412, !4413}
!4411 = !DILocalVariable(name: "category", arg: 1, scope: !4408, file: !4409, line: 38, type: !66)
!4412 = !DILocalVariable(name: "hard", scope: !4408, file: !4409, line: 40, type: !93)
!4413 = !DILocalVariable(name: "p", scope: !4408, file: !4409, line: 41, type: !29)
!4414 = !DILocation(line: 38, column: 18, scope: !4408)
!4415 = !DILocation(line: 40, column: 8, scope: !4408)
!4416 = !DILocation(line: 41, column: 19, scope: !4408)
!4417 = !DILocation(line: 41, column: 15, scope: !4408)
!4418 = !DILocation(line: 43, column: 7, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4408, file: !4409, line: 43, column: 7)
!4420 = !DILocation(line: 43, column: 7, scope: !4408)
!4421 = !DILocation(line: 47, column: 15, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !4409, line: 47, column: 15)
!4423 = distinct !DILexicalBlock(scope: !4424, file: !4409, line: 46, column: 9)
!4424 = distinct !DILexicalBlock(scope: !4425, file: !4409, line: 45, column: 11)
!4425 = distinct !DILexicalBlock(scope: !4419, file: !4409, line: 44, column: 5)
!4426 = !DILocation(line: 47, column: 31, scope: !4422)
!4427 = !DILocation(line: 47, column: 36, scope: !4422)
!4428 = !DILocation(line: 47, column: 39, scope: !4422)
!4429 = !DILocation(line: 47, column: 59, scope: !4422)
!4430 = !DILocation(line: 47, column: 15, scope: !4423)
!4431 = !DILocation(line: 48, column: 13, scope: !4422)
!4432 = !DILocation(line: 71, column: 3, scope: !4408)
!4433 = distinct !DISubprogram(name: "locale_charset", scope: !553, file: !553, line: 393, type: !4434, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !208, variables: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!29}
!4436 = !{!4437, !4438}
!4437 = !DILocalVariable(name: "codeset", scope: !4433, file: !553, line: 395, type: !29)
!4438 = !DILocalVariable(name: "aliases", scope: !4433, file: !553, line: 396, type: !29)
!4439 = !DILocalVariable(name: "buf1", scope: !4440, file: !553, line: 196, type: !4507)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !553, line: 194, column: 21)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !553, line: 193, column: 19)
!4442 = distinct !DILexicalBlock(scope: !4443, file: !553, line: 193, column: 19)
!4443 = distinct !DILexicalBlock(scope: !4444, file: !553, line: 188, column: 17)
!4444 = distinct !DILexicalBlock(scope: !4445, file: !553, line: 181, column: 19)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !553, line: 177, column: 13)
!4446 = distinct !DILexicalBlock(scope: !4447, file: !553, line: 173, column: 15)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !553, line: 161, column: 9)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !553, line: 157, column: 11)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !553, line: 130, column: 5)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !553, line: 129, column: 7)
!4451 = distinct !DISubprogram(name: "get_charset_aliases", scope: !553, file: !553, line: 124, type: !4434, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !208, variables: !4452)
!4452 = !{!4453, !4454, !4455, !4456, !4457, !4459, !4460, !4461, !4462, !4503, !4504, !4505, !4439, !4506, !4510, !4511, !4512}
!4453 = !DILocalVariable(name: "cp", scope: !4451, file: !553, line: 126, type: !29)
!4454 = !DILocalVariable(name: "dir", scope: !4449, file: !553, line: 132, type: !29)
!4455 = !DILocalVariable(name: "base", scope: !4449, file: !553, line: 133, type: !29)
!4456 = !DILocalVariable(name: "file_name", scope: !4449, file: !553, line: 134, type: !124)
!4457 = !DILocalVariable(name: "dir_len", scope: !4458, file: !553, line: 144, type: !33)
!4458 = distinct !DILexicalBlock(scope: !4449, file: !553, line: 143, column: 7)
!4459 = !DILocalVariable(name: "base_len", scope: !4458, file: !553, line: 145, type: !33)
!4460 = !DILocalVariable(name: "add_slash", scope: !4458, file: !553, line: 146, type: !66)
!4461 = !DILocalVariable(name: "fd", scope: !4447, file: !553, line: 162, type: !66)
!4462 = !DILocalVariable(name: "fp", scope: !4445, file: !553, line: 178, type: !4463)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1287, line: 7, baseType: !4465)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1289, line: 241, size: 1728, elements: !4466)
!4466 = !{!4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4465, file: !1289, line: 242, baseType: !66, size: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4465, file: !1289, line: 247, baseType: !124, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4465, file: !1289, line: 248, baseType: !124, size: 64, offset: 128)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4465, file: !1289, line: 249, baseType: !124, size: 64, offset: 192)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4465, file: !1289, line: 250, baseType: !124, size: 64, offset: 256)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4465, file: !1289, line: 251, baseType: !124, size: 64, offset: 320)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4465, file: !1289, line: 252, baseType: !124, size: 64, offset: 384)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4465, file: !1289, line: 253, baseType: !124, size: 64, offset: 448)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4465, file: !1289, line: 254, baseType: !124, size: 64, offset: 512)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4465, file: !1289, line: 256, baseType: !124, size: 64, offset: 576)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4465, file: !1289, line: 257, baseType: !124, size: 64, offset: 640)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4465, file: !1289, line: 258, baseType: !124, size: 64, offset: 704)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4465, file: !1289, line: 260, baseType: !4480, size: 64, offset: 768)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1289, line: 156, size: 192, elements: !4482)
!4482 = !{!4483, !4484, !4486}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4481, file: !1289, line: 157, baseType: !4480, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4481, file: !1289, line: 158, baseType: !4485, size: 64, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4481, file: !1289, line: 162, baseType: !66, size: 32, offset: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4465, file: !1289, line: 262, baseType: !4485, size: 64, offset: 832)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4465, file: !1289, line: 264, baseType: !66, size: 32, offset: 896)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4465, file: !1289, line: 268, baseType: !66, size: 32, offset: 928)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4465, file: !1289, line: 270, baseType: !1265, size: 64, offset: 960)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4465, file: !1289, line: 274, baseType: !153, size: 16, offset: 1024)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4465, file: !1289, line: 275, baseType: !1317, size: 8, offset: 1040)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4465, file: !1289, line: 276, baseType: !1319, size: 8, offset: 1048)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4465, file: !1289, line: 280, baseType: !1323, size: 64, offset: 1088)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4465, file: !1289, line: 289, baseType: !1326, size: 64, offset: 1152)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4465, file: !1289, line: 297, baseType: !32, size: 64, offset: 1216)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4465, file: !1289, line: 298, baseType: !32, size: 64, offset: 1280)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4465, file: !1289, line: 299, baseType: !32, size: 64, offset: 1344)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4465, file: !1289, line: 300, baseType: !32, size: 64, offset: 1408)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4465, file: !1289, line: 302, baseType: !33, size: 64, offset: 1472)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4465, file: !1289, line: 303, baseType: !66, size: 32, offset: 1536)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4465, file: !1289, line: 305, baseType: !1334, size: 160, offset: 1568)
!4503 = !DILocalVariable(name: "res_ptr", scope: !4443, file: !553, line: 190, type: !124)
!4504 = !DILocalVariable(name: "res_size", scope: !4443, file: !553, line: 191, type: !33)
!4505 = !DILocalVariable(name: "c", scope: !4440, file: !553, line: 195, type: !66)
!4506 = !DILocalVariable(name: "buf2", scope: !4440, file: !553, line: 197, type: !4507)
!4507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 408, elements: !4508)
!4508 = !{!4509}
!4509 = !DISubrange(count: 51)
!4510 = !DILocalVariable(name: "l1", scope: !4440, file: !553, line: 198, type: !33)
!4511 = !DILocalVariable(name: "l2", scope: !4440, file: !553, line: 198, type: !33)
!4512 = !DILocalVariable(name: "old_res_ptr", scope: !4440, file: !553, line: 199, type: !124)
!4513 = !DILocation(line: 196, column: 28, scope: !4440, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 589, column: 18, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4433, file: !553, line: 589, column: 3)
!4516 = !DILocation(line: 197, column: 28, scope: !4440, inlinedAt: !4514)
!4517 = !DILocation(line: 403, column: 13, scope: !4433)
!4518 = !DILocation(line: 395, column: 15, scope: !4433)
!4519 = !DILocation(line: 584, column: 15, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4433, file: !553, line: 584, column: 7)
!4521 = !DILocation(line: 584, column: 7, scope: !4433)
!4522 = !DILocation(line: 128, column: 8, scope: !4451, inlinedAt: !4514)
!4523 = !DILocation(line: 126, column: 15, scope: !4451, inlinedAt: !4514)
!4524 = !DILocation(line: 129, column: 10, scope: !4450, inlinedAt: !4514)
!4525 = !DILocation(line: 129, column: 7, scope: !4451, inlinedAt: !4514)
!4526 = !DILocation(line: 138, column: 13, scope: !4449, inlinedAt: !4514)
!4527 = !DILocation(line: 132, column: 19, scope: !4449, inlinedAt: !4514)
!4528 = !DILocation(line: 139, column: 15, scope: !4529, inlinedAt: !4514)
!4529 = distinct !DILexicalBlock(scope: !4449, file: !553, line: 139, column: 11)
!4530 = !DILocation(line: 139, column: 23, scope: !4529, inlinedAt: !4514)
!4531 = !DILocation(line: 139, column: 26, scope: !4529, inlinedAt: !4514)
!4532 = !DILocation(line: 139, column: 33, scope: !4529, inlinedAt: !4514)
!4533 = !DILocation(line: 139, column: 11, scope: !4449, inlinedAt: !4514)
!4534 = !DILocation(line: 140, column: 9, scope: !4529, inlinedAt: !4514)
!4535 = !DILocation(line: 144, column: 26, scope: !4458, inlinedAt: !4514)
!4536 = !DILocation(line: 144, column: 16, scope: !4458, inlinedAt: !4514)
!4537 = !DILocation(line: 145, column: 16, scope: !4458, inlinedAt: !4514)
!4538 = !DILocation(line: 146, column: 34, scope: !4458, inlinedAt: !4514)
!4539 = !DILocation(line: 146, column: 38, scope: !4458, inlinedAt: !4514)
!4540 = !DILocation(line: 146, column: 42, scope: !4458, inlinedAt: !4514)
!4541 = !DILocation(line: 147, column: 48, scope: !4458, inlinedAt: !4514)
!4542 = !DILocation(line: 147, column: 46, scope: !4458, inlinedAt: !4514)
!4543 = !DILocation(line: 147, column: 69, scope: !4458, inlinedAt: !4514)
!4544 = !DILocation(line: 147, column: 30, scope: !4458, inlinedAt: !4514)
!4545 = !DILocation(line: 134, column: 13, scope: !4449, inlinedAt: !4514)
!4546 = !DILocation(line: 148, column: 13, scope: !4458, inlinedAt: !4514)
!4547 = !DILocation(line: 150, column: 13, scope: !4548, inlinedAt: !4514)
!4548 = distinct !DILexicalBlock(scope: !4549, file: !553, line: 149, column: 11)
!4549 = distinct !DILexicalBlock(scope: !4458, file: !553, line: 148, column: 13)
!4550 = !DILocation(line: 151, column: 17, scope: !4548, inlinedAt: !4514)
!4551 = !DILocation(line: 152, column: 34, scope: !4552, inlinedAt: !4514)
!4552 = distinct !DILexicalBlock(scope: !4548, file: !553, line: 151, column: 17)
!4553 = !DILocation(line: 153, column: 41, scope: !4548, inlinedAt: !4514)
!4554 = !DILocation(line: 153, column: 13, scope: !4548, inlinedAt: !4514)
!4555 = !DILocation(line: 157, column: 11, scope: !4449, inlinedAt: !4514)
!4556 = !DILocation(line: 171, column: 16, scope: !4447, inlinedAt: !4514)
!4557 = !DILocation(line: 162, column: 15, scope: !4447, inlinedAt: !4514)
!4558 = !DILocation(line: 173, column: 18, scope: !4446, inlinedAt: !4514)
!4559 = !DILocation(line: 173, column: 15, scope: !4447, inlinedAt: !4514)
!4560 = !DILocation(line: 180, column: 20, scope: !4445, inlinedAt: !4514)
!4561 = !DILocation(line: 178, column: 21, scope: !4445, inlinedAt: !4514)
!4562 = !DILocation(line: 181, column: 22, scope: !4444, inlinedAt: !4514)
!4563 = !DILocation(line: 181, column: 19, scope: !4445, inlinedAt: !4514)
!4564 = !DILocation(line: 184, column: 19, scope: !4565, inlinedAt: !4514)
!4565 = distinct !DILexicalBlock(scope: !4444, file: !553, line: 182, column: 17)
!4566 = !DILocation(line: 186, column: 17, scope: !4565, inlinedAt: !4514)
!4567 = !DILocation(line: 190, column: 25, scope: !4443, inlinedAt: !4514)
!4568 = !DILocation(line: 191, column: 26, scope: !4443, inlinedAt: !4514)
!4569 = !DILocation(line: 193, column: 19, scope: !4443, inlinedAt: !4514)
!4570 = !DILocation(line: 196, column: 23, scope: !4440, inlinedAt: !4514)
!4571 = !DILocation(line: 197, column: 23, scope: !4440, inlinedAt: !4514)
!4572 = !DILocalVariable(name: "__fp", arg: 1, scope: !4573, file: !3364, line: 63, type: !4463)
!4573 = distinct !DISubprogram(name: "getc_unlocked", scope: !3364, file: !3364, line: 63, type: !4574, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !208, variables: !4576)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!66, !4463}
!4576 = !{!4572}
!4577 = !DILocation(line: 63, column: 22, scope: !4573, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 201, column: 27, scope: !4440, inlinedAt: !4514)
!4579 = !DILocation(line: 65, column: 10, scope: !4573, inlinedAt: !4578)
!4580 = !DILocation(line: 195, column: 27, scope: !4440, inlinedAt: !4514)
!4581 = !DILocation(line: 202, column: 27, scope: !4440, inlinedAt: !4514)
!4582 = distinct !{!4582, !4583, !4586}
!4583 = !DILocation(line: 209, column: 27, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4585, file: !553, line: 207, column: 25)
!4585 = distinct !DILexicalBlock(scope: !4440, file: !553, line: 206, column: 27)
!4586 = !DILocation(line: 211, column: 58, scope: !4584)
!4587 = !DILocation(line: 65, column: 10, scope: !4573, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 210, column: 33, scope: !4584, inlinedAt: !4514)
!4589 = !DILocation(line: 63, column: 22, scope: !4573, inlinedAt: !4588)
!4590 = !DILocation(line: 210, column: 29, scope: !4584, inlinedAt: !4514)
!4591 = distinct !{!4591, !4592, !4593}
!4592 = !DILocation(line: 193, column: 19, scope: !4442)
!4593 = !DILocation(line: 241, column: 21, scope: !4442)
!4594 = !DILocation(line: 216, column: 23, scope: !4440, inlinedAt: !4514)
!4595 = !DILocation(line: 217, column: 27, scope: !4596, inlinedAt: !4514)
!4596 = distinct !DILexicalBlock(scope: !4440, file: !553, line: 217, column: 27)
!4597 = !DILocation(line: 217, column: 64, scope: !4596, inlinedAt: !4514)
!4598 = !DILocation(line: 217, column: 27, scope: !4440, inlinedAt: !4514)
!4599 = !DILocation(line: 219, column: 28, scope: !4440, inlinedAt: !4514)
!4600 = !DILocation(line: 198, column: 30, scope: !4440, inlinedAt: !4514)
!4601 = !DILocation(line: 220, column: 28, scope: !4440, inlinedAt: !4514)
!4602 = !DILocation(line: 198, column: 34, scope: !4440, inlinedAt: !4514)
!4603 = !DILocation(line: 199, column: 29, scope: !4440, inlinedAt: !4514)
!4604 = !DILocation(line: 222, column: 36, scope: !4605, inlinedAt: !4514)
!4605 = distinct !DILexicalBlock(scope: !4440, file: !553, line: 222, column: 27)
!4606 = !DILocation(line: 222, column: 27, scope: !4440, inlinedAt: !4514)
!4607 = !DILocation(line: 225, column: 63, scope: !4608, inlinedAt: !4514)
!4608 = distinct !DILexicalBlock(scope: !4605, file: !553, line: 223, column: 25)
!4609 = !DILocation(line: 225, column: 46, scope: !4608, inlinedAt: !4514)
!4610 = !DILocation(line: 226, column: 25, scope: !4608, inlinedAt: !4514)
!4611 = !DILocation(line: 229, column: 36, scope: !4612, inlinedAt: !4514)
!4612 = distinct !DILexicalBlock(scope: !4605, file: !553, line: 228, column: 25)
!4613 = !DILocation(line: 230, column: 73, scope: !4612, inlinedAt: !4514)
!4614 = !DILocation(line: 230, column: 46, scope: !4612, inlinedAt: !4514)
!4615 = !DILocation(line: 232, column: 35, scope: !4616, inlinedAt: !4514)
!4616 = distinct !DILexicalBlock(scope: !4440, file: !553, line: 232, column: 27)
!4617 = !DILocation(line: 232, column: 27, scope: !4440, inlinedAt: !4514)
!4618 = !DILocation(line: 236, column: 27, scope: !4619, inlinedAt: !4514)
!4619 = distinct !DILexicalBlock(scope: !4616, file: !553, line: 233, column: 25)
!4620 = !DILocation(line: 237, column: 27, scope: !4619, inlinedAt: !4514)
!4621 = !DILocation(line: 241, column: 21, scope: !4441, inlinedAt: !4514)
!4622 = !DILocation(line: 239, column: 39, scope: !4440, inlinedAt: !4514)
!4623 = !DILocation(line: 239, column: 50, scope: !4440, inlinedAt: !4514)
!4624 = !DILocation(line: 239, column: 61, scope: !4440, inlinedAt: !4514)
!4625 = !DILocalVariable(name: "__dest", arg: 1, scope: !4626, file: !4627, line: 88, type: !4630)
!4626 = distinct !DISubprogram(name: "strcpy", scope: !4627, file: !4627, line: 88, type: !4628, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !208, variables: !4632)
!4627 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!124, !4630, !4631}
!4630 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!4631 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!4632 = !{!4625, !4633}
!4633 = !DILocalVariable(name: "__src", arg: 2, scope: !4626, file: !4627, line: 88, type: !4631)
!4634 = !DILocation(line: 88, column: 1, scope: !4626, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 239, column: 23, scope: !4440, inlinedAt: !4514)
!4636 = !DILocation(line: 90, column: 49, scope: !4626, inlinedAt: !4635)
!4637 = !DILocation(line: 90, column: 10, scope: !4626, inlinedAt: !4635)
!4638 = !DILocation(line: 88, column: 1, scope: !4626, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 240, column: 23, scope: !4440, inlinedAt: !4514)
!4640 = !DILocation(line: 90, column: 49, scope: !4626, inlinedAt: !4639)
!4641 = !DILocation(line: 90, column: 10, scope: !4626, inlinedAt: !4639)
!4642 = !DILocation(line: 193, column: 19, scope: !4441, inlinedAt: !4514)
!4643 = !DILocation(line: 242, column: 19, scope: !4443, inlinedAt: !4514)
!4644 = !DILocation(line: 243, column: 32, scope: !4645, inlinedAt: !4514)
!4645 = distinct !DILexicalBlock(scope: !4443, file: !553, line: 243, column: 23)
!4646 = !DILocation(line: 243, column: 23, scope: !4443, inlinedAt: !4514)
!4647 = !DILocation(line: 247, column: 33, scope: !4648, inlinedAt: !4514)
!4648 = distinct !DILexicalBlock(scope: !4645, file: !553, line: 246, column: 21)
!4649 = !DILocation(line: 247, column: 45, scope: !4648, inlinedAt: !4514)
!4650 = !DILocation(line: 253, column: 11, scope: !4447, inlinedAt: !4514)
!4651 = !DILocation(line: 377, column: 23, scope: !4449, inlinedAt: !4514)
!4652 = !DILocation(line: 378, column: 5, scope: !4449, inlinedAt: !4514)
!4653 = !DILocation(line: 396, column: 15, scope: !4433)
!4654 = !DILocation(line: 590, column: 8, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4515, file: !553, line: 589, column: 3)
!4656 = !DILocation(line: 590, column: 17, scope: !4655)
!4657 = !DILocation(line: 589, column: 3, scope: !4515)
!4658 = !DILocation(line: 592, column: 9, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4655, file: !553, line: 592, column: 9)
!4660 = !DILocation(line: 592, column: 35, scope: !4659)
!4661 = !DILocation(line: 593, column: 9, scope: !4659)
!4662 = !DILocation(line: 593, column: 24, scope: !4659)
!4663 = !DILocation(line: 593, column: 31, scope: !4659)
!4664 = !DILocation(line: 593, column: 34, scope: !4659)
!4665 = !DILocation(line: 593, column: 45, scope: !4659)
!4666 = !DILocation(line: 592, column: 9, scope: !4655)
!4667 = !DILocation(line: 595, column: 29, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4659, file: !553, line: 594, column: 7)
!4669 = !DILocation(line: 595, column: 27, scope: !4668)
!4670 = !DILocation(line: 595, column: 46, scope: !4668)
!4671 = !DILocation(line: 596, column: 9, scope: !4668)
!4672 = !DILocation(line: 591, column: 19, scope: !4655)
!4673 = !DILocation(line: 591, column: 36, scope: !4655)
!4674 = !DILocation(line: 591, column: 16, scope: !4655)
!4675 = !DILocation(line: 591, column: 52, scope: !4655)
!4676 = !DILocation(line: 591, column: 69, scope: !4655)
!4677 = !DILocation(line: 591, column: 49, scope: !4655)
!4678 = distinct !{!4678, !4657, !4679}
!4679 = !DILocation(line: 597, column: 7, scope: !4515)
!4680 = !DILocation(line: 602, column: 7, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4433, file: !553, line: 602, column: 7)
!4682 = !DILocation(line: 602, column: 18, scope: !4681)
!4683 = !DILocation(line: 602, column: 7, scope: !4433)
!4684 = !DILocation(line: 612, column: 3, scope: !4433)
