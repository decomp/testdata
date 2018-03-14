; ModuleID = 'coreutils-8.27/src/expand.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert tabs in each FILE to spaces, writing to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.14 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [123 x i8] c"  -i, --initial       do not convert tabs after non blanks\0A  -t, --tabs=NUMBER   have tabs NUMBER characters apart, not 8\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"  -t, --tabs=LIST     use comma separated list of explicit tab positions\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@shortopts = internal constant [34 x i8] c"it:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !0
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !51
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@convert_entire_line = local_unnamed_addr global i8 0, align 1, !dbg !68
@exit_status = local_unnamed_addr global i32 0, align 4, !dbg !120
@max_column_width = common local_unnamed_addr global i64 0, align 8, !dbg !184
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !186
@tab_list = internal unnamed_addr global i64* null, align 8, !dbg !188
@n_tabs_allocated = internal global i64 0, align 8, !dbg !190
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !192
@.str.8.7 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@.str.1.8 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.2.9 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.3.10 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.4.11 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@.str.9.14 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.10.15 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !194
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.20, i32 0, i32 0), i8* null], align 16, !dbg !199
@file_list = internal unnamed_addr global i8** null, align 8, !dbg !204
@.str.6.20 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@next_file.prev_file = internal unnamed_addr global i8* null, align 8, !dbg !122
@.str.5.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.7.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), align 8, !dbg !207
@.str.36 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !213
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !218
@.str.39 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.40 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !221
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !228
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !235
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !247
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !254
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !266
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.66 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !273
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !280
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !268
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !282
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.76 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.77 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.78 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.79 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.80 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.81 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.82 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.83 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.84 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.85 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.86 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.89 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.90 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.91 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.92 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !288
@.str.1.103 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.122 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.125 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !297
@.str.3.126 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.127 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.128 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.129 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.130 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.131 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !691 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !695, metadata !696), !dbg !697
  %2 = icmp eq i32 %0, 0, !dbg !698
  br i1 %2, label %8, label %3, !dbg !700

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !701, !tbaa !703
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !701
  %6 = load i8*, i8** @program_name, align 8, !dbg !701, !tbaa !703
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !701
  br label %48, !dbg !701

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !707
  %10 = load i8*, i8** @program_name, align 8, !dbg !707, !tbaa !703
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !707
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !709
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709, !tbaa !703
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !709
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !710
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !703
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !710
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !715
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !715, !tbaa !703
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !715
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !718
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !718, !tbaa !703
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !718
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !719
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !719, !tbaa !703
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !719
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !720
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !720, !tbaa !703
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !720
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !721
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !721, !tbaa !703
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10, !dbg !721
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !39, metadata !696) #10, !dbg !722
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !39, metadata !696) #10, !dbg !722
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !724
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !724
  %35 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !725
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !47, metadata !696) #10, !dbg !726
  %36 = icmp eq i8* %35, null, !dbg !727
  br i1 %36, label %43, label %37, !dbg !729

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !730
  %39 = icmp eq i32 %38, 0, !dbg !730
  br i1 %39, label %43, label %40, !dbg !731

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !732
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !732
  br label %43, !dbg !734

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !735
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !735
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !736
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !736
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #15, !dbg !737
  unreachable, !dbg !737
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !738 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !742, metadata !696), !dbg !751
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !743, metadata !696), !dbg !752
  %6 = load i8*, i8** %1, align 8, !dbg !753, !tbaa !703
  tail call void @set_program_name(i8* %6) #10, !dbg !754
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !755
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !756
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !757
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !758
  store i8 1, i8* @convert_entire_line, align 1, !dbg !759, !tbaa !760
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  br label %13, !dbg !762

; <label>:13:                                     ; preds = %23, %2
  %14 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !763
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !744, metadata !696), !dbg !764
  switch i32 %14, label %30 [
    i32 -1, label %31
    i32 105, label %15
    i32 116, label %16
    i32 48, label %18
    i32 49, label %18
    i32 50, label %18
    i32 51, label %18
    i32 52, label %18
    i32 53, label %18
    i32 54, label %18
    i32 55, label %18
    i32 56, label %18
    i32 57, label %18
    i32 -130, label %26
    i32 -131, label %27
  ], !dbg !762

; <label>:15:                                     ; preds = %13
  store i8 0, i8* @convert_entire_line, align 1, !dbg !765, !tbaa !760
  br label %23, !dbg !766

; <label>:16:                                     ; preds = %13
  %17 = load i8*, i8** @optarg, align 8, !dbg !767, !tbaa !703
  call void @parse_tab_stops(i8* %17) #10, !dbg !768
  br label %23, !dbg !769

; <label>:18:                                     ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %19 = load i8*, i8** @optarg, align 8, !dbg !770, !tbaa !703
  %20 = icmp eq i8* %19, null, !dbg !770
  br i1 %20, label %24, label %21, !dbg !771

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !772
  call void @parse_tab_stops(i8* %22) #10, !dbg !773
  br label %23, !dbg !773

; <label>:23:                                     ; preds = %21, %24, %16, %15
  br label %13, !dbg !763, !llvm.loop !774

; <label>:24:                                     ; preds = %18
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %11) #10, !dbg !776
  call void @llvm.dbg.declare(metadata [2 x i8]* %5, metadata !745, metadata !696), !dbg !777
  %25 = trunc i32 %14 to i8, !dbg !778
  store i8 %25, i8* %11, align 1, !dbg !779, !tbaa !780
  store i8 0, i8* %12, align 1, !dbg !781, !tbaa !780
  call void @parse_tab_stops(i8* nonnull %11) #10, !dbg !782
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %11) #10, !dbg !783
  br label %23

; <label>:26:                                     ; preds = %13
  call void @usage(i32 0) #16, !dbg !784
  unreachable, !dbg !784

; <label>:27:                                     ; preds = %13
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !785, !tbaa !703
  %29 = load i8*, i8** @Version, align 8, !dbg !785, !tbaa !703
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #10, !dbg !785
  call void @exit(i32 0) #15, !dbg !785
  unreachable, !dbg !785

; <label>:30:                                     ; preds = %13
  call void @usage(i32 1) #16, !dbg !786
  unreachable, !dbg !786

; <label>:31:                                     ; preds = %13
  call void @finalize_tab_stops() #10, !dbg !787
  %32 = load i32, i32* @optind, align 4, !dbg !788, !tbaa !789
  %33 = icmp slt i32 %32, %0, !dbg !791
  %34 = sext i32 %32 to i64, !dbg !792
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !792
  %36 = select i1 %33, i8** %35, i8** null, !dbg !793
  call void @set_file_list(i8** %36) #10, !dbg !794
  %37 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* null) #10, !dbg !795
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %37, i64 0, metadata !798, metadata !696) #10, !dbg !852
  %38 = icmp eq %struct._IO_FILE* %37, null, !dbg !853
  br i1 %38, label %169, label %39, !dbg !855

; <label>:39:                                     ; preds = %31
  %40 = bitcast i64* %3 to i8*
  br label %41, !dbg !856

; <label>:41:                                     ; preds = %167, %39
  %42 = phi %struct._IO_FILE* [ %37, %39 ], [ %75, %167 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, i64 0, metadata !798, metadata !696) #10, !dbg !852
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !841, metadata !696) #10, !dbg !857
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !842, metadata !696) #10, !dbg !858
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #10, !dbg !859
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !843, metadata !696) #10, !dbg !860
  store i64 0, i64* %3, align 8, !dbg !860, !tbaa !861
  br label %43, !dbg !863, !llvm.loop !864

; <label>:43:                                     ; preds = %165, %41
  %44 = phi %struct._IO_FILE* [ %42, %41 ], [ %75, %165 ]
  %45 = phi i8 [ 1, %41 ], [ %144, %165 ]
  %46 = phi i64 [ 0, %41 ], [ %145, %165 ]
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !842, metadata !696) #10, !dbg !858
  call void @llvm.dbg.value(metadata i8 %45, i64 0, metadata !841, metadata !696) #10, !dbg !857
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, i64 0, metadata !798, metadata !696) #10, !dbg !852
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, i64 0, metadata !798, metadata !696) #10, !dbg !852
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, i64 0, metadata !867, metadata !696) #10, !dbg !873
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i64 0, i32 1, !dbg !875
  %48 = load i8*, i8** %47, align 8, !dbg !875, !tbaa !876
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i64 0, i32 2, !dbg !875
  %50 = load i8*, i8** %49, align 8, !dbg !875, !tbaa !879
  %51 = icmp ult i8* %48, %50, !dbg !875
  br i1 %51, label %59, label %52, !dbg !875, !prof !880

; <label>:52:                                     ; preds = %43
  br label %66, !dbg !875

; <label>:53:                                     ; preds = %70
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !798, metadata !696) #10, !dbg !852
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !867, metadata !696) #10, !dbg !873
  %54 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %71, i64 0, i32 1, !dbg !875
  %55 = load i8*, i8** %54, align 8, !dbg !875, !tbaa !876
  %56 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %71, i64 0, i32 2, !dbg !875
  %57 = load i8*, i8** %56, align 8, !dbg !875, !tbaa !879
  %58 = icmp ult i8* %55, %57, !dbg !875
  br i1 %58, label %59, label %66, !dbg !875, !prof !880, !llvm.loop !881

; <label>:59:                                     ; preds = %53, %43
  %60 = phi %struct._IO_FILE* [ %44, %43 ], [ %71, %53 ]
  %61 = phi i8** [ %47, %43 ], [ %54, %53 ]
  %62 = phi i8* [ %48, %43 ], [ %55, %53 ]
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !875
  store i8* %63, i8** %61, align 8, !dbg !875, !tbaa !876
  %64 = load i8, i8* %62, align 1, !dbg !875, !tbaa !780
  %65 = zext i8 %64 to i32, !dbg !875
  call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !839, metadata !696) #10, !dbg !884
  br label %73, !dbg !885

; <label>:66:                                     ; preds = %52, %53
  %67 = phi %struct._IO_FILE* [ %71, %53 ], [ %44, %52 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, i64 0, metadata !798, metadata !696) #10, !dbg !852
  %68 = call i32 @__uflow(%struct._IO_FILE* nonnull %67) #10, !dbg !875
  call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !839, metadata !696) #10, !dbg !884
  %69 = icmp slt i32 %68, 0, !dbg !886
  br i1 %69, label %70, label %73, !dbg !885

; <label>:70:                                     ; preds = %66
  %71 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* %67) #10, !dbg !887
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !798, metadata !696) #10, !dbg !852
  %72 = icmp eq %struct._IO_FILE* %71, null, !dbg !885
  br i1 %72, label %73, label %53, !dbg !888

; <label>:73:                                     ; preds = %70, %66, %59
  %74 = phi i32 [ %65, %59 ], [ %68, %66 ], [ %68, %70 ]
  %75 = phi %struct._IO_FILE* [ %60, %59 ], [ null, %70 ], [ %67, %66 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %75, i64 0, metadata !798, metadata !696) #10, !dbg !852
  %76 = and i8 %45, 1, !dbg !889
  %77 = icmp eq i8 %76, 0, !dbg !889
  br i1 %77, label %142, label %78, !dbg !890

; <label>:78:                                     ; preds = %73
  switch i32 %74, label %121 [
    i32 9, label %79
    i32 8, label %113
  ], !dbg !891

; <label>:79:                                     ; preds = %78
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !850, metadata !696) #10, !dbg !892
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #10, !dbg !893
  call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !843, metadata !696) #10, !dbg !860
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !850, metadata !696) #10, !dbg !892
  %80 = call i64 @get_next_tab_column(i64 %46, i64* nonnull %3, i8* nonnull %4) #10, !dbg !894
  call void @llvm.dbg.value(metadata i64 %80, i64 0, metadata !844, metadata !696) #10, !dbg !895
  %81 = load i8, i8* %4, align 1, !dbg !896, !tbaa !760, !range !898
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !850, metadata !696) #10, !dbg !892
  %82 = icmp eq i8 %81, 0, !dbg !896
  %83 = add i64 %46, 1, !dbg !899
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !844, metadata !696) #10, !dbg !895
  %84 = select i1 %82, i64 %80, i64 %83, !dbg !900
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !844, metadata !696) #10, !dbg !895
  %85 = icmp ult i64 %84, %46, !dbg !901
  br i1 %85, label %86, label %88, !dbg !903

; <label>:86:                                     ; preds = %79
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !904
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %87) #10, !dbg !904
  unreachable, !dbg !904

; <label>:88:                                     ; preds = %79
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !842, metadata !696) #10, !dbg !858
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !842, metadata !696) #10, !dbg !858
  %89 = icmp ult i64 %83, %84, !dbg !905
  br i1 %89, label %90, label %111, !dbg !906

; <label>:90:                                     ; preds = %88
  br label %91, !dbg !907

; <label>:91:                                     ; preds = %90, %108
  %92 = phi i64 [ %109, %108 ], [ %83, %90 ]
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !912, metadata !696) #10, !dbg !915
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !907, !tbaa !703
  %94 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %93, i64 0, i32 5, !dbg !907
  %95 = load i8*, i8** %94, align 8, !dbg !907, !tbaa !916
  %96 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %93, i64 0, i32 6, !dbg !907
  %97 = load i8*, i8** %96, align 8, !dbg !907, !tbaa !917
  %98 = icmp ult i8* %95, %97, !dbg !907
  br i1 %98, label %99, label %101, !dbg !907, !prof !880

; <label>:99:                                     ; preds = %91
  %100 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !907
  store i8* %100, i8** %94, align 8, !dbg !907, !tbaa !916
  store i8 32, i8* %95, align 1, !dbg !907, !tbaa !780
  br label %108, !dbg !918

; <label>:101:                                    ; preds = %91
  %102 = call i32 @__overflow(%struct._IO_FILE* %93, i32 32) #10, !dbg !907
  %103 = icmp slt i32 %102, 0, !dbg !919
  br i1 %103, label %104, label %108, !dbg !918

; <label>:104:                                    ; preds = %101
  %105 = tail call i32* @__errno_location() #17, !dbg !920
  %106 = load i32, i32* %105, align 4, !dbg !920, !tbaa !789
  %107 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !920
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %106, i8* %107) #10, !dbg !920
  unreachable, !dbg !920

; <label>:108:                                    ; preds = %101, %99
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !842, metadata !696) #10, !dbg !858
  %109 = add i64 %92, 1, !dbg !921
  call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !842, metadata !696) #10, !dbg !858
  %110 = icmp ult i64 %109, %84, !dbg !905
  br i1 %110, label %91, label %111, !dbg !906, !llvm.loop !922

; <label>:111:                                    ; preds = %108, %88
  %112 = phi i64 [ %83, %88 ], [ %109, %108 ]
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !839, metadata !696) #10, !dbg !884
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !850, metadata !696) #10, !dbg !892
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #10, !dbg !925
  br label %126, !dbg !926

; <label>:113:                                    ; preds = %78
  %114 = icmp ne i64 %46, 0, !dbg !927
  %115 = zext i1 %114 to i64, !dbg !930
  %116 = sub i64 %46, %115, !dbg !931
  call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !842, metadata !696) #10, !dbg !858
  %117 = load i64, i64* %3, align 8, !dbg !932, !tbaa !861
  call void @llvm.dbg.value(metadata i64 %117, i64 0, metadata !843, metadata !696) #10, !dbg !860
  %118 = icmp ne i64 %117, 0, !dbg !933
  %119 = zext i1 %118 to i64, !dbg !934
  %120 = sub i64 %117, %119, !dbg !935
  call void @llvm.dbg.value(metadata i64 %120, i64 0, metadata !843, metadata !696) #10, !dbg !860
  store i64 %120, i64* %3, align 8, !dbg !935, !tbaa !861
  br label %126, !dbg !936

; <label>:121:                                    ; preds = %78
  %122 = add i64 %46, 1, !dbg !937
  call void @llvm.dbg.value(metadata i64 %122, i64 0, metadata !842, metadata !696) #10, !dbg !858
  %123 = icmp eq i64 %122, 0, !dbg !939
  br i1 %123, label %124, label %126, !dbg !941

; <label>:124:                                    ; preds = %121
  %125 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !942
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %125) #10, !dbg !942
  unreachable, !dbg !942

; <label>:126:                                    ; preds = %121, %113, %111
  %127 = phi i32 [ 32, %111 ], [ 8, %113 ], [ %74, %121 ]
  %128 = phi i64 [ %112, %111 ], [ %116, %113 ], [ %122, %121 ]
  call void @llvm.dbg.value(metadata i64 %128, i64 0, metadata !842, metadata !696) #10, !dbg !858
  call void @llvm.dbg.value(metadata i32 %127, i64 0, metadata !839, metadata !696) #10, !dbg !884
  %129 = load i8, i8* @convert_entire_line, align 1, !dbg !943, !tbaa !760, !range !898
  %130 = icmp eq i8 %129, 0, !dbg !943
  br i1 %130, label %131, label %139, !dbg !944

; <label>:131:                                    ; preds = %126
  %132 = tail call i16** @__ctype_b_loc() #17, !dbg !945
  %133 = load i16*, i16** %132, align 8, !dbg !945, !tbaa !703
  %134 = sext i32 %127 to i64, !dbg !945
  %135 = getelementptr inbounds i16, i16* %133, i64 %134, !dbg !945
  %136 = load i16, i16* %135, align 2, !dbg !945, !tbaa !946
  %137 = and i16 %136, 1, !dbg !945
  %138 = icmp ne i16 %137, 0, !dbg !947
  br label %139, !dbg !944

; <label>:139:                                    ; preds = %131, %126
  %140 = phi i1 [ true, %126 ], [ %138, %131 ]
  %141 = zext i1 %140 to i8, !dbg !948
  call void @llvm.dbg.value(metadata i8 %141, i64 0, metadata !841, metadata !696) #10, !dbg !857
  br label %142, !dbg !949

; <label>:142:                                    ; preds = %139, %73
  %143 = phi i32 [ %127, %139 ], [ %74, %73 ]
  %144 = phi i8 [ %141, %139 ], [ %45, %73 ]
  %145 = phi i64 [ %128, %139 ], [ %46, %73 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !842, metadata !696) #10, !dbg !858
  call void @llvm.dbg.value(metadata i8 %144, i64 0, metadata !841, metadata !696) #10, !dbg !857
  call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !839, metadata !696) #10, !dbg !884
  %146 = icmp slt i32 %143, 0, !dbg !950
  br i1 %146, label %168, label %147, !dbg !952

; <label>:147:                                    ; preds = %142
  call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !912, metadata !696) #10, !dbg !953
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !956, !tbaa !703
  %149 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %148, i64 0, i32 5, !dbg !956
  %150 = load i8*, i8** %149, align 8, !dbg !956, !tbaa !916
  %151 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %148, i64 0, i32 6, !dbg !956
  %152 = load i8*, i8** %151, align 8, !dbg !956, !tbaa !917
  %153 = icmp ult i8* %150, %152, !dbg !956
  br i1 %153, label %154, label %157, !dbg !956, !prof !880

; <label>:154:                                    ; preds = %147
  %155 = trunc i32 %143 to i8, !dbg !956
  %156 = getelementptr inbounds i8, i8* %150, i64 1, !dbg !956
  store i8* %156, i8** %149, align 8, !dbg !956, !tbaa !916
  store i8 %155, i8* %150, align 1, !dbg !956, !tbaa !780
  br label %165, !dbg !957

; <label>:157:                                    ; preds = %147
  %158 = and i32 %143, 255, !dbg !956
  %159 = call i32 @__overflow(%struct._IO_FILE* %148, i32 %158) #10, !dbg !956
  %160 = icmp slt i32 %159, 0, !dbg !958
  br i1 %160, label %161, label %165, !dbg !957

; <label>:161:                                    ; preds = %157
  %162 = tail call i32* @__errno_location() #17, !dbg !959
  %163 = load i32, i32* %162, align 4, !dbg !959, !tbaa !789
  %164 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !959
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %163, i8* %164) #10, !dbg !959
  unreachable, !dbg !959

; <label>:165:                                    ; preds = %157, %154
  %166 = icmp eq i32 %143, 10, !dbg !960
  br i1 %166, label %167, label %43, !dbg !961, !llvm.loop !864

; <label>:167:                                    ; preds = %165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #10, !dbg !962
  br label %41, !dbg !856, !llvm.loop !963

; <label>:168:                                    ; preds = %142
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #10, !dbg !962
  br label %169

; <label>:169:                                    ; preds = %31, %168
  call void @cleanup_file_list_stdin() #10, !dbg !966
  %170 = load i32, i32* @exit_status, align 4, !dbg !967, !tbaa !789
  ret i32 %170, !dbg !968
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @add_tab_stop(i64) local_unnamed_addr #6 !dbg !969 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !973, metadata !696), !dbg !976
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !977, !tbaa !861
  %3 = icmp eq i64 %2, 0, !dbg !977
  br i1 %3, label %9, label %4, !dbg !977

; <label>:4:                                      ; preds = %1
  %5 = load i64*, i64** @tab_list, align 8, !dbg !978, !tbaa !703
  %6 = add i64 %2, -1, !dbg !979
  %7 = getelementptr inbounds i64, i64* %5, i64 %6, !dbg !978
  %8 = load i64, i64* %7, align 8, !dbg !978, !tbaa !861
  br label %9, !dbg !977

; <label>:9:                                      ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !977
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !974, metadata !696), !dbg !980
  %11 = icmp ugt i64 %10, %0, !dbg !981
  %12 = sub i64 %0, %10, !dbg !982
  %13 = select i1 %11, i64 0, i64 %12, !dbg !983
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !975, metadata !696), !dbg !984
  %14 = load i64, i64* @n_tabs_allocated, align 8, !dbg !985, !tbaa !861
  %15 = icmp eq i64 %2, %14, !dbg !987
  br i1 %15, label %18, label %16, !dbg !988

; <label>:16:                                     ; preds = %9
  %17 = load i64*, i64** @tab_list, align 8, !dbg !989, !tbaa !703
  br label %36, !dbg !988

; <label>:18:                                     ; preds = %9
  %19 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !990, !tbaa !703
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !106, metadata !696) #10, !dbg !991
  tail call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, i64 0, metadata !107, metadata !696) #10, !dbg !993
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !108, metadata !696) #10, !dbg !994
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !109, metadata !696) #10, !dbg !995
  %20 = icmp eq i8* %19, null, !dbg !996
  br i1 %20, label %21, label %23, !dbg !998

; <label>:21:                                     ; preds = %18
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !109, metadata !696) #10, !dbg !995
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !109, metadata !696) #10, !dbg !995
  %22 = select i1 %3, i64 16, i64 %2, !dbg !999
  br label %30, !dbg !999

; <label>:23:                                     ; preds = %18
  %24 = icmp ult i64 %2, 768614336404564650, !dbg !1001
  br i1 %24, label %26, label %25, !dbg !1004

; <label>:25:                                     ; preds = %23
  tail call void @xalloc_die() #15, !dbg !1005
  unreachable, !dbg !1005

; <label>:26:                                     ; preds = %23
  %27 = lshr i64 %2, 1, !dbg !1006
  %28 = add i64 %2, 1, !dbg !1007
  %29 = add i64 %28, %27, !dbg !1008
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !109, metadata !696) #10, !dbg !995
  br label %30

; <label>:30:                                     ; preds = %21, %26
  %31 = phi i64 [ %29, %26 ], [ %22, %21 ]
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !109, metadata !696) #10, !dbg !995
  store i64 %31, i64* @n_tabs_allocated, align 8, !dbg !1009, !tbaa !861
  %32 = shl i64 %31, 3, !dbg !1010
  %33 = tail call i8* @xrealloc(i8* %19, i64 %32) #10, !dbg !1011
  store i8* %33, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1012, !tbaa !703
  %34 = bitcast i8* %33 to i64*, !dbg !1013
  %35 = load i64, i64* @first_free_tab, align 8, !dbg !1014, !tbaa !861
  br label %36, !dbg !1013

; <label>:36:                                     ; preds = %16, %30
  %37 = phi i64 [ %2, %16 ], [ %35, %30 ], !dbg !1014
  %38 = phi i64* [ %17, %16 ], [ %34, %30 ], !dbg !989
  %39 = add i64 %37, 1, !dbg !1014
  store i64 %39, i64* @first_free_tab, align 8, !dbg !1014, !tbaa !861
  %40 = getelementptr inbounds i64, i64* %38, i64 %37, !dbg !989
  store i64 %0, i64* %40, align 8, !dbg !1015, !tbaa !861
  %41 = load i64, i64* @max_column_width, align 8, !dbg !1016, !tbaa !861
  %42 = icmp ult i64 %41, %13, !dbg !1018
  br i1 %42, label %43, label %44, !dbg !1019

; <label>:43:                                     ; preds = %36
  store i64 %13, i64* @max_column_width, align 8, !dbg !1020, !tbaa !861
  br label %44, !dbg !1022

; <label>:44:                                     ; preds = %43, %36
  ret void, !dbg !1023
}

; Function Attrs: nounwind sspstrong uwtable
define void @parse_tab_stops(i8*) local_unnamed_addr #6 !dbg !1024 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1026, metadata !696), !dbg !1043
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1027, metadata !696), !dbg !1044
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1028, metadata !696), !dbg !1045
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1029, metadata !696), !dbg !1046
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1030, metadata !696), !dbg !1047
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1031, metadata !696), !dbg !1048
  br label %2, !dbg !1049

; <label>:2:                                      ; preds = %108, %1
  %3 = phi i64 [ 0, %1 ], [ %109, %108 ]
  %4 = phi i8 [ 0, %1 ], [ %110, %108 ]
  %5 = phi i8* [ null, %1 ], [ %111, %108 ]
  %6 = phi i8 [ 1, %1 ], [ %112, %108 ]
  %7 = phi i8 [ 0, %1 ], [ %113, %108 ]
  %8 = phi i8* [ %0, %1 ], [ %115, %108 ]
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1028, metadata !696), !dbg !1045
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1026, metadata !696), !dbg !1043
  tail call void @llvm.dbg.value(metadata i8 %7, i64 0, metadata !1027, metadata !696), !dbg !1044
  tail call void @llvm.dbg.value(metadata i8 %6, i64 0, metadata !1031, metadata !696), !dbg !1048
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1030, metadata !696), !dbg !1047
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !1029, metadata !696), !dbg !1046
  %9 = load i8, i8* %8, align 1, !dbg !1050, !tbaa !780
  switch i8 %9, label %10 [
    i8 0, label %116
    i8 44, label %18
  ], !dbg !1051

; <label>:10:                                     ; preds = %2
  %11 = tail call i16** @__ctype_b_loc() #17, !dbg !1052
  %12 = load i16*, i16** %11, align 8, !dbg !1052, !tbaa !703
  %13 = zext i8 %9 to i64, !dbg !1052
  %14 = getelementptr inbounds i16, i16* %12, i64 %13, !dbg !1052
  %15 = load i16, i16* %14, align 2, !dbg !1052, !tbaa !946
  %16 = and i16 %15, 1, !dbg !1052
  %17 = icmp eq i16 %16, 0, !dbg !1052
  br i1 %17, label %73, label %18, !dbg !1053

; <label>:18:                                     ; preds = %2, %10
  %19 = and i8 %7, 1, !dbg !1054
  %20 = icmp eq i8 %19, 0, !dbg !1054
  br i1 %20, label %108, label %21, !dbg !1057

; <label>:21:                                     ; preds = %18
  %22 = and i8 %4, 1, !dbg !1058
  %23 = icmp eq i8 %22, 0, !dbg !1058
  br i1 %23, label %30, label %24, !dbg !1061

; <label>:24:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1062, metadata !696) #10, !dbg !1068
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1067, metadata !696) #10, !dbg !1072
  %25 = load i64, i64* @extend_size, align 8, !dbg !1073, !tbaa !861
  %26 = icmp eq i64 %25, 0, !dbg !1073
  br i1 %26, label %27, label %28, !dbg !1075

; <label>:27:                                     ; preds = %24
  store i64 %3, i64* @extend_size, align 8, !dbg !1076, !tbaa !861
  br label %108, !dbg !1077

; <label>:28:                                     ; preds = %24
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8.7, i64 0, i64 0), i32 5) #10, !dbg !1078
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #10, !dbg !1080
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1067, metadata !696) #10, !dbg !1072
  store i64 %3, i64* @extend_size, align 8, !dbg !1076, !tbaa !861
  br label %177, !dbg !1077

; <label>:30:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !973, metadata !696) #10, !dbg !1081
  %31 = load i64, i64* @first_free_tab, align 8, !dbg !1083, !tbaa !861
  %32 = icmp eq i64 %31, 0, !dbg !1083
  br i1 %32, label %38, label %33, !dbg !1083

; <label>:33:                                     ; preds = %30
  %34 = load i64*, i64** @tab_list, align 8, !dbg !1084, !tbaa !703
  %35 = add i64 %31, -1, !dbg !1085
  %36 = getelementptr inbounds i64, i64* %34, i64 %35, !dbg !1084
  %37 = load i64, i64* %36, align 8, !dbg !1084, !tbaa !861
  br label %38, !dbg !1083

; <label>:38:                                     ; preds = %33, %30
  %39 = phi i64 [ %37, %33 ], [ 0, %30 ], !dbg !1083
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !974, metadata !696) #10, !dbg !1086
  %40 = icmp ult i64 %3, %39, !dbg !1087
  %41 = sub i64 %3, %39, !dbg !1088
  %42 = select i1 %40, i64 0, i64 %41, !dbg !1089
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !975, metadata !696) #10, !dbg !1090
  %43 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1091, !tbaa !861
  %44 = icmp eq i64 %31, %43, !dbg !1092
  br i1 %44, label %47, label %45, !dbg !1093

; <label>:45:                                     ; preds = %38
  %46 = load i64*, i64** @tab_list, align 8, !dbg !1094, !tbaa !703
  br label %65, !dbg !1093

; <label>:47:                                     ; preds = %38
  %48 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1095, !tbaa !703
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !106, metadata !696) #10, !dbg !1096
  tail call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, i64 0, metadata !107, metadata !696) #10, !dbg !1098
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !108, metadata !696) #10, !dbg !1099
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !109, metadata !696) #10, !dbg !1100
  %49 = icmp eq i8* %48, null, !dbg !1101
  br i1 %49, label %50, label %52, !dbg !1102

; <label>:50:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !109, metadata !696) #10, !dbg !1100
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !109, metadata !696) #10, !dbg !1100
  %51 = select i1 %32, i64 16, i64 %31, !dbg !1103
  br label %59, !dbg !1103

; <label>:52:                                     ; preds = %47
  %53 = icmp ult i64 %31, 768614336404564650, !dbg !1104
  br i1 %53, label %55, label %54, !dbg !1105

; <label>:54:                                     ; preds = %52
  tail call void @xalloc_die() #15, !dbg !1106
  unreachable, !dbg !1106

; <label>:55:                                     ; preds = %52
  %56 = lshr i64 %31, 1, !dbg !1107
  %57 = add i64 %31, 1, !dbg !1108
  %58 = add i64 %57, %56, !dbg !1109
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !109, metadata !696) #10, !dbg !1100
  br label %59

; <label>:59:                                     ; preds = %55, %50
  %60 = phi i64 [ %58, %55 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !109, metadata !696) #10, !dbg !1100
  store i64 %60, i64* @n_tabs_allocated, align 8, !dbg !1110, !tbaa !861
  %61 = shl i64 %60, 3, !dbg !1111
  %62 = tail call i8* @xrealloc(i8* %48, i64 %61) #10, !dbg !1112
  store i8* %62, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1113, !tbaa !703
  %63 = bitcast i8* %62 to i64*, !dbg !1114
  %64 = load i64, i64* @first_free_tab, align 8, !dbg !1115, !tbaa !861
  br label %65, !dbg !1114

; <label>:65:                                     ; preds = %59, %45
  %66 = phi i64 [ %31, %45 ], [ %64, %59 ], !dbg !1115
  %67 = phi i64* [ %46, %45 ], [ %63, %59 ], !dbg !1094
  %68 = add i64 %66, 1, !dbg !1115
  store i64 %68, i64* @first_free_tab, align 8, !dbg !1115, !tbaa !861
  %69 = getelementptr inbounds i64, i64* %67, i64 %66, !dbg !1094
  store i64 %3, i64* %69, align 8, !dbg !1116, !tbaa !861
  %70 = load i64, i64* @max_column_width, align 8, !dbg !1117, !tbaa !861
  %71 = icmp ult i64 %70, %42, !dbg !1118
  br i1 %71, label %72, label %108, !dbg !1119

; <label>:72:                                     ; preds = %65
  store i64 %42, i64* @max_column_width, align 8, !dbg !1120, !tbaa !861
  br label %108, !dbg !1121

; <label>:73:                                     ; preds = %10
  %74 = icmp eq i8 %9, 47, !dbg !1122
  br i1 %74, label %75, label %81, !dbg !1123

; <label>:75:                                     ; preds = %73
  %76 = and i8 %7, 1, !dbg !1124
  %77 = icmp eq i8 %76, 0, !dbg !1124
  br i1 %77, label %108, label %78, !dbg !1127

; <label>:78:                                     ; preds = %75
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.8, i64 0, i64 0), i32 5) #10, !dbg !1128
  %80 = tail call i8* @quote(i8* %8) #10, !dbg !1130
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %79, i8* %80) #10, !dbg !1131
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1031, metadata !696), !dbg !1048
  br label %108, !dbg !1132

; <label>:81:                                     ; preds = %73
  %82 = sext i8 %9 to i32, !dbg !1133
  %83 = add nsw i32 %82, -48, !dbg !1134
  %84 = icmp ult i32 %83, 10, !dbg !1134
  br i1 %84, label %85, label %105, !dbg !1135

; <label>:85:                                     ; preds = %81
  %86 = and i8 %7, 1, !dbg !1136
  %87 = icmp eq i8 %86, 0, !dbg !1136
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1028, metadata !696), !dbg !1045
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1027, metadata !696), !dbg !1044
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1030, metadata !696), !dbg !1047
  %88 = select i1 %87, i64 0, i64 %3, !dbg !1138
  %89 = select i1 %87, i8* %8, i8* %5, !dbg !1138
  %90 = select i1 %87, i8 1, i8 %7, !dbg !1138
  tail call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !1028, metadata !696), !dbg !1045
  tail call void @llvm.dbg.value(metadata i8 %90, i64 0, metadata !1027, metadata !696), !dbg !1044
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1030, metadata !696), !dbg !1047
  %91 = icmp ugt i64 %88, 1844674407370955161, !dbg !1139
  br i1 %91, label %98, label %92, !dbg !1139

; <label>:92:                                     ; preds = %85
  %93 = mul i64 %88, 10, !dbg !1139
  %94 = sext i8 %9 to i64, !dbg !1139
  %95 = add nsw i64 %94, -48, !dbg !1139
  %96 = add i64 %95, %93, !dbg !1139
  %97 = icmp ult i64 %96, %88, !dbg !1139
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !1028, metadata !696), !dbg !1045
  br i1 %97, label %98, label %108, !dbg !1140

; <label>:98:                                     ; preds = %92, %85
  %99 = tail call i64 @strspn(i8* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.9, i64 0, i64 0)) #14, !dbg !1141
  tail call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1032, metadata !696), !dbg !1142
  %100 = tail call i8* @xstrndup(i8* %89, i64 %99) #10, !dbg !1143
  tail call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1042, metadata !696), !dbg !1144
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.10, i64 0, i64 0), i32 5) #10, !dbg !1145
  %102 = tail call i8* @quote(i8* %100) #10, !dbg !1146
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %101, i8* %102) #10, !dbg !1147
  tail call void @free(i8* %100) #10, !dbg !1148
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1031, metadata !696), !dbg !1048
  %103 = getelementptr inbounds i8, i8* %89, i64 %99, !dbg !1149
  %104 = getelementptr inbounds i8, i8* %103, i64 -1, !dbg !1150
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !1026, metadata !696), !dbg !1043
  br label %108, !dbg !1151

; <label>:105:                                    ; preds = %81
  %106 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4.11, i64 0, i64 0), i32 5) #10, !dbg !1152
  %107 = tail call i8* @quote(i8* %8) #10, !dbg !1154
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %106, i8* %107) #10, !dbg !1155
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1031, metadata !696), !dbg !1048
  br label %177, !dbg !1156

; <label>:108:                                    ; preds = %92, %72, %65, %27, %78, %75, %18, %98
  %109 = phi i64 [ %96, %92 ], [ %88, %98 ], [ %3, %18 ], [ %3, %75 ], [ %3, %78 ], [ %3, %27 ], [ %3, %65 ], [ %3, %72 ]
  %110 = phi i8 [ %4, %92 ], [ %4, %98 ], [ %4, %18 ], [ 1, %75 ], [ 1, %78 ], [ %4, %27 ], [ %4, %65 ], [ %4, %72 ]
  %111 = phi i8* [ %89, %92 ], [ %89, %98 ], [ %5, %18 ], [ %5, %75 ], [ %5, %78 ], [ %5, %27 ], [ %5, %65 ], [ %5, %72 ]
  %112 = phi i8 [ %6, %92 ], [ 0, %98 ], [ %6, %18 ], [ %6, %75 ], [ 0, %78 ], [ %6, %27 ], [ %6, %65 ], [ %6, %72 ]
  %113 = phi i8 [ %90, %92 ], [ %90, %98 ], [ 0, %18 ], [ %7, %75 ], [ %7, %78 ], [ 0, %27 ], [ 0, %65 ], [ 0, %72 ]
  %114 = phi i8* [ %8, %92 ], [ %104, %98 ], [ %8, %18 ], [ %8, %75 ], [ %8, %78 ], [ %8, %27 ], [ %8, %65 ], [ %8, %72 ]
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1028, metadata !696), !dbg !1045
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !1026, metadata !696), !dbg !1043
  tail call void @llvm.dbg.value(metadata i8 %113, i64 0, metadata !1027, metadata !696), !dbg !1044
  tail call void @llvm.dbg.value(metadata i8 %112, i64 0, metadata !1031, metadata !696), !dbg !1048
  tail call void @llvm.dbg.value(metadata i8* %111, i64 0, metadata !1030, metadata !696), !dbg !1047
  tail call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !1029, metadata !696), !dbg !1046
  %115 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !1157
  tail call void @llvm.dbg.value(metadata i8* %115, i64 0, metadata !1026, metadata !696), !dbg !1043
  br label %2, !dbg !1158, !llvm.loop !1159

; <label>:116:                                    ; preds = %2
  tail call void @llvm.dbg.value(metadata i8 %6, i64 0, metadata !1031, metadata !696), !dbg !1048
  %117 = and i8 %6, 1, !dbg !1161
  %118 = and i8 %117, %7, !dbg !1161
  %119 = icmp eq i8 %118, 0, !dbg !1161
  br i1 %119, label %173, label %120, !dbg !1161

; <label>:120:                                    ; preds = %116
  %121 = and i8 %4, 1, !dbg !1163
  %122 = icmp eq i8 %121, 0, !dbg !1163
  br i1 %122, label %130, label %123, !dbg !1166

; <label>:123:                                    ; preds = %120
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1062, metadata !696) #10, !dbg !1167
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1067, metadata !696) #10, !dbg !1169
  %124 = load i64, i64* @extend_size, align 8, !dbg !1170, !tbaa !861
  %125 = icmp eq i64 %124, 0, !dbg !1170
  br i1 %125, label %128, label %126, !dbg !1171

; <label>:126:                                    ; preds = %123
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8.7, i64 0, i64 0), i32 5) #10, !dbg !1172
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %127) #10, !dbg !1173
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1067, metadata !696) #10, !dbg !1169
  br label %128, !dbg !1174

; <label>:128:                                    ; preds = %123, %126
  %129 = phi i8 [ 0, %126 ], [ 1, %123 ]
  store i64 %3, i64* @extend_size, align 8, !dbg !1175, !tbaa !861
  tail call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1031, metadata !696), !dbg !1048
  br label %173, !dbg !1176

; <label>:130:                                    ; preds = %120
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !973, metadata !696) #10, !dbg !1177
  %131 = load i64, i64* @first_free_tab, align 8, !dbg !1179, !tbaa !861
  %132 = icmp eq i64 %131, 0, !dbg !1179
  br i1 %132, label %138, label %133, !dbg !1179

; <label>:133:                                    ; preds = %130
  %134 = load i64*, i64** @tab_list, align 8, !dbg !1180, !tbaa !703
  %135 = add i64 %131, -1, !dbg !1181
  %136 = getelementptr inbounds i64, i64* %134, i64 %135, !dbg !1180
  %137 = load i64, i64* %136, align 8, !dbg !1180, !tbaa !861
  br label %138, !dbg !1179

; <label>:138:                                    ; preds = %133, %130
  %139 = phi i64 [ %137, %133 ], [ 0, %130 ], !dbg !1179
  tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !974, metadata !696) #10, !dbg !1182
  %140 = icmp ult i64 %3, %139, !dbg !1183
  %141 = sub i64 %3, %139, !dbg !1184
  %142 = select i1 %140, i64 0, i64 %141, !dbg !1185
  tail call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !975, metadata !696) #10, !dbg !1186
  %143 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1187, !tbaa !861
  %144 = icmp eq i64 %131, %143, !dbg !1188
  br i1 %144, label %147, label %145, !dbg !1189

; <label>:145:                                    ; preds = %138
  %146 = load i64*, i64** @tab_list, align 8, !dbg !1190, !tbaa !703
  br label %165, !dbg !1189

; <label>:147:                                    ; preds = %138
  %148 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1191, !tbaa !703
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !106, metadata !696) #10, !dbg !1192
  tail call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, i64 0, metadata !107, metadata !696) #10, !dbg !1194
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !108, metadata !696) #10, !dbg !1195
  tail call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !109, metadata !696) #10, !dbg !1196
  %149 = icmp eq i8* %148, null, !dbg !1197
  br i1 %149, label %150, label %152, !dbg !1198

; <label>:150:                                    ; preds = %147
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !109, metadata !696) #10, !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !109, metadata !696) #10, !dbg !1196
  %151 = select i1 %132, i64 16, i64 %131, !dbg !1199
  br label %159, !dbg !1199

; <label>:152:                                    ; preds = %147
  %153 = icmp ult i64 %131, 768614336404564650, !dbg !1200
  br i1 %153, label %155, label %154, !dbg !1201

; <label>:154:                                    ; preds = %152
  tail call void @xalloc_die() #15, !dbg !1202
  unreachable, !dbg !1202

; <label>:155:                                    ; preds = %152
  %156 = lshr i64 %131, 1, !dbg !1203
  %157 = add i64 %131, 1, !dbg !1204
  %158 = add i64 %157, %156, !dbg !1205
  tail call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !109, metadata !696) #10, !dbg !1196
  br label %159

; <label>:159:                                    ; preds = %155, %150
  %160 = phi i64 [ %158, %155 ], [ %151, %150 ]
  tail call void @llvm.dbg.value(metadata i64 %160, i64 0, metadata !109, metadata !696) #10, !dbg !1196
  store i64 %160, i64* @n_tabs_allocated, align 8, !dbg !1206, !tbaa !861
  %161 = shl i64 %160, 3, !dbg !1207
  %162 = tail call i8* @xrealloc(i8* %148, i64 %161) #10, !dbg !1208
  store i8* %162, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1209, !tbaa !703
  %163 = bitcast i8* %162 to i64*, !dbg !1210
  %164 = load i64, i64* @first_free_tab, align 8, !dbg !1211, !tbaa !861
  br label %165, !dbg !1210

; <label>:165:                                    ; preds = %159, %145
  %166 = phi i64 [ %131, %145 ], [ %164, %159 ], !dbg !1211
  %167 = phi i64* [ %146, %145 ], [ %163, %159 ], !dbg !1190
  %168 = add i64 %166, 1, !dbg !1211
  store i64 %168, i64* @first_free_tab, align 8, !dbg !1211, !tbaa !861
  %169 = getelementptr inbounds i64, i64* %167, i64 %166, !dbg !1190
  store i64 %3, i64* %169, align 8, !dbg !1212, !tbaa !861
  %170 = load i64, i64* @max_column_width, align 8, !dbg !1213, !tbaa !861
  %171 = icmp ult i64 %170, %142, !dbg !1214
  br i1 %171, label %172, label %173, !dbg !1215

; <label>:172:                                    ; preds = %165
  store i64 %142, i64* @max_column_width, align 8, !dbg !1216, !tbaa !861
  br label %173, !dbg !1217

; <label>:173:                                    ; preds = %172, %165, %116, %128
  %174 = phi i8 [ %129, %128 ], [ %6, %116 ], [ %6, %165 ], [ %6, %172 ]
  tail call void @llvm.dbg.value(metadata i8 %174, i64 0, metadata !1031, metadata !696), !dbg !1048
  %175 = and i8 %174, 1, !dbg !1218
  %176 = icmp eq i8 %175, 0, !dbg !1218
  br i1 %176, label %177, label %178, !dbg !1220

; <label>:177:                                    ; preds = %105, %28, %173
  tail call void @exit(i32 1) #15, !dbg !1221
  unreachable, !dbg !1221

; <label>:178:                                    ; preds = %173
  ret void, !dbg !1222
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @finalize_tab_stops() local_unnamed_addr #6 !dbg !1223 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1224, !tbaa !703
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1225, !tbaa !861
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1226, metadata !696) #10, !dbg !1236
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1233, metadata !696) #10, !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1234, metadata !696) #10, !dbg !1239
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1235, metadata !696) #10, !dbg !1240
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1235, metadata !696) #10, !dbg !1240
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1234, metadata !696) #10, !dbg !1239
  %3 = icmp eq i64 %2, 0, !dbg !1241
  br i1 %3, label %20, label %4, !dbg !1244

; <label>:4:                                      ; preds = %0
  br label %7, !dbg !1245

; <label>:5:                                      ; preds = %15
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1235, metadata !696) #10, !dbg !1240
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1234, metadata !696) #10, !dbg !1239
  %6 = icmp ult i64 %17, %2, !dbg !1241
  br i1 %6, label %7, label %24, !dbg !1244, !llvm.loop !1248

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %17, %5 ], [ 0, %4 ]
  %9 = phi i64 [ %11, %5 ], [ 0, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1234, metadata !696) #10, !dbg !1239
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1235, metadata !696) #10, !dbg !1240
  %10 = getelementptr inbounds i64, i64* %1, i64 %8, !dbg !1245
  %11 = load i64, i64* %10, align 8, !dbg !1245, !tbaa !861
  %12 = icmp eq i64 %11, 0, !dbg !1251
  br i1 %12, label %13, label %15, !dbg !1252

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9.14, i64 0, i64 0), i32 5) #10, !dbg !1253
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %14) #10, !dbg !1253
  unreachable, !dbg !1253

; <label>:15:                                     ; preds = %7
  %16 = icmp ugt i64 %11, %9, !dbg !1254
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1234, metadata !696) #10, !dbg !1239
  %17 = add nuw i64 %8, 1, !dbg !1256
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1235, metadata !696) #10, !dbg !1240
  br i1 %16, label %5, label %18, !dbg !1257

; <label>:18:                                     ; preds = %15
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10.15, i64 0, i64 0), i32 5) #10, !dbg !1258
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %19) #10, !dbg !1258
  unreachable, !dbg !1258

; <label>:20:                                     ; preds = %0
  %21 = load i64, i64* @extend_size, align 8, !dbg !1259, !tbaa !861
  %22 = icmp eq i64 %21, 0, !dbg !1259
  %23 = select i1 %22, i64 8, i64 %21, !dbg !1259
  store i64 %23, i64* @max_column_width, align 8, !dbg !1261, !tbaa !861
  br label %31, !dbg !1262

; <label>:24:                                     ; preds = %5
  %25 = icmp ne i64 %2, 1, !dbg !1263
  %26 = load i64, i64* @extend_size, align 8, !dbg !1265
  %27 = icmp ne i64 %26, 0, !dbg !1265
  %28 = or i1 %25, %27, !dbg !1266
  br i1 %28, label %31, label %29, !dbg !1266

; <label>:29:                                     ; preds = %24
  %30 = load i64, i64* %1, align 8, !dbg !1267, !tbaa !861
  br label %31, !dbg !1268

; <label>:31:                                     ; preds = %29, %24, %20
  %32 = phi i64 [ %23, %20 ], [ %30, %29 ], [ 0, %24 ]
  store i64 %32, i64* @tab_size, align 8, !tbaa !861
  ret void, !dbg !1269
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @get_next_tab_column(i64, i64* nocapture, i8* nocapture) local_unnamed_addr #6 !dbg !1270 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1275, metadata !696), !dbg !1282
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1276, metadata !696), !dbg !1283
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1277, metadata !696), !dbg !1284
  store i8 0, i8* %2, align 1, !dbg !1285, !tbaa !760
  %4 = load i64, i64* @tab_size, align 8, !dbg !1286, !tbaa !861
  %5 = icmp eq i64 %4, 0, !dbg !1286
  br i1 %5, label %10, label %6, !dbg !1288

; <label>:6:                                      ; preds = %3
  %7 = urem i64 %0, %4, !dbg !1289
  %8 = add i64 %4, %0, !dbg !1290
  %9 = sub i64 %8, %7, !dbg !1291
  br label %32, !dbg !1292

; <label>:10:                                     ; preds = %3
  %11 = load i64, i64* %1, align 8, !dbg !1293, !tbaa !861
  %12 = load i64, i64* @first_free_tab, align 8, !dbg !1294, !tbaa !861
  %13 = icmp ult i64 %11, %12, !dbg !1295
  br i1 %13, label %14, label %24, !dbg !1296

; <label>:14:                                     ; preds = %10
  %15 = load i64*, i64** @tab_list, align 8, !tbaa !703
  br label %16, !dbg !1296

; <label>:16:                                     ; preds = %14, %21
  %17 = phi i64 [ %11, %14 ], [ %22, %21 ]
  %18 = getelementptr inbounds i64, i64* %15, i64 %17, !dbg !1297
  %19 = load i64, i64* %18, align 8, !dbg !1297, !tbaa !861
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1278, metadata !696), !dbg !1298
  %20 = icmp ugt i64 %19, %0, !dbg !1299
  br i1 %20, label %32, label %21

; <label>:21:                                     ; preds = %16
  %22 = add nuw i64 %17, 1, !dbg !1301
  store i64 %22, i64* %1, align 8, !dbg !1301, !tbaa !861
  %23 = icmp ult i64 %22, %12, !dbg !1295
  br i1 %23, label %16, label %24, !dbg !1296, !llvm.loop !1302

; <label>:24:                                     ; preds = %21, %10
  %25 = load i64, i64* @extend_size, align 8, !dbg !1304, !tbaa !861
  %26 = icmp eq i64 %25, 0, !dbg !1304
  br i1 %26, label %31, label %27, !dbg !1306

; <label>:27:                                     ; preds = %24
  %28 = urem i64 %0, %25, !dbg !1307
  %29 = add i64 %25, %0, !dbg !1308
  %30 = sub i64 %29, %28, !dbg !1309
  br label %32, !dbg !1310

; <label>:31:                                     ; preds = %24
  store i8 1, i8* %2, align 1, !dbg !1311, !tbaa !760
  br label %32, !dbg !1312

; <label>:32:                                     ; preds = %16, %31, %27, %6
  %33 = phi i64 [ %9, %6 ], [ %30, %27 ], [ 0, %31 ], [ %19, %16 ]
  ret i64 %33, !dbg !1313
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_file_list(i8**) local_unnamed_addr #6 !dbg !1314 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !1318, metadata !696), !dbg !1319
  store i1 false, i1* @have_read_stdin, align 1
  %2 = icmp eq i8** %0, null, !dbg !1320
  %3 = select i1 %2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), i8** %0, !dbg !1322
  store i8** %3, i8*** @file_list, align 8, !tbaa !703
  ret void, !dbg !1323
}

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @next_file(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !124 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !182, metadata !696), !dbg !1324
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1325
  br i1 %2, label %26, label %3, !dbg !1327

; <label>:3:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1328, metadata !696), !dbg !1333
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1337
  %5 = load i32, i32* %4, align 8, !dbg !1337, !tbaa !1338
  %6 = and i32 %5, 32, !dbg !1337
  %7 = icmp eq i32 %6, 0, !dbg !1339
  br i1 %7, label %13, label %8, !dbg !1340

; <label>:8:                                      ; preds = %3
  %9 = tail call i32* @__errno_location() #17, !dbg !1341
  %10 = load i32, i32* %9, align 4, !dbg !1341, !tbaa !789
  %11 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1343, !tbaa !703
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %11) #10, !dbg !1343
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.23, i64 0, i64 0), i8* %12) #10, !dbg !1344
  store i32 1, i32* @exit_status, align 4, !dbg !1345, !tbaa !789
  br label %13, !dbg !1346

; <label>:13:                                     ; preds = %3, %8
  %14 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1347, !tbaa !703
  %15 = tail call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.20, i64 0, i64 0)) #14, !dbg !1347
  %16 = icmp eq i32 %15, 0, !dbg !1347
  br i1 %16, label %17, label %18, !dbg !1349

; <label>:17:                                     ; preds = %13
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %0) #10, !dbg !1350
  br label %26, !dbg !1350

; <label>:18:                                     ; preds = %13
  %19 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #10, !dbg !1351
  %20 = icmp eq i32 %19, 0, !dbg !1353
  br i1 %20, label %26, label %21, !dbg !1354

; <label>:21:                                     ; preds = %18
  %22 = tail call i32* @__errno_location() #17, !dbg !1355
  %23 = load i32, i32* %22, align 4, !dbg !1355, !tbaa !789
  %24 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1357, !tbaa !703
  %25 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %24) #10, !dbg !1357
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.23, i64 0, i64 0), i8* %25) #10, !dbg !1358
  store i32 1, i32* @exit_status, align 4, !dbg !1359, !tbaa !789
  br label %26, !dbg !1360

; <label>:26:                                     ; preds = %18, %1, %17, %21
  %27 = load i8**, i8*** @file_list, align 8, !dbg !1361, !tbaa !703
  %28 = getelementptr inbounds i8*, i8** %27, i64 1, !dbg !1361
  store i8** %28, i8*** @file_list, align 8, !dbg !1361, !tbaa !703
  %29 = load i8*, i8** %27, align 8, !dbg !1362, !tbaa !703
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !183, metadata !696), !dbg !1363
  %30 = icmp eq i8* %29, null, !dbg !1364
  br i1 %30, label %52, label %31, !dbg !1365

; <label>:31:                                     ; preds = %26
  br label %32, !dbg !1366

; <label>:32:                                     ; preds = %31, %44
  %33 = phi i8* [ %50, %44 ], [ %29, %31 ]
  %34 = tail call i32 @strcmp(i8* nonnull %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.20, i64 0, i64 0)) #14, !dbg !1366
  %35 = icmp eq i32 %34, 0, !dbg !1366
  br i1 %35, label %36, label %38, !dbg !1369

; <label>:36:                                     ; preds = %32
  store i1 true, i1* @have_read_stdin, align 1
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1370, !tbaa !703
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %37, i64 0, metadata !182, metadata !696), !dbg !1324
  br label %40, !dbg !1372

; <label>:38:                                     ; preds = %32
  %39 = tail call %struct._IO_FILE* @fopen(i8* nonnull %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.24, i64 0, i64 0)), !dbg !1373
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %39, i64 0, metadata !182, metadata !696), !dbg !1324
  br label %40

; <label>:40:                                     ; preds = %38, %36
  %41 = phi %struct._IO_FILE* [ %37, %36 ], [ %39, %38 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !182, metadata !696), !dbg !1324
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !1374
  br i1 %42, label %44, label %43, !dbg !1376

; <label>:43:                                     ; preds = %40
  store i8* %33, i8** @next_file.prev_file, align 8, !dbg !1377, !tbaa !703
  tail call void @fadvise(%struct._IO_FILE* nonnull %41, i32 2) #10, !dbg !1379
  br label %52, !dbg !1380

; <label>:44:                                     ; preds = %40
  %45 = tail call i32* @__errno_location() #17, !dbg !1381
  %46 = load i32, i32* %45, align 4, !dbg !1381, !tbaa !789
  %47 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %33) #10, !dbg !1382
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.23, i64 0, i64 0), i8* %47) #10, !dbg !1383
  store i32 1, i32* @exit_status, align 4, !dbg !1384, !tbaa !789
  %48 = load i8**, i8*** @file_list, align 8, !dbg !1361, !tbaa !703
  %49 = getelementptr inbounds i8*, i8** %48, i64 1, !dbg !1361
  store i8** %49, i8*** @file_list, align 8, !dbg !1361, !tbaa !703
  %50 = load i8*, i8** %48, align 8, !dbg !1362, !tbaa !703
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !183, metadata !696), !dbg !1363
  %51 = icmp eq i8* %50, null, !dbg !1364
  br i1 %51, label %52, label %32, !dbg !1365, !llvm.loop !1385

; <label>:52:                                     ; preds = %44, %26, %43
  %53 = phi %struct._IO_FILE* [ %41, %43 ], [ null, %26 ], [ null, %44 ]
  ret %struct._IO_FILE* %53, !dbg !1387
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @cleanup_file_list_stdin() local_unnamed_addr #6 !dbg !1388 {
  %1 = load i1, i1* @have_read_stdin, align 1
  br i1 %1, label %2, label %9, !dbg !1389

; <label>:2:                                      ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1391, !tbaa !703
  %4 = tail call i32 @rpl_fclose(%struct._IO_FILE* %3) #10, !dbg !1392
  %5 = icmp eq i32 %4, 0, !dbg !1393
  br i1 %5, label %9, label %6, !dbg !1394

; <label>:6:                                      ; preds = %2
  %7 = tail call i32* @__errno_location() #17, !dbg !1395
  %8 = load i32, i32* %7, align 4, !dbg !1395, !tbaa !789
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.20, i64 0, i64 0)) #10, !dbg !1395
  unreachable, !dbg !1395

; <label>:9:                                      ; preds = %2, %0
  ret void, !dbg !1396
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1397 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1399, metadata !696), !dbg !1400
  store i8* %0, i8** @file_name, align 8, !dbg !1401, !tbaa !703
  ret void, !dbg !1402
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1403 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1407, metadata !696), !dbg !1408
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1409, !tbaa !760
  ret void, !dbg !1410
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1411 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1416, !tbaa !703
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1417
  %3 = icmp eq i32 %2, 0, !dbg !1418
  br i1 %3, label %21, label %4, !dbg !1419

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1420, !tbaa !760, !range !898
  %6 = icmp eq i8 %5, 0, !dbg !1420
  %7 = tail call i32* @__errno_location() #17, !dbg !1421
  br i1 %6, label %11, label %8, !dbg !1423

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1424, !tbaa !789
  %10 = icmp eq i32 %9, 32, !dbg !1425
  br i1 %10, label %21, label %11, !dbg !1426

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !1427
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1413, metadata !696), !dbg !1428
  %13 = load i8*, i8** @file_name, align 8, !dbg !1429, !tbaa !703
  %14 = icmp eq i8* %13, null, !dbg !1429
  %15 = load i32, i32* %7, align 4, !tbaa !789
  br i1 %14, label %18, label %16, !dbg !1430

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1431
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.40, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1432
  br label %19, !dbg !1432

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.41, i64 0, i64 0), i8* %12) #10, !dbg !1433
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1434, !tbaa !789
  tail call void @_exit(i32 %20) #15, !dbg !1435
  unreachable, !dbg !1435

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1436, !tbaa !703
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1438
  %24 = icmp eq i32 %23, 0, !dbg !1439
  br i1 %24, label %27, label %25, !dbg !1440

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1441, !tbaa !789
  tail call void @_exit(i32 %26) #15, !dbg !1442
  unreachable, !dbg !1442

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1443
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1444 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1452, metadata !696), !dbg !1458
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1453, metadata !696), !dbg !1459
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1454, metadata !696), !dbg !1460
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1455, metadata !696), !dbg !1461
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1462
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1456, metadata !696), !dbg !1462
  ret void, !dbg !1463
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1464 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1508, metadata !696), !dbg !1510
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1509, metadata !696), !dbg !1511
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1512
  br i1 %3, label %7, label %4, !dbg !1514

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1452, metadata !696) #10, !dbg !1516
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1453, metadata !696) #10, !dbg !1518
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1454, metadata !696) #10, !dbg !1519
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1455, metadata !696) #10, !dbg !1520
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1521
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1456, metadata !696) #10, !dbg !1521
  br label %7, !dbg !1522

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1523
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1524 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1526, metadata !696), !dbg !1529
  %2 = icmp eq i8* %0, null, !dbg !1530
  br i1 %2, label %3, label %6, !dbg !1532

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1533, !tbaa !703
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1535
  tail call void @abort() #15, !dbg !1536
  unreachable, !dbg !1536

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1537
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1527, metadata !696), !dbg !1538
  %8 = icmp eq i8* %7, null, !dbg !1539
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1540
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1541
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1528, metadata !696), !dbg !1542
  %11 = ptrtoint i8* %10 to i64, !dbg !1543
  %12 = ptrtoint i8* %0 to i64, !dbg !1543
  %13 = sub i64 %11, %12, !dbg !1543
  %14 = icmp sgt i64 %13, 6, !dbg !1545
  br i1 %14, label %15, label %24, !dbg !1546

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1547
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #14, !dbg !1548
  %18 = icmp eq i32 %17, 0, !dbg !1549
  br i1 %18, label %19, label %24, !dbg !1550

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1526, metadata !696), !dbg !1529
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #14, !dbg !1551
  %21 = icmp eq i32 %20, 0, !dbg !1554
  br i1 %21, label %22, label %24, !dbg !1555

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1556
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1526, metadata !696), !dbg !1529
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1558, !tbaa !703
  br label %24, !dbg !1559

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1526, metadata !696), !dbg !1529
  store i8* %25, i8** @program_name, align 8, !dbg !1560, !tbaa !703
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1561, !tbaa !703
  ret void, !dbg !1562
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1563 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1568, metadata !696), !dbg !1571
  %2 = tail call i32* @__errno_location() #17, !dbg !1572
  %3 = load i32, i32* %2, align 4, !dbg !1572, !tbaa !789
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1569, metadata !696), !dbg !1573
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1574
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1574
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1574
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1575
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1575
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1570, metadata !696), !dbg !1576
  store i32 %3, i32* %2, align 4, !dbg !1577, !tbaa !789
  ret %struct.quoting_options* %8, !dbg !1578
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1579 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1585, metadata !696), !dbg !1586
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1587
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1587
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1588
  %5 = load i32, i32* %4, align 8, !dbg !1588, !tbaa !1589
  ret i32 %5, !dbg !1591
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1592 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1596, metadata !696), !dbg !1598
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1597, metadata !696), !dbg !1599
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1600
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1600
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1601
  store i32 %1, i32* %5, align 8, !dbg !1602, !tbaa !1589
  ret void, !dbg !1603
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1604 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1608, metadata !696), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1609, metadata !696), !dbg !1617
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1610, metadata !696), !dbg !1618
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1611, metadata !696), !dbg !1619
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1620
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1620
  %6 = lshr i8 %1, 5, !dbg !1621
  %7 = zext i8 %6 to i64, !dbg !1621
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1622
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1612, metadata !696), !dbg !1623
  %9 = and i8 %1, 31, !dbg !1624
  %10 = zext i8 %9 to i32, !dbg !1625
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1614, metadata !696), !dbg !1626
  %11 = load i32, i32* %8, align 4, !dbg !1627, !tbaa !789
  %12 = lshr i32 %11, %10, !dbg !1628
  %13 = and i32 %12, 1, !dbg !1629
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1615, metadata !696), !dbg !1630
  %14 = and i32 %2, 1, !dbg !1631
  %15 = xor i32 %13, %14, !dbg !1632
  %16 = shl i32 %15, %10, !dbg !1633
  %17 = xor i32 %16, %11, !dbg !1634
  store i32 %17, i32* %8, align 4, !dbg !1634, !tbaa !789
  ret i32 %13, !dbg !1635
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1636 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1640, metadata !696), !dbg !1643
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1641, metadata !696), !dbg !1644
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1645
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1640, metadata !696), !dbg !1643
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1640, metadata !696), !dbg !1643
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1648
  %6 = load i32, i32* %5, align 4, !dbg !1648, !tbaa !1649
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1642, metadata !696), !dbg !1650
  store i32 %1, i32* %5, align 4, !dbg !1651, !tbaa !1649
  ret i32 %6, !dbg !1652
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1653 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1657, metadata !696), !dbg !1660
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1658, metadata !696), !dbg !1661
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1659, metadata !696), !dbg !1662
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1657, metadata !696), !dbg !1660
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1665
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1657, metadata !696), !dbg !1660
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1666
  store i32 10, i32* %6, align 8, !dbg !1667, !tbaa !1589
  %7 = icmp ne i8* %1, null, !dbg !1668
  %8 = icmp ne i8* %2, null, !dbg !1670
  %9 = and i1 %7, %8, !dbg !1671
  br i1 %9, label %11, label %10, !dbg !1671

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1672
  unreachable, !dbg !1672

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1673
  store i8* %1, i8** %12, align 8, !dbg !1674, !tbaa !1675
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1676
  store i8* %2, i8** %13, align 8, !dbg !1677, !tbaa !1678
  ret void, !dbg !1679
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1680 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1684, metadata !696), !dbg !1692
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1685, metadata !696), !dbg !1693
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1686, metadata !696), !dbg !1694
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1687, metadata !696), !dbg !1695
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1688, metadata !696), !dbg !1696
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1697
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1697
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1689, metadata !696), !dbg !1698
  %8 = tail call i32* @__errno_location() #17, !dbg !1699
  %9 = load i32, i32* %8, align 4, !dbg !1699, !tbaa !789
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1690, metadata !696), !dbg !1700
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1701
  %11 = load i32, i32* %10, align 8, !dbg !1701, !tbaa !1589
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1702
  %13 = load i32, i32* %12, align 4, !dbg !1702, !tbaa !1649
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1703
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1704
  %16 = load i8*, i8** %15, align 8, !dbg !1704, !tbaa !1675
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1705
  %18 = load i8*, i8** %17, align 8, !dbg !1705, !tbaa !1678
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1706
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1691, metadata !696), !dbg !1707
  store i32 %9, i32* %8, align 4, !dbg !1708, !tbaa !789
  ret i64 %19, !dbg !1709
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1710 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1716, metadata !696), !dbg !1780
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1717, metadata !696), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1718, metadata !696), !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1719, metadata !696), !dbg !1783
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1720, metadata !696), !dbg !1784
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1721, metadata !696), !dbg !1785
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1722, metadata !696), !dbg !1786
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1723, metadata !696), !dbg !1787
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1724, metadata !696), !dbg !1788
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1726, metadata !696), !dbg !1789
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1727, metadata !696), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1728, metadata !696), !dbg !1791
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1729, metadata !696), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1730, metadata !696), !dbg !1793
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1794
  %14 = icmp eq i64 %13, 1, !dbg !1795
  %15 = lshr i32 %5, 1, !dbg !1796
  %16 = trunc i32 %15 to i8, !dbg !1796
  %17 = and i8 %16, 1, !dbg !1796
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1732, metadata !696), !dbg !1796
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1733, metadata !696), !dbg !1797
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1734, metadata !696), !dbg !1798
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1735, metadata !696), !dbg !1799
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1800

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1717, metadata !696), !dbg !1781
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1735, metadata !696), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1734, metadata !696), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1732, metadata !696), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1719, metadata !696), !dbg !1783
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1730, metadata !696), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1729, metadata !696), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1728, metadata !696), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1727, metadata !696), !dbg !1790
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1724, metadata !696), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1723, metadata !696), !dbg !1787
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1720, metadata !696), !dbg !1784
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
  ], !dbg !1801

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1720, metadata !696), !dbg !1784
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1732, metadata !696), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1732, metadata !696), !dbg !1796
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1720, metadata !696), !dbg !1784
  br label %94, !dbg !1802

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1732, metadata !696), !dbg !1796
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1720, metadata !696), !dbg !1784
  %43 = and i8 %36, 1, !dbg !1804
  %44 = icmp eq i8 %43, 0, !dbg !1804
  br i1 %44, label %45, label %94, !dbg !1802

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1806
  br i1 %46, label %94, label %47, !dbg !1809

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1806, !tbaa !780
  br label %94, !dbg !1806

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %28), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1723, metadata !696), !dbg !1787
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %28), !dbg !1814
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1724, metadata !696), !dbg !1788
  br label %51, !dbg !1815

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1724, metadata !696), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1723, metadata !696), !dbg !1787
  %54 = and i8 %36, 1, !dbg !1816
  %55 = icmp eq i8 %54, 0, !dbg !1816
  br i1 %55, label %56, label %72, !dbg !1818

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1728, metadata !696), !dbg !1791
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1728, metadata !696), !dbg !1791
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1726, metadata !696), !dbg !1789
  %57 = load i8, i8* %52, align 1, !dbg !1819, !tbaa !780
  %58 = icmp eq i8 %57, 0, !dbg !1822
  br i1 %58, label %72, label %59, !dbg !1822

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1823

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1728, metadata !696), !dbg !1791
  %64 = icmp ult i64 %63, %40, !dbg !1823
  br i1 %64, label %65, label %67, !dbg !1826

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1823
  store i8 %61, i8* %66, align 1, !dbg !1823, !tbaa !780
  br label %67, !dbg !1823

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1726, metadata !696), !dbg !1789
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1827
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1728, metadata !696), !dbg !1791
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1728, metadata !696), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1726, metadata !696), !dbg !1789
  %70 = load i8, i8* %69, align 1, !dbg !1819, !tbaa !780
  %71 = icmp eq i8 %70, 0, !dbg !1822
  br i1 %71, label %72, label %60, !dbg !1822, !llvm.loop !1828

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1730, metadata !696), !dbg !1793
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1728, metadata !696), !dbg !1791
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1729, metadata !696), !dbg !1792
  br label %94, !dbg !1831

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1730, metadata !696), !dbg !1793
  br label %76, !dbg !1832

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1730, metadata !696), !dbg !1793
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1732, metadata !696), !dbg !1796
  br label %78, !dbg !1833

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1732, metadata !696), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1730, metadata !696), !dbg !1793
  %81 = and i8 %80, 1, !dbg !1834
  %82 = icmp eq i8 %81, 0, !dbg !1834
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1730, metadata !696), !dbg !1793
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1836
  br label %84, !dbg !1836

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1732, metadata !696), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1730, metadata !696), !dbg !1793
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1720, metadata !696), !dbg !1784
  %87 = and i8 %86, 1, !dbg !1837
  %88 = icmp eq i8 %87, 0, !dbg !1837
  br i1 %88, label %89, label %94, !dbg !1839

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1840
  br i1 %90, label %94, label %91, !dbg !1843

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1840, !tbaa !780
  br label %94, !dbg !1840

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1732, metadata !696), !dbg !1796
  br label %94, !dbg !1844

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1845
  unreachable, !dbg !1845

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1732, metadata !696), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1730, metadata !696), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1729, metadata !696), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1728, metadata !696), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1724, metadata !696), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1723, metadata !696), !dbg !1787
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1720, metadata !696), !dbg !1784
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1725, metadata !696), !dbg !1846
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
  br label %122, !dbg !1847

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1717, metadata !696), !dbg !1781
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1735, metadata !696), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1734, metadata !696), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1719, metadata !696), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1727, metadata !696), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1725, metadata !696), !dbg !1846
  %131 = icmp eq i64 %126, -1, !dbg !1848
  br i1 %131, label %134, label %132, !dbg !1849

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1850
  br i1 %133, label %590, label %138, !dbg !1851

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1852
  %136 = load i8, i8* %135, align 1, !dbg !1852, !tbaa !780
  %137 = icmp eq i8 %136, 0, !dbg !1853
  br i1 %137, label %590, label %138, !dbg !1851

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1741, metadata !696), !dbg !1854
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1742, metadata !696), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1743, metadata !696), !dbg !1856
  br i1 %108, label %139, label %154, !dbg !1857

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1859
  %141 = and i1 %109, %131, !dbg !1860
  br i1 %141, label %142, label %144, !dbg !1860

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1719, metadata !696), !dbg !1783
  br label %144, !dbg !1862

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1719, metadata !696), !dbg !1783
  %146 = icmp ugt i64 %140, %145, !dbg !1863
  br i1 %146, label %154, label %147, !dbg !1864

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1865
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1866
  %150 = icmp ne i32 %149, 0, !dbg !1867
  %151 = or i1 %150, %111, !dbg !1868
  %152 = xor i1 %150, true, !dbg !1868
  %153 = zext i1 %152 to i8, !dbg !1868
  br i1 %151, label %154, label %635, !dbg !1868

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1741, metadata !696), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1719, metadata !696), !dbg !1783
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1869
  %158 = load i8, i8* %157, align 1, !dbg !1869, !tbaa !780
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1736, metadata !696), !dbg !1870
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
  ], !dbg !1871

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1872

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1873

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1742, metadata !696), !dbg !1855
  %162 = and i8 %127, 1, !dbg !1877
  %163 = icmp eq i8 %162, 0, !dbg !1877
  %164 = and i1 %113, %163, !dbg !1877
  br i1 %164, label %165, label %181, !dbg !1877

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1879
  br i1 %166, label %167, label %169, !dbg !1883

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1879
  store i8 39, i8* %168, align 1, !dbg !1879, !tbaa !780
  br label %169, !dbg !1879

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1726, metadata !696), !dbg !1789
  %171 = icmp ult i64 %170, %130, !dbg !1884
  br i1 %171, label %172, label %174, !dbg !1887

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1884
  store i8 36, i8* %173, align 1, !dbg !1884, !tbaa !780
  br label %174, !dbg !1884

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1726, metadata !696), !dbg !1789
  %176 = icmp ult i64 %175, %130, !dbg !1888
  br i1 %176, label %177, label %179, !dbg !1891

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1888
  store i8 39, i8* %178, align 1, !dbg !1888, !tbaa !780
  br label %179, !dbg !1888

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1733, metadata !696), !dbg !1797
  br label %181, !dbg !1892

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1726, metadata !696), !dbg !1789
  %184 = icmp ult i64 %182, %130, !dbg !1893
  br i1 %184, label %185, label %187, !dbg !1896

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1893
  store i8 92, i8* %186, align 1, !dbg !1893, !tbaa !780
  br label %187, !dbg !1893

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1726, metadata !696), !dbg !1789
  br i1 %105, label %189, label %470, !dbg !1897

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1899
  %191 = icmp ult i64 %190, %155, !dbg !1900
  br i1 %191, label %192, label %470, !dbg !1901

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1902
  %194 = load i8, i8* %193, align 1, !dbg !1902, !tbaa !780
  %195 = add i8 %194, -48, !dbg !1903
  %196 = icmp ult i8 %195, 10, !dbg !1903
  br i1 %196, label %197, label %470, !dbg !1903

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1904
  br i1 %198, label %199, label %201, !dbg !1908

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1904
  store i8 48, i8* %200, align 1, !dbg !1904, !tbaa !780
  br label %201, !dbg !1904

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1726, metadata !696), !dbg !1789
  %203 = icmp ult i64 %202, %130, !dbg !1909
  br i1 %203, label %204, label %206, !dbg !1912

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1909
  store i8 48, i8* %205, align 1, !dbg !1909, !tbaa !780
  br label %206, !dbg !1909

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1726, metadata !696), !dbg !1789
  br label %470, !dbg !1913

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1914

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1915

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1916

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1918

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1920
  %214 = icmp ult i64 %213, %155, !dbg !1921
  br i1 %214, label %215, label %470, !dbg !1922

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1923
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1924
  %218 = load i8, i8* %217, align 1, !dbg !1924, !tbaa !780
  %219 = icmp eq i8 %218, 63, !dbg !1925
  br i1 %219, label %220, label %470, !dbg !1926

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1927
  %222 = load i8, i8* %221, align 1, !dbg !1927, !tbaa !780
  %223 = sext i8 %222 to i32, !dbg !1927
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
  ], !dbg !1928

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1929

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1736, metadata !696), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1725, metadata !696), !dbg !1846
  %226 = icmp ult i64 %124, %130, !dbg !1931
  br i1 %226, label %227, label %229, !dbg !1934

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1931
  store i8 63, i8* %228, align 1, !dbg !1931, !tbaa !780
  br label %229, !dbg !1931

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1726, metadata !696), !dbg !1789
  %231 = icmp ult i64 %230, %130, !dbg !1935
  br i1 %231, label %232, label %234, !dbg !1938

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1935
  store i8 34, i8* %233, align 1, !dbg !1935, !tbaa !780
  br label %234, !dbg !1935

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1726, metadata !696), !dbg !1789
  %236 = icmp ult i64 %235, %130, !dbg !1939
  br i1 %236, label %237, label %239, !dbg !1942

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1939
  store i8 34, i8* %238, align 1, !dbg !1939, !tbaa !780
  br label %239, !dbg !1939

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1726, metadata !696), !dbg !1789
  %241 = icmp ult i64 %240, %130, !dbg !1943
  br i1 %241, label %242, label %244, !dbg !1946

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1943
  store i8 63, i8* %243, align 1, !dbg !1943, !tbaa !780
  br label %244, !dbg !1943

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1726, metadata !696), !dbg !1789
  br label %470, !dbg !1947

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1740, metadata !696), !dbg !1948
  br label %256, !dbg !1949

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1740, metadata !696), !dbg !1948
  br label %256, !dbg !1950

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1740, metadata !696), !dbg !1948
  br label %254, !dbg !1951

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1740, metadata !696), !dbg !1948
  br label %254, !dbg !1952

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1740, metadata !696), !dbg !1948
  br label %256, !dbg !1953

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1740, metadata !696), !dbg !1948
  br i1 %113, label %252, label %253, !dbg !1954

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1955

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1958

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1740, metadata !696), !dbg !1948
  br i1 %117, label %256, label %635, !dbg !1960

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1740, metadata !696), !dbg !1948
  br i1 %104, label %497, label %470, !dbg !1962

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1963
  br i1 %259, label %260, label %265, !dbg !1965

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1966, !tbaa !780
  %262 = icmp ne i8 %261, 0, !dbg !1967
  %263 = icmp ne i64 %123, 0, !dbg !1968
  %264 = or i1 %263, %262, !dbg !1970
  br i1 %264, label %470, label %271, !dbg !1970

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1971
  %267 = icmp ne i64 %123, 0, !dbg !1968
  %268 = or i1 %267, %266, !dbg !1965
  br i1 %268, label %470, label %271, !dbg !1965

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1968
  br i1 %270, label %271, label %470, !dbg !1972

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1743, metadata !696), !dbg !1856
  br label %272, !dbg !1973

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1743, metadata !696), !dbg !1856
  br i1 %117, label %470, label %635, !dbg !1974

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1734, metadata !696), !dbg !1798
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1743, metadata !696), !dbg !1856
  br i1 %113, label %275, label %470, !dbg !1976

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1977

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1980
  %278 = icmp ne i64 %125, 0, !dbg !1982
  %279 = or i1 %278, %277, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1727, metadata !696), !dbg !1790
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1717, metadata !696), !dbg !1781
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1983
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1717, metadata !696), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1727, metadata !696), !dbg !1790
  %282 = icmp ult i64 %124, %281, !dbg !1984
  br i1 %282, label %283, label %285, !dbg !1987

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1984
  store i8 39, i8* %284, align 1, !dbg !1984, !tbaa !780
  br label %285, !dbg !1984

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1726, metadata !696), !dbg !1789
  %287 = icmp ult i64 %286, %281, !dbg !1988
  br i1 %287, label %288, label %290, !dbg !1991

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1988
  store i8 92, i8* %289, align 1, !dbg !1988, !tbaa !780
  br label %290, !dbg !1988

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1726, metadata !696), !dbg !1789
  %292 = icmp ult i64 %291, %281, !dbg !1992
  br i1 %292, label %293, label %295, !dbg !1995

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1992
  store i8 39, i8* %294, align 1, !dbg !1992, !tbaa !780
  br label %295, !dbg !1992

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1733, metadata !696), !dbg !1797
  br label %470, !dbg !1996

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1997

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1744, metadata !696), !dbg !1998
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1999
  %300 = load i16*, i16** %299, align 8, !dbg !1999, !tbaa !703
  %301 = zext i8 %158 to i64, !dbg !1999
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1999
  %303 = load i16, i16* %302, align 2, !dbg !1999, !tbaa !946
  %304 = lshr i16 %303, 14, !dbg !2001
  %305 = trunc i16 %304 to i8, !dbg !2001
  %306 = and i8 %305, 1, !dbg !2001
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1747, metadata !696), !dbg !2002
  br label %362, !dbg !2003

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2004
  store i64 0, i64* %10, align 8, !dbg !2005
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1744, metadata !696), !dbg !1998
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1747, metadata !696), !dbg !2002
  %308 = icmp eq i64 %155, -1, !dbg !2006
  br i1 %308, label %309, label %311, !dbg !2008

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1719, metadata !696), !dbg !1783
  br label %311, !dbg !2010

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1719, metadata !696), !dbg !1783
  br label %313, !dbg !2011, !llvm.loop !2012

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1747, metadata !696), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1744, metadata !696), !dbg !1998
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2014
  %316 = add i64 %314, %123, !dbg !2015
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2016
  %318 = sub i64 %312, %316, !dbg !2017
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1748, metadata !696), !dbg !2018
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1766, metadata !696), !dbg !2019
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1769, metadata !696), !dbg !2021
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2022

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1747, metadata !696), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1744, metadata !696), !dbg !1998
  %321 = icmp ugt i64 %312, %316, !dbg !2023
  br i1 %321, label %322, label %347, !dbg !2025

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2026

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1744, metadata !696), !dbg !1998
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2026
  %327 = load i8, i8* %326, align 1, !dbg !2026, !tbaa !780
  %328 = icmp eq i8 %327, 0, !dbg !2025
  br i1 %328, label %347, label %329, !dbg !2027

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1744, metadata !696), !dbg !1998
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1744, metadata !696), !dbg !1998
  %331 = add i64 %330, %123, !dbg !2029
  %332 = icmp ult i64 %331, %312, !dbg !2023
  br i1 %332, label %323, label %347, !dbg !2025, !llvm.loop !2030

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2031
  %335 = and i1 %115, %334, !dbg !2034
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1770, metadata !696), !dbg !2035
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1770, metadata !696), !dbg !2035
  br i1 %335, label %336, label %350, !dbg !2034

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2036

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1770, metadata !696), !dbg !2035
  %339 = add i64 %338, %316, !dbg !2036
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2037
  %341 = load i8, i8* %340, align 1, !dbg !2037, !tbaa !780
  %342 = sext i8 %341 to i32, !dbg !2037
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2038

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1770, metadata !696), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1770, metadata !696), !dbg !2035
  %345 = icmp ult i64 %344, %319, !dbg !2031
  br i1 %345, label %337, label %350, !dbg !2040, !llvm.loop !2041

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2043

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1747, metadata !696), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1744, metadata !696), !dbg !1998
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2043
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2044, !tbaa !789
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1766, metadata !696), !dbg !2019
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !2046
  %353 = icmp eq i32 %352, 0, !dbg !2046
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1747, metadata !696), !dbg !2002
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2047
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1747, metadata !696), !dbg !2002
  %355 = add i64 %319, %314, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1744, metadata !696), !dbg !1998
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1747, metadata !696), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1744, metadata !696), !dbg !1998
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2043
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1748, metadata !696), !dbg !2018
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2049
  %357 = icmp eq i32 %356, 0, !dbg !2050
  br i1 %357, label %313, label %358, !dbg !2051, !llvm.loop !2012

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2052
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1747, metadata !696), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1744, metadata !696), !dbg !1998
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2043
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2052
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1747, metadata !696), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1744, metadata !696), !dbg !1998
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1719, metadata !696), !dbg !1783
  %366 = and i8 %365, 1, !dbg !2053
  %367 = icmp ne i8 %366, 0, !dbg !2053
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1743, metadata !696), !dbg !1856
  %368 = icmp ult i64 %364, 2, !dbg !2054
  %369 = or i1 %367, %112, !dbg !2055
  %370 = and i1 %368, %369, !dbg !2056
  br i1 %370, label %470, label %371, !dbg !2056

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1777, metadata !696), !dbg !2058
  br label %373, !dbg !2059

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1742, metadata !696), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1741, metadata !696), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1736, metadata !696), !dbg !1870
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1725, metadata !696), !dbg !1846
  br i1 %369, label %426, label %380, !dbg !2060

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2065

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1742, metadata !696), !dbg !1855
  %382 = and i8 %376, 1, !dbg !2068
  %383 = icmp eq i8 %382, 0, !dbg !2068
  %384 = and i1 %113, %383, !dbg !2068
  br i1 %384, label %385, label %401, !dbg !2068

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2070
  br i1 %386, label %387, label %389, !dbg !2074

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2070
  store i8 39, i8* %388, align 1, !dbg !2070, !tbaa !780
  br label %389, !dbg !2070

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1726, metadata !696), !dbg !1789
  %391 = icmp ult i64 %390, %130, !dbg !2075
  br i1 %391, label %392, label %394, !dbg !2078

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2075
  store i8 36, i8* %393, align 1, !dbg !2075, !tbaa !780
  br label %394, !dbg !2075

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1726, metadata !696), !dbg !1789
  %396 = icmp ult i64 %395, %130, !dbg !2079
  br i1 %396, label %397, label %399, !dbg !2082

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2079
  store i8 39, i8* %398, align 1, !dbg !2079, !tbaa !780
  br label %399, !dbg !2079

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1733, metadata !696), !dbg !1797
  br label %401, !dbg !2083

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1726, metadata !696), !dbg !1789
  %404 = icmp ult i64 %402, %130, !dbg !2084
  br i1 %404, label %405, label %407, !dbg !2087

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2084
  store i8 92, i8* %406, align 1, !dbg !2084, !tbaa !780
  br label %407, !dbg !2084

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1726, metadata !696), !dbg !1789
  %409 = icmp ult i64 %408, %130, !dbg !2088
  br i1 %409, label %410, label %414, !dbg !2091

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2088
  %412 = or i8 %411, 48, !dbg !2088
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2088
  store i8 %412, i8* %413, align 1, !dbg !2088, !tbaa !780
  br label %414, !dbg !2088

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1726, metadata !696), !dbg !1789
  %416 = icmp ult i64 %415, %130, !dbg !2092
  br i1 %416, label %417, label %422, !dbg !2095

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2092
  %419 = and i8 %418, 7, !dbg !2092
  %420 = or i8 %419, 48, !dbg !2092
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2092
  store i8 %420, i8* %421, align 1, !dbg !2092, !tbaa !780
  br label %422, !dbg !2092

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1726, metadata !696), !dbg !1789
  %424 = and i8 %377, 7, !dbg !2096
  %425 = or i8 %424, 48, !dbg !2097
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1736, metadata !696), !dbg !1870
  br label %435, !dbg !2098

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2099
  %428 = icmp eq i8 %427, 0, !dbg !2099
  br i1 %428, label %435, label %429, !dbg !2101

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2102
  br i1 %430, label %431, label %433, !dbg !2106

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2102
  store i8 92, i8* %432, align 1, !dbg !2102, !tbaa !780
  br label %433, !dbg !2102

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1741, metadata !696), !dbg !1854
  br label %435, !dbg !2107

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1742, metadata !696), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1741, metadata !696), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1736, metadata !696), !dbg !1870
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1726, metadata !696), !dbg !1789
  %441 = add i64 %374, 1, !dbg !2108
  %442 = icmp ugt i64 %372, %441, !dbg !2110
  br i1 %442, label %443, label %535, !dbg !2111

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2112
  %445 = icmp ne i8 %444, 0, !dbg !2112
  %446 = and i8 %440, 1, !dbg !2112
  %447 = icmp eq i8 %446, 0, !dbg !2112
  %448 = and i1 %445, %447, !dbg !2112
  br i1 %448, label %449, label %460, !dbg !2112

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2115
  br i1 %450, label %451, label %453, !dbg !2119

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2115
  store i8 39, i8* %452, align 1, !dbg !2115, !tbaa !780
  br label %453, !dbg !2115

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1726, metadata !696), !dbg !1789
  %455 = icmp ult i64 %454, %130, !dbg !2120
  br i1 %455, label %456, label %458, !dbg !2123

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2120
  store i8 39, i8* %457, align 1, !dbg !2120, !tbaa !780
  br label %458, !dbg !2120

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1733, metadata !696), !dbg !1797
  br label %460, !dbg !2124

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1726, metadata !696), !dbg !1789
  %463 = icmp ult i64 %461, %130, !dbg !2125
  br i1 %463, label %464, label %466, !dbg !2128

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2125
  store i8 %438, i8* %465, align 1, !dbg !2125, !tbaa !780
  br label %466, !dbg !2125

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1725, metadata !696), !dbg !1846
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2129
  %469 = load i8, i8* %468, align 1, !dbg !2129, !tbaa !780
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1736, metadata !696), !dbg !1870
  br label %373, !dbg !2130, !llvm.loop !2131

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1717, metadata !696), !dbg !1781
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1743, metadata !696), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1742, metadata !696), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1741, metadata !696), !dbg !1854
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1736, metadata !696), !dbg !1870
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1734, metadata !696), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1719, metadata !696), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1727, metadata !696), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1725, metadata !696), !dbg !1846
  br i1 %106, label %482, label %481, !dbg !2134

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2136

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2137

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2138
  %485 = zext i8 %484 to i64, !dbg !2138
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2139
  %487 = load i32, i32* %486, align 4, !dbg !2139, !tbaa !789
  %488 = and i8 %477, 31, !dbg !2140
  %489 = zext i8 %488 to i32, !dbg !2141
  %490 = shl i32 1, %489, !dbg !2142
  %491 = and i32 %487, %490, !dbg !2142
  %492 = icmp eq i32 %491, 0, !dbg !2142
  %493 = icmp eq i8 %156, 0, !dbg !2143
  %494 = and i1 %493, %492, !dbg !2144
  br i1 %494, label %535, label %497, !dbg !2144

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2143
  br i1 %496, label %535, label %497, !dbg !2145

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1717, metadata !696), !dbg !1781
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1743, metadata !696), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1736, metadata !696), !dbg !1870
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1734, metadata !696), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1719, metadata !696), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1727, metadata !696), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1725, metadata !696), !dbg !1846
  br i1 %111, label %507, label %635, !dbg !2146

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1742, metadata !696), !dbg !1855
  %508 = and i8 %502, 1, !dbg !2148
  %509 = icmp eq i8 %508, 0, !dbg !2148
  %510 = and i1 %113, %509, !dbg !2148
  br i1 %510, label %511, label %527, !dbg !2148

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2150
  br i1 %512, label %513, label %515, !dbg !2154

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2150
  store i8 39, i8* %514, align 1, !dbg !2150, !tbaa !780
  br label %515, !dbg !2150

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1726, metadata !696), !dbg !1789
  %517 = icmp ult i64 %516, %506, !dbg !2155
  br i1 %517, label %518, label %520, !dbg !2158

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2155
  store i8 36, i8* %519, align 1, !dbg !2155, !tbaa !780
  br label %520, !dbg !2155

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1726, metadata !696), !dbg !1789
  %522 = icmp ult i64 %521, %506, !dbg !2159
  br i1 %522, label %523, label %525, !dbg !2162

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2159
  store i8 39, i8* %524, align 1, !dbg !2159, !tbaa !780
  br label %525, !dbg !2159

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1733, metadata !696), !dbg !1797
  br label %527, !dbg !2163

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1726, metadata !696), !dbg !1789
  %530 = icmp ult i64 %528, %506, !dbg !2164
  br i1 %530, label %531, label %533, !dbg !2167

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2164
  store i8 92, i8* %532, align 1, !dbg !2164, !tbaa !780
  br label %533, !dbg !2164

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1717, metadata !696), !dbg !1781
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1743, metadata !696), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1742, metadata !696), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1736, metadata !696), !dbg !1870
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1734, metadata !696), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1719, metadata !696), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1727, metadata !696), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1725, metadata !696), !dbg !1846
  br label %562, !dbg !2168

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1717, metadata !696), !dbg !1781
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1743, metadata !696), !dbg !1856
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1742, metadata !696), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1736, metadata !696), !dbg !1870
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1734, metadata !696), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1719, metadata !696), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1727, metadata !696), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1725, metadata !696), !dbg !1846
  %546 = and i8 %540, 1, !dbg !2168
  %547 = icmp ne i8 %546, 0, !dbg !2168
  %548 = and i8 %543, 1, !dbg !2168
  %549 = icmp eq i8 %548, 0, !dbg !2168
  %550 = and i1 %547, %549, !dbg !2168
  br i1 %550, label %551, label %562, !dbg !2168

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2171
  br i1 %552, label %553, label %555, !dbg !2175

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2171
  store i8 39, i8* %554, align 1, !dbg !2171, !tbaa !780
  br label %555, !dbg !2171

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1726, metadata !696), !dbg !1789
  %557 = icmp ult i64 %556, %545, !dbg !2176
  br i1 %557, label %558, label %560, !dbg !2179

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2176
  store i8 39, i8* %559, align 1, !dbg !2176, !tbaa !780
  br label %560, !dbg !2176

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1733, metadata !696), !dbg !1797
  br label %562, !dbg !2180

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1726, metadata !696), !dbg !1789
  %572 = icmp ult i64 %570, %563, !dbg !2181
  br i1 %572, label %573, label %575, !dbg !2184

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2181
  store i8 %565, i8* %574, align 1, !dbg !2181, !tbaa !780
  br label %575, !dbg !2181

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1726, metadata !696), !dbg !1789
  %577 = and i8 %564, 1, !dbg !2185
  %578 = icmp eq i8 %577, 0, !dbg !2185
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1735, metadata !696), !dbg !1799
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2187
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1735, metadata !696), !dbg !1799
  br label %580, !dbg !2188

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1717, metadata !696), !dbg !1781
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1735, metadata !696), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1734, metadata !696), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1733, metadata !696), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1719, metadata !696), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1727, metadata !696), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1725, metadata !696), !dbg !1846
  %589 = add i64 %581, 1, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1725, metadata !696), !dbg !1846
  br label %122, !dbg !2190, !llvm.loop !2191

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2193
  %593 = and i1 %113, %592, !dbg !2195
  %594 = xor i1 %593, true, !dbg !2195
  %595 = or i1 %111, %594, !dbg !2195
  br i1 %595, label %596, label %635, !dbg !2195

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2196
  %598 = xor i1 %597, true, !dbg !2196
  %599 = and i8 %128, 1, !dbg !2198
  %600 = icmp eq i8 %599, 0, !dbg !2198
  %601 = or i1 %600, %598, !dbg !2196
  br i1 %601, label %611, label %602, !dbg !2196

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2199
  %604 = icmp eq i8 %603, 0, !dbg !2199
  br i1 %604, label %607, label %605, !dbg !2202

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2203
  br label %645, !dbg !2204

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2205
  %609 = icmp ne i64 %125, 0, !dbg !2207
  %610 = and i1 %609, %608, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1717, metadata !696), !dbg !1781
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1726, metadata !696), !dbg !1789
  br i1 %610, label %27, label %611, !dbg !2208

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2209
  %613 = and i1 %612, %111, !dbg !2211
  br i1 %613, label %614, label %630, !dbg !2211

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1728, metadata !696), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1726, metadata !696), !dbg !1789
  %615 = load i8, i8* %99, align 1, !dbg !2212, !tbaa !780
  %616 = icmp eq i8 %615, 0, !dbg !2215
  br i1 %616, label %630, label %617, !dbg !2215

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2216

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1726, metadata !696), !dbg !1789
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1728, metadata !696), !dbg !1791
  %622 = icmp ult i64 %621, %130, !dbg !2216
  br i1 %622, label %623, label %625, !dbg !2219

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2216
  store i8 %619, i8* %624, align 1, !dbg !2216, !tbaa !780
  br label %625, !dbg !2216

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1726, metadata !696), !dbg !1789
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2220
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1728, metadata !696), !dbg !1791
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1728, metadata !696), !dbg !1791
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1726, metadata !696), !dbg !1789
  %628 = load i8, i8* %627, align 1, !dbg !2212, !tbaa !780
  %629 = icmp eq i8 %628, 0, !dbg !2215
  br i1 %629, label %630, label %618, !dbg !2215, !llvm.loop !2221

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1726, metadata !696), !dbg !1789
  %632 = icmp ult i64 %631, %130, !dbg !2223
  br i1 %632, label %633, label %645, !dbg !2225

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2226
  store i8 0, i8* %634, align 1, !dbg !2227, !tbaa !780
  br label %645, !dbg !2226

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1717, metadata !696), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1719, metadata !696), !dbg !1783
  %639 = icmp ne i32 %636, 2, !dbg !2228
  %640 = icmp eq i8 %103, 0, !dbg !2230
  %641 = or i1 %639, %640, !dbg !2231
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1720, metadata !696), !dbg !1784
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2231
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1720, metadata !696), !dbg !1784
  %643 = and i32 %5, -3, !dbg !2232
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2233
  br label %645, !dbg !2234

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2235
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2236 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2240, metadata !696), !dbg !2244
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2241, metadata !696), !dbg !2245
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2246
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2242, metadata !696), !dbg !2247
  %4 = icmp eq i8* %3, %0, !dbg !2248
  br i1 %4, label %5, label %75, !dbg !2250

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2251
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2243, metadata !696), !dbg !2252
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2253, metadata !696), !dbg !2269
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2267, metadata !696), !dbg !2272
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2268, metadata !696), !dbg !2273
  %7 = load i8, i8* %6, align 1, !dbg !2274, !tbaa !780
  %8 = sext i8 %7 to i32, !dbg !2274
  %9 = and i32 %8, -33, !dbg !2274
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2274

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2276, metadata !696), !dbg !2290
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2288, metadata !696), !dbg !2294
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2289, metadata !696), !dbg !2295
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2296
  %12 = load i8, i8* %11, align 1, !dbg !2296, !tbaa !780
  %13 = sext i8 %12 to i32, !dbg !2296
  %14 = and i32 %13, -33, !dbg !2296
  %15 = icmp eq i32 %14, 84, !dbg !2296
  br i1 %15, label %16, label %72, !dbg !2296

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2298, metadata !696), !dbg !2311
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2309, metadata !696), !dbg !2315
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2310, metadata !696), !dbg !2316
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2317
  %18 = load i8, i8* %17, align 1, !dbg !2317, !tbaa !780
  %19 = sext i8 %18 to i32, !dbg !2317
  %20 = and i32 %19, -33, !dbg !2317
  %21 = icmp eq i32 %20, 70, !dbg !2317
  br i1 %21, label %22, label %72, !dbg !2317

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2319, metadata !696), !dbg !2331
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2329, metadata !696), !dbg !2335
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2330, metadata !696), !dbg !2336
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2337
  %24 = load i8, i8* %23, align 1, !dbg !2337, !tbaa !780
  %25 = icmp eq i8 %24, 45, !dbg !2337
  br i1 %25, label %26, label %72, !dbg !2339

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2340, metadata !696), !dbg !2351
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2349, metadata !696), !dbg !2355
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2350, metadata !696), !dbg !2356
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2357
  %28 = load i8, i8* %27, align 1, !dbg !2357, !tbaa !780
  %29 = icmp eq i8 %28, 56, !dbg !2357
  br i1 %29, label %30, label %72, !dbg !2359

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2360, metadata !696), !dbg !2370
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2368, metadata !696), !dbg !2374
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2369, metadata !696), !dbg !2375
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2376
  %32 = load i8, i8* %31, align 1, !dbg !2376, !tbaa !780
  %33 = icmp eq i8 %32, 0, !dbg !2376
  br i1 %33, label %34, label %72, !dbg !2378

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2379, !tbaa !780
  %36 = icmp eq i8 %35, 96, !dbg !2380
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !2379
  br label %75, !dbg !2381

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2276, metadata !696), !dbg !2382
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2288, metadata !696), !dbg !2386
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2289, metadata !696), !dbg !2387
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2388
  %40 = load i8, i8* %39, align 1, !dbg !2388, !tbaa !780
  %41 = sext i8 %40 to i32, !dbg !2388
  %42 = and i32 %41, -33, !dbg !2388
  %43 = icmp eq i32 %42, 66, !dbg !2388
  br i1 %43, label %44, label %72, !dbg !2388

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2298, metadata !696), !dbg !2389
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2309, metadata !696), !dbg !2391
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2310, metadata !696), !dbg !2392
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2393
  %46 = load i8, i8* %45, align 1, !dbg !2393, !tbaa !780
  %47 = icmp eq i8 %46, 49, !dbg !2393
  br i1 %47, label %48, label %72, !dbg !2394

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2319, metadata !696), !dbg !2395
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2329, metadata !696), !dbg !2397
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2330, metadata !696), !dbg !2398
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2399
  %50 = load i8, i8* %49, align 1, !dbg !2399, !tbaa !780
  %51 = icmp eq i8 %50, 56, !dbg !2399
  br i1 %51, label %52, label %72, !dbg !2400

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2340, metadata !696), !dbg !2401
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2349, metadata !696), !dbg !2403
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2350, metadata !696), !dbg !2404
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2405
  %54 = load i8, i8* %53, align 1, !dbg !2405, !tbaa !780
  %55 = icmp eq i8 %54, 48, !dbg !2405
  br i1 %55, label %56, label %72, !dbg !2406

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2360, metadata !696), !dbg !2407
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2368, metadata !696), !dbg !2409
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2369, metadata !696), !dbg !2410
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2411
  %58 = load i8, i8* %57, align 1, !dbg !2411, !tbaa !780
  %59 = icmp eq i8 %58, 51, !dbg !2411
  br i1 %59, label %60, label %72, !dbg !2412

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2413, metadata !696), !dbg !2422
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2420, metadata !696), !dbg !2426
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2421, metadata !696), !dbg !2427
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2428
  %62 = load i8, i8* %61, align 1, !dbg !2428, !tbaa !780
  %63 = icmp eq i8 %62, 48, !dbg !2428
  br i1 %63, label %64, label %72, !dbg !2430

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2431, metadata !696), !dbg !2439
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2437, metadata !696), !dbg !2443
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2438, metadata !696), !dbg !2444
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2445
  %66 = load i8, i8* %65, align 1, !dbg !2445, !tbaa !780
  %67 = icmp eq i8 %66, 0, !dbg !2445
  br i1 %67, label %68, label %72, !dbg !2447

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2448, !tbaa !780
  %70 = icmp eq i8 %69, 96, !dbg !2449
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2448
  br label %75, !dbg !2450

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2451
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !2452
  br label %75, !dbg !2453

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2454
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2455 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2459, metadata !696), !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2460, metadata !696), !dbg !2463
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2461, metadata !696), !dbg !2464
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2465, metadata !696) #10, !dbg !2478
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2470, metadata !696) #10, !dbg !2480
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2471, metadata !696) #10, !dbg !2481
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2472, metadata !696) #10, !dbg !2482
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2483
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2483
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2473, metadata !696) #10, !dbg !2484
  %6 = tail call i32* @__errno_location() #17, !dbg !2485
  %7 = load i32, i32* %6, align 4, !dbg !2485, !tbaa !789
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2474, metadata !696) #10, !dbg !2486
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2487
  %9 = load i32, i32* %8, align 4, !dbg !2487, !tbaa !1649
  %10 = or i32 %9, 1, !dbg !2488
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2475, metadata !696) #10, !dbg !2489
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2490
  %12 = load i32, i32* %11, align 8, !dbg !2490, !tbaa !1589
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2491
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2492
  %15 = load i8*, i8** %14, align 8, !dbg !2492, !tbaa !1675
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2493
  %17 = load i8*, i8** %16, align 8, !dbg !2493, !tbaa !1678
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2494
  %19 = add i64 %18, 1, !dbg !2495
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2476, metadata !696) #10, !dbg !2496
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2497, metadata !696) #10, !dbg !2502
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2504
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2477, metadata !696) #10, !dbg !2505
  %21 = load i32, i32* %11, align 8, !dbg !2506, !tbaa !1589
  %22 = load i8*, i8** %14, align 8, !dbg !2507, !tbaa !1675
  %23 = load i8*, i8** %16, align 8, !dbg !2508, !tbaa !1678
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2509
  store i32 %7, i32* %6, align 4, !dbg !2510, !tbaa !789
  ret i8* %20, !dbg !2511
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2466 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2465, metadata !696), !dbg !2512
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2470, metadata !696), !dbg !2513
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2471, metadata !696), !dbg !2514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2472, metadata !696), !dbg !2515
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2516
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2473, metadata !696), !dbg !2517
  %7 = tail call i32* @__errno_location() #17, !dbg !2518
  %8 = load i32, i32* %7, align 4, !dbg !2518, !tbaa !789
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2474, metadata !696), !dbg !2519
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2520
  %10 = load i32, i32* %9, align 4, !dbg !2520, !tbaa !1649
  %11 = icmp ne i64* %2, null, !dbg !2521
  %12 = xor i1 %11, true, !dbg !2521
  %13 = zext i1 %12 to i32, !dbg !2521
  %14 = or i32 %10, %13, !dbg !2522
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2475, metadata !696), !dbg !2523
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2524
  %16 = load i32, i32* %15, align 8, !dbg !2524, !tbaa !1589
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2525
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2526
  %19 = load i8*, i8** %18, align 8, !dbg !2526, !tbaa !1675
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2527
  %21 = load i8*, i8** %20, align 8, !dbg !2527, !tbaa !1678
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2528
  %23 = add i64 %22, 1, !dbg !2529
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2476, metadata !696), !dbg !2530
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2497, metadata !696) #10, !dbg !2531
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2533
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2477, metadata !696), !dbg !2534
  %25 = load i32, i32* %15, align 8, !dbg !2535, !tbaa !1589
  %26 = load i8*, i8** %18, align 8, !dbg !2536, !tbaa !1675
  %27 = load i8*, i8** %20, align 8, !dbg !2537, !tbaa !1678
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2538
  store i32 %8, i32* %7, align 4, !dbg !2539, !tbaa !789
  br i1 %11, label %29, label %30, !dbg !2540

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2541, !tbaa !861
  br label %30, !dbg !2543

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2544
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2545 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2549, !tbaa !703
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2547, metadata !696), !dbg !2550
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2548, metadata !696), !dbg !2551
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2548, metadata !696), !dbg !2551
  %2 = load i32, i32* @nslots, align 4, !dbg !2552, !tbaa !789
  %3 = icmp sgt i32 %2, 1, !dbg !2555
  br i1 %3, label %4, label %13, !dbg !2556

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2557

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2548, metadata !696), !dbg !2551
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2557
  %8 = load i8*, i8** %7, align 8, !dbg !2557, !tbaa !2558
  tail call void @free(i8* %8) #10, !dbg !2560
  %9 = add nuw i64 %6, 1, !dbg !2561
  %10 = load i32, i32* @nslots, align 4, !dbg !2552, !tbaa !789
  %11 = sext i32 %10 to i64, !dbg !2555
  %12 = icmp slt i64 %9, %11, !dbg !2555
  br i1 %12, label %5, label %13, !dbg !2556, !llvm.loop !2562

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2564
  %15 = load i8*, i8** %14, align 8, !dbg !2564, !tbaa !2558
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2566
  br i1 %16, label %18, label %17, !dbg !2567

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !2568
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2570, !tbaa !2571
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2572, !tbaa !2558
  br label %18, !dbg !2573

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2574
  br i1 %19, label %22, label %20, !dbg !2576

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2577
  tail call void @free(i8* %21) #10, !dbg !2579
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2580, !tbaa !703
  br label %22, !dbg !2581

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2582, !tbaa !789
  ret void, !dbg !2583
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2584 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2588, metadata !696), !dbg !2590
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2589, metadata !696), !dbg !2591
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2592
  ret i8* %3, !dbg !2593
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2594 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2598, metadata !696), !dbg !2612
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2599, metadata !696), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2600, metadata !696), !dbg !2614
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2601, metadata !696), !dbg !2615
  %5 = tail call i32* @__errno_location() #17, !dbg !2616
  %6 = load i32, i32* %5, align 4, !dbg !2616, !tbaa !789
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2602, metadata !696), !dbg !2617
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2618, !tbaa !703
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2603, metadata !696), !dbg !2619
  %8 = icmp slt i32 %0, 0, !dbg !2620
  br i1 %8, label %9, label %10, !dbg !2622

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2623
  unreachable, !dbg !2623

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2624, !tbaa !789
  %12 = icmp sgt i32 %11, %0, !dbg !2625
  br i1 %12, label %34, label %13, !dbg !2626

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2627
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2628
  br i1 %15, label %16, label %17, !dbg !2630

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2631
  unreachable, !dbg !2631

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2632
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2632
  %20 = add nsw i32 %0, 1, !dbg !2633
  %21 = sext i32 %20 to i64, !dbg !2634
  %22 = shl nsw i64 %21, 4, !dbg !2635
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2636
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2636
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2603, metadata !696), !dbg !2619
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2637, !tbaa !703
  br i1 %14, label %25, label %26, !dbg !2638

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2639, !tbaa.struct !2641
  br label %26, !dbg !2642

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2643, !tbaa !789
  %28 = sext i32 %27 to i64, !dbg !2644
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2644
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2645
  %31 = sub nsw i32 %20, %27, !dbg !2646
  %32 = sext i32 %31 to i64, !dbg !2647
  %33 = shl nsw i64 %32, 4, !dbg !2648
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2645
  store i32 %20, i32* @nslots, align 4, !dbg !2649, !tbaa !789
  br label %34, !dbg !2650

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2603, metadata !696), !dbg !2619
  %36 = sext i32 %0 to i64, !dbg !2651
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2652
  %38 = load i64, i64* %37, align 8, !dbg !2652, !tbaa !2571
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2607, metadata !696), !dbg !2653
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2654
  %40 = load i8*, i8** %39, align 8, !dbg !2654, !tbaa !2558
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2609, metadata !696), !dbg !2655
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2656
  %42 = load i32, i32* %41, align 4, !dbg !2656, !tbaa !1649
  %43 = or i32 %42, 1, !dbg !2657
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2610, metadata !696), !dbg !2658
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2659
  %45 = load i32, i32* %44, align 8, !dbg !2659, !tbaa !1589
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2660
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2661
  %48 = load i8*, i8** %47, align 8, !dbg !2661, !tbaa !1675
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2662
  %50 = load i8*, i8** %49, align 8, !dbg !2662, !tbaa !1678
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2663
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2611, metadata !696), !dbg !2664
  %52 = icmp ugt i64 %38, %51, !dbg !2665
  br i1 %52, label %63, label %53, !dbg !2667

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2668
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2607, metadata !696), !dbg !2653
  store i64 %54, i64* %37, align 8, !dbg !2670, !tbaa !2571
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2671
  br i1 %55, label %57, label %56, !dbg !2673

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2674
  br label %57, !dbg !2674

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2497, metadata !696) #10, !dbg !2675
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2677
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2609, metadata !696), !dbg !2655
  store i8* %58, i8** %39, align 8, !dbg !2678, !tbaa !2558
  %59 = load i32, i32* %44, align 8, !dbg !2679, !tbaa !1589
  %60 = load i8*, i8** %47, align 8, !dbg !2680, !tbaa !1675
  %61 = load i8*, i8** %49, align 8, !dbg !2681, !tbaa !1678
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2682
  br label %63, !dbg !2683

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2609, metadata !696), !dbg !2655
  store i32 %6, i32* %5, align 4, !dbg !2684, !tbaa !789
  ret i8* %64, !dbg !2685
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2686 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2690, metadata !696), !dbg !2693
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2691, metadata !696), !dbg !2694
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2692, metadata !696), !dbg !2695
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2696
  ret i8* %4, !dbg !2697
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2698 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2702, metadata !696), !dbg !2703
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2588, metadata !696) #10, !dbg !2704
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2589, metadata !696) #10, !dbg !2706
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2707
  ret i8* %2, !dbg !2708
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2709 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2713, metadata !696), !dbg !2715
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2714, metadata !696), !dbg !2716
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2690, metadata !696) #10, !dbg !2717
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2691, metadata !696) #10, !dbg !2719
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2692, metadata !696) #10, !dbg !2720
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2721
  ret i8* %3, !dbg !2722
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2723 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2731, metadata !2737), !dbg !2738
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2727, metadata !696), !dbg !2740
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2728, metadata !696), !dbg !2741
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2729, metadata !696), !dbg !2742
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2743
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2743
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2730, metadata !696), !dbg !2744
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2736, metadata !696) #10, !dbg !2745
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2746
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2746
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2731, metadata !696) #10, !dbg !2738
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2738
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2738
  %8 = icmp eq i32 %1, 10, !dbg !2748
  br i1 %8, label %9, label %10, !dbg !2750

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2751, !noalias !2752
  unreachable, !dbg !2751

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2731, metadata !2747) #10, !dbg !2738
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2755
  store i32 %1, i32* %11, align 8, !dbg !2755, !alias.scope !2752
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2755
  %13 = bitcast i32* %12 to i8*, !dbg !2755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2755
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2730, metadata !696), !dbg !2744
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2757
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2758
  ret i8* %14, !dbg !2759
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2760 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2731, metadata !2737), !dbg !2769
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2764, metadata !696), !dbg !2771
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2765, metadata !696), !dbg !2772
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2766, metadata !696), !dbg !2773
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2767, metadata !696), !dbg !2774
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2775
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2775
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2768, metadata !696), !dbg !2776
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2736, metadata !696) #10, !dbg !2777
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2778
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2778
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2731, metadata !696) #10, !dbg !2769
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2769
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2769
  %9 = icmp eq i32 %1, 10, !dbg !2779
  br i1 %9, label %10, label %11, !dbg !2780

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2781, !noalias !2782
  unreachable, !dbg !2781

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2731, metadata !2747) #10, !dbg !2769
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2785
  store i32 %1, i32* %12, align 8, !dbg !2785, !alias.scope !2782
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2785
  %14 = bitcast i32* %13 to i8*, !dbg !2785
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2785
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2786
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2768, metadata !696), !dbg !2776
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2787
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2788
  ret i8* %15, !dbg !2789
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2790 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2731, metadata !2737), !dbg !2796
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2794, metadata !696), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2795, metadata !696), !dbg !2800
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2727, metadata !696) #10, !dbg !2801
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2728, metadata !696) #10, !dbg !2802
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2729, metadata !696) #10, !dbg !2803
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2804
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2804
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2730, metadata !696) #10, !dbg !2805
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2736, metadata !696) #10, !dbg !2806
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2807
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2807
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2731, metadata !696) #10, !dbg !2796
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2796
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2796
  %7 = icmp eq i32 %0, 10, !dbg !2808
  br i1 %7, label %8, label %9, !dbg !2809

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2810, !noalias !2811
  unreachable, !dbg !2810

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2796
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2814
  store i32 %0, i32* %10, align 8, !dbg !2814, !alias.scope !2811
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2814
  %12 = bitcast i32* %11 to i8*, !dbg !2814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2814
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2815
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2730, metadata !696) #10, !dbg !2805
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2816
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2817
  ret i8* %13, !dbg !2818
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2819 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2731, metadata !2737), !dbg !2826
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2823, metadata !696), !dbg !2829
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2824, metadata !696), !dbg !2830
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2825, metadata !696), !dbg !2831
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2764, metadata !696) #10, !dbg !2832
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2765, metadata !696) #10, !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2766, metadata !696) #10, !dbg !2834
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2767, metadata !696) #10, !dbg !2835
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2836
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2768, metadata !696) #10, !dbg !2837
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2736, metadata !696) #10, !dbg !2838
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2839
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2839
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2731, metadata !696) #10, !dbg !2826
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2826
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2826
  %8 = icmp eq i32 %0, 10, !dbg !2840
  br i1 %8, label %9, label %10, !dbg !2841

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2842, !noalias !2843
  unreachable, !dbg !2842

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2826
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2846
  store i32 %0, i32* %11, align 8, !dbg !2846, !alias.scope !2843
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2846
  %13 = bitcast i32* %12 to i8*, !dbg !2846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2846
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2847
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2768, metadata !696) #10, !dbg !2837
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2848
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2849
  ret i8* %14, !dbg !2850
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2851 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2855, metadata !696), !dbg !2859
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2856, metadata !696), !dbg !2860
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2857, metadata !696), !dbg !2861
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2862
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2862
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2863, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2858, metadata !696), !dbg !2865
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1608, metadata !696), !dbg !2866
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1609, metadata !696), !dbg !2868
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1610, metadata !696), !dbg !2869
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1611, metadata !696), !dbg !2870
  %6 = lshr i8 %2, 5, !dbg !2871
  %7 = zext i8 %6 to i64, !dbg !2871
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2872
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1612, metadata !696), !dbg !2873
  %9 = and i8 %2, 31, !dbg !2874
  %10 = zext i8 %9 to i32, !dbg !2875
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1614, metadata !696), !dbg !2876
  %11 = load i32, i32* %8, align 4, !dbg !2877, !tbaa !789
  %12 = lshr i32 %11, %10, !dbg !2878
  %13 = and i32 %12, 1, !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1615, metadata !696), !dbg !2880
  %14 = xor i32 %13, 1, !dbg !2881
  %15 = shl i32 %14, %10, !dbg !2882
  %16 = xor i32 %15, %11, !dbg !2883
  store i32 %16, i32* %8, align 4, !dbg !2883, !tbaa !789
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2858, metadata !696), !dbg !2865
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2884
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2885
  ret i8* %17, !dbg !2886
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2887 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2891, metadata !696), !dbg !2893
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2892, metadata !696), !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2855, metadata !696) #10, !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2856, metadata !696) #10, !dbg !2897
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2857, metadata !696) #10, !dbg !2898
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2899
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2899
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2900, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2858, metadata !696) #10, !dbg !2901
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1608, metadata !696) #10, !dbg !2902
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1609, metadata !696) #10, !dbg !2904
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1610, metadata !696) #10, !dbg !2905
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1611, metadata !696) #10, !dbg !2906
  %5 = lshr i8 %1, 5, !dbg !2907
  %6 = zext i8 %5 to i64, !dbg !2907
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2908
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1612, metadata !696) #10, !dbg !2909
  %8 = and i8 %1, 31, !dbg !2910
  %9 = zext i8 %8 to i32, !dbg !2911
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1614, metadata !696) #10, !dbg !2912
  %10 = load i32, i32* %7, align 4, !dbg !2913, !tbaa !789
  %11 = lshr i32 %10, %9, !dbg !2914
  %12 = and i32 %11, 1, !dbg !2915
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1615, metadata !696) #10, !dbg !2916
  %13 = xor i32 %12, 1, !dbg !2917
  %14 = shl i32 %13, %9, !dbg !2918
  %15 = xor i32 %14, %10, !dbg !2919
  store i32 %15, i32* %7, align 4, !dbg !2919, !tbaa !789
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2858, metadata !696) #10, !dbg !2901
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2920
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2921
  ret i8* %16, !dbg !2922
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2923 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2925, metadata !696), !dbg !2926
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2891, metadata !696) #10, !dbg !2927
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2892, metadata !696) #10, !dbg !2929
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2855, metadata !696) #10, !dbg !2930
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2856, metadata !696) #10, !dbg !2932
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2857, metadata !696) #10, !dbg !2933
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2934
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2934
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2935, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2858, metadata !696) #10, !dbg !2936
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1608, metadata !696) #10, !dbg !2937
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1609, metadata !696) #10, !dbg !2939
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1610, metadata !696) #10, !dbg !2940
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1611, metadata !696) #10, !dbg !2941
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2942
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1612, metadata !696) #10, !dbg !2943
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1614, metadata !696) #10, !dbg !2944
  %5 = load i32, i32* %4, align 4, !dbg !2945, !tbaa !789
  %6 = or i32 %5, 67108864, !dbg !2946
  store i32 %6, i32* %4, align 4, !dbg !2946, !tbaa !789
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2858, metadata !696) #10, !dbg !2936
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2947
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2948
  ret i8* %7, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2950 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2952, metadata !696), !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2953, metadata !696), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2855, metadata !696) #10, !dbg !2956
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2856, metadata !696) #10, !dbg !2958
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2857, metadata !696) #10, !dbg !2959
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2960
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2961, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2858, metadata !696) #10, !dbg !2962
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1608, metadata !696) #10, !dbg !2963
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1609, metadata !696) #10, !dbg !2965
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1610, metadata !696) #10, !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1611, metadata !696) #10, !dbg !2967
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2968
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1612, metadata !696) #10, !dbg !2969
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1614, metadata !696) #10, !dbg !2970
  %6 = load i32, i32* %5, align 4, !dbg !2971, !tbaa !789
  %7 = or i32 %6, 67108864, !dbg !2972
  store i32 %7, i32* %5, align 4, !dbg !2972, !tbaa !789
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2858, metadata !696) #10, !dbg !2962
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2973
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2974
  ret i8* %8, !dbg !2975
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2976 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2731, metadata !2737), !dbg !2982
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2978, metadata !696), !dbg !2984
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2979, metadata !696), !dbg !2985
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2980, metadata !696), !dbg !2986
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2987
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2987
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2736, metadata !696) #10, !dbg !2988
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2989
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2989
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2731, metadata !696) #10, !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2731, metadata !2747) #10, !dbg !2982
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2982
  %9 = icmp eq i32 %1, 10, !dbg !2990
  br i1 %9, label %10, label %11, !dbg !2991

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2992, !noalias !2993
  unreachable, !dbg !2992

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2731, metadata !2747) #10, !dbg !2982
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2996
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2997
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2998
  store i32 %1, i32* %13, align 8, !dbg !2998
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2998
  %15 = bitcast i32* %14 to i8*, !dbg !2998
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2998
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2981, metadata !696), !dbg !2999
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1608, metadata !696), !dbg !3000
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1609, metadata !696), !dbg !3002
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1610, metadata !696), !dbg !3003
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1611, metadata !696), !dbg !3004
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3005
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1612, metadata !696), !dbg !3006
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1614, metadata !696), !dbg !3007
  %17 = load i32, i32* %16, align 4, !dbg !3008, !tbaa !789
  %18 = or i32 %17, 67108864, !dbg !3009
  store i32 %18, i32* %16, align 4, !dbg !3009, !tbaa !789
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2981, metadata !696), !dbg !2999
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3010
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3011
  ret i8* %19, !dbg !3012
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3013 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3017, metadata !696), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3018, metadata !696), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3019, metadata !696), !dbg !3023
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3020, metadata !696), !dbg !3024
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3025, metadata !696) #10, !dbg !3035
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3030, metadata !696) #10, !dbg !3037
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3031, metadata !696) #10, !dbg !3038
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3032, metadata !696) #10, !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3033, metadata !696) #10, !dbg !3040
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3041
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3041
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3042, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3034, metadata !696) #10, !dbg !3043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1657, metadata !696) #10, !dbg !3044
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1658, metadata !696) #10, !dbg !3046
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1659, metadata !696) #10, !dbg !3047
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1657, metadata !696) #10, !dbg !3044
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1657, metadata !696) #10, !dbg !3044
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3048
  store i32 10, i32* %7, align 8, !dbg !3049, !tbaa !1589
  %8 = icmp ne i8* %1, null, !dbg !3050
  %9 = icmp ne i8* %2, null, !dbg !3051
  %10 = and i1 %8, %9, !dbg !3052
  br i1 %10, label %12, label %11, !dbg !3052

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3053
  unreachable, !dbg !3053

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3054
  store i8* %1, i8** %13, align 8, !dbg !3055, !tbaa !1675
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3056
  store i8* %2, i8** %14, align 8, !dbg !3057, !tbaa !1678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3034, metadata !696) #10, !dbg !3043
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3058
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3059
  ret i8* %15, !dbg !3060
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3026 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3025, metadata !696), !dbg !3061
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3030, metadata !696), !dbg !3062
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3031, metadata !696), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3032, metadata !696), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3033, metadata !696), !dbg !3065
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3066
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3066
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3067, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3034, metadata !696), !dbg !3068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1657, metadata !696) #10, !dbg !3069
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1658, metadata !696) #10, !dbg !3071
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1659, metadata !696) #10, !dbg !3072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1657, metadata !696) #10, !dbg !3069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1657, metadata !696) #10, !dbg !3069
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3073
  store i32 10, i32* %8, align 8, !dbg !3074, !tbaa !1589
  %9 = icmp ne i8* %1, null, !dbg !3075
  %10 = icmp ne i8* %2, null, !dbg !3076
  %11 = and i1 %9, %10, !dbg !3077
  br i1 %11, label %13, label %12, !dbg !3077

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3078
  unreachable, !dbg !3078

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3079
  store i8* %1, i8** %14, align 8, !dbg !3080, !tbaa !1675
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3081
  store i8* %2, i8** %15, align 8, !dbg !3082, !tbaa !1678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3034, metadata !696), !dbg !3068
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3083
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3084
  ret i8* %16, !dbg !3085
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3086 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3090, metadata !696), !dbg !3093
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3091, metadata !696), !dbg !3094
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3092, metadata !696), !dbg !3095
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3017, metadata !696) #10, !dbg !3096
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3018, metadata !696) #10, !dbg !3098
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3019, metadata !696) #10, !dbg !3099
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3020, metadata !696) #10, !dbg !3100
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3025, metadata !696) #10, !dbg !3101
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3030, metadata !696) #10, !dbg !3103
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3031, metadata !696) #10, !dbg !3104
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3032, metadata !696) #10, !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3033, metadata !696) #10, !dbg !3106
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3107
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3107
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3108, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3034, metadata !696) #10, !dbg !3109
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1657, metadata !696) #10, !dbg !3110
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1658, metadata !696) #10, !dbg !3112
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1659, metadata !696) #10, !dbg !3113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1657, metadata !696) #10, !dbg !3110
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1657, metadata !696) #10, !dbg !3110
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3114
  store i32 10, i32* %6, align 8, !dbg !3115, !tbaa !1589
  %7 = icmp ne i8* %0, null, !dbg !3116
  %8 = icmp ne i8* %1, null, !dbg !3117
  %9 = and i1 %7, %8, !dbg !3118
  br i1 %9, label %11, label %10, !dbg !3118

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3119
  unreachable, !dbg !3119

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3120
  store i8* %0, i8** %12, align 8, !dbg !3121, !tbaa !1675
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3122
  store i8* %1, i8** %13, align 8, !dbg !3123, !tbaa !1678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3034, metadata !696) #10, !dbg !3109
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3124
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3125
  ret i8* %14, !dbg !3126
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3127 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3131, metadata !696), !dbg !3135
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3132, metadata !696), !dbg !3136
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3133, metadata !696), !dbg !3137
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3134, metadata !696), !dbg !3138
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3025, metadata !696) #10, !dbg !3139
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3030, metadata !696) #10, !dbg !3141
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3031, metadata !696) #10, !dbg !3142
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3032, metadata !696) #10, !dbg !3143
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3033, metadata !696) #10, !dbg !3144
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3145
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3146, !tbaa.struct !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3034, metadata !696) #10, !dbg !3147
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1657, metadata !696) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1658, metadata !696) #10, !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1659, metadata !696) #10, !dbg !3151
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1657, metadata !696) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1657, metadata !696) #10, !dbg !3148
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3152
  store i32 10, i32* %7, align 8, !dbg !3153, !tbaa !1589
  %8 = icmp ne i8* %0, null, !dbg !3154
  %9 = icmp ne i8* %1, null, !dbg !3155
  %10 = and i1 %8, %9, !dbg !3156
  br i1 %10, label %12, label %11, !dbg !3156

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3157
  unreachable, !dbg !3157

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3158
  store i8* %0, i8** %13, align 8, !dbg !3159, !tbaa !1675
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3160
  store i8* %1, i8** %14, align 8, !dbg !3161, !tbaa !1678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3034, metadata !696) #10, !dbg !3147
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3162
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3163
  ret i8* %15, !dbg !3164
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3165 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3169, metadata !696), !dbg !3172
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3170, metadata !696), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3171, metadata !696), !dbg !3174
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3175
  ret i8* %4, !dbg !3176
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3177 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3181, metadata !696), !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3182, metadata !696), !dbg !3184
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3169, metadata !696) #10, !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3170, metadata !696) #10, !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3171, metadata !696) #10, !dbg !3188
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3189
  ret i8* %3, !dbg !3190
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3191 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3195, metadata !696), !dbg !3197
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3196, metadata !696), !dbg !3198
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3169, metadata !696) #10, !dbg !3199
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3170, metadata !696) #10, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3171, metadata !696) #10, !dbg !3202
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3203
  ret i8* %3, !dbg !3204
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3205 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3209, metadata !696), !dbg !3210
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3195, metadata !696) #10, !dbg !3211
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3196, metadata !696) #10, !dbg !3213
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3169, metadata !696) #10, !dbg !3214
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3170, metadata !696) #10, !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3171, metadata !696) #10, !dbg !3217
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3218
  ret i8* %2, !dbg !3219
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3220 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3265, metadata !696), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3266, metadata !696), !dbg !3272
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3267, metadata !696), !dbg !3273
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3268, metadata !696), !dbg !3274
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3269, metadata !696), !dbg !3275
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3270, metadata !696), !dbg !3276
  %7 = icmp eq i8* %1, null, !dbg !3277
  br i1 %7, label %10, label %8, !dbg !3279

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3280
  br label %12, !dbg !3280

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.74, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3281
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 5) #10, !dbg !3282
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3282
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.76, i64 0, i64 0), i32 5) #10, !dbg !3283
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3283
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
  ], !dbg !3284

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3285
  unreachable, !dbg !3285

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.77, i64 0, i64 0), i32 5) #10, !dbg !3287
  %20 = load i8*, i8** %4, align 8, !dbg !3287, !tbaa !703
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3287
  br label %146, !dbg !3288

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.78, i64 0, i64 0), i32 5) #10, !dbg !3289
  %24 = load i8*, i8** %4, align 8, !dbg !3289, !tbaa !703
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3289
  %26 = load i8*, i8** %25, align 8, !dbg !3289, !tbaa !703
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3289
  br label %146, !dbg !3290

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.79, i64 0, i64 0), i32 5) #10, !dbg !3291
  %30 = load i8*, i8** %4, align 8, !dbg !3291, !tbaa !703
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3291
  %32 = load i8*, i8** %31, align 8, !dbg !3291, !tbaa !703
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3291
  %34 = load i8*, i8** %33, align 8, !dbg !3291, !tbaa !703
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3291
  br label %146, !dbg !3292

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.80, i64 0, i64 0), i32 5) #10, !dbg !3293
  %38 = load i8*, i8** %4, align 8, !dbg !3293, !tbaa !703
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3293
  %40 = load i8*, i8** %39, align 8, !dbg !3293, !tbaa !703
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3293
  %42 = load i8*, i8** %41, align 8, !dbg !3293, !tbaa !703
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3293
  %44 = load i8*, i8** %43, align 8, !dbg !3293, !tbaa !703
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3293
  br label %146, !dbg !3294

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.81, i64 0, i64 0), i32 5) #10, !dbg !3295
  %48 = load i8*, i8** %4, align 8, !dbg !3295, !tbaa !703
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3295
  %50 = load i8*, i8** %49, align 8, !dbg !3295, !tbaa !703
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3295
  %52 = load i8*, i8** %51, align 8, !dbg !3295, !tbaa !703
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3295
  %54 = load i8*, i8** %53, align 8, !dbg !3295, !tbaa !703
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3295
  %56 = load i8*, i8** %55, align 8, !dbg !3295, !tbaa !703
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3295
  br label %146, !dbg !3296

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.82, i64 0, i64 0), i32 5) #10, !dbg !3297
  %60 = load i8*, i8** %4, align 8, !dbg !3297, !tbaa !703
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3297
  %62 = load i8*, i8** %61, align 8, !dbg !3297, !tbaa !703
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3297
  %64 = load i8*, i8** %63, align 8, !dbg !3297, !tbaa !703
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3297
  %66 = load i8*, i8** %65, align 8, !dbg !3297, !tbaa !703
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3297
  %68 = load i8*, i8** %67, align 8, !dbg !3297, !tbaa !703
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3297
  %70 = load i8*, i8** %69, align 8, !dbg !3297, !tbaa !703
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3297
  br label %146, !dbg !3298

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.83, i64 0, i64 0), i32 5) #10, !dbg !3299
  %74 = load i8*, i8** %4, align 8, !dbg !3299, !tbaa !703
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3299
  %76 = load i8*, i8** %75, align 8, !dbg !3299, !tbaa !703
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3299
  %78 = load i8*, i8** %77, align 8, !dbg !3299, !tbaa !703
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3299
  %80 = load i8*, i8** %79, align 8, !dbg !3299, !tbaa !703
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3299
  %82 = load i8*, i8** %81, align 8, !dbg !3299, !tbaa !703
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3299
  %84 = load i8*, i8** %83, align 8, !dbg !3299, !tbaa !703
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3299
  %86 = load i8*, i8** %85, align 8, !dbg !3299, !tbaa !703
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3299
  br label %146, !dbg !3300

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.84, i64 0, i64 0), i32 5) #10, !dbg !3301
  %90 = load i8*, i8** %4, align 8, !dbg !3301, !tbaa !703
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3301
  %92 = load i8*, i8** %91, align 8, !dbg !3301, !tbaa !703
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3301
  %94 = load i8*, i8** %93, align 8, !dbg !3301, !tbaa !703
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3301
  %96 = load i8*, i8** %95, align 8, !dbg !3301, !tbaa !703
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3301
  %98 = load i8*, i8** %97, align 8, !dbg !3301, !tbaa !703
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3301
  %100 = load i8*, i8** %99, align 8, !dbg !3301, !tbaa !703
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3301
  %102 = load i8*, i8** %101, align 8, !dbg !3301, !tbaa !703
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3301
  %104 = load i8*, i8** %103, align 8, !dbg !3301, !tbaa !703
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3301
  br label %146, !dbg !3302

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.85, i64 0, i64 0), i32 5) #10, !dbg !3303
  %108 = load i8*, i8** %4, align 8, !dbg !3303, !tbaa !703
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3303
  %110 = load i8*, i8** %109, align 8, !dbg !3303, !tbaa !703
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3303
  %112 = load i8*, i8** %111, align 8, !dbg !3303, !tbaa !703
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3303
  %114 = load i8*, i8** %113, align 8, !dbg !3303, !tbaa !703
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3303
  %116 = load i8*, i8** %115, align 8, !dbg !3303, !tbaa !703
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3303
  %118 = load i8*, i8** %117, align 8, !dbg !3303, !tbaa !703
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3303
  %120 = load i8*, i8** %119, align 8, !dbg !3303, !tbaa !703
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3303
  %122 = load i8*, i8** %121, align 8, !dbg !3303, !tbaa !703
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3303
  %124 = load i8*, i8** %123, align 8, !dbg !3303, !tbaa !703
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3303
  br label %146, !dbg !3304

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.86, i64 0, i64 0), i32 5) #10, !dbg !3305
  %128 = load i8*, i8** %4, align 8, !dbg !3305, !tbaa !703
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3305
  %130 = load i8*, i8** %129, align 8, !dbg !3305, !tbaa !703
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3305
  %132 = load i8*, i8** %131, align 8, !dbg !3305, !tbaa !703
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3305
  %134 = load i8*, i8** %133, align 8, !dbg !3305, !tbaa !703
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3305
  %136 = load i8*, i8** %135, align 8, !dbg !3305, !tbaa !703
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3305
  %138 = load i8*, i8** %137, align 8, !dbg !3305, !tbaa !703
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3305
  %140 = load i8*, i8** %139, align 8, !dbg !3305, !tbaa !703
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3305
  %142 = load i8*, i8** %141, align 8, !dbg !3305, !tbaa !703
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3305
  %144 = load i8*, i8** %143, align 8, !dbg !3305, !tbaa !703
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3305
  br label %146, !dbg !3306

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3307
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3308 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3312, metadata !696), !dbg !3318
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3313, metadata !696), !dbg !3319
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3314, metadata !696), !dbg !3320
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3315, metadata !696), !dbg !3321
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3316, metadata !696), !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3317, metadata !696), !dbg !3323
  br label %6, !dbg !3324

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3317, metadata !696), !dbg !3323
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3326
  %9 = load i8*, i8** %8, align 8, !dbg !3326, !tbaa !703
  %10 = icmp eq i8* %9, null, !dbg !3328
  %11 = add i64 %7, 1, !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3317, metadata !696), !dbg !3323
  br i1 %10, label %12, label %6, !dbg !3328, !llvm.loop !3330

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3332
  ret void, !dbg !3333
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3334 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3345, metadata !696), !dbg !3353
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3346, metadata !696), !dbg !3354
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3347, metadata !696), !dbg !3355
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3348, metadata !696), !dbg !3356
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3349, metadata !696), !dbg !3357
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3358
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3358
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3351, metadata !696), !dbg !3359
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3350, metadata !696), !dbg !3360
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3350, metadata !696), !dbg !3360
  %11 = load i32, i32* %8, align 8, !dbg !3361
  %12 = icmp ult i32 %11, 41, !dbg !3361
  br i1 %12, label %13, label %18, !dbg !3361

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3361
  %15 = sext i32 %11 to i64, !dbg !3361
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3361
  %17 = add i32 %11, 8, !dbg !3361
  store i32 %17, i32* %8, align 8, !dbg !3361
  br label %21, !dbg !3361

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3361
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3361
  store i8* %20, i8** %10, align 8, !dbg !3361
  br label %21, !dbg !3361

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3361
  %25 = load i8*, i8** %24, align 8, !dbg !3361
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3364
  store i8* %25, i8** %26, align 16, !dbg !3365, !tbaa !703
  %27 = icmp eq i8* %25, null, !dbg !3366
  br i1 %27, label %30, label %28, !dbg !3367

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3350, metadata !696), !dbg !3360
  %29 = icmp ult i32 %22, 41, !dbg !3361
  br i1 %29, label %35, label %32, !dbg !3361

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3368
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3369
  ret void, !dbg !3369

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3361
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3361
  store i8* %34, i8** %10, align 8, !dbg !3361
  br label %40, !dbg !3361

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3361
  %37 = sext i32 %22 to i64, !dbg !3361
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3361
  %39 = add i32 %22, 8, !dbg !3361
  store i32 %39, i32* %8, align 8, !dbg !3361
  br label %40, !dbg !3361

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3361
  %44 = load i8*, i8** %43, align 8, !dbg !3361
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3364
  store i8* %44, i8** %45, align 8, !dbg !3365, !tbaa !703
  %46 = icmp eq i8* %44, null, !dbg !3366
  br i1 %46, label %30, label %47, !dbg !3367

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3350, metadata !696), !dbg !3360
  %48 = icmp ult i32 %41, 41, !dbg !3361
  br i1 %48, label %52, label %49, !dbg !3361

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3361
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3361
  store i8* %51, i8** %10, align 8, !dbg !3361
  br label %57, !dbg !3361

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3361
  %54 = sext i32 %41 to i64, !dbg !3361
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3361
  %56 = add i32 %41, 8, !dbg !3361
  store i32 %56, i32* %8, align 8, !dbg !3361
  br label %57, !dbg !3361

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3361
  %61 = load i8*, i8** %60, align 8, !dbg !3361
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3364
  store i8* %61, i8** %62, align 16, !dbg !3365, !tbaa !703
  %63 = icmp eq i8* %61, null, !dbg !3366
  br i1 %63, label %30, label %64, !dbg !3367

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3350, metadata !696), !dbg !3360
  %65 = icmp ult i32 %58, 41, !dbg !3361
  br i1 %65, label %69, label %66, !dbg !3361

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3361
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3361
  store i8* %68, i8** %10, align 8, !dbg !3361
  br label %74, !dbg !3361

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3361
  %71 = sext i32 %58 to i64, !dbg !3361
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3361
  %73 = add i32 %58, 8, !dbg !3361
  store i32 %73, i32* %8, align 8, !dbg !3361
  br label %74, !dbg !3361

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3361
  %78 = load i8*, i8** %77, align 8, !dbg !3361
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3364
  store i8* %78, i8** %79, align 8, !dbg !3365, !tbaa !703
  %80 = icmp eq i8* %78, null, !dbg !3366
  br i1 %80, label %30, label %81, !dbg !3367

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3350, metadata !696), !dbg !3360
  %82 = icmp ult i32 %75, 41, !dbg !3361
  br i1 %82, label %86, label %83, !dbg !3361

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3361
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3361
  store i8* %85, i8** %10, align 8, !dbg !3361
  br label %91, !dbg !3361

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3361
  %88 = sext i32 %75 to i64, !dbg !3361
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3361
  %90 = add i32 %75, 8, !dbg !3361
  store i32 %90, i32* %8, align 8, !dbg !3361
  br label %91, !dbg !3361

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3361
  %95 = load i8*, i8** %94, align 8, !dbg !3361
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3364
  store i8* %95, i8** %96, align 16, !dbg !3365, !tbaa !703
  %97 = icmp eq i8* %95, null, !dbg !3366
  br i1 %97, label %30, label %98, !dbg !3367

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3350, metadata !696), !dbg !3360
  %99 = icmp ult i32 %92, 41, !dbg !3361
  br i1 %99, label %103, label %100, !dbg !3361

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3361
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3361
  store i8* %102, i8** %10, align 8, !dbg !3361
  br label %108, !dbg !3361

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3361
  %105 = sext i32 %92 to i64, !dbg !3361
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3361
  %107 = add i32 %92, 8, !dbg !3361
  store i32 %107, i32* %8, align 8, !dbg !3361
  br label %108, !dbg !3361

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3361
  %111 = load i8*, i8** %110, align 8, !dbg !3361
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3364
  store i8* %111, i8** %112, align 8, !dbg !3365, !tbaa !703
  %113 = icmp eq i8* %111, null, !dbg !3366
  br i1 %113, label %30, label %114, !dbg !3367

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3350, metadata !696), !dbg !3360
  %115 = load i8*, i8** %10, align 8, !dbg !3361
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3361
  store i8* %116, i8** %10, align 8, !dbg !3361
  %117 = bitcast i8* %115 to i8**, !dbg !3361
  %118 = load i8*, i8** %117, align 8, !dbg !3361
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3364
  store i8* %118, i8** %119, align 16, !dbg !3365, !tbaa !703
  %120 = icmp eq i8* %118, null, !dbg !3366
  br i1 %120, label %30, label %121, !dbg !3367

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3350, metadata !696), !dbg !3360
  %122 = load i8*, i8** %10, align 8, !dbg !3361
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3361
  store i8* %123, i8** %10, align 8, !dbg !3361
  %124 = bitcast i8* %122 to i8**, !dbg !3361
  %125 = load i8*, i8** %124, align 8, !dbg !3361
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3364
  store i8* %125, i8** %126, align 8, !dbg !3365, !tbaa !703
  %127 = icmp eq i8* %125, null, !dbg !3366
  br i1 %127, label %30, label %128, !dbg !3367

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3350, metadata !696), !dbg !3360
  %129 = load i8*, i8** %10, align 8, !dbg !3361
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3361
  store i8* %130, i8** %10, align 8, !dbg !3361
  %131 = bitcast i8* %129 to i8**, !dbg !3361
  %132 = load i8*, i8** %131, align 8, !dbg !3361
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3364
  store i8* %132, i8** %133, align 16, !dbg !3365, !tbaa !703
  %134 = icmp eq i8* %132, null, !dbg !3366
  br i1 %134, label %30, label %135, !dbg !3367

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3350, metadata !696), !dbg !3360
  %136 = load i8*, i8** %10, align 8, !dbg !3361
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3361
  store i8* %137, i8** %10, align 8, !dbg !3361
  %138 = bitcast i8* %136 to i8**, !dbg !3361
  %139 = load i8*, i8** %138, align 8, !dbg !3361
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3364
  store i8* %139, i8** %140, align 8, !dbg !3365, !tbaa !703
  %141 = icmp eq i8* %139, null, !dbg !3366
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3350, metadata !696), !dbg !3360
  %142 = select i1 %141, i64 9, i64 10, !dbg !3367
  br label %30, !dbg !3367
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3370 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3374, metadata !696), !dbg !3384
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3375, metadata !696), !dbg !3385
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3376, metadata !696), !dbg !3386
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3377, metadata !696), !dbg !3387
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3388
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3388
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3378, metadata !696), !dbg !3389
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3390
  call void @llvm.va_start(i8* nonnull %6), !dbg !3390
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3391
  call void @llvm.va_end(i8* nonnull %6), !dbg !3392
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3393
  ret void, !dbg !3393
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3394 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.89, i64 0, i64 0), i32 5) #10, !dbg !3395
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.90, i64 0, i64 0)) #10, !dbg !3395
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3396
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.92, i64 0, i64 0)) #10, !dbg !3396
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3397
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3397, !tbaa !703
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3397
  ret void, !dbg !3398
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3399 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3403, metadata !696), !dbg !3405
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3404, metadata !696), !dbg !3406
  %3 = udiv i64 9223372036854775807, %1, !dbg !3407
  %4 = icmp ult i64 %3, %0, !dbg !3407
  br i1 %4, label %5, label %6, !dbg !3409

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3410
  unreachable, !dbg !3410

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3411
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3412, metadata !696) #10, !dbg !3419
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3421
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3418, metadata !696) #10, !dbg !3422
  %9 = icmp eq i8* %8, null, !dbg !3423
  %10 = icmp ne i64 %7, 0, !dbg !3425
  %11 = and i1 %10, %9, !dbg !3426
  br i1 %11, label %12, label %13, !dbg !3426

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3427
  unreachable, !dbg !3427

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3428
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3413 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3412, metadata !696), !dbg !3429
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3430
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3418, metadata !696), !dbg !3431
  %3 = icmp eq i8* %2, null, !dbg !3432
  %4 = icmp ne i64 %0, 0, !dbg !3433
  %5 = and i1 %4, %3, !dbg !3434
  br i1 %5, label %6, label %7, !dbg !3434

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3435
  unreachable, !dbg !3435

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3436
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3437 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3441, metadata !696), !dbg !3444
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3442, metadata !696), !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3443, metadata !696), !dbg !3446
  %4 = udiv i64 9223372036854775807, %2, !dbg !3447
  %5 = icmp ult i64 %4, %1, !dbg !3447
  br i1 %5, label %6, label %7, !dbg !3449

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3450
  unreachable, !dbg !3450

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3451
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3452, metadata !696) #10, !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3457, metadata !696) #10, !dbg !3460
  %9 = icmp eq i64 %8, 0, !dbg !3461
  %10 = icmp ne i8* %0, null, !dbg !3463
  %11 = and i1 %10, %9, !dbg !3464
  br i1 %11, label %12, label %13, !dbg !3464

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3465
  br label %19, !dbg !3467

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3468
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3452, metadata !696) #10, !dbg !3458
  %15 = icmp eq i8* %14, null, !dbg !3469
  %16 = icmp ne i64 %8, 0, !dbg !3471
  %17 = and i1 %16, %15, !dbg !3472
  br i1 %17, label %18, label %19, !dbg !3472

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3473
  unreachable, !dbg !3473

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3474
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3453 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3452, metadata !696), !dbg !3475
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3457, metadata !696), !dbg !3476
  %3 = icmp eq i64 %1, 0, !dbg !3477
  %4 = icmp ne i8* %0, null, !dbg !3478
  %5 = and i1 %4, %3, !dbg !3479
  br i1 %5, label %6, label %7, !dbg !3479

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3480
  br label %13, !dbg !3481

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3482
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3452, metadata !696), !dbg !3475
  %9 = icmp eq i8* %8, null, !dbg !3483
  %10 = icmp ne i64 %1, 0, !dbg !3484
  %11 = and i1 %10, %9, !dbg !3485
  br i1 %11, label %12, label %13, !dbg !3485

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3486
  unreachable, !dbg !3486

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3487
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !659 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !661, metadata !696), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !662, metadata !696), !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !663, metadata !696), !dbg !3490
  %4 = load i64, i64* %1, align 8, !dbg !3491, !tbaa !861
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !664, metadata !696), !dbg !3492
  %5 = icmp eq i8* %0, null, !dbg !3493
  br i1 %5, label %6, label %13, !dbg !3495

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3496
  br i1 %7, label %8, label %17, !dbg !3499

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3500
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !664, metadata !696), !dbg !3492
  %10 = icmp ugt i64 %2, 128, !dbg !3502
  %11 = zext i1 %10 to i64, !dbg !3502
  %12 = add nuw nsw i64 %9, %11, !dbg !3503
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !664, metadata !696), !dbg !3492
  br label %17, !dbg !3504

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3505
  %15 = icmp ugt i64 %14, %4, !dbg !3508
  br i1 %15, label %20, label %16, !dbg !3509

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3510
  unreachable, !dbg !3510

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !664, metadata !696), !dbg !3492
  store i64 %18, i64* %1, align 8, !dbg !3511, !tbaa !861
  %19 = mul i64 %18, %2, !dbg !3512
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3452, metadata !696) #10, !dbg !3513
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3457, metadata !696) #10, !dbg !3515
  br label %27, !dbg !3516

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3517
  %22 = add i64 %4, 1, !dbg !3518
  %23 = add i64 %22, %21, !dbg !3519
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !664, metadata !696), !dbg !3492
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !664, metadata !696), !dbg !3492
  store i64 %23, i64* %1, align 8, !dbg !3511, !tbaa !861
  %24 = mul i64 %23, %2, !dbg !3512
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3452, metadata !696) #10, !dbg !3513
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3457, metadata !696) #10, !dbg !3515
  %25 = icmp eq i64 %24, 0, !dbg !3520
  br i1 %25, label %26, label %27, !dbg !3516

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3521
  br label %34, !dbg !3522

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3523
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3452, metadata !696) #10, !dbg !3513
  %30 = icmp eq i8* %29, null, !dbg !3524
  %31 = icmp ne i64 %28, 0, !dbg !3525
  %32 = and i1 %31, %30, !dbg !3526
  br i1 %32, label %33, label %34, !dbg !3526

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3527
  unreachable, !dbg !3527

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3528
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3529 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3531, metadata !696), !dbg !3532
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3412, metadata !696) #10, !dbg !3533
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3535
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3418, metadata !696) #10, !dbg !3536
  %3 = icmp eq i8* %2, null, !dbg !3537
  %4 = icmp ne i64 %0, 0, !dbg !3538
  %5 = and i1 %4, %3, !dbg !3539
  br i1 %5, label %6, label %7, !dbg !3539

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3540
  unreachable, !dbg !3540

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3541
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3542 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3546, metadata !696), !dbg !3548
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3547, metadata !696), !dbg !3549
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !661, metadata !696) #10, !dbg !3550
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !662, metadata !696) #10, !dbg !3552
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !663, metadata !696) #10, !dbg !3553
  %3 = load i64, i64* %1, align 8, !dbg !3554, !tbaa !861
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !664, metadata !696) #10, !dbg !3555
  %4 = icmp eq i8* %0, null, !dbg !3556
  br i1 %4, label %5, label %8, !dbg !3557

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3558
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !664, metadata !696) #10, !dbg !3555
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !664, metadata !696) #10, !dbg !3555
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3559
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !664, metadata !696) #10, !dbg !3555
  store i64 %7, i64* %1, align 8, !dbg !3560, !tbaa !861
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3452, metadata !696) #10, !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3457, metadata !696) #10, !dbg !3563
  br label %17, !dbg !3564

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3565
  br i1 %9, label %11, label %10, !dbg !3566

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3567
  unreachable, !dbg !3567

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3568
  %13 = add i64 %3, 1, !dbg !3569
  %14 = add i64 %13, %12, !dbg !3570
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !664, metadata !696) #10, !dbg !3555
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !664, metadata !696) #10, !dbg !3555
  store i64 %14, i64* %1, align 8, !dbg !3560, !tbaa !861
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3452, metadata !696) #10, !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3457, metadata !696) #10, !dbg !3563
  %15 = icmp eq i64 %14, 0, !dbg !3571
  br i1 %15, label %16, label %17, !dbg !3564

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3572
  br label %24, !dbg !3573

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3574
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3452, metadata !696) #10, !dbg !3561
  %20 = icmp eq i8* %19, null, !dbg !3575
  %21 = icmp ne i64 %18, 0, !dbg !3576
  %22 = and i1 %21, %20, !dbg !3577
  br i1 %22, label %23, label %24, !dbg !3577

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3578
  unreachable, !dbg !3578

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3579
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3580 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3582, metadata !696), !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3412, metadata !696) #10, !dbg !3584
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3586
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3418, metadata !696) #10, !dbg !3587
  %3 = icmp eq i8* %2, null, !dbg !3588
  %4 = icmp ne i64 %0, 0, !dbg !3589
  %5 = and i1 %4, %3, !dbg !3590
  br i1 %5, label %6, label %7, !dbg !3590

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3591
  unreachable, !dbg !3591

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3592
  ret i8* %2, !dbg !3593
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3594 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3596, metadata !696), !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3597, metadata !696), !dbg !3600
  %3 = udiv i64 9223372036854775807, %1, !dbg !3601
  %4 = icmp ult i64 %3, %0, !dbg !3601
  br i1 %4, label %8, label %5, !dbg !3603

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3604
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3598, metadata !696), !dbg !3605
  %7 = icmp eq i8* %6, null, !dbg !3606
  br i1 %7, label %8, label %9, !dbg !3607

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3608
  unreachable, !dbg !3608

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3609
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3610 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3616, metadata !696), !dbg !3618
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3617, metadata !696), !dbg !3619
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3412, metadata !696) #10, !dbg !3620
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3622
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3418, metadata !696) #10, !dbg !3623
  %4 = icmp eq i8* %3, null, !dbg !3624
  %5 = icmp ne i64 %1, 0, !dbg !3625
  %6 = and i1 %5, %4, !dbg !3626
  br i1 %6, label %7, label %8, !dbg !3626

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3627
  unreachable, !dbg !3627

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3628
  ret i8* %3, !dbg !3629
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3630 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3632, metadata !696), !dbg !3633
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3634
  %3 = add i64 %2, 1, !dbg !3635
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3616, metadata !696) #10, !dbg !3636
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3617, metadata !696) #10, !dbg !3638
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3412, metadata !696) #10, !dbg !3639
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3641
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3418, metadata !696) #10, !dbg !3642
  %5 = icmp eq i8* %4, null, !dbg !3643
  %6 = icmp ne i64 %3, 0, !dbg !3644
  %7 = and i1 %6, %5, !dbg !3645
  br i1 %7, label %8, label %9, !dbg !3645

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3646
  unreachable, !dbg !3646

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3647
  ret i8* %4, !dbg !3648
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3649 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3651, !tbaa !789
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.103, i64 0, i64 0), i32 5) #10, !dbg !3652
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), i8* %2) #10, !dbg !3653
  tail call void @abort() #15, !dbg !3654
  unreachable, !dbg !3654
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3655 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3658, metadata !696), !dbg !3661
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3659, metadata !696), !dbg !3662
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #10, !dbg !3663
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3660, metadata !696), !dbg !3664
  %4 = icmp eq i8* %3, null, !dbg !3665
  br i1 %4, label %5, label %6, !dbg !3667

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3668
  unreachable, !dbg !3668

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !3669
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3670 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3673, metadata !696), !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3674, metadata !696), !dbg !3680
  %3 = icmp eq i64 %0, 0, !dbg !3681
  %4 = icmp eq i64 %1, 0, !dbg !3682
  %5 = or i1 %3, %4, !dbg !3683
  br i1 %5, label %12, label %6, !dbg !3683

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3676, metadata !696), !dbg !3685
  %8 = udiv i64 %7, %1, !dbg !3686
  %9 = icmp eq i64 %8, %0, !dbg !3688
  br i1 %9, label %12, label %10, !dbg !3689

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3690
  store i32 12, i32* %11, align 4, !dbg !3692, !tbaa !789
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3673, metadata !696), !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3674, metadata !696), !dbg !3680
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3693
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3675, metadata !696), !dbg !3694
  br label %16, !dbg !3695

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3696
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3697 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3742, metadata !696), !dbg !3746
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3743, metadata !696), !dbg !3747
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3745, metadata !696), !dbg !3748
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3749
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3744, metadata !696), !dbg !3750
  %3 = icmp slt i32 %2, 0, !dbg !3751
  br i1 %3, label %4, label %6, !dbg !3753

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3754
  br label %24, !dbg !3755

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3756
  %8 = icmp eq i32 %7, 0, !dbg !3756
  br i1 %8, label %13, label %9, !dbg !3758

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3759
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3760
  %12 = icmp eq i64 %11, -1, !dbg !3761
  br i1 %12, label %16, label %13, !dbg !3762

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3763
  %15 = icmp eq i32 %14, 0, !dbg !3763
  br i1 %15, label %16, label %18, !dbg !3764

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3743, metadata !696), !dbg !3747
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3765
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3745, metadata !696), !dbg !3748
  br label %24, !dbg !3766

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3767
  %20 = load i32, i32* %19, align 4, !dbg !3767, !tbaa !789
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3743, metadata !696), !dbg !3747
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3743, metadata !696), !dbg !3747
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3765
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3745, metadata !696), !dbg !3748
  %22 = icmp eq i32 %20, 0, !dbg !3768
  br i1 %22, label %24, label %23, !dbg !3766

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3770, !tbaa !789
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3745, metadata !696), !dbg !3748
  br label %24, !dbg !3772

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3773
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3774 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3819, metadata !696), !dbg !3820
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3821
  br i1 %2, label %6, label %3, !dbg !3823

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3824
  %5 = icmp eq i32 %4, 0, !dbg !3824
  br i1 %5, label %6, label %8, !dbg !3825

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3826
  br label %17, !dbg !3827

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3828, metadata !696) #10, !dbg !3833
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3835
  %10 = load i32, i32* %9, align 8, !dbg !3835, !tbaa !1338
  %11 = and i32 %10, 256, !dbg !3837
  %12 = icmp eq i32 %11, 0, !dbg !3837
  br i1 %12, label %15, label %13, !dbg !3838

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3839
  br label %15, !dbg !3839

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3840
  br label %17, !dbg !3841

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3842
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3843 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3888, metadata !696), !dbg !3894
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3889, metadata !696), !dbg !3895
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3890, metadata !696), !dbg !3896
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3897
  %5 = load i8*, i8** %4, align 8, !dbg !3897, !tbaa !879
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3898
  %7 = load i8*, i8** %6, align 8, !dbg !3898, !tbaa !876
  %8 = icmp eq i8* %5, %7, !dbg !3899
  br i1 %8, label %9, label %28, !dbg !3900

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3901
  %11 = load i8*, i8** %10, align 8, !dbg !3901, !tbaa !916
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3902
  %13 = load i8*, i8** %12, align 8, !dbg !3902, !tbaa !3903
  %14 = icmp eq i8* %11, %13, !dbg !3904
  br i1 %14, label %15, label %28, !dbg !3905

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3906
  %17 = load i8*, i8** %16, align 8, !dbg !3906, !tbaa !3907
  %18 = icmp eq i8* %17, null, !dbg !3908
  br i1 %18, label %19, label %28, !dbg !3909

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3910
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3911
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3891, metadata !696), !dbg !3912
  %22 = icmp eq i64 %21, -1, !dbg !3913
  br i1 %22, label %30, label %23, !dbg !3915

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3916
  %25 = load i32, i32* %24, align 8, !dbg !3917, !tbaa !1338
  %26 = and i32 %25, -17, !dbg !3917
  store i32 %26, i32* %24, align 8, !dbg !3917, !tbaa !1338
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3918
  store i64 %21, i64* %27, align 8, !dbg !3919, !tbaa !3920
  br label %30, !dbg !3921

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3922
  br label %30, !dbg !3923

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3924
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3925 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3942, metadata !696), !dbg !3951
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3943, metadata !696), !dbg !3952
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3944, metadata !696), !dbg !3953
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3945, metadata !696), !dbg !3954
  %6 = bitcast i32* %5 to i8*, !dbg !3955
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3955
  %7 = icmp eq i32* %0, null, !dbg !3956
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3942, metadata !696), !dbg !3951
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3958
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3942, metadata !696), !dbg !3951
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3959
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3946, metadata !696), !dbg !3960
  %10 = icmp ugt i64 %9, -3, !dbg !3961
  %11 = icmp ne i64 %2, 0, !dbg !3962
  %12 = and i1 %11, %10, !dbg !3963
  br i1 %12, label %13, label %18, !dbg !3963

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3964
  br i1 %14, label %18, label %15, !dbg !3965

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3966, !tbaa !780
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3948, metadata !696), !dbg !3967
  %17 = zext i8 %16 to i32, !dbg !3968
  store i32 %17, i32* %8, align 4, !dbg !3969, !tbaa !789
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3970
  ret i64 %19, !dbg !3970
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3971 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4016, metadata !696), !dbg !4021
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4022
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4023, metadata !696), !dbg !4026
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4028
  %4 = load i32, i32* %3, align 8, !dbg !4028, !tbaa !1338
  %5 = and i32 %4, 32, !dbg !4028
  %6 = icmp eq i32 %5, 0, !dbg !4029
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4030
  %8 = icmp ne i32 %7, 0, !dbg !4031
  br i1 %6, label %9, label %19, !dbg !4032

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4034
  %11 = xor i1 %8, true, !dbg !4035
  %12 = or i1 %10, %11, !dbg !4035
  %13 = sext i1 %8 to i32, !dbg !4035
  br i1 %12, label %22, label %14, !dbg !4035

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4036
  %16 = load i32, i32* %15, align 4, !dbg !4036, !tbaa !789
  %17 = icmp ne i32 %16, 9, !dbg !4037
  %18 = sext i1 %17 to i32, !dbg !4038
  br label %22, !dbg !4038

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4039

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4041
  store i32 0, i32* %21, align 4, !dbg !4043, !tbaa !789
  br label %22, !dbg !4041

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4044
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4045 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4050, metadata !696), !dbg !4053
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4051, metadata !696), !dbg !4054
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4055
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4052, metadata !696), !dbg !4056
  %3 = icmp eq i8* %2, null, !dbg !4057
  br i1 %3, label %11, label %4, !dbg !4059

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i64 0, i64 0)) #14, !dbg !4060
  %6 = icmp eq i32 %5, 0, !dbg !4065
  br i1 %6, label %10, label %7, !dbg !4066

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.122, i64 0, i64 0)) #14, !dbg !4067
  %9 = icmp eq i32 %8, 0, !dbg !4068
  br i1 %9, label %10, label %11, !dbg !4069

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4051, metadata !696), !dbg !4054
  br label %11, !dbg !4070

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4071
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4072 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4078, metadata !696), !dbg !4152
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4145, metadata !696), !dbg !4155
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4156
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4076, metadata !696), !dbg !4157
  %4 = icmp eq i8* %3, null, !dbg !4158
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i64 0, i64 0), i8* %3, !dbg !4160
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4076, metadata !696), !dbg !4157
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4161, !tbaa !703
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4092, metadata !696) #10, !dbg !4162
  %7 = icmp eq i8* %6, null, !dbg !4163
  br i1 %7, label %8, label %123, !dbg !4164

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.126, i64 0, i64 0)) #10, !dbg !4165
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4093, metadata !696) #10, !dbg !4166
  %10 = icmp eq i8* %9, null, !dbg !4167
  br i1 %10, label %14, label %11, !dbg !4169

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4170, !tbaa !780
  %13 = icmp eq i8 %12, 0, !dbg !4171
  br i1 %13, label %14, label %15, !dbg !4172

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4173

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.127, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4093, metadata !696) #10, !dbg !4166
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4174
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4096, metadata !696) #10, !dbg !4175
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4098, metadata !696) #10, !dbg !4176
  %18 = icmp eq i64 %17, 0, !dbg !4177
  br i1 %18, label %24, label %19, !dbg !4178

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4179
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4179
  %22 = load i8, i8* %21, align 1, !dbg !4179, !tbaa !780
  %23 = icmp ne i8 %22, 47, !dbg !4179
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4180
  %27 = add i64 %17, 14, !dbg !4181
  %28 = add i64 %27, %26, !dbg !4182
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4183
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4095, metadata !696) #10, !dbg !4184
  %30 = icmp eq i8* %29, null, !dbg !4185
  br i1 %30, label %121, label %31, !dbg !4185

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4186
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4189

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4190, !tbaa !780
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4192
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.128, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4193
  br label %37, !dbg !4194

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4192
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.128, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4193
  br label %37, !dbg !4194

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4195
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4100, metadata !696) #10, !dbg !4196
  %39 = icmp slt i32 %38, 0, !dbg !4197
  br i1 %39, label %119, label %40, !dbg !4198

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.129, i64 0, i64 0)) #10, !dbg !4199
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4101, metadata !696) #10, !dbg !4200
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4201
  br i1 %42, label %43, label %45, !dbg !4202

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !4203
  br label %119, !dbg !4205

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4142, metadata !696) #10, !dbg !4206
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4143, metadata !696) #10, !dbg !4207
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4208

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4209

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4142, metadata !696) #10, !dbg !4206
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4143, metadata !696) #10, !dbg !4207
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4209
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4210
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4211, metadata !696) #10, !dbg !4216
  %54 = load i8*, i8** %48, align 8, !dbg !4218, !tbaa !876
  %55 = load i8*, i8** %49, align 8, !dbg !4218, !tbaa !879
  %56 = icmp ult i8* %54, %55, !dbg !4218
  br i1 %56, label %59, label %57, !dbg !4218, !prof !880

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4218
  br label %63, !dbg !4218

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4218
  store i8* %60, i8** %48, align 8, !dbg !4218, !tbaa !876
  %61 = load i8, i8* %54, align 1, !dbg !4218, !tbaa !780
  %62 = zext i8 %61 to i32, !dbg !4218
  br label %63, !dbg !4218

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4218
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4144, metadata !696) #10, !dbg !4219
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4220, !llvm.loop !4221

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4226

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4211, metadata !696) #10, !dbg !4228
  %67 = load i8*, i8** %48, align 8, !dbg !4226, !tbaa !876
  %68 = load i8*, i8** %49, align 8, !dbg !4226, !tbaa !879
  %69 = icmp ult i8* %67, %68, !dbg !4226
  br i1 %69, label %72, label %70, !dbg !4226, !prof !880

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4226
  br label %76, !dbg !4226

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4226
  store i8* %73, i8** %48, align 8, !dbg !4226, !tbaa !876
  %74 = load i8, i8* %67, align 1, !dbg !4226, !tbaa !780
  %75 = zext i8 %74 to i32, !dbg !4226
  br label %76, !dbg !4226

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4226
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4144, metadata !696) #10, !dbg !4219
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4229, !llvm.loop !4230

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !4233
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.130, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !4234
  %81 = icmp slt i32 %80, 2, !dbg !4236
  br i1 %81, label %112, label %82, !dbg !4237

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4149, metadata !696) #10, !dbg !4239
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4240
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4150, metadata !696) #10, !dbg !4241
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4151, metadata !696) #10, !dbg !4242
  %85 = icmp eq i64 %51, 0, !dbg !4243
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4245

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4143, metadata !696) #10, !dbg !4207
  %90 = add i64 %87, 2, !dbg !4246
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !4248
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4142, metadata !696) #10, !dbg !4206
  br label %96, !dbg !4249

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4250
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4143, metadata !696) #10, !dbg !4207
  %94 = add i64 %93, 1, !dbg !4252
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !4253
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4142, metadata !696) #10, !dbg !4206
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4142, metadata !696) #10, !dbg !4206
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4143, metadata !696) #10, !dbg !4207
  %99 = icmp eq i8* %98, null, !dbg !4254
  br i1 %99, label %100, label %102, !dbg !4256

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4143, metadata !696) #10, !dbg !4207
  call void @free(i8* %52) #10, !dbg !4257
  br label %112, !dbg !4259

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4260
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4260
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4261
  %104 = xor i64 %84, -1, !dbg !4262
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4262
  %106 = xor i64 %83, -1, !dbg !4263
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4263
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4264, metadata !696) #10, !dbg !4273
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4272, metadata !696) #10, !dbg !4273
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !4275
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !4276
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4264, metadata !696) #10, !dbg !4277
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4272, metadata !696) #10, !dbg !4277
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !4279
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !4280
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4142, metadata !696) #10, !dbg !4206
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4143, metadata !696) #10, !dbg !4207
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4260
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4260
  br label %50, !dbg !4281, !llvm.loop !4230

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4260
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4260
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4282
  %116 = icmp eq i64 %113, 0, !dbg !4283
  br i1 %116, label %119, label %117, !dbg !4285

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4286
  store i8 0, i8* %118, align 1, !dbg !4288, !tbaa !780
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4092, metadata !696) #10, !dbg !4162
  call void @free(i8* %29) #10, !dbg !4289
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4092, metadata !696) #10, !dbg !4162
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4290, !tbaa !703
  br label %123, !dbg !4291

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4092, metadata !696) #10, !dbg !4162
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4077, metadata !696), !dbg !4292
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4077, metadata !696), !dbg !4292
  %125 = load i8, i8* %124, align 1, !dbg !4293, !tbaa !780
  %126 = icmp eq i8 %125, 0, !dbg !4295
  br i1 %126, label %152, label %127, !dbg !4296

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4297

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4077, metadata !696), !dbg !4292
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4297
  %132 = icmp eq i32 %131, 0, !dbg !4299
  br i1 %132, label %139, label %133, !dbg !4300

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4301
  br i1 %134, label %135, label %143, !dbg !4302

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4303
  %137 = load i8, i8* %136, align 1, !dbg !4303, !tbaa !780
  %138 = icmp eq i8 %137, 0, !dbg !4304
  br i1 %138, label %139, label %143, !dbg !4305

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4306
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4308
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4309
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4076, metadata !696), !dbg !4157
  br label %152, !dbg !4310

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4311
  %145 = add i64 %144, 1, !dbg !4312
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4313
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4077, metadata !696), !dbg !4292
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4314
  %148 = add i64 %147, 1, !dbg !4315
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4316
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4077, metadata !696), !dbg !4292
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4077, metadata !696), !dbg !4292
  %150 = load i8, i8* %149, align 1, !dbg !4293, !tbaa !780
  %151 = icmp eq i8 %150, 0, !dbg !4295
  br i1 %151, label %152, label %128, !dbg !4296, !llvm.loop !4317

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4076, metadata !696), !dbg !4157
  %154 = load i8, i8* %153, align 1, !dbg !4319, !tbaa !780
  %155 = icmp eq i8 %154, 0, !dbg !4321
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), i8* %153, !dbg !4322
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4076, metadata !696), !dbg !4157
  ret i8* %156, !dbg !4323
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

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

!llvm.dbg.cu = !{!2, !70, !209, !215, !223, !644, !230, !237, !647, !290, !655, !666, !668, !670, !672, !674, !676, !678, !681, !683, !299}
!llvm.ident = !{!685, !685, !685, !685, !685, !685, !685, !685, !685, !685, !685, !685, !685, !685, !685, !685, !685, !685, !685, !685, !685}
!llvm.module.flags = !{!686, !687, !688, !689, !690}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 51, type: !65, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !28)
!3 = !DIFile(filename: "src/expand.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, size: 32, elements: !7)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!8 = !DIEnumerator(name: "_ISupper", value: 256)
!9 = !DIEnumerator(name: "_ISlower", value: 512)
!10 = !DIEnumerator(name: "_ISalpha", value: 1024)
!11 = !DIEnumerator(name: "_ISdigit", value: 2048)
!12 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!13 = !DIEnumerator(name: "_ISspace", value: 8192)
!14 = !DIEnumerator(name: "_ISprint", value: 16384)
!15 = !DIEnumerator(name: "_ISgraph", value: 32768)
!16 = !DIEnumerator(name: "_ISblank", value: 1)
!17 = !DIEnumerator(name: "_IScntrl", value: 2)
!18 = !DIEnumerator(name: "_ISpunct", value: 4)
!19 = !DIEnumerator(name: "_ISalnum", value: 8)
!20 = !{!21, !23, !24, !25, !26, !27}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{!29, !0, !51}
!29 = !DIGlobalVariableExpression(var: !30)
!30 = distinct !DIGlobalVariable(name: "infomap", scope: !31, file: !32, line: 632, type: !48, isLocal: true, isDefinition: true)
!31 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !32, file: !32, line: 630, type: !33, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !37)
!32 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
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
!52 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 53, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1280, elements: !63)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !56, line: 50, size: 256, elements: !57)
!56 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!57 = !{!58, !59, !60, !62}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !55, file: !56, line: 52, baseType: !35, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !55, file: !56, line: 55, baseType: !24, size: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !55, file: !56, line: 56, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !55, file: !56, line: 57, baseType: !24, size: 32, offset: 192)
!63 = !{!64}
!64 = !DISubrange(count: 5)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 272, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 34)
!68 = !DIGlobalVariableExpression(var: !69)
!69 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !70, file: !71, line: 32, type: !198, isLocal: false, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !112, globals: !119)
!71 = !DIFile(filename: "src/expand-common.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!72 = !{!5, !73, !87, !96}
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !74, line: 32, size: 32, elements: !75)
!74 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!76 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!77 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!78 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!79 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!80 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!81 = !DIEnumerator(name: "c_quoting_style", value: 5)
!82 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!83 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!84 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!85 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!86 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 45, size: 32, elements: !89)
!88 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!89 = !{!90, !91, !92, !93, !94, !95}
!90 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!91 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!92 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!93 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!94 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!95 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !98, file: !97, line: 192, size: 32, elements: !110)
!97 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = distinct !DISubprogram(name: "x2nrealloc", scope: !97, file: !97, line: 180, type: !99, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !105)
!99 = !DISubroutineType(types: !100)
!100 = !{!23, !23, !101, !102}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 62, baseType: !104)
!103 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!105 = !{!106, !107, !108, !109}
!106 = !DILocalVariable(name: "p", arg: 1, scope: !98, file: !97, line: 180, type: !23)
!107 = !DILocalVariable(name: "pn", arg: 2, scope: !98, file: !97, line: 180, type: !101)
!108 = !DILocalVariable(name: "s", arg: 3, scope: !98, file: !97, line: 180, type: !102)
!109 = !DILocalVariable(name: "n", scope: !98, file: !97, line: 182, type: !102)
!110 = !{!111}
!111 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!112 = !{!24, !25, !113, !114, !23, !115}
!113 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !116, line: 112, baseType: !117)
!116 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !118, line: 62, baseType: !104)
!118 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!119 = !{!68, !120, !122, !184, !186, !188, !190, !192, !194, !196, !199, !204}
!120 = !DIGlobalVariableExpression(var: !121)
!121 = distinct !DIGlobalVariable(name: "exit_status", scope: !70, file: !71, line: 68, type: !24, isLocal: false, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "prev_file", scope: !124, file: !71, line: 280, type: !21, isLocal: true, isDefinition: true)
!124 = distinct !DISubprogram(name: "next_file", scope: !71, file: !71, line: 278, type: !125, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !181)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !129, line: 7, baseType: !130)
!129 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !131, line: 241, size: 1728, elements: !132)
!131 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !153, !154, !155, !156, !159, !160, !162, !166, !169, !171, !172, !173, !174, !175, !176, !177}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !130, file: !131, line: 242, baseType: !24, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !130, file: !131, line: 247, baseType: !21, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !130, file: !131, line: 248, baseType: !21, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !130, file: !131, line: 249, baseType: !21, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !130, file: !131, line: 250, baseType: !21, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !130, file: !131, line: 251, baseType: !21, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !130, file: !131, line: 252, baseType: !21, size: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !130, file: !131, line: 253, baseType: !21, size: 64, offset: 448)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !130, file: !131, line: 254, baseType: !21, size: 64, offset: 512)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !130, file: !131, line: 256, baseType: !21, size: 64, offset: 576)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !130, file: !131, line: 257, baseType: !21, size: 64, offset: 640)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !130, file: !131, line: 258, baseType: !21, size: 64, offset: 704)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !130, file: !131, line: 260, baseType: !146, size: 64, offset: 768)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !131, line: 156, size: 192, elements: !148)
!148 = !{!149, !150, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !147, file: !131, line: 157, baseType: !146, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !147, file: !131, line: 158, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !147, file: !131, line: 162, baseType: !24, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !130, file: !131, line: 262, baseType: !151, size: 64, offset: 832)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !130, file: !131, line: 264, baseType: !24, size: 32, offset: 896)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !130, file: !131, line: 268, baseType: !24, size: 32, offset: 928)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !130, file: !131, line: 270, baseType: !157, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !118, line: 140, baseType: !158)
!158 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !130, file: !131, line: 274, baseType: !25, size: 16, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !130, file: !131, line: 275, baseType: !161, size: 8, offset: 1040)
!161 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !130, file: !131, line: 276, baseType: !163, size: 8, offset: 1048)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 1)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !130, file: !131, line: 280, baseType: !167, size: 64, offset: 1088)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !131, line: 150, baseType: null)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !130, file: !131, line: 289, baseType: !170, size: 64, offset: 1152)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !118, line: 141, baseType: !158)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !130, file: !131, line: 297, baseType: !23, size: 64, offset: 1216)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !130, file: !131, line: 298, baseType: !23, size: 64, offset: 1280)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !130, file: !131, line: 299, baseType: !23, size: 64, offset: 1344)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !130, file: !131, line: 300, baseType: !23, size: 64, offset: 1408)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !130, file: !131, line: 302, baseType: !102, size: 64, offset: 1472)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !130, file: !131, line: 303, baseType: !24, size: 32, offset: 1536)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !130, file: !131, line: 305, baseType: !178, size: 160, offset: 1568)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 20)
!181 = !{!182, !183}
!182 = !DILocalVariable(name: "fp", arg: 1, scope: !124, file: !71, line: 278, type: !127)
!183 = !DILocalVariable(name: "file", scope: !124, file: !71, line: 281, type: !21)
!184 = !DIGlobalVariableExpression(var: !185)
!185 = distinct !DIGlobalVariable(name: "max_column_width", scope: !70, file: !71, line: 41, type: !102, isLocal: false, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187)
!187 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !70, file: !71, line: 53, type: !102, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189)
!189 = distinct !DIGlobalVariable(name: "tab_list", scope: !70, file: !71, line: 46, type: !114, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191)
!191 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !70, file: !71, line: 49, type: !102, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193)
!193 = distinct !DIGlobalVariable(name: "extend_size", scope: !70, file: !71, line: 38, type: !115, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195)
!195 = distinct !DIGlobalVariable(name: "tab_size", scope: !70, file: !71, line: 35, type: !115, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !70, file: !71, line: 65, type: !198, isLocal: true, isDefinition: true)
!198 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!199 = !DIGlobalVariableExpression(var: !200)
!200 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !70, file: !71, line: 59, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 2)
!204 = !DIGlobalVariableExpression(var: !205)
!205 = distinct !DIGlobalVariable(name: "file_list", scope: !70, file: !71, line: 56, type: !206, isLocal: true, isDefinition: true)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!207 = !DIGlobalVariableExpression(var: !208)
!208 = distinct !DIGlobalVariable(name: "Version", scope: !209, file: !210, line: 2, type: !35, isLocal: false, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, globals: !212)
!210 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!211 = !{}
!212 = !{!207}
!213 = !DIGlobalVariableExpression(var: !214)
!214 = distinct !DIGlobalVariable(name: "file_name", scope: !215, file: !220, line: 36, type: !35, isLocal: true, isDefinition: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, globals: !217)
!216 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!217 = !{!213, !218}
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !215, file: !220, line: 46, type: !198, isLocal: true, isDefinition: true)
!220 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!221 = !DIGlobalVariableExpression(var: !222)
!222 = distinct !DIGlobalVariable(name: "exit_failure", scope: !223, file: !226, line: 24, type: !227, isLocal: false, isDefinition: true)
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, globals: !225)
!224 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!225 = !{!221}
!226 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!227 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!228 = !DIGlobalVariableExpression(var: !229)
!229 = distinct !DIGlobalVariable(name: "program_name", scope: !230, file: !234, line: 33, type: !35, isLocal: false, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !232, globals: !233)
!231 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!232 = !{!23, !21}
!233 = !{!228}
!234 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!235 = !DIGlobalVariableExpression(var: !236)
!236 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !237, file: !249, line: 77, type: !284, isLocal: false, isDefinition: true)
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !239, retainedTypes: !245, globals: !246)
!238 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!239 = !{!73, !240, !5}
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !74, line: 242, size: 32, elements: !241)
!241 = !{!242, !243, !244}
!242 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!243 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!244 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!245 = !{!24, !25, !102, !21}
!246 = !{!235, !247, !254, !266, !268, !273, !280, !282}
!247 = !DIGlobalVariableExpression(var: !248)
!248 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !237, file: !249, line: 93, type: !250, isLocal: false, isDefinition: true)
!249 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 320, elements: !252)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!252 = !{!253}
!253 = !DISubrange(count: 10)
!254 = !DIGlobalVariableExpression(var: !255)
!255 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !237, file: !249, line: 1043, type: !256, isLocal: false, isDefinition: true)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !249, line: 57, size: 448, elements: !257)
!257 = !{!258, !259, !260, !264, !265}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !256, file: !249, line: 60, baseType: !73, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !249, line: 63, baseType: !24, size: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !256, file: !249, line: 67, baseType: !261, size: 256, offset: 64)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 8)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !256, file: !249, line: 70, baseType: !35, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !256, file: !249, line: 73, baseType: !35, size: 64, offset: 384)
!266 = !DIGlobalVariableExpression(var: !267)
!267 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !237, file: !249, line: 108, type: !256, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269)
!269 = distinct !DIGlobalVariable(name: "slot0", scope: !237, file: !249, line: 834, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 256)
!273 = !DIGlobalVariableExpression(var: !274)
!274 = distinct !DIGlobalVariable(name: "slotvec", scope: !237, file: !249, line: 837, type: !275, isLocal: true, isDefinition: true)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !249, line: 826, size: 128, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !276, file: !249, line: 828, baseType: !102, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !276, file: !249, line: 829, baseType: !21, size: 64, offset: 64)
!280 = !DIGlobalVariableExpression(var: !281)
!281 = distinct !DIGlobalVariable(name: "nslots", scope: !237, file: !249, line: 835, type: !24, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283)
!283 = distinct !DIGlobalVariable(name: "slotvec0", scope: !237, file: !249, line: 836, type: !276, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 704, elements: !286)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!286 = !{!287}
!287 = !DISubrange(count: 11)
!288 = !DIGlobalVariableExpression(var: !289)
!289 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !290, file: !293, line: 26, type: !294, isLocal: false, isDefinition: true)
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, globals: !292)
!291 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!292 = !{!288}
!293 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 376, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 47)
!297 = !DIGlobalVariableExpression(var: !298)
!298 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !299, file: !642, line: 120, type: !643, isLocal: true, isDefinition: true)
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !301, retainedTypes: !640, globals: !641)
!300 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!301 = !{!302}
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !303, line: 41, size: 32, elements: !304)
!303 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!305 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!306 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!307 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!308 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!309 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!310 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!311 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!312 = !DIEnumerator(name: "DAY_1", value: 131079)
!313 = !DIEnumerator(name: "DAY_2", value: 131080)
!314 = !DIEnumerator(name: "DAY_3", value: 131081)
!315 = !DIEnumerator(name: "DAY_4", value: 131082)
!316 = !DIEnumerator(name: "DAY_5", value: 131083)
!317 = !DIEnumerator(name: "DAY_6", value: 131084)
!318 = !DIEnumerator(name: "DAY_7", value: 131085)
!319 = !DIEnumerator(name: "ABMON_1", value: 131086)
!320 = !DIEnumerator(name: "ABMON_2", value: 131087)
!321 = !DIEnumerator(name: "ABMON_3", value: 131088)
!322 = !DIEnumerator(name: "ABMON_4", value: 131089)
!323 = !DIEnumerator(name: "ABMON_5", value: 131090)
!324 = !DIEnumerator(name: "ABMON_6", value: 131091)
!325 = !DIEnumerator(name: "ABMON_7", value: 131092)
!326 = !DIEnumerator(name: "ABMON_8", value: 131093)
!327 = !DIEnumerator(name: "ABMON_9", value: 131094)
!328 = !DIEnumerator(name: "ABMON_10", value: 131095)
!329 = !DIEnumerator(name: "ABMON_11", value: 131096)
!330 = !DIEnumerator(name: "ABMON_12", value: 131097)
!331 = !DIEnumerator(name: "MON_1", value: 131098)
!332 = !DIEnumerator(name: "MON_2", value: 131099)
!333 = !DIEnumerator(name: "MON_3", value: 131100)
!334 = !DIEnumerator(name: "MON_4", value: 131101)
!335 = !DIEnumerator(name: "MON_5", value: 131102)
!336 = !DIEnumerator(name: "MON_6", value: 131103)
!337 = !DIEnumerator(name: "MON_7", value: 131104)
!338 = !DIEnumerator(name: "MON_8", value: 131105)
!339 = !DIEnumerator(name: "MON_9", value: 131106)
!340 = !DIEnumerator(name: "MON_10", value: 131107)
!341 = !DIEnumerator(name: "MON_11", value: 131108)
!342 = !DIEnumerator(name: "MON_12", value: 131109)
!343 = !DIEnumerator(name: "AM_STR", value: 131110)
!344 = !DIEnumerator(name: "PM_STR", value: 131111)
!345 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!346 = !DIEnumerator(name: "D_FMT", value: 131113)
!347 = !DIEnumerator(name: "T_FMT", value: 131114)
!348 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!349 = !DIEnumerator(name: "ERA", value: 131116)
!350 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!351 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!352 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!353 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!354 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!355 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!356 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!357 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!358 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!359 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!360 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!361 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!362 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!363 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!364 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!365 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!366 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!367 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!368 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!369 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!370 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!371 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!372 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!373 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!374 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!375 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!376 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!377 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!378 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!379 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!380 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!381 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!382 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!383 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!384 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!385 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!386 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!387 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!388 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!389 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!390 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!391 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!392 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!393 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!394 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!395 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!396 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!397 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!398 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!399 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!400 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!401 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!402 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!403 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!404 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!405 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!406 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!407 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!408 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!409 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!410 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!411 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!412 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!413 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!414 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!415 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!416 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!417 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!418 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!419 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!420 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!421 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!422 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!423 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!424 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!425 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!426 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!427 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!428 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!429 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!430 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!431 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!432 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!433 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!434 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!435 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!436 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!437 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!438 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!439 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!440 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!441 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!442 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!443 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!444 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!445 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!446 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!447 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!448 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!449 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!450 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!451 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!452 = !DIEnumerator(name: "CODESET", value: 14)
!453 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!454 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!455 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!456 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!499 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!500 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!501 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!502 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!503 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!504 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!505 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!506 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!507 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!508 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!509 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!510 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!511 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!512 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!513 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!514 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!515 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!516 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!517 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!518 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!519 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!520 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!522 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!523 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!524 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!525 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!526 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!527 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!528 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!529 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!530 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!531 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!532 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!533 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!534 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!535 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!536 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!537 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!538 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!539 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!540 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!541 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!542 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!543 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!544 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!545 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!546 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!552 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!553 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!563 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!564 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!567 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!568 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!569 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!570 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!571 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!572 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!573 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!574 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!575 = !DIEnumerator(name: "THOUSEP", value: 65537)
!576 = !DIEnumerator(name: "__GROUPING", value: 65538)
!577 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!578 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!579 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!580 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!581 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!582 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!583 = !DIEnumerator(name: "__YESSTR", value: 327682)
!584 = !DIEnumerator(name: "__NOSTR", value: 327683)
!585 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!586 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!587 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!588 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!589 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!590 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!591 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!592 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!593 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!594 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!595 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!596 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!597 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!598 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!599 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!600 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!601 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!602 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!603 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!604 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!605 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!606 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!607 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!608 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!609 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!610 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!611 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!612 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!613 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!614 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!615 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!616 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!617 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!618 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!619 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!620 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!621 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!623 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!624 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!625 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!626 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!627 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!628 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!631 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!638 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!639 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!640 = !{!23, !21, !26}
!641 = !{!297}
!642 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!643 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!644 = distinct !DICompileUnit(language: DW_LANG_C99, file: !645, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !646)
!645 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!646 = !{!87}
!647 = distinct !DICompileUnit(language: DW_LANG_C99, file: !648, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !649, retainedTypes: !654)
!648 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!649 = !{!650}
!650 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !651, line: 41, size: 32, elements: !652)
!651 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!652 = !{!653}
!653 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!654 = !{!23}
!655 = distinct !DICompileUnit(language: DW_LANG_C99, file: !656, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !657, retainedTypes: !665)
!656 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!657 = !{!658}
!658 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !659, file: !97, line: 192, size: 32, elements: !110)
!659 = distinct !DISubprogram(name: "x2nrealloc", scope: !97, file: !97, line: 180, type: !99, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !660)
!660 = !{!661, !662, !663, !664}
!661 = !DILocalVariable(name: "p", arg: 1, scope: !659, file: !97, line: 180, type: !23)
!662 = !DILocalVariable(name: "pn", arg: 2, scope: !659, file: !97, line: 180, type: !101)
!663 = !DILocalVariable(name: "s", arg: 3, scope: !659, file: !97, line: 180, type: !102)
!664 = !DILocalVariable(name: "n", scope: !659, file: !97, line: 182, type: !102)
!665 = !{!102, !21, !23}
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211)
!667 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211)
!669 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!670 = distinct !DICompileUnit(language: DW_LANG_C99, file: !671, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !654)
!671 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211)
!673 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !654)
!675 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !654)
!677 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!678 = distinct !DICompileUnit(language: DW_LANG_C99, file: !679, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !680)
!679 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!680 = !{!102}
!681 = distinct !DICompileUnit(language: DW_LANG_C99, file: !682, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211)
!682 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !684, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211)
!684 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!685 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!686 = !{i32 2, !"Dwarf Version", i32 4}
!687 = !{i32 2, !"Debug Info Version", i32 3}
!688 = !{i32 1, !"wchar_size", i32 4}
!689 = !{i32 7, !"PIC Level", i32 2}
!690 = !{i32 7, !"PIE Level", i32 2}
!691 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 63, type: !692, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !694)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !24}
!694 = !{!695}
!695 = !DILocalVariable(name: "status", arg: 1, scope: !691, file: !3, line: 63, type: !24)
!696 = !DIExpression()
!697 = !DILocation(line: 63, column: 12, scope: !691)
!698 = !DILocation(line: 65, column: 14, scope: !699)
!699 = distinct !DILexicalBlock(scope: !691, file: !3, line: 65, column: 7)
!700 = !DILocation(line: 65, column: 7, scope: !691)
!701 = !DILocation(line: 66, column: 5, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !3, line: 66, column: 5)
!703 = !{!704, !704, i64 0}
!704 = !{!"any pointer", !705, i64 0}
!705 = !{!"omnipotent char", !706, i64 0}
!706 = !{!"Simple C/C++ TBAA"}
!707 = !DILocation(line: 69, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !699, file: !3, line: 68, column: 5)
!709 = !DILocation(line: 73, column: 7, scope: !708)
!710 = !DILocation(line: 580, column: 3, scope: !711, inlinedAt: !714)
!711 = distinct !DISubprogram(name: "emit_stdin_note", scope: !32, file: !32, line: 578, type: !712, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !211)
!712 = !DISubroutineType(types: !713)
!713 = !{null}
!714 = distinct !DILocation(line: 77, column: 7, scope: !708)
!715 = !DILocation(line: 587, column: 3, scope: !716, inlinedAt: !717)
!716 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !32, file: !32, line: 585, type: !712, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !211)
!717 = distinct !DILocation(line: 78, column: 7, scope: !708)
!718 = !DILocation(line: 80, column: 7, scope: !708)
!719 = !DILocation(line: 84, column: 7, scope: !708)
!720 = !DILocation(line: 87, column: 7, scope: !708)
!721 = !DILocation(line: 88, column: 7, scope: !708)
!722 = !DILocation(line: 642, column: 15, scope: !31, inlinedAt: !723)
!723 = distinct !DILocation(line: 89, column: 7, scope: !708)
!724 = !DILocation(line: 651, column: 3, scope: !31, inlinedAt: !723)
!725 = !DILocation(line: 655, column: 29, scope: !31, inlinedAt: !723)
!726 = !DILocation(line: 655, column: 15, scope: !31, inlinedAt: !723)
!727 = !DILocation(line: 656, column: 7, scope: !728, inlinedAt: !723)
!728 = distinct !DILexicalBlock(scope: !31, file: !32, line: 656, column: 7)
!729 = !DILocation(line: 656, column: 19, scope: !728, inlinedAt: !723)
!730 = !DILocation(line: 656, column: 22, scope: !728, inlinedAt: !723)
!731 = !DILocation(line: 656, column: 7, scope: !31, inlinedAt: !723)
!732 = !DILocation(line: 662, column: 7, scope: !733, inlinedAt: !723)
!733 = distinct !DILexicalBlock(scope: !728, file: !32, line: 657, column: 5)
!734 = !DILocation(line: 664, column: 5, scope: !733, inlinedAt: !723)
!735 = !DILocation(line: 665, column: 3, scope: !31, inlinedAt: !723)
!736 = !DILocation(line: 667, column: 3, scope: !31, inlinedAt: !723)
!737 = !DILocation(line: 91, column: 3, scope: !691)
!738 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 184, type: !739, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{!24, !24, !206}
!741 = !{!742, !743, !744, !745}
!742 = !DILocalVariable(name: "argc", arg: 1, scope: !738, file: !3, line: 184, type: !24)
!743 = !DILocalVariable(name: "argv", arg: 2, scope: !738, file: !3, line: 184, type: !206)
!744 = !DILocalVariable(name: "c", scope: !738, file: !3, line: 186, type: !24)
!745 = !DILocalVariable(name: "tab_stop", scope: !746, file: !3, line: 215, type: !750)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 214, column: 13)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 211, column: 15)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 200, column: 9)
!749 = distinct !DILexicalBlock(scope: !738, file: !3, line: 198, column: 5)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 16, elements: !202)
!751 = !DILocation(line: 184, column: 11, scope: !738)
!752 = !DILocation(line: 184, column: 24, scope: !738)
!753 = !DILocation(line: 189, column: 21, scope: !738)
!754 = !DILocation(line: 189, column: 3, scope: !738)
!755 = !DILocation(line: 190, column: 3, scope: !738)
!756 = !DILocation(line: 191, column: 3, scope: !738)
!757 = !DILocation(line: 192, column: 3, scope: !738)
!758 = !DILocation(line: 194, column: 3, scope: !738)
!759 = !DILocation(line: 195, column: 23, scope: !738)
!760 = !{!761, !761, i64 0}
!761 = !{!"_Bool", !705, i64 0}
!762 = !DILocation(line: 197, column: 3, scope: !738)
!763 = !DILocation(line: 197, column: 15, scope: !738)
!764 = !DILocation(line: 186, column: 7, scope: !738)
!765 = !DILocation(line: 202, column: 31, scope: !748)
!766 = !DILocation(line: 203, column: 11, scope: !748)
!767 = !DILocation(line: 206, column: 28, scope: !748)
!768 = !DILocation(line: 206, column: 11, scope: !748)
!769 = !DILocation(line: 207, column: 11, scope: !748)
!770 = !DILocation(line: 211, column: 15, scope: !747)
!771 = !DILocation(line: 211, column: 15, scope: !748)
!772 = !DILocation(line: 212, column: 37, scope: !747)
!773 = !DILocation(line: 212, column: 13, scope: !747)
!774 = distinct !{!774, !762, !775}
!775 = !DILocation(line: 229, column: 5, scope: !738)
!776 = !DILocation(line: 215, column: 15, scope: !746)
!777 = !DILocation(line: 215, column: 20, scope: !746)
!778 = !DILocation(line: 216, column: 29, scope: !746)
!779 = !DILocation(line: 216, column: 27, scope: !746)
!780 = !{!705, !705, i64 0}
!781 = !DILocation(line: 217, column: 27, scope: !746)
!782 = !DILocation(line: 218, column: 15, scope: !746)
!783 = !DILocation(line: 219, column: 13, scope: !747)
!784 = !DILocation(line: 222, column: 9, scope: !748)
!785 = !DILocation(line: 224, column: 9, scope: !748)
!786 = !DILocation(line: 227, column: 11, scope: !748)
!787 = !DILocation(line: 231, column: 3, scope: !738)
!788 = !DILocation(line: 233, column: 20, scope: !738)
!789 = !{!790, !790, i64 0}
!790 = !{!"int", !705, i64 0}
!791 = !DILocation(line: 233, column: 27, scope: !738)
!792 = !DILocation(line: 233, column: 38, scope: !738)
!793 = !DILocation(line: 233, column: 19, scope: !738)
!794 = !DILocation(line: 233, column: 3, scope: !738)
!795 = !DILocation(line: 102, column: 14, scope: !796, inlinedAt: !851)
!796 = distinct !DISubprogram(name: "expand", scope: !3, file: !3, line: 99, type: !712, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !797)
!797 = !{!798, !839, !841, !842, !843, !844, !850}
!798 = !DILocalVariable(name: "fp", scope: !796, file: !3, line: 102, type: !799)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !129, line: 7, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !131, line: 241, size: 1728, elements: !802)
!802 = !{!803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !801, file: !131, line: 242, baseType: !24, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !801, file: !131, line: 247, baseType: !21, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !801, file: !131, line: 248, baseType: !21, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !801, file: !131, line: 249, baseType: !21, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !801, file: !131, line: 250, baseType: !21, size: 64, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !801, file: !131, line: 251, baseType: !21, size: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !801, file: !131, line: 252, baseType: !21, size: 64, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !801, file: !131, line: 253, baseType: !21, size: 64, offset: 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !801, file: !131, line: 254, baseType: !21, size: 64, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !801, file: !131, line: 256, baseType: !21, size: 64, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !801, file: !131, line: 257, baseType: !21, size: 64, offset: 640)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !801, file: !131, line: 258, baseType: !21, size: 64, offset: 704)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !801, file: !131, line: 260, baseType: !816, size: 64, offset: 768)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !131, line: 156, size: 192, elements: !818)
!818 = !{!819, !820, !822}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !817, file: !131, line: 157, baseType: !816, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !817, file: !131, line: 158, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !817, file: !131, line: 162, baseType: !24, size: 32, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !801, file: !131, line: 262, baseType: !821, size: 64, offset: 832)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !801, file: !131, line: 264, baseType: !24, size: 32, offset: 896)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !801, file: !131, line: 268, baseType: !24, size: 32, offset: 928)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !801, file: !131, line: 270, baseType: !157, size: 64, offset: 960)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !801, file: !131, line: 274, baseType: !25, size: 16, offset: 1024)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !801, file: !131, line: 275, baseType: !161, size: 8, offset: 1040)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !801, file: !131, line: 276, baseType: !163, size: 8, offset: 1048)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !801, file: !131, line: 280, baseType: !167, size: 64, offset: 1088)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !801, file: !131, line: 289, baseType: !170, size: 64, offset: 1152)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !801, file: !131, line: 297, baseType: !23, size: 64, offset: 1216)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !801, file: !131, line: 298, baseType: !23, size: 64, offset: 1280)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !801, file: !131, line: 299, baseType: !23, size: 64, offset: 1344)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !801, file: !131, line: 300, baseType: !23, size: 64, offset: 1408)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !801, file: !131, line: 302, baseType: !102, size: 64, offset: 1472)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !801, file: !131, line: 303, baseType: !24, size: 32, offset: 1536)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !801, file: !131, line: 305, baseType: !178, size: 160, offset: 1568)
!839 = !DILocalVariable(name: "c", scope: !840, file: !3, line: 110, type: !24)
!840 = distinct !DILexicalBlock(scope: !796, file: !3, line: 108, column: 5)
!841 = !DILocalVariable(name: "convert", scope: !840, file: !3, line: 113, type: !198)
!842 = !DILocalVariable(name: "column", scope: !840, file: !3, line: 120, type: !115)
!843 = !DILocalVariable(name: "tab_index", scope: !840, file: !3, line: 123, type: !102)
!844 = !DILocalVariable(name: "next_tab_column", scope: !845, file: !3, line: 138, type: !115)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 136, column: 17)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 135, column: 19)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 134, column: 13)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 133, column: 15)
!849 = distinct !DILexicalBlock(scope: !840, file: !3, line: 129, column: 9)
!850 = !DILocalVariable(name: "last_tab", scope: !845, file: !3, line: 139, type: !198)
!851 = distinct !DILocation(line: 235, column: 3, scope: !738)
!852 = !DILocation(line: 102, column: 9, scope: !796, inlinedAt: !851)
!853 = !DILocation(line: 104, column: 8, scope: !854, inlinedAt: !851)
!854 = distinct !DILexicalBlock(scope: !796, file: !3, line: 104, column: 7)
!855 = !DILocation(line: 104, column: 7, scope: !796, inlinedAt: !851)
!856 = !DILocation(line: 107, column: 3, scope: !796, inlinedAt: !851)
!857 = !DILocation(line: 113, column: 12, scope: !840, inlinedAt: !851)
!858 = !DILocation(line: 120, column: 17, scope: !840, inlinedAt: !851)
!859 = !DILocation(line: 123, column: 7, scope: !840, inlinedAt: !851)
!860 = !DILocation(line: 123, column: 14, scope: !840, inlinedAt: !851)
!861 = !{!862, !862, i64 0}
!862 = !{!"long", !705, i64 0}
!863 = !DILocation(line: 128, column: 7, scope: !840, inlinedAt: !851)
!864 = distinct !{!864, !865, !866}
!865 = !DILocation(line: 128, column: 7, scope: !840)
!866 = !DILocation(line: 179, column: 23, scope: !840)
!867 = !DILocalVariable(name: "__fp", arg: 1, scope: !868, file: !869, line: 63, type: !799)
!868 = distinct !DISubprogram(name: "getc_unlocked", scope: !869, file: !869, line: 63, type: !870, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !872)
!869 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!870 = !DISubroutineType(types: !871)
!871 = !{!24, !799}
!872 = !{!867}
!873 = !DILocation(line: 63, column: 22, scope: !868, inlinedAt: !874)
!874 = distinct !DILocation(line: 130, column: 23, scope: !849, inlinedAt: !851)
!875 = !DILocation(line: 65, column: 10, scope: !868, inlinedAt: !874)
!876 = !{!877, !704, i64 8}
!877 = !{!"_IO_FILE", !790, i64 0, !704, i64 8, !704, i64 16, !704, i64 24, !704, i64 32, !704, i64 40, !704, i64 48, !704, i64 56, !704, i64 64, !704, i64 72, !704, i64 80, !704, i64 88, !704, i64 96, !704, i64 104, !790, i64 112, !790, i64 116, !862, i64 120, !878, i64 128, !705, i64 130, !705, i64 131, !704, i64 136, !862, i64 144, !704, i64 152, !704, i64 160, !704, i64 168, !704, i64 176, !862, i64 184, !790, i64 192, !705, i64 196}
!878 = !{!"short", !705, i64 0}
!879 = !{!877, !704, i64 16}
!880 = !{!"branch_weights", i32 2000, i32 1}
!881 = distinct !{!881, !882, !883}
!882 = !DILocation(line: 130, column: 11, scope: !849)
!883 = !DILocation(line: 131, column: 13, scope: !849)
!884 = !DILocation(line: 110, column: 11, scope: !840, inlinedAt: !851)
!885 = !DILocation(line: 130, column: 38, scope: !849, inlinedAt: !851)
!886 = !DILocation(line: 130, column: 34, scope: !849, inlinedAt: !851)
!887 = !DILocation(line: 130, column: 47, scope: !849, inlinedAt: !851)
!888 = !DILocation(line: 130, column: 11, scope: !849, inlinedAt: !851)
!889 = !DILocation(line: 133, column: 15, scope: !848, inlinedAt: !851)
!890 = !DILocation(line: 133, column: 15, scope: !849, inlinedAt: !851)
!891 = !DILocation(line: 135, column: 19, scope: !847, inlinedAt: !851)
!892 = !DILocation(line: 139, column: 24, scope: !845, inlinedAt: !851)
!893 = !DILocation(line: 139, column: 19, scope: !845, inlinedAt: !851)
!894 = !DILocation(line: 141, column: 37, scope: !845, inlinedAt: !851)
!895 = !DILocation(line: 138, column: 29, scope: !845, inlinedAt: !851)
!896 = !DILocation(line: 144, column: 23, scope: !897, inlinedAt: !851)
!897 = distinct !DILexicalBlock(scope: !845, file: !3, line: 144, column: 23)
!898 = !{i8 0, i8 2}
!899 = !DILocation(line: 145, column: 46, scope: !897, inlinedAt: !851)
!900 = !DILocation(line: 144, column: 23, scope: !845, inlinedAt: !851)
!901 = !DILocation(line: 147, column: 39, scope: !902, inlinedAt: !851)
!902 = distinct !DILexicalBlock(scope: !845, file: !3, line: 147, column: 23)
!903 = !DILocation(line: 147, column: 23, scope: !845, inlinedAt: !851)
!904 = !DILocation(line: 148, column: 21, scope: !902, inlinedAt: !851)
!905 = !DILocation(line: 150, column: 35, scope: !845, inlinedAt: !851)
!906 = !DILocation(line: 150, column: 19, scope: !845, inlinedAt: !851)
!907 = !DILocation(line: 107, column: 10, scope: !908, inlinedAt: !913)
!908 = distinct !DISubprogram(name: "putchar_unlocked", scope: !869, file: !869, line: 105, type: !909, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{!24, !24}
!911 = !{!912}
!912 = !DILocalVariable(name: "__c", arg: 1, scope: !908, file: !869, line: 105, type: !24)
!913 = distinct !DILocation(line: 151, column: 25, scope: !914, inlinedAt: !851)
!914 = distinct !DILexicalBlock(scope: !845, file: !3, line: 151, column: 25)
!915 = !DILocation(line: 105, column: 23, scope: !908, inlinedAt: !913)
!916 = !{!877, !704, i64 40}
!917 = !{!877, !704, i64 48}
!918 = !DILocation(line: 151, column: 25, scope: !845, inlinedAt: !851)
!919 = !DILocation(line: 151, column: 39, scope: !914, inlinedAt: !851)
!920 = !DILocation(line: 152, column: 23, scope: !914, inlinedAt: !851)
!921 = !DILocation(line: 150, column: 26, scope: !845, inlinedAt: !851)
!922 = distinct !{!922, !923, !924}
!923 = !DILocation(line: 150, column: 19, scope: !845)
!924 = !DILocation(line: 152, column: 23, scope: !845)
!925 = !DILocation(line: 155, column: 17, scope: !846, inlinedAt: !851)
!926 = !DILocation(line: 155, column: 17, scope: !845, inlinedAt: !851)
!927 = !DILocation(line: 160, column: 30, scope: !928, inlinedAt: !851)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 157, column: 17)
!929 = distinct !DILexicalBlock(scope: !846, file: !3, line: 156, column: 24)
!930 = !DILocation(line: 160, column: 29, scope: !928, inlinedAt: !851)
!931 = !DILocation(line: 160, column: 26, scope: !928, inlinedAt: !851)
!932 = !DILocation(line: 161, column: 34, scope: !928, inlinedAt: !851)
!933 = !DILocation(line: 161, column: 33, scope: !928, inlinedAt: !851)
!934 = !DILocation(line: 161, column: 32, scope: !928, inlinedAt: !851)
!935 = !DILocation(line: 161, column: 29, scope: !928, inlinedAt: !851)
!936 = !DILocation(line: 162, column: 17, scope: !928, inlinedAt: !851)
!937 = !DILocation(line: 165, column: 25, scope: !938, inlinedAt: !851)
!938 = distinct !DILexicalBlock(scope: !929, file: !3, line: 164, column: 17)
!939 = !DILocation(line: 166, column: 24, scope: !940, inlinedAt: !851)
!940 = distinct !DILexicalBlock(scope: !938, file: !3, line: 166, column: 23)
!941 = !DILocation(line: 166, column: 23, scope: !938, inlinedAt: !851)
!942 = !DILocation(line: 167, column: 21, scope: !940, inlinedAt: !851)
!943 = !DILocation(line: 170, column: 26, scope: !847, inlinedAt: !851)
!944 = !DILocation(line: 170, column: 46, scope: !847, inlinedAt: !851)
!945 = !DILocation(line: 170, column: 52, scope: !847, inlinedAt: !851)
!946 = !{!878, !878, i64 0}
!947 = !DILocation(line: 170, column: 50, scope: !847, inlinedAt: !851)
!948 = !DILocation(line: 170, column: 23, scope: !847, inlinedAt: !851)
!949 = !DILocation(line: 171, column: 13, scope: !847, inlinedAt: !851)
!950 = !DILocation(line: 173, column: 17, scope: !951, inlinedAt: !851)
!951 = distinct !DILexicalBlock(scope: !849, file: !3, line: 173, column: 15)
!952 = !DILocation(line: 173, column: 15, scope: !849, inlinedAt: !851)
!953 = !DILocation(line: 105, column: 23, scope: !908, inlinedAt: !954)
!954 = distinct !DILocation(line: 176, column: 15, scope: !955, inlinedAt: !851)
!955 = distinct !DILexicalBlock(scope: !849, file: !3, line: 176, column: 15)
!956 = !DILocation(line: 107, column: 10, scope: !908, inlinedAt: !954)
!957 = !DILocation(line: 176, column: 15, scope: !849, inlinedAt: !851)
!958 = !DILocation(line: 176, column: 27, scope: !955, inlinedAt: !851)
!959 = !DILocation(line: 177, column: 13, scope: !955, inlinedAt: !851)
!960 = !DILocation(line: 179, column: 16, scope: !840, inlinedAt: !851)
!961 = !DILocation(line: 178, column: 9, scope: !849, inlinedAt: !851)
!962 = !DILocation(line: 180, column: 5, scope: !796, inlinedAt: !851)
!963 = distinct !{!963, !964, !965}
!964 = !DILocation(line: 107, column: 3, scope: !796)
!965 = !DILocation(line: 180, column: 5, scope: !796)
!966 = !DILocation(line: 237, column: 3, scope: !738)
!967 = !DILocation(line: 239, column: 10, scope: !738)
!968 = !DILocation(line: 239, column: 3, scope: !738)
!969 = distinct !DISubprogram(name: "add_tab_stop", scope: !71, file: !71, line: 74, type: !970, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !115}
!972 = !{!973, !974, !975}
!973 = !DILocalVariable(name: "tabval", arg: 1, scope: !969, file: !71, line: 74, type: !115)
!974 = !DILocalVariable(name: "prev_column", scope: !969, file: !71, line: 76, type: !115)
!975 = !DILocalVariable(name: "column_width", scope: !969, file: !71, line: 77, type: !115)
!976 = !DILocation(line: 74, column: 25, scope: !969)
!977 = !DILocation(line: 76, column: 27, scope: !969)
!978 = !DILocation(line: 76, column: 44, scope: !969)
!979 = !DILocation(line: 76, column: 68, scope: !969)
!980 = !DILocation(line: 76, column: 13, scope: !969)
!981 = !DILocation(line: 77, column: 40, scope: !969)
!982 = !DILocation(line: 77, column: 59, scope: !969)
!983 = !DILocation(line: 77, column: 28, scope: !969)
!984 = !DILocation(line: 77, column: 13, scope: !969)
!985 = !DILocation(line: 79, column: 25, scope: !986)
!986 = distinct !DILexicalBlock(scope: !969, file: !71, line: 79, column: 7)
!987 = !DILocation(line: 79, column: 22, scope: !986)
!988 = !DILocation(line: 79, column: 7, scope: !969)
!989 = !DILocation(line: 81, column: 3, scope: !969)
!990 = !DILocation(line: 80, column: 16, scope: !986)
!991 = !DILocation(line: 180, column: 19, scope: !98, inlinedAt: !992)
!992 = distinct !DILocation(line: 80, column: 16, scope: !986)
!993 = !DILocation(line: 180, column: 30, scope: !98, inlinedAt: !992)
!994 = !DILocation(line: 180, column: 41, scope: !98, inlinedAt: !992)
!995 = !DILocation(line: 182, column: 10, scope: !98, inlinedAt: !992)
!996 = !DILocation(line: 184, column: 9, scope: !997, inlinedAt: !992)
!997 = distinct !DILexicalBlock(scope: !98, file: !97, line: 184, column: 7)
!998 = !DILocation(line: 184, column: 7, scope: !98, inlinedAt: !992)
!999 = !DILocation(line: 186, column: 11, scope: !1000, inlinedAt: !992)
!1000 = distinct !DILexicalBlock(scope: !997, file: !97, line: 185, column: 5)
!1001 = !DILocation(line: 205, column: 11, scope: !1002, inlinedAt: !992)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !97, line: 204, column: 11)
!1003 = distinct !DILexicalBlock(scope: !997, file: !97, line: 199, column: 5)
!1004 = !DILocation(line: 204, column: 11, scope: !1003, inlinedAt: !992)
!1005 = !DILocation(line: 206, column: 9, scope: !1002, inlinedAt: !992)
!1006 = !DILocation(line: 207, column: 14, scope: !1003, inlinedAt: !992)
!1007 = !DILocation(line: 207, column: 18, scope: !1003, inlinedAt: !992)
!1008 = !DILocation(line: 207, column: 9, scope: !1003, inlinedAt: !992)
!1009 = !DILocation(line: 210, column: 7, scope: !98, inlinedAt: !992)
!1010 = !DILocation(line: 211, column: 25, scope: !98, inlinedAt: !992)
!1011 = !DILocation(line: 211, column: 10, scope: !98, inlinedAt: !992)
!1012 = !DILocation(line: 80, column: 14, scope: !986)
!1013 = !DILocation(line: 80, column: 5, scope: !986)
!1014 = !DILocation(line: 81, column: 26, scope: !969)
!1015 = !DILocation(line: 81, column: 30, scope: !969)
!1016 = !DILocation(line: 83, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !969, file: !71, line: 83, column: 7)
!1018 = !DILocation(line: 83, column: 24, scope: !1017)
!1019 = !DILocation(line: 83, column: 7, scope: !969)
!1020 = !DILocation(line: 87, column: 24, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !71, line: 84, column: 5)
!1022 = !DILocation(line: 88, column: 5, scope: !1021)
!1023 = !DILocation(line: 89, column: 1, scope: !969)
!1024 = distinct !DISubprogram(name: "parse_tab_stops", scope: !71, file: !71, line: 111, type: !33, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032, !1042}
!1026 = !DILocalVariable(name: "stops", arg: 1, scope: !1024, file: !71, line: 111, type: !35)
!1027 = !DILocalVariable(name: "have_tabval", scope: !1024, file: !71, line: 113, type: !198)
!1028 = !DILocalVariable(name: "tabval", scope: !1024, file: !71, line: 114, type: !115)
!1029 = !DILocalVariable(name: "extend_tabval", scope: !1024, file: !71, line: 115, type: !198)
!1030 = !DILocalVariable(name: "num_start", scope: !1024, file: !71, line: 116, type: !35)
!1031 = !DILocalVariable(name: "ok", scope: !1024, file: !71, line: 117, type: !198)
!1032 = !DILocalVariable(name: "len", scope: !1033, file: !71, line: 160, type: !102)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !71, line: 159, column: 13)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !71, line: 158, column: 15)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !71, line: 149, column: 9)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !71, line: 148, column: 16)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !71, line: 138, column: 16)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !71, line: 121, column: 11)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !71, line: 120, column: 5)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !71, line: 119, column: 3)
!1041 = distinct !DILexicalBlock(scope: !1024, file: !71, line: 119, column: 3)
!1042 = !DILocalVariable(name: "bad_num", scope: !1033, file: !71, line: 161, type: !21)
!1043 = !DILocation(line: 111, column: 30, scope: !1024)
!1044 = !DILocation(line: 113, column: 8, scope: !1024)
!1045 = !DILocation(line: 114, column: 13, scope: !1024)
!1046 = !DILocation(line: 115, column: 8, scope: !1024)
!1047 = !DILocation(line: 116, column: 15, scope: !1024)
!1048 = !DILocation(line: 117, column: 8, scope: !1024)
!1049 = !DILocation(line: 119, column: 3, scope: !1024)
!1050 = !DILocation(line: 119, column: 10, scope: !1040)
!1051 = !DILocation(line: 119, column: 3, scope: !1041)
!1052 = !DILocation(line: 121, column: 28, scope: !1038)
!1053 = !DILocation(line: 121, column: 11, scope: !1039)
!1054 = !DILocation(line: 123, column: 15, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !71, line: 123, column: 15)
!1056 = distinct !DILexicalBlock(scope: !1038, file: !71, line: 122, column: 9)
!1057 = !DILocation(line: 123, column: 15, scope: !1056)
!1058 = !DILocation(line: 125, column: 19, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !71, line: 125, column: 19)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !71, line: 124, column: 13)
!1061 = !DILocation(line: 125, column: 19, scope: !1060)
!1062 = !DILocalVariable(name: "tabval", arg: 1, scope: !1063, file: !71, line: 92, type: !115)
!1063 = distinct !DISubprogram(name: "set_extend_size", scope: !71, file: !71, line: 92, type: !1064, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !1066)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!198, !115}
!1066 = !{!1062, !1067}
!1067 = !DILocalVariable(name: "ok", scope: !1063, file: !71, line: 94, type: !198)
!1068 = !DILocation(line: 92, column: 28, scope: !1063, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 127, column: 25, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !71, line: 127, column: 23)
!1071 = distinct !DILexicalBlock(scope: !1059, file: !71, line: 126, column: 17)
!1072 = !DILocation(line: 94, column: 8, scope: !1063, inlinedAt: !1069)
!1073 = !DILocation(line: 96, column: 7, scope: !1074, inlinedAt: !1069)
!1074 = distinct !DILexicalBlock(scope: !1063, file: !71, line: 96, column: 7)
!1075 = !DILocation(line: 96, column: 7, scope: !1063, inlinedAt: !1069)
!1076 = !DILocation(line: 103, column: 15, scope: !1063, inlinedAt: !1069)
!1077 = !DILocation(line: 127, column: 23, scope: !1071)
!1078 = !DILocation(line: 99, column: 14, scope: !1079, inlinedAt: !1069)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !71, line: 97, column: 5)
!1080 = !DILocation(line: 98, column: 7, scope: !1079, inlinedAt: !1069)
!1081 = !DILocation(line: 74, column: 25, scope: !969, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 134, column: 17, scope: !1059)
!1083 = !DILocation(line: 76, column: 27, scope: !969, inlinedAt: !1082)
!1084 = !DILocation(line: 76, column: 44, scope: !969, inlinedAt: !1082)
!1085 = !DILocation(line: 76, column: 68, scope: !969, inlinedAt: !1082)
!1086 = !DILocation(line: 76, column: 13, scope: !969, inlinedAt: !1082)
!1087 = !DILocation(line: 77, column: 40, scope: !969, inlinedAt: !1082)
!1088 = !DILocation(line: 77, column: 59, scope: !969, inlinedAt: !1082)
!1089 = !DILocation(line: 77, column: 28, scope: !969, inlinedAt: !1082)
!1090 = !DILocation(line: 77, column: 13, scope: !969, inlinedAt: !1082)
!1091 = !DILocation(line: 79, column: 25, scope: !986, inlinedAt: !1082)
!1092 = !DILocation(line: 79, column: 22, scope: !986, inlinedAt: !1082)
!1093 = !DILocation(line: 79, column: 7, scope: !969, inlinedAt: !1082)
!1094 = !DILocation(line: 81, column: 3, scope: !969, inlinedAt: !1082)
!1095 = !DILocation(line: 80, column: 16, scope: !986, inlinedAt: !1082)
!1096 = !DILocation(line: 180, column: 19, scope: !98, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 80, column: 16, scope: !986, inlinedAt: !1082)
!1098 = !DILocation(line: 180, column: 30, scope: !98, inlinedAt: !1097)
!1099 = !DILocation(line: 180, column: 41, scope: !98, inlinedAt: !1097)
!1100 = !DILocation(line: 182, column: 10, scope: !98, inlinedAt: !1097)
!1101 = !DILocation(line: 184, column: 9, scope: !997, inlinedAt: !1097)
!1102 = !DILocation(line: 184, column: 7, scope: !98, inlinedAt: !1097)
!1103 = !DILocation(line: 186, column: 11, scope: !1000, inlinedAt: !1097)
!1104 = !DILocation(line: 205, column: 11, scope: !1002, inlinedAt: !1097)
!1105 = !DILocation(line: 204, column: 11, scope: !1003, inlinedAt: !1097)
!1106 = !DILocation(line: 206, column: 9, scope: !1002, inlinedAt: !1097)
!1107 = !DILocation(line: 207, column: 14, scope: !1003, inlinedAt: !1097)
!1108 = !DILocation(line: 207, column: 18, scope: !1003, inlinedAt: !1097)
!1109 = !DILocation(line: 207, column: 9, scope: !1003, inlinedAt: !1097)
!1110 = !DILocation(line: 210, column: 7, scope: !98, inlinedAt: !1097)
!1111 = !DILocation(line: 211, column: 25, scope: !98, inlinedAt: !1097)
!1112 = !DILocation(line: 211, column: 10, scope: !98, inlinedAt: !1097)
!1113 = !DILocation(line: 80, column: 14, scope: !986, inlinedAt: !1082)
!1114 = !DILocation(line: 80, column: 5, scope: !986, inlinedAt: !1082)
!1115 = !DILocation(line: 81, column: 26, scope: !969, inlinedAt: !1082)
!1116 = !DILocation(line: 81, column: 30, scope: !969, inlinedAt: !1082)
!1117 = !DILocation(line: 83, column: 7, scope: !1017, inlinedAt: !1082)
!1118 = !DILocation(line: 83, column: 24, scope: !1017, inlinedAt: !1082)
!1119 = !DILocation(line: 83, column: 7, scope: !969, inlinedAt: !1082)
!1120 = !DILocation(line: 87, column: 24, scope: !1021, inlinedAt: !1082)
!1121 = !DILocation(line: 88, column: 5, scope: !1021, inlinedAt: !1082)
!1122 = !DILocation(line: 138, column: 23, scope: !1037)
!1123 = !DILocation(line: 138, column: 16, scope: !1038)
!1124 = !DILocation(line: 140, column: 15, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !71, line: 140, column: 15)
!1126 = distinct !DILexicalBlock(scope: !1037, file: !71, line: 139, column: 9)
!1127 = !DILocation(line: 140, column: 15, scope: !1126)
!1128 = !DILocation(line: 142, column: 28, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !71, line: 141, column: 13)
!1130 = !DILocation(line: 143, column: 22, scope: !1129)
!1131 = !DILocation(line: 142, column: 15, scope: !1129)
!1132 = !DILocation(line: 145, column: 13, scope: !1129)
!1133 = !DILocation(line: 138, column: 16, scope: !1037)
!1134 = !DILocation(line: 148, column: 16, scope: !1036)
!1135 = !DILocation(line: 148, column: 16, scope: !1037)
!1136 = !DILocation(line: 150, column: 16, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1035, file: !71, line: 150, column: 15)
!1138 = !DILocation(line: 150, column: 15, scope: !1035)
!1139 = !DILocation(line: 158, column: 16, scope: !1034)
!1140 = !DILocation(line: 158, column: 15, scope: !1035)
!1141 = !DILocation(line: 160, column: 28, scope: !1033)
!1142 = !DILocation(line: 160, column: 22, scope: !1033)
!1143 = !DILocation(line: 161, column: 31, scope: !1033)
!1144 = !DILocation(line: 161, column: 21, scope: !1033)
!1145 = !DILocation(line: 162, column: 28, scope: !1033)
!1146 = !DILocation(line: 162, column: 59, scope: !1033)
!1147 = !DILocation(line: 162, column: 15, scope: !1033)
!1148 = !DILocation(line: 163, column: 15, scope: !1033)
!1149 = !DILocation(line: 165, column: 33, scope: !1033)
!1150 = !DILocation(line: 165, column: 39, scope: !1033)
!1151 = !DILocation(line: 166, column: 13, scope: !1033)
!1152 = !DILocation(line: 170, column: 24, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1036, file: !71, line: 169, column: 9)
!1154 = !DILocation(line: 171, column: 18, scope: !1153)
!1155 = !DILocation(line: 170, column: 11, scope: !1153)
!1156 = !DILocation(line: 173, column: 11, scope: !1153)
!1157 = !DILocation(line: 119, column: 23, scope: !1040)
!1158 = !DILocation(line: 119, column: 3, scope: !1040)
!1159 = distinct !{!1159, !1051, !1160}
!1160 = !DILocation(line: 175, column: 5, scope: !1041)
!1161 = !DILocation(line: 177, column: 10, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1024, file: !71, line: 177, column: 7)
!1163 = !DILocation(line: 179, column: 11, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !71, line: 179, column: 11)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !71, line: 178, column: 5)
!1166 = !DILocation(line: 179, column: 11, scope: !1165)
!1167 = !DILocation(line: 92, column: 28, scope: !1063, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 180, column: 15, scope: !1164)
!1169 = !DILocation(line: 94, column: 8, scope: !1063, inlinedAt: !1168)
!1170 = !DILocation(line: 96, column: 7, scope: !1074, inlinedAt: !1168)
!1171 = !DILocation(line: 96, column: 7, scope: !1063, inlinedAt: !1168)
!1172 = !DILocation(line: 99, column: 14, scope: !1079, inlinedAt: !1168)
!1173 = !DILocation(line: 98, column: 7, scope: !1079, inlinedAt: !1168)
!1174 = !DILocation(line: 102, column: 5, scope: !1079, inlinedAt: !1168)
!1175 = !DILocation(line: 103, column: 15, scope: !1063, inlinedAt: !1168)
!1176 = !DILocation(line: 180, column: 9, scope: !1164)
!1177 = !DILocation(line: 74, column: 25, scope: !969, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 182, column: 9, scope: !1164)
!1179 = !DILocation(line: 76, column: 27, scope: !969, inlinedAt: !1178)
!1180 = !DILocation(line: 76, column: 44, scope: !969, inlinedAt: !1178)
!1181 = !DILocation(line: 76, column: 68, scope: !969, inlinedAt: !1178)
!1182 = !DILocation(line: 76, column: 13, scope: !969, inlinedAt: !1178)
!1183 = !DILocation(line: 77, column: 40, scope: !969, inlinedAt: !1178)
!1184 = !DILocation(line: 77, column: 59, scope: !969, inlinedAt: !1178)
!1185 = !DILocation(line: 77, column: 28, scope: !969, inlinedAt: !1178)
!1186 = !DILocation(line: 77, column: 13, scope: !969, inlinedAt: !1178)
!1187 = !DILocation(line: 79, column: 25, scope: !986, inlinedAt: !1178)
!1188 = !DILocation(line: 79, column: 22, scope: !986, inlinedAt: !1178)
!1189 = !DILocation(line: 79, column: 7, scope: !969, inlinedAt: !1178)
!1190 = !DILocation(line: 81, column: 3, scope: !969, inlinedAt: !1178)
!1191 = !DILocation(line: 80, column: 16, scope: !986, inlinedAt: !1178)
!1192 = !DILocation(line: 180, column: 19, scope: !98, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 80, column: 16, scope: !986, inlinedAt: !1178)
!1194 = !DILocation(line: 180, column: 30, scope: !98, inlinedAt: !1193)
!1195 = !DILocation(line: 180, column: 41, scope: !98, inlinedAt: !1193)
!1196 = !DILocation(line: 182, column: 10, scope: !98, inlinedAt: !1193)
!1197 = !DILocation(line: 184, column: 9, scope: !997, inlinedAt: !1193)
!1198 = !DILocation(line: 184, column: 7, scope: !98, inlinedAt: !1193)
!1199 = !DILocation(line: 186, column: 11, scope: !1000, inlinedAt: !1193)
!1200 = !DILocation(line: 205, column: 11, scope: !1002, inlinedAt: !1193)
!1201 = !DILocation(line: 204, column: 11, scope: !1003, inlinedAt: !1193)
!1202 = !DILocation(line: 206, column: 9, scope: !1002, inlinedAt: !1193)
!1203 = !DILocation(line: 207, column: 14, scope: !1003, inlinedAt: !1193)
!1204 = !DILocation(line: 207, column: 18, scope: !1003, inlinedAt: !1193)
!1205 = !DILocation(line: 207, column: 9, scope: !1003, inlinedAt: !1193)
!1206 = !DILocation(line: 210, column: 7, scope: !98, inlinedAt: !1193)
!1207 = !DILocation(line: 211, column: 25, scope: !98, inlinedAt: !1193)
!1208 = !DILocation(line: 211, column: 10, scope: !98, inlinedAt: !1193)
!1209 = !DILocation(line: 80, column: 14, scope: !986, inlinedAt: !1178)
!1210 = !DILocation(line: 80, column: 5, scope: !986, inlinedAt: !1178)
!1211 = !DILocation(line: 81, column: 26, scope: !969, inlinedAt: !1178)
!1212 = !DILocation(line: 81, column: 30, scope: !969, inlinedAt: !1178)
!1213 = !DILocation(line: 83, column: 7, scope: !1017, inlinedAt: !1178)
!1214 = !DILocation(line: 83, column: 24, scope: !1017, inlinedAt: !1178)
!1215 = !DILocation(line: 83, column: 7, scope: !969, inlinedAt: !1178)
!1216 = !DILocation(line: 87, column: 24, scope: !1021, inlinedAt: !1178)
!1217 = !DILocation(line: 88, column: 5, scope: !1021, inlinedAt: !1178)
!1218 = !DILocation(line: 185, column: 9, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1024, file: !71, line: 185, column: 7)
!1220 = !DILocation(line: 185, column: 7, scope: !1024)
!1221 = !DILocation(line: 186, column: 5, scope: !1219)
!1222 = !DILocation(line: 187, column: 1, scope: !1024)
!1223 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !71, file: !71, line: 217, type: !712, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !211)
!1224 = !DILocation(line: 219, column: 23, scope: !1223)
!1225 = !DILocation(line: 219, column: 33, scope: !1223)
!1226 = !DILocalVariable(name: "tabs", arg: 1, scope: !1227, file: !71, line: 193, type: !1230)
!1227 = distinct !DISubprogram(name: "validate_tab_stops", scope: !71, file: !71, line: 193, type: !1228, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !1232)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !1230, !102}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1232 = !{!1226, !1233, !1234, !1235}
!1233 = !DILocalVariable(name: "entries", arg: 2, scope: !1227, file: !71, line: 193, type: !102)
!1234 = !DILocalVariable(name: "prev_tab", scope: !1227, file: !71, line: 195, type: !115)
!1235 = !DILocalVariable(name: "i", scope: !1227, file: !71, line: 196, type: !102)
!1236 = !DILocation(line: 193, column: 38, scope: !1227, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 219, column: 3, scope: !1223)
!1238 = !DILocation(line: 193, column: 51, scope: !1227, inlinedAt: !1237)
!1239 = !DILocation(line: 195, column: 13, scope: !1227, inlinedAt: !1237)
!1240 = !DILocation(line: 196, column: 10, scope: !1227, inlinedAt: !1237)
!1241 = !DILocation(line: 198, column: 17, scope: !1242, inlinedAt: !1237)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !71, line: 198, column: 3)
!1243 = distinct !DILexicalBlock(scope: !1227, file: !71, line: 198, column: 3)
!1244 = !DILocation(line: 198, column: 3, scope: !1243, inlinedAt: !1237)
!1245 = !DILocation(line: 200, column: 11, scope: !1246, inlinedAt: !1237)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !71, line: 200, column: 11)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !71, line: 199, column: 5)
!1248 = distinct !{!1248, !1249, !1250}
!1249 = !DILocation(line: 198, column: 3, scope: !1243)
!1250 = !DILocation(line: 205, column: 5, scope: !1243)
!1251 = !DILocation(line: 200, column: 19, scope: !1246, inlinedAt: !1237)
!1252 = !DILocation(line: 200, column: 11, scope: !1247, inlinedAt: !1237)
!1253 = !DILocation(line: 201, column: 9, scope: !1246, inlinedAt: !1237)
!1254 = !DILocation(line: 202, column: 19, scope: !1255, inlinedAt: !1237)
!1255 = distinct !DILexicalBlock(scope: !1247, file: !71, line: 202, column: 11)
!1256 = !DILocation(line: 198, column: 29, scope: !1242, inlinedAt: !1237)
!1257 = !DILocation(line: 202, column: 11, scope: !1247, inlinedAt: !1237)
!1258 = !DILocation(line: 203, column: 9, scope: !1255, inlinedAt: !1237)
!1259 = !DILocation(line: 222, column: 35, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1223, file: !71, line: 221, column: 7)
!1261 = !DILocation(line: 222, column: 33, scope: !1260)
!1262 = !DILocation(line: 222, column: 5, scope: !1260)
!1263 = !DILocation(line: 223, column: 27, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !71, line: 223, column: 12)
!1265 = !DILocation(line: 223, column: 37, scope: !1264)
!1266 = !DILocation(line: 223, column: 32, scope: !1264)
!1267 = !DILocation(line: 224, column: 16, scope: !1264)
!1268 = !DILocation(line: 224, column: 5, scope: !1264)
!1269 = !DILocation(line: 227, column: 1, scope: !1223)
!1270 = distinct !DISubprogram(name: "get_next_tab_column", scope: !71, file: !71, line: 231, type: !1271, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !1274)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!115, !1231, !101, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!1274 = !{!1275, !1276, !1277, !1278}
!1275 = !DILocalVariable(name: "column", arg: 1, scope: !1270, file: !71, line: 231, type: !1231)
!1276 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1270, file: !71, line: 231, type: !101)
!1277 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1270, file: !71, line: 232, type: !1273)
!1278 = !DILocalVariable(name: "tab", scope: !1279, file: !71, line: 244, type: !115)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !71, line: 243, column: 5)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !71, line: 242, column: 3)
!1281 = distinct !DILexicalBlock(scope: !1270, file: !71, line: 242, column: 3)
!1282 = !DILocation(line: 231, column: 38, scope: !1270)
!1283 = !DILocation(line: 231, column: 54, scope: !1270)
!1284 = !DILocation(line: 232, column: 28, scope: !1270)
!1285 = !DILocation(line: 234, column: 13, scope: !1270)
!1286 = !DILocation(line: 237, column: 7, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1270, file: !71, line: 237, column: 7)
!1288 = !DILocation(line: 237, column: 7, scope: !1270)
!1289 = !DILocation(line: 238, column: 40, scope: !1287)
!1290 = !DILocation(line: 238, column: 31, scope: !1287)
!1291 = !DILocation(line: 238, column: 19, scope: !1287)
!1292 = !DILocation(line: 238, column: 5, scope: !1287)
!1293 = !DILocation(line: 242, column: 11, scope: !1280)
!1294 = !DILocation(line: 242, column: 24, scope: !1280)
!1295 = !DILocation(line: 242, column: 22, scope: !1280)
!1296 = !DILocation(line: 242, column: 3, scope: !1281)
!1297 = !DILocation(line: 244, column: 25, scope: !1279)
!1298 = !DILocation(line: 244, column: 19, scope: !1279)
!1299 = !DILocation(line: 245, column: 20, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1279, file: !71, line: 245, column: 13)
!1301 = !DILocation(line: 242, column: 53, scope: !1280)
!1302 = distinct !{!1302, !1296, !1303}
!1303 = !DILocation(line: 247, column: 5, scope: !1281)
!1304 = !DILocation(line: 250, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1270, file: !71, line: 250, column: 7)
!1306 = !DILocation(line: 250, column: 7, scope: !1270)
!1307 = !DILocation(line: 251, column: 43, scope: !1305)
!1308 = !DILocation(line: 251, column: 34, scope: !1305)
!1309 = !DILocation(line: 251, column: 19, scope: !1305)
!1310 = !DILocation(line: 251, column: 5, scope: !1305)
!1311 = !DILocation(line: 253, column: 13, scope: !1270)
!1312 = !DILocation(line: 254, column: 3, scope: !1270)
!1313 = !DILocation(line: 255, column: 1, scope: !1270)
!1314 = distinct !DISubprogram(name: "set_file_list", scope: !71, file: !71, line: 262, type: !1315, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !1317)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !206}
!1317 = !{!1318}
!1318 = !DILocalVariable(name: "list", arg: 1, scope: !1314, file: !71, line: 262, type: !206)
!1319 = !DILocation(line: 262, column: 23, scope: !1314)
!1320 = !DILocation(line: 266, column: 8, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1314, file: !71, line: 266, column: 7)
!1322 = !DILocation(line: 266, column: 7, scope: !1314)
!1323 = !DILocation(line: 270, column: 1, scope: !1314)
!1324 = !DILocation(line: 278, column: 18, scope: !124)
!1325 = !DILocation(line: 283, column: 7, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !124, file: !71, line: 283, column: 7)
!1327 = !DILocation(line: 283, column: 7, scope: !124)
!1328 = !DILocalVariable(name: "__stream", arg: 1, scope: !1329, file: !869, line: 132, type: !127)
!1329 = distinct !DISubprogram(name: "ferror_unlocked", scope: !869, file: !869, line: 132, type: !1330, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !1332)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!24, !127}
!1332 = !{!1328}
!1333 = !DILocation(line: 132, column: 1, scope: !1329, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 285, column: 11, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !71, line: 285, column: 11)
!1336 = distinct !DILexicalBlock(scope: !1326, file: !71, line: 284, column: 5)
!1337 = !DILocation(line: 134, column: 10, scope: !1329, inlinedAt: !1334)
!1338 = !{!877, !790, i64 0}
!1339 = !DILocation(line: 285, column: 11, scope: !1335)
!1340 = !DILocation(line: 285, column: 11, scope: !1336)
!1341 = !DILocation(line: 287, column: 21, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1335, file: !71, line: 286, column: 9)
!1343 = !DILocation(line: 287, column: 34, scope: !1342)
!1344 = !DILocation(line: 287, column: 11, scope: !1342)
!1345 = !DILocation(line: 288, column: 23, scope: !1342)
!1346 = !DILocation(line: 289, column: 9, scope: !1342)
!1347 = !DILocation(line: 290, column: 11, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1336, file: !71, line: 290, column: 11)
!1349 = !DILocation(line: 290, column: 11, scope: !1336)
!1350 = !DILocation(line: 291, column: 9, scope: !1348)
!1351 = !DILocation(line: 292, column: 16, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !71, line: 292, column: 16)
!1353 = !DILocation(line: 292, column: 28, scope: !1352)
!1354 = !DILocation(line: 292, column: 16, scope: !1348)
!1355 = !DILocation(line: 294, column: 21, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1352, file: !71, line: 293, column: 9)
!1357 = !DILocation(line: 294, column: 34, scope: !1356)
!1358 = !DILocation(line: 294, column: 11, scope: !1356)
!1359 = !DILocation(line: 295, column: 23, scope: !1356)
!1360 = !DILocation(line: 296, column: 9, scope: !1356)
!1361 = !DILocation(line: 299, column: 28, scope: !124)
!1362 = !DILocation(line: 299, column: 18, scope: !124)
!1363 = !DILocation(line: 281, column: 9, scope: !124)
!1364 = !DILocation(line: 299, column: 32, scope: !124)
!1365 = !DILocation(line: 299, column: 3, scope: !124)
!1366 = !DILocation(line: 301, column: 11, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !71, line: 301, column: 11)
!1368 = distinct !DILexicalBlock(scope: !124, file: !71, line: 300, column: 5)
!1369 = !DILocation(line: 301, column: 11, scope: !1368)
!1370 = !DILocation(line: 304, column: 16, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !71, line: 302, column: 9)
!1372 = !DILocation(line: 305, column: 9, scope: !1371)
!1373 = !DILocation(line: 307, column: 14, scope: !1367)
!1374 = !DILocation(line: 308, column: 11, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1368, file: !71, line: 308, column: 11)
!1376 = !DILocation(line: 308, column: 11, scope: !1368)
!1377 = !DILocation(line: 310, column: 21, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !71, line: 309, column: 9)
!1379 = !DILocation(line: 311, column: 11, scope: !1378)
!1380 = !DILocation(line: 312, column: 11, scope: !1378)
!1381 = !DILocation(line: 314, column: 17, scope: !1368)
!1382 = !DILocation(line: 314, column: 30, scope: !1368)
!1383 = !DILocation(line: 314, column: 7, scope: !1368)
!1384 = !DILocation(line: 315, column: 19, scope: !1368)
!1385 = distinct !{!1385, !1365, !1386}
!1386 = !DILocation(line: 316, column: 5, scope: !124)
!1387 = !DILocation(line: 318, column: 1, scope: !124)
!1388 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !71, file: !71, line: 322, type: !712, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !211)
!1389 = !DILocation(line: 324, column: 25, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1388, file: !71, line: 324, column: 9)
!1391 = !DILocation(line: 324, column: 36, scope: !1390)
!1392 = !DILocation(line: 324, column: 28, scope: !1390)
!1393 = !DILocation(line: 324, column: 43, scope: !1390)
!1394 = !DILocation(line: 324, column: 9, scope: !1388)
!1395 = !DILocation(line: 325, column: 7, scope: !1390)
!1396 = !DILocation(line: 326, column: 1, scope: !1388)
!1397 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !220, file: !220, line: 41, type: !33, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !215, variables: !1398)
!1398 = !{!1399}
!1399 = !DILocalVariable(name: "file", arg: 1, scope: !1397, file: !220, line: 41, type: !35)
!1400 = !DILocation(line: 41, column: 41, scope: !1397)
!1401 = !DILocation(line: 43, column: 13, scope: !1397)
!1402 = !DILocation(line: 44, column: 1, scope: !1397)
!1403 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !220, file: !220, line: 78, type: !1404, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !215, variables: !1406)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !198}
!1406 = !{!1407}
!1407 = !DILocalVariable(name: "ignore", arg: 1, scope: !1403, file: !220, line: 78, type: !198)
!1408 = !DILocation(line: 78, column: 37, scope: !1403)
!1409 = !DILocation(line: 80, column: 16, scope: !1403)
!1410 = !DILocation(line: 81, column: 1, scope: !1403)
!1411 = distinct !DISubprogram(name: "close_stdout", scope: !220, file: !220, line: 107, type: !712, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !215, variables: !1412)
!1412 = !{!1413}
!1413 = !DILocalVariable(name: "write_error", scope: !1414, file: !220, line: 112, type: !35)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !220, line: 111, column: 5)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !220, line: 109, column: 7)
!1416 = !DILocation(line: 109, column: 21, scope: !1415)
!1417 = !DILocation(line: 109, column: 7, scope: !1415)
!1418 = !DILocation(line: 109, column: 29, scope: !1415)
!1419 = !DILocation(line: 110, column: 7, scope: !1415)
!1420 = !DILocation(line: 110, column: 12, scope: !1415)
!1421 = !DILocation(line: 114, column: 19, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1414, file: !220, line: 113, column: 11)
!1423 = !DILocation(line: 110, column: 25, scope: !1415)
!1424 = !DILocation(line: 110, column: 28, scope: !1415)
!1425 = !DILocation(line: 110, column: 34, scope: !1415)
!1426 = !DILocation(line: 109, column: 7, scope: !1411)
!1427 = !DILocation(line: 112, column: 33, scope: !1414)
!1428 = !DILocation(line: 112, column: 19, scope: !1414)
!1429 = !DILocation(line: 113, column: 11, scope: !1422)
!1430 = !DILocation(line: 113, column: 11, scope: !1414)
!1431 = !DILocation(line: 114, column: 36, scope: !1422)
!1432 = !DILocation(line: 114, column: 9, scope: !1422)
!1433 = !DILocation(line: 117, column: 9, scope: !1422)
!1434 = !DILocation(line: 119, column: 14, scope: !1414)
!1435 = !DILocation(line: 119, column: 7, scope: !1414)
!1436 = !DILocation(line: 122, column: 22, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1411, file: !220, line: 122, column: 8)
!1438 = !DILocation(line: 122, column: 8, scope: !1437)
!1439 = !DILocation(line: 122, column: 30, scope: !1437)
!1440 = !DILocation(line: 122, column: 8, scope: !1411)
!1441 = !DILocation(line: 123, column: 13, scope: !1437)
!1442 = !DILocation(line: 123, column: 6, scope: !1437)
!1443 = !DILocation(line: 124, column: 1, scope: !1411)
!1444 = distinct !DISubprogram(name: "fdadvise", scope: !1445, file: !1445, line: 31, type: !1446, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !644, variables: !1451)
!1445 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !24, !1448, !1448, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1449, line: 57, baseType: !157)
!1449 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !88, line: 52, baseType: !87)
!1451 = !{!1452, !1453, !1454, !1455, !1456}
!1452 = !DILocalVariable(name: "fd", arg: 1, scope: !1444, file: !1445, line: 31, type: !24)
!1453 = !DILocalVariable(name: "offset", arg: 2, scope: !1444, file: !1445, line: 31, type: !1448)
!1454 = !DILocalVariable(name: "len", arg: 3, scope: !1444, file: !1445, line: 31, type: !1448)
!1455 = !DILocalVariable(name: "advice", arg: 4, scope: !1444, file: !1445, line: 31, type: !1450)
!1456 = !DILocalVariable(name: "__x", scope: !1457, file: !1445, line: 34, type: !24)
!1457 = distinct !DILexicalBlock(scope: !1444, file: !1445, line: 34, column: 3)
!1458 = !DILocation(line: 31, column: 15, scope: !1444)
!1459 = !DILocation(line: 31, column: 25, scope: !1444)
!1460 = !DILocation(line: 31, column: 39, scope: !1444)
!1461 = !DILocation(line: 31, column: 54, scope: !1444)
!1462 = !DILocation(line: 34, column: 3, scope: !1457)
!1463 = !DILocation(line: 36, column: 1, scope: !1444)
!1464 = distinct !DISubprogram(name: "fadvise", scope: !1445, file: !1445, line: 39, type: !1465, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !644, variables: !1507)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !1467, !1450}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !129, line: 7, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !131, line: 241, size: 1728, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1469, file: !131, line: 242, baseType: !24, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1469, file: !131, line: 247, baseType: !21, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1469, file: !131, line: 248, baseType: !21, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1469, file: !131, line: 249, baseType: !21, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1469, file: !131, line: 250, baseType: !21, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1469, file: !131, line: 251, baseType: !21, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1469, file: !131, line: 252, baseType: !21, size: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1469, file: !131, line: 253, baseType: !21, size: 64, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1469, file: !131, line: 254, baseType: !21, size: 64, offset: 512)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1469, file: !131, line: 256, baseType: !21, size: 64, offset: 576)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1469, file: !131, line: 257, baseType: !21, size: 64, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1469, file: !131, line: 258, baseType: !21, size: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1469, file: !131, line: 260, baseType: !1484, size: 64, offset: 768)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !131, line: 156, size: 192, elements: !1486)
!1486 = !{!1487, !1488, !1490}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1485, file: !131, line: 157, baseType: !1484, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1485, file: !131, line: 158, baseType: !1489, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1485, file: !131, line: 162, baseType: !24, size: 32, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1469, file: !131, line: 262, baseType: !1489, size: 64, offset: 832)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1469, file: !131, line: 264, baseType: !24, size: 32, offset: 896)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1469, file: !131, line: 268, baseType: !24, size: 32, offset: 928)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1469, file: !131, line: 270, baseType: !157, size: 64, offset: 960)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1469, file: !131, line: 274, baseType: !25, size: 16, offset: 1024)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1469, file: !131, line: 275, baseType: !161, size: 8, offset: 1040)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1469, file: !131, line: 276, baseType: !163, size: 8, offset: 1048)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1469, file: !131, line: 280, baseType: !167, size: 64, offset: 1088)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1469, file: !131, line: 289, baseType: !170, size: 64, offset: 1152)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1469, file: !131, line: 297, baseType: !23, size: 64, offset: 1216)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1469, file: !131, line: 298, baseType: !23, size: 64, offset: 1280)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1469, file: !131, line: 299, baseType: !23, size: 64, offset: 1344)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1469, file: !131, line: 300, baseType: !23, size: 64, offset: 1408)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1469, file: !131, line: 302, baseType: !102, size: 64, offset: 1472)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1469, file: !131, line: 303, baseType: !24, size: 32, offset: 1536)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1469, file: !131, line: 305, baseType: !178, size: 160, offset: 1568)
!1507 = !{!1508, !1509}
!1508 = !DILocalVariable(name: "fp", arg: 1, scope: !1464, file: !1445, line: 39, type: !1467)
!1509 = !DILocalVariable(name: "advice", arg: 2, scope: !1464, file: !1445, line: 39, type: !1450)
!1510 = !DILocation(line: 39, column: 16, scope: !1464)
!1511 = !DILocation(line: 39, column: 30, scope: !1464)
!1512 = !DILocation(line: 41, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1464, file: !1445, line: 41, column: 7)
!1514 = !DILocation(line: 41, column: 7, scope: !1464)
!1515 = !DILocation(line: 42, column: 15, scope: !1513)
!1516 = !DILocation(line: 31, column: 15, scope: !1444, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 42, column: 5, scope: !1513)
!1518 = !DILocation(line: 31, column: 25, scope: !1444, inlinedAt: !1517)
!1519 = !DILocation(line: 31, column: 39, scope: !1444, inlinedAt: !1517)
!1520 = !DILocation(line: 31, column: 54, scope: !1444, inlinedAt: !1517)
!1521 = !DILocation(line: 34, column: 3, scope: !1457, inlinedAt: !1517)
!1522 = !DILocation(line: 42, column: 5, scope: !1513)
!1523 = !DILocation(line: 43, column: 1, scope: !1464)
!1524 = distinct !DISubprogram(name: "set_program_name", scope: !234, file: !234, line: 39, type: !33, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !230, variables: !1525)
!1525 = !{!1526, !1527, !1528}
!1526 = !DILocalVariable(name: "argv0", arg: 1, scope: !1524, file: !234, line: 39, type: !35)
!1527 = !DILocalVariable(name: "slash", scope: !1524, file: !234, line: 46, type: !35)
!1528 = !DILocalVariable(name: "base", scope: !1524, file: !234, line: 47, type: !35)
!1529 = !DILocation(line: 39, column: 31, scope: !1524)
!1530 = !DILocation(line: 51, column: 13, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1524, file: !234, line: 51, column: 7)
!1532 = !DILocation(line: 51, column: 7, scope: !1524)
!1533 = !DILocation(line: 55, column: 14, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !234, line: 52, column: 5)
!1535 = !DILocation(line: 54, column: 7, scope: !1534)
!1536 = !DILocation(line: 56, column: 7, scope: !1534)
!1537 = !DILocation(line: 59, column: 11, scope: !1524)
!1538 = !DILocation(line: 46, column: 15, scope: !1524)
!1539 = !DILocation(line: 60, column: 17, scope: !1524)
!1540 = !DILocation(line: 60, column: 33, scope: !1524)
!1541 = !DILocation(line: 60, column: 11, scope: !1524)
!1542 = !DILocation(line: 47, column: 15, scope: !1524)
!1543 = !DILocation(line: 61, column: 12, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1524, file: !234, line: 61, column: 7)
!1545 = !DILocation(line: 61, column: 20, scope: !1544)
!1546 = !DILocation(line: 61, column: 25, scope: !1544)
!1547 = !DILocation(line: 61, column: 42, scope: !1544)
!1548 = !DILocation(line: 61, column: 28, scope: !1544)
!1549 = !DILocation(line: 61, column: 61, scope: !1544)
!1550 = !DILocation(line: 61, column: 7, scope: !1524)
!1551 = !DILocation(line: 64, column: 11, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !234, line: 64, column: 11)
!1553 = distinct !DILexicalBlock(scope: !1544, file: !234, line: 62, column: 5)
!1554 = !DILocation(line: 64, column: 36, scope: !1552)
!1555 = !DILocation(line: 64, column: 11, scope: !1553)
!1556 = !DILocation(line: 66, column: 24, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !234, line: 65, column: 9)
!1558 = !DILocation(line: 70, column: 41, scope: !1557)
!1559 = !DILocation(line: 72, column: 9, scope: !1557)
!1560 = !DILocation(line: 84, column: 16, scope: !1524)
!1561 = !DILocation(line: 90, column: 27, scope: !1524)
!1562 = !DILocation(line: 92, column: 1, scope: !1524)
!1563 = distinct !DISubprogram(name: "clone_quoting_options", scope: !249, file: !249, line: 114, type: !1564, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !1567)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!1566, !1566}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1567 = !{!1568, !1569, !1570}
!1568 = !DILocalVariable(name: "o", arg: 1, scope: !1563, file: !249, line: 114, type: !1566)
!1569 = !DILocalVariable(name: "e", scope: !1563, file: !249, line: 116, type: !24)
!1570 = !DILocalVariable(name: "p", scope: !1563, file: !249, line: 117, type: !1566)
!1571 = !DILocation(line: 114, column: 48, scope: !1563)
!1572 = !DILocation(line: 116, column: 11, scope: !1563)
!1573 = !DILocation(line: 116, column: 7, scope: !1563)
!1574 = !DILocation(line: 117, column: 40, scope: !1563)
!1575 = !DILocation(line: 117, column: 31, scope: !1563)
!1576 = !DILocation(line: 117, column: 27, scope: !1563)
!1577 = !DILocation(line: 119, column: 9, scope: !1563)
!1578 = !DILocation(line: 120, column: 3, scope: !1563)
!1579 = distinct !DISubprogram(name: "get_quoting_style", scope: !249, file: !249, line: 125, type: !1580, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !1584)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!73, !1582}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!1584 = !{!1585}
!1585 = !DILocalVariable(name: "o", arg: 1, scope: !1579, file: !249, line: 125, type: !1582)
!1586 = !DILocation(line: 125, column: 50, scope: !1579)
!1587 = !DILocation(line: 127, column: 11, scope: !1579)
!1588 = !DILocation(line: 127, column: 46, scope: !1579)
!1589 = !{!1590, !705, i64 0}
!1590 = !{!"quoting_options", !705, i64 0, !790, i64 4, !705, i64 8, !704, i64 40, !704, i64 48}
!1591 = !DILocation(line: 127, column: 3, scope: !1579)
!1592 = distinct !DISubprogram(name: "set_quoting_style", scope: !249, file: !249, line: 133, type: !1593, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !1566, !73}
!1595 = !{!1596, !1597}
!1596 = !DILocalVariable(name: "o", arg: 1, scope: !1592, file: !249, line: 133, type: !1566)
!1597 = !DILocalVariable(name: "s", arg: 2, scope: !1592, file: !249, line: 133, type: !73)
!1598 = !DILocation(line: 133, column: 44, scope: !1592)
!1599 = !DILocation(line: 133, column: 66, scope: !1592)
!1600 = !DILocation(line: 135, column: 4, scope: !1592)
!1601 = !DILocation(line: 135, column: 39, scope: !1592)
!1602 = !DILocation(line: 135, column: 45, scope: !1592)
!1603 = !DILocation(line: 136, column: 1, scope: !1592)
!1604 = distinct !DISubprogram(name: "set_char_quoting", scope: !249, file: !249, line: 144, type: !1605, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !1607)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!24, !1566, !22, !24}
!1607 = !{!1608, !1609, !1610, !1611, !1612, !1614, !1615}
!1608 = !DILocalVariable(name: "o", arg: 1, scope: !1604, file: !249, line: 144, type: !1566)
!1609 = !DILocalVariable(name: "c", arg: 2, scope: !1604, file: !249, line: 144, type: !22)
!1610 = !DILocalVariable(name: "i", arg: 3, scope: !1604, file: !249, line: 144, type: !24)
!1611 = !DILocalVariable(name: "uc", scope: !1604, file: !249, line: 146, type: !27)
!1612 = !DILocalVariable(name: "p", scope: !1604, file: !249, line: 147, type: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1614 = !DILocalVariable(name: "shift", scope: !1604, file: !249, line: 149, type: !24)
!1615 = !DILocalVariable(name: "r", scope: !1604, file: !249, line: 150, type: !24)
!1616 = !DILocation(line: 144, column: 43, scope: !1604)
!1617 = !DILocation(line: 144, column: 51, scope: !1604)
!1618 = !DILocation(line: 144, column: 58, scope: !1604)
!1619 = !DILocation(line: 146, column: 17, scope: !1604)
!1620 = !DILocation(line: 148, column: 6, scope: !1604)
!1621 = !DILocation(line: 148, column: 62, scope: !1604)
!1622 = !DILocation(line: 148, column: 57, scope: !1604)
!1623 = !DILocation(line: 147, column: 17, scope: !1604)
!1624 = !DILocation(line: 149, column: 18, scope: !1604)
!1625 = !DILocation(line: 149, column: 15, scope: !1604)
!1626 = !DILocation(line: 149, column: 7, scope: !1604)
!1627 = !DILocation(line: 150, column: 12, scope: !1604)
!1628 = !DILocation(line: 150, column: 15, scope: !1604)
!1629 = !DILocation(line: 150, column: 25, scope: !1604)
!1630 = !DILocation(line: 150, column: 7, scope: !1604)
!1631 = !DILocation(line: 151, column: 13, scope: !1604)
!1632 = !DILocation(line: 151, column: 18, scope: !1604)
!1633 = !DILocation(line: 151, column: 23, scope: !1604)
!1634 = !DILocation(line: 151, column: 6, scope: !1604)
!1635 = !DILocation(line: 152, column: 3, scope: !1604)
!1636 = distinct !DISubprogram(name: "set_quoting_flags", scope: !249, file: !249, line: 160, type: !1637, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !1639)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!24, !1566, !24}
!1639 = !{!1640, !1641, !1642}
!1640 = !DILocalVariable(name: "o", arg: 1, scope: !1636, file: !249, line: 160, type: !1566)
!1641 = !DILocalVariable(name: "i", arg: 2, scope: !1636, file: !249, line: 160, type: !24)
!1642 = !DILocalVariable(name: "r", scope: !1636, file: !249, line: 162, type: !24)
!1643 = !DILocation(line: 160, column: 44, scope: !1636)
!1644 = !DILocation(line: 160, column: 51, scope: !1636)
!1645 = !DILocation(line: 163, column: 8, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1636, file: !249, line: 163, column: 7)
!1647 = !DILocation(line: 163, column: 7, scope: !1636)
!1648 = !DILocation(line: 165, column: 10, scope: !1636)
!1649 = !{!1590, !790, i64 4}
!1650 = !DILocation(line: 162, column: 7, scope: !1636)
!1651 = !DILocation(line: 166, column: 12, scope: !1636)
!1652 = !DILocation(line: 167, column: 3, scope: !1636)
!1653 = distinct !DISubprogram(name: "set_custom_quoting", scope: !249, file: !249, line: 171, type: !1654, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !1566, !35, !35}
!1656 = !{!1657, !1658, !1659}
!1657 = !DILocalVariable(name: "o", arg: 1, scope: !1653, file: !249, line: 171, type: !1566)
!1658 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1653, file: !249, line: 172, type: !35)
!1659 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1653, file: !249, line: 172, type: !35)
!1660 = !DILocation(line: 171, column: 45, scope: !1653)
!1661 = !DILocation(line: 172, column: 33, scope: !1653)
!1662 = !DILocation(line: 172, column: 57, scope: !1653)
!1663 = !DILocation(line: 174, column: 8, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1653, file: !249, line: 174, column: 7)
!1665 = !DILocation(line: 174, column: 7, scope: !1653)
!1666 = !DILocation(line: 176, column: 6, scope: !1653)
!1667 = !DILocation(line: 176, column: 12, scope: !1653)
!1668 = !DILocation(line: 177, column: 8, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1653, file: !249, line: 177, column: 7)
!1670 = !DILocation(line: 177, column: 23, scope: !1669)
!1671 = !DILocation(line: 177, column: 19, scope: !1669)
!1672 = !DILocation(line: 178, column: 5, scope: !1669)
!1673 = !DILocation(line: 179, column: 6, scope: !1653)
!1674 = !DILocation(line: 179, column: 17, scope: !1653)
!1675 = !{!1590, !704, i64 40}
!1676 = !DILocation(line: 180, column: 6, scope: !1653)
!1677 = !DILocation(line: 180, column: 18, scope: !1653)
!1678 = !{!1590, !704, i64 48}
!1679 = !DILocation(line: 181, column: 1, scope: !1653)
!1680 = distinct !DISubprogram(name: "quotearg_buffer", scope: !249, file: !249, line: 776, type: !1681, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !1683)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!102, !21, !102, !35, !102, !1582}
!1683 = !{!1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691}
!1684 = !DILocalVariable(name: "buffer", arg: 1, scope: !1680, file: !249, line: 776, type: !21)
!1685 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1680, file: !249, line: 776, type: !102)
!1686 = !DILocalVariable(name: "arg", arg: 3, scope: !1680, file: !249, line: 777, type: !35)
!1687 = !DILocalVariable(name: "argsize", arg: 4, scope: !1680, file: !249, line: 777, type: !102)
!1688 = !DILocalVariable(name: "o", arg: 5, scope: !1680, file: !249, line: 778, type: !1582)
!1689 = !DILocalVariable(name: "p", scope: !1680, file: !249, line: 780, type: !1582)
!1690 = !DILocalVariable(name: "e", scope: !1680, file: !249, line: 781, type: !24)
!1691 = !DILocalVariable(name: "r", scope: !1680, file: !249, line: 782, type: !102)
!1692 = !DILocation(line: 776, column: 24, scope: !1680)
!1693 = !DILocation(line: 776, column: 39, scope: !1680)
!1694 = !DILocation(line: 777, column: 30, scope: !1680)
!1695 = !DILocation(line: 777, column: 42, scope: !1680)
!1696 = !DILocation(line: 778, column: 48, scope: !1680)
!1697 = !DILocation(line: 780, column: 37, scope: !1680)
!1698 = !DILocation(line: 780, column: 33, scope: !1680)
!1699 = !DILocation(line: 781, column: 11, scope: !1680)
!1700 = !DILocation(line: 781, column: 7, scope: !1680)
!1701 = !DILocation(line: 783, column: 43, scope: !1680)
!1702 = !DILocation(line: 783, column: 53, scope: !1680)
!1703 = !DILocation(line: 783, column: 60, scope: !1680)
!1704 = !DILocation(line: 784, column: 43, scope: !1680)
!1705 = !DILocation(line: 784, column: 58, scope: !1680)
!1706 = !DILocation(line: 782, column: 14, scope: !1680)
!1707 = !DILocation(line: 782, column: 10, scope: !1680)
!1708 = !DILocation(line: 785, column: 9, scope: !1680)
!1709 = !DILocation(line: 786, column: 3, scope: !1680)
!1710 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !249, file: !249, line: 248, type: !1711, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !1715)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!102, !21, !102, !35, !102, !73, !24, !1713, !35, !35}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1740, !1741, !1742, !1743, !1744, !1747, !1748, !1766, !1769, !1770, !1777}
!1716 = !DILocalVariable(name: "buffer", arg: 1, scope: !1710, file: !249, line: 248, type: !21)
!1717 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1710, file: !249, line: 248, type: !102)
!1718 = !DILocalVariable(name: "arg", arg: 3, scope: !1710, file: !249, line: 249, type: !35)
!1719 = !DILocalVariable(name: "argsize", arg: 4, scope: !1710, file: !249, line: 249, type: !102)
!1720 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1710, file: !249, line: 250, type: !73)
!1721 = !DILocalVariable(name: "flags", arg: 6, scope: !1710, file: !249, line: 250, type: !24)
!1722 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1710, file: !249, line: 251, type: !1713)
!1723 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1710, file: !249, line: 252, type: !35)
!1724 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1710, file: !249, line: 253, type: !35)
!1725 = !DILocalVariable(name: "i", scope: !1710, file: !249, line: 255, type: !102)
!1726 = !DILocalVariable(name: "len", scope: !1710, file: !249, line: 256, type: !102)
!1727 = !DILocalVariable(name: "orig_buffersize", scope: !1710, file: !249, line: 257, type: !102)
!1728 = !DILocalVariable(name: "quote_string", scope: !1710, file: !249, line: 258, type: !35)
!1729 = !DILocalVariable(name: "quote_string_len", scope: !1710, file: !249, line: 259, type: !102)
!1730 = !DILocalVariable(name: "backslash_escapes", scope: !1710, file: !249, line: 260, type: !198)
!1731 = !DILocalVariable(name: "unibyte_locale", scope: !1710, file: !249, line: 261, type: !198)
!1732 = !DILocalVariable(name: "elide_outer_quotes", scope: !1710, file: !249, line: 262, type: !198)
!1733 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1710, file: !249, line: 263, type: !198)
!1734 = !DILocalVariable(name: "encountered_single_quote", scope: !1710, file: !249, line: 264, type: !198)
!1735 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1710, file: !249, line: 265, type: !198)
!1736 = !DILocalVariable(name: "c", scope: !1737, file: !249, line: 394, type: !27)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !249, line: 393, column: 5)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !249, line: 392, column: 3)
!1739 = distinct !DILexicalBlock(scope: !1710, file: !249, line: 392, column: 3)
!1740 = !DILocalVariable(name: "esc", scope: !1737, file: !249, line: 395, type: !27)
!1741 = !DILocalVariable(name: "is_right_quote", scope: !1737, file: !249, line: 396, type: !198)
!1742 = !DILocalVariable(name: "escaping", scope: !1737, file: !249, line: 397, type: !198)
!1743 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1737, file: !249, line: 398, type: !198)
!1744 = !DILocalVariable(name: "m", scope: !1745, file: !249, line: 602, type: !102)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !249, line: 600, column: 11)
!1746 = distinct !DILexicalBlock(scope: !1737, file: !249, line: 418, column: 9)
!1747 = !DILocalVariable(name: "printable", scope: !1745, file: !249, line: 604, type: !198)
!1748 = !DILocalVariable(name: "mbstate", scope: !1749, file: !249, line: 613, type: !1751)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !249, line: 612, column: 15)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !249, line: 606, column: 17)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1752, line: 6, baseType: !1753)
!1752 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1754, line: 21, baseType: !1755)
!1754 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1754, line: 13, size: 64, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1755, file: !1754, line: 15, baseType: !24, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1755, file: !1754, line: 20, baseType: !1759, size: 32, offset: 32)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1755, file: !1754, line: 16, size: 32, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1759, file: !1754, line: 18, baseType: !113, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1759, file: !1754, line: 19, baseType: !1763, size: 32)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !1764)
!1764 = !{!1765}
!1765 = !DISubrange(count: 4)
!1766 = !DILocalVariable(name: "w", scope: !1767, file: !249, line: 623, type: !1768)
!1767 = distinct !DILexicalBlock(scope: !1749, file: !249, line: 622, column: 19)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !103, line: 90, baseType: !24)
!1769 = !DILocalVariable(name: "bytes", scope: !1767, file: !249, line: 624, type: !102)
!1770 = !DILocalVariable(name: "j", scope: !1771, file: !249, line: 649, type: !102)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !249, line: 648, column: 27)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !249, line: 646, column: 29)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !249, line: 641, column: 23)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !249, line: 633, column: 30)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !249, line: 628, column: 30)
!1776 = distinct !DILexicalBlock(scope: !1767, file: !249, line: 626, column: 25)
!1777 = !DILocalVariable(name: "ilim", scope: !1778, file: !249, line: 676, type: !102)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !249, line: 673, column: 15)
!1779 = distinct !DILexicalBlock(scope: !1745, file: !249, line: 672, column: 17)
!1780 = !DILocation(line: 248, column: 33, scope: !1710)
!1781 = !DILocation(line: 248, column: 48, scope: !1710)
!1782 = !DILocation(line: 249, column: 39, scope: !1710)
!1783 = !DILocation(line: 249, column: 51, scope: !1710)
!1784 = !DILocation(line: 250, column: 46, scope: !1710)
!1785 = !DILocation(line: 250, column: 65, scope: !1710)
!1786 = !DILocation(line: 251, column: 47, scope: !1710)
!1787 = !DILocation(line: 252, column: 39, scope: !1710)
!1788 = !DILocation(line: 253, column: 39, scope: !1710)
!1789 = !DILocation(line: 256, column: 10, scope: !1710)
!1790 = !DILocation(line: 257, column: 10, scope: !1710)
!1791 = !DILocation(line: 258, column: 15, scope: !1710)
!1792 = !DILocation(line: 259, column: 10, scope: !1710)
!1793 = !DILocation(line: 260, column: 8, scope: !1710)
!1794 = !DILocation(line: 261, column: 25, scope: !1710)
!1795 = !DILocation(line: 261, column: 36, scope: !1710)
!1796 = !DILocation(line: 262, column: 8, scope: !1710)
!1797 = !DILocation(line: 263, column: 8, scope: !1710)
!1798 = !DILocation(line: 264, column: 8, scope: !1710)
!1799 = !DILocation(line: 265, column: 8, scope: !1710)
!1800 = !DILocation(line: 265, column: 3, scope: !1710)
!1801 = !DILocation(line: 308, column: 3, scope: !1710)
!1802 = !DILocation(line: 315, column: 11, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1710, file: !249, line: 309, column: 5)
!1804 = !DILocation(line: 315, column: 12, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1803, file: !249, line: 315, column: 11)
!1806 = !DILocation(line: 316, column: 9, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !249, line: 316, column: 9)
!1808 = distinct !DILexicalBlock(scope: !1805, file: !249, line: 316, column: 9)
!1809 = !DILocation(line: 316, column: 9, scope: !1808)
!1810 = !DILocation(line: 354, column: 26, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !249, line: 332, column: 11)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !249, line: 331, column: 13)
!1813 = distinct !DILexicalBlock(scope: !1803, file: !249, line: 330, column: 7)
!1814 = !DILocation(line: 355, column: 27, scope: !1811)
!1815 = !DILocation(line: 356, column: 11, scope: !1811)
!1816 = !DILocation(line: 357, column: 14, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !249, line: 357, column: 13)
!1818 = !DILocation(line: 357, column: 13, scope: !1813)
!1819 = !DILocation(line: 358, column: 43, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !249, line: 358, column: 11)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !249, line: 358, column: 11)
!1822 = !DILocation(line: 358, column: 11, scope: !1821)
!1823 = !DILocation(line: 359, column: 13, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !249, line: 359, column: 13)
!1825 = distinct !DILexicalBlock(scope: !1820, file: !249, line: 359, column: 13)
!1826 = !DILocation(line: 359, column: 13, scope: !1825)
!1827 = !DILocation(line: 358, column: 70, scope: !1820)
!1828 = distinct !{!1828, !1822, !1829}
!1829 = !DILocation(line: 359, column: 13, scope: !1821)
!1830 = !DILocation(line: 362, column: 28, scope: !1813)
!1831 = !DILocation(line: 364, column: 7, scope: !1803)
!1832 = !DILocation(line: 367, column: 7, scope: !1803)
!1833 = !DILocation(line: 370, column: 7, scope: !1803)
!1834 = !DILocation(line: 373, column: 12, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1803, file: !249, line: 373, column: 11)
!1836 = !DILocation(line: 373, column: 11, scope: !1803)
!1837 = !DILocation(line: 378, column: 12, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1803, file: !249, line: 378, column: 11)
!1839 = !DILocation(line: 378, column: 11, scope: !1803)
!1840 = !DILocation(line: 379, column: 9, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !249, line: 379, column: 9)
!1842 = distinct !DILexicalBlock(scope: !1838, file: !249, line: 379, column: 9)
!1843 = !DILocation(line: 379, column: 9, scope: !1842)
!1844 = !DILocation(line: 386, column: 7, scope: !1803)
!1845 = !DILocation(line: 389, column: 7, scope: !1803)
!1846 = !DILocation(line: 255, column: 10, scope: !1710)
!1847 = !DILocation(line: 392, column: 8, scope: !1739)
!1848 = !DILocation(line: 392, column: 27, scope: !1738)
!1849 = !DILocation(line: 392, column: 19, scope: !1738)
!1850 = !DILocation(line: 392, column: 60, scope: !1738)
!1851 = !DILocation(line: 392, column: 3, scope: !1739)
!1852 = !DILocation(line: 392, column: 41, scope: !1738)
!1853 = !DILocation(line: 392, column: 48, scope: !1738)
!1854 = !DILocation(line: 396, column: 12, scope: !1737)
!1855 = !DILocation(line: 397, column: 12, scope: !1737)
!1856 = !DILocation(line: 398, column: 12, scope: !1737)
!1857 = !DILocation(line: 401, column: 11, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1737, file: !249, line: 400, column: 11)
!1859 = !DILocation(line: 403, column: 17, scope: !1858)
!1860 = !DILocation(line: 404, column: 39, scope: !1858)
!1861 = !DILocation(line: 408, column: 32, scope: !1858)
!1862 = !DILocation(line: 404, column: 19, scope: !1858)
!1863 = !DILocation(line: 404, column: 15, scope: !1858)
!1864 = !DILocation(line: 409, column: 11, scope: !1858)
!1865 = !DILocation(line: 409, column: 26, scope: !1858)
!1866 = !DILocation(line: 409, column: 14, scope: !1858)
!1867 = !DILocation(line: 409, column: 63, scope: !1858)
!1868 = !DILocation(line: 400, column: 11, scope: !1737)
!1869 = !DILocation(line: 416, column: 11, scope: !1737)
!1870 = !DILocation(line: 394, column: 21, scope: !1737)
!1871 = !DILocation(line: 417, column: 7, scope: !1737)
!1872 = !DILocation(line: 420, column: 15, scope: !1746)
!1873 = !DILocation(line: 422, column: 15, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !249, line: 422, column: 15)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !249, line: 421, column: 13)
!1876 = distinct !DILexicalBlock(scope: !1746, file: !249, line: 420, column: 15)
!1877 = !DILocation(line: 422, column: 15, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1874, file: !249, line: 422, column: 15)
!1879 = !DILocation(line: 422, column: 15, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !249, line: 422, column: 15)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !249, line: 422, column: 15)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !249, line: 422, column: 15)
!1883 = !DILocation(line: 422, column: 15, scope: !1881)
!1884 = !DILocation(line: 422, column: 15, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !249, line: 422, column: 15)
!1886 = distinct !DILexicalBlock(scope: !1882, file: !249, line: 422, column: 15)
!1887 = !DILocation(line: 422, column: 15, scope: !1886)
!1888 = !DILocation(line: 422, column: 15, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !249, line: 422, column: 15)
!1890 = distinct !DILexicalBlock(scope: !1882, file: !249, line: 422, column: 15)
!1891 = !DILocation(line: 422, column: 15, scope: !1890)
!1892 = !DILocation(line: 422, column: 15, scope: !1882)
!1893 = !DILocation(line: 422, column: 15, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !249, line: 422, column: 15)
!1895 = distinct !DILexicalBlock(scope: !1874, file: !249, line: 422, column: 15)
!1896 = !DILocation(line: 422, column: 15, scope: !1895)
!1897 = !DILocation(line: 430, column: 19, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1875, file: !249, line: 429, column: 19)
!1899 = !DILocation(line: 430, column: 24, scope: !1898)
!1900 = !DILocation(line: 430, column: 28, scope: !1898)
!1901 = !DILocation(line: 430, column: 38, scope: !1898)
!1902 = !DILocation(line: 430, column: 48, scope: !1898)
!1903 = !DILocation(line: 430, column: 59, scope: !1898)
!1904 = !DILocation(line: 432, column: 19, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !249, line: 432, column: 19)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !249, line: 432, column: 19)
!1907 = distinct !DILexicalBlock(scope: !1898, file: !249, line: 431, column: 17)
!1908 = !DILocation(line: 432, column: 19, scope: !1906)
!1909 = !DILocation(line: 433, column: 19, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !249, line: 433, column: 19)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !249, line: 433, column: 19)
!1912 = !DILocation(line: 433, column: 19, scope: !1911)
!1913 = !DILocation(line: 434, column: 17, scope: !1907)
!1914 = !DILocation(line: 441, column: 20, scope: !1876)
!1915 = !DILocation(line: 446, column: 11, scope: !1746)
!1916 = !DILocation(line: 449, column: 19, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1746, file: !249, line: 447, column: 13)
!1918 = !DILocation(line: 455, column: 19, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1917, file: !249, line: 454, column: 19)
!1920 = !DILocation(line: 455, column: 24, scope: !1919)
!1921 = !DILocation(line: 455, column: 28, scope: !1919)
!1922 = !DILocation(line: 455, column: 38, scope: !1919)
!1923 = !DILocation(line: 455, column: 47, scope: !1919)
!1924 = !DILocation(line: 455, column: 41, scope: !1919)
!1925 = !DILocation(line: 455, column: 52, scope: !1919)
!1926 = !DILocation(line: 454, column: 19, scope: !1917)
!1927 = !DILocation(line: 456, column: 25, scope: !1919)
!1928 = !DILocation(line: 456, column: 17, scope: !1919)
!1929 = !DILocation(line: 463, column: 25, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1919, file: !249, line: 457, column: 19)
!1931 = !DILocation(line: 467, column: 21, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !249, line: 467, column: 21)
!1933 = distinct !DILexicalBlock(scope: !1930, file: !249, line: 467, column: 21)
!1934 = !DILocation(line: 467, column: 21, scope: !1933)
!1935 = !DILocation(line: 468, column: 21, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !249, line: 468, column: 21)
!1937 = distinct !DILexicalBlock(scope: !1930, file: !249, line: 468, column: 21)
!1938 = !DILocation(line: 468, column: 21, scope: !1937)
!1939 = !DILocation(line: 469, column: 21, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !249, line: 469, column: 21)
!1941 = distinct !DILexicalBlock(scope: !1930, file: !249, line: 469, column: 21)
!1942 = !DILocation(line: 469, column: 21, scope: !1941)
!1943 = !DILocation(line: 470, column: 21, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !249, line: 470, column: 21)
!1945 = distinct !DILexicalBlock(scope: !1930, file: !249, line: 470, column: 21)
!1946 = !DILocation(line: 470, column: 21, scope: !1945)
!1947 = !DILocation(line: 471, column: 21, scope: !1930)
!1948 = !DILocation(line: 395, column: 21, scope: !1737)
!1949 = !DILocation(line: 484, column: 31, scope: !1746)
!1950 = !DILocation(line: 485, column: 31, scope: !1746)
!1951 = !DILocation(line: 487, column: 31, scope: !1746)
!1952 = !DILocation(line: 488, column: 31, scope: !1746)
!1953 = !DILocation(line: 489, column: 31, scope: !1746)
!1954 = !DILocation(line: 492, column: 15, scope: !1746)
!1955 = !DILocation(line: 494, column: 19, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !249, line: 493, column: 13)
!1957 = distinct !DILexicalBlock(scope: !1746, file: !249, line: 492, column: 15)
!1958 = !DILocation(line: 501, column: 33, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1746, file: !249, line: 501, column: 15)
!1960 = !DILocation(line: 506, column: 15, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1746, file: !249, line: 505, column: 15)
!1962 = !DILocation(line: 510, column: 15, scope: !1746)
!1963 = !DILocation(line: 518, column: 26, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1746, file: !249, line: 518, column: 15)
!1965 = !DILocation(line: 518, column: 15, scope: !1746)
!1966 = !DILocation(line: 518, column: 40, scope: !1964)
!1967 = !DILocation(line: 518, column: 47, scope: !1964)
!1968 = !DILocation(line: 522, column: 17, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1746, file: !249, line: 522, column: 15)
!1970 = !DILocation(line: 518, column: 18, scope: !1964)
!1971 = !DILocation(line: 518, column: 65, scope: !1964)
!1972 = !DILocation(line: 522, column: 15, scope: !1746)
!1973 = !DILocation(line: 526, column: 11, scope: !1746)
!1974 = !DILocation(line: 541, column: 15, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1746, file: !249, line: 540, column: 15)
!1976 = !DILocation(line: 548, column: 15, scope: !1746)
!1977 = !DILocation(line: 550, column: 19, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !249, line: 549, column: 13)
!1979 = distinct !DILexicalBlock(scope: !1746, file: !249, line: 548, column: 15)
!1980 = !DILocation(line: 553, column: 19, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1978, file: !249, line: 553, column: 19)
!1982 = !DILocation(line: 553, column: 35, scope: !1981)
!1983 = !DILocation(line: 553, column: 30, scope: !1981)
!1984 = !DILocation(line: 562, column: 15, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !249, line: 562, column: 15)
!1986 = distinct !DILexicalBlock(scope: !1978, file: !249, line: 562, column: 15)
!1987 = !DILocation(line: 562, column: 15, scope: !1986)
!1988 = !DILocation(line: 563, column: 15, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !249, line: 563, column: 15)
!1990 = distinct !DILexicalBlock(scope: !1978, file: !249, line: 563, column: 15)
!1991 = !DILocation(line: 563, column: 15, scope: !1990)
!1992 = !DILocation(line: 564, column: 15, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !249, line: 564, column: 15)
!1994 = distinct !DILexicalBlock(scope: !1978, file: !249, line: 564, column: 15)
!1995 = !DILocation(line: 564, column: 15, scope: !1994)
!1996 = !DILocation(line: 566, column: 13, scope: !1978)
!1997 = !DILocation(line: 606, column: 17, scope: !1745)
!1998 = !DILocation(line: 602, column: 20, scope: !1745)
!1999 = !DILocation(line: 609, column: 29, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1750, file: !249, line: 607, column: 15)
!2001 = !DILocation(line: 609, column: 27, scope: !2000)
!2002 = !DILocation(line: 604, column: 18, scope: !1745)
!2003 = !DILocation(line: 610, column: 15, scope: !2000)
!2004 = !DILocation(line: 613, column: 17, scope: !1749)
!2005 = !DILocation(line: 614, column: 17, scope: !1749)
!2006 = !DILocation(line: 618, column: 29, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1749, file: !249, line: 618, column: 21)
!2008 = !DILocation(line: 618, column: 21, scope: !1749)
!2009 = !DILocation(line: 619, column: 29, scope: !2007)
!2010 = !DILocation(line: 619, column: 19, scope: !2007)
!2011 = !DILocation(line: 621, column: 17, scope: !1749)
!2012 = distinct !{!2012, !2011, !2013}
!2013 = !DILocation(line: 667, column: 44, scope: !1749)
!2014 = !DILocation(line: 623, column: 21, scope: !1767)
!2015 = !DILocation(line: 624, column: 56, scope: !1767)
!2016 = !DILocation(line: 624, column: 50, scope: !1767)
!2017 = !DILocation(line: 625, column: 53, scope: !1767)
!2018 = !DILocation(line: 613, column: 27, scope: !1749)
!2019 = !DILocation(line: 623, column: 29, scope: !1767)
!2020 = !DILocation(line: 624, column: 36, scope: !1767)
!2021 = !DILocation(line: 624, column: 28, scope: !1767)
!2022 = !DILocation(line: 626, column: 25, scope: !1767)
!2023 = !DILocation(line: 636, column: 38, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1774, file: !249, line: 634, column: 23)
!2025 = !DILocation(line: 636, column: 48, scope: !2024)
!2026 = !DILocation(line: 636, column: 51, scope: !2024)
!2027 = !DILocation(line: 636, column: 25, scope: !2024)
!2028 = !DILocation(line: 637, column: 28, scope: !2024)
!2029 = !DILocation(line: 636, column: 34, scope: !2024)
!2030 = distinct !{!2030, !2027, !2028}
!2031 = !DILocation(line: 650, column: 43, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !249, line: 650, column: 29)
!2033 = distinct !DILexicalBlock(scope: !1771, file: !249, line: 650, column: 29)
!2034 = !DILocation(line: 647, column: 29, scope: !1772)
!2035 = !DILocation(line: 649, column: 36, scope: !1771)
!2036 = !DILocation(line: 651, column: 49, scope: !2032)
!2037 = !DILocation(line: 651, column: 39, scope: !2032)
!2038 = !DILocation(line: 651, column: 31, scope: !2032)
!2039 = !DILocation(line: 650, column: 53, scope: !2032)
!2040 = !DILocation(line: 650, column: 29, scope: !2033)
!2041 = distinct !{!2041, !2040, !2042}
!2042 = !DILocation(line: 659, column: 33, scope: !2033)
!2043 = !DILocation(line: 666, column: 19, scope: !1749)
!2044 = !DILocation(line: 662, column: 41, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1773, file: !249, line: 662, column: 29)
!2046 = !DILocation(line: 662, column: 31, scope: !2045)
!2047 = !DILocation(line: 662, column: 29, scope: !1773)
!2048 = !DILocation(line: 664, column: 27, scope: !1773)
!2049 = !DILocation(line: 667, column: 26, scope: !1749)
!2050 = !DILocation(line: 667, column: 24, scope: !1749)
!2051 = !DILocation(line: 666, column: 19, scope: !1767)
!2052 = !DILocation(line: 668, column: 15, scope: !1750)
!2053 = !DILocation(line: 670, column: 40, scope: !1745)
!2054 = !DILocation(line: 672, column: 19, scope: !1779)
!2055 = !DILocation(line: 672, column: 45, scope: !1779)
!2056 = !DILocation(line: 672, column: 23, scope: !1779)
!2057 = !DILocation(line: 676, column: 33, scope: !1778)
!2058 = !DILocation(line: 676, column: 24, scope: !1778)
!2059 = !DILocation(line: 678, column: 17, scope: !1778)
!2060 = !DILocation(line: 680, column: 43, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !249, line: 680, column: 25)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !249, line: 679, column: 19)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !249, line: 678, column: 17)
!2064 = distinct !DILexicalBlock(scope: !1778, file: !249, line: 678, column: 17)
!2065 = !DILocation(line: 682, column: 25, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !249, line: 682, column: 25)
!2067 = distinct !DILexicalBlock(scope: !2061, file: !249, line: 681, column: 23)
!2068 = !DILocation(line: 682, column: 25, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2066, file: !249, line: 682, column: 25)
!2070 = !DILocation(line: 682, column: 25, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !249, line: 682, column: 25)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !249, line: 682, column: 25)
!2073 = distinct !DILexicalBlock(scope: !2069, file: !249, line: 682, column: 25)
!2074 = !DILocation(line: 682, column: 25, scope: !2072)
!2075 = !DILocation(line: 682, column: 25, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !249, line: 682, column: 25)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !249, line: 682, column: 25)
!2078 = !DILocation(line: 682, column: 25, scope: !2077)
!2079 = !DILocation(line: 682, column: 25, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !249, line: 682, column: 25)
!2081 = distinct !DILexicalBlock(scope: !2073, file: !249, line: 682, column: 25)
!2082 = !DILocation(line: 682, column: 25, scope: !2081)
!2083 = !DILocation(line: 682, column: 25, scope: !2073)
!2084 = !DILocation(line: 682, column: 25, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !249, line: 682, column: 25)
!2086 = distinct !DILexicalBlock(scope: !2066, file: !249, line: 682, column: 25)
!2087 = !DILocation(line: 682, column: 25, scope: !2086)
!2088 = !DILocation(line: 683, column: 25, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !249, line: 683, column: 25)
!2090 = distinct !DILexicalBlock(scope: !2067, file: !249, line: 683, column: 25)
!2091 = !DILocation(line: 683, column: 25, scope: !2090)
!2092 = !DILocation(line: 684, column: 25, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !249, line: 684, column: 25)
!2094 = distinct !DILexicalBlock(scope: !2067, file: !249, line: 684, column: 25)
!2095 = !DILocation(line: 684, column: 25, scope: !2094)
!2096 = !DILocation(line: 685, column: 38, scope: !2067)
!2097 = !DILocation(line: 685, column: 33, scope: !2067)
!2098 = !DILocation(line: 686, column: 23, scope: !2067)
!2099 = !DILocation(line: 687, column: 30, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2061, file: !249, line: 687, column: 30)
!2101 = !DILocation(line: 687, column: 30, scope: !2061)
!2102 = !DILocation(line: 689, column: 25, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !249, line: 689, column: 25)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !249, line: 689, column: 25)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !249, line: 688, column: 23)
!2106 = !DILocation(line: 689, column: 25, scope: !2104)
!2107 = !DILocation(line: 691, column: 23, scope: !2105)
!2108 = !DILocation(line: 692, column: 35, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2062, file: !249, line: 692, column: 25)
!2110 = !DILocation(line: 692, column: 30, scope: !2109)
!2111 = !DILocation(line: 692, column: 25, scope: !2062)
!2112 = !DILocation(line: 694, column: 21, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !249, line: 694, column: 21)
!2114 = distinct !DILexicalBlock(scope: !2062, file: !249, line: 694, column: 21)
!2115 = !DILocation(line: 694, column: 21, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !249, line: 694, column: 21)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !249, line: 694, column: 21)
!2118 = distinct !DILexicalBlock(scope: !2113, file: !249, line: 694, column: 21)
!2119 = !DILocation(line: 694, column: 21, scope: !2117)
!2120 = !DILocation(line: 694, column: 21, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !249, line: 694, column: 21)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !249, line: 694, column: 21)
!2123 = !DILocation(line: 694, column: 21, scope: !2122)
!2124 = !DILocation(line: 694, column: 21, scope: !2118)
!2125 = !DILocation(line: 695, column: 21, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !249, line: 695, column: 21)
!2127 = distinct !DILexicalBlock(scope: !2062, file: !249, line: 695, column: 21)
!2128 = !DILocation(line: 695, column: 21, scope: !2127)
!2129 = !DILocation(line: 696, column: 25, scope: !2062)
!2130 = !DILocation(line: 678, column: 17, scope: !2063)
!2131 = distinct !{!2131, !2132, !2133}
!2132 = !DILocation(line: 678, column: 17, scope: !2064)
!2133 = !DILocation(line: 697, column: 19, scope: !2064)
!2134 = !DILocation(line: 704, column: 34, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1737, file: !249, line: 704, column: 11)
!2136 = !DILocation(line: 706, column: 14, scope: !2135)
!2137 = !DILocation(line: 707, column: 14, scope: !2135)
!2138 = !DILocation(line: 707, column: 35, scope: !2135)
!2139 = !DILocation(line: 707, column: 17, scope: !2135)
!2140 = !DILocation(line: 707, column: 53, scope: !2135)
!2141 = !DILocation(line: 707, column: 47, scope: !2135)
!2142 = !DILocation(line: 707, column: 65, scope: !2135)
!2143 = !DILocation(line: 708, column: 15, scope: !2135)
!2144 = !DILocation(line: 708, column: 11, scope: !2135)
!2145 = !DILocation(line: 704, column: 11, scope: !1737)
!2146 = !DILocation(line: 712, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !1737, file: !249, line: 712, column: 7)
!2148 = !DILocation(line: 712, column: 7, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2147, file: !249, line: 712, column: 7)
!2150 = !DILocation(line: 712, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !249, line: 712, column: 7)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !249, line: 712, column: 7)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !249, line: 712, column: 7)
!2154 = !DILocation(line: 712, column: 7, scope: !2152)
!2155 = !DILocation(line: 712, column: 7, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !249, line: 712, column: 7)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !249, line: 712, column: 7)
!2158 = !DILocation(line: 712, column: 7, scope: !2157)
!2159 = !DILocation(line: 712, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !249, line: 712, column: 7)
!2161 = distinct !DILexicalBlock(scope: !2153, file: !249, line: 712, column: 7)
!2162 = !DILocation(line: 712, column: 7, scope: !2161)
!2163 = !DILocation(line: 712, column: 7, scope: !2153)
!2164 = !DILocation(line: 712, column: 7, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !249, line: 712, column: 7)
!2166 = distinct !DILexicalBlock(scope: !2147, file: !249, line: 712, column: 7)
!2167 = !DILocation(line: 712, column: 7, scope: !2166)
!2168 = !DILocation(line: 715, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !249, line: 715, column: 7)
!2170 = distinct !DILexicalBlock(scope: !1737, file: !249, line: 715, column: 7)
!2171 = !DILocation(line: 715, column: 7, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !249, line: 715, column: 7)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !249, line: 715, column: 7)
!2174 = distinct !DILexicalBlock(scope: !2169, file: !249, line: 715, column: 7)
!2175 = !DILocation(line: 715, column: 7, scope: !2173)
!2176 = !DILocation(line: 715, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !249, line: 715, column: 7)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !249, line: 715, column: 7)
!2179 = !DILocation(line: 715, column: 7, scope: !2178)
!2180 = !DILocation(line: 715, column: 7, scope: !2174)
!2181 = !DILocation(line: 716, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !249, line: 716, column: 7)
!2183 = distinct !DILexicalBlock(scope: !1737, file: !249, line: 716, column: 7)
!2184 = !DILocation(line: 716, column: 7, scope: !2183)
!2185 = !DILocation(line: 718, column: 13, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !1737, file: !249, line: 718, column: 11)
!2187 = !DILocation(line: 718, column: 11, scope: !1737)
!2188 = !DILocation(line: 720, column: 5, scope: !1738)
!2189 = !DILocation(line: 392, column: 75, scope: !1738)
!2190 = !DILocation(line: 392, column: 3, scope: !1738)
!2191 = distinct !{!2191, !1851, !2192}
!2192 = !DILocation(line: 720, column: 5, scope: !1739)
!2193 = !DILocation(line: 722, column: 11, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !1710, file: !249, line: 722, column: 7)
!2195 = !DILocation(line: 722, column: 16, scope: !2194)
!2196 = !DILocation(line: 730, column: 51, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !1710, file: !249, line: 730, column: 7)
!2198 = !DILocation(line: 731, column: 10, scope: !2197)
!2199 = !DILocation(line: 733, column: 11, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !249, line: 733, column: 11)
!2201 = distinct !DILexicalBlock(scope: !2197, file: !249, line: 732, column: 5)
!2202 = !DILocation(line: 733, column: 11, scope: !2201)
!2203 = !DILocation(line: 734, column: 16, scope: !2200)
!2204 = !DILocation(line: 734, column: 9, scope: !2200)
!2205 = !DILocation(line: 738, column: 18, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2200, file: !249, line: 738, column: 16)
!2207 = !DILocation(line: 738, column: 32, scope: !2206)
!2208 = !DILocation(line: 738, column: 29, scope: !2206)
!2209 = !DILocation(line: 747, column: 7, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !1710, file: !249, line: 747, column: 7)
!2211 = !DILocation(line: 747, column: 20, scope: !2210)
!2212 = !DILocation(line: 748, column: 12, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !249, line: 748, column: 5)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !249, line: 748, column: 5)
!2215 = !DILocation(line: 748, column: 5, scope: !2214)
!2216 = !DILocation(line: 749, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !249, line: 749, column: 7)
!2218 = distinct !DILexicalBlock(scope: !2213, file: !249, line: 749, column: 7)
!2219 = !DILocation(line: 749, column: 7, scope: !2218)
!2220 = !DILocation(line: 748, column: 39, scope: !2213)
!2221 = distinct !{!2221, !2215, !2222}
!2222 = !DILocation(line: 749, column: 7, scope: !2214)
!2223 = !DILocation(line: 751, column: 11, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1710, file: !249, line: 751, column: 7)
!2225 = !DILocation(line: 751, column: 7, scope: !1710)
!2226 = !DILocation(line: 752, column: 5, scope: !2224)
!2227 = !DILocation(line: 752, column: 17, scope: !2224)
!2228 = !DILocation(line: 758, column: 21, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !1710, file: !249, line: 758, column: 7)
!2230 = !DILocation(line: 758, column: 54, scope: !2229)
!2231 = !DILocation(line: 758, column: 51, scope: !2229)
!2232 = !DILocation(line: 762, column: 42, scope: !1710)
!2233 = !DILocation(line: 760, column: 10, scope: !1710)
!2234 = !DILocation(line: 760, column: 3, scope: !1710)
!2235 = !DILocation(line: 764, column: 1, scope: !1710)
!2236 = distinct !DISubprogram(name: "gettext_quote", scope: !249, file: !249, line: 199, type: !2237, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!35, !35, !73}
!2239 = !{!2240, !2241, !2242, !2243}
!2240 = !DILocalVariable(name: "msgid", arg: 1, scope: !2236, file: !249, line: 199, type: !35)
!2241 = !DILocalVariable(name: "s", arg: 2, scope: !2236, file: !249, line: 199, type: !73)
!2242 = !DILocalVariable(name: "translation", scope: !2236, file: !249, line: 201, type: !35)
!2243 = !DILocalVariable(name: "locale_code", scope: !2236, file: !249, line: 202, type: !35)
!2244 = !DILocation(line: 199, column: 28, scope: !2236)
!2245 = !DILocation(line: 199, column: 54, scope: !2236)
!2246 = !DILocation(line: 201, column: 29, scope: !2236)
!2247 = !DILocation(line: 201, column: 15, scope: !2236)
!2248 = !DILocation(line: 204, column: 19, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2236, file: !249, line: 204, column: 7)
!2250 = !DILocation(line: 204, column: 7, scope: !2236)
!2251 = !DILocation(line: 225, column: 17, scope: !2236)
!2252 = !DILocation(line: 202, column: 15, scope: !2236)
!2253 = !DILocalVariable(name: "s2", arg: 2, scope: !2254, file: !2255, line: 160, type: !35)
!2254 = distinct !DISubprogram(name: "strcaseeq0", scope: !2255, file: !2255, line: 160, type: !2256, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2258)
!2255 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!24, !35, !35, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!2258 = !{!2259, !2253, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268}
!2259 = !DILocalVariable(name: "s1", arg: 1, scope: !2254, file: !2255, line: 160, type: !35)
!2260 = !DILocalVariable(name: "s20", arg: 3, scope: !2254, file: !2255, line: 160, type: !22)
!2261 = !DILocalVariable(name: "s21", arg: 4, scope: !2254, file: !2255, line: 160, type: !22)
!2262 = !DILocalVariable(name: "s22", arg: 5, scope: !2254, file: !2255, line: 160, type: !22)
!2263 = !DILocalVariable(name: "s23", arg: 6, scope: !2254, file: !2255, line: 160, type: !22)
!2264 = !DILocalVariable(name: "s24", arg: 7, scope: !2254, file: !2255, line: 160, type: !22)
!2265 = !DILocalVariable(name: "s25", arg: 8, scope: !2254, file: !2255, line: 160, type: !22)
!2266 = !DILocalVariable(name: "s26", arg: 9, scope: !2254, file: !2255, line: 160, type: !22)
!2267 = !DILocalVariable(name: "s27", arg: 10, scope: !2254, file: !2255, line: 160, type: !22)
!2268 = !DILocalVariable(name: "s28", arg: 11, scope: !2254, file: !2255, line: 160, type: !22)
!2269 = !DILocation(line: 160, column: 41, scope: !2254, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 226, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2236, file: !249, line: 226, column: 7)
!2272 = !DILocation(line: 160, column: 120, scope: !2254, inlinedAt: !2270)
!2273 = !DILocation(line: 160, column: 130, scope: !2254, inlinedAt: !2270)
!2274 = !DILocation(line: 162, column: 7, scope: !2275, inlinedAt: !2270)
!2275 = distinct !DILexicalBlock(scope: !2254, file: !2255, line: 162, column: 7)
!2276 = !DILocalVariable(name: "s2", arg: 2, scope: !2277, file: !2255, line: 146, type: !35)
!2277 = distinct !DISubprogram(name: "strcaseeq1", scope: !2255, file: !2255, line: 146, type: !2278, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!24, !35, !35, !22, !22, !22, !22, !22, !22, !22, !22}
!2280 = !{!2281, !2276, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289}
!2281 = !DILocalVariable(name: "s1", arg: 1, scope: !2277, file: !2255, line: 146, type: !35)
!2282 = !DILocalVariable(name: "s21", arg: 3, scope: !2277, file: !2255, line: 146, type: !22)
!2283 = !DILocalVariable(name: "s22", arg: 4, scope: !2277, file: !2255, line: 146, type: !22)
!2284 = !DILocalVariable(name: "s23", arg: 5, scope: !2277, file: !2255, line: 146, type: !22)
!2285 = !DILocalVariable(name: "s24", arg: 6, scope: !2277, file: !2255, line: 146, type: !22)
!2286 = !DILocalVariable(name: "s25", arg: 7, scope: !2277, file: !2255, line: 146, type: !22)
!2287 = !DILocalVariable(name: "s26", arg: 8, scope: !2277, file: !2255, line: 146, type: !22)
!2288 = !DILocalVariable(name: "s27", arg: 9, scope: !2277, file: !2255, line: 146, type: !22)
!2289 = !DILocalVariable(name: "s28", arg: 10, scope: !2277, file: !2255, line: 146, type: !22)
!2290 = !DILocation(line: 146, column: 41, scope: !2277, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 167, column: 16, scope: !2292, inlinedAt: !2270)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !2255, line: 164, column: 11)
!2293 = distinct !DILexicalBlock(scope: !2275, file: !2255, line: 163, column: 5)
!2294 = !DILocation(line: 146, column: 110, scope: !2277, inlinedAt: !2291)
!2295 = !DILocation(line: 146, column: 120, scope: !2277, inlinedAt: !2291)
!2296 = !DILocation(line: 148, column: 7, scope: !2297, inlinedAt: !2291)
!2297 = distinct !DILexicalBlock(scope: !2277, file: !2255, line: 148, column: 7)
!2298 = !DILocalVariable(name: "s2", arg: 2, scope: !2299, file: !2255, line: 132, type: !35)
!2299 = distinct !DISubprogram(name: "strcaseeq2", scope: !2255, file: !2255, line: 132, type: !2300, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!24, !35, !35, !22, !22, !22, !22, !22, !22, !22}
!2302 = !{!2303, !2298, !2304, !2305, !2306, !2307, !2308, !2309, !2310}
!2303 = !DILocalVariable(name: "s1", arg: 1, scope: !2299, file: !2255, line: 132, type: !35)
!2304 = !DILocalVariable(name: "s22", arg: 3, scope: !2299, file: !2255, line: 132, type: !22)
!2305 = !DILocalVariable(name: "s23", arg: 4, scope: !2299, file: !2255, line: 132, type: !22)
!2306 = !DILocalVariable(name: "s24", arg: 5, scope: !2299, file: !2255, line: 132, type: !22)
!2307 = !DILocalVariable(name: "s25", arg: 6, scope: !2299, file: !2255, line: 132, type: !22)
!2308 = !DILocalVariable(name: "s26", arg: 7, scope: !2299, file: !2255, line: 132, type: !22)
!2309 = !DILocalVariable(name: "s27", arg: 8, scope: !2299, file: !2255, line: 132, type: !22)
!2310 = !DILocalVariable(name: "s28", arg: 9, scope: !2299, file: !2255, line: 132, type: !22)
!2311 = !DILocation(line: 132, column: 41, scope: !2299, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 153, column: 16, scope: !2313, inlinedAt: !2291)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !2255, line: 150, column: 11)
!2314 = distinct !DILexicalBlock(scope: !2297, file: !2255, line: 149, column: 5)
!2315 = !DILocation(line: 132, column: 100, scope: !2299, inlinedAt: !2312)
!2316 = !DILocation(line: 132, column: 110, scope: !2299, inlinedAt: !2312)
!2317 = !DILocation(line: 134, column: 7, scope: !2318, inlinedAt: !2312)
!2318 = distinct !DILexicalBlock(scope: !2299, file: !2255, line: 134, column: 7)
!2319 = !DILocalVariable(name: "s2", arg: 2, scope: !2320, file: !2255, line: 118, type: !35)
!2320 = distinct !DISubprogram(name: "strcaseeq3", scope: !2255, file: !2255, line: 118, type: !2321, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!24, !35, !35, !22, !22, !22, !22, !22, !22}
!2323 = !{!2324, !2319, !2325, !2326, !2327, !2328, !2329, !2330}
!2324 = !DILocalVariable(name: "s1", arg: 1, scope: !2320, file: !2255, line: 118, type: !35)
!2325 = !DILocalVariable(name: "s23", arg: 3, scope: !2320, file: !2255, line: 118, type: !22)
!2326 = !DILocalVariable(name: "s24", arg: 4, scope: !2320, file: !2255, line: 118, type: !22)
!2327 = !DILocalVariable(name: "s25", arg: 5, scope: !2320, file: !2255, line: 118, type: !22)
!2328 = !DILocalVariable(name: "s26", arg: 6, scope: !2320, file: !2255, line: 118, type: !22)
!2329 = !DILocalVariable(name: "s27", arg: 7, scope: !2320, file: !2255, line: 118, type: !22)
!2330 = !DILocalVariable(name: "s28", arg: 8, scope: !2320, file: !2255, line: 118, type: !22)
!2331 = !DILocation(line: 118, column: 41, scope: !2320, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 139, column: 16, scope: !2333, inlinedAt: !2312)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !2255, line: 136, column: 11)
!2334 = distinct !DILexicalBlock(scope: !2318, file: !2255, line: 135, column: 5)
!2335 = !DILocation(line: 118, column: 90, scope: !2320, inlinedAt: !2332)
!2336 = !DILocation(line: 118, column: 100, scope: !2320, inlinedAt: !2332)
!2337 = !DILocation(line: 120, column: 7, scope: !2338, inlinedAt: !2332)
!2338 = distinct !DILexicalBlock(scope: !2320, file: !2255, line: 120, column: 7)
!2339 = !DILocation(line: 120, column: 7, scope: !2320, inlinedAt: !2332)
!2340 = !DILocalVariable(name: "s2", arg: 2, scope: !2341, file: !2255, line: 104, type: !35)
!2341 = distinct !DISubprogram(name: "strcaseeq4", scope: !2255, file: !2255, line: 104, type: !2342, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!24, !35, !35, !22, !22, !22, !22, !22}
!2344 = !{!2345, !2340, !2346, !2347, !2348, !2349, !2350}
!2345 = !DILocalVariable(name: "s1", arg: 1, scope: !2341, file: !2255, line: 104, type: !35)
!2346 = !DILocalVariable(name: "s24", arg: 3, scope: !2341, file: !2255, line: 104, type: !22)
!2347 = !DILocalVariable(name: "s25", arg: 4, scope: !2341, file: !2255, line: 104, type: !22)
!2348 = !DILocalVariable(name: "s26", arg: 5, scope: !2341, file: !2255, line: 104, type: !22)
!2349 = !DILocalVariable(name: "s27", arg: 6, scope: !2341, file: !2255, line: 104, type: !22)
!2350 = !DILocalVariable(name: "s28", arg: 7, scope: !2341, file: !2255, line: 104, type: !22)
!2351 = !DILocation(line: 104, column: 41, scope: !2341, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 125, column: 16, scope: !2353, inlinedAt: !2332)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !2255, line: 122, column: 11)
!2354 = distinct !DILexicalBlock(scope: !2338, file: !2255, line: 121, column: 5)
!2355 = !DILocation(line: 104, column: 80, scope: !2341, inlinedAt: !2352)
!2356 = !DILocation(line: 104, column: 90, scope: !2341, inlinedAt: !2352)
!2357 = !DILocation(line: 106, column: 7, scope: !2358, inlinedAt: !2352)
!2358 = distinct !DILexicalBlock(scope: !2341, file: !2255, line: 106, column: 7)
!2359 = !DILocation(line: 106, column: 7, scope: !2341, inlinedAt: !2352)
!2360 = !DILocalVariable(name: "s2", arg: 2, scope: !2361, file: !2255, line: 90, type: !35)
!2361 = distinct !DISubprogram(name: "strcaseeq5", scope: !2255, file: !2255, line: 90, type: !2362, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!24, !35, !35, !22, !22, !22, !22}
!2364 = !{!2365, !2360, !2366, !2367, !2368, !2369}
!2365 = !DILocalVariable(name: "s1", arg: 1, scope: !2361, file: !2255, line: 90, type: !35)
!2366 = !DILocalVariable(name: "s25", arg: 3, scope: !2361, file: !2255, line: 90, type: !22)
!2367 = !DILocalVariable(name: "s26", arg: 4, scope: !2361, file: !2255, line: 90, type: !22)
!2368 = !DILocalVariable(name: "s27", arg: 5, scope: !2361, file: !2255, line: 90, type: !22)
!2369 = !DILocalVariable(name: "s28", arg: 6, scope: !2361, file: !2255, line: 90, type: !22)
!2370 = !DILocation(line: 90, column: 41, scope: !2361, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 111, column: 16, scope: !2372, inlinedAt: !2352)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !2255, line: 108, column: 11)
!2373 = distinct !DILexicalBlock(scope: !2358, file: !2255, line: 107, column: 5)
!2374 = !DILocation(line: 90, column: 70, scope: !2361, inlinedAt: !2371)
!2375 = !DILocation(line: 90, column: 80, scope: !2361, inlinedAt: !2371)
!2376 = !DILocation(line: 92, column: 7, scope: !2377, inlinedAt: !2371)
!2377 = distinct !DILexicalBlock(scope: !2361, file: !2255, line: 92, column: 7)
!2378 = !DILocation(line: 92, column: 7, scope: !2361, inlinedAt: !2371)
!2379 = !DILocation(line: 227, column: 12, scope: !2271)
!2380 = !DILocation(line: 227, column: 21, scope: !2271)
!2381 = !DILocation(line: 227, column: 5, scope: !2271)
!2382 = !DILocation(line: 146, column: 41, scope: !2277, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 167, column: 16, scope: !2292, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 228, column: 7, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2236, file: !249, line: 228, column: 7)
!2386 = !DILocation(line: 146, column: 110, scope: !2277, inlinedAt: !2383)
!2387 = !DILocation(line: 146, column: 120, scope: !2277, inlinedAt: !2383)
!2388 = !DILocation(line: 148, column: 7, scope: !2297, inlinedAt: !2383)
!2389 = !DILocation(line: 132, column: 41, scope: !2299, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 153, column: 16, scope: !2313, inlinedAt: !2383)
!2391 = !DILocation(line: 132, column: 100, scope: !2299, inlinedAt: !2390)
!2392 = !DILocation(line: 132, column: 110, scope: !2299, inlinedAt: !2390)
!2393 = !DILocation(line: 134, column: 7, scope: !2318, inlinedAt: !2390)
!2394 = !DILocation(line: 134, column: 7, scope: !2299, inlinedAt: !2390)
!2395 = !DILocation(line: 118, column: 41, scope: !2320, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 139, column: 16, scope: !2333, inlinedAt: !2390)
!2397 = !DILocation(line: 118, column: 90, scope: !2320, inlinedAt: !2396)
!2398 = !DILocation(line: 118, column: 100, scope: !2320, inlinedAt: !2396)
!2399 = !DILocation(line: 120, column: 7, scope: !2338, inlinedAt: !2396)
!2400 = !DILocation(line: 120, column: 7, scope: !2320, inlinedAt: !2396)
!2401 = !DILocation(line: 104, column: 41, scope: !2341, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 125, column: 16, scope: !2353, inlinedAt: !2396)
!2403 = !DILocation(line: 104, column: 80, scope: !2341, inlinedAt: !2402)
!2404 = !DILocation(line: 104, column: 90, scope: !2341, inlinedAt: !2402)
!2405 = !DILocation(line: 106, column: 7, scope: !2358, inlinedAt: !2402)
!2406 = !DILocation(line: 106, column: 7, scope: !2341, inlinedAt: !2402)
!2407 = !DILocation(line: 90, column: 41, scope: !2361, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 111, column: 16, scope: !2372, inlinedAt: !2402)
!2409 = !DILocation(line: 90, column: 70, scope: !2361, inlinedAt: !2408)
!2410 = !DILocation(line: 90, column: 80, scope: !2361, inlinedAt: !2408)
!2411 = !DILocation(line: 92, column: 7, scope: !2377, inlinedAt: !2408)
!2412 = !DILocation(line: 92, column: 7, scope: !2361, inlinedAt: !2408)
!2413 = !DILocalVariable(name: "s2", arg: 2, scope: !2414, file: !2255, line: 76, type: !35)
!2414 = distinct !DISubprogram(name: "strcaseeq6", scope: !2255, file: !2255, line: 76, type: !2415, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!24, !35, !35, !22, !22, !22}
!2417 = !{!2418, !2413, !2419, !2420, !2421}
!2418 = !DILocalVariable(name: "s1", arg: 1, scope: !2414, file: !2255, line: 76, type: !35)
!2419 = !DILocalVariable(name: "s26", arg: 3, scope: !2414, file: !2255, line: 76, type: !22)
!2420 = !DILocalVariable(name: "s27", arg: 4, scope: !2414, file: !2255, line: 76, type: !22)
!2421 = !DILocalVariable(name: "s28", arg: 5, scope: !2414, file: !2255, line: 76, type: !22)
!2422 = !DILocation(line: 76, column: 41, scope: !2414, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 97, column: 16, scope: !2424, inlinedAt: !2408)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !2255, line: 94, column: 11)
!2425 = distinct !DILexicalBlock(scope: !2377, file: !2255, line: 93, column: 5)
!2426 = !DILocation(line: 76, column: 60, scope: !2414, inlinedAt: !2423)
!2427 = !DILocation(line: 76, column: 70, scope: !2414, inlinedAt: !2423)
!2428 = !DILocation(line: 78, column: 7, scope: !2429, inlinedAt: !2423)
!2429 = distinct !DILexicalBlock(scope: !2414, file: !2255, line: 78, column: 7)
!2430 = !DILocation(line: 78, column: 7, scope: !2414, inlinedAt: !2423)
!2431 = !DILocalVariable(name: "s2", arg: 2, scope: !2432, file: !2255, line: 62, type: !35)
!2432 = distinct !DISubprogram(name: "strcaseeq7", scope: !2255, file: !2255, line: 62, type: !2433, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!24, !35, !35, !22, !22}
!2435 = !{!2436, !2431, !2437, !2438}
!2436 = !DILocalVariable(name: "s1", arg: 1, scope: !2432, file: !2255, line: 62, type: !35)
!2437 = !DILocalVariable(name: "s27", arg: 3, scope: !2432, file: !2255, line: 62, type: !22)
!2438 = !DILocalVariable(name: "s28", arg: 4, scope: !2432, file: !2255, line: 62, type: !22)
!2439 = !DILocation(line: 62, column: 41, scope: !2432, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 83, column: 16, scope: !2441, inlinedAt: !2423)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !2255, line: 80, column: 11)
!2442 = distinct !DILexicalBlock(scope: !2429, file: !2255, line: 79, column: 5)
!2443 = !DILocation(line: 62, column: 50, scope: !2432, inlinedAt: !2440)
!2444 = !DILocation(line: 62, column: 60, scope: !2432, inlinedAt: !2440)
!2445 = !DILocation(line: 64, column: 7, scope: !2446, inlinedAt: !2440)
!2446 = distinct !DILexicalBlock(scope: !2432, file: !2255, line: 64, column: 7)
!2447 = !DILocation(line: 228, column: 7, scope: !2236)
!2448 = !DILocation(line: 229, column: 12, scope: !2385)
!2449 = !DILocation(line: 229, column: 21, scope: !2385)
!2450 = !DILocation(line: 229, column: 5, scope: !2385)
!2451 = !DILocation(line: 231, column: 13, scope: !2236)
!2452 = !DILocation(line: 231, column: 11, scope: !2236)
!2453 = !DILocation(line: 231, column: 3, scope: !2236)
!2454 = !DILocation(line: 232, column: 1, scope: !2236)
!2455 = distinct !DISubprogram(name: "quotearg_alloc", scope: !249, file: !249, line: 791, type: !2456, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2458)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!21, !35, !102, !1582}
!2458 = !{!2459, !2460, !2461}
!2459 = !DILocalVariable(name: "arg", arg: 1, scope: !2455, file: !249, line: 791, type: !35)
!2460 = !DILocalVariable(name: "argsize", arg: 2, scope: !2455, file: !249, line: 791, type: !102)
!2461 = !DILocalVariable(name: "o", arg: 3, scope: !2455, file: !249, line: 792, type: !1582)
!2462 = !DILocation(line: 791, column: 29, scope: !2455)
!2463 = !DILocation(line: 791, column: 41, scope: !2455)
!2464 = !DILocation(line: 792, column: 47, scope: !2455)
!2465 = !DILocalVariable(name: "arg", arg: 1, scope: !2466, file: !249, line: 804, type: !35)
!2466 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !249, file: !249, line: 804, type: !2467, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!21, !35, !102, !101, !1582}
!2469 = !{!2465, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477}
!2470 = !DILocalVariable(name: "argsize", arg: 2, scope: !2466, file: !249, line: 804, type: !102)
!2471 = !DILocalVariable(name: "size", arg: 3, scope: !2466, file: !249, line: 804, type: !101)
!2472 = !DILocalVariable(name: "o", arg: 4, scope: !2466, file: !249, line: 805, type: !1582)
!2473 = !DILocalVariable(name: "p", scope: !2466, file: !249, line: 807, type: !1582)
!2474 = !DILocalVariable(name: "e", scope: !2466, file: !249, line: 808, type: !24)
!2475 = !DILocalVariable(name: "flags", scope: !2466, file: !249, line: 810, type: !24)
!2476 = !DILocalVariable(name: "bufsize", scope: !2466, file: !249, line: 811, type: !102)
!2477 = !DILocalVariable(name: "buf", scope: !2466, file: !249, line: 815, type: !21)
!2478 = !DILocation(line: 804, column: 33, scope: !2466, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 794, column: 10, scope: !2455)
!2480 = !DILocation(line: 804, column: 45, scope: !2466, inlinedAt: !2479)
!2481 = !DILocation(line: 804, column: 62, scope: !2466, inlinedAt: !2479)
!2482 = !DILocation(line: 805, column: 51, scope: !2466, inlinedAt: !2479)
!2483 = !DILocation(line: 807, column: 37, scope: !2466, inlinedAt: !2479)
!2484 = !DILocation(line: 807, column: 33, scope: !2466, inlinedAt: !2479)
!2485 = !DILocation(line: 808, column: 11, scope: !2466, inlinedAt: !2479)
!2486 = !DILocation(line: 808, column: 7, scope: !2466, inlinedAt: !2479)
!2487 = !DILocation(line: 810, column: 18, scope: !2466, inlinedAt: !2479)
!2488 = !DILocation(line: 810, column: 24, scope: !2466, inlinedAt: !2479)
!2489 = !DILocation(line: 810, column: 7, scope: !2466, inlinedAt: !2479)
!2490 = !DILocation(line: 811, column: 69, scope: !2466, inlinedAt: !2479)
!2491 = !DILocation(line: 812, column: 53, scope: !2466, inlinedAt: !2479)
!2492 = !DILocation(line: 813, column: 49, scope: !2466, inlinedAt: !2479)
!2493 = !DILocation(line: 814, column: 49, scope: !2466, inlinedAt: !2479)
!2494 = !DILocation(line: 811, column: 20, scope: !2466, inlinedAt: !2479)
!2495 = !DILocation(line: 814, column: 62, scope: !2466, inlinedAt: !2479)
!2496 = !DILocation(line: 811, column: 10, scope: !2466, inlinedAt: !2479)
!2497 = !DILocalVariable(name: "n", arg: 1, scope: !2498, file: !97, line: 220, type: !102)
!2498 = distinct !DISubprogram(name: "xcharalloc", scope: !97, file: !97, line: 220, type: !2499, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!21, !102}
!2501 = !{!2497}
!2502 = !DILocation(line: 220, column: 20, scope: !2498, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 815, column: 15, scope: !2466, inlinedAt: !2479)
!2504 = !DILocation(line: 222, column: 10, scope: !2498, inlinedAt: !2503)
!2505 = !DILocation(line: 815, column: 9, scope: !2466, inlinedAt: !2479)
!2506 = !DILocation(line: 816, column: 60, scope: !2466, inlinedAt: !2479)
!2507 = !DILocation(line: 818, column: 32, scope: !2466, inlinedAt: !2479)
!2508 = !DILocation(line: 818, column: 47, scope: !2466, inlinedAt: !2479)
!2509 = !DILocation(line: 816, column: 3, scope: !2466, inlinedAt: !2479)
!2510 = !DILocation(line: 819, column: 9, scope: !2466, inlinedAt: !2479)
!2511 = !DILocation(line: 794, column: 3, scope: !2455)
!2512 = !DILocation(line: 804, column: 33, scope: !2466)
!2513 = !DILocation(line: 804, column: 45, scope: !2466)
!2514 = !DILocation(line: 804, column: 62, scope: !2466)
!2515 = !DILocation(line: 805, column: 51, scope: !2466)
!2516 = !DILocation(line: 807, column: 37, scope: !2466)
!2517 = !DILocation(line: 807, column: 33, scope: !2466)
!2518 = !DILocation(line: 808, column: 11, scope: !2466)
!2519 = !DILocation(line: 808, column: 7, scope: !2466)
!2520 = !DILocation(line: 810, column: 18, scope: !2466)
!2521 = !DILocation(line: 810, column: 27, scope: !2466)
!2522 = !DILocation(line: 810, column: 24, scope: !2466)
!2523 = !DILocation(line: 810, column: 7, scope: !2466)
!2524 = !DILocation(line: 811, column: 69, scope: !2466)
!2525 = !DILocation(line: 812, column: 53, scope: !2466)
!2526 = !DILocation(line: 813, column: 49, scope: !2466)
!2527 = !DILocation(line: 814, column: 49, scope: !2466)
!2528 = !DILocation(line: 811, column: 20, scope: !2466)
!2529 = !DILocation(line: 814, column: 62, scope: !2466)
!2530 = !DILocation(line: 811, column: 10, scope: !2466)
!2531 = !DILocation(line: 220, column: 20, scope: !2498, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 815, column: 15, scope: !2466)
!2533 = !DILocation(line: 222, column: 10, scope: !2498, inlinedAt: !2532)
!2534 = !DILocation(line: 815, column: 9, scope: !2466)
!2535 = !DILocation(line: 816, column: 60, scope: !2466)
!2536 = !DILocation(line: 818, column: 32, scope: !2466)
!2537 = !DILocation(line: 818, column: 47, scope: !2466)
!2538 = !DILocation(line: 816, column: 3, scope: !2466)
!2539 = !DILocation(line: 819, column: 9, scope: !2466)
!2540 = !DILocation(line: 820, column: 7, scope: !2466)
!2541 = !DILocation(line: 821, column: 11, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2466, file: !249, line: 820, column: 7)
!2543 = !DILocation(line: 821, column: 5, scope: !2542)
!2544 = !DILocation(line: 822, column: 3, scope: !2466)
!2545 = distinct !DISubprogram(name: "quotearg_free", scope: !249, file: !249, line: 840, type: !712, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2546)
!2546 = !{!2547, !2548}
!2547 = !DILocalVariable(name: "sv", scope: !2545, file: !249, line: 842, type: !275)
!2548 = !DILocalVariable(name: "i", scope: !2545, file: !249, line: 843, type: !24)
!2549 = !DILocation(line: 842, column: 24, scope: !2545)
!2550 = !DILocation(line: 842, column: 19, scope: !2545)
!2551 = !DILocation(line: 843, column: 7, scope: !2545)
!2552 = !DILocation(line: 844, column: 19, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !249, line: 844, column: 3)
!2554 = distinct !DILexicalBlock(scope: !2545, file: !249, line: 844, column: 3)
!2555 = !DILocation(line: 844, column: 17, scope: !2553)
!2556 = !DILocation(line: 844, column: 3, scope: !2554)
!2557 = !DILocation(line: 845, column: 17, scope: !2553)
!2558 = !{!2559, !704, i64 8}
!2559 = !{!"slotvec", !862, i64 0, !704, i64 8}
!2560 = !DILocation(line: 845, column: 5, scope: !2553)
!2561 = !DILocation(line: 844, column: 28, scope: !2553)
!2562 = distinct !{!2562, !2556, !2563}
!2563 = !DILocation(line: 845, column: 20, scope: !2554)
!2564 = !DILocation(line: 846, column: 13, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2545, file: !249, line: 846, column: 7)
!2566 = !DILocation(line: 846, column: 17, scope: !2565)
!2567 = !DILocation(line: 846, column: 7, scope: !2545)
!2568 = !DILocation(line: 848, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !249, line: 847, column: 5)
!2570 = !DILocation(line: 849, column: 21, scope: !2569)
!2571 = !{!2559, !862, i64 0}
!2572 = !DILocation(line: 850, column: 20, scope: !2569)
!2573 = !DILocation(line: 851, column: 5, scope: !2569)
!2574 = !DILocation(line: 852, column: 10, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2545, file: !249, line: 852, column: 7)
!2576 = !DILocation(line: 852, column: 7, scope: !2545)
!2577 = !DILocation(line: 854, column: 13, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2575, file: !249, line: 853, column: 5)
!2579 = !DILocation(line: 854, column: 7, scope: !2578)
!2580 = !DILocation(line: 855, column: 15, scope: !2578)
!2581 = !DILocation(line: 856, column: 5, scope: !2578)
!2582 = !DILocation(line: 857, column: 10, scope: !2545)
!2583 = !DILocation(line: 858, column: 1, scope: !2545)
!2584 = distinct !DISubprogram(name: "quotearg_n", scope: !249, file: !249, line: 922, type: !2585, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!21, !24, !35}
!2587 = !{!2588, !2589}
!2588 = !DILocalVariable(name: "n", arg: 1, scope: !2584, file: !249, line: 922, type: !24)
!2589 = !DILocalVariable(name: "arg", arg: 2, scope: !2584, file: !249, line: 922, type: !35)
!2590 = !DILocation(line: 922, column: 17, scope: !2584)
!2591 = !DILocation(line: 922, column: 32, scope: !2584)
!2592 = !DILocation(line: 924, column: 10, scope: !2584)
!2593 = !DILocation(line: 924, column: 3, scope: !2584)
!2594 = distinct !DISubprogram(name: "quotearg_n_options", scope: !249, file: !249, line: 869, type: !2595, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!21, !24, !35, !102, !1582}
!2597 = !{!2598, !2599, !2600, !2601, !2602, !2603, !2604, !2607, !2609, !2610, !2611}
!2598 = !DILocalVariable(name: "n", arg: 1, scope: !2594, file: !249, line: 869, type: !24)
!2599 = !DILocalVariable(name: "arg", arg: 2, scope: !2594, file: !249, line: 869, type: !35)
!2600 = !DILocalVariable(name: "argsize", arg: 3, scope: !2594, file: !249, line: 869, type: !102)
!2601 = !DILocalVariable(name: "options", arg: 4, scope: !2594, file: !249, line: 870, type: !1582)
!2602 = !DILocalVariable(name: "e", scope: !2594, file: !249, line: 872, type: !24)
!2603 = !DILocalVariable(name: "sv", scope: !2594, file: !249, line: 874, type: !275)
!2604 = !DILocalVariable(name: "preallocated", scope: !2605, file: !249, line: 881, type: !198)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !249, line: 880, column: 5)
!2606 = distinct !DILexicalBlock(scope: !2594, file: !249, line: 879, column: 7)
!2607 = !DILocalVariable(name: "size", scope: !2608, file: !249, line: 894, type: !102)
!2608 = distinct !DILexicalBlock(scope: !2594, file: !249, line: 893, column: 3)
!2609 = !DILocalVariable(name: "val", scope: !2608, file: !249, line: 895, type: !21)
!2610 = !DILocalVariable(name: "flags", scope: !2608, file: !249, line: 897, type: !24)
!2611 = !DILocalVariable(name: "qsize", scope: !2608, file: !249, line: 898, type: !102)
!2612 = !DILocation(line: 869, column: 25, scope: !2594)
!2613 = !DILocation(line: 869, column: 40, scope: !2594)
!2614 = !DILocation(line: 869, column: 52, scope: !2594)
!2615 = !DILocation(line: 870, column: 51, scope: !2594)
!2616 = !DILocation(line: 872, column: 11, scope: !2594)
!2617 = !DILocation(line: 872, column: 7, scope: !2594)
!2618 = !DILocation(line: 874, column: 24, scope: !2594)
!2619 = !DILocation(line: 874, column: 19, scope: !2594)
!2620 = !DILocation(line: 876, column: 9, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2594, file: !249, line: 876, column: 7)
!2622 = !DILocation(line: 876, column: 7, scope: !2594)
!2623 = !DILocation(line: 877, column: 5, scope: !2621)
!2624 = !DILocation(line: 879, column: 7, scope: !2606)
!2625 = !DILocation(line: 879, column: 14, scope: !2606)
!2626 = !DILocation(line: 879, column: 7, scope: !2594)
!2627 = !DILocation(line: 881, column: 31, scope: !2605)
!2628 = !DILocation(line: 883, column: 67, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2605, file: !249, line: 883, column: 11)
!2630 = !DILocation(line: 883, column: 11, scope: !2605)
!2631 = !DILocation(line: 884, column: 9, scope: !2629)
!2632 = !DILocation(line: 886, column: 32, scope: !2605)
!2633 = !DILocation(line: 886, column: 61, scope: !2605)
!2634 = !DILocation(line: 886, column: 58, scope: !2605)
!2635 = !DILocation(line: 886, column: 66, scope: !2605)
!2636 = !DILocation(line: 886, column: 22, scope: !2605)
!2637 = !DILocation(line: 886, column: 15, scope: !2605)
!2638 = !DILocation(line: 887, column: 11, scope: !2605)
!2639 = !DILocation(line: 888, column: 15, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2605, file: !249, line: 887, column: 11)
!2641 = !{i64 0, i64 8, !861, i64 8, i64 8, !703}
!2642 = !DILocation(line: 888, column: 9, scope: !2640)
!2643 = !DILocation(line: 889, column: 20, scope: !2605)
!2644 = !DILocation(line: 889, column: 18, scope: !2605)
!2645 = !DILocation(line: 889, column: 7, scope: !2605)
!2646 = !DILocation(line: 889, column: 38, scope: !2605)
!2647 = !DILocation(line: 889, column: 31, scope: !2605)
!2648 = !DILocation(line: 889, column: 48, scope: !2605)
!2649 = !DILocation(line: 890, column: 14, scope: !2605)
!2650 = !DILocation(line: 891, column: 5, scope: !2605)
!2651 = !DILocation(line: 894, column: 19, scope: !2608)
!2652 = !DILocation(line: 894, column: 25, scope: !2608)
!2653 = !DILocation(line: 894, column: 12, scope: !2608)
!2654 = !DILocation(line: 895, column: 23, scope: !2608)
!2655 = !DILocation(line: 895, column: 11, scope: !2608)
!2656 = !DILocation(line: 897, column: 26, scope: !2608)
!2657 = !DILocation(line: 897, column: 32, scope: !2608)
!2658 = !DILocation(line: 897, column: 9, scope: !2608)
!2659 = !DILocation(line: 899, column: 55, scope: !2608)
!2660 = !DILocation(line: 900, column: 46, scope: !2608)
!2661 = !DILocation(line: 901, column: 55, scope: !2608)
!2662 = !DILocation(line: 902, column: 55, scope: !2608)
!2663 = !DILocation(line: 898, column: 20, scope: !2608)
!2664 = !DILocation(line: 898, column: 12, scope: !2608)
!2665 = !DILocation(line: 904, column: 14, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2608, file: !249, line: 904, column: 9)
!2667 = !DILocation(line: 904, column: 9, scope: !2608)
!2668 = !DILocation(line: 906, column: 35, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !249, line: 905, column: 7)
!2670 = !DILocation(line: 906, column: 20, scope: !2669)
!2671 = !DILocation(line: 907, column: 17, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !249, line: 907, column: 13)
!2673 = !DILocation(line: 907, column: 13, scope: !2669)
!2674 = !DILocation(line: 908, column: 11, scope: !2672)
!2675 = !DILocation(line: 220, column: 20, scope: !2498, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 909, column: 27, scope: !2669)
!2677 = !DILocation(line: 222, column: 10, scope: !2498, inlinedAt: !2676)
!2678 = !DILocation(line: 909, column: 19, scope: !2669)
!2679 = !DILocation(line: 910, column: 69, scope: !2669)
!2680 = !DILocation(line: 912, column: 44, scope: !2669)
!2681 = !DILocation(line: 913, column: 44, scope: !2669)
!2682 = !DILocation(line: 910, column: 9, scope: !2669)
!2683 = !DILocation(line: 914, column: 7, scope: !2669)
!2684 = !DILocation(line: 916, column: 11, scope: !2608)
!2685 = !DILocation(line: 917, column: 5, scope: !2608)
!2686 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !249, file: !249, line: 928, type: !2687, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2689)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!21, !24, !35, !102}
!2689 = !{!2690, !2691, !2692}
!2690 = !DILocalVariable(name: "n", arg: 1, scope: !2686, file: !249, line: 928, type: !24)
!2691 = !DILocalVariable(name: "arg", arg: 2, scope: !2686, file: !249, line: 928, type: !35)
!2692 = !DILocalVariable(name: "argsize", arg: 3, scope: !2686, file: !249, line: 928, type: !102)
!2693 = !DILocation(line: 928, column: 21, scope: !2686)
!2694 = !DILocation(line: 928, column: 36, scope: !2686)
!2695 = !DILocation(line: 928, column: 48, scope: !2686)
!2696 = !DILocation(line: 930, column: 10, scope: !2686)
!2697 = !DILocation(line: 930, column: 3, scope: !2686)
!2698 = distinct !DISubprogram(name: "quotearg", scope: !249, file: !249, line: 934, type: !2699, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!21, !35}
!2701 = !{!2702}
!2702 = !DILocalVariable(name: "arg", arg: 1, scope: !2698, file: !249, line: 934, type: !35)
!2703 = !DILocation(line: 934, column: 23, scope: !2698)
!2704 = !DILocation(line: 922, column: 17, scope: !2584, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 936, column: 10, scope: !2698)
!2706 = !DILocation(line: 922, column: 32, scope: !2584, inlinedAt: !2705)
!2707 = !DILocation(line: 924, column: 10, scope: !2584, inlinedAt: !2705)
!2708 = !DILocation(line: 936, column: 3, scope: !2698)
!2709 = distinct !DISubprogram(name: "quotearg_mem", scope: !249, file: !249, line: 940, type: !2710, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!21, !35, !102}
!2712 = !{!2713, !2714}
!2713 = !DILocalVariable(name: "arg", arg: 1, scope: !2709, file: !249, line: 940, type: !35)
!2714 = !DILocalVariable(name: "argsize", arg: 2, scope: !2709, file: !249, line: 940, type: !102)
!2715 = !DILocation(line: 940, column: 27, scope: !2709)
!2716 = !DILocation(line: 940, column: 39, scope: !2709)
!2717 = !DILocation(line: 928, column: 21, scope: !2686, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 942, column: 10, scope: !2709)
!2719 = !DILocation(line: 928, column: 36, scope: !2686, inlinedAt: !2718)
!2720 = !DILocation(line: 928, column: 48, scope: !2686, inlinedAt: !2718)
!2721 = !DILocation(line: 930, column: 10, scope: !2686, inlinedAt: !2718)
!2722 = !DILocation(line: 942, column: 3, scope: !2709)
!2723 = distinct !DISubprogram(name: "quotearg_n_style", scope: !249, file: !249, line: 946, type: !2724, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!21, !24, !73, !35}
!2726 = !{!2727, !2728, !2729, !2730}
!2727 = !DILocalVariable(name: "n", arg: 1, scope: !2723, file: !249, line: 946, type: !24)
!2728 = !DILocalVariable(name: "s", arg: 2, scope: !2723, file: !249, line: 946, type: !73)
!2729 = !DILocalVariable(name: "arg", arg: 3, scope: !2723, file: !249, line: 946, type: !35)
!2730 = !DILocalVariable(name: "o", scope: !2723, file: !249, line: 948, type: !1583)
!2731 = !DILocalVariable(name: "o", scope: !2732, file: !249, line: 187, type: !256)
!2732 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !249, file: !249, line: 185, type: !2733, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!256, !73}
!2735 = !{!2736, !2731}
!2736 = !DILocalVariable(name: "style", arg: 1, scope: !2732, file: !249, line: 185, type: !73)
!2737 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2738 = !DILocation(line: 187, column: 26, scope: !2732, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 948, column: 36, scope: !2723)
!2740 = !DILocation(line: 946, column: 23, scope: !2723)
!2741 = !DILocation(line: 946, column: 45, scope: !2723)
!2742 = !DILocation(line: 946, column: 60, scope: !2723)
!2743 = !DILocation(line: 948, column: 3, scope: !2723)
!2744 = !DILocation(line: 948, column: 32, scope: !2723)
!2745 = !DILocation(line: 185, column: 48, scope: !2732, inlinedAt: !2739)
!2746 = !DILocation(line: 187, column: 3, scope: !2732, inlinedAt: !2739)
!2747 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2748 = !DILocation(line: 188, column: 13, scope: !2749, inlinedAt: !2739)
!2749 = distinct !DILexicalBlock(scope: !2732, file: !249, line: 188, column: 7)
!2750 = !DILocation(line: 188, column: 7, scope: !2732, inlinedAt: !2739)
!2751 = !DILocation(line: 189, column: 5, scope: !2749, inlinedAt: !2739)
!2752 = !{!2753}
!2753 = distinct !{!2753, !2754, !"quoting_options_from_style: argument 0"}
!2754 = distinct !{!2754, !"quoting_options_from_style"}
!2755 = !DILocation(line: 191, column: 10, scope: !2732, inlinedAt: !2739)
!2756 = !DILocation(line: 192, column: 1, scope: !2732, inlinedAt: !2739)
!2757 = !DILocation(line: 949, column: 10, scope: !2723)
!2758 = !DILocation(line: 950, column: 1, scope: !2723)
!2759 = !DILocation(line: 949, column: 3, scope: !2723)
!2760 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !249, file: !249, line: 953, type: !2761, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!21, !24, !73, !35, !102}
!2763 = !{!2764, !2765, !2766, !2767, !2768}
!2764 = !DILocalVariable(name: "n", arg: 1, scope: !2760, file: !249, line: 953, type: !24)
!2765 = !DILocalVariable(name: "s", arg: 2, scope: !2760, file: !249, line: 953, type: !73)
!2766 = !DILocalVariable(name: "arg", arg: 3, scope: !2760, file: !249, line: 954, type: !35)
!2767 = !DILocalVariable(name: "argsize", arg: 4, scope: !2760, file: !249, line: 954, type: !102)
!2768 = !DILocalVariable(name: "o", scope: !2760, file: !249, line: 956, type: !1583)
!2769 = !DILocation(line: 187, column: 26, scope: !2732, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 956, column: 36, scope: !2760)
!2771 = !DILocation(line: 953, column: 27, scope: !2760)
!2772 = !DILocation(line: 953, column: 49, scope: !2760)
!2773 = !DILocation(line: 954, column: 35, scope: !2760)
!2774 = !DILocation(line: 954, column: 47, scope: !2760)
!2775 = !DILocation(line: 956, column: 3, scope: !2760)
!2776 = !DILocation(line: 956, column: 32, scope: !2760)
!2777 = !DILocation(line: 185, column: 48, scope: !2732, inlinedAt: !2770)
!2778 = !DILocation(line: 187, column: 3, scope: !2732, inlinedAt: !2770)
!2779 = !DILocation(line: 188, column: 13, scope: !2749, inlinedAt: !2770)
!2780 = !DILocation(line: 188, column: 7, scope: !2732, inlinedAt: !2770)
!2781 = !DILocation(line: 189, column: 5, scope: !2749, inlinedAt: !2770)
!2782 = !{!2783}
!2783 = distinct !{!2783, !2784, !"quoting_options_from_style: argument 0"}
!2784 = distinct !{!2784, !"quoting_options_from_style"}
!2785 = !DILocation(line: 191, column: 10, scope: !2732, inlinedAt: !2770)
!2786 = !DILocation(line: 192, column: 1, scope: !2732, inlinedAt: !2770)
!2787 = !DILocation(line: 957, column: 10, scope: !2760)
!2788 = !DILocation(line: 958, column: 1, scope: !2760)
!2789 = !DILocation(line: 957, column: 3, scope: !2760)
!2790 = distinct !DISubprogram(name: "quotearg_style", scope: !249, file: !249, line: 961, type: !2791, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!21, !73, !35}
!2793 = !{!2794, !2795}
!2794 = !DILocalVariable(name: "s", arg: 1, scope: !2790, file: !249, line: 961, type: !73)
!2795 = !DILocalVariable(name: "arg", arg: 2, scope: !2790, file: !249, line: 961, type: !35)
!2796 = !DILocation(line: 187, column: 26, scope: !2732, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 948, column: 36, scope: !2723, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 963, column: 10, scope: !2790)
!2799 = !DILocation(line: 961, column: 36, scope: !2790)
!2800 = !DILocation(line: 961, column: 51, scope: !2790)
!2801 = !DILocation(line: 946, column: 23, scope: !2723, inlinedAt: !2798)
!2802 = !DILocation(line: 946, column: 45, scope: !2723, inlinedAt: !2798)
!2803 = !DILocation(line: 946, column: 60, scope: !2723, inlinedAt: !2798)
!2804 = !DILocation(line: 948, column: 3, scope: !2723, inlinedAt: !2798)
!2805 = !DILocation(line: 948, column: 32, scope: !2723, inlinedAt: !2798)
!2806 = !DILocation(line: 185, column: 48, scope: !2732, inlinedAt: !2797)
!2807 = !DILocation(line: 187, column: 3, scope: !2732, inlinedAt: !2797)
!2808 = !DILocation(line: 188, column: 13, scope: !2749, inlinedAt: !2797)
!2809 = !DILocation(line: 188, column: 7, scope: !2732, inlinedAt: !2797)
!2810 = !DILocation(line: 189, column: 5, scope: !2749, inlinedAt: !2797)
!2811 = !{!2812}
!2812 = distinct !{!2812, !2813, !"quoting_options_from_style: argument 0"}
!2813 = distinct !{!2813, !"quoting_options_from_style"}
!2814 = !DILocation(line: 191, column: 10, scope: !2732, inlinedAt: !2797)
!2815 = !DILocation(line: 192, column: 1, scope: !2732, inlinedAt: !2797)
!2816 = !DILocation(line: 949, column: 10, scope: !2723, inlinedAt: !2798)
!2817 = !DILocation(line: 950, column: 1, scope: !2723, inlinedAt: !2798)
!2818 = !DILocation(line: 963, column: 3, scope: !2790)
!2819 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !249, file: !249, line: 967, type: !2820, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2822)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!21, !73, !35, !102}
!2822 = !{!2823, !2824, !2825}
!2823 = !DILocalVariable(name: "s", arg: 1, scope: !2819, file: !249, line: 967, type: !73)
!2824 = !DILocalVariable(name: "arg", arg: 2, scope: !2819, file: !249, line: 967, type: !35)
!2825 = !DILocalVariable(name: "argsize", arg: 3, scope: !2819, file: !249, line: 967, type: !102)
!2826 = !DILocation(line: 187, column: 26, scope: !2732, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 956, column: 36, scope: !2760, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 969, column: 10, scope: !2819)
!2829 = !DILocation(line: 967, column: 40, scope: !2819)
!2830 = !DILocation(line: 967, column: 55, scope: !2819)
!2831 = !DILocation(line: 967, column: 67, scope: !2819)
!2832 = !DILocation(line: 953, column: 27, scope: !2760, inlinedAt: !2828)
!2833 = !DILocation(line: 953, column: 49, scope: !2760, inlinedAt: !2828)
!2834 = !DILocation(line: 954, column: 35, scope: !2760, inlinedAt: !2828)
!2835 = !DILocation(line: 954, column: 47, scope: !2760, inlinedAt: !2828)
!2836 = !DILocation(line: 956, column: 3, scope: !2760, inlinedAt: !2828)
!2837 = !DILocation(line: 956, column: 32, scope: !2760, inlinedAt: !2828)
!2838 = !DILocation(line: 185, column: 48, scope: !2732, inlinedAt: !2827)
!2839 = !DILocation(line: 187, column: 3, scope: !2732, inlinedAt: !2827)
!2840 = !DILocation(line: 188, column: 13, scope: !2749, inlinedAt: !2827)
!2841 = !DILocation(line: 188, column: 7, scope: !2732, inlinedAt: !2827)
!2842 = !DILocation(line: 189, column: 5, scope: !2749, inlinedAt: !2827)
!2843 = !{!2844}
!2844 = distinct !{!2844, !2845, !"quoting_options_from_style: argument 0"}
!2845 = distinct !{!2845, !"quoting_options_from_style"}
!2846 = !DILocation(line: 191, column: 10, scope: !2732, inlinedAt: !2827)
!2847 = !DILocation(line: 192, column: 1, scope: !2732, inlinedAt: !2827)
!2848 = !DILocation(line: 957, column: 10, scope: !2760, inlinedAt: !2828)
!2849 = !DILocation(line: 958, column: 1, scope: !2760, inlinedAt: !2828)
!2850 = !DILocation(line: 969, column: 3, scope: !2819)
!2851 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !249, file: !249, line: 973, type: !2852, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!21, !35, !102, !22}
!2854 = !{!2855, !2856, !2857, !2858}
!2855 = !DILocalVariable(name: "arg", arg: 1, scope: !2851, file: !249, line: 973, type: !35)
!2856 = !DILocalVariable(name: "argsize", arg: 2, scope: !2851, file: !249, line: 973, type: !102)
!2857 = !DILocalVariable(name: "ch", arg: 3, scope: !2851, file: !249, line: 973, type: !22)
!2858 = !DILocalVariable(name: "options", scope: !2851, file: !249, line: 975, type: !256)
!2859 = !DILocation(line: 973, column: 32, scope: !2851)
!2860 = !DILocation(line: 973, column: 44, scope: !2851)
!2861 = !DILocation(line: 973, column: 58, scope: !2851)
!2862 = !DILocation(line: 975, column: 3, scope: !2851)
!2863 = !DILocation(line: 976, column: 13, scope: !2851)
!2864 = !{i64 0, i64 4, !780, i64 4, i64 4, !789, i64 8, i64 32, !780, i64 40, i64 8, !703, i64 48, i64 8, !703}
!2865 = !DILocation(line: 975, column: 26, scope: !2851)
!2866 = !DILocation(line: 144, column: 43, scope: !1604, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 977, column: 3, scope: !2851)
!2868 = !DILocation(line: 144, column: 51, scope: !1604, inlinedAt: !2867)
!2869 = !DILocation(line: 144, column: 58, scope: !1604, inlinedAt: !2867)
!2870 = !DILocation(line: 146, column: 17, scope: !1604, inlinedAt: !2867)
!2871 = !DILocation(line: 148, column: 62, scope: !1604, inlinedAt: !2867)
!2872 = !DILocation(line: 148, column: 57, scope: !1604, inlinedAt: !2867)
!2873 = !DILocation(line: 147, column: 17, scope: !1604, inlinedAt: !2867)
!2874 = !DILocation(line: 149, column: 18, scope: !1604, inlinedAt: !2867)
!2875 = !DILocation(line: 149, column: 15, scope: !1604, inlinedAt: !2867)
!2876 = !DILocation(line: 149, column: 7, scope: !1604, inlinedAt: !2867)
!2877 = !DILocation(line: 150, column: 12, scope: !1604, inlinedAt: !2867)
!2878 = !DILocation(line: 150, column: 15, scope: !1604, inlinedAt: !2867)
!2879 = !DILocation(line: 150, column: 25, scope: !1604, inlinedAt: !2867)
!2880 = !DILocation(line: 150, column: 7, scope: !1604, inlinedAt: !2867)
!2881 = !DILocation(line: 151, column: 18, scope: !1604, inlinedAt: !2867)
!2882 = !DILocation(line: 151, column: 23, scope: !1604, inlinedAt: !2867)
!2883 = !DILocation(line: 151, column: 6, scope: !1604, inlinedAt: !2867)
!2884 = !DILocation(line: 978, column: 10, scope: !2851)
!2885 = !DILocation(line: 979, column: 1, scope: !2851)
!2886 = !DILocation(line: 978, column: 3, scope: !2851)
!2887 = distinct !DISubprogram(name: "quotearg_char", scope: !249, file: !249, line: 982, type: !2888, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!21, !35, !22}
!2890 = !{!2891, !2892}
!2891 = !DILocalVariable(name: "arg", arg: 1, scope: !2887, file: !249, line: 982, type: !35)
!2892 = !DILocalVariable(name: "ch", arg: 2, scope: !2887, file: !249, line: 982, type: !22)
!2893 = !DILocation(line: 982, column: 28, scope: !2887)
!2894 = !DILocation(line: 982, column: 38, scope: !2887)
!2895 = !DILocation(line: 973, column: 32, scope: !2851, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 984, column: 10, scope: !2887)
!2897 = !DILocation(line: 973, column: 44, scope: !2851, inlinedAt: !2896)
!2898 = !DILocation(line: 973, column: 58, scope: !2851, inlinedAt: !2896)
!2899 = !DILocation(line: 975, column: 3, scope: !2851, inlinedAt: !2896)
!2900 = !DILocation(line: 976, column: 13, scope: !2851, inlinedAt: !2896)
!2901 = !DILocation(line: 975, column: 26, scope: !2851, inlinedAt: !2896)
!2902 = !DILocation(line: 144, column: 43, scope: !1604, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 977, column: 3, scope: !2851, inlinedAt: !2896)
!2904 = !DILocation(line: 144, column: 51, scope: !1604, inlinedAt: !2903)
!2905 = !DILocation(line: 144, column: 58, scope: !1604, inlinedAt: !2903)
!2906 = !DILocation(line: 146, column: 17, scope: !1604, inlinedAt: !2903)
!2907 = !DILocation(line: 148, column: 62, scope: !1604, inlinedAt: !2903)
!2908 = !DILocation(line: 148, column: 57, scope: !1604, inlinedAt: !2903)
!2909 = !DILocation(line: 147, column: 17, scope: !1604, inlinedAt: !2903)
!2910 = !DILocation(line: 149, column: 18, scope: !1604, inlinedAt: !2903)
!2911 = !DILocation(line: 149, column: 15, scope: !1604, inlinedAt: !2903)
!2912 = !DILocation(line: 149, column: 7, scope: !1604, inlinedAt: !2903)
!2913 = !DILocation(line: 150, column: 12, scope: !1604, inlinedAt: !2903)
!2914 = !DILocation(line: 150, column: 15, scope: !1604, inlinedAt: !2903)
!2915 = !DILocation(line: 150, column: 25, scope: !1604, inlinedAt: !2903)
!2916 = !DILocation(line: 150, column: 7, scope: !1604, inlinedAt: !2903)
!2917 = !DILocation(line: 151, column: 18, scope: !1604, inlinedAt: !2903)
!2918 = !DILocation(line: 151, column: 23, scope: !1604, inlinedAt: !2903)
!2919 = !DILocation(line: 151, column: 6, scope: !1604, inlinedAt: !2903)
!2920 = !DILocation(line: 978, column: 10, scope: !2851, inlinedAt: !2896)
!2921 = !DILocation(line: 979, column: 1, scope: !2851, inlinedAt: !2896)
!2922 = !DILocation(line: 984, column: 3, scope: !2887)
!2923 = distinct !DISubprogram(name: "quotearg_colon", scope: !249, file: !249, line: 988, type: !2699, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2924)
!2924 = !{!2925}
!2925 = !DILocalVariable(name: "arg", arg: 1, scope: !2923, file: !249, line: 988, type: !35)
!2926 = !DILocation(line: 988, column: 29, scope: !2923)
!2927 = !DILocation(line: 982, column: 28, scope: !2887, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 990, column: 10, scope: !2923)
!2929 = !DILocation(line: 982, column: 38, scope: !2887, inlinedAt: !2928)
!2930 = !DILocation(line: 973, column: 32, scope: !2851, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 984, column: 10, scope: !2887, inlinedAt: !2928)
!2932 = !DILocation(line: 973, column: 44, scope: !2851, inlinedAt: !2931)
!2933 = !DILocation(line: 973, column: 58, scope: !2851, inlinedAt: !2931)
!2934 = !DILocation(line: 975, column: 3, scope: !2851, inlinedAt: !2931)
!2935 = !DILocation(line: 976, column: 13, scope: !2851, inlinedAt: !2931)
!2936 = !DILocation(line: 975, column: 26, scope: !2851, inlinedAt: !2931)
!2937 = !DILocation(line: 144, column: 43, scope: !1604, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 977, column: 3, scope: !2851, inlinedAt: !2931)
!2939 = !DILocation(line: 144, column: 51, scope: !1604, inlinedAt: !2938)
!2940 = !DILocation(line: 144, column: 58, scope: !1604, inlinedAt: !2938)
!2941 = !DILocation(line: 146, column: 17, scope: !1604, inlinedAt: !2938)
!2942 = !DILocation(line: 148, column: 57, scope: !1604, inlinedAt: !2938)
!2943 = !DILocation(line: 147, column: 17, scope: !1604, inlinedAt: !2938)
!2944 = !DILocation(line: 149, column: 7, scope: !1604, inlinedAt: !2938)
!2945 = !DILocation(line: 150, column: 12, scope: !1604, inlinedAt: !2938)
!2946 = !DILocation(line: 151, column: 6, scope: !1604, inlinedAt: !2938)
!2947 = !DILocation(line: 978, column: 10, scope: !2851, inlinedAt: !2931)
!2948 = !DILocation(line: 979, column: 1, scope: !2851, inlinedAt: !2931)
!2949 = !DILocation(line: 990, column: 3, scope: !2923)
!2950 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !249, file: !249, line: 994, type: !2710, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2951)
!2951 = !{!2952, !2953}
!2952 = !DILocalVariable(name: "arg", arg: 1, scope: !2950, file: !249, line: 994, type: !35)
!2953 = !DILocalVariable(name: "argsize", arg: 2, scope: !2950, file: !249, line: 994, type: !102)
!2954 = !DILocation(line: 994, column: 33, scope: !2950)
!2955 = !DILocation(line: 994, column: 45, scope: !2950)
!2956 = !DILocation(line: 973, column: 32, scope: !2851, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 996, column: 10, scope: !2950)
!2958 = !DILocation(line: 973, column: 44, scope: !2851, inlinedAt: !2957)
!2959 = !DILocation(line: 973, column: 58, scope: !2851, inlinedAt: !2957)
!2960 = !DILocation(line: 975, column: 3, scope: !2851, inlinedAt: !2957)
!2961 = !DILocation(line: 976, column: 13, scope: !2851, inlinedAt: !2957)
!2962 = !DILocation(line: 975, column: 26, scope: !2851, inlinedAt: !2957)
!2963 = !DILocation(line: 144, column: 43, scope: !1604, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 977, column: 3, scope: !2851, inlinedAt: !2957)
!2965 = !DILocation(line: 144, column: 51, scope: !1604, inlinedAt: !2964)
!2966 = !DILocation(line: 144, column: 58, scope: !1604, inlinedAt: !2964)
!2967 = !DILocation(line: 146, column: 17, scope: !1604, inlinedAt: !2964)
!2968 = !DILocation(line: 148, column: 57, scope: !1604, inlinedAt: !2964)
!2969 = !DILocation(line: 147, column: 17, scope: !1604, inlinedAt: !2964)
!2970 = !DILocation(line: 149, column: 7, scope: !1604, inlinedAt: !2964)
!2971 = !DILocation(line: 150, column: 12, scope: !1604, inlinedAt: !2964)
!2972 = !DILocation(line: 151, column: 6, scope: !1604, inlinedAt: !2964)
!2973 = !DILocation(line: 978, column: 10, scope: !2851, inlinedAt: !2957)
!2974 = !DILocation(line: 979, column: 1, scope: !2851, inlinedAt: !2957)
!2975 = !DILocation(line: 996, column: 3, scope: !2950)
!2976 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !249, file: !249, line: 1000, type: !2724, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !2977)
!2977 = !{!2978, !2979, !2980, !2981}
!2978 = !DILocalVariable(name: "n", arg: 1, scope: !2976, file: !249, line: 1000, type: !24)
!2979 = !DILocalVariable(name: "s", arg: 2, scope: !2976, file: !249, line: 1000, type: !73)
!2980 = !DILocalVariable(name: "arg", arg: 3, scope: !2976, file: !249, line: 1000, type: !35)
!2981 = !DILocalVariable(name: "options", scope: !2976, file: !249, line: 1002, type: !256)
!2982 = !DILocation(line: 187, column: 26, scope: !2732, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 1003, column: 13, scope: !2976)
!2984 = !DILocation(line: 1000, column: 29, scope: !2976)
!2985 = !DILocation(line: 1000, column: 51, scope: !2976)
!2986 = !DILocation(line: 1000, column: 66, scope: !2976)
!2987 = !DILocation(line: 1002, column: 3, scope: !2976)
!2988 = !DILocation(line: 185, column: 48, scope: !2732, inlinedAt: !2983)
!2989 = !DILocation(line: 187, column: 3, scope: !2732, inlinedAt: !2983)
!2990 = !DILocation(line: 188, column: 13, scope: !2749, inlinedAt: !2983)
!2991 = !DILocation(line: 188, column: 7, scope: !2732, inlinedAt: !2983)
!2992 = !DILocation(line: 189, column: 5, scope: !2749, inlinedAt: !2983)
!2993 = !{!2994}
!2994 = distinct !{!2994, !2995, !"quoting_options_from_style: argument 0"}
!2995 = distinct !{!2995, !"quoting_options_from_style"}
!2996 = !DILocation(line: 191, column: 10, scope: !2732, inlinedAt: !2983)
!2997 = !DILocation(line: 192, column: 1, scope: !2732, inlinedAt: !2983)
!2998 = !DILocation(line: 1003, column: 13, scope: !2976)
!2999 = !DILocation(line: 1002, column: 26, scope: !2976)
!3000 = !DILocation(line: 144, column: 43, scope: !1604, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 1004, column: 3, scope: !2976)
!3002 = !DILocation(line: 144, column: 51, scope: !1604, inlinedAt: !3001)
!3003 = !DILocation(line: 144, column: 58, scope: !1604, inlinedAt: !3001)
!3004 = !DILocation(line: 146, column: 17, scope: !1604, inlinedAt: !3001)
!3005 = !DILocation(line: 148, column: 57, scope: !1604, inlinedAt: !3001)
!3006 = !DILocation(line: 147, column: 17, scope: !1604, inlinedAt: !3001)
!3007 = !DILocation(line: 149, column: 7, scope: !1604, inlinedAt: !3001)
!3008 = !DILocation(line: 150, column: 12, scope: !1604, inlinedAt: !3001)
!3009 = !DILocation(line: 151, column: 6, scope: !1604, inlinedAt: !3001)
!3010 = !DILocation(line: 1005, column: 10, scope: !2976)
!3011 = !DILocation(line: 1006, column: 1, scope: !2976)
!3012 = !DILocation(line: 1005, column: 3, scope: !2976)
!3013 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !249, file: !249, line: 1009, type: !3014, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!21, !24, !35, !35, !35}
!3016 = !{!3017, !3018, !3019, !3020}
!3017 = !DILocalVariable(name: "n", arg: 1, scope: !3013, file: !249, line: 1009, type: !24)
!3018 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3013, file: !249, line: 1009, type: !35)
!3019 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3013, file: !249, line: 1010, type: !35)
!3020 = !DILocalVariable(name: "arg", arg: 4, scope: !3013, file: !249, line: 1010, type: !35)
!3021 = !DILocation(line: 1009, column: 24, scope: !3013)
!3022 = !DILocation(line: 1009, column: 39, scope: !3013)
!3023 = !DILocation(line: 1010, column: 32, scope: !3013)
!3024 = !DILocation(line: 1010, column: 57, scope: !3013)
!3025 = !DILocalVariable(name: "n", arg: 1, scope: !3026, file: !249, line: 1017, type: !24)
!3026 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !249, file: !249, line: 1017, type: !3027, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!21, !24, !35, !35, !35, !102}
!3029 = !{!3025, !3030, !3031, !3032, !3033, !3034}
!3030 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3026, file: !249, line: 1017, type: !35)
!3031 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3026, file: !249, line: 1018, type: !35)
!3032 = !DILocalVariable(name: "arg", arg: 4, scope: !3026, file: !249, line: 1019, type: !35)
!3033 = !DILocalVariable(name: "argsize", arg: 5, scope: !3026, file: !249, line: 1019, type: !102)
!3034 = !DILocalVariable(name: "o", scope: !3026, file: !249, line: 1021, type: !256)
!3035 = !DILocation(line: 1017, column: 28, scope: !3026, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 1012, column: 10, scope: !3013)
!3037 = !DILocation(line: 1017, column: 43, scope: !3026, inlinedAt: !3036)
!3038 = !DILocation(line: 1018, column: 36, scope: !3026, inlinedAt: !3036)
!3039 = !DILocation(line: 1019, column: 36, scope: !3026, inlinedAt: !3036)
!3040 = !DILocation(line: 1019, column: 48, scope: !3026, inlinedAt: !3036)
!3041 = !DILocation(line: 1021, column: 3, scope: !3026, inlinedAt: !3036)
!3042 = !DILocation(line: 1021, column: 30, scope: !3026, inlinedAt: !3036)
!3043 = !DILocation(line: 1021, column: 26, scope: !3026, inlinedAt: !3036)
!3044 = !DILocation(line: 171, column: 45, scope: !1653, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 1022, column: 3, scope: !3026, inlinedAt: !3036)
!3046 = !DILocation(line: 172, column: 33, scope: !1653, inlinedAt: !3045)
!3047 = !DILocation(line: 172, column: 57, scope: !1653, inlinedAt: !3045)
!3048 = !DILocation(line: 176, column: 6, scope: !1653, inlinedAt: !3045)
!3049 = !DILocation(line: 176, column: 12, scope: !1653, inlinedAt: !3045)
!3050 = !DILocation(line: 177, column: 8, scope: !1669, inlinedAt: !3045)
!3051 = !DILocation(line: 177, column: 23, scope: !1669, inlinedAt: !3045)
!3052 = !DILocation(line: 177, column: 19, scope: !1669, inlinedAt: !3045)
!3053 = !DILocation(line: 178, column: 5, scope: !1669, inlinedAt: !3045)
!3054 = !DILocation(line: 179, column: 6, scope: !1653, inlinedAt: !3045)
!3055 = !DILocation(line: 179, column: 17, scope: !1653, inlinedAt: !3045)
!3056 = !DILocation(line: 180, column: 6, scope: !1653, inlinedAt: !3045)
!3057 = !DILocation(line: 180, column: 18, scope: !1653, inlinedAt: !3045)
!3058 = !DILocation(line: 1023, column: 10, scope: !3026, inlinedAt: !3036)
!3059 = !DILocation(line: 1024, column: 1, scope: !3026, inlinedAt: !3036)
!3060 = !DILocation(line: 1012, column: 3, scope: !3013)
!3061 = !DILocation(line: 1017, column: 28, scope: !3026)
!3062 = !DILocation(line: 1017, column: 43, scope: !3026)
!3063 = !DILocation(line: 1018, column: 36, scope: !3026)
!3064 = !DILocation(line: 1019, column: 36, scope: !3026)
!3065 = !DILocation(line: 1019, column: 48, scope: !3026)
!3066 = !DILocation(line: 1021, column: 3, scope: !3026)
!3067 = !DILocation(line: 1021, column: 30, scope: !3026)
!3068 = !DILocation(line: 1021, column: 26, scope: !3026)
!3069 = !DILocation(line: 171, column: 45, scope: !1653, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 1022, column: 3, scope: !3026)
!3071 = !DILocation(line: 172, column: 33, scope: !1653, inlinedAt: !3070)
!3072 = !DILocation(line: 172, column: 57, scope: !1653, inlinedAt: !3070)
!3073 = !DILocation(line: 176, column: 6, scope: !1653, inlinedAt: !3070)
!3074 = !DILocation(line: 176, column: 12, scope: !1653, inlinedAt: !3070)
!3075 = !DILocation(line: 177, column: 8, scope: !1669, inlinedAt: !3070)
!3076 = !DILocation(line: 177, column: 23, scope: !1669, inlinedAt: !3070)
!3077 = !DILocation(line: 177, column: 19, scope: !1669, inlinedAt: !3070)
!3078 = !DILocation(line: 178, column: 5, scope: !1669, inlinedAt: !3070)
!3079 = !DILocation(line: 179, column: 6, scope: !1653, inlinedAt: !3070)
!3080 = !DILocation(line: 179, column: 17, scope: !1653, inlinedAt: !3070)
!3081 = !DILocation(line: 180, column: 6, scope: !1653, inlinedAt: !3070)
!3082 = !DILocation(line: 180, column: 18, scope: !1653, inlinedAt: !3070)
!3083 = !DILocation(line: 1023, column: 10, scope: !3026)
!3084 = !DILocation(line: 1024, column: 1, scope: !3026)
!3085 = !DILocation(line: 1023, column: 3, scope: !3026)
!3086 = distinct !DISubprogram(name: "quotearg_custom", scope: !249, file: !249, line: 1027, type: !3087, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!21, !35, !35, !35}
!3089 = !{!3090, !3091, !3092}
!3090 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3086, file: !249, line: 1027, type: !35)
!3091 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3086, file: !249, line: 1027, type: !35)
!3092 = !DILocalVariable(name: "arg", arg: 3, scope: !3086, file: !249, line: 1028, type: !35)
!3093 = !DILocation(line: 1027, column: 30, scope: !3086)
!3094 = !DILocation(line: 1027, column: 54, scope: !3086)
!3095 = !DILocation(line: 1028, column: 30, scope: !3086)
!3096 = !DILocation(line: 1009, column: 24, scope: !3013, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 1030, column: 10, scope: !3086)
!3098 = !DILocation(line: 1009, column: 39, scope: !3013, inlinedAt: !3097)
!3099 = !DILocation(line: 1010, column: 32, scope: !3013, inlinedAt: !3097)
!3100 = !DILocation(line: 1010, column: 57, scope: !3013, inlinedAt: !3097)
!3101 = !DILocation(line: 1017, column: 28, scope: !3026, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 1012, column: 10, scope: !3013, inlinedAt: !3097)
!3103 = !DILocation(line: 1017, column: 43, scope: !3026, inlinedAt: !3102)
!3104 = !DILocation(line: 1018, column: 36, scope: !3026, inlinedAt: !3102)
!3105 = !DILocation(line: 1019, column: 36, scope: !3026, inlinedAt: !3102)
!3106 = !DILocation(line: 1019, column: 48, scope: !3026, inlinedAt: !3102)
!3107 = !DILocation(line: 1021, column: 3, scope: !3026, inlinedAt: !3102)
!3108 = !DILocation(line: 1021, column: 30, scope: !3026, inlinedAt: !3102)
!3109 = !DILocation(line: 1021, column: 26, scope: !3026, inlinedAt: !3102)
!3110 = !DILocation(line: 171, column: 45, scope: !1653, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 1022, column: 3, scope: !3026, inlinedAt: !3102)
!3112 = !DILocation(line: 172, column: 33, scope: !1653, inlinedAt: !3111)
!3113 = !DILocation(line: 172, column: 57, scope: !1653, inlinedAt: !3111)
!3114 = !DILocation(line: 176, column: 6, scope: !1653, inlinedAt: !3111)
!3115 = !DILocation(line: 176, column: 12, scope: !1653, inlinedAt: !3111)
!3116 = !DILocation(line: 177, column: 8, scope: !1669, inlinedAt: !3111)
!3117 = !DILocation(line: 177, column: 23, scope: !1669, inlinedAt: !3111)
!3118 = !DILocation(line: 177, column: 19, scope: !1669, inlinedAt: !3111)
!3119 = !DILocation(line: 178, column: 5, scope: !1669, inlinedAt: !3111)
!3120 = !DILocation(line: 179, column: 6, scope: !1653, inlinedAt: !3111)
!3121 = !DILocation(line: 179, column: 17, scope: !1653, inlinedAt: !3111)
!3122 = !DILocation(line: 180, column: 6, scope: !1653, inlinedAt: !3111)
!3123 = !DILocation(line: 180, column: 18, scope: !1653, inlinedAt: !3111)
!3124 = !DILocation(line: 1023, column: 10, scope: !3026, inlinedAt: !3102)
!3125 = !DILocation(line: 1024, column: 1, scope: !3026, inlinedAt: !3102)
!3126 = !DILocation(line: 1030, column: 3, scope: !3086)
!3127 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !249, file: !249, line: 1034, type: !3128, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!21, !35, !35, !35, !102}
!3130 = !{!3131, !3132, !3133, !3134}
!3131 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3127, file: !249, line: 1034, type: !35)
!3132 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3127, file: !249, line: 1034, type: !35)
!3133 = !DILocalVariable(name: "arg", arg: 3, scope: !3127, file: !249, line: 1035, type: !35)
!3134 = !DILocalVariable(name: "argsize", arg: 4, scope: !3127, file: !249, line: 1035, type: !102)
!3135 = !DILocation(line: 1034, column: 34, scope: !3127)
!3136 = !DILocation(line: 1034, column: 58, scope: !3127)
!3137 = !DILocation(line: 1035, column: 34, scope: !3127)
!3138 = !DILocation(line: 1035, column: 46, scope: !3127)
!3139 = !DILocation(line: 1017, column: 28, scope: !3026, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 1037, column: 10, scope: !3127)
!3141 = !DILocation(line: 1017, column: 43, scope: !3026, inlinedAt: !3140)
!3142 = !DILocation(line: 1018, column: 36, scope: !3026, inlinedAt: !3140)
!3143 = !DILocation(line: 1019, column: 36, scope: !3026, inlinedAt: !3140)
!3144 = !DILocation(line: 1019, column: 48, scope: !3026, inlinedAt: !3140)
!3145 = !DILocation(line: 1021, column: 3, scope: !3026, inlinedAt: !3140)
!3146 = !DILocation(line: 1021, column: 30, scope: !3026, inlinedAt: !3140)
!3147 = !DILocation(line: 1021, column: 26, scope: !3026, inlinedAt: !3140)
!3148 = !DILocation(line: 171, column: 45, scope: !1653, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 1022, column: 3, scope: !3026, inlinedAt: !3140)
!3150 = !DILocation(line: 172, column: 33, scope: !1653, inlinedAt: !3149)
!3151 = !DILocation(line: 172, column: 57, scope: !1653, inlinedAt: !3149)
!3152 = !DILocation(line: 176, column: 6, scope: !1653, inlinedAt: !3149)
!3153 = !DILocation(line: 176, column: 12, scope: !1653, inlinedAt: !3149)
!3154 = !DILocation(line: 177, column: 8, scope: !1669, inlinedAt: !3149)
!3155 = !DILocation(line: 177, column: 23, scope: !1669, inlinedAt: !3149)
!3156 = !DILocation(line: 177, column: 19, scope: !1669, inlinedAt: !3149)
!3157 = !DILocation(line: 178, column: 5, scope: !1669, inlinedAt: !3149)
!3158 = !DILocation(line: 179, column: 6, scope: !1653, inlinedAt: !3149)
!3159 = !DILocation(line: 179, column: 17, scope: !1653, inlinedAt: !3149)
!3160 = !DILocation(line: 180, column: 6, scope: !1653, inlinedAt: !3149)
!3161 = !DILocation(line: 180, column: 18, scope: !1653, inlinedAt: !3149)
!3162 = !DILocation(line: 1023, column: 10, scope: !3026, inlinedAt: !3140)
!3163 = !DILocation(line: 1024, column: 1, scope: !3026, inlinedAt: !3140)
!3164 = !DILocation(line: 1037, column: 3, scope: !3127)
!3165 = distinct !DISubprogram(name: "quote_n_mem", scope: !249, file: !249, line: 1052, type: !3166, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!35, !24, !35, !102}
!3168 = !{!3169, !3170, !3171}
!3169 = !DILocalVariable(name: "n", arg: 1, scope: !3165, file: !249, line: 1052, type: !24)
!3170 = !DILocalVariable(name: "arg", arg: 2, scope: !3165, file: !249, line: 1052, type: !35)
!3171 = !DILocalVariable(name: "argsize", arg: 3, scope: !3165, file: !249, line: 1052, type: !102)
!3172 = !DILocation(line: 1052, column: 18, scope: !3165)
!3173 = !DILocation(line: 1052, column: 33, scope: !3165)
!3174 = !DILocation(line: 1052, column: 45, scope: !3165)
!3175 = !DILocation(line: 1054, column: 10, scope: !3165)
!3176 = !DILocation(line: 1054, column: 3, scope: !3165)
!3177 = distinct !DISubprogram(name: "quote_mem", scope: !249, file: !249, line: 1058, type: !3178, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!35, !35, !102}
!3180 = !{!3181, !3182}
!3181 = !DILocalVariable(name: "arg", arg: 1, scope: !3177, file: !249, line: 1058, type: !35)
!3182 = !DILocalVariable(name: "argsize", arg: 2, scope: !3177, file: !249, line: 1058, type: !102)
!3183 = !DILocation(line: 1058, column: 24, scope: !3177)
!3184 = !DILocation(line: 1058, column: 36, scope: !3177)
!3185 = !DILocation(line: 1052, column: 18, scope: !3165, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 1060, column: 10, scope: !3177)
!3187 = !DILocation(line: 1052, column: 33, scope: !3165, inlinedAt: !3186)
!3188 = !DILocation(line: 1052, column: 45, scope: !3165, inlinedAt: !3186)
!3189 = !DILocation(line: 1054, column: 10, scope: !3165, inlinedAt: !3186)
!3190 = !DILocation(line: 1060, column: 3, scope: !3177)
!3191 = distinct !DISubprogram(name: "quote_n", scope: !249, file: !249, line: 1064, type: !3192, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!35, !24, !35}
!3194 = !{!3195, !3196}
!3195 = !DILocalVariable(name: "n", arg: 1, scope: !3191, file: !249, line: 1064, type: !24)
!3196 = !DILocalVariable(name: "arg", arg: 2, scope: !3191, file: !249, line: 1064, type: !35)
!3197 = !DILocation(line: 1064, column: 14, scope: !3191)
!3198 = !DILocation(line: 1064, column: 29, scope: !3191)
!3199 = !DILocation(line: 1052, column: 18, scope: !3165, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 1066, column: 10, scope: !3191)
!3201 = !DILocation(line: 1052, column: 33, scope: !3165, inlinedAt: !3200)
!3202 = !DILocation(line: 1052, column: 45, scope: !3165, inlinedAt: !3200)
!3203 = !DILocation(line: 1054, column: 10, scope: !3165, inlinedAt: !3200)
!3204 = !DILocation(line: 1066, column: 3, scope: !3191)
!3205 = distinct !DISubprogram(name: "quote", scope: !249, file: !249, line: 1070, type: !3206, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !237, variables: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!35, !35}
!3208 = !{!3209}
!3209 = !DILocalVariable(name: "arg", arg: 1, scope: !3205, file: !249, line: 1070, type: !35)
!3210 = !DILocation(line: 1070, column: 20, scope: !3205)
!3211 = !DILocation(line: 1064, column: 14, scope: !3191, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 1072, column: 10, scope: !3205)
!3213 = !DILocation(line: 1064, column: 29, scope: !3191, inlinedAt: !3212)
!3214 = !DILocation(line: 1052, column: 18, scope: !3165, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 1066, column: 10, scope: !3191, inlinedAt: !3212)
!3216 = !DILocation(line: 1052, column: 33, scope: !3165, inlinedAt: !3215)
!3217 = !DILocation(line: 1052, column: 45, scope: !3165, inlinedAt: !3215)
!3218 = !DILocation(line: 1054, column: 10, scope: !3165, inlinedAt: !3215)
!3219 = !DILocation(line: 1072, column: 3, scope: !3205)
!3220 = distinct !DISubprogram(name: "version_etc_arn", scope: !651, file: !651, line: 62, type: !3221, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !647, variables: !3264)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{null, !3223, !35, !35, !35, !3263, !102}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !129, line: 7, baseType: !3225)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !131, line: 241, size: 1728, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3225, file: !131, line: 242, baseType: !24, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3225, file: !131, line: 247, baseType: !21, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3225, file: !131, line: 248, baseType: !21, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3225, file: !131, line: 249, baseType: !21, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3225, file: !131, line: 250, baseType: !21, size: 64, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3225, file: !131, line: 251, baseType: !21, size: 64, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3225, file: !131, line: 252, baseType: !21, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3225, file: !131, line: 253, baseType: !21, size: 64, offset: 448)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3225, file: !131, line: 254, baseType: !21, size: 64, offset: 512)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3225, file: !131, line: 256, baseType: !21, size: 64, offset: 576)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3225, file: !131, line: 257, baseType: !21, size: 64, offset: 640)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3225, file: !131, line: 258, baseType: !21, size: 64, offset: 704)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3225, file: !131, line: 260, baseType: !3240, size: 64, offset: 768)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !131, line: 156, size: 192, elements: !3242)
!3242 = !{!3243, !3244, !3246}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3241, file: !131, line: 157, baseType: !3240, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3241, file: !131, line: 158, baseType: !3245, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3241, file: !131, line: 162, baseType: !24, size: 32, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3225, file: !131, line: 262, baseType: !3245, size: 64, offset: 832)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3225, file: !131, line: 264, baseType: !24, size: 32, offset: 896)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3225, file: !131, line: 268, baseType: !24, size: 32, offset: 928)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3225, file: !131, line: 270, baseType: !157, size: 64, offset: 960)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3225, file: !131, line: 274, baseType: !25, size: 16, offset: 1024)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3225, file: !131, line: 275, baseType: !161, size: 8, offset: 1040)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3225, file: !131, line: 276, baseType: !163, size: 8, offset: 1048)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3225, file: !131, line: 280, baseType: !167, size: 64, offset: 1088)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3225, file: !131, line: 289, baseType: !170, size: 64, offset: 1152)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3225, file: !131, line: 297, baseType: !23, size: 64, offset: 1216)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3225, file: !131, line: 298, baseType: !23, size: 64, offset: 1280)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3225, file: !131, line: 299, baseType: !23, size: 64, offset: 1344)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3225, file: !131, line: 300, baseType: !23, size: 64, offset: 1408)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3225, file: !131, line: 302, baseType: !102, size: 64, offset: 1472)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3225, file: !131, line: 303, baseType: !24, size: 32, offset: 1536)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3225, file: !131, line: 305, baseType: !178, size: 160, offset: 1568)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270}
!3265 = !DILocalVariable(name: "stream", arg: 1, scope: !3220, file: !651, line: 62, type: !3223)
!3266 = !DILocalVariable(name: "command_name", arg: 2, scope: !3220, file: !651, line: 63, type: !35)
!3267 = !DILocalVariable(name: "package", arg: 3, scope: !3220, file: !651, line: 63, type: !35)
!3268 = !DILocalVariable(name: "version", arg: 4, scope: !3220, file: !651, line: 64, type: !35)
!3269 = !DILocalVariable(name: "authors", arg: 5, scope: !3220, file: !651, line: 65, type: !3263)
!3270 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3220, file: !651, line: 65, type: !102)
!3271 = !DILocation(line: 62, column: 24, scope: !3220)
!3272 = !DILocation(line: 63, column: 30, scope: !3220)
!3273 = !DILocation(line: 63, column: 56, scope: !3220)
!3274 = !DILocation(line: 64, column: 30, scope: !3220)
!3275 = !DILocation(line: 65, column: 39, scope: !3220)
!3276 = !DILocation(line: 65, column: 55, scope: !3220)
!3277 = !DILocation(line: 67, column: 7, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3220, file: !651, line: 67, column: 7)
!3279 = !DILocation(line: 67, column: 7, scope: !3220)
!3280 = !DILocation(line: 68, column: 5, scope: !3278)
!3281 = !DILocation(line: 70, column: 5, scope: !3278)
!3282 = !DILocation(line: 84, column: 3, scope: !3220)
!3283 = !DILocation(line: 86, column: 3, scope: !3220)
!3284 = !DILocation(line: 95, column: 3, scope: !3220)
!3285 = !DILocation(line: 99, column: 7, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3220, file: !651, line: 96, column: 5)
!3287 = !DILocation(line: 102, column: 7, scope: !3286)
!3288 = !DILocation(line: 103, column: 7, scope: !3286)
!3289 = !DILocation(line: 106, column: 7, scope: !3286)
!3290 = !DILocation(line: 107, column: 7, scope: !3286)
!3291 = !DILocation(line: 110, column: 7, scope: !3286)
!3292 = !DILocation(line: 112, column: 7, scope: !3286)
!3293 = !DILocation(line: 117, column: 7, scope: !3286)
!3294 = !DILocation(line: 119, column: 7, scope: !3286)
!3295 = !DILocation(line: 124, column: 7, scope: !3286)
!3296 = !DILocation(line: 126, column: 7, scope: !3286)
!3297 = !DILocation(line: 131, column: 7, scope: !3286)
!3298 = !DILocation(line: 134, column: 7, scope: !3286)
!3299 = !DILocation(line: 139, column: 7, scope: !3286)
!3300 = !DILocation(line: 142, column: 7, scope: !3286)
!3301 = !DILocation(line: 147, column: 7, scope: !3286)
!3302 = !DILocation(line: 151, column: 7, scope: !3286)
!3303 = !DILocation(line: 156, column: 7, scope: !3286)
!3304 = !DILocation(line: 160, column: 7, scope: !3286)
!3305 = !DILocation(line: 167, column: 7, scope: !3286)
!3306 = !DILocation(line: 171, column: 7, scope: !3286)
!3307 = !DILocation(line: 173, column: 1, scope: !3220)
!3308 = distinct !DISubprogram(name: "version_etc_ar", scope: !651, file: !651, line: 180, type: !3309, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !647, variables: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{null, !3223, !35, !35, !35, !3263}
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317}
!3312 = !DILocalVariable(name: "stream", arg: 1, scope: !3308, file: !651, line: 180, type: !3223)
!3313 = !DILocalVariable(name: "command_name", arg: 2, scope: !3308, file: !651, line: 181, type: !35)
!3314 = !DILocalVariable(name: "package", arg: 3, scope: !3308, file: !651, line: 181, type: !35)
!3315 = !DILocalVariable(name: "version", arg: 4, scope: !3308, file: !651, line: 182, type: !35)
!3316 = !DILocalVariable(name: "authors", arg: 5, scope: !3308, file: !651, line: 182, type: !3263)
!3317 = !DILocalVariable(name: "n_authors", scope: !3308, file: !651, line: 184, type: !102)
!3318 = !DILocation(line: 180, column: 23, scope: !3308)
!3319 = !DILocation(line: 181, column: 29, scope: !3308)
!3320 = !DILocation(line: 181, column: 55, scope: !3308)
!3321 = !DILocation(line: 182, column: 29, scope: !3308)
!3322 = !DILocation(line: 182, column: 59, scope: !3308)
!3323 = !DILocation(line: 184, column: 10, scope: !3308)
!3324 = !DILocation(line: 186, column: 8, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3308, file: !651, line: 186, column: 3)
!3326 = !DILocation(line: 186, column: 23, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3325, file: !651, line: 186, column: 3)
!3328 = !DILocation(line: 186, column: 3, scope: !3325)
!3329 = !DILocation(line: 186, column: 52, scope: !3327)
!3330 = distinct !{!3330, !3328, !3331}
!3331 = !DILocation(line: 187, column: 5, scope: !3325)
!3332 = !DILocation(line: 188, column: 3, scope: !3308)
!3333 = !DILocation(line: 189, column: 1, scope: !3308)
!3334 = distinct !DISubprogram(name: "version_etc_va", scope: !651, file: !651, line: 196, type: !3335, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !647, variables: !3344)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{null, !3223, !35, !35, !35, !3337}
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !648, line: 189, size: 192, elements: !3339)
!3339 = !{!3340, !3341, !3342, !3343}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3338, file: !648, line: 189, baseType: !113, size: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3338, file: !648, line: 189, baseType: !113, size: 32, offset: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3338, file: !648, line: 189, baseType: !23, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3338, file: !648, line: 189, baseType: !23, size: 64, offset: 128)
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3351}
!3345 = !DILocalVariable(name: "stream", arg: 1, scope: !3334, file: !651, line: 196, type: !3223)
!3346 = !DILocalVariable(name: "command_name", arg: 2, scope: !3334, file: !651, line: 197, type: !35)
!3347 = !DILocalVariable(name: "package", arg: 3, scope: !3334, file: !651, line: 197, type: !35)
!3348 = !DILocalVariable(name: "version", arg: 4, scope: !3334, file: !651, line: 198, type: !35)
!3349 = !DILocalVariable(name: "authors", arg: 5, scope: !3334, file: !651, line: 198, type: !3337)
!3350 = !DILocalVariable(name: "n_authors", scope: !3334, file: !651, line: 200, type: !102)
!3351 = !DILocalVariable(name: "authtab", scope: !3334, file: !651, line: 201, type: !3352)
!3352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !252)
!3353 = !DILocation(line: 196, column: 23, scope: !3334)
!3354 = !DILocation(line: 197, column: 29, scope: !3334)
!3355 = !DILocation(line: 197, column: 55, scope: !3334)
!3356 = !DILocation(line: 198, column: 29, scope: !3334)
!3357 = !DILocation(line: 198, column: 46, scope: !3334)
!3358 = !DILocation(line: 201, column: 3, scope: !3334)
!3359 = !DILocation(line: 201, column: 15, scope: !3334)
!3360 = !DILocation(line: 200, column: 10, scope: !3334)
!3361 = !DILocation(line: 205, column: 35, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !651, line: 203, column: 3)
!3363 = distinct !DILexicalBlock(scope: !3334, file: !651, line: 203, column: 3)
!3364 = !DILocation(line: 205, column: 14, scope: !3362)
!3365 = !DILocation(line: 205, column: 33, scope: !3362)
!3366 = !DILocation(line: 205, column: 67, scope: !3362)
!3367 = !DILocation(line: 203, column: 3, scope: !3363)
!3368 = !DILocation(line: 208, column: 3, scope: !3334)
!3369 = !DILocation(line: 210, column: 1, scope: !3334)
!3370 = distinct !DISubprogram(name: "version_etc", scope: !651, file: !651, line: 227, type: !3371, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !647, variables: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{null, !3223, !35, !35, !35, null}
!3373 = !{!3374, !3375, !3376, !3377, !3378}
!3374 = !DILocalVariable(name: "stream", arg: 1, scope: !3370, file: !651, line: 227, type: !3223)
!3375 = !DILocalVariable(name: "command_name", arg: 2, scope: !3370, file: !651, line: 228, type: !35)
!3376 = !DILocalVariable(name: "package", arg: 3, scope: !3370, file: !651, line: 228, type: !35)
!3377 = !DILocalVariable(name: "version", arg: 4, scope: !3370, file: !651, line: 229, type: !35)
!3378 = !DILocalVariable(name: "authors", scope: !3370, file: !651, line: 231, type: !3379)
!3379 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1449, line: 46, baseType: !3380)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3381, line: 48, baseType: !3382)
!3381 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !648, line: 231, baseType: !3383)
!3383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3338, size: 192, elements: !164)
!3384 = !DILocation(line: 227, column: 20, scope: !3370)
!3385 = !DILocation(line: 228, column: 26, scope: !3370)
!3386 = !DILocation(line: 228, column: 52, scope: !3370)
!3387 = !DILocation(line: 229, column: 26, scope: !3370)
!3388 = !DILocation(line: 231, column: 3, scope: !3370)
!3389 = !DILocation(line: 231, column: 11, scope: !3370)
!3390 = !DILocation(line: 233, column: 3, scope: !3370)
!3391 = !DILocation(line: 234, column: 3, scope: !3370)
!3392 = !DILocation(line: 235, column: 3, scope: !3370)
!3393 = !DILocation(line: 236, column: 1, scope: !3370)
!3394 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !651, file: !651, line: 239, type: !712, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !647, variables: !211)
!3395 = !DILocation(line: 245, column: 3, scope: !3394)
!3396 = !DILocation(line: 251, column: 3, scope: !3394)
!3397 = !DILocation(line: 256, column: 3, scope: !3394)
!3398 = !DILocation(line: 258, column: 1, scope: !3394)
!3399 = distinct !DISubprogram(name: "xnmalloc", scope: !97, file: !97, line: 105, type: !3400, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !3402)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!23, !102, !102}
!3402 = !{!3403, !3404}
!3403 = !DILocalVariable(name: "n", arg: 1, scope: !3399, file: !97, line: 105, type: !102)
!3404 = !DILocalVariable(name: "s", arg: 2, scope: !3399, file: !97, line: 105, type: !102)
!3405 = !DILocation(line: 105, column: 18, scope: !3399)
!3406 = !DILocation(line: 105, column: 28, scope: !3399)
!3407 = !DILocation(line: 107, column: 7, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3399, file: !97, line: 107, column: 7)
!3409 = !DILocation(line: 107, column: 7, scope: !3399)
!3410 = !DILocation(line: 108, column: 5, scope: !3408)
!3411 = !DILocation(line: 109, column: 21, scope: !3399)
!3412 = !DILocalVariable(name: "n", arg: 1, scope: !3413, file: !3414, line: 39, type: !102)
!3413 = distinct !DISubprogram(name: "xmalloc", scope: !3414, file: !3414, line: 39, type: !3415, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !3417)
!3414 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!23, !102}
!3417 = !{!3412, !3418}
!3418 = !DILocalVariable(name: "p", scope: !3413, file: !3414, line: 41, type: !23)
!3419 = !DILocation(line: 39, column: 17, scope: !3413, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 109, column: 10, scope: !3399)
!3421 = !DILocation(line: 41, column: 13, scope: !3413, inlinedAt: !3420)
!3422 = !DILocation(line: 41, column: 9, scope: !3413, inlinedAt: !3420)
!3423 = !DILocation(line: 42, column: 8, scope: !3424, inlinedAt: !3420)
!3424 = distinct !DILexicalBlock(scope: !3413, file: !3414, line: 42, column: 7)
!3425 = !DILocation(line: 42, column: 15, scope: !3424, inlinedAt: !3420)
!3426 = !DILocation(line: 42, column: 10, scope: !3424, inlinedAt: !3420)
!3427 = !DILocation(line: 43, column: 5, scope: !3424, inlinedAt: !3420)
!3428 = !DILocation(line: 109, column: 3, scope: !3399)
!3429 = !DILocation(line: 39, column: 17, scope: !3413)
!3430 = !DILocation(line: 41, column: 13, scope: !3413)
!3431 = !DILocation(line: 41, column: 9, scope: !3413)
!3432 = !DILocation(line: 42, column: 8, scope: !3424)
!3433 = !DILocation(line: 42, column: 15, scope: !3424)
!3434 = !DILocation(line: 42, column: 10, scope: !3424)
!3435 = !DILocation(line: 43, column: 5, scope: !3424)
!3436 = !DILocation(line: 44, column: 3, scope: !3413)
!3437 = distinct !DISubprogram(name: "xnrealloc", scope: !97, file: !97, line: 118, type: !3438, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!23, !23, !102, !102}
!3440 = !{!3441, !3442, !3443}
!3441 = !DILocalVariable(name: "p", arg: 1, scope: !3437, file: !97, line: 118, type: !23)
!3442 = !DILocalVariable(name: "n", arg: 2, scope: !3437, file: !97, line: 118, type: !102)
!3443 = !DILocalVariable(name: "s", arg: 3, scope: !3437, file: !97, line: 118, type: !102)
!3444 = !DILocation(line: 118, column: 18, scope: !3437)
!3445 = !DILocation(line: 118, column: 28, scope: !3437)
!3446 = !DILocation(line: 118, column: 38, scope: !3437)
!3447 = !DILocation(line: 120, column: 7, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3437, file: !97, line: 120, column: 7)
!3449 = !DILocation(line: 120, column: 7, scope: !3437)
!3450 = !DILocation(line: 121, column: 5, scope: !3448)
!3451 = !DILocation(line: 122, column: 25, scope: !3437)
!3452 = !DILocalVariable(name: "p", arg: 1, scope: !3453, file: !3414, line: 51, type: !23)
!3453 = distinct !DISubprogram(name: "xrealloc", scope: !3414, file: !3414, line: 51, type: !3454, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!23, !23, !102}
!3456 = !{!3452, !3457}
!3457 = !DILocalVariable(name: "n", arg: 2, scope: !3453, file: !3414, line: 51, type: !102)
!3458 = !DILocation(line: 51, column: 17, scope: !3453, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 122, column: 10, scope: !3437)
!3460 = !DILocation(line: 51, column: 27, scope: !3453, inlinedAt: !3459)
!3461 = !DILocation(line: 53, column: 8, scope: !3462, inlinedAt: !3459)
!3462 = distinct !DILexicalBlock(scope: !3453, file: !3414, line: 53, column: 7)
!3463 = !DILocation(line: 53, column: 13, scope: !3462, inlinedAt: !3459)
!3464 = !DILocation(line: 53, column: 10, scope: !3462, inlinedAt: !3459)
!3465 = !DILocation(line: 57, column: 7, scope: !3466, inlinedAt: !3459)
!3466 = distinct !DILexicalBlock(scope: !3462, file: !3414, line: 54, column: 5)
!3467 = !DILocation(line: 58, column: 7, scope: !3466, inlinedAt: !3459)
!3468 = !DILocation(line: 61, column: 7, scope: !3453, inlinedAt: !3459)
!3469 = !DILocation(line: 62, column: 8, scope: !3470, inlinedAt: !3459)
!3470 = distinct !DILexicalBlock(scope: !3453, file: !3414, line: 62, column: 7)
!3471 = !DILocation(line: 62, column: 13, scope: !3470, inlinedAt: !3459)
!3472 = !DILocation(line: 62, column: 10, scope: !3470, inlinedAt: !3459)
!3473 = !DILocation(line: 63, column: 5, scope: !3470, inlinedAt: !3459)
!3474 = !DILocation(line: 122, column: 3, scope: !3437)
!3475 = !DILocation(line: 51, column: 17, scope: !3453)
!3476 = !DILocation(line: 51, column: 27, scope: !3453)
!3477 = !DILocation(line: 53, column: 8, scope: !3462)
!3478 = !DILocation(line: 53, column: 13, scope: !3462)
!3479 = !DILocation(line: 53, column: 10, scope: !3462)
!3480 = !DILocation(line: 57, column: 7, scope: !3466)
!3481 = !DILocation(line: 58, column: 7, scope: !3466)
!3482 = !DILocation(line: 61, column: 7, scope: !3453)
!3483 = !DILocation(line: 62, column: 8, scope: !3470)
!3484 = !DILocation(line: 62, column: 13, scope: !3470)
!3485 = !DILocation(line: 62, column: 10, scope: !3470)
!3486 = !DILocation(line: 63, column: 5, scope: !3470)
!3487 = !DILocation(line: 65, column: 1, scope: !3453)
!3488 = !DILocation(line: 180, column: 19, scope: !659)
!3489 = !DILocation(line: 180, column: 30, scope: !659)
!3490 = !DILocation(line: 180, column: 41, scope: !659)
!3491 = !DILocation(line: 182, column: 14, scope: !659)
!3492 = !DILocation(line: 182, column: 10, scope: !659)
!3493 = !DILocation(line: 184, column: 9, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !659, file: !97, line: 184, column: 7)
!3495 = !DILocation(line: 184, column: 7, scope: !659)
!3496 = !DILocation(line: 186, column: 13, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !97, line: 186, column: 11)
!3498 = distinct !DILexicalBlock(scope: !3494, file: !97, line: 185, column: 5)
!3499 = !DILocation(line: 186, column: 11, scope: !3498)
!3500 = !DILocation(line: 194, column: 30, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3497, file: !97, line: 187, column: 9)
!3502 = !DILocation(line: 195, column: 16, scope: !3501)
!3503 = !DILocation(line: 195, column: 13, scope: !3501)
!3504 = !DILocation(line: 196, column: 9, scope: !3501)
!3505 = !DILocation(line: 204, column: 69, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !97, line: 204, column: 11)
!3507 = distinct !DILexicalBlock(scope: !3494, file: !97, line: 199, column: 5)
!3508 = !DILocation(line: 205, column: 11, scope: !3506)
!3509 = !DILocation(line: 204, column: 11, scope: !3507)
!3510 = !DILocation(line: 206, column: 9, scope: !3506)
!3511 = !DILocation(line: 210, column: 7, scope: !659)
!3512 = !DILocation(line: 211, column: 25, scope: !659)
!3513 = !DILocation(line: 51, column: 17, scope: !3453, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 211, column: 10, scope: !659)
!3515 = !DILocation(line: 51, column: 27, scope: !3453, inlinedAt: !3514)
!3516 = !DILocation(line: 53, column: 10, scope: !3462, inlinedAt: !3514)
!3517 = !DILocation(line: 207, column: 14, scope: !3507)
!3518 = !DILocation(line: 207, column: 18, scope: !3507)
!3519 = !DILocation(line: 207, column: 9, scope: !3507)
!3520 = !DILocation(line: 53, column: 8, scope: !3462, inlinedAt: !3514)
!3521 = !DILocation(line: 57, column: 7, scope: !3466, inlinedAt: !3514)
!3522 = !DILocation(line: 58, column: 7, scope: !3466, inlinedAt: !3514)
!3523 = !DILocation(line: 61, column: 7, scope: !3453, inlinedAt: !3514)
!3524 = !DILocation(line: 62, column: 8, scope: !3470, inlinedAt: !3514)
!3525 = !DILocation(line: 62, column: 13, scope: !3470, inlinedAt: !3514)
!3526 = !DILocation(line: 62, column: 10, scope: !3470, inlinedAt: !3514)
!3527 = !DILocation(line: 63, column: 5, scope: !3470, inlinedAt: !3514)
!3528 = !DILocation(line: 211, column: 3, scope: !659)
!3529 = distinct !DISubprogram(name: "xcharalloc", scope: !97, file: !97, line: 220, type: !2499, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !3530)
!3530 = !{!3531}
!3531 = !DILocalVariable(name: "n", arg: 1, scope: !3529, file: !97, line: 220, type: !102)
!3532 = !DILocation(line: 220, column: 20, scope: !3529)
!3533 = !DILocation(line: 39, column: 17, scope: !3413, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 222, column: 10, scope: !3529)
!3535 = !DILocation(line: 41, column: 13, scope: !3413, inlinedAt: !3534)
!3536 = !DILocation(line: 41, column: 9, scope: !3413, inlinedAt: !3534)
!3537 = !DILocation(line: 42, column: 8, scope: !3424, inlinedAt: !3534)
!3538 = !DILocation(line: 42, column: 15, scope: !3424, inlinedAt: !3534)
!3539 = !DILocation(line: 42, column: 10, scope: !3424, inlinedAt: !3534)
!3540 = !DILocation(line: 43, column: 5, scope: !3424, inlinedAt: !3534)
!3541 = !DILocation(line: 222, column: 3, scope: !3529)
!3542 = distinct !DISubprogram(name: "x2realloc", scope: !3414, file: !3414, line: 74, type: !3543, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !3545)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!23, !23, !101}
!3545 = !{!3546, !3547}
!3546 = !DILocalVariable(name: "p", arg: 1, scope: !3542, file: !3414, line: 74, type: !23)
!3547 = !DILocalVariable(name: "pn", arg: 2, scope: !3542, file: !3414, line: 74, type: !101)
!3548 = !DILocation(line: 74, column: 18, scope: !3542)
!3549 = !DILocation(line: 74, column: 29, scope: !3542)
!3550 = !DILocation(line: 180, column: 19, scope: !659, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 76, column: 10, scope: !3542)
!3552 = !DILocation(line: 180, column: 30, scope: !659, inlinedAt: !3551)
!3553 = !DILocation(line: 180, column: 41, scope: !659, inlinedAt: !3551)
!3554 = !DILocation(line: 182, column: 14, scope: !659, inlinedAt: !3551)
!3555 = !DILocation(line: 182, column: 10, scope: !659, inlinedAt: !3551)
!3556 = !DILocation(line: 184, column: 9, scope: !3494, inlinedAt: !3551)
!3557 = !DILocation(line: 184, column: 7, scope: !659, inlinedAt: !3551)
!3558 = !DILocation(line: 186, column: 13, scope: !3497, inlinedAt: !3551)
!3559 = !DILocation(line: 186, column: 11, scope: !3498, inlinedAt: !3551)
!3560 = !DILocation(line: 210, column: 7, scope: !659, inlinedAt: !3551)
!3561 = !DILocation(line: 51, column: 17, scope: !3453, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 211, column: 10, scope: !659, inlinedAt: !3551)
!3563 = !DILocation(line: 51, column: 27, scope: !3453, inlinedAt: !3562)
!3564 = !DILocation(line: 53, column: 10, scope: !3462, inlinedAt: !3562)
!3565 = !DILocation(line: 205, column: 11, scope: !3506, inlinedAt: !3551)
!3566 = !DILocation(line: 204, column: 11, scope: !3507, inlinedAt: !3551)
!3567 = !DILocation(line: 206, column: 9, scope: !3506, inlinedAt: !3551)
!3568 = !DILocation(line: 207, column: 14, scope: !3507, inlinedAt: !3551)
!3569 = !DILocation(line: 207, column: 18, scope: !3507, inlinedAt: !3551)
!3570 = !DILocation(line: 207, column: 9, scope: !3507, inlinedAt: !3551)
!3571 = !DILocation(line: 53, column: 8, scope: !3462, inlinedAt: !3562)
!3572 = !DILocation(line: 57, column: 7, scope: !3466, inlinedAt: !3562)
!3573 = !DILocation(line: 58, column: 7, scope: !3466, inlinedAt: !3562)
!3574 = !DILocation(line: 61, column: 7, scope: !3453, inlinedAt: !3562)
!3575 = !DILocation(line: 62, column: 8, scope: !3470, inlinedAt: !3562)
!3576 = !DILocation(line: 62, column: 13, scope: !3470, inlinedAt: !3562)
!3577 = !DILocation(line: 62, column: 10, scope: !3470, inlinedAt: !3562)
!3578 = !DILocation(line: 63, column: 5, scope: !3470, inlinedAt: !3562)
!3579 = !DILocation(line: 76, column: 3, scope: !3542)
!3580 = distinct !DISubprogram(name: "xzalloc", scope: !3414, file: !3414, line: 84, type: !3415, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !3581)
!3581 = !{!3582}
!3582 = !DILocalVariable(name: "s", arg: 1, scope: !3580, file: !3414, line: 84, type: !102)
!3583 = !DILocation(line: 84, column: 17, scope: !3580)
!3584 = !DILocation(line: 39, column: 17, scope: !3413, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 86, column: 18, scope: !3580)
!3586 = !DILocation(line: 41, column: 13, scope: !3413, inlinedAt: !3585)
!3587 = !DILocation(line: 41, column: 9, scope: !3413, inlinedAt: !3585)
!3588 = !DILocation(line: 42, column: 8, scope: !3424, inlinedAt: !3585)
!3589 = !DILocation(line: 42, column: 15, scope: !3424, inlinedAt: !3585)
!3590 = !DILocation(line: 42, column: 10, scope: !3424, inlinedAt: !3585)
!3591 = !DILocation(line: 43, column: 5, scope: !3424, inlinedAt: !3585)
!3592 = !DILocation(line: 86, column: 10, scope: !3580)
!3593 = !DILocation(line: 86, column: 3, scope: !3580)
!3594 = distinct !DISubprogram(name: "xcalloc", scope: !3414, file: !3414, line: 93, type: !3400, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !3595)
!3595 = !{!3596, !3597, !3598}
!3596 = !DILocalVariable(name: "n", arg: 1, scope: !3594, file: !3414, line: 93, type: !102)
!3597 = !DILocalVariable(name: "s", arg: 2, scope: !3594, file: !3414, line: 93, type: !102)
!3598 = !DILocalVariable(name: "p", scope: !3594, file: !3414, line: 95, type: !23)
!3599 = !DILocation(line: 93, column: 17, scope: !3594)
!3600 = !DILocation(line: 93, column: 27, scope: !3594)
!3601 = !DILocation(line: 100, column: 7, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3594, file: !3414, line: 100, column: 7)
!3603 = !DILocation(line: 101, column: 7, scope: !3602)
!3604 = !DILocation(line: 101, column: 18, scope: !3602)
!3605 = !DILocation(line: 95, column: 9, scope: !3594)
!3606 = !DILocation(line: 101, column: 16, scope: !3602)
!3607 = !DILocation(line: 100, column: 7, scope: !3594)
!3608 = !DILocation(line: 102, column: 5, scope: !3602)
!3609 = !DILocation(line: 103, column: 3, scope: !3594)
!3610 = distinct !DISubprogram(name: "xmemdup", scope: !3414, file: !3414, line: 111, type: !3611, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !3615)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!23, !3613, !102}
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3615 = !{!3616, !3617}
!3616 = !DILocalVariable(name: "p", arg: 1, scope: !3610, file: !3414, line: 111, type: !3613)
!3617 = !DILocalVariable(name: "s", arg: 2, scope: !3610, file: !3414, line: 111, type: !102)
!3618 = !DILocation(line: 111, column: 22, scope: !3610)
!3619 = !DILocation(line: 111, column: 32, scope: !3610)
!3620 = !DILocation(line: 39, column: 17, scope: !3413, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 113, column: 18, scope: !3610)
!3622 = !DILocation(line: 41, column: 13, scope: !3413, inlinedAt: !3621)
!3623 = !DILocation(line: 41, column: 9, scope: !3413, inlinedAt: !3621)
!3624 = !DILocation(line: 42, column: 8, scope: !3424, inlinedAt: !3621)
!3625 = !DILocation(line: 42, column: 15, scope: !3424, inlinedAt: !3621)
!3626 = !DILocation(line: 42, column: 10, scope: !3424, inlinedAt: !3621)
!3627 = !DILocation(line: 43, column: 5, scope: !3424, inlinedAt: !3621)
!3628 = !DILocation(line: 113, column: 10, scope: !3610)
!3629 = !DILocation(line: 113, column: 3, scope: !3610)
!3630 = distinct !DISubprogram(name: "xstrdup", scope: !3414, file: !3414, line: 119, type: !2699, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !3631)
!3631 = !{!3632}
!3632 = !DILocalVariable(name: "string", arg: 1, scope: !3630, file: !3414, line: 119, type: !35)
!3633 = !DILocation(line: 119, column: 22, scope: !3630)
!3634 = !DILocation(line: 121, column: 27, scope: !3630)
!3635 = !DILocation(line: 121, column: 43, scope: !3630)
!3636 = !DILocation(line: 111, column: 22, scope: !3610, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 121, column: 10, scope: !3630)
!3638 = !DILocation(line: 111, column: 32, scope: !3610, inlinedAt: !3637)
!3639 = !DILocation(line: 39, column: 17, scope: !3413, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 113, column: 18, scope: !3610, inlinedAt: !3637)
!3641 = !DILocation(line: 41, column: 13, scope: !3413, inlinedAt: !3640)
!3642 = !DILocation(line: 41, column: 9, scope: !3413, inlinedAt: !3640)
!3643 = !DILocation(line: 42, column: 8, scope: !3424, inlinedAt: !3640)
!3644 = !DILocation(line: 42, column: 15, scope: !3424, inlinedAt: !3640)
!3645 = !DILocation(line: 42, column: 10, scope: !3424, inlinedAt: !3640)
!3646 = !DILocation(line: 43, column: 5, scope: !3424, inlinedAt: !3640)
!3647 = !DILocation(line: 113, column: 10, scope: !3610, inlinedAt: !3637)
!3648 = !DILocation(line: 121, column: 3, scope: !3630)
!3649 = distinct !DISubprogram(name: "xalloc_die", scope: !3650, file: !3650, line: 32, type: !712, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !666, variables: !211)
!3650 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3651 = !DILocation(line: 34, column: 10, scope: !3649)
!3652 = !DILocation(line: 34, column: 33, scope: !3649)
!3653 = !DILocation(line: 34, column: 3, scope: !3649)
!3654 = !DILocation(line: 40, column: 3, scope: !3649)
!3655 = distinct !DISubprogram(name: "xstrndup", scope: !3656, file: !3656, line: 30, type: !2710, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !3657)
!3656 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3657 = !{!3658, !3659, !3660}
!3658 = !DILocalVariable(name: "string", arg: 1, scope: !3655, file: !3656, line: 30, type: !35)
!3659 = !DILocalVariable(name: "n", arg: 2, scope: !3655, file: !3656, line: 30, type: !102)
!3660 = !DILocalVariable(name: "s", scope: !3655, file: !3656, line: 32, type: !21)
!3661 = !DILocation(line: 30, column: 23, scope: !3655)
!3662 = !DILocation(line: 30, column: 38, scope: !3655)
!3663 = !DILocation(line: 32, column: 13, scope: !3655)
!3664 = !DILocation(line: 32, column: 9, scope: !3655)
!3665 = !DILocation(line: 33, column: 9, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3655, file: !3656, line: 33, column: 7)
!3667 = !DILocation(line: 33, column: 7, scope: !3655)
!3668 = !DILocation(line: 34, column: 5, scope: !3666)
!3669 = !DILocation(line: 35, column: 3, scope: !3655)
!3670 = distinct !DISubprogram(name: "rpl_calloc", scope: !3671, file: !3671, line: 42, type: !3400, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !670, variables: !3672)
!3671 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3672 = !{!3673, !3674, !3675, !3676}
!3673 = !DILocalVariable(name: "n", arg: 1, scope: !3670, file: !3671, line: 42, type: !102)
!3674 = !DILocalVariable(name: "s", arg: 2, scope: !3670, file: !3671, line: 42, type: !102)
!3675 = !DILocalVariable(name: "result", scope: !3670, file: !3671, line: 44, type: !23)
!3676 = !DILocalVariable(name: "bytes", scope: !3677, file: !3671, line: 56, type: !102)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !3671, line: 53, column: 5)
!3678 = distinct !DILexicalBlock(scope: !3670, file: !3671, line: 47, column: 7)
!3679 = !DILocation(line: 42, column: 20, scope: !3670)
!3680 = !DILocation(line: 42, column: 30, scope: !3670)
!3681 = !DILocation(line: 47, column: 9, scope: !3678)
!3682 = !DILocation(line: 47, column: 19, scope: !3678)
!3683 = !DILocation(line: 47, column: 14, scope: !3678)
!3684 = !DILocation(line: 56, column: 24, scope: !3677)
!3685 = !DILocation(line: 56, column: 14, scope: !3677)
!3686 = !DILocation(line: 57, column: 17, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3677, file: !3671, line: 57, column: 11)
!3688 = !DILocation(line: 57, column: 21, scope: !3687)
!3689 = !DILocation(line: 57, column: 11, scope: !3677)
!3690 = !DILocation(line: 59, column: 11, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3687, file: !3671, line: 58, column: 9)
!3692 = !DILocation(line: 59, column: 17, scope: !3691)
!3693 = !DILocation(line: 65, column: 12, scope: !3670)
!3694 = !DILocation(line: 44, column: 9, scope: !3670)
!3695 = !DILocation(line: 72, column: 3, scope: !3670)
!3696 = !DILocation(line: 73, column: 1, scope: !3670)
!3697 = distinct !DISubprogram(name: "rpl_fclose", scope: !3698, file: !3698, line: 56, type: !3699, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !3741)
!3698 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!24, !3701}
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !129, line: 7, baseType: !3703)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !131, line: 241, size: 1728, elements: !3704)
!3704 = !{!3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3703, file: !131, line: 242, baseType: !24, size: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3703, file: !131, line: 247, baseType: !21, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3703, file: !131, line: 248, baseType: !21, size: 64, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3703, file: !131, line: 249, baseType: !21, size: 64, offset: 192)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3703, file: !131, line: 250, baseType: !21, size: 64, offset: 256)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3703, file: !131, line: 251, baseType: !21, size: 64, offset: 320)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3703, file: !131, line: 252, baseType: !21, size: 64, offset: 384)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3703, file: !131, line: 253, baseType: !21, size: 64, offset: 448)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3703, file: !131, line: 254, baseType: !21, size: 64, offset: 512)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3703, file: !131, line: 256, baseType: !21, size: 64, offset: 576)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3703, file: !131, line: 257, baseType: !21, size: 64, offset: 640)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3703, file: !131, line: 258, baseType: !21, size: 64, offset: 704)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3703, file: !131, line: 260, baseType: !3718, size: 64, offset: 768)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !131, line: 156, size: 192, elements: !3720)
!3720 = !{!3721, !3722, !3724}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3719, file: !131, line: 157, baseType: !3718, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3719, file: !131, line: 158, baseType: !3723, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3719, file: !131, line: 162, baseType: !24, size: 32, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3703, file: !131, line: 262, baseType: !3723, size: 64, offset: 832)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3703, file: !131, line: 264, baseType: !24, size: 32, offset: 896)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3703, file: !131, line: 268, baseType: !24, size: 32, offset: 928)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3703, file: !131, line: 270, baseType: !157, size: 64, offset: 960)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3703, file: !131, line: 274, baseType: !25, size: 16, offset: 1024)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3703, file: !131, line: 275, baseType: !161, size: 8, offset: 1040)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3703, file: !131, line: 276, baseType: !163, size: 8, offset: 1048)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3703, file: !131, line: 280, baseType: !167, size: 64, offset: 1088)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3703, file: !131, line: 289, baseType: !170, size: 64, offset: 1152)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3703, file: !131, line: 297, baseType: !23, size: 64, offset: 1216)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3703, file: !131, line: 298, baseType: !23, size: 64, offset: 1280)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3703, file: !131, line: 299, baseType: !23, size: 64, offset: 1344)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3703, file: !131, line: 300, baseType: !23, size: 64, offset: 1408)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3703, file: !131, line: 302, baseType: !102, size: 64, offset: 1472)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3703, file: !131, line: 303, baseType: !24, size: 32, offset: 1536)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3703, file: !131, line: 305, baseType: !178, size: 160, offset: 1568)
!3741 = !{!3742, !3743, !3744, !3745}
!3742 = !DILocalVariable(name: "fp", arg: 1, scope: !3697, file: !3698, line: 56, type: !3701)
!3743 = !DILocalVariable(name: "saved_errno", scope: !3697, file: !3698, line: 58, type: !24)
!3744 = !DILocalVariable(name: "fd", scope: !3697, file: !3698, line: 59, type: !24)
!3745 = !DILocalVariable(name: "result", scope: !3697, file: !3698, line: 60, type: !24)
!3746 = !DILocation(line: 56, column: 19, scope: !3697)
!3747 = !DILocation(line: 58, column: 7, scope: !3697)
!3748 = !DILocation(line: 60, column: 7, scope: !3697)
!3749 = !DILocation(line: 63, column: 8, scope: !3697)
!3750 = !DILocation(line: 59, column: 7, scope: !3697)
!3751 = !DILocation(line: 64, column: 10, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3697, file: !3698, line: 64, column: 7)
!3753 = !DILocation(line: 64, column: 7, scope: !3697)
!3754 = !DILocation(line: 65, column: 12, scope: !3752)
!3755 = !DILocation(line: 65, column: 5, scope: !3752)
!3756 = !DILocation(line: 70, column: 9, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3697, file: !3698, line: 70, column: 7)
!3758 = !DILocation(line: 70, column: 23, scope: !3757)
!3759 = !DILocation(line: 70, column: 33, scope: !3757)
!3760 = !DILocation(line: 70, column: 26, scope: !3757)
!3761 = !DILocation(line: 70, column: 59, scope: !3757)
!3762 = !DILocation(line: 71, column: 7, scope: !3757)
!3763 = !DILocation(line: 71, column: 10, scope: !3757)
!3764 = !DILocation(line: 70, column: 7, scope: !3697)
!3765 = !DILocation(line: 98, column: 12, scope: !3697)
!3766 = !DILocation(line: 103, column: 7, scope: !3697)
!3767 = !DILocation(line: 72, column: 19, scope: !3757)
!3768 = !DILocation(line: 103, column: 19, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3697, file: !3698, line: 103, column: 7)
!3770 = !DILocation(line: 105, column: 13, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3769, file: !3698, line: 104, column: 5)
!3772 = !DILocation(line: 107, column: 5, scope: !3771)
!3773 = !DILocation(line: 110, column: 1, scope: !3697)
!3774 = distinct !DISubprogram(name: "rpl_fflush", scope: !3775, file: !3775, line: 127, type: !3776, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !3818)
!3775 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!24, !3778}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !129, line: 7, baseType: !3780)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !131, line: 241, size: 1728, elements: !3781)
!3781 = !{!3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3780, file: !131, line: 242, baseType: !24, size: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3780, file: !131, line: 247, baseType: !21, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3780, file: !131, line: 248, baseType: !21, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3780, file: !131, line: 249, baseType: !21, size: 64, offset: 192)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3780, file: !131, line: 250, baseType: !21, size: 64, offset: 256)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3780, file: !131, line: 251, baseType: !21, size: 64, offset: 320)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3780, file: !131, line: 252, baseType: !21, size: 64, offset: 384)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3780, file: !131, line: 253, baseType: !21, size: 64, offset: 448)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3780, file: !131, line: 254, baseType: !21, size: 64, offset: 512)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3780, file: !131, line: 256, baseType: !21, size: 64, offset: 576)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3780, file: !131, line: 257, baseType: !21, size: 64, offset: 640)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3780, file: !131, line: 258, baseType: !21, size: 64, offset: 704)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3780, file: !131, line: 260, baseType: !3795, size: 64, offset: 768)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !131, line: 156, size: 192, elements: !3797)
!3797 = !{!3798, !3799, !3801}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3796, file: !131, line: 157, baseType: !3795, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3796, file: !131, line: 158, baseType: !3800, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3796, file: !131, line: 162, baseType: !24, size: 32, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3780, file: !131, line: 262, baseType: !3800, size: 64, offset: 832)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3780, file: !131, line: 264, baseType: !24, size: 32, offset: 896)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3780, file: !131, line: 268, baseType: !24, size: 32, offset: 928)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3780, file: !131, line: 270, baseType: !157, size: 64, offset: 960)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3780, file: !131, line: 274, baseType: !25, size: 16, offset: 1024)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3780, file: !131, line: 275, baseType: !161, size: 8, offset: 1040)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3780, file: !131, line: 276, baseType: !163, size: 8, offset: 1048)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3780, file: !131, line: 280, baseType: !167, size: 64, offset: 1088)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3780, file: !131, line: 289, baseType: !170, size: 64, offset: 1152)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3780, file: !131, line: 297, baseType: !23, size: 64, offset: 1216)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3780, file: !131, line: 298, baseType: !23, size: 64, offset: 1280)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3780, file: !131, line: 299, baseType: !23, size: 64, offset: 1344)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3780, file: !131, line: 300, baseType: !23, size: 64, offset: 1408)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3780, file: !131, line: 302, baseType: !102, size: 64, offset: 1472)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3780, file: !131, line: 303, baseType: !24, size: 32, offset: 1536)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3780, file: !131, line: 305, baseType: !178, size: 160, offset: 1568)
!3818 = !{!3819}
!3819 = !DILocalVariable(name: "stream", arg: 1, scope: !3774, file: !3775, line: 127, type: !3778)
!3820 = !DILocation(line: 127, column: 19, scope: !3774)
!3821 = !DILocation(line: 148, column: 14, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3774, file: !3775, line: 148, column: 7)
!3823 = !DILocation(line: 148, column: 22, scope: !3822)
!3824 = !DILocation(line: 148, column: 27, scope: !3822)
!3825 = !DILocation(line: 148, column: 7, scope: !3774)
!3826 = !DILocation(line: 149, column: 12, scope: !3822)
!3827 = !DILocation(line: 149, column: 5, scope: !3822)
!3828 = !DILocalVariable(name: "fp", arg: 1, scope: !3829, file: !3775, line: 40, type: !3778)
!3829 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3775, file: !3775, line: 40, type: !3830, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{null, !3778}
!3832 = !{!3828}
!3833 = !DILocation(line: 40, column: 48, scope: !3829, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 153, column: 3, scope: !3774)
!3835 = !DILocation(line: 42, column: 11, scope: !3836, inlinedAt: !3834)
!3836 = distinct !DILexicalBlock(scope: !3829, file: !3775, line: 42, column: 7)
!3837 = !DILocation(line: 42, column: 18, scope: !3836, inlinedAt: !3834)
!3838 = !DILocation(line: 42, column: 7, scope: !3829, inlinedAt: !3834)
!3839 = !DILocation(line: 44, column: 5, scope: !3836, inlinedAt: !3834)
!3840 = !DILocation(line: 155, column: 10, scope: !3774)
!3841 = !DILocation(line: 155, column: 3, scope: !3774)
!3842 = !DILocation(line: 229, column: 1, scope: !3774)
!3843 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3844, file: !3844, line: 28, type: !3845, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !3887)
!3844 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!24, !3847, !1448, !24}
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !129, line: 7, baseType: !3849)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !131, line: 241, size: 1728, elements: !3850)
!3850 = !{!3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3849, file: !131, line: 242, baseType: !24, size: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3849, file: !131, line: 247, baseType: !21, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3849, file: !131, line: 248, baseType: !21, size: 64, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3849, file: !131, line: 249, baseType: !21, size: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3849, file: !131, line: 250, baseType: !21, size: 64, offset: 256)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3849, file: !131, line: 251, baseType: !21, size: 64, offset: 320)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3849, file: !131, line: 252, baseType: !21, size: 64, offset: 384)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3849, file: !131, line: 253, baseType: !21, size: 64, offset: 448)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3849, file: !131, line: 254, baseType: !21, size: 64, offset: 512)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3849, file: !131, line: 256, baseType: !21, size: 64, offset: 576)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3849, file: !131, line: 257, baseType: !21, size: 64, offset: 640)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3849, file: !131, line: 258, baseType: !21, size: 64, offset: 704)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3849, file: !131, line: 260, baseType: !3864, size: 64, offset: 768)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !131, line: 156, size: 192, elements: !3866)
!3866 = !{!3867, !3868, !3870}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3865, file: !131, line: 157, baseType: !3864, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3865, file: !131, line: 158, baseType: !3869, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3865, file: !131, line: 162, baseType: !24, size: 32, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3849, file: !131, line: 262, baseType: !3869, size: 64, offset: 832)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3849, file: !131, line: 264, baseType: !24, size: 32, offset: 896)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3849, file: !131, line: 268, baseType: !24, size: 32, offset: 928)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3849, file: !131, line: 270, baseType: !157, size: 64, offset: 960)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3849, file: !131, line: 274, baseType: !25, size: 16, offset: 1024)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3849, file: !131, line: 275, baseType: !161, size: 8, offset: 1040)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3849, file: !131, line: 276, baseType: !163, size: 8, offset: 1048)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3849, file: !131, line: 280, baseType: !167, size: 64, offset: 1088)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3849, file: !131, line: 289, baseType: !170, size: 64, offset: 1152)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3849, file: !131, line: 297, baseType: !23, size: 64, offset: 1216)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3849, file: !131, line: 298, baseType: !23, size: 64, offset: 1280)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3849, file: !131, line: 299, baseType: !23, size: 64, offset: 1344)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3849, file: !131, line: 300, baseType: !23, size: 64, offset: 1408)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3849, file: !131, line: 302, baseType: !102, size: 64, offset: 1472)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3849, file: !131, line: 303, baseType: !24, size: 32, offset: 1536)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3849, file: !131, line: 305, baseType: !178, size: 160, offset: 1568)
!3887 = !{!3888, !3889, !3890, !3891}
!3888 = !DILocalVariable(name: "fp", arg: 1, scope: !3843, file: !3844, line: 28, type: !3847)
!3889 = !DILocalVariable(name: "offset", arg: 2, scope: !3843, file: !3844, line: 28, type: !1448)
!3890 = !DILocalVariable(name: "whence", arg: 3, scope: !3843, file: !3844, line: 28, type: !24)
!3891 = !DILocalVariable(name: "pos", scope: !3892, file: !3844, line: 116, type: !1448)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !3844, line: 112, column: 5)
!3893 = distinct !DILexicalBlock(scope: !3843, file: !3844, line: 51, column: 7)
!3894 = !DILocation(line: 28, column: 15, scope: !3843)
!3895 = !DILocation(line: 28, column: 25, scope: !3843)
!3896 = !DILocation(line: 28, column: 37, scope: !3843)
!3897 = !DILocation(line: 51, column: 11, scope: !3893)
!3898 = !DILocation(line: 51, column: 31, scope: !3893)
!3899 = !DILocation(line: 51, column: 24, scope: !3893)
!3900 = !DILocation(line: 52, column: 7, scope: !3893)
!3901 = !DILocation(line: 52, column: 14, scope: !3893)
!3902 = !DILocation(line: 52, column: 35, scope: !3893)
!3903 = !{!877, !704, i64 32}
!3904 = !DILocation(line: 52, column: 28, scope: !3893)
!3905 = !DILocation(line: 53, column: 7, scope: !3893)
!3906 = !DILocation(line: 53, column: 14, scope: !3893)
!3907 = !{!877, !704, i64 72}
!3908 = !DILocation(line: 53, column: 28, scope: !3893)
!3909 = !DILocation(line: 51, column: 7, scope: !3843)
!3910 = !DILocation(line: 116, column: 26, scope: !3892)
!3911 = !DILocation(line: 116, column: 19, scope: !3892)
!3912 = !DILocation(line: 116, column: 13, scope: !3892)
!3913 = !DILocation(line: 117, column: 15, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3892, file: !3844, line: 117, column: 11)
!3915 = !DILocation(line: 117, column: 11, scope: !3892)
!3916 = !DILocation(line: 127, column: 11, scope: !3892)
!3917 = !DILocation(line: 127, column: 18, scope: !3892)
!3918 = !DILocation(line: 128, column: 11, scope: !3892)
!3919 = !DILocation(line: 128, column: 19, scope: !3892)
!3920 = !{!877, !862, i64 144}
!3921 = !DILocation(line: 159, column: 7, scope: !3892)
!3922 = !DILocation(line: 161, column: 10, scope: !3843)
!3923 = !DILocation(line: 161, column: 3, scope: !3843)
!3924 = !DILocation(line: 162, column: 1, scope: !3843)
!3925 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3926, file: !3926, line: 334, type: !3927, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !678, variables: !3941)
!3926 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!102, !3929, !35, !102, !3930}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1752, line: 6, baseType: !3932)
!3932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1754, line: 21, baseType: !3933)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1754, line: 13, size: 64, elements: !3934)
!3934 = !{!3935, !3936}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3933, file: !1754, line: 15, baseType: !24, size: 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3933, file: !1754, line: 20, baseType: !3937, size: 32, offset: 32)
!3937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3933, file: !1754, line: 16, size: 32, elements: !3938)
!3938 = !{!3939, !3940}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3937, file: !1754, line: 18, baseType: !113, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3937, file: !1754, line: 19, baseType: !1763, size: 32)
!3941 = !{!3942, !3943, !3944, !3945, !3946, !3947, !3948}
!3942 = !DILocalVariable(name: "pwc", arg: 1, scope: !3925, file: !3926, line: 334, type: !3929)
!3943 = !DILocalVariable(name: "s", arg: 2, scope: !3925, file: !3926, line: 334, type: !35)
!3944 = !DILocalVariable(name: "n", arg: 3, scope: !3925, file: !3926, line: 334, type: !102)
!3945 = !DILocalVariable(name: "ps", arg: 4, scope: !3925, file: !3926, line: 334, type: !3930)
!3946 = !DILocalVariable(name: "ret", scope: !3925, file: !3926, line: 336, type: !102)
!3947 = !DILocalVariable(name: "wc", scope: !3925, file: !3926, line: 337, type: !1768)
!3948 = !DILocalVariable(name: "uc", scope: !3949, file: !3926, line: 398, type: !27)
!3949 = distinct !DILexicalBlock(scope: !3950, file: !3926, line: 397, column: 5)
!3950 = distinct !DILexicalBlock(scope: !3925, file: !3926, line: 396, column: 7)
!3951 = !DILocation(line: 334, column: 23, scope: !3925)
!3952 = !DILocation(line: 334, column: 40, scope: !3925)
!3953 = !DILocation(line: 334, column: 50, scope: !3925)
!3954 = !DILocation(line: 334, column: 64, scope: !3925)
!3955 = !DILocation(line: 337, column: 3, scope: !3925)
!3956 = !DILocation(line: 353, column: 9, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3925, file: !3926, line: 353, column: 7)
!3958 = !DILocation(line: 353, column: 7, scope: !3925)
!3959 = !DILocation(line: 388, column: 9, scope: !3925)
!3960 = !DILocation(line: 336, column: 10, scope: !3925)
!3961 = !DILocation(line: 396, column: 19, scope: !3950)
!3962 = !DILocation(line: 396, column: 31, scope: !3950)
!3963 = !DILocation(line: 396, column: 26, scope: !3950)
!3964 = !DILocation(line: 396, column: 41, scope: !3950)
!3965 = !DILocation(line: 396, column: 7, scope: !3925)
!3966 = !DILocation(line: 398, column: 26, scope: !3949)
!3967 = !DILocation(line: 398, column: 21, scope: !3949)
!3968 = !DILocation(line: 399, column: 14, scope: !3949)
!3969 = !DILocation(line: 399, column: 12, scope: !3949)
!3970 = !DILocation(line: 405, column: 1, scope: !3925)
!3971 = distinct !DISubprogram(name: "close_stream", scope: !3972, file: !3972, line: 56, type: !3973, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !4015)
!3972 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!24, !3975}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !129, line: 7, baseType: !3977)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !131, line: 241, size: 1728, elements: !3978)
!3978 = !{!3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3977, file: !131, line: 242, baseType: !24, size: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3977, file: !131, line: 247, baseType: !21, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3977, file: !131, line: 248, baseType: !21, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3977, file: !131, line: 249, baseType: !21, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3977, file: !131, line: 250, baseType: !21, size: 64, offset: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3977, file: !131, line: 251, baseType: !21, size: 64, offset: 320)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3977, file: !131, line: 252, baseType: !21, size: 64, offset: 384)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3977, file: !131, line: 253, baseType: !21, size: 64, offset: 448)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3977, file: !131, line: 254, baseType: !21, size: 64, offset: 512)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3977, file: !131, line: 256, baseType: !21, size: 64, offset: 576)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3977, file: !131, line: 257, baseType: !21, size: 64, offset: 640)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3977, file: !131, line: 258, baseType: !21, size: 64, offset: 704)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3977, file: !131, line: 260, baseType: !3992, size: 64, offset: 768)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !131, line: 156, size: 192, elements: !3994)
!3994 = !{!3995, !3996, !3998}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3993, file: !131, line: 157, baseType: !3992, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3993, file: !131, line: 158, baseType: !3997, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3993, file: !131, line: 162, baseType: !24, size: 32, offset: 128)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3977, file: !131, line: 262, baseType: !3997, size: 64, offset: 832)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3977, file: !131, line: 264, baseType: !24, size: 32, offset: 896)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3977, file: !131, line: 268, baseType: !24, size: 32, offset: 928)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3977, file: !131, line: 270, baseType: !157, size: 64, offset: 960)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3977, file: !131, line: 274, baseType: !25, size: 16, offset: 1024)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3977, file: !131, line: 275, baseType: !161, size: 8, offset: 1040)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3977, file: !131, line: 276, baseType: !163, size: 8, offset: 1048)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3977, file: !131, line: 280, baseType: !167, size: 64, offset: 1088)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3977, file: !131, line: 289, baseType: !170, size: 64, offset: 1152)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3977, file: !131, line: 297, baseType: !23, size: 64, offset: 1216)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3977, file: !131, line: 298, baseType: !23, size: 64, offset: 1280)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3977, file: !131, line: 299, baseType: !23, size: 64, offset: 1344)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3977, file: !131, line: 300, baseType: !23, size: 64, offset: 1408)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3977, file: !131, line: 302, baseType: !102, size: 64, offset: 1472)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3977, file: !131, line: 303, baseType: !24, size: 32, offset: 1536)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3977, file: !131, line: 305, baseType: !178, size: 160, offset: 1568)
!4015 = !{!4016, !4017, !4019, !4020}
!4016 = !DILocalVariable(name: "stream", arg: 1, scope: !3971, file: !3972, line: 56, type: !3975)
!4017 = !DILocalVariable(name: "some_pending", scope: !3971, file: !3972, line: 58, type: !4018)
!4018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!4019 = !DILocalVariable(name: "prev_fail", scope: !3971, file: !3972, line: 59, type: !4018)
!4020 = !DILocalVariable(name: "fclose_fail", scope: !3971, file: !3972, line: 60, type: !4018)
!4021 = !DILocation(line: 56, column: 21, scope: !3971)
!4022 = !DILocation(line: 58, column: 30, scope: !3971)
!4023 = !DILocalVariable(name: "__stream", arg: 1, scope: !4024, file: !869, line: 132, type: !3975)
!4024 = distinct !DISubprogram(name: "ferror_unlocked", scope: !869, file: !869, line: 132, type: !3973, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !4025)
!4025 = !{!4023}
!4026 = !DILocation(line: 132, column: 1, scope: !4024, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 59, column: 27, scope: !3971)
!4028 = !DILocation(line: 134, column: 10, scope: !4024, inlinedAt: !4027)
!4029 = !DILocation(line: 59, column: 43, scope: !3971)
!4030 = !DILocation(line: 60, column: 29, scope: !3971)
!4031 = !DILocation(line: 60, column: 45, scope: !3971)
!4032 = !DILocation(line: 70, column: 17, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !3971, file: !3972, line: 70, column: 7)
!4034 = !DILocation(line: 58, column: 50, scope: !3971)
!4035 = !DILocation(line: 70, column: 33, scope: !4033)
!4036 = !DILocation(line: 70, column: 53, scope: !4033)
!4037 = !DILocation(line: 70, column: 59, scope: !4033)
!4038 = !DILocation(line: 70, column: 7, scope: !3971)
!4039 = !DILocation(line: 72, column: 11, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4033, file: !3972, line: 71, column: 5)
!4041 = !DILocation(line: 73, column: 9, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4040, file: !3972, line: 72, column: 11)
!4043 = !DILocation(line: 73, column: 15, scope: !4042)
!4044 = !DILocation(line: 78, column: 1, scope: !3971)
!4045 = distinct !DISubprogram(name: "hard_locale", scope: !4046, file: !4046, line: 38, type: !4047, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !683, variables: !4049)
!4046 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!198, !24}
!4049 = !{!4050, !4051, !4052}
!4050 = !DILocalVariable(name: "category", arg: 1, scope: !4045, file: !4046, line: 38, type: !24)
!4051 = !DILocalVariable(name: "hard", scope: !4045, file: !4046, line: 40, type: !198)
!4052 = !DILocalVariable(name: "p", scope: !4045, file: !4046, line: 41, type: !35)
!4053 = !DILocation(line: 38, column: 18, scope: !4045)
!4054 = !DILocation(line: 40, column: 8, scope: !4045)
!4055 = !DILocation(line: 41, column: 19, scope: !4045)
!4056 = !DILocation(line: 41, column: 15, scope: !4045)
!4057 = !DILocation(line: 43, column: 7, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4045, file: !4046, line: 43, column: 7)
!4059 = !DILocation(line: 43, column: 7, scope: !4045)
!4060 = !DILocation(line: 47, column: 15, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4062, file: !4046, line: 47, column: 15)
!4062 = distinct !DILexicalBlock(scope: !4063, file: !4046, line: 46, column: 9)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !4046, line: 45, column: 11)
!4064 = distinct !DILexicalBlock(scope: !4058, file: !4046, line: 44, column: 5)
!4065 = !DILocation(line: 47, column: 31, scope: !4061)
!4066 = !DILocation(line: 47, column: 36, scope: !4061)
!4067 = !DILocation(line: 47, column: 39, scope: !4061)
!4068 = !DILocation(line: 47, column: 59, scope: !4061)
!4069 = !DILocation(line: 47, column: 15, scope: !4062)
!4070 = !DILocation(line: 48, column: 13, scope: !4061)
!4071 = !DILocation(line: 71, column: 3, scope: !4045)
!4072 = distinct !DISubprogram(name: "locale_charset", scope: !642, file: !642, line: 393, type: !4073, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !299, variables: !4075)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!35}
!4075 = !{!4076, !4077}
!4076 = !DILocalVariable(name: "codeset", scope: !4072, file: !642, line: 395, type: !35)
!4077 = !DILocalVariable(name: "aliases", scope: !4072, file: !642, line: 396, type: !35)
!4078 = !DILocalVariable(name: "buf1", scope: !4079, file: !642, line: 196, type: !4146)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !642, line: 194, column: 21)
!4080 = distinct !DILexicalBlock(scope: !4081, file: !642, line: 193, column: 19)
!4081 = distinct !DILexicalBlock(scope: !4082, file: !642, line: 193, column: 19)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !642, line: 188, column: 17)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !642, line: 181, column: 19)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !642, line: 177, column: 13)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !642, line: 173, column: 15)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !642, line: 161, column: 9)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !642, line: 157, column: 11)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !642, line: 130, column: 5)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !642, line: 129, column: 7)
!4090 = distinct !DISubprogram(name: "get_charset_aliases", scope: !642, file: !642, line: 124, type: !4073, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !299, variables: !4091)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4098, !4099, !4100, !4101, !4142, !4143, !4144, !4078, !4145, !4149, !4150, !4151}
!4092 = !DILocalVariable(name: "cp", scope: !4090, file: !642, line: 126, type: !35)
!4093 = !DILocalVariable(name: "dir", scope: !4088, file: !642, line: 132, type: !35)
!4094 = !DILocalVariable(name: "base", scope: !4088, file: !642, line: 133, type: !35)
!4095 = !DILocalVariable(name: "file_name", scope: !4088, file: !642, line: 134, type: !21)
!4096 = !DILocalVariable(name: "dir_len", scope: !4097, file: !642, line: 144, type: !102)
!4097 = distinct !DILexicalBlock(scope: !4088, file: !642, line: 143, column: 7)
!4098 = !DILocalVariable(name: "base_len", scope: !4097, file: !642, line: 145, type: !102)
!4099 = !DILocalVariable(name: "add_slash", scope: !4097, file: !642, line: 146, type: !24)
!4100 = !DILocalVariable(name: "fd", scope: !4086, file: !642, line: 162, type: !24)
!4101 = !DILocalVariable(name: "fp", scope: !4084, file: !642, line: 178, type: !4102)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !129, line: 7, baseType: !4104)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !131, line: 241, size: 1728, elements: !4105)
!4105 = !{!4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4104, file: !131, line: 242, baseType: !24, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4104, file: !131, line: 247, baseType: !21, size: 64, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4104, file: !131, line: 248, baseType: !21, size: 64, offset: 128)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4104, file: !131, line: 249, baseType: !21, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4104, file: !131, line: 250, baseType: !21, size: 64, offset: 256)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4104, file: !131, line: 251, baseType: !21, size: 64, offset: 320)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4104, file: !131, line: 252, baseType: !21, size: 64, offset: 384)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4104, file: !131, line: 253, baseType: !21, size: 64, offset: 448)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4104, file: !131, line: 254, baseType: !21, size: 64, offset: 512)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4104, file: !131, line: 256, baseType: !21, size: 64, offset: 576)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4104, file: !131, line: 257, baseType: !21, size: 64, offset: 640)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4104, file: !131, line: 258, baseType: !21, size: 64, offset: 704)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4104, file: !131, line: 260, baseType: !4119, size: 64, offset: 768)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !131, line: 156, size: 192, elements: !4121)
!4121 = !{!4122, !4123, !4125}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4120, file: !131, line: 157, baseType: !4119, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4120, file: !131, line: 158, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4120, file: !131, line: 162, baseType: !24, size: 32, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4104, file: !131, line: 262, baseType: !4124, size: 64, offset: 832)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4104, file: !131, line: 264, baseType: !24, size: 32, offset: 896)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4104, file: !131, line: 268, baseType: !24, size: 32, offset: 928)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4104, file: !131, line: 270, baseType: !157, size: 64, offset: 960)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4104, file: !131, line: 274, baseType: !25, size: 16, offset: 1024)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4104, file: !131, line: 275, baseType: !161, size: 8, offset: 1040)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4104, file: !131, line: 276, baseType: !163, size: 8, offset: 1048)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4104, file: !131, line: 280, baseType: !167, size: 64, offset: 1088)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4104, file: !131, line: 289, baseType: !170, size: 64, offset: 1152)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4104, file: !131, line: 297, baseType: !23, size: 64, offset: 1216)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4104, file: !131, line: 298, baseType: !23, size: 64, offset: 1280)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4104, file: !131, line: 299, baseType: !23, size: 64, offset: 1344)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4104, file: !131, line: 300, baseType: !23, size: 64, offset: 1408)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4104, file: !131, line: 302, baseType: !102, size: 64, offset: 1472)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4104, file: !131, line: 303, baseType: !24, size: 32, offset: 1536)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4104, file: !131, line: 305, baseType: !178, size: 160, offset: 1568)
!4142 = !DILocalVariable(name: "res_ptr", scope: !4082, file: !642, line: 190, type: !21)
!4143 = !DILocalVariable(name: "res_size", scope: !4082, file: !642, line: 191, type: !102)
!4144 = !DILocalVariable(name: "c", scope: !4079, file: !642, line: 195, type: !24)
!4145 = !DILocalVariable(name: "buf2", scope: !4079, file: !642, line: 197, type: !4146)
!4146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 408, elements: !4147)
!4147 = !{!4148}
!4148 = !DISubrange(count: 51)
!4149 = !DILocalVariable(name: "l1", scope: !4079, file: !642, line: 198, type: !102)
!4150 = !DILocalVariable(name: "l2", scope: !4079, file: !642, line: 198, type: !102)
!4151 = !DILocalVariable(name: "old_res_ptr", scope: !4079, file: !642, line: 199, type: !21)
!4152 = !DILocation(line: 196, column: 28, scope: !4079, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 589, column: 18, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4072, file: !642, line: 589, column: 3)
!4155 = !DILocation(line: 197, column: 28, scope: !4079, inlinedAt: !4153)
!4156 = !DILocation(line: 403, column: 13, scope: !4072)
!4157 = !DILocation(line: 395, column: 15, scope: !4072)
!4158 = !DILocation(line: 584, column: 15, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4072, file: !642, line: 584, column: 7)
!4160 = !DILocation(line: 584, column: 7, scope: !4072)
!4161 = !DILocation(line: 128, column: 8, scope: !4090, inlinedAt: !4153)
!4162 = !DILocation(line: 126, column: 15, scope: !4090, inlinedAt: !4153)
!4163 = !DILocation(line: 129, column: 10, scope: !4089, inlinedAt: !4153)
!4164 = !DILocation(line: 129, column: 7, scope: !4090, inlinedAt: !4153)
!4165 = !DILocation(line: 138, column: 13, scope: !4088, inlinedAt: !4153)
!4166 = !DILocation(line: 132, column: 19, scope: !4088, inlinedAt: !4153)
!4167 = !DILocation(line: 139, column: 15, scope: !4168, inlinedAt: !4153)
!4168 = distinct !DILexicalBlock(scope: !4088, file: !642, line: 139, column: 11)
!4169 = !DILocation(line: 139, column: 23, scope: !4168, inlinedAt: !4153)
!4170 = !DILocation(line: 139, column: 26, scope: !4168, inlinedAt: !4153)
!4171 = !DILocation(line: 139, column: 33, scope: !4168, inlinedAt: !4153)
!4172 = !DILocation(line: 139, column: 11, scope: !4088, inlinedAt: !4153)
!4173 = !DILocation(line: 140, column: 9, scope: !4168, inlinedAt: !4153)
!4174 = !DILocation(line: 144, column: 26, scope: !4097, inlinedAt: !4153)
!4175 = !DILocation(line: 144, column: 16, scope: !4097, inlinedAt: !4153)
!4176 = !DILocation(line: 145, column: 16, scope: !4097, inlinedAt: !4153)
!4177 = !DILocation(line: 146, column: 34, scope: !4097, inlinedAt: !4153)
!4178 = !DILocation(line: 146, column: 38, scope: !4097, inlinedAt: !4153)
!4179 = !DILocation(line: 146, column: 42, scope: !4097, inlinedAt: !4153)
!4180 = !DILocation(line: 147, column: 48, scope: !4097, inlinedAt: !4153)
!4181 = !DILocation(line: 147, column: 46, scope: !4097, inlinedAt: !4153)
!4182 = !DILocation(line: 147, column: 69, scope: !4097, inlinedAt: !4153)
!4183 = !DILocation(line: 147, column: 30, scope: !4097, inlinedAt: !4153)
!4184 = !DILocation(line: 134, column: 13, scope: !4088, inlinedAt: !4153)
!4185 = !DILocation(line: 148, column: 13, scope: !4097, inlinedAt: !4153)
!4186 = !DILocation(line: 150, column: 13, scope: !4187, inlinedAt: !4153)
!4187 = distinct !DILexicalBlock(scope: !4188, file: !642, line: 149, column: 11)
!4188 = distinct !DILexicalBlock(scope: !4097, file: !642, line: 148, column: 13)
!4189 = !DILocation(line: 151, column: 17, scope: !4187, inlinedAt: !4153)
!4190 = !DILocation(line: 152, column: 34, scope: !4191, inlinedAt: !4153)
!4191 = distinct !DILexicalBlock(scope: !4187, file: !642, line: 151, column: 17)
!4192 = !DILocation(line: 153, column: 41, scope: !4187, inlinedAt: !4153)
!4193 = !DILocation(line: 153, column: 13, scope: !4187, inlinedAt: !4153)
!4194 = !DILocation(line: 157, column: 11, scope: !4088, inlinedAt: !4153)
!4195 = !DILocation(line: 171, column: 16, scope: !4086, inlinedAt: !4153)
!4196 = !DILocation(line: 162, column: 15, scope: !4086, inlinedAt: !4153)
!4197 = !DILocation(line: 173, column: 18, scope: !4085, inlinedAt: !4153)
!4198 = !DILocation(line: 173, column: 15, scope: !4086, inlinedAt: !4153)
!4199 = !DILocation(line: 180, column: 20, scope: !4084, inlinedAt: !4153)
!4200 = !DILocation(line: 178, column: 21, scope: !4084, inlinedAt: !4153)
!4201 = !DILocation(line: 181, column: 22, scope: !4083, inlinedAt: !4153)
!4202 = !DILocation(line: 181, column: 19, scope: !4084, inlinedAt: !4153)
!4203 = !DILocation(line: 184, column: 19, scope: !4204, inlinedAt: !4153)
!4204 = distinct !DILexicalBlock(scope: !4083, file: !642, line: 182, column: 17)
!4205 = !DILocation(line: 186, column: 17, scope: !4204, inlinedAt: !4153)
!4206 = !DILocation(line: 190, column: 25, scope: !4082, inlinedAt: !4153)
!4207 = !DILocation(line: 191, column: 26, scope: !4082, inlinedAt: !4153)
!4208 = !DILocation(line: 193, column: 19, scope: !4082, inlinedAt: !4153)
!4209 = !DILocation(line: 196, column: 23, scope: !4079, inlinedAt: !4153)
!4210 = !DILocation(line: 197, column: 23, scope: !4079, inlinedAt: !4153)
!4211 = !DILocalVariable(name: "__fp", arg: 1, scope: !4212, file: !869, line: 63, type: !4102)
!4212 = distinct !DISubprogram(name: "getc_unlocked", scope: !869, file: !869, line: 63, type: !4213, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !299, variables: !4215)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!24, !4102}
!4215 = !{!4211}
!4216 = !DILocation(line: 63, column: 22, scope: !4212, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 201, column: 27, scope: !4079, inlinedAt: !4153)
!4218 = !DILocation(line: 65, column: 10, scope: !4212, inlinedAt: !4217)
!4219 = !DILocation(line: 195, column: 27, scope: !4079, inlinedAt: !4153)
!4220 = !DILocation(line: 202, column: 27, scope: !4079, inlinedAt: !4153)
!4221 = distinct !{!4221, !4222, !4225}
!4222 = !DILocation(line: 209, column: 27, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !642, line: 207, column: 25)
!4224 = distinct !DILexicalBlock(scope: !4079, file: !642, line: 206, column: 27)
!4225 = !DILocation(line: 211, column: 58, scope: !4223)
!4226 = !DILocation(line: 65, column: 10, scope: !4212, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 210, column: 33, scope: !4223, inlinedAt: !4153)
!4228 = !DILocation(line: 63, column: 22, scope: !4212, inlinedAt: !4227)
!4229 = !DILocation(line: 210, column: 29, scope: !4223, inlinedAt: !4153)
!4230 = distinct !{!4230, !4231, !4232}
!4231 = !DILocation(line: 193, column: 19, scope: !4081)
!4232 = !DILocation(line: 241, column: 21, scope: !4081)
!4233 = !DILocation(line: 216, column: 23, scope: !4079, inlinedAt: !4153)
!4234 = !DILocation(line: 217, column: 27, scope: !4235, inlinedAt: !4153)
!4235 = distinct !DILexicalBlock(scope: !4079, file: !642, line: 217, column: 27)
!4236 = !DILocation(line: 217, column: 64, scope: !4235, inlinedAt: !4153)
!4237 = !DILocation(line: 217, column: 27, scope: !4079, inlinedAt: !4153)
!4238 = !DILocation(line: 219, column: 28, scope: !4079, inlinedAt: !4153)
!4239 = !DILocation(line: 198, column: 30, scope: !4079, inlinedAt: !4153)
!4240 = !DILocation(line: 220, column: 28, scope: !4079, inlinedAt: !4153)
!4241 = !DILocation(line: 198, column: 34, scope: !4079, inlinedAt: !4153)
!4242 = !DILocation(line: 199, column: 29, scope: !4079, inlinedAt: !4153)
!4243 = !DILocation(line: 222, column: 36, scope: !4244, inlinedAt: !4153)
!4244 = distinct !DILexicalBlock(scope: !4079, file: !642, line: 222, column: 27)
!4245 = !DILocation(line: 222, column: 27, scope: !4079, inlinedAt: !4153)
!4246 = !DILocation(line: 225, column: 63, scope: !4247, inlinedAt: !4153)
!4247 = distinct !DILexicalBlock(scope: !4244, file: !642, line: 223, column: 25)
!4248 = !DILocation(line: 225, column: 46, scope: !4247, inlinedAt: !4153)
!4249 = !DILocation(line: 226, column: 25, scope: !4247, inlinedAt: !4153)
!4250 = !DILocation(line: 229, column: 36, scope: !4251, inlinedAt: !4153)
!4251 = distinct !DILexicalBlock(scope: !4244, file: !642, line: 228, column: 25)
!4252 = !DILocation(line: 230, column: 73, scope: !4251, inlinedAt: !4153)
!4253 = !DILocation(line: 230, column: 46, scope: !4251, inlinedAt: !4153)
!4254 = !DILocation(line: 232, column: 35, scope: !4255, inlinedAt: !4153)
!4255 = distinct !DILexicalBlock(scope: !4079, file: !642, line: 232, column: 27)
!4256 = !DILocation(line: 232, column: 27, scope: !4079, inlinedAt: !4153)
!4257 = !DILocation(line: 236, column: 27, scope: !4258, inlinedAt: !4153)
!4258 = distinct !DILexicalBlock(scope: !4255, file: !642, line: 233, column: 25)
!4259 = !DILocation(line: 237, column: 27, scope: !4258, inlinedAt: !4153)
!4260 = !DILocation(line: 241, column: 21, scope: !4080, inlinedAt: !4153)
!4261 = !DILocation(line: 239, column: 39, scope: !4079, inlinedAt: !4153)
!4262 = !DILocation(line: 239, column: 50, scope: !4079, inlinedAt: !4153)
!4263 = !DILocation(line: 239, column: 61, scope: !4079, inlinedAt: !4153)
!4264 = !DILocalVariable(name: "__dest", arg: 1, scope: !4265, file: !4266, line: 88, type: !4269)
!4265 = distinct !DISubprogram(name: "strcpy", scope: !4266, file: !4266, line: 88, type: !4267, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !299, variables: !4271)
!4266 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!21, !4269, !4270}
!4269 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!4270 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!4271 = !{!4264, !4272}
!4272 = !DILocalVariable(name: "__src", arg: 2, scope: !4265, file: !4266, line: 88, type: !4270)
!4273 = !DILocation(line: 88, column: 1, scope: !4265, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 239, column: 23, scope: !4079, inlinedAt: !4153)
!4275 = !DILocation(line: 90, column: 49, scope: !4265, inlinedAt: !4274)
!4276 = !DILocation(line: 90, column: 10, scope: !4265, inlinedAt: !4274)
!4277 = !DILocation(line: 88, column: 1, scope: !4265, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 240, column: 23, scope: !4079, inlinedAt: !4153)
!4279 = !DILocation(line: 90, column: 49, scope: !4265, inlinedAt: !4278)
!4280 = !DILocation(line: 90, column: 10, scope: !4265, inlinedAt: !4278)
!4281 = !DILocation(line: 193, column: 19, scope: !4080, inlinedAt: !4153)
!4282 = !DILocation(line: 242, column: 19, scope: !4082, inlinedAt: !4153)
!4283 = !DILocation(line: 243, column: 32, scope: !4284, inlinedAt: !4153)
!4284 = distinct !DILexicalBlock(scope: !4082, file: !642, line: 243, column: 23)
!4285 = !DILocation(line: 243, column: 23, scope: !4082, inlinedAt: !4153)
!4286 = !DILocation(line: 247, column: 33, scope: !4287, inlinedAt: !4153)
!4287 = distinct !DILexicalBlock(scope: !4284, file: !642, line: 246, column: 21)
!4288 = !DILocation(line: 247, column: 45, scope: !4287, inlinedAt: !4153)
!4289 = !DILocation(line: 253, column: 11, scope: !4086, inlinedAt: !4153)
!4290 = !DILocation(line: 377, column: 23, scope: !4088, inlinedAt: !4153)
!4291 = !DILocation(line: 378, column: 5, scope: !4088, inlinedAt: !4153)
!4292 = !DILocation(line: 396, column: 15, scope: !4072)
!4293 = !DILocation(line: 590, column: 8, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4154, file: !642, line: 589, column: 3)
!4295 = !DILocation(line: 590, column: 17, scope: !4294)
!4296 = !DILocation(line: 589, column: 3, scope: !4154)
!4297 = !DILocation(line: 592, column: 9, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4294, file: !642, line: 592, column: 9)
!4299 = !DILocation(line: 592, column: 35, scope: !4298)
!4300 = !DILocation(line: 593, column: 9, scope: !4298)
!4301 = !DILocation(line: 593, column: 24, scope: !4298)
!4302 = !DILocation(line: 593, column: 31, scope: !4298)
!4303 = !DILocation(line: 593, column: 34, scope: !4298)
!4304 = !DILocation(line: 593, column: 45, scope: !4298)
!4305 = !DILocation(line: 592, column: 9, scope: !4294)
!4306 = !DILocation(line: 595, column: 29, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4298, file: !642, line: 594, column: 7)
!4308 = !DILocation(line: 595, column: 27, scope: !4307)
!4309 = !DILocation(line: 595, column: 46, scope: !4307)
!4310 = !DILocation(line: 596, column: 9, scope: !4307)
!4311 = !DILocation(line: 591, column: 19, scope: !4294)
!4312 = !DILocation(line: 591, column: 36, scope: !4294)
!4313 = !DILocation(line: 591, column: 16, scope: !4294)
!4314 = !DILocation(line: 591, column: 52, scope: !4294)
!4315 = !DILocation(line: 591, column: 69, scope: !4294)
!4316 = !DILocation(line: 591, column: 49, scope: !4294)
!4317 = distinct !{!4317, !4296, !4318}
!4318 = !DILocation(line: 597, column: 7, scope: !4154)
!4319 = !DILocation(line: 602, column: 7, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4072, file: !642, line: 602, column: 7)
!4321 = !DILocation(line: 602, column: 18, scope: !4320)
!4322 = !DILocation(line: 602, column: 7, scope: !4072)
!4323 = !DILocation(line: 612, column: 3, scope: !4072)
