; ModuleID = 'coreutils-8.27/src/unexpand.bc'
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
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert blanks in each FILE to tabs, writing to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [295 x i8] c"  -a, --all        convert all blanks, instead of just initial blanks\0A      --first-only  convert only leading sequences of blanks (overrides -a)\0A  -t, --tabs=N     have tabs N characters apart instead of 8 (enables -a)\0A  -t, --tabs=LIST  use comma separated LIST of tab positions (enables -a)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"unexpand\00", align 1
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
@.str.10 = private unnamed_addr constant [15 x i8] c",0123456789at:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"tab stop value is too large\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"first-only\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@convert_entire_line = local_unnamed_addr global i8 0, align 1, !dbg !69
@exit_status = local_unnamed_addr global i32 0, align 4, !dbg !115
@max_column_width = common local_unnamed_addr global i64 0, align 8, !dbg !179
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !181
@tab_list = internal unnamed_addr global i64* null, align 8, !dbg !183
@n_tabs_allocated = internal global i64 0, align 8, !dbg !185
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !187
@.str.8.11 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@.str.1.12 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.2.13 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.3.14 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.4.15 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@.str.9.18 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.10.19 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !189
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.24, i32 0, i32 0), i8* null], align 16, !dbg !194
@file_list = internal unnamed_addr global i8** null, align 8, !dbg !199
@.str.6.24 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@next_file.prev_file = internal unnamed_addr global i8* null, align 8, !dbg !117
@.str.5.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.7.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !202
@.str.38 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !208
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !213
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !216
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !223
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !230
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !242
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !249
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !261
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !268
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !275
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !263
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !277
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
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.94 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.95 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !283
@.str.1.106 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.125 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.128 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !292
@.str.3.129 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.130 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.131 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.132 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.133 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.134 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !686 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !690, metadata !691), !dbg !692
  %2 = icmp eq i32 %0, 0, !dbg !693
  br i1 %2, label %8, label %3, !dbg !695

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !696, !tbaa !698
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !696
  %6 = load i8*, i8** @program_name, align 8, !dbg !696, !tbaa !698
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !696
  br label %45, !dbg !696

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !702
  %10 = load i8*, i8** @program_name, align 8, !dbg !702, !tbaa !698
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !702
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !704
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !698
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !704
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !705
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !698
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !705
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !710
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !698
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !710
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !713
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713, !tbaa !698
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !713
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !714
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !698
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !714
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !715
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !715, !tbaa !698
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !715
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !45, metadata !691) #10, !dbg !716
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !45, metadata !691) #10, !dbg !716
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !718
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !718
  %32 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !719
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !53, metadata !691) #10, !dbg !720
  %33 = icmp eq i8* %32, null, !dbg !721
  br i1 %33, label %40, label %34, !dbg !723

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #14, !dbg !724
  %36 = icmp eq i32 %35, 0, !dbg !724
  br i1 %36, label %40, label %37, !dbg !725

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !726
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !726
  br label %40, !dbg !728

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !729
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !729
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !730
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !730
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #15, !dbg !731
  unreachable, !dbg !731
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !732 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !736, metadata !691), !dbg !742
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !737, metadata !691), !dbg !743
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !738, metadata !691), !dbg !744
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !741, metadata !691), !dbg !745
  %5 = load i8*, i8** %1, align 8, !dbg !746, !tbaa !698
  tail call void @set_program_name(i8* %5) #10, !dbg !747
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !748
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !749
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !750
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !751
  br label %10, !dbg !752

; <label>:10:                                     ; preds = %41, %2
  %11 = phi i64 [ %46, %41 ], [ undef, %2 ]
  %12 = phi i8 [ %42, %41 ], [ 0, %2 ]
  %13 = phi i8 [ %19, %41 ], [ 0, %2 ]
  br label %14, !dbg !753

; <label>:14:                                     ; preds = %30, %10
  %15 = phi i8 [ %12, %10 ], [ 0, %30 ]
  %16 = phi i8 [ %13, %10 ], [ %19, %30 ]
  br label %18, !dbg !753

; <label>:17:                                     ; preds = %20
  br label %18, !dbg !753

; <label>:18:                                     ; preds = %17, %14
  %19 = phi i8 [ %16, %14 ], [ 1, %17 ]
  br label %20, !dbg !753

; <label>:20:                                     ; preds = %26, %18
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !739, metadata !691), !dbg !754
  tail call void @llvm.dbg.value(metadata i8 %19, i64 0, metadata !741, metadata !691), !dbg !745
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !738, metadata !691), !dbg !744
  %21 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !753
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !740, metadata !691), !dbg !755
  switch i32 %21, label %36 [
    i32 -1, label %50
    i32 63, label %22
    i32 97, label %23
    i32 116, label %24
    i32 128, label %17
    i32 44, label %27
    i32 -130, label %32
    i32 -131, label %33
  ], !dbg !752, !llvm.loop !756

; <label>:22:                                     ; preds = %20
  tail call void @usage(i32 1) #16, !dbg !758
  unreachable, !dbg !758

; <label>:23:                                     ; preds = %20
  store i8 1, i8* @convert_entire_line, align 1, !dbg !761, !tbaa !762
  br label %26, !dbg !764

; <label>:24:                                     ; preds = %20
  store i8 1, i8* @convert_entire_line, align 1, !dbg !765, !tbaa !762
  %25 = load i8*, i8** @optarg, align 8, !dbg !766, !tbaa !698
  tail call void @parse_tab_stops(i8* %25) #10, !dbg !767
  br label %26, !dbg !768

; <label>:26:                                     ; preds = %24, %23
  br label %20, !dbg !754, !llvm.loop !756

; <label>:27:                                     ; preds = %20
  %28 = and i8 %15, 1, !dbg !769
  %29 = icmp eq i8 %28, 0, !dbg !769
  br i1 %29, label %30, label %31, !dbg !771

; <label>:30:                                     ; preds = %27, %31
  br label %14, !dbg !753, !llvm.loop !756

; <label>:31:                                     ; preds = %27
  tail call void @add_tab_stop(i64 %11) #10, !dbg !772
  br label %30, !dbg !772

; <label>:32:                                     ; preds = %20
  tail call void @usage(i32 0) #16, !dbg !773
  unreachable, !dbg !773

; <label>:33:                                     ; preds = %20
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !774, !tbaa !698
  %35 = load i8*, i8** @Version, align 8, !dbg !774, !tbaa !698
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #10, !dbg !774
  tail call void @exit(i32 0) #15, !dbg !774
  unreachable, !dbg !774

; <label>:36:                                     ; preds = %20
  %37 = and i8 %15, 1, !dbg !775
  %38 = icmp eq i8 %37, 0, !dbg !775
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !739, metadata !691), !dbg !754
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !738, metadata !691), !dbg !744
  %39 = select i1 %38, i64 0, i64 %11, !dbg !777
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !739, metadata !691), !dbg !754
  tail call void @llvm.dbg.value(metadata i8 %42, i64 0, metadata !738, metadata !691), !dbg !744
  %40 = icmp ugt i64 %39, 1844674407370955161, !dbg !778
  br i1 %40, label %48, label %41, !dbg !778

; <label>:41:                                     ; preds = %36
  %42 = select i1 %38, i8 1, i8 %15, !dbg !777
  %43 = mul i64 %39, 10, !dbg !778
  %44 = add nsw i32 %21, -48, !dbg !778
  %45 = sext i32 %44 to i64, !dbg !778
  %46 = add i64 %43, %45, !dbg !778
  %47 = icmp ult i64 %46, %39, !dbg !778
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !739, metadata !691), !dbg !754
  br i1 %47, label %48, label %10, !dbg !780, !llvm.loop !756

; <label>:48:                                     ; preds = %41, %36
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !781
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %49) #10, !dbg !781
  unreachable, !dbg !781

; <label>:50:                                     ; preds = %20
  %51 = icmp eq i8 %19, 0, !dbg !782
  br i1 %51, label %53, label %52, !dbg !784

; <label>:52:                                     ; preds = %50
  store i8 0, i8* @convert_entire_line, align 1, !dbg !785, !tbaa !762
  br label %53, !dbg !786

; <label>:53:                                     ; preds = %50, %52
  %54 = and i8 %15, 1, !dbg !787
  %55 = icmp eq i8 %54, 0, !dbg !787
  br i1 %55, label %57, label %56, !dbg !789

; <label>:56:                                     ; preds = %53
  tail call void @add_tab_stop(i64 %11) #10, !dbg !790
  br label %57, !dbg !790

; <label>:57:                                     ; preds = %53, %56
  tail call void @finalize_tab_stops() #10, !dbg !791
  %58 = load i32, i32* @optind, align 4, !dbg !792, !tbaa !793
  %59 = icmp slt i32 %58, %0, !dbg !795
  %60 = sext i32 %58 to i64, !dbg !796
  %61 = getelementptr inbounds i8*, i8** %1, i64 %60, !dbg !796
  %62 = select i1 %59, i8** %61, i8** null, !dbg !797
  tail call void @set_file_list(i8** %62) #10, !dbg !798
  %63 = tail call %struct._IO_FILE* @next_file(%struct._IO_FILE* null) #10, !dbg !799
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, i64 0, metadata !802, metadata !691) #10, !dbg !861
  %64 = icmp eq %struct._IO_FILE* %63, null, !dbg !862
  br i1 %64, label %229, label %65, !dbg !864

; <label>:65:                                     ; preds = %57
  %66 = load i64, i64* @max_column_width, align 8, !dbg !865, !tbaa !866
  %67 = tail call noalias i8* @xmalloc(i64 %66) #10, !dbg !868
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !843, metadata !691) #10, !dbg !869
  %68 = bitcast i64* %3 to i8*
  br label %69, !dbg !870

; <label>:69:                                     ; preds = %228, %65
  %70 = phi %struct._IO_FILE* [ %63, %65 ], [ %106, %228 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %70, i64 0, metadata !802, metadata !691) #10, !dbg !861
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !846, metadata !691) #10, !dbg !871
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !847, metadata !691) #10, !dbg !872
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !848, metadata !691) #10, !dbg !873
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #10, !dbg !874
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !849, metadata !691) #10, !dbg !875
  store i64 0, i64* %3, align 8, !dbg !875, !tbaa !866
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !850, metadata !691) #10, !dbg !876
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !851, metadata !691) #10, !dbg !877
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !852, metadata !691) #10, !dbg !878
  br label %71, !dbg !879, !llvm.loop !880

; <label>:71:                                     ; preds = %220, %69
  %72 = phi i8 [ 1, %69 ], [ %222, %220 ]
  %73 = phi i64 [ 0, %69 ], [ %223, %220 ]
  %74 = phi i8 [ 0, %69 ], [ %224, %220 ]
  %75 = phi i8 [ 1, %69 ], [ %225, %220 ]
  %76 = phi i64 [ 0, %69 ], [ %226, %220 ]
  %77 = phi %struct._IO_FILE* [ %70, %69 ], [ %106, %220 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %77, i64 0, metadata !802, metadata !691) #10, !dbg !861
  call void @llvm.dbg.value(metadata i64 %76, i64 0, metadata !852, metadata !691) #10, !dbg !878
  call void @llvm.dbg.value(metadata i8 %75, i64 0, metadata !851, metadata !691) #10, !dbg !877
  call void @llvm.dbg.value(metadata i8 %74, i64 0, metadata !850, metadata !691) #10, !dbg !876
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !847, metadata !691) #10, !dbg !872
  call void @llvm.dbg.value(metadata i8 %72, i64 0, metadata !846, metadata !691) #10, !dbg !871
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %77, i64 0, metadata !802, metadata !691) #10, !dbg !861
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %77, i64 0, metadata !883, metadata !691) #10, !dbg !889
  %78 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %77, i64 0, i32 1, !dbg !891
  %79 = load i8*, i8** %78, align 8, !dbg !891, !tbaa !892
  %80 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %77, i64 0, i32 2, !dbg !891
  %81 = load i8*, i8** %80, align 8, !dbg !891, !tbaa !895
  %82 = icmp ult i8* %79, %81, !dbg !891
  br i1 %82, label %90, label %83, !dbg !891, !prof !896

; <label>:83:                                     ; preds = %71
  br label %97, !dbg !891

; <label>:84:                                     ; preds = %101
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %102, i64 0, metadata !802, metadata !691) #10, !dbg !861
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %102, i64 0, metadata !883, metadata !691) #10, !dbg !889
  %85 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %102, i64 0, i32 1, !dbg !891
  %86 = load i8*, i8** %85, align 8, !dbg !891, !tbaa !892
  %87 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %102, i64 0, i32 2, !dbg !891
  %88 = load i8*, i8** %87, align 8, !dbg !891, !tbaa !895
  %89 = icmp ult i8* %86, %88, !dbg !891
  br i1 %89, label %90, label %97, !dbg !891, !prof !896, !llvm.loop !897

; <label>:90:                                     ; preds = %84, %71
  %91 = phi %struct._IO_FILE* [ %77, %71 ], [ %102, %84 ]
  %92 = phi i8** [ %78, %71 ], [ %85, %84 ]
  %93 = phi i8* [ %79, %71 ], [ %86, %84 ]
  %94 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !891
  store i8* %94, i8** %92, align 8, !dbg !891, !tbaa !892
  %95 = load i8, i8* %93, align 1, !dbg !891, !tbaa !900
  %96 = zext i8 %95 to i32, !dbg !891
  call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !844, metadata !691) #10, !dbg !901
  br label %104, !dbg !902

; <label>:97:                                     ; preds = %83, %84
  %98 = phi %struct._IO_FILE* [ %102, %84 ], [ %77, %83 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %98, i64 0, metadata !802, metadata !691) #10, !dbg !861
  %99 = call i32 @__uflow(%struct._IO_FILE* nonnull %98) #10, !dbg !891
  call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !844, metadata !691) #10, !dbg !901
  %100 = icmp slt i32 %99, 0, !dbg !903
  br i1 %100, label %101, label %104, !dbg !902

; <label>:101:                                    ; preds = %97
  %102 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* %98) #10, !dbg !904
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %102, i64 0, metadata !802, metadata !691) #10, !dbg !861
  %103 = icmp eq %struct._IO_FILE* %102, null, !dbg !902
  br i1 %103, label %104, label %84, !dbg !905

; <label>:104:                                    ; preds = %101, %97, %90
  %105 = phi i32 [ %96, %90 ], [ %99, %97 ], [ %99, %101 ]
  %106 = phi %struct._IO_FILE* [ %91, %90 ], [ null, %101 ], [ %98, %97 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %106, i64 0, metadata !802, metadata !691) #10, !dbg !861
  %107 = and i8 %72, 1, !dbg !906
  %108 = icmp eq i8 %107, 0, !dbg !906
  br i1 %108, label %193, label %109, !dbg !907

; <label>:109:                                    ; preds = %104
  %110 = tail call i16** @__ctype_b_loc() #17, !dbg !908
  %111 = load i16*, i16** %110, align 8, !dbg !908, !tbaa !698
  %112 = sext i32 %105 to i64, !dbg !908
  %113 = getelementptr inbounds i16, i16* %111, i64 %112, !dbg !908
  %114 = load i16, i16* %113, align 2, !dbg !908, !tbaa !909
  %115 = and i16 %114, 1, !dbg !908
  %116 = icmp ne i16 %115, 0, !dbg !910
  %117 = trunc i16 %115 to i8, !dbg !911
  call void @llvm.dbg.value(metadata i8 %117, i64 0, metadata !853, metadata !691) #10, !dbg !911
  br i1 %116, label %118, label %149, !dbg !912

; <label>:118:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !857, metadata !691) #10, !dbg !913
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #10, !dbg !914
  call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !849, metadata !691) #10, !dbg !875
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !857, metadata !691) #10, !dbg !913
  %119 = call i64 @get_next_tab_column(i64 %73, i64* nonnull %3, i8* nonnull %4) #10, !dbg !915
  call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !848, metadata !691) #10, !dbg !873
  %120 = load i8, i8* %4, align 1, !dbg !916, !tbaa !762, !range !918
  call void @llvm.dbg.value(metadata i8 %120, i64 0, metadata !857, metadata !691) #10, !dbg !913
  %121 = icmp eq i8 %120, 0, !dbg !916
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !846, metadata !691) #10, !dbg !871
  %122 = select i1 %121, i8 %72, i8 0, !dbg !919
  call void @llvm.dbg.value(metadata i8 %122, i64 0, metadata !846, metadata !691) #10, !dbg !871
  %123 = and i8 %122, 1, !dbg !920
  %124 = icmp eq i8 %123, 0, !dbg !920
  br i1 %124, label %145, label %125, !dbg !922

; <label>:125:                                    ; preds = %118
  %126 = icmp ult i64 %119, %73, !dbg !923
  br i1 %126, label %127, label %129, !dbg !926

; <label>:127:                                    ; preds = %125
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !927
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %128) #10, !dbg !927
  unreachable, !dbg !927

; <label>:129:                                    ; preds = %125
  %130 = icmp eq i32 %105, 9, !dbg !928
  br i1 %130, label %131, label %133, !dbg !930

; <label>:131:                                    ; preds = %129
  call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !847, metadata !691) #10, !dbg !872
  %132 = icmp eq i64 %76, 0, !dbg !931
  br i1 %132, label %141, label %139, !dbg !934

; <label>:133:                                    ; preds = %129
  %134 = add i64 %73, 1, !dbg !935
  call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !847, metadata !691) #10, !dbg !872
  %135 = and i8 %75, 1, !dbg !937
  %136 = icmp ne i8 %135, 0, !dbg !937
  %137 = icmp eq i64 %134, %119, !dbg !939
  %138 = and i1 %136, %137, !dbg !940
  br i1 %138, label %139, label %188, !dbg !940

; <label>:139:                                    ; preds = %133, %131
  %140 = phi i64 [ %119, %131 ], [ %134, %133 ]
  call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !847, metadata !691) #10, !dbg !872
  call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !844, metadata !691) #10, !dbg !901
  store i8 9, i8* %67, align 1, !tbaa !900
  br label %141, !dbg !941

; <label>:141:                                    ; preds = %139, %131
  %142 = phi i64 [ %140, %139 ], [ %119, %131 ]
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !847, metadata !691) #10, !dbg !872
  call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !844, metadata !691) #10, !dbg !901
  %143 = and i8 %74, 1, !dbg !941
  %144 = zext i8 %143 to i64, !dbg !941
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !852, metadata !691) #10, !dbg !878
  br label %145, !dbg !942

; <label>:145:                                    ; preds = %141, %118
  %146 = phi i32 [ %105, %118 ], [ 9, %141 ]
  %147 = phi i64 [ %73, %118 ], [ %142, %141 ]
  %148 = phi i64 [ %76, %118 ], [ %144, %141 ]
  call void @llvm.dbg.value(metadata i64 %191, i64 0, metadata !852, metadata !691) #10, !dbg !878
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !851, metadata !691) #10, !dbg !877
  call void @llvm.dbg.value(metadata i8 %189, i64 0, metadata !850, metadata !691) #10, !dbg !876
  call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !847, metadata !691) #10, !dbg !872
  call void @llvm.dbg.value(metadata i32 %105, i64 0, metadata !844, metadata !691) #10, !dbg !901
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !857, metadata !691) #10, !dbg !913
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #10, !dbg !943
  br label %164

; <label>:149:                                    ; preds = %109
  %150 = icmp eq i32 %105, 8, !dbg !944
  br i1 %150, label %151, label %159, !dbg !946

; <label>:151:                                    ; preds = %149
  %152 = icmp ne i64 %73, 0, !dbg !947
  %153 = zext i1 %152 to i64, !dbg !949
  %154 = sub i64 %73, %153, !dbg !950
  call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !847, metadata !691) #10, !dbg !872
  call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !848, metadata !691) #10, !dbg !873
  %155 = load i64, i64* %3, align 8, !dbg !951, !tbaa !866
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !849, metadata !691) #10, !dbg !875
  %156 = icmp ne i64 %155, 0, !dbg !952
  %157 = zext i1 %156 to i64, !dbg !953
  %158 = sub i64 %155, %157, !dbg !954
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !849, metadata !691) #10, !dbg !875
  store i64 %158, i64* %3, align 8, !dbg !954, !tbaa !866
  br label %164, !dbg !955

; <label>:159:                                    ; preds = %149
  %160 = add i64 %73, 1, !dbg !956
  call void @llvm.dbg.value(metadata i64 %160, i64 0, metadata !847, metadata !691) #10, !dbg !872
  %161 = icmp eq i64 %160, 0, !dbg !958
  br i1 %161, label %162, label %164, !dbg !960

; <label>:162:                                    ; preds = %159
  %163 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !961
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %163) #10, !dbg !961
  unreachable, !dbg !961

; <label>:164:                                    ; preds = %159, %151, %145
  %165 = phi i32 [ 8, %151 ], [ %105, %159 ], [ %146, %145 ]
  %166 = phi i8 [ %72, %151 ], [ %72, %159 ], [ %122, %145 ]
  %167 = phi i64 [ %154, %151 ], [ %160, %159 ], [ %147, %145 ]
  %168 = phi i64 [ %76, %151 ], [ %76, %159 ], [ %148, %145 ]
  call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !852, metadata !691) #10, !dbg !878
  call void @llvm.dbg.value(metadata i8 %74, i64 0, metadata !850, metadata !691) #10, !dbg !876
  call void @llvm.dbg.value(metadata i64 %167, i64 0, metadata !847, metadata !691) #10, !dbg !872
  call void @llvm.dbg.value(metadata i8 %166, i64 0, metadata !846, metadata !691) #10, !dbg !871
  call void @llvm.dbg.value(metadata i32 %165, i64 0, metadata !844, metadata !691) #10, !dbg !901
  switch i64 %168, label %169 [
    i64 0, label %181
    i64 1, label %173
  ], !dbg !962

; <label>:169:                                    ; preds = %164
  %170 = and i8 %74, 1, !dbg !963
  %171 = icmp eq i8 %170, 0, !dbg !963
  br i1 %171, label %173, label %172, !dbg !967

; <label>:172:                                    ; preds = %169
  store i8 9, i8* %67, align 1, !dbg !968, !tbaa !900
  br label %173, !dbg !969

; <label>:173:                                    ; preds = %172, %169, %164
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !970, !tbaa !698
  %175 = call i64 @fwrite_unlocked(i8* %67, i64 1, i64 %168, %struct._IO_FILE* %174) #10, !dbg !970
  %176 = icmp eq i64 %175, %168, !dbg !972
  br i1 %176, label %181, label %177, !dbg !973

; <label>:177:                                    ; preds = %173
  %178 = tail call i32* @__errno_location() #17, !dbg !974
  %179 = load i32, i32* %178, align 4, !dbg !974, !tbaa !793
  %180 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !974
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %179, i8* %180) #10, !dbg !974
  unreachable, !dbg !974

; <label>:181:                                    ; preds = %173, %164
  %182 = phi i8 [ %74, %164 ], [ 0, %173 ]
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !852, metadata !691) #10, !dbg !878
  call void @llvm.dbg.value(metadata i8 %182, i64 0, metadata !850, metadata !691) #10, !dbg !876
  call void @llvm.dbg.value(metadata i8 %117, i64 0, metadata !851, metadata !691) #10, !dbg !877
  %183 = load i8, i8* @convert_entire_line, align 1, !dbg !975, !tbaa !762, !range !918
  %184 = icmp ne i8 %183, 0, !dbg !975
  %185 = or i1 %116, %184, !dbg !976
  %186 = zext i1 %185 to i8, !dbg !976
  %187 = and i8 %166, %186, !dbg !977
  call void @llvm.dbg.value(metadata i8 %187, i64 0, metadata !846, metadata !691) #10, !dbg !871
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !851, metadata !691) #10, !dbg !877
  call void @llvm.dbg.value(metadata i32 %105, i64 0, metadata !844, metadata !691) #10, !dbg !901
  br label %193

; <label>:188:                                    ; preds = %133
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !850, metadata !691) #10, !dbg !876
  %189 = select i1 %137, i8 1, i8 %74, !dbg !978
  call void @llvm.dbg.value(metadata i8 %189, i64 0, metadata !850, metadata !691) #10, !dbg !876
  %190 = trunc i32 %105 to i8, !dbg !980
  %191 = add i64 %76, 1, !dbg !981
  call void @llvm.dbg.value(metadata i64 %191, i64 0, metadata !852, metadata !691) #10, !dbg !878
  %192 = getelementptr inbounds i8, i8* %67, i64 %76, !dbg !982
  store i8 %190, i8* %192, align 1, !dbg !983, !tbaa !900
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !851, metadata !691) #10, !dbg !877
  call void @llvm.dbg.value(metadata i64 %191, i64 0, metadata !852, metadata !691) #10, !dbg !878
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !851, metadata !691) #10, !dbg !877
  call void @llvm.dbg.value(metadata i8 %189, i64 0, metadata !850, metadata !691) #10, !dbg !876
  call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !847, metadata !691) #10, !dbg !872
  call void @llvm.dbg.value(metadata i32 %105, i64 0, metadata !844, metadata !691) #10, !dbg !901
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !857, metadata !691) #10, !dbg !913
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #10, !dbg !943
  call void @llvm.dbg.value(metadata i64 %191, i64 0, metadata !852, metadata !691) #10, !dbg !878
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !851, metadata !691) #10, !dbg !877
  call void @llvm.dbg.value(metadata i8 %189, i64 0, metadata !850, metadata !691) #10, !dbg !876
  call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !847, metadata !691) #10, !dbg !872
  call void @llvm.dbg.value(metadata i8 %122, i64 0, metadata !846, metadata !691) #10, !dbg !871
  call void @llvm.dbg.value(metadata i32 %105, i64 0, metadata !844, metadata !691) #10, !dbg !901
  br label %220

; <label>:193:                                    ; preds = %181, %104
  %194 = phi i32 [ %105, %104 ], [ %165, %181 ]
  %195 = phi i8 [ %72, %104 ], [ %187, %181 ]
  %196 = phi i64 [ %73, %104 ], [ %167, %181 ]
  %197 = phi i8 [ %74, %104 ], [ %182, %181 ]
  %198 = phi i8 [ %75, %104 ], [ %117, %181 ]
  %199 = phi i64 [ %76, %104 ], [ 0, %181 ]
  call void @llvm.dbg.value(metadata i64 %199, i64 0, metadata !852, metadata !691) #10, !dbg !878
  call void @llvm.dbg.value(metadata i8 %198, i64 0, metadata !851, metadata !691) #10, !dbg !877
  call void @llvm.dbg.value(metadata i8 %197, i64 0, metadata !850, metadata !691) #10, !dbg !876
  call void @llvm.dbg.value(metadata i64 %196, i64 0, metadata !847, metadata !691) #10, !dbg !872
  call void @llvm.dbg.value(metadata i8 %195, i64 0, metadata !846, metadata !691) #10, !dbg !871
  call void @llvm.dbg.value(metadata i32 %194, i64 0, metadata !844, metadata !691) #10, !dbg !901
  %200 = icmp slt i32 %194, 0, !dbg !984
  br i1 %200, label %201, label %202, !dbg !986

; <label>:201:                                    ; preds = %193
  call void @free(i8* %67) #10, !dbg !987
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #10, !dbg !989
  br label %229

; <label>:202:                                    ; preds = %193
  call void @llvm.dbg.value(metadata i32 %194, i64 0, metadata !990, metadata !691) #10, !dbg !995
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !998, !tbaa !698
  %204 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %203, i64 0, i32 5, !dbg !998
  %205 = load i8*, i8** %204, align 8, !dbg !998, !tbaa !999
  %206 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %203, i64 0, i32 6, !dbg !998
  %207 = load i8*, i8** %206, align 8, !dbg !998, !tbaa !1000
  %208 = icmp ult i8* %205, %207, !dbg !998
  br i1 %208, label %209, label %212, !dbg !998, !prof !896

; <label>:209:                                    ; preds = %202
  %210 = trunc i32 %194 to i8, !dbg !998
  %211 = getelementptr inbounds i8, i8* %205, i64 1, !dbg !998
  store i8* %211, i8** %204, align 8, !dbg !998, !tbaa !999
  store i8 %210, i8* %205, align 1, !dbg !998, !tbaa !900
  br label %220, !dbg !1001

; <label>:212:                                    ; preds = %202
  %213 = and i32 %194, 255, !dbg !998
  %214 = call i32 @__overflow(%struct._IO_FILE* %203, i32 %213) #10, !dbg !998
  %215 = icmp slt i32 %214, 0, !dbg !1002
  br i1 %215, label %216, label %220, !dbg !1001

; <label>:216:                                    ; preds = %212
  %217 = tail call i32* @__errno_location() #17, !dbg !1003
  %218 = load i32, i32* %217, align 4, !dbg !1003, !tbaa !793
  %219 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !1003
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %218, i8* %219) #10, !dbg !1003
  unreachable, !dbg !1003

; <label>:220:                                    ; preds = %212, %209, %188
  %221 = phi i32 [ %194, %212 ], [ %105, %188 ], [ %194, %209 ]
  %222 = phi i8 [ %195, %212 ], [ %122, %188 ], [ %195, %209 ]
  %223 = phi i64 [ %196, %212 ], [ %134, %188 ], [ %196, %209 ]
  %224 = phi i8 [ %197, %212 ], [ %189, %188 ], [ %197, %209 ]
  %225 = phi i8 [ %198, %212 ], [ 1, %188 ], [ %198, %209 ]
  %226 = phi i64 [ %199, %212 ], [ %191, %188 ], [ %199, %209 ]
  call void @llvm.dbg.value(metadata i64 %226, i64 0, metadata !852, metadata !691) #10, !dbg !878
  call void @llvm.dbg.value(metadata i8 %225, i64 0, metadata !851, metadata !691) #10, !dbg !877
  call void @llvm.dbg.value(metadata i8 %224, i64 0, metadata !850, metadata !691) #10, !dbg !876
  call void @llvm.dbg.value(metadata i64 %223, i64 0, metadata !847, metadata !691) #10, !dbg !872
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !846, metadata !691) #10, !dbg !871
  call void @llvm.dbg.value(metadata i32 %221, i64 0, metadata !844, metadata !691) #10, !dbg !901
  %227 = icmp eq i32 %221, 10, !dbg !1004
  br i1 %227, label %228, label %71, !dbg !1005, !llvm.loop !880

; <label>:228:                                    ; preds = %220
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #10, !dbg !989
  br label %69, !dbg !870, !llvm.loop !1006

; <label>:229:                                    ; preds = %57, %201
  call void @cleanup_file_list_stdin() #10, !dbg !1009
  %230 = load i32, i32* @exit_status, align 4, !dbg !1010, !tbaa !793
  ret i32 %230, !dbg !1011
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

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @add_tab_stop(i64) local_unnamed_addr #6 !dbg !1012 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1016, metadata !691), !dbg !1019
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1020, !tbaa !866
  %3 = icmp eq i64 %2, 0, !dbg !1020
  br i1 %3, label %9, label %4, !dbg !1020

; <label>:4:                                      ; preds = %1
  %5 = load i64*, i64** @tab_list, align 8, !dbg !1021, !tbaa !698
  %6 = add i64 %2, -1, !dbg !1022
  %7 = getelementptr inbounds i64, i64* %5, i64 %6, !dbg !1021
  %8 = load i64, i64* %7, align 8, !dbg !1021, !tbaa !866
  br label %9, !dbg !1020

; <label>:9:                                      ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1020
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1017, metadata !691), !dbg !1023
  %11 = icmp ugt i64 %10, %0, !dbg !1024
  %12 = sub i64 %0, %10, !dbg !1025
  %13 = select i1 %11, i64 0, i64 %12, !dbg !1026
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1018, metadata !691), !dbg !1027
  %14 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1028, !tbaa !866
  %15 = icmp eq i64 %2, %14, !dbg !1030
  br i1 %15, label %18, label %16, !dbg !1031

; <label>:16:                                     ; preds = %9
  %17 = load i64*, i64** @tab_list, align 8, !dbg !1032, !tbaa !698
  br label %36, !dbg !1031

; <label>:18:                                     ; preds = %9
  %19 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1033, !tbaa !698
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !106, metadata !691) #10, !dbg !1034
  tail call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, i64 0, metadata !107, metadata !691) #10, !dbg !1036
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !108, metadata !691) #10, !dbg !1037
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !109, metadata !691) #10, !dbg !1038
  %20 = icmp eq i8* %19, null, !dbg !1039
  br i1 %20, label %21, label %23, !dbg !1041

; <label>:21:                                     ; preds = %18
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !109, metadata !691) #10, !dbg !1038
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !109, metadata !691) #10, !dbg !1038
  %22 = select i1 %3, i64 16, i64 %2, !dbg !1042
  br label %30, !dbg !1042

; <label>:23:                                     ; preds = %18
  %24 = icmp ult i64 %2, 768614336404564650, !dbg !1044
  br i1 %24, label %26, label %25, !dbg !1047

; <label>:25:                                     ; preds = %23
  tail call void @xalloc_die() #15, !dbg !1048
  unreachable, !dbg !1048

; <label>:26:                                     ; preds = %23
  %27 = lshr i64 %2, 1, !dbg !1049
  %28 = add i64 %2, 1, !dbg !1050
  %29 = add i64 %28, %27, !dbg !1051
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !109, metadata !691) #10, !dbg !1038
  br label %30

; <label>:30:                                     ; preds = %21, %26
  %31 = phi i64 [ %29, %26 ], [ %22, %21 ]
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !109, metadata !691) #10, !dbg !1038
  store i64 %31, i64* @n_tabs_allocated, align 8, !dbg !1052, !tbaa !866
  %32 = shl i64 %31, 3, !dbg !1053
  %33 = tail call i8* @xrealloc(i8* %19, i64 %32) #10, !dbg !1054
  store i8* %33, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1055, !tbaa !698
  %34 = bitcast i8* %33 to i64*, !dbg !1056
  %35 = load i64, i64* @first_free_tab, align 8, !dbg !1057, !tbaa !866
  br label %36, !dbg !1056

; <label>:36:                                     ; preds = %16, %30
  %37 = phi i64 [ %2, %16 ], [ %35, %30 ], !dbg !1057
  %38 = phi i64* [ %17, %16 ], [ %34, %30 ], !dbg !1032
  %39 = add i64 %37, 1, !dbg !1057
  store i64 %39, i64* @first_free_tab, align 8, !dbg !1057, !tbaa !866
  %40 = getelementptr inbounds i64, i64* %38, i64 %37, !dbg !1032
  store i64 %0, i64* %40, align 8, !dbg !1058, !tbaa !866
  %41 = load i64, i64* @max_column_width, align 8, !dbg !1059, !tbaa !866
  %42 = icmp ult i64 %41, %13, !dbg !1061
  br i1 %42, label %43, label %44, !dbg !1062

; <label>:43:                                     ; preds = %36
  store i64 %13, i64* @max_column_width, align 8, !dbg !1063, !tbaa !866
  br label %44, !dbg !1065

; <label>:44:                                     ; preds = %43, %36
  ret void, !dbg !1066
}

; Function Attrs: nounwind sspstrong uwtable
define void @parse_tab_stops(i8*) local_unnamed_addr #6 !dbg !1067 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1069, metadata !691), !dbg !1086
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1070, metadata !691), !dbg !1087
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1071, metadata !691), !dbg !1088
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1072, metadata !691), !dbg !1089
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1073, metadata !691), !dbg !1090
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1074, metadata !691), !dbg !1091
  br label %2, !dbg !1092

; <label>:2:                                      ; preds = %108, %1
  %3 = phi i64 [ 0, %1 ], [ %109, %108 ]
  %4 = phi i8 [ 0, %1 ], [ %110, %108 ]
  %5 = phi i8* [ null, %1 ], [ %111, %108 ]
  %6 = phi i8 [ 1, %1 ], [ %112, %108 ]
  %7 = phi i8 [ 0, %1 ], [ %113, %108 ]
  %8 = phi i8* [ %0, %1 ], [ %115, %108 ]
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1071, metadata !691), !dbg !1088
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1069, metadata !691), !dbg !1086
  tail call void @llvm.dbg.value(metadata i8 %7, i64 0, metadata !1070, metadata !691), !dbg !1087
  tail call void @llvm.dbg.value(metadata i8 %6, i64 0, metadata !1074, metadata !691), !dbg !1091
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1073, metadata !691), !dbg !1090
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !1072, metadata !691), !dbg !1089
  %9 = load i8, i8* %8, align 1, !dbg !1093, !tbaa !900
  switch i8 %9, label %10 [
    i8 0, label %116
    i8 44, label %18
  ], !dbg !1094

; <label>:10:                                     ; preds = %2
  %11 = tail call i16** @__ctype_b_loc() #17, !dbg !1095
  %12 = load i16*, i16** %11, align 8, !dbg !1095, !tbaa !698
  %13 = zext i8 %9 to i64, !dbg !1095
  %14 = getelementptr inbounds i16, i16* %12, i64 %13, !dbg !1095
  %15 = load i16, i16* %14, align 2, !dbg !1095, !tbaa !909
  %16 = and i16 %15, 1, !dbg !1095
  %17 = icmp eq i16 %16, 0, !dbg !1095
  br i1 %17, label %73, label %18, !dbg !1096

; <label>:18:                                     ; preds = %2, %10
  %19 = and i8 %7, 1, !dbg !1097
  %20 = icmp eq i8 %19, 0, !dbg !1097
  br i1 %20, label %108, label %21, !dbg !1100

; <label>:21:                                     ; preds = %18
  %22 = and i8 %4, 1, !dbg !1101
  %23 = icmp eq i8 %22, 0, !dbg !1101
  br i1 %23, label %30, label %24, !dbg !1104

; <label>:24:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1105, metadata !691) #10, !dbg !1111
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1110, metadata !691) #10, !dbg !1115
  %25 = load i64, i64* @extend_size, align 8, !dbg !1116, !tbaa !866
  %26 = icmp eq i64 %25, 0, !dbg !1116
  br i1 %26, label %27, label %28, !dbg !1118

; <label>:27:                                     ; preds = %24
  store i64 %3, i64* @extend_size, align 8, !dbg !1119, !tbaa !866
  br label %108, !dbg !1120

; <label>:28:                                     ; preds = %24
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8.11, i64 0, i64 0), i32 5) #10, !dbg !1121
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #10, !dbg !1123
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1110, metadata !691) #10, !dbg !1115
  store i64 %3, i64* @extend_size, align 8, !dbg !1119, !tbaa !866
  br label %177, !dbg !1120

; <label>:30:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1016, metadata !691) #10, !dbg !1124
  %31 = load i64, i64* @first_free_tab, align 8, !dbg !1126, !tbaa !866
  %32 = icmp eq i64 %31, 0, !dbg !1126
  br i1 %32, label %38, label %33, !dbg !1126

; <label>:33:                                     ; preds = %30
  %34 = load i64*, i64** @tab_list, align 8, !dbg !1127, !tbaa !698
  %35 = add i64 %31, -1, !dbg !1128
  %36 = getelementptr inbounds i64, i64* %34, i64 %35, !dbg !1127
  %37 = load i64, i64* %36, align 8, !dbg !1127, !tbaa !866
  br label %38, !dbg !1126

; <label>:38:                                     ; preds = %33, %30
  %39 = phi i64 [ %37, %33 ], [ 0, %30 ], !dbg !1126
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1017, metadata !691) #10, !dbg !1129
  %40 = icmp ult i64 %3, %39, !dbg !1130
  %41 = sub i64 %3, %39, !dbg !1131
  %42 = select i1 %40, i64 0, i64 %41, !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1018, metadata !691) #10, !dbg !1133
  %43 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1134, !tbaa !866
  %44 = icmp eq i64 %31, %43, !dbg !1135
  br i1 %44, label %47, label %45, !dbg !1136

; <label>:45:                                     ; preds = %38
  %46 = load i64*, i64** @tab_list, align 8, !dbg !1137, !tbaa !698
  br label %65, !dbg !1136

; <label>:47:                                     ; preds = %38
  %48 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1138, !tbaa !698
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !106, metadata !691) #10, !dbg !1139
  tail call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, i64 0, metadata !107, metadata !691) #10, !dbg !1141
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !108, metadata !691) #10, !dbg !1142
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !109, metadata !691) #10, !dbg !1143
  %49 = icmp eq i8* %48, null, !dbg !1144
  br i1 %49, label %50, label %52, !dbg !1145

; <label>:50:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !109, metadata !691) #10, !dbg !1143
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !109, metadata !691) #10, !dbg !1143
  %51 = select i1 %32, i64 16, i64 %31, !dbg !1146
  br label %59, !dbg !1146

; <label>:52:                                     ; preds = %47
  %53 = icmp ult i64 %31, 768614336404564650, !dbg !1147
  br i1 %53, label %55, label %54, !dbg !1148

; <label>:54:                                     ; preds = %52
  tail call void @xalloc_die() #15, !dbg !1149
  unreachable, !dbg !1149

; <label>:55:                                     ; preds = %52
  %56 = lshr i64 %31, 1, !dbg !1150
  %57 = add i64 %31, 1, !dbg !1151
  %58 = add i64 %57, %56, !dbg !1152
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !109, metadata !691) #10, !dbg !1143
  br label %59

; <label>:59:                                     ; preds = %55, %50
  %60 = phi i64 [ %58, %55 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !109, metadata !691) #10, !dbg !1143
  store i64 %60, i64* @n_tabs_allocated, align 8, !dbg !1153, !tbaa !866
  %61 = shl i64 %60, 3, !dbg !1154
  %62 = tail call i8* @xrealloc(i8* %48, i64 %61) #10, !dbg !1155
  store i8* %62, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1156, !tbaa !698
  %63 = bitcast i8* %62 to i64*, !dbg !1157
  %64 = load i64, i64* @first_free_tab, align 8, !dbg !1158, !tbaa !866
  br label %65, !dbg !1157

; <label>:65:                                     ; preds = %59, %45
  %66 = phi i64 [ %31, %45 ], [ %64, %59 ], !dbg !1158
  %67 = phi i64* [ %46, %45 ], [ %63, %59 ], !dbg !1137
  %68 = add i64 %66, 1, !dbg !1158
  store i64 %68, i64* @first_free_tab, align 8, !dbg !1158, !tbaa !866
  %69 = getelementptr inbounds i64, i64* %67, i64 %66, !dbg !1137
  store i64 %3, i64* %69, align 8, !dbg !1159, !tbaa !866
  %70 = load i64, i64* @max_column_width, align 8, !dbg !1160, !tbaa !866
  %71 = icmp ult i64 %70, %42, !dbg !1161
  br i1 %71, label %72, label %108, !dbg !1162

; <label>:72:                                     ; preds = %65
  store i64 %42, i64* @max_column_width, align 8, !dbg !1163, !tbaa !866
  br label %108, !dbg !1164

; <label>:73:                                     ; preds = %10
  %74 = icmp eq i8 %9, 47, !dbg !1165
  br i1 %74, label %75, label %81, !dbg !1166

; <label>:75:                                     ; preds = %73
  %76 = and i8 %7, 1, !dbg !1167
  %77 = icmp eq i8 %76, 0, !dbg !1167
  br i1 %77, label %108, label %78, !dbg !1170

; <label>:78:                                     ; preds = %75
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.12, i64 0, i64 0), i32 5) #10, !dbg !1171
  %80 = tail call i8* @quote(i8* %8) #10, !dbg !1173
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %79, i8* %80) #10, !dbg !1174
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1074, metadata !691), !dbg !1091
  br label %108, !dbg !1175

; <label>:81:                                     ; preds = %73
  %82 = sext i8 %9 to i32, !dbg !1176
  %83 = add nsw i32 %82, -48, !dbg !1177
  %84 = icmp ult i32 %83, 10, !dbg !1177
  br i1 %84, label %85, label %105, !dbg !1178

; <label>:85:                                     ; preds = %81
  %86 = and i8 %7, 1, !dbg !1179
  %87 = icmp eq i8 %86, 0, !dbg !1179
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1071, metadata !691), !dbg !1088
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1070, metadata !691), !dbg !1087
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1073, metadata !691), !dbg !1090
  %88 = select i1 %87, i64 0, i64 %3, !dbg !1181
  %89 = select i1 %87, i8* %8, i8* %5, !dbg !1181
  %90 = select i1 %87, i8 1, i8 %7, !dbg !1181
  tail call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !1071, metadata !691), !dbg !1088
  tail call void @llvm.dbg.value(metadata i8 %90, i64 0, metadata !1070, metadata !691), !dbg !1087
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1073, metadata !691), !dbg !1090
  %91 = icmp ugt i64 %88, 1844674407370955161, !dbg !1182
  br i1 %91, label %98, label %92, !dbg !1182

; <label>:92:                                     ; preds = %85
  %93 = mul i64 %88, 10, !dbg !1182
  %94 = sext i8 %9 to i64, !dbg !1182
  %95 = add nsw i64 %94, -48, !dbg !1182
  %96 = add i64 %95, %93, !dbg !1182
  %97 = icmp ult i64 %96, %88, !dbg !1182
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !1071, metadata !691), !dbg !1088
  br i1 %97, label %98, label %108, !dbg !1183

; <label>:98:                                     ; preds = %92, %85
  %99 = tail call i64 @strspn(i8* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.13, i64 0, i64 0)) #14, !dbg !1184
  tail call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1075, metadata !691), !dbg !1185
  %100 = tail call i8* @xstrndup(i8* %89, i64 %99) #10, !dbg !1186
  tail call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1085, metadata !691), !dbg !1187
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.14, i64 0, i64 0), i32 5) #10, !dbg !1188
  %102 = tail call i8* @quote(i8* %100) #10, !dbg !1189
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %101, i8* %102) #10, !dbg !1190
  tail call void @free(i8* %100) #10, !dbg !1191
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1074, metadata !691), !dbg !1091
  %103 = getelementptr inbounds i8, i8* %89, i64 %99, !dbg !1192
  %104 = getelementptr inbounds i8, i8* %103, i64 -1, !dbg !1193
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !1069, metadata !691), !dbg !1086
  br label %108, !dbg !1194

; <label>:105:                                    ; preds = %81
  %106 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4.15, i64 0, i64 0), i32 5) #10, !dbg !1195
  %107 = tail call i8* @quote(i8* %8) #10, !dbg !1197
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %106, i8* %107) #10, !dbg !1198
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1074, metadata !691), !dbg !1091
  br label %177, !dbg !1199

; <label>:108:                                    ; preds = %92, %72, %65, %27, %78, %75, %18, %98
  %109 = phi i64 [ %96, %92 ], [ %88, %98 ], [ %3, %18 ], [ %3, %75 ], [ %3, %78 ], [ %3, %27 ], [ %3, %65 ], [ %3, %72 ]
  %110 = phi i8 [ %4, %92 ], [ %4, %98 ], [ %4, %18 ], [ 1, %75 ], [ 1, %78 ], [ %4, %27 ], [ %4, %65 ], [ %4, %72 ]
  %111 = phi i8* [ %89, %92 ], [ %89, %98 ], [ %5, %18 ], [ %5, %75 ], [ %5, %78 ], [ %5, %27 ], [ %5, %65 ], [ %5, %72 ]
  %112 = phi i8 [ %6, %92 ], [ 0, %98 ], [ %6, %18 ], [ %6, %75 ], [ 0, %78 ], [ %6, %27 ], [ %6, %65 ], [ %6, %72 ]
  %113 = phi i8 [ %90, %92 ], [ %90, %98 ], [ 0, %18 ], [ %7, %75 ], [ %7, %78 ], [ 0, %27 ], [ 0, %65 ], [ 0, %72 ]
  %114 = phi i8* [ %8, %92 ], [ %104, %98 ], [ %8, %18 ], [ %8, %75 ], [ %8, %78 ], [ %8, %27 ], [ %8, %65 ], [ %8, %72 ]
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1071, metadata !691), !dbg !1088
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !1069, metadata !691), !dbg !1086
  tail call void @llvm.dbg.value(metadata i8 %113, i64 0, metadata !1070, metadata !691), !dbg !1087
  tail call void @llvm.dbg.value(metadata i8 %112, i64 0, metadata !1074, metadata !691), !dbg !1091
  tail call void @llvm.dbg.value(metadata i8* %111, i64 0, metadata !1073, metadata !691), !dbg !1090
  tail call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !1072, metadata !691), !dbg !1089
  %115 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !1200
  tail call void @llvm.dbg.value(metadata i8* %115, i64 0, metadata !1069, metadata !691), !dbg !1086
  br label %2, !dbg !1201, !llvm.loop !1202

; <label>:116:                                    ; preds = %2
  tail call void @llvm.dbg.value(metadata i8 %6, i64 0, metadata !1074, metadata !691), !dbg !1091
  %117 = and i8 %6, 1, !dbg !1204
  %118 = and i8 %117, %7, !dbg !1204
  %119 = icmp eq i8 %118, 0, !dbg !1204
  br i1 %119, label %173, label %120, !dbg !1204

; <label>:120:                                    ; preds = %116
  %121 = and i8 %4, 1, !dbg !1206
  %122 = icmp eq i8 %121, 0, !dbg !1206
  br i1 %122, label %130, label %123, !dbg !1209

; <label>:123:                                    ; preds = %120
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1105, metadata !691) #10, !dbg !1210
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1110, metadata !691) #10, !dbg !1212
  %124 = load i64, i64* @extend_size, align 8, !dbg !1213, !tbaa !866
  %125 = icmp eq i64 %124, 0, !dbg !1213
  br i1 %125, label %128, label %126, !dbg !1214

; <label>:126:                                    ; preds = %123
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8.11, i64 0, i64 0), i32 5) #10, !dbg !1215
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %127) #10, !dbg !1216
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1110, metadata !691) #10, !dbg !1212
  br label %128, !dbg !1217

; <label>:128:                                    ; preds = %123, %126
  %129 = phi i8 [ 0, %126 ], [ 1, %123 ]
  store i64 %3, i64* @extend_size, align 8, !dbg !1218, !tbaa !866
  tail call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1074, metadata !691), !dbg !1091
  br label %173, !dbg !1219

; <label>:130:                                    ; preds = %120
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1016, metadata !691) #10, !dbg !1220
  %131 = load i64, i64* @first_free_tab, align 8, !dbg !1222, !tbaa !866
  %132 = icmp eq i64 %131, 0, !dbg !1222
  br i1 %132, label %138, label %133, !dbg !1222

; <label>:133:                                    ; preds = %130
  %134 = load i64*, i64** @tab_list, align 8, !dbg !1223, !tbaa !698
  %135 = add i64 %131, -1, !dbg !1224
  %136 = getelementptr inbounds i64, i64* %134, i64 %135, !dbg !1223
  %137 = load i64, i64* %136, align 8, !dbg !1223, !tbaa !866
  br label %138, !dbg !1222

; <label>:138:                                    ; preds = %133, %130
  %139 = phi i64 [ %137, %133 ], [ 0, %130 ], !dbg !1222
  tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !1017, metadata !691) #10, !dbg !1225
  %140 = icmp ult i64 %3, %139, !dbg !1226
  %141 = sub i64 %3, %139, !dbg !1227
  %142 = select i1 %140, i64 0, i64 %141, !dbg !1228
  tail call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1018, metadata !691) #10, !dbg !1229
  %143 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1230, !tbaa !866
  %144 = icmp eq i64 %131, %143, !dbg !1231
  br i1 %144, label %147, label %145, !dbg !1232

; <label>:145:                                    ; preds = %138
  %146 = load i64*, i64** @tab_list, align 8, !dbg !1233, !tbaa !698
  br label %165, !dbg !1232

; <label>:147:                                    ; preds = %138
  %148 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1234, !tbaa !698
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !106, metadata !691) #10, !dbg !1235
  tail call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, i64 0, metadata !107, metadata !691) #10, !dbg !1237
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !108, metadata !691) #10, !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !109, metadata !691) #10, !dbg !1239
  %149 = icmp eq i8* %148, null, !dbg !1240
  br i1 %149, label %150, label %152, !dbg !1241

; <label>:150:                                    ; preds = %147
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !109, metadata !691) #10, !dbg !1239
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !109, metadata !691) #10, !dbg !1239
  %151 = select i1 %132, i64 16, i64 %131, !dbg !1242
  br label %159, !dbg !1242

; <label>:152:                                    ; preds = %147
  %153 = icmp ult i64 %131, 768614336404564650, !dbg !1243
  br i1 %153, label %155, label %154, !dbg !1244

; <label>:154:                                    ; preds = %152
  tail call void @xalloc_die() #15, !dbg !1245
  unreachable, !dbg !1245

; <label>:155:                                    ; preds = %152
  %156 = lshr i64 %131, 1, !dbg !1246
  %157 = add i64 %131, 1, !dbg !1247
  %158 = add i64 %157, %156, !dbg !1248
  tail call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !109, metadata !691) #10, !dbg !1239
  br label %159

; <label>:159:                                    ; preds = %155, %150
  %160 = phi i64 [ %158, %155 ], [ %151, %150 ]
  tail call void @llvm.dbg.value(metadata i64 %160, i64 0, metadata !109, metadata !691) #10, !dbg !1239
  store i64 %160, i64* @n_tabs_allocated, align 8, !dbg !1249, !tbaa !866
  %161 = shl i64 %160, 3, !dbg !1250
  %162 = tail call i8* @xrealloc(i8* %148, i64 %161) #10, !dbg !1251
  store i8* %162, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1252, !tbaa !698
  %163 = bitcast i8* %162 to i64*, !dbg !1253
  %164 = load i64, i64* @first_free_tab, align 8, !dbg !1254, !tbaa !866
  br label %165, !dbg !1253

; <label>:165:                                    ; preds = %159, %145
  %166 = phi i64 [ %131, %145 ], [ %164, %159 ], !dbg !1254
  %167 = phi i64* [ %146, %145 ], [ %163, %159 ], !dbg !1233
  %168 = add i64 %166, 1, !dbg !1254
  store i64 %168, i64* @first_free_tab, align 8, !dbg !1254, !tbaa !866
  %169 = getelementptr inbounds i64, i64* %167, i64 %166, !dbg !1233
  store i64 %3, i64* %169, align 8, !dbg !1255, !tbaa !866
  %170 = load i64, i64* @max_column_width, align 8, !dbg !1256, !tbaa !866
  %171 = icmp ult i64 %170, %142, !dbg !1257
  br i1 %171, label %172, label %173, !dbg !1258

; <label>:172:                                    ; preds = %165
  store i64 %142, i64* @max_column_width, align 8, !dbg !1259, !tbaa !866
  br label %173, !dbg !1260

; <label>:173:                                    ; preds = %172, %165, %116, %128
  %174 = phi i8 [ %129, %128 ], [ %6, %116 ], [ %6, %165 ], [ %6, %172 ]
  tail call void @llvm.dbg.value(metadata i8 %174, i64 0, metadata !1074, metadata !691), !dbg !1091
  %175 = and i8 %174, 1, !dbg !1261
  %176 = icmp eq i8 %175, 0, !dbg !1261
  br i1 %176, label %177, label %178, !dbg !1263

; <label>:177:                                    ; preds = %105, %28, %173
  tail call void @exit(i32 1) #15, !dbg !1264
  unreachable, !dbg !1264

; <label>:178:                                    ; preds = %173
  ret void, !dbg !1265
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @finalize_tab_stops() local_unnamed_addr #6 !dbg !1266 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1267, !tbaa !698
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1268, !tbaa !866
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1269, metadata !691) #10, !dbg !1279
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1276, metadata !691) #10, !dbg !1281
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1277, metadata !691) #10, !dbg !1282
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1278, metadata !691) #10, !dbg !1283
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1278, metadata !691) #10, !dbg !1283
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1277, metadata !691) #10, !dbg !1282
  %3 = icmp eq i64 %2, 0, !dbg !1284
  br i1 %3, label %20, label %4, !dbg !1287

; <label>:4:                                      ; preds = %0
  br label %7, !dbg !1288

; <label>:5:                                      ; preds = %15
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1278, metadata !691) #10, !dbg !1283
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1277, metadata !691) #10, !dbg !1282
  %6 = icmp ult i64 %17, %2, !dbg !1284
  br i1 %6, label %7, label %24, !dbg !1287, !llvm.loop !1291

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %17, %5 ], [ 0, %4 ]
  %9 = phi i64 [ %11, %5 ], [ 0, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1277, metadata !691) #10, !dbg !1282
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1278, metadata !691) #10, !dbg !1283
  %10 = getelementptr inbounds i64, i64* %1, i64 %8, !dbg !1288
  %11 = load i64, i64* %10, align 8, !dbg !1288, !tbaa !866
  %12 = icmp eq i64 %11, 0, !dbg !1294
  br i1 %12, label %13, label %15, !dbg !1295

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9.18, i64 0, i64 0), i32 5) #10, !dbg !1296
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %14) #10, !dbg !1296
  unreachable, !dbg !1296

; <label>:15:                                     ; preds = %7
  %16 = icmp ugt i64 %11, %9, !dbg !1297
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1277, metadata !691) #10, !dbg !1282
  %17 = add nuw i64 %8, 1, !dbg !1299
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1278, metadata !691) #10, !dbg !1283
  br i1 %16, label %5, label %18, !dbg !1300

; <label>:18:                                     ; preds = %15
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10.19, i64 0, i64 0), i32 5) #10, !dbg !1301
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %19) #10, !dbg !1301
  unreachable, !dbg !1301

; <label>:20:                                     ; preds = %0
  %21 = load i64, i64* @extend_size, align 8, !dbg !1302, !tbaa !866
  %22 = icmp eq i64 %21, 0, !dbg !1302
  %23 = select i1 %22, i64 8, i64 %21, !dbg !1302
  store i64 %23, i64* @max_column_width, align 8, !dbg !1304, !tbaa !866
  br label %31, !dbg !1305

; <label>:24:                                     ; preds = %5
  %25 = icmp ne i64 %2, 1, !dbg !1306
  %26 = load i64, i64* @extend_size, align 8, !dbg !1308
  %27 = icmp ne i64 %26, 0, !dbg !1308
  %28 = or i1 %25, %27, !dbg !1309
  br i1 %28, label %31, label %29, !dbg !1309

; <label>:29:                                     ; preds = %24
  %30 = load i64, i64* %1, align 8, !dbg !1310, !tbaa !866
  br label %31, !dbg !1311

; <label>:31:                                     ; preds = %29, %24, %20
  %32 = phi i64 [ %23, %20 ], [ %30, %29 ], [ 0, %24 ]
  store i64 %32, i64* @tab_size, align 8, !tbaa !866
  ret void, !dbg !1312
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @get_next_tab_column(i64, i64* nocapture, i8* nocapture) local_unnamed_addr #6 !dbg !1313 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1318, metadata !691), !dbg !1325
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1319, metadata !691), !dbg !1326
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1320, metadata !691), !dbg !1327
  store i8 0, i8* %2, align 1, !dbg !1328, !tbaa !762
  %4 = load i64, i64* @tab_size, align 8, !dbg !1329, !tbaa !866
  %5 = icmp eq i64 %4, 0, !dbg !1329
  br i1 %5, label %10, label %6, !dbg !1331

; <label>:6:                                      ; preds = %3
  %7 = urem i64 %0, %4, !dbg !1332
  %8 = add i64 %4, %0, !dbg !1333
  %9 = sub i64 %8, %7, !dbg !1334
  br label %32, !dbg !1335

; <label>:10:                                     ; preds = %3
  %11 = load i64, i64* %1, align 8, !dbg !1336, !tbaa !866
  %12 = load i64, i64* @first_free_tab, align 8, !dbg !1337, !tbaa !866
  %13 = icmp ult i64 %11, %12, !dbg !1338
  br i1 %13, label %14, label %24, !dbg !1339

; <label>:14:                                     ; preds = %10
  %15 = load i64*, i64** @tab_list, align 8, !tbaa !698
  br label %16, !dbg !1339

; <label>:16:                                     ; preds = %14, %21
  %17 = phi i64 [ %11, %14 ], [ %22, %21 ]
  %18 = getelementptr inbounds i64, i64* %15, i64 %17, !dbg !1340
  %19 = load i64, i64* %18, align 8, !dbg !1340, !tbaa !866
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1321, metadata !691), !dbg !1341
  %20 = icmp ugt i64 %19, %0, !dbg !1342
  br i1 %20, label %32, label %21

; <label>:21:                                     ; preds = %16
  %22 = add nuw i64 %17, 1, !dbg !1344
  store i64 %22, i64* %1, align 8, !dbg !1344, !tbaa !866
  %23 = icmp ult i64 %22, %12, !dbg !1338
  br i1 %23, label %16, label %24, !dbg !1339, !llvm.loop !1345

; <label>:24:                                     ; preds = %21, %10
  %25 = load i64, i64* @extend_size, align 8, !dbg !1347, !tbaa !866
  %26 = icmp eq i64 %25, 0, !dbg !1347
  br i1 %26, label %31, label %27, !dbg !1349

; <label>:27:                                     ; preds = %24
  %28 = urem i64 %0, %25, !dbg !1350
  %29 = add i64 %25, %0, !dbg !1351
  %30 = sub i64 %29, %28, !dbg !1352
  br label %32, !dbg !1353

; <label>:31:                                     ; preds = %24
  store i8 1, i8* %2, align 1, !dbg !1354, !tbaa !762
  br label %32, !dbg !1355

; <label>:32:                                     ; preds = %16, %31, %27, %6
  %33 = phi i64 [ %9, %6 ], [ %30, %27 ], [ 0, %31 ], [ %19, %16 ]
  ret i64 %33, !dbg !1356
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_file_list(i8**) local_unnamed_addr #6 !dbg !1357 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !1361, metadata !691), !dbg !1362
  store i1 false, i1* @have_read_stdin, align 1
  %2 = icmp eq i8** %0, null, !dbg !1363
  %3 = select i1 %2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), i8** %0, !dbg !1365
  store i8** %3, i8*** @file_list, align 8, !tbaa !698
  ret void, !dbg !1366
}

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @next_file(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !119 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !177, metadata !691), !dbg !1367
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1368
  br i1 %2, label %26, label %3, !dbg !1370

; <label>:3:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1371, metadata !691), !dbg !1376
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1380
  %5 = load i32, i32* %4, align 8, !dbg !1380, !tbaa !1381
  %6 = and i32 %5, 32, !dbg !1380
  %7 = icmp eq i32 %6, 0, !dbg !1382
  br i1 %7, label %13, label %8, !dbg !1383

; <label>:8:                                      ; preds = %3
  %9 = tail call i32* @__errno_location() #17, !dbg !1384
  %10 = load i32, i32* %9, align 4, !dbg !1384, !tbaa !793
  %11 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1386, !tbaa !698
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %11) #10, !dbg !1386
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.27, i64 0, i64 0), i8* %12) #10, !dbg !1387
  store i32 1, i32* @exit_status, align 4, !dbg !1388, !tbaa !793
  br label %13, !dbg !1389

; <label>:13:                                     ; preds = %3, %8
  %14 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1390, !tbaa !698
  %15 = tail call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.24, i64 0, i64 0)) #14, !dbg !1390
  %16 = icmp eq i32 %15, 0, !dbg !1390
  br i1 %16, label %17, label %18, !dbg !1392

; <label>:17:                                     ; preds = %13
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %0) #10, !dbg !1393
  br label %26, !dbg !1393

; <label>:18:                                     ; preds = %13
  %19 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #10, !dbg !1394
  %20 = icmp eq i32 %19, 0, !dbg !1396
  br i1 %20, label %26, label %21, !dbg !1397

; <label>:21:                                     ; preds = %18
  %22 = tail call i32* @__errno_location() #17, !dbg !1398
  %23 = load i32, i32* %22, align 4, !dbg !1398, !tbaa !793
  %24 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1400, !tbaa !698
  %25 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %24) #10, !dbg !1400
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.27, i64 0, i64 0), i8* %25) #10, !dbg !1401
  store i32 1, i32* @exit_status, align 4, !dbg !1402, !tbaa !793
  br label %26, !dbg !1403

; <label>:26:                                     ; preds = %18, %1, %17, %21
  %27 = load i8**, i8*** @file_list, align 8, !dbg !1404, !tbaa !698
  %28 = getelementptr inbounds i8*, i8** %27, i64 1, !dbg !1404
  store i8** %28, i8*** @file_list, align 8, !dbg !1404, !tbaa !698
  %29 = load i8*, i8** %27, align 8, !dbg !1405, !tbaa !698
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !178, metadata !691), !dbg !1406
  %30 = icmp eq i8* %29, null, !dbg !1407
  br i1 %30, label %52, label %31, !dbg !1408

; <label>:31:                                     ; preds = %26
  br label %32, !dbg !1409

; <label>:32:                                     ; preds = %31, %44
  %33 = phi i8* [ %50, %44 ], [ %29, %31 ]
  %34 = tail call i32 @strcmp(i8* nonnull %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.24, i64 0, i64 0)) #14, !dbg !1409
  %35 = icmp eq i32 %34, 0, !dbg !1409
  br i1 %35, label %36, label %38, !dbg !1412

; <label>:36:                                     ; preds = %32
  store i1 true, i1* @have_read_stdin, align 1
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1413, !tbaa !698
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %37, i64 0, metadata !177, metadata !691), !dbg !1367
  br label %40, !dbg !1415

; <label>:38:                                     ; preds = %32
  %39 = tail call %struct._IO_FILE* @fopen(i8* nonnull %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.28, i64 0, i64 0)), !dbg !1416
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %39, i64 0, metadata !177, metadata !691), !dbg !1367
  br label %40

; <label>:40:                                     ; preds = %38, %36
  %41 = phi %struct._IO_FILE* [ %37, %36 ], [ %39, %38 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !177, metadata !691), !dbg !1367
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !1417
  br i1 %42, label %44, label %43, !dbg !1419

; <label>:43:                                     ; preds = %40
  store i8* %33, i8** @next_file.prev_file, align 8, !dbg !1420, !tbaa !698
  tail call void @fadvise(%struct._IO_FILE* nonnull %41, i32 2) #10, !dbg !1422
  br label %52, !dbg !1423

; <label>:44:                                     ; preds = %40
  %45 = tail call i32* @__errno_location() #17, !dbg !1424
  %46 = load i32, i32* %45, align 4, !dbg !1424, !tbaa !793
  %47 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %33) #10, !dbg !1425
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.27, i64 0, i64 0), i8* %47) #10, !dbg !1426
  store i32 1, i32* @exit_status, align 4, !dbg !1427, !tbaa !793
  %48 = load i8**, i8*** @file_list, align 8, !dbg !1404, !tbaa !698
  %49 = getelementptr inbounds i8*, i8** %48, i64 1, !dbg !1404
  store i8** %49, i8*** @file_list, align 8, !dbg !1404, !tbaa !698
  %50 = load i8*, i8** %48, align 8, !dbg !1405, !tbaa !698
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !178, metadata !691), !dbg !1406
  %51 = icmp eq i8* %50, null, !dbg !1407
  br i1 %51, label %52, label %32, !dbg !1408, !llvm.loop !1428

; <label>:52:                                     ; preds = %44, %26, %43
  %53 = phi %struct._IO_FILE* [ %41, %43 ], [ null, %26 ], [ null, %44 ]
  ret %struct._IO_FILE* %53, !dbg !1430
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @cleanup_file_list_stdin() local_unnamed_addr #6 !dbg !1431 {
  %1 = load i1, i1* @have_read_stdin, align 1
  br i1 %1, label %2, label %9, !dbg !1432

; <label>:2:                                      ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1434, !tbaa !698
  %4 = tail call i32 @rpl_fclose(%struct._IO_FILE* %3) #10, !dbg !1435
  %5 = icmp eq i32 %4, 0, !dbg !1436
  br i1 %5, label %9, label %6, !dbg !1437

; <label>:6:                                      ; preds = %2
  %7 = tail call i32* @__errno_location() #17, !dbg !1438
  %8 = load i32, i32* %7, align 4, !dbg !1438, !tbaa !793
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.24, i64 0, i64 0)) #10, !dbg !1438
  unreachable, !dbg !1438

; <label>:9:                                      ; preds = %2, %0
  ret void, !dbg !1439
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1440 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1442, metadata !691), !dbg !1443
  store i8* %0, i8** @file_name, align 8, !dbg !1444, !tbaa !698
  ret void, !dbg !1445
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1446 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1450, metadata !691), !dbg !1451
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1452, !tbaa !762
  ret void, !dbg !1453
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1454 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1459, !tbaa !698
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1460
  %3 = icmp eq i32 %2, 0, !dbg !1461
  br i1 %3, label %21, label %4, !dbg !1462

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1463, !tbaa !762, !range !918
  %6 = icmp eq i8 %5, 0, !dbg !1463
  %7 = tail call i32* @__errno_location() #17, !dbg !1464
  br i1 %6, label %11, label %8, !dbg !1466

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1467, !tbaa !793
  %10 = icmp eq i32 %9, 32, !dbg !1468
  br i1 %10, label %21, label %11, !dbg !1469

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !1470
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1456, metadata !691), !dbg !1471
  %13 = load i8*, i8** @file_name, align 8, !dbg !1472, !tbaa !698
  %14 = icmp eq i8* %13, null, !dbg !1472
  %15 = load i32, i32* %7, align 4, !tbaa !793
  br i1 %14, label %18, label %16, !dbg !1473

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1474
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1475
  br label %19, !dbg !1475

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #10, !dbg !1476
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1477, !tbaa !793
  tail call void @_exit(i32 %20) #15, !dbg !1478
  unreachable, !dbg !1478

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1479, !tbaa !698
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1481
  %24 = icmp eq i32 %23, 0, !dbg !1482
  br i1 %24, label %27, label %25, !dbg !1483

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1484, !tbaa !793
  tail call void @_exit(i32 %26) #15, !dbg !1485
  unreachable, !dbg !1485

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1486
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1487 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1495, metadata !691), !dbg !1501
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1496, metadata !691), !dbg !1502
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1497, metadata !691), !dbg !1503
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1498, metadata !691), !dbg !1504
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1505
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1499, metadata !691), !dbg !1505
  ret void, !dbg !1506
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1507 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1551, metadata !691), !dbg !1553
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1552, metadata !691), !dbg !1554
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1555
  br i1 %3, label %7, label %4, !dbg !1557

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1558
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1495, metadata !691) #10, !dbg !1559
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1496, metadata !691) #10, !dbg !1561
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1497, metadata !691) #10, !dbg !1562
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1498, metadata !691) #10, !dbg !1563
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1499, metadata !691) #10, !dbg !1564
  br label %7, !dbg !1565

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1566
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1567 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1569, metadata !691), !dbg !1572
  %2 = icmp eq i8* %0, null, !dbg !1573
  br i1 %2, label %3, label %6, !dbg !1575

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1576, !tbaa !698
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1578
  tail call void @abort() #15, !dbg !1579
  unreachable, !dbg !1579

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1580
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1570, metadata !691), !dbg !1581
  %8 = icmp eq i8* %7, null, !dbg !1582
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1583
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1584
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1571, metadata !691), !dbg !1585
  %11 = ptrtoint i8* %10 to i64, !dbg !1586
  %12 = ptrtoint i8* %0 to i64, !dbg !1586
  %13 = sub i64 %11, %12, !dbg !1586
  %14 = icmp sgt i64 %13, 6, !dbg !1588
  br i1 %14, label %15, label %24, !dbg !1589

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1590
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #14, !dbg !1591
  %18 = icmp eq i32 %17, 0, !dbg !1592
  br i1 %18, label %19, label %24, !dbg !1593

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1569, metadata !691), !dbg !1572
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #14, !dbg !1594
  %21 = icmp eq i32 %20, 0, !dbg !1597
  br i1 %21, label %22, label %24, !dbg !1598

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1599
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1569, metadata !691), !dbg !1572
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1601, !tbaa !698
  br label %24, !dbg !1602

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1569, metadata !691), !dbg !1572
  store i8* %25, i8** @program_name, align 8, !dbg !1603, !tbaa !698
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1604, !tbaa !698
  ret void, !dbg !1605
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1606 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1611, metadata !691), !dbg !1614
  %2 = tail call i32* @__errno_location() #17, !dbg !1615
  %3 = load i32, i32* %2, align 4, !dbg !1615, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1612, metadata !691), !dbg !1616
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1617
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1617
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1617
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1618
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1618
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1613, metadata !691), !dbg !1619
  store i32 %3, i32* %2, align 4, !dbg !1620, !tbaa !793
  ret %struct.quoting_options* %8, !dbg !1621
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1622 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1628, metadata !691), !dbg !1629
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1630
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1630
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1631
  %5 = load i32, i32* %4, align 8, !dbg !1631, !tbaa !1632
  ret i32 %5, !dbg !1634
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1635 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1639, metadata !691), !dbg !1641
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1640, metadata !691), !dbg !1642
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1643
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1643
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1644
  store i32 %1, i32* %5, align 8, !dbg !1645, !tbaa !1632
  ret void, !dbg !1646
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1647 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1651, metadata !691), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1652, metadata !691), !dbg !1660
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1653, metadata !691), !dbg !1661
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1654, metadata !691), !dbg !1662
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1663
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1663
  %6 = lshr i8 %1, 5, !dbg !1664
  %7 = zext i8 %6 to i64, !dbg !1664
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1665
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1655, metadata !691), !dbg !1666
  %9 = and i8 %1, 31, !dbg !1667
  %10 = zext i8 %9 to i32, !dbg !1668
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1657, metadata !691), !dbg !1669
  %11 = load i32, i32* %8, align 4, !dbg !1670, !tbaa !793
  %12 = lshr i32 %11, %10, !dbg !1671
  %13 = and i32 %12, 1, !dbg !1672
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1658, metadata !691), !dbg !1673
  %14 = and i32 %2, 1, !dbg !1674
  %15 = xor i32 %13, %14, !dbg !1675
  %16 = shl i32 %15, %10, !dbg !1676
  %17 = xor i32 %16, %11, !dbg !1677
  store i32 %17, i32* %8, align 4, !dbg !1677, !tbaa !793
  ret i32 %13, !dbg !1678
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1679 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1683, metadata !691), !dbg !1686
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1684, metadata !691), !dbg !1687
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1688
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1683, metadata !691), !dbg !1686
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1690
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1683, metadata !691), !dbg !1686
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1691
  %6 = load i32, i32* %5, align 4, !dbg !1691, !tbaa !1692
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1685, metadata !691), !dbg !1693
  store i32 %1, i32* %5, align 4, !dbg !1694, !tbaa !1692
  ret i32 %6, !dbg !1695
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1696 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1700, metadata !691), !dbg !1703
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1701, metadata !691), !dbg !1704
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1702, metadata !691), !dbg !1705
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1706
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1700, metadata !691), !dbg !1703
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1708
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1700, metadata !691), !dbg !1703
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1709
  store i32 10, i32* %6, align 8, !dbg !1710, !tbaa !1632
  %7 = icmp ne i8* %1, null, !dbg !1711
  %8 = icmp ne i8* %2, null, !dbg !1713
  %9 = and i1 %7, %8, !dbg !1714
  br i1 %9, label %11, label %10, !dbg !1714

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1715
  unreachable, !dbg !1715

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1716
  store i8* %1, i8** %12, align 8, !dbg !1717, !tbaa !1718
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1719
  store i8* %2, i8** %13, align 8, !dbg !1720, !tbaa !1721
  ret void, !dbg !1722
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1723 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1727, metadata !691), !dbg !1735
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1728, metadata !691), !dbg !1736
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1729, metadata !691), !dbg !1737
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1730, metadata !691), !dbg !1738
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1731, metadata !691), !dbg !1739
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1740
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1740
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1732, metadata !691), !dbg !1741
  %8 = tail call i32* @__errno_location() #17, !dbg !1742
  %9 = load i32, i32* %8, align 4, !dbg !1742, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1733, metadata !691), !dbg !1743
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1744
  %11 = load i32, i32* %10, align 8, !dbg !1744, !tbaa !1632
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1745
  %13 = load i32, i32* %12, align 4, !dbg !1745, !tbaa !1692
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1746
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1747
  %16 = load i8*, i8** %15, align 8, !dbg !1747, !tbaa !1718
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1748
  %18 = load i8*, i8** %17, align 8, !dbg !1748, !tbaa !1721
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1749
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1734, metadata !691), !dbg !1750
  store i32 %9, i32* %8, align 4, !dbg !1751, !tbaa !793
  ret i64 %19, !dbg !1752
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1753 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1759, metadata !691), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1760, metadata !691), !dbg !1824
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1761, metadata !691), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1762, metadata !691), !dbg !1826
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1763, metadata !691), !dbg !1827
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1764, metadata !691), !dbg !1828
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1765, metadata !691), !dbg !1829
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1766, metadata !691), !dbg !1830
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1767, metadata !691), !dbg !1831
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1769, metadata !691), !dbg !1832
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1770, metadata !691), !dbg !1833
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1771, metadata !691), !dbg !1834
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1772, metadata !691), !dbg !1835
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1773, metadata !691), !dbg !1836
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1837
  %14 = icmp eq i64 %13, 1, !dbg !1838
  %15 = lshr i32 %5, 1, !dbg !1839
  %16 = trunc i32 %15 to i8, !dbg !1839
  %17 = and i8 %16, 1, !dbg !1839
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1775, metadata !691), !dbg !1839
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1776, metadata !691), !dbg !1840
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1777, metadata !691), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1778, metadata !691), !dbg !1842
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1843

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1760, metadata !691), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1778, metadata !691), !dbg !1842
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1777, metadata !691), !dbg !1841
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1775, metadata !691), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1762, metadata !691), !dbg !1826
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1773, metadata !691), !dbg !1836
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1772, metadata !691), !dbg !1835
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1771, metadata !691), !dbg !1834
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1770, metadata !691), !dbg !1833
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1767, metadata !691), !dbg !1831
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1766, metadata !691), !dbg !1830
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1763, metadata !691), !dbg !1827
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
  ], !dbg !1844

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1763, metadata !691), !dbg !1827
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1775, metadata !691), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1775, metadata !691), !dbg !1839
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1763, metadata !691), !dbg !1827
  br label %94, !dbg !1845

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1775, metadata !691), !dbg !1839
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1763, metadata !691), !dbg !1827
  %43 = and i8 %36, 1, !dbg !1847
  %44 = icmp eq i8 %43, 0, !dbg !1847
  br i1 %44, label %45, label %94, !dbg !1845

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1849
  br i1 %46, label %94, label %47, !dbg !1852

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1849, !tbaa !900
  br label %94, !dbg !1849

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %28), !dbg !1853
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1766, metadata !691), !dbg !1830
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %28), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1767, metadata !691), !dbg !1831
  br label %51, !dbg !1858

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1767, metadata !691), !dbg !1831
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1766, metadata !691), !dbg !1830
  %54 = and i8 %36, 1, !dbg !1859
  %55 = icmp eq i8 %54, 0, !dbg !1859
  br i1 %55, label %56, label %72, !dbg !1861

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1771, metadata !691), !dbg !1834
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1771, metadata !691), !dbg !1834
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1769, metadata !691), !dbg !1832
  %57 = load i8, i8* %52, align 1, !dbg !1862, !tbaa !900
  %58 = icmp eq i8 %57, 0, !dbg !1865
  br i1 %58, label %72, label %59, !dbg !1865

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1866

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1771, metadata !691), !dbg !1834
  %64 = icmp ult i64 %63, %40, !dbg !1866
  br i1 %64, label %65, label %67, !dbg !1869

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1866
  store i8 %61, i8* %66, align 1, !dbg !1866, !tbaa !900
  br label %67, !dbg !1866

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1769, metadata !691), !dbg !1832
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1771, metadata !691), !dbg !1834
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1771, metadata !691), !dbg !1834
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1769, metadata !691), !dbg !1832
  %70 = load i8, i8* %69, align 1, !dbg !1862, !tbaa !900
  %71 = icmp eq i8 %70, 0, !dbg !1865
  br i1 %71, label %72, label %60, !dbg !1865, !llvm.loop !1871

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1773, metadata !691), !dbg !1836
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1771, metadata !691), !dbg !1834
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1772, metadata !691), !dbg !1835
  br label %94, !dbg !1874

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1773, metadata !691), !dbg !1836
  br label %76, !dbg !1875

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1773, metadata !691), !dbg !1836
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1775, metadata !691), !dbg !1839
  br label %78, !dbg !1876

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1775, metadata !691), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1773, metadata !691), !dbg !1836
  %81 = and i8 %80, 1, !dbg !1877
  %82 = icmp eq i8 %81, 0, !dbg !1877
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1773, metadata !691), !dbg !1836
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1879
  br label %84, !dbg !1879

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1775, metadata !691), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1773, metadata !691), !dbg !1836
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1763, metadata !691), !dbg !1827
  %87 = and i8 %86, 1, !dbg !1880
  %88 = icmp eq i8 %87, 0, !dbg !1880
  br i1 %88, label %89, label %94, !dbg !1882

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1883
  br i1 %90, label %94, label %91, !dbg !1886

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1883, !tbaa !900
  br label %94, !dbg !1883

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1775, metadata !691), !dbg !1839
  br label %94, !dbg !1887

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1888
  unreachable, !dbg !1888

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1775, metadata !691), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1773, metadata !691), !dbg !1836
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1772, metadata !691), !dbg !1835
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1771, metadata !691), !dbg !1834
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1767, metadata !691), !dbg !1831
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1766, metadata !691), !dbg !1830
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1763, metadata !691), !dbg !1827
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1768, metadata !691), !dbg !1889
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
  br label %122, !dbg !1890

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1760, metadata !691), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1778, metadata !691), !dbg !1842
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1777, metadata !691), !dbg !1841
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1762, metadata !691), !dbg !1826
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1770, metadata !691), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1768, metadata !691), !dbg !1889
  %131 = icmp eq i64 %126, -1, !dbg !1891
  br i1 %131, label %134, label %132, !dbg !1892

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1893
  br i1 %133, label %590, label %138, !dbg !1894

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1895
  %136 = load i8, i8* %135, align 1, !dbg !1895, !tbaa !900
  %137 = icmp eq i8 %136, 0, !dbg !1896
  br i1 %137, label %590, label %138, !dbg !1894

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1784, metadata !691), !dbg !1897
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1785, metadata !691), !dbg !1898
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1786, metadata !691), !dbg !1899
  br i1 %108, label %139, label %154, !dbg !1900

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1902
  %141 = and i1 %109, %131, !dbg !1903
  br i1 %141, label %142, label %144, !dbg !1903

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1762, metadata !691), !dbg !1826
  br label %144, !dbg !1905

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1762, metadata !691), !dbg !1826
  %146 = icmp ugt i64 %140, %145, !dbg !1906
  br i1 %146, label %154, label %147, !dbg !1907

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1908
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1909
  %150 = icmp ne i32 %149, 0, !dbg !1910
  %151 = or i1 %150, %111, !dbg !1911
  %152 = xor i1 %150, true, !dbg !1911
  %153 = zext i1 %152 to i8, !dbg !1911
  br i1 %151, label %154, label %635, !dbg !1911

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1784, metadata !691), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1762, metadata !691), !dbg !1826
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1912
  %158 = load i8, i8* %157, align 1, !dbg !1912, !tbaa !900
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1779, metadata !691), !dbg !1913
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
  ], !dbg !1914

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1915

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1916

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1785, metadata !691), !dbg !1898
  %162 = and i8 %127, 1, !dbg !1920
  %163 = icmp eq i8 %162, 0, !dbg !1920
  %164 = and i1 %113, %163, !dbg !1920
  br i1 %164, label %165, label %181, !dbg !1920

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1922
  br i1 %166, label %167, label %169, !dbg !1926

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1922
  store i8 39, i8* %168, align 1, !dbg !1922, !tbaa !900
  br label %169, !dbg !1922

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1769, metadata !691), !dbg !1832
  %171 = icmp ult i64 %170, %130, !dbg !1927
  br i1 %171, label %172, label %174, !dbg !1930

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1927
  store i8 36, i8* %173, align 1, !dbg !1927, !tbaa !900
  br label %174, !dbg !1927

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1769, metadata !691), !dbg !1832
  %176 = icmp ult i64 %175, %130, !dbg !1931
  br i1 %176, label %177, label %179, !dbg !1934

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1931
  store i8 39, i8* %178, align 1, !dbg !1931, !tbaa !900
  br label %179, !dbg !1931

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1776, metadata !691), !dbg !1840
  br label %181, !dbg !1935

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1769, metadata !691), !dbg !1832
  %184 = icmp ult i64 %182, %130, !dbg !1936
  br i1 %184, label %185, label %187, !dbg !1939

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1936
  store i8 92, i8* %186, align 1, !dbg !1936, !tbaa !900
  br label %187, !dbg !1936

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1769, metadata !691), !dbg !1832
  br i1 %105, label %189, label %470, !dbg !1940

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1942
  %191 = icmp ult i64 %190, %155, !dbg !1943
  br i1 %191, label %192, label %470, !dbg !1944

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1945
  %194 = load i8, i8* %193, align 1, !dbg !1945, !tbaa !900
  %195 = add i8 %194, -48, !dbg !1946
  %196 = icmp ult i8 %195, 10, !dbg !1946
  br i1 %196, label %197, label %470, !dbg !1946

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1947
  br i1 %198, label %199, label %201, !dbg !1951

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1947
  store i8 48, i8* %200, align 1, !dbg !1947, !tbaa !900
  br label %201, !dbg !1947

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1769, metadata !691), !dbg !1832
  %203 = icmp ult i64 %202, %130, !dbg !1952
  br i1 %203, label %204, label %206, !dbg !1955

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1952
  store i8 48, i8* %205, align 1, !dbg !1952, !tbaa !900
  br label %206, !dbg !1952

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1769, metadata !691), !dbg !1832
  br label %470, !dbg !1956

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1957

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1958

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1959

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1961

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1963
  %214 = icmp ult i64 %213, %155, !dbg !1964
  br i1 %214, label %215, label %470, !dbg !1965

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1966
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1967
  %218 = load i8, i8* %217, align 1, !dbg !1967, !tbaa !900
  %219 = icmp eq i8 %218, 63, !dbg !1968
  br i1 %219, label %220, label %470, !dbg !1969

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1970
  %222 = load i8, i8* %221, align 1, !dbg !1970, !tbaa !900
  %223 = sext i8 %222 to i32, !dbg !1970
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
  ], !dbg !1971

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1972

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1779, metadata !691), !dbg !1913
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1768, metadata !691), !dbg !1889
  %226 = icmp ult i64 %124, %130, !dbg !1974
  br i1 %226, label %227, label %229, !dbg !1977

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1974
  store i8 63, i8* %228, align 1, !dbg !1974, !tbaa !900
  br label %229, !dbg !1974

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1769, metadata !691), !dbg !1832
  %231 = icmp ult i64 %230, %130, !dbg !1978
  br i1 %231, label %232, label %234, !dbg !1981

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1978
  store i8 34, i8* %233, align 1, !dbg !1978, !tbaa !900
  br label %234, !dbg !1978

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1769, metadata !691), !dbg !1832
  %236 = icmp ult i64 %235, %130, !dbg !1982
  br i1 %236, label %237, label %239, !dbg !1985

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1982
  store i8 34, i8* %238, align 1, !dbg !1982, !tbaa !900
  br label %239, !dbg !1982

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1769, metadata !691), !dbg !1832
  %241 = icmp ult i64 %240, %130, !dbg !1986
  br i1 %241, label %242, label %244, !dbg !1989

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1986
  store i8 63, i8* %243, align 1, !dbg !1986, !tbaa !900
  br label %244, !dbg !1986

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1769, metadata !691), !dbg !1832
  br label %470, !dbg !1990

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1783, metadata !691), !dbg !1991
  br label %256, !dbg !1992

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1783, metadata !691), !dbg !1991
  br label %256, !dbg !1993

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1783, metadata !691), !dbg !1991
  br label %254, !dbg !1994

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1783, metadata !691), !dbg !1991
  br label %254, !dbg !1995

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1783, metadata !691), !dbg !1991
  br label %256, !dbg !1996

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1783, metadata !691), !dbg !1991
  br i1 %113, label %252, label %253, !dbg !1997

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1998

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2001

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1783, metadata !691), !dbg !1991
  br i1 %117, label %256, label %635, !dbg !2003

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1783, metadata !691), !dbg !1991
  br i1 %104, label %497, label %470, !dbg !2005

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2006
  br i1 %259, label %260, label %265, !dbg !2008

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2009, !tbaa !900
  %262 = icmp ne i8 %261, 0, !dbg !2010
  %263 = icmp ne i64 %123, 0, !dbg !2011
  %264 = or i1 %263, %262, !dbg !2013
  br i1 %264, label %470, label %271, !dbg !2013

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2014
  %267 = icmp ne i64 %123, 0, !dbg !2011
  %268 = or i1 %267, %266, !dbg !2008
  br i1 %268, label %470, label %271, !dbg !2008

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2011
  br i1 %270, label %271, label %470, !dbg !2015

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1786, metadata !691), !dbg !1899
  br label %272, !dbg !2016

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1786, metadata !691), !dbg !1899
  br i1 %117, label %470, label %635, !dbg !2017

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1777, metadata !691), !dbg !1841
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1786, metadata !691), !dbg !1899
  br i1 %113, label %275, label %470, !dbg !2019

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2020

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2023
  %278 = icmp ne i64 %125, 0, !dbg !2025
  %279 = or i1 %278, %277, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1770, metadata !691), !dbg !1833
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1760, metadata !691), !dbg !1824
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2026
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1760, metadata !691), !dbg !1824
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1770, metadata !691), !dbg !1833
  %282 = icmp ult i64 %124, %281, !dbg !2027
  br i1 %282, label %283, label %285, !dbg !2030

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2027
  store i8 39, i8* %284, align 1, !dbg !2027, !tbaa !900
  br label %285, !dbg !2027

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1769, metadata !691), !dbg !1832
  %287 = icmp ult i64 %286, %281, !dbg !2031
  br i1 %287, label %288, label %290, !dbg !2034

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2031
  store i8 92, i8* %289, align 1, !dbg !2031, !tbaa !900
  br label %290, !dbg !2031

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2034
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1769, metadata !691), !dbg !1832
  %292 = icmp ult i64 %291, %281, !dbg !2035
  br i1 %292, label %293, label %295, !dbg !2038

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2035
  store i8 39, i8* %294, align 1, !dbg !2035, !tbaa !900
  br label %295, !dbg !2035

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1776, metadata !691), !dbg !1840
  br label %470, !dbg !2039

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2040

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1787, metadata !691), !dbg !2041
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2042
  %300 = load i16*, i16** %299, align 8, !dbg !2042, !tbaa !698
  %301 = zext i8 %158 to i64, !dbg !2042
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2042
  %303 = load i16, i16* %302, align 2, !dbg !2042, !tbaa !909
  %304 = lshr i16 %303, 14, !dbg !2044
  %305 = trunc i16 %304 to i8, !dbg !2044
  %306 = and i8 %305, 1, !dbg !2044
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1790, metadata !691), !dbg !2045
  br label %362, !dbg !2046

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2047
  store i64 0, i64* %10, align 8, !dbg !2048
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1787, metadata !691), !dbg !2041
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1790, metadata !691), !dbg !2045
  %308 = icmp eq i64 %155, -1, !dbg !2049
  br i1 %308, label %309, label %311, !dbg !2051

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1762, metadata !691), !dbg !1826
  br label %311, !dbg !2053

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1762, metadata !691), !dbg !1826
  br label %313, !dbg !2054, !llvm.loop !2055

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1790, metadata !691), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1787, metadata !691), !dbg !2041
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2057
  %316 = add i64 %314, %123, !dbg !2058
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2059
  %318 = sub i64 %312, %316, !dbg !2060
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1791, metadata !691), !dbg !2061
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1809, metadata !691), !dbg !2062
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1812, metadata !691), !dbg !2064
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2065

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1790, metadata !691), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1787, metadata !691), !dbg !2041
  %321 = icmp ugt i64 %312, %316, !dbg !2066
  br i1 %321, label %322, label %347, !dbg !2068

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2069

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1787, metadata !691), !dbg !2041
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2069
  %327 = load i8, i8* %326, align 1, !dbg !2069, !tbaa !900
  %328 = icmp eq i8 %327, 0, !dbg !2068
  br i1 %328, label %347, label %329, !dbg !2070

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1787, metadata !691), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1787, metadata !691), !dbg !2041
  %331 = add i64 %330, %123, !dbg !2072
  %332 = icmp ult i64 %331, %312, !dbg !2066
  br i1 %332, label %323, label %347, !dbg !2068, !llvm.loop !2073

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2074
  %335 = and i1 %115, %334, !dbg !2077
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1813, metadata !691), !dbg !2078
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1813, metadata !691), !dbg !2078
  br i1 %335, label %336, label %350, !dbg !2077

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2079

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1813, metadata !691), !dbg !2078
  %339 = add i64 %338, %316, !dbg !2079
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2080
  %341 = load i8, i8* %340, align 1, !dbg !2080, !tbaa !900
  %342 = sext i8 %341 to i32, !dbg !2080
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2081

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1813, metadata !691), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1813, metadata !691), !dbg !2078
  %345 = icmp ult i64 %344, %319, !dbg !2074
  br i1 %345, label %337, label %350, !dbg !2083, !llvm.loop !2084

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2086

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1790, metadata !691), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1787, metadata !691), !dbg !2041
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2086
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2087, !tbaa !793
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1809, metadata !691), !dbg !2062
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !2089
  %353 = icmp eq i32 %352, 0, !dbg !2089
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1790, metadata !691), !dbg !2045
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2090
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1790, metadata !691), !dbg !2045
  %355 = add i64 %319, %314, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1787, metadata !691), !dbg !2041
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1790, metadata !691), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1787, metadata !691), !dbg !2041
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2086
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1791, metadata !691), !dbg !2061
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2092
  %357 = icmp eq i32 %356, 0, !dbg !2093
  br i1 %357, label %313, label %358, !dbg !2094, !llvm.loop !2055

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2095
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1790, metadata !691), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1787, metadata !691), !dbg !2041
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !2086
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !2095
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1790, metadata !691), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1787, metadata !691), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1762, metadata !691), !dbg !1826
  %366 = and i8 %365, 1, !dbg !2096
  %367 = icmp ne i8 %366, 0, !dbg !2096
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1786, metadata !691), !dbg !1899
  %368 = icmp ult i64 %364, 2, !dbg !2097
  %369 = or i1 %367, %112, !dbg !2098
  %370 = and i1 %368, %369, !dbg !2099
  br i1 %370, label %470, label %371, !dbg !2099

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1820, metadata !691), !dbg !2101
  br label %373, !dbg !2102

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1785, metadata !691), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1784, metadata !691), !dbg !1897
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1779, metadata !691), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1768, metadata !691), !dbg !1889
  br i1 %369, label %426, label %380, !dbg !2103

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2108

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1785, metadata !691), !dbg !1898
  %382 = and i8 %376, 1, !dbg !2111
  %383 = icmp eq i8 %382, 0, !dbg !2111
  %384 = and i1 %113, %383, !dbg !2111
  br i1 %384, label %385, label %401, !dbg !2111

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2113
  br i1 %386, label %387, label %389, !dbg !2117

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2113
  store i8 39, i8* %388, align 1, !dbg !2113, !tbaa !900
  br label %389, !dbg !2113

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1769, metadata !691), !dbg !1832
  %391 = icmp ult i64 %390, %130, !dbg !2118
  br i1 %391, label %392, label %394, !dbg !2121

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2118
  store i8 36, i8* %393, align 1, !dbg !2118, !tbaa !900
  br label %394, !dbg !2118

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1769, metadata !691), !dbg !1832
  %396 = icmp ult i64 %395, %130, !dbg !2122
  br i1 %396, label %397, label %399, !dbg !2125

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2122
  store i8 39, i8* %398, align 1, !dbg !2122, !tbaa !900
  br label %399, !dbg !2122

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1776, metadata !691), !dbg !1840
  br label %401, !dbg !2126

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1769, metadata !691), !dbg !1832
  %404 = icmp ult i64 %402, %130, !dbg !2127
  br i1 %404, label %405, label %407, !dbg !2130

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2127
  store i8 92, i8* %406, align 1, !dbg !2127, !tbaa !900
  br label %407, !dbg !2127

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1769, metadata !691), !dbg !1832
  %409 = icmp ult i64 %408, %130, !dbg !2131
  br i1 %409, label %410, label %414, !dbg !2134

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2131
  %412 = or i8 %411, 48, !dbg !2131
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2131
  store i8 %412, i8* %413, align 1, !dbg !2131, !tbaa !900
  br label %414, !dbg !2131

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1769, metadata !691), !dbg !1832
  %416 = icmp ult i64 %415, %130, !dbg !2135
  br i1 %416, label %417, label %422, !dbg !2138

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2135
  %419 = and i8 %418, 7, !dbg !2135
  %420 = or i8 %419, 48, !dbg !2135
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2135
  store i8 %420, i8* %421, align 1, !dbg !2135, !tbaa !900
  br label %422, !dbg !2135

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1769, metadata !691), !dbg !1832
  %424 = and i8 %377, 7, !dbg !2139
  %425 = or i8 %424, 48, !dbg !2140
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1779, metadata !691), !dbg !1913
  br label %435, !dbg !2141

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2142
  %428 = icmp eq i8 %427, 0, !dbg !2142
  br i1 %428, label %435, label %429, !dbg !2144

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2145
  br i1 %430, label %431, label %433, !dbg !2149

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2145
  store i8 92, i8* %432, align 1, !dbg !2145, !tbaa !900
  br label %433, !dbg !2145

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1784, metadata !691), !dbg !1897
  br label %435, !dbg !2150

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1785, metadata !691), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1784, metadata !691), !dbg !1897
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1779, metadata !691), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1769, metadata !691), !dbg !1832
  %441 = add i64 %374, 1, !dbg !2151
  %442 = icmp ugt i64 %372, %441, !dbg !2153
  br i1 %442, label %443, label %535, !dbg !2154

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2155
  %445 = icmp ne i8 %444, 0, !dbg !2155
  %446 = and i8 %440, 1, !dbg !2155
  %447 = icmp eq i8 %446, 0, !dbg !2155
  %448 = and i1 %445, %447, !dbg !2155
  br i1 %448, label %449, label %460, !dbg !2155

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2158
  br i1 %450, label %451, label %453, !dbg !2162

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2158
  store i8 39, i8* %452, align 1, !dbg !2158, !tbaa !900
  br label %453, !dbg !2158

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1769, metadata !691), !dbg !1832
  %455 = icmp ult i64 %454, %130, !dbg !2163
  br i1 %455, label %456, label %458, !dbg !2166

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2163
  store i8 39, i8* %457, align 1, !dbg !2163, !tbaa !900
  br label %458, !dbg !2163

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1776, metadata !691), !dbg !1840
  br label %460, !dbg !2167

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1769, metadata !691), !dbg !1832
  %463 = icmp ult i64 %461, %130, !dbg !2168
  br i1 %463, label %464, label %466, !dbg !2171

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2168
  store i8 %438, i8* %465, align 1, !dbg !2168, !tbaa !900
  br label %466, !dbg !2168

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1768, metadata !691), !dbg !1889
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2172
  %469 = load i8, i8* %468, align 1, !dbg !2172, !tbaa !900
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1779, metadata !691), !dbg !1913
  br label %373, !dbg !2173, !llvm.loop !2174

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1760, metadata !691), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1786, metadata !691), !dbg !1899
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1785, metadata !691), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1784, metadata !691), !dbg !1897
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1779, metadata !691), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1777, metadata !691), !dbg !1841
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1762, metadata !691), !dbg !1826
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1770, metadata !691), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1768, metadata !691), !dbg !1889
  br i1 %106, label %482, label %481, !dbg !2177

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2179

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2180

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2181
  %485 = zext i8 %484 to i64, !dbg !2181
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2182
  %487 = load i32, i32* %486, align 4, !dbg !2182, !tbaa !793
  %488 = and i8 %477, 31, !dbg !2183
  %489 = zext i8 %488 to i32, !dbg !2184
  %490 = shl i32 1, %489, !dbg !2185
  %491 = and i32 %487, %490, !dbg !2185
  %492 = icmp eq i32 %491, 0, !dbg !2185
  %493 = icmp eq i8 %156, 0, !dbg !2186
  %494 = and i1 %493, %492, !dbg !2187
  br i1 %494, label %535, label %497, !dbg !2187

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2186
  br i1 %496, label %535, label %497, !dbg !2188

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1760, metadata !691), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1786, metadata !691), !dbg !1899
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1779, metadata !691), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1777, metadata !691), !dbg !1841
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1762, metadata !691), !dbg !1826
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1770, metadata !691), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1768, metadata !691), !dbg !1889
  br i1 %111, label %507, label %635, !dbg !2189

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1785, metadata !691), !dbg !1898
  %508 = and i8 %502, 1, !dbg !2191
  %509 = icmp eq i8 %508, 0, !dbg !2191
  %510 = and i1 %113, %509, !dbg !2191
  br i1 %510, label %511, label %527, !dbg !2191

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2193
  br i1 %512, label %513, label %515, !dbg !2197

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2193
  store i8 39, i8* %514, align 1, !dbg !2193, !tbaa !900
  br label %515, !dbg !2193

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1769, metadata !691), !dbg !1832
  %517 = icmp ult i64 %516, %506, !dbg !2198
  br i1 %517, label %518, label %520, !dbg !2201

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2198
  store i8 36, i8* %519, align 1, !dbg !2198, !tbaa !900
  br label %520, !dbg !2198

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1769, metadata !691), !dbg !1832
  %522 = icmp ult i64 %521, %506, !dbg !2202
  br i1 %522, label %523, label %525, !dbg !2205

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2202
  store i8 39, i8* %524, align 1, !dbg !2202, !tbaa !900
  br label %525, !dbg !2202

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1776, metadata !691), !dbg !1840
  br label %527, !dbg !2206

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1769, metadata !691), !dbg !1832
  %530 = icmp ult i64 %528, %506, !dbg !2207
  br i1 %530, label %531, label %533, !dbg !2210

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2207
  store i8 92, i8* %532, align 1, !dbg !2207, !tbaa !900
  br label %533, !dbg !2207

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1760, metadata !691), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1786, metadata !691), !dbg !1899
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1785, metadata !691), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1779, metadata !691), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1777, metadata !691), !dbg !1841
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1762, metadata !691), !dbg !1826
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1770, metadata !691), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1768, metadata !691), !dbg !1889
  br label %562, !dbg !2211

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1760, metadata !691), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1786, metadata !691), !dbg !1899
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1785, metadata !691), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1779, metadata !691), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1777, metadata !691), !dbg !1841
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1762, metadata !691), !dbg !1826
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1770, metadata !691), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1768, metadata !691), !dbg !1889
  %546 = and i8 %540, 1, !dbg !2211
  %547 = icmp ne i8 %546, 0, !dbg !2211
  %548 = and i8 %543, 1, !dbg !2211
  %549 = icmp eq i8 %548, 0, !dbg !2211
  %550 = and i1 %547, %549, !dbg !2211
  br i1 %550, label %551, label %562, !dbg !2211

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2214
  br i1 %552, label %553, label %555, !dbg !2218

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2214
  store i8 39, i8* %554, align 1, !dbg !2214, !tbaa !900
  br label %555, !dbg !2214

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1769, metadata !691), !dbg !1832
  %557 = icmp ult i64 %556, %545, !dbg !2219
  br i1 %557, label %558, label %560, !dbg !2222

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2219
  store i8 39, i8* %559, align 1, !dbg !2219, !tbaa !900
  br label %560, !dbg !2219

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1776, metadata !691), !dbg !1840
  br label %562, !dbg !2223

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1769, metadata !691), !dbg !1832
  %572 = icmp ult i64 %570, %563, !dbg !2224
  br i1 %572, label %573, label %575, !dbg !2227

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2224
  store i8 %565, i8* %574, align 1, !dbg !2224, !tbaa !900
  br label %575, !dbg !2224

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1769, metadata !691), !dbg !1832
  %577 = and i8 %564, 1, !dbg !2228
  %578 = icmp eq i8 %577, 0, !dbg !2228
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1778, metadata !691), !dbg !1842
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2230
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1778, metadata !691), !dbg !1842
  br label %580, !dbg !2231

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1760, metadata !691), !dbg !1824
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1778, metadata !691), !dbg !1842
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1777, metadata !691), !dbg !1841
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1776, metadata !691), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1762, metadata !691), !dbg !1826
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1770, metadata !691), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1768, metadata !691), !dbg !1889
  %589 = add i64 %581, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1768, metadata !691), !dbg !1889
  br label %122, !dbg !2233, !llvm.loop !2234

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2236
  %593 = and i1 %113, %592, !dbg !2238
  %594 = xor i1 %593, true, !dbg !2238
  %595 = or i1 %111, %594, !dbg !2238
  br i1 %595, label %596, label %635, !dbg !2238

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2239
  %598 = xor i1 %597, true, !dbg !2239
  %599 = and i8 %128, 1, !dbg !2241
  %600 = icmp eq i8 %599, 0, !dbg !2241
  %601 = or i1 %600, %598, !dbg !2239
  br i1 %601, label %611, label %602, !dbg !2239

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2242
  %604 = icmp eq i8 %603, 0, !dbg !2242
  br i1 %604, label %607, label %605, !dbg !2245

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2246
  br label %645, !dbg !2247

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2248
  %609 = icmp ne i64 %125, 0, !dbg !2250
  %610 = and i1 %609, %608, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1760, metadata !691), !dbg !1824
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1769, metadata !691), !dbg !1832
  br i1 %610, label %27, label %611, !dbg !2251

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2252
  %613 = and i1 %612, %111, !dbg !2254
  br i1 %613, label %614, label %630, !dbg !2254

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1771, metadata !691), !dbg !1834
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1769, metadata !691), !dbg !1832
  %615 = load i8, i8* %99, align 1, !dbg !2255, !tbaa !900
  %616 = icmp eq i8 %615, 0, !dbg !2258
  br i1 %616, label %630, label %617, !dbg !2258

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2259

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1769, metadata !691), !dbg !1832
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1771, metadata !691), !dbg !1834
  %622 = icmp ult i64 %621, %130, !dbg !2259
  br i1 %622, label %623, label %625, !dbg !2262

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2259
  store i8 %619, i8* %624, align 1, !dbg !2259, !tbaa !900
  br label %625, !dbg !2259

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1769, metadata !691), !dbg !1832
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2263
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1771, metadata !691), !dbg !1834
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1771, metadata !691), !dbg !1834
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1769, metadata !691), !dbg !1832
  %628 = load i8, i8* %627, align 1, !dbg !2255, !tbaa !900
  %629 = icmp eq i8 %628, 0, !dbg !2258
  br i1 %629, label %630, label %618, !dbg !2258, !llvm.loop !2264

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1769, metadata !691), !dbg !1832
  %632 = icmp ult i64 %631, %130, !dbg !2266
  br i1 %632, label %633, label %645, !dbg !2268

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2269
  store i8 0, i8* %634, align 1, !dbg !2270, !tbaa !900
  br label %645, !dbg !2269

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1760, metadata !691), !dbg !1824
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1762, metadata !691), !dbg !1826
  %639 = icmp ne i32 %636, 2, !dbg !2271
  %640 = icmp eq i8 %103, 0, !dbg !2273
  %641 = or i1 %639, %640, !dbg !2274
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1763, metadata !691), !dbg !1827
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2274
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1763, metadata !691), !dbg !1827
  %643 = and i32 %5, -3, !dbg !2275
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2276
  br label %645, !dbg !2277

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2278
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2279 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2283, metadata !691), !dbg !2287
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2284, metadata !691), !dbg !2288
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2289
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2285, metadata !691), !dbg !2290
  %4 = icmp eq i8* %3, %0, !dbg !2291
  br i1 %4, label %5, label %75, !dbg !2293

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2294
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2286, metadata !691), !dbg !2295
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2296, metadata !691), !dbg !2312
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2310, metadata !691), !dbg !2315
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2311, metadata !691), !dbg !2316
  %7 = load i8, i8* %6, align 1, !dbg !2317, !tbaa !900
  %8 = sext i8 %7 to i32, !dbg !2317
  %9 = and i32 %8, -33, !dbg !2317
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2317

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2319, metadata !691), !dbg !2333
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2331, metadata !691), !dbg !2337
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2332, metadata !691), !dbg !2338
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2339
  %12 = load i8, i8* %11, align 1, !dbg !2339, !tbaa !900
  %13 = sext i8 %12 to i32, !dbg !2339
  %14 = and i32 %13, -33, !dbg !2339
  %15 = icmp eq i32 %14, 84, !dbg !2339
  br i1 %15, label %16, label %72, !dbg !2339

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2341, metadata !691), !dbg !2354
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2352, metadata !691), !dbg !2358
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2353, metadata !691), !dbg !2359
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2360
  %18 = load i8, i8* %17, align 1, !dbg !2360, !tbaa !900
  %19 = sext i8 %18 to i32, !dbg !2360
  %20 = and i32 %19, -33, !dbg !2360
  %21 = icmp eq i32 %20, 70, !dbg !2360
  br i1 %21, label %22, label %72, !dbg !2360

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2362, metadata !691), !dbg !2374
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2372, metadata !691), !dbg !2378
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2373, metadata !691), !dbg !2379
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2380
  %24 = load i8, i8* %23, align 1, !dbg !2380, !tbaa !900
  %25 = icmp eq i8 %24, 45, !dbg !2380
  br i1 %25, label %26, label %72, !dbg !2382

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2383, metadata !691), !dbg !2394
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2392, metadata !691), !dbg !2398
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2393, metadata !691), !dbg !2399
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2400
  %28 = load i8, i8* %27, align 1, !dbg !2400, !tbaa !900
  %29 = icmp eq i8 %28, 56, !dbg !2400
  br i1 %29, label %30, label %72, !dbg !2402

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2403, metadata !691), !dbg !2413
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2411, metadata !691), !dbg !2417
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2412, metadata !691), !dbg !2418
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2419
  %32 = load i8, i8* %31, align 1, !dbg !2419, !tbaa !900
  %33 = icmp eq i8 %32, 0, !dbg !2419
  br i1 %33, label %34, label %72, !dbg !2421

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2422, !tbaa !900
  %36 = icmp eq i8 %35, 96, !dbg !2423
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2422
  br label %75, !dbg !2424

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2319, metadata !691), !dbg !2425
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2331, metadata !691), !dbg !2429
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2332, metadata !691), !dbg !2430
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2431
  %40 = load i8, i8* %39, align 1, !dbg !2431, !tbaa !900
  %41 = sext i8 %40 to i32, !dbg !2431
  %42 = and i32 %41, -33, !dbg !2431
  %43 = icmp eq i32 %42, 66, !dbg !2431
  br i1 %43, label %44, label %72, !dbg !2431

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2341, metadata !691), !dbg !2432
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2352, metadata !691), !dbg !2434
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2353, metadata !691), !dbg !2435
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2436
  %46 = load i8, i8* %45, align 1, !dbg !2436, !tbaa !900
  %47 = icmp eq i8 %46, 49, !dbg !2436
  br i1 %47, label %48, label %72, !dbg !2437

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2362, metadata !691), !dbg !2438
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2372, metadata !691), !dbg !2440
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2373, metadata !691), !dbg !2441
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2442
  %50 = load i8, i8* %49, align 1, !dbg !2442, !tbaa !900
  %51 = icmp eq i8 %50, 56, !dbg !2442
  br i1 %51, label %52, label %72, !dbg !2443

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2383, metadata !691), !dbg !2444
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2392, metadata !691), !dbg !2446
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2393, metadata !691), !dbg !2447
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2448
  %54 = load i8, i8* %53, align 1, !dbg !2448, !tbaa !900
  %55 = icmp eq i8 %54, 48, !dbg !2448
  br i1 %55, label %56, label %72, !dbg !2449

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2403, metadata !691), !dbg !2450
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2411, metadata !691), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2412, metadata !691), !dbg !2453
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2454
  %58 = load i8, i8* %57, align 1, !dbg !2454, !tbaa !900
  %59 = icmp eq i8 %58, 51, !dbg !2454
  br i1 %59, label %60, label %72, !dbg !2455

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2456, metadata !691), !dbg !2465
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2463, metadata !691), !dbg !2469
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2464, metadata !691), !dbg !2470
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2471
  %62 = load i8, i8* %61, align 1, !dbg !2471, !tbaa !900
  %63 = icmp eq i8 %62, 48, !dbg !2471
  br i1 %63, label %64, label %72, !dbg !2473

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2474, metadata !691), !dbg !2482
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2480, metadata !691), !dbg !2486
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2481, metadata !691), !dbg !2487
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2488
  %66 = load i8, i8* %65, align 1, !dbg !2488, !tbaa !900
  %67 = icmp eq i8 %66, 0, !dbg !2488
  br i1 %67, label %68, label %72, !dbg !2490

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2491, !tbaa !900
  %70 = icmp eq i8 %69, 96, !dbg !2492
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2491
  br label %75, !dbg !2493

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2494
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2495
  br label %75, !dbg !2496

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2497
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2498 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2502, metadata !691), !dbg !2505
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2503, metadata !691), !dbg !2506
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2504, metadata !691), !dbg !2507
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2508, metadata !691) #10, !dbg !2521
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2513, metadata !691) #10, !dbg !2523
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2514, metadata !691) #10, !dbg !2524
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2515, metadata !691) #10, !dbg !2525
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2526
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2526
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2516, metadata !691) #10, !dbg !2527
  %6 = tail call i32* @__errno_location() #17, !dbg !2528
  %7 = load i32, i32* %6, align 4, !dbg !2528, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2517, metadata !691) #10, !dbg !2529
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2530
  %9 = load i32, i32* %8, align 4, !dbg !2530, !tbaa !1692
  %10 = or i32 %9, 1, !dbg !2531
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2518, metadata !691) #10, !dbg !2532
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2533
  %12 = load i32, i32* %11, align 8, !dbg !2533, !tbaa !1632
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2534
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2535
  %15 = load i8*, i8** %14, align 8, !dbg !2535, !tbaa !1718
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2536
  %17 = load i8*, i8** %16, align 8, !dbg !2536, !tbaa !1721
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2537
  %19 = add i64 %18, 1, !dbg !2538
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2519, metadata !691) #10, !dbg !2539
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2540, metadata !691) #10, !dbg !2545
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2547
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2520, metadata !691) #10, !dbg !2548
  %21 = load i32, i32* %11, align 8, !dbg !2549, !tbaa !1632
  %22 = load i8*, i8** %14, align 8, !dbg !2550, !tbaa !1718
  %23 = load i8*, i8** %16, align 8, !dbg !2551, !tbaa !1721
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2552
  store i32 %7, i32* %6, align 4, !dbg !2553, !tbaa !793
  ret i8* %20, !dbg !2554
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2509 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2508, metadata !691), !dbg !2555
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2513, metadata !691), !dbg !2556
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2514, metadata !691), !dbg !2557
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2515, metadata !691), !dbg !2558
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2559
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2559
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2516, metadata !691), !dbg !2560
  %7 = tail call i32* @__errno_location() #17, !dbg !2561
  %8 = load i32, i32* %7, align 4, !dbg !2561, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2517, metadata !691), !dbg !2562
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2563
  %10 = load i32, i32* %9, align 4, !dbg !2563, !tbaa !1692
  %11 = icmp ne i64* %2, null, !dbg !2564
  %12 = xor i1 %11, true, !dbg !2564
  %13 = zext i1 %12 to i32, !dbg !2564
  %14 = or i32 %10, %13, !dbg !2565
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2518, metadata !691), !dbg !2566
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2567
  %16 = load i32, i32* %15, align 8, !dbg !2567, !tbaa !1632
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2568
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2569
  %19 = load i8*, i8** %18, align 8, !dbg !2569, !tbaa !1718
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2570
  %21 = load i8*, i8** %20, align 8, !dbg !2570, !tbaa !1721
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2571
  %23 = add i64 %22, 1, !dbg !2572
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2519, metadata !691), !dbg !2573
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2540, metadata !691) #10, !dbg !2574
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2576
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2520, metadata !691), !dbg !2577
  %25 = load i32, i32* %15, align 8, !dbg !2578, !tbaa !1632
  %26 = load i8*, i8** %18, align 8, !dbg !2579, !tbaa !1718
  %27 = load i8*, i8** %20, align 8, !dbg !2580, !tbaa !1721
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2581
  store i32 %8, i32* %7, align 4, !dbg !2582, !tbaa !793
  br i1 %11, label %29, label %30, !dbg !2583

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2584, !tbaa !866
  br label %30, !dbg !2586

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2587
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2588 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2592, !tbaa !698
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2590, metadata !691), !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2591, metadata !691), !dbg !2594
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2591, metadata !691), !dbg !2594
  %2 = load i32, i32* @nslots, align 4, !dbg !2595, !tbaa !793
  %3 = icmp sgt i32 %2, 1, !dbg !2598
  br i1 %3, label %4, label %13, !dbg !2599

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2600

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2591, metadata !691), !dbg !2594
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2600
  %8 = load i8*, i8** %7, align 8, !dbg !2600, !tbaa !2601
  tail call void @free(i8* %8) #10, !dbg !2603
  %9 = add nuw i64 %6, 1, !dbg !2604
  %10 = load i32, i32* @nslots, align 4, !dbg !2595, !tbaa !793
  %11 = sext i32 %10 to i64, !dbg !2598
  %12 = icmp slt i64 %9, %11, !dbg !2598
  br i1 %12, label %5, label %13, !dbg !2599, !llvm.loop !2605

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2607
  %15 = load i8*, i8** %14, align 8, !dbg !2607, !tbaa !2601
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2609
  br i1 %16, label %18, label %17, !dbg !2610

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !2611
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2613, !tbaa !2614
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2615, !tbaa !2601
  br label %18, !dbg !2616

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2617
  br i1 %19, label %22, label %20, !dbg !2619

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2620
  tail call void @free(i8* %21) #10, !dbg !2622
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2623, !tbaa !698
  br label %22, !dbg !2624

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2625, !tbaa !793
  ret void, !dbg !2626
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2627 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2631, metadata !691), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2632, metadata !691), !dbg !2634
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2635
  ret i8* %3, !dbg !2636
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2637 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2641, metadata !691), !dbg !2655
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2642, metadata !691), !dbg !2656
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2643, metadata !691), !dbg !2657
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2644, metadata !691), !dbg !2658
  %5 = tail call i32* @__errno_location() #17, !dbg !2659
  %6 = load i32, i32* %5, align 4, !dbg !2659, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2645, metadata !691), !dbg !2660
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2661, !tbaa !698
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2646, metadata !691), !dbg !2662
  %8 = icmp slt i32 %0, 0, !dbg !2663
  br i1 %8, label %9, label %10, !dbg !2665

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2666
  unreachable, !dbg !2666

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2667, !tbaa !793
  %12 = icmp sgt i32 %11, %0, !dbg !2668
  br i1 %12, label %34, label %13, !dbg !2669

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2670
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2671
  br i1 %15, label %16, label %17, !dbg !2673

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2674
  unreachable, !dbg !2674

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2675
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2675
  %20 = add nsw i32 %0, 1, !dbg !2676
  %21 = sext i32 %20 to i64, !dbg !2677
  %22 = shl nsw i64 %21, 4, !dbg !2678
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2679
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2679
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2646, metadata !691), !dbg !2662
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2680, !tbaa !698
  br i1 %14, label %25, label %26, !dbg !2681

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2682, !tbaa.struct !2684
  br label %26, !dbg !2685

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2686, !tbaa !793
  %28 = sext i32 %27 to i64, !dbg !2687
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2687
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2688
  %31 = sub nsw i32 %20, %27, !dbg !2689
  %32 = sext i32 %31 to i64, !dbg !2690
  %33 = shl nsw i64 %32, 4, !dbg !2691
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2688
  store i32 %20, i32* @nslots, align 4, !dbg !2692, !tbaa !793
  br label %34, !dbg !2693

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2646, metadata !691), !dbg !2662
  %36 = sext i32 %0 to i64, !dbg !2694
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2695
  %38 = load i64, i64* %37, align 8, !dbg !2695, !tbaa !2614
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2650, metadata !691), !dbg !2696
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2697
  %40 = load i8*, i8** %39, align 8, !dbg !2697, !tbaa !2601
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2652, metadata !691), !dbg !2698
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2699
  %42 = load i32, i32* %41, align 4, !dbg !2699, !tbaa !1692
  %43 = or i32 %42, 1, !dbg !2700
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2653, metadata !691), !dbg !2701
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2702
  %45 = load i32, i32* %44, align 8, !dbg !2702, !tbaa !1632
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2703
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2704
  %48 = load i8*, i8** %47, align 8, !dbg !2704, !tbaa !1718
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2705
  %50 = load i8*, i8** %49, align 8, !dbg !2705, !tbaa !1721
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2654, metadata !691), !dbg !2707
  %52 = icmp ugt i64 %38, %51, !dbg !2708
  br i1 %52, label %63, label %53, !dbg !2710

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2711
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2650, metadata !691), !dbg !2696
  store i64 %54, i64* %37, align 8, !dbg !2713, !tbaa !2614
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2714
  br i1 %55, label %57, label %56, !dbg !2716

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2717
  br label %57, !dbg !2717

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2540, metadata !691) #10, !dbg !2718
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2720
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2652, metadata !691), !dbg !2698
  store i8* %58, i8** %39, align 8, !dbg !2721, !tbaa !2601
  %59 = load i32, i32* %44, align 8, !dbg !2722, !tbaa !1632
  %60 = load i8*, i8** %47, align 8, !dbg !2723, !tbaa !1718
  %61 = load i8*, i8** %49, align 8, !dbg !2724, !tbaa !1721
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2725
  br label %63, !dbg !2726

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2652, metadata !691), !dbg !2698
  store i32 %6, i32* %5, align 4, !dbg !2727, !tbaa !793
  ret i8* %64, !dbg !2728
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2729 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2733, metadata !691), !dbg !2736
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2734, metadata !691), !dbg !2737
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2735, metadata !691), !dbg !2738
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2739
  ret i8* %4, !dbg !2740
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2741 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2745, metadata !691), !dbg !2746
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2631, metadata !691) #10, !dbg !2747
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2632, metadata !691) #10, !dbg !2749
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2750
  ret i8* %2, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2752 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2756, metadata !691), !dbg !2758
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2757, metadata !691), !dbg !2759
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2733, metadata !691) #10, !dbg !2760
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2734, metadata !691) #10, !dbg !2762
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2735, metadata !691) #10, !dbg !2763
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2764
  ret i8* %3, !dbg !2765
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2766 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2774, metadata !2780), !dbg !2781
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2770, metadata !691), !dbg !2783
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2771, metadata !691), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2772, metadata !691), !dbg !2785
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2786
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2786
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2773, metadata !691), !dbg !2787
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2779, metadata !691) #10, !dbg !2788
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2789
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2774, metadata !691) #10, !dbg !2781
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2774, metadata !2790) #10, !dbg !2781
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2781
  %8 = icmp eq i32 %1, 10, !dbg !2791
  br i1 %8, label %9, label %10, !dbg !2793

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2794, !noalias !2795
  unreachable, !dbg !2794

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2774, metadata !2790) #10, !dbg !2781
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2798
  store i32 %1, i32* %11, align 8, !dbg !2798, !alias.scope !2795
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2798
  %13 = bitcast i32* %12 to i8*, !dbg !2798
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2798
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2799
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2773, metadata !691), !dbg !2787
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2800
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2801
  ret i8* %14, !dbg !2802
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2803 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2774, metadata !2780), !dbg !2812
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2807, metadata !691), !dbg !2814
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2808, metadata !691), !dbg !2815
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2809, metadata !691), !dbg !2816
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2810, metadata !691), !dbg !2817
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2818
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2818
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2811, metadata !691), !dbg !2819
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2779, metadata !691) #10, !dbg !2820
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2821
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2821
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2774, metadata !691) #10, !dbg !2812
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2774, metadata !2790) #10, !dbg !2812
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2812
  %9 = icmp eq i32 %1, 10, !dbg !2822
  br i1 %9, label %10, label %11, !dbg !2823

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2824, !noalias !2825
  unreachable, !dbg !2824

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2774, metadata !2790) #10, !dbg !2812
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2828
  store i32 %1, i32* %12, align 8, !dbg !2828, !alias.scope !2825
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2828
  %14 = bitcast i32* %13 to i8*, !dbg !2828
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2828
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2829
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2811, metadata !691), !dbg !2819
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2830
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2831
  ret i8* %15, !dbg !2832
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2833 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2774, metadata !2780), !dbg !2839
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2837, metadata !691), !dbg !2842
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2838, metadata !691), !dbg !2843
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2770, metadata !691) #10, !dbg !2844
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2771, metadata !691) #10, !dbg !2845
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2772, metadata !691) #10, !dbg !2846
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2847
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2847
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2773, metadata !691) #10, !dbg !2848
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2779, metadata !691) #10, !dbg !2849
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2850
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2850
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2774, metadata !691) #10, !dbg !2839
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2774, metadata !2790) #10, !dbg !2839
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2839
  %7 = icmp eq i32 %0, 10, !dbg !2851
  br i1 %7, label %8, label %9, !dbg !2852

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2853, !noalias !2854
  unreachable, !dbg !2853

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2774, metadata !2790) #10, !dbg !2839
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2857
  store i32 %0, i32* %10, align 8, !dbg !2857, !alias.scope !2854
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2857
  %12 = bitcast i32* %11 to i8*, !dbg !2857
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2857
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2858
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2773, metadata !691) #10, !dbg !2848
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2859
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2860
  ret i8* %13, !dbg !2861
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2862 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2774, metadata !2780), !dbg !2869
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2866, metadata !691), !dbg !2872
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2867, metadata !691), !dbg !2873
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2868, metadata !691), !dbg !2874
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2807, metadata !691) #10, !dbg !2875
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2808, metadata !691) #10, !dbg !2876
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2809, metadata !691) #10, !dbg !2877
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2810, metadata !691) #10, !dbg !2878
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2879
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2879
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2811, metadata !691) #10, !dbg !2880
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2779, metadata !691) #10, !dbg !2881
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2882
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2774, metadata !691) #10, !dbg !2869
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2774, metadata !2790) #10, !dbg !2869
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2869
  %8 = icmp eq i32 %0, 10, !dbg !2883
  br i1 %8, label %9, label %10, !dbg !2884

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2885, !noalias !2886
  unreachable, !dbg !2885

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2774, metadata !2790) #10, !dbg !2869
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2889
  store i32 %0, i32* %11, align 8, !dbg !2889, !alias.scope !2886
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2889
  %13 = bitcast i32* %12 to i8*, !dbg !2889
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2889
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2890
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2811, metadata !691) #10, !dbg !2880
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2891
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2892
  ret i8* %14, !dbg !2893
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2894 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2898, metadata !691), !dbg !2902
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2899, metadata !691), !dbg !2903
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2900, metadata !691), !dbg !2904
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2905
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2905
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2906, !tbaa.struct !2907
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2901, metadata !691), !dbg !2908
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1651, metadata !691), !dbg !2909
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1652, metadata !691), !dbg !2911
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1653, metadata !691), !dbg !2912
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1654, metadata !691), !dbg !2913
  %6 = lshr i8 %2, 5, !dbg !2914
  %7 = zext i8 %6 to i64, !dbg !2914
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2915
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1655, metadata !691), !dbg !2916
  %9 = and i8 %2, 31, !dbg !2917
  %10 = zext i8 %9 to i32, !dbg !2918
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1657, metadata !691), !dbg !2919
  %11 = load i32, i32* %8, align 4, !dbg !2920, !tbaa !793
  %12 = lshr i32 %11, %10, !dbg !2921
  %13 = and i32 %12, 1, !dbg !2922
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1658, metadata !691), !dbg !2923
  %14 = xor i32 %13, 1, !dbg !2924
  %15 = shl i32 %14, %10, !dbg !2925
  %16 = xor i32 %15, %11, !dbg !2926
  store i32 %16, i32* %8, align 4, !dbg !2926, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2901, metadata !691), !dbg !2908
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2927
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2928
  ret i8* %17, !dbg !2929
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2930 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2934, metadata !691), !dbg !2936
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2935, metadata !691), !dbg !2937
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2898, metadata !691) #10, !dbg !2938
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2899, metadata !691) #10, !dbg !2940
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2900, metadata !691) #10, !dbg !2941
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2942
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2942
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2943, !tbaa.struct !2907
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2901, metadata !691) #10, !dbg !2944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1651, metadata !691) #10, !dbg !2945
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1652, metadata !691) #10, !dbg !2947
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1653, metadata !691) #10, !dbg !2948
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1654, metadata !691) #10, !dbg !2949
  %5 = lshr i8 %1, 5, !dbg !2950
  %6 = zext i8 %5 to i64, !dbg !2950
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2951
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1655, metadata !691) #10, !dbg !2952
  %8 = and i8 %1, 31, !dbg !2953
  %9 = zext i8 %8 to i32, !dbg !2954
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1657, metadata !691) #10, !dbg !2955
  %10 = load i32, i32* %7, align 4, !dbg !2956, !tbaa !793
  %11 = lshr i32 %10, %9, !dbg !2957
  %12 = and i32 %11, 1, !dbg !2958
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1658, metadata !691) #10, !dbg !2959
  %13 = xor i32 %12, 1, !dbg !2960
  %14 = shl i32 %13, %9, !dbg !2961
  %15 = xor i32 %14, %10, !dbg !2962
  store i32 %15, i32* %7, align 4, !dbg !2962, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2901, metadata !691) #10, !dbg !2944
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2963
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2964
  ret i8* %16, !dbg !2965
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2966 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2968, metadata !691), !dbg !2969
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2934, metadata !691) #10, !dbg !2970
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2935, metadata !691) #10, !dbg !2972
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2898, metadata !691) #10, !dbg !2973
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2899, metadata !691) #10, !dbg !2975
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2900, metadata !691) #10, !dbg !2976
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2977
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2977
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2978, !tbaa.struct !2907
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2901, metadata !691) #10, !dbg !2979
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1651, metadata !691) #10, !dbg !2980
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1652, metadata !691) #10, !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1653, metadata !691) #10, !dbg !2983
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1654, metadata !691) #10, !dbg !2984
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2985
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1655, metadata !691) #10, !dbg !2986
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1657, metadata !691) #10, !dbg !2987
  %5 = load i32, i32* %4, align 4, !dbg !2988, !tbaa !793
  %6 = or i32 %5, 67108864, !dbg !2989
  store i32 %6, i32* %4, align 4, !dbg !2989, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2901, metadata !691) #10, !dbg !2979
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2990
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2991
  ret i8* %7, !dbg !2992
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2993 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2995, metadata !691), !dbg !2997
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2996, metadata !691), !dbg !2998
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2898, metadata !691) #10, !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2899, metadata !691) #10, !dbg !3001
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2900, metadata !691) #10, !dbg !3002
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3003
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3003
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3004, !tbaa.struct !2907
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2901, metadata !691) #10, !dbg !3005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1651, metadata !691) #10, !dbg !3006
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1652, metadata !691) #10, !dbg !3008
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1653, metadata !691) #10, !dbg !3009
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1654, metadata !691) #10, !dbg !3010
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3011
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1655, metadata !691) #10, !dbg !3012
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1657, metadata !691) #10, !dbg !3013
  %6 = load i32, i32* %5, align 4, !dbg !3014, !tbaa !793
  %7 = or i32 %6, 67108864, !dbg !3015
  store i32 %7, i32* %5, align 4, !dbg !3015, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2901, metadata !691) #10, !dbg !3005
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3016
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3017
  ret i8* %8, !dbg !3018
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3019 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2774, metadata !2780), !dbg !3025
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3021, metadata !691), !dbg !3027
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3022, metadata !691), !dbg !3028
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3023, metadata !691), !dbg !3029
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3030
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3030
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2779, metadata !691) #10, !dbg !3031
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3032
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3032
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2774, metadata !691) #10, !dbg !3025
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2774, metadata !2790) #10, !dbg !3025
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3025
  %9 = icmp eq i32 %1, 10, !dbg !3033
  br i1 %9, label %10, label %11, !dbg !3034

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3035, !noalias !3036
  unreachable, !dbg !3035

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2774, metadata !2790) #10, !dbg !3025
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3039
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3039
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3040
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3041
  store i32 %1, i32* %13, align 8, !dbg !3041
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3041
  %15 = bitcast i32* %14 to i8*, !dbg !3041
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3041
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3024, metadata !691), !dbg !3042
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1651, metadata !691), !dbg !3043
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1652, metadata !691), !dbg !3045
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1653, metadata !691), !dbg !3046
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1654, metadata !691), !dbg !3047
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3048
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1655, metadata !691), !dbg !3049
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1657, metadata !691), !dbg !3050
  %17 = load i32, i32* %16, align 4, !dbg !3051, !tbaa !793
  %18 = or i32 %17, 67108864, !dbg !3052
  store i32 %18, i32* %16, align 4, !dbg !3052, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3024, metadata !691), !dbg !3042
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3053
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3054
  ret i8* %19, !dbg !3055
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3056 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3060, metadata !691), !dbg !3064
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3061, metadata !691), !dbg !3065
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3062, metadata !691), !dbg !3066
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3063, metadata !691), !dbg !3067
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3068, metadata !691) #10, !dbg !3078
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3073, metadata !691) #10, !dbg !3080
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3074, metadata !691) #10, !dbg !3081
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3075, metadata !691) #10, !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3076, metadata !691) #10, !dbg !3083
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3084
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3084
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3085, !tbaa.struct !2907
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3077, metadata !691) #10, !dbg !3086
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1700, metadata !691) #10, !dbg !3087
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1701, metadata !691) #10, !dbg !3089
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1702, metadata !691) #10, !dbg !3090
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1700, metadata !691) #10, !dbg !3087
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1700, metadata !691) #10, !dbg !3087
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3091
  store i32 10, i32* %7, align 8, !dbg !3092, !tbaa !1632
  %8 = icmp ne i8* %1, null, !dbg !3093
  %9 = icmp ne i8* %2, null, !dbg !3094
  %10 = and i1 %8, %9, !dbg !3095
  br i1 %10, label %12, label %11, !dbg !3095

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3096
  unreachable, !dbg !3096

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3097
  store i8* %1, i8** %13, align 8, !dbg !3098, !tbaa !1718
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3099
  store i8* %2, i8** %14, align 8, !dbg !3100, !tbaa !1721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3077, metadata !691) #10, !dbg !3086
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3101
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3102
  ret i8* %15, !dbg !3103
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3069 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3068, metadata !691), !dbg !3104
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3073, metadata !691), !dbg !3105
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3074, metadata !691), !dbg !3106
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3075, metadata !691), !dbg !3107
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3076, metadata !691), !dbg !3108
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3109
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3110, !tbaa.struct !2907
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3077, metadata !691), !dbg !3111
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1700, metadata !691) #10, !dbg !3112
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1701, metadata !691) #10, !dbg !3114
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1702, metadata !691) #10, !dbg !3115
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1700, metadata !691) #10, !dbg !3112
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1700, metadata !691) #10, !dbg !3112
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3116
  store i32 10, i32* %8, align 8, !dbg !3117, !tbaa !1632
  %9 = icmp ne i8* %1, null, !dbg !3118
  %10 = icmp ne i8* %2, null, !dbg !3119
  %11 = and i1 %9, %10, !dbg !3120
  br i1 %11, label %13, label %12, !dbg !3120

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3121
  unreachable, !dbg !3121

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3122
  store i8* %1, i8** %14, align 8, !dbg !3123, !tbaa !1718
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3124
  store i8* %2, i8** %15, align 8, !dbg !3125, !tbaa !1721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3077, metadata !691), !dbg !3111
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3126
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3127
  ret i8* %16, !dbg !3128
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3129 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3133, metadata !691), !dbg !3136
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3134, metadata !691), !dbg !3137
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3135, metadata !691), !dbg !3138
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3060, metadata !691) #10, !dbg !3139
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3061, metadata !691) #10, !dbg !3141
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3062, metadata !691) #10, !dbg !3142
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3063, metadata !691) #10, !dbg !3143
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3068, metadata !691) #10, !dbg !3144
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3073, metadata !691) #10, !dbg !3146
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3074, metadata !691) #10, !dbg !3147
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3075, metadata !691) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3076, metadata !691) #10, !dbg !3149
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3150
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3150
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3151, !tbaa.struct !2907
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3077, metadata !691) #10, !dbg !3152
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1700, metadata !691) #10, !dbg !3153
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1701, metadata !691) #10, !dbg !3155
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1702, metadata !691) #10, !dbg !3156
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1700, metadata !691) #10, !dbg !3153
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1700, metadata !691) #10, !dbg !3153
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3157
  store i32 10, i32* %6, align 8, !dbg !3158, !tbaa !1632
  %7 = icmp ne i8* %0, null, !dbg !3159
  %8 = icmp ne i8* %1, null, !dbg !3160
  %9 = and i1 %7, %8, !dbg !3161
  br i1 %9, label %11, label %10, !dbg !3161

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3162
  unreachable, !dbg !3162

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3163
  store i8* %0, i8** %12, align 8, !dbg !3164, !tbaa !1718
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3165
  store i8* %1, i8** %13, align 8, !dbg !3166, !tbaa !1721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3077, metadata !691) #10, !dbg !3152
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3167
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3168
  ret i8* %14, !dbg !3169
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3170 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3174, metadata !691), !dbg !3178
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3175, metadata !691), !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3176, metadata !691), !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3177, metadata !691), !dbg !3181
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3068, metadata !691) #10, !dbg !3182
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3073, metadata !691) #10, !dbg !3184
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3074, metadata !691) #10, !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3075, metadata !691) #10, !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3076, metadata !691) #10, !dbg !3187
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3188
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3189, !tbaa.struct !2907
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3077, metadata !691) #10, !dbg !3190
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1700, metadata !691) #10, !dbg !3191
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1701, metadata !691) #10, !dbg !3193
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1702, metadata !691) #10, !dbg !3194
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1700, metadata !691) #10, !dbg !3191
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1700, metadata !691) #10, !dbg !3191
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3195
  store i32 10, i32* %7, align 8, !dbg !3196, !tbaa !1632
  %8 = icmp ne i8* %0, null, !dbg !3197
  %9 = icmp ne i8* %1, null, !dbg !3198
  %10 = and i1 %8, %9, !dbg !3199
  br i1 %10, label %12, label %11, !dbg !3199

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3200
  unreachable, !dbg !3200

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3201
  store i8* %0, i8** %13, align 8, !dbg !3202, !tbaa !1718
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3203
  store i8* %1, i8** %14, align 8, !dbg !3204, !tbaa !1721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3077, metadata !691) #10, !dbg !3190
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3205
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3206
  ret i8* %15, !dbg !3207
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3208 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3212, metadata !691), !dbg !3215
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3213, metadata !691), !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3214, metadata !691), !dbg !3217
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3218
  ret i8* %4, !dbg !3219
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3220 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3224, metadata !691), !dbg !3226
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3225, metadata !691), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3212, metadata !691) #10, !dbg !3228
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3213, metadata !691) #10, !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3214, metadata !691) #10, !dbg !3231
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3232
  ret i8* %3, !dbg !3233
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3234 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3238, metadata !691), !dbg !3240
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3239, metadata !691), !dbg !3241
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3212, metadata !691) #10, !dbg !3242
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3213, metadata !691) #10, !dbg !3244
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3214, metadata !691) #10, !dbg !3245
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3246
  ret i8* %3, !dbg !3247
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3248 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3252, metadata !691), !dbg !3253
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3238, metadata !691) #10, !dbg !3254
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3239, metadata !691) #10, !dbg !3256
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3212, metadata !691) #10, !dbg !3257
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3213, metadata !691) #10, !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3214, metadata !691) #10, !dbg !3260
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3261
  ret i8* %2, !dbg !3262
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3263 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3308, metadata !691), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3309, metadata !691), !dbg !3315
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3310, metadata !691), !dbg !3316
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3311, metadata !691), !dbg !3317
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3312, metadata !691), !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3313, metadata !691), !dbg !3319
  %7 = icmp eq i8* %1, null, !dbg !3320
  br i1 %7, label %10, label %8, !dbg !3322

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3323
  br label %12, !dbg !3323

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3324
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #10, !dbg !3325
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3325
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.79, i64 0, i64 0), i32 5) #10, !dbg !3326
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3326
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
  ], !dbg !3327

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3328
  unreachable, !dbg !3328

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #10, !dbg !3330
  %20 = load i8*, i8** %4, align 8, !dbg !3330, !tbaa !698
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3330
  br label %146, !dbg !3331

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.81, i64 0, i64 0), i32 5) #10, !dbg !3332
  %24 = load i8*, i8** %4, align 8, !dbg !3332, !tbaa !698
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3332
  %26 = load i8*, i8** %25, align 8, !dbg !3332, !tbaa !698
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3332
  br label %146, !dbg !3333

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #10, !dbg !3334
  %30 = load i8*, i8** %4, align 8, !dbg !3334, !tbaa !698
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3334
  %32 = load i8*, i8** %31, align 8, !dbg !3334, !tbaa !698
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3334
  %34 = load i8*, i8** %33, align 8, !dbg !3334, !tbaa !698
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3334
  br label %146, !dbg !3335

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #10, !dbg !3336
  %38 = load i8*, i8** %4, align 8, !dbg !3336, !tbaa !698
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3336
  %40 = load i8*, i8** %39, align 8, !dbg !3336, !tbaa !698
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3336
  %42 = load i8*, i8** %41, align 8, !dbg !3336, !tbaa !698
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3336
  %44 = load i8*, i8** %43, align 8, !dbg !3336, !tbaa !698
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3336
  br label %146, !dbg !3337

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #10, !dbg !3338
  %48 = load i8*, i8** %4, align 8, !dbg !3338, !tbaa !698
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3338
  %50 = load i8*, i8** %49, align 8, !dbg !3338, !tbaa !698
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3338
  %52 = load i8*, i8** %51, align 8, !dbg !3338, !tbaa !698
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3338
  %54 = load i8*, i8** %53, align 8, !dbg !3338, !tbaa !698
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3338
  %56 = load i8*, i8** %55, align 8, !dbg !3338, !tbaa !698
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3338
  br label %146, !dbg !3339

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #10, !dbg !3340
  %60 = load i8*, i8** %4, align 8, !dbg !3340, !tbaa !698
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3340
  %62 = load i8*, i8** %61, align 8, !dbg !3340, !tbaa !698
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3340
  %64 = load i8*, i8** %63, align 8, !dbg !3340, !tbaa !698
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3340
  %66 = load i8*, i8** %65, align 8, !dbg !3340, !tbaa !698
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3340
  %68 = load i8*, i8** %67, align 8, !dbg !3340, !tbaa !698
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3340
  %70 = load i8*, i8** %69, align 8, !dbg !3340, !tbaa !698
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3340
  br label %146, !dbg !3341

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #10, !dbg !3342
  %74 = load i8*, i8** %4, align 8, !dbg !3342, !tbaa !698
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3342
  %76 = load i8*, i8** %75, align 8, !dbg !3342, !tbaa !698
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3342
  %78 = load i8*, i8** %77, align 8, !dbg !3342, !tbaa !698
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3342
  %80 = load i8*, i8** %79, align 8, !dbg !3342, !tbaa !698
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3342
  %82 = load i8*, i8** %81, align 8, !dbg !3342, !tbaa !698
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3342
  %84 = load i8*, i8** %83, align 8, !dbg !3342, !tbaa !698
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3342
  %86 = load i8*, i8** %85, align 8, !dbg !3342, !tbaa !698
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3342
  br label %146, !dbg !3343

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #10, !dbg !3344
  %90 = load i8*, i8** %4, align 8, !dbg !3344, !tbaa !698
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3344
  %92 = load i8*, i8** %91, align 8, !dbg !3344, !tbaa !698
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3344
  %94 = load i8*, i8** %93, align 8, !dbg !3344, !tbaa !698
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3344
  %96 = load i8*, i8** %95, align 8, !dbg !3344, !tbaa !698
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3344
  %98 = load i8*, i8** %97, align 8, !dbg !3344, !tbaa !698
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3344
  %100 = load i8*, i8** %99, align 8, !dbg !3344, !tbaa !698
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3344
  %102 = load i8*, i8** %101, align 8, !dbg !3344, !tbaa !698
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3344
  %104 = load i8*, i8** %103, align 8, !dbg !3344, !tbaa !698
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3344
  br label %146, !dbg !3345

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #10, !dbg !3346
  %108 = load i8*, i8** %4, align 8, !dbg !3346, !tbaa !698
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3346
  %110 = load i8*, i8** %109, align 8, !dbg !3346, !tbaa !698
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3346
  %112 = load i8*, i8** %111, align 8, !dbg !3346, !tbaa !698
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3346
  %114 = load i8*, i8** %113, align 8, !dbg !3346, !tbaa !698
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3346
  %116 = load i8*, i8** %115, align 8, !dbg !3346, !tbaa !698
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3346
  %118 = load i8*, i8** %117, align 8, !dbg !3346, !tbaa !698
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3346
  %120 = load i8*, i8** %119, align 8, !dbg !3346, !tbaa !698
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3346
  %122 = load i8*, i8** %121, align 8, !dbg !3346, !tbaa !698
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3346
  %124 = load i8*, i8** %123, align 8, !dbg !3346, !tbaa !698
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3346
  br label %146, !dbg !3347

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #10, !dbg !3348
  %128 = load i8*, i8** %4, align 8, !dbg !3348, !tbaa !698
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3348
  %130 = load i8*, i8** %129, align 8, !dbg !3348, !tbaa !698
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3348
  %132 = load i8*, i8** %131, align 8, !dbg !3348, !tbaa !698
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3348
  %134 = load i8*, i8** %133, align 8, !dbg !3348, !tbaa !698
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3348
  %136 = load i8*, i8** %135, align 8, !dbg !3348, !tbaa !698
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3348
  %138 = load i8*, i8** %137, align 8, !dbg !3348, !tbaa !698
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3348
  %140 = load i8*, i8** %139, align 8, !dbg !3348, !tbaa !698
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3348
  %142 = load i8*, i8** %141, align 8, !dbg !3348, !tbaa !698
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3348
  %144 = load i8*, i8** %143, align 8, !dbg !3348, !tbaa !698
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3348
  br label %146, !dbg !3349

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3350
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3351 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3355, metadata !691), !dbg !3361
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3356, metadata !691), !dbg !3362
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3357, metadata !691), !dbg !3363
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3358, metadata !691), !dbg !3364
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3359, metadata !691), !dbg !3365
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3360, metadata !691), !dbg !3366
  br label %6, !dbg !3367

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3360, metadata !691), !dbg !3366
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3369
  %9 = load i8*, i8** %8, align 8, !dbg !3369, !tbaa !698
  %10 = icmp eq i8* %9, null, !dbg !3371
  %11 = add i64 %7, 1, !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3360, metadata !691), !dbg !3366
  br i1 %10, label %12, label %6, !dbg !3371, !llvm.loop !3373

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3375
  ret void, !dbg !3376
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3377 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3388, metadata !691), !dbg !3396
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3389, metadata !691), !dbg !3397
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3390, metadata !691), !dbg !3398
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3391, metadata !691), !dbg !3399
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3392, metadata !691), !dbg !3400
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3401
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3401
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3394, metadata !691), !dbg !3402
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3393, metadata !691), !dbg !3403
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3393, metadata !691), !dbg !3403
  %11 = load i32, i32* %8, align 8, !dbg !3404
  %12 = icmp ult i32 %11, 41, !dbg !3404
  br i1 %12, label %13, label %18, !dbg !3404

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3404
  %15 = sext i32 %11 to i64, !dbg !3404
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3404
  %17 = add i32 %11, 8, !dbg !3404
  store i32 %17, i32* %8, align 8, !dbg !3404
  br label %21, !dbg !3404

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3404
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3404
  store i8* %20, i8** %10, align 8, !dbg !3404
  br label %21, !dbg !3404

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3404
  %25 = load i8*, i8** %24, align 8, !dbg !3404
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3407
  store i8* %25, i8** %26, align 16, !dbg !3408, !tbaa !698
  %27 = icmp eq i8* %25, null, !dbg !3409
  br i1 %27, label %30, label %28, !dbg !3410

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3393, metadata !691), !dbg !3403
  %29 = icmp ult i32 %22, 41, !dbg !3404
  br i1 %29, label %35, label %32, !dbg !3404

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3411
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3412
  ret void, !dbg !3412

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3404
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3404
  store i8* %34, i8** %10, align 8, !dbg !3404
  br label %40, !dbg !3404

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3404
  %37 = sext i32 %22 to i64, !dbg !3404
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3404
  %39 = add i32 %22, 8, !dbg !3404
  store i32 %39, i32* %8, align 8, !dbg !3404
  br label %40, !dbg !3404

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3404
  %44 = load i8*, i8** %43, align 8, !dbg !3404
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3407
  store i8* %44, i8** %45, align 8, !dbg !3408, !tbaa !698
  %46 = icmp eq i8* %44, null, !dbg !3409
  br i1 %46, label %30, label %47, !dbg !3410

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3393, metadata !691), !dbg !3403
  %48 = icmp ult i32 %41, 41, !dbg !3404
  br i1 %48, label %52, label %49, !dbg !3404

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3404
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3404
  store i8* %51, i8** %10, align 8, !dbg !3404
  br label %57, !dbg !3404

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3404
  %54 = sext i32 %41 to i64, !dbg !3404
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3404
  %56 = add i32 %41, 8, !dbg !3404
  store i32 %56, i32* %8, align 8, !dbg !3404
  br label %57, !dbg !3404

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3404
  %61 = load i8*, i8** %60, align 8, !dbg !3404
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3407
  store i8* %61, i8** %62, align 16, !dbg !3408, !tbaa !698
  %63 = icmp eq i8* %61, null, !dbg !3409
  br i1 %63, label %30, label %64, !dbg !3410

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3393, metadata !691), !dbg !3403
  %65 = icmp ult i32 %58, 41, !dbg !3404
  br i1 %65, label %69, label %66, !dbg !3404

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3404
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3404
  store i8* %68, i8** %10, align 8, !dbg !3404
  br label %74, !dbg !3404

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3404
  %71 = sext i32 %58 to i64, !dbg !3404
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3404
  %73 = add i32 %58, 8, !dbg !3404
  store i32 %73, i32* %8, align 8, !dbg !3404
  br label %74, !dbg !3404

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3404
  %78 = load i8*, i8** %77, align 8, !dbg !3404
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3407
  store i8* %78, i8** %79, align 8, !dbg !3408, !tbaa !698
  %80 = icmp eq i8* %78, null, !dbg !3409
  br i1 %80, label %30, label %81, !dbg !3410

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3393, metadata !691), !dbg !3403
  %82 = icmp ult i32 %75, 41, !dbg !3404
  br i1 %82, label %86, label %83, !dbg !3404

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3404
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3404
  store i8* %85, i8** %10, align 8, !dbg !3404
  br label %91, !dbg !3404

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3404
  %88 = sext i32 %75 to i64, !dbg !3404
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3404
  %90 = add i32 %75, 8, !dbg !3404
  store i32 %90, i32* %8, align 8, !dbg !3404
  br label %91, !dbg !3404

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3404
  %95 = load i8*, i8** %94, align 8, !dbg !3404
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3407
  store i8* %95, i8** %96, align 16, !dbg !3408, !tbaa !698
  %97 = icmp eq i8* %95, null, !dbg !3409
  br i1 %97, label %30, label %98, !dbg !3410

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3393, metadata !691), !dbg !3403
  %99 = icmp ult i32 %92, 41, !dbg !3404
  br i1 %99, label %103, label %100, !dbg !3404

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3404
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3404
  store i8* %102, i8** %10, align 8, !dbg !3404
  br label %108, !dbg !3404

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3404
  %105 = sext i32 %92 to i64, !dbg !3404
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3404
  %107 = add i32 %92, 8, !dbg !3404
  store i32 %107, i32* %8, align 8, !dbg !3404
  br label %108, !dbg !3404

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3404
  %111 = load i8*, i8** %110, align 8, !dbg !3404
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3407
  store i8* %111, i8** %112, align 8, !dbg !3408, !tbaa !698
  %113 = icmp eq i8* %111, null, !dbg !3409
  br i1 %113, label %30, label %114, !dbg !3410

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3393, metadata !691), !dbg !3403
  %115 = load i8*, i8** %10, align 8, !dbg !3404
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3404
  store i8* %116, i8** %10, align 8, !dbg !3404
  %117 = bitcast i8* %115 to i8**, !dbg !3404
  %118 = load i8*, i8** %117, align 8, !dbg !3404
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3407
  store i8* %118, i8** %119, align 16, !dbg !3408, !tbaa !698
  %120 = icmp eq i8* %118, null, !dbg !3409
  br i1 %120, label %30, label %121, !dbg !3410

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3393, metadata !691), !dbg !3403
  %122 = load i8*, i8** %10, align 8, !dbg !3404
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3404
  store i8* %123, i8** %10, align 8, !dbg !3404
  %124 = bitcast i8* %122 to i8**, !dbg !3404
  %125 = load i8*, i8** %124, align 8, !dbg !3404
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3407
  store i8* %125, i8** %126, align 8, !dbg !3408, !tbaa !698
  %127 = icmp eq i8* %125, null, !dbg !3409
  br i1 %127, label %30, label %128, !dbg !3410

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3393, metadata !691), !dbg !3403
  %129 = load i8*, i8** %10, align 8, !dbg !3404
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3404
  store i8* %130, i8** %10, align 8, !dbg !3404
  %131 = bitcast i8* %129 to i8**, !dbg !3404
  %132 = load i8*, i8** %131, align 8, !dbg !3404
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3407
  store i8* %132, i8** %133, align 16, !dbg !3408, !tbaa !698
  %134 = icmp eq i8* %132, null, !dbg !3409
  br i1 %134, label %30, label %135, !dbg !3410

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3393, metadata !691), !dbg !3403
  %136 = load i8*, i8** %10, align 8, !dbg !3404
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3404
  store i8* %137, i8** %10, align 8, !dbg !3404
  %138 = bitcast i8* %136 to i8**, !dbg !3404
  %139 = load i8*, i8** %138, align 8, !dbg !3404
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3407
  store i8* %139, i8** %140, align 8, !dbg !3408, !tbaa !698
  %141 = icmp eq i8* %139, null, !dbg !3409
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3393, metadata !691), !dbg !3403
  %142 = select i1 %141, i64 9, i64 10, !dbg !3410
  br label %30, !dbg !3410
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3413 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3417, metadata !691), !dbg !3427
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3418, metadata !691), !dbg !3428
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3419, metadata !691), !dbg !3429
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3420, metadata !691), !dbg !3430
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3431
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3431
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3421, metadata !691), !dbg !3432
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3433
  call void @llvm.va_start(i8* nonnull %6), !dbg !3433
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3434
  call void @llvm.va_end(i8* nonnull %6), !dbg !3435
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3436
  ret void, !dbg !3436
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3437 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #10, !dbg !3438
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.93, i64 0, i64 0)) #10, !dbg !3438
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3439
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.94, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.95, i64 0, i64 0)) #10, !dbg !3439
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3440
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3440, !tbaa !698
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3440
  ret void, !dbg !3441
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3442 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3446, metadata !691), !dbg !3448
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3447, metadata !691), !dbg !3449
  %3 = udiv i64 9223372036854775807, %1, !dbg !3450
  %4 = icmp ult i64 %3, %0, !dbg !3450
  br i1 %4, label %5, label %6, !dbg !3452

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3453
  unreachable, !dbg !3453

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3454
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3455, metadata !691) #10, !dbg !3462
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3464
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3461, metadata !691) #10, !dbg !3465
  %9 = icmp eq i8* %8, null, !dbg !3466
  %10 = icmp ne i64 %7, 0, !dbg !3468
  %11 = and i1 %10, %9, !dbg !3469
  br i1 %11, label %12, label %13, !dbg !3469

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3470
  unreachable, !dbg !3470

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3471
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3456 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3455, metadata !691), !dbg !3472
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3461, metadata !691), !dbg !3474
  %3 = icmp eq i8* %2, null, !dbg !3475
  %4 = icmp ne i64 %0, 0, !dbg !3476
  %5 = and i1 %4, %3, !dbg !3477
  br i1 %5, label %6, label %7, !dbg !3477

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3478
  unreachable, !dbg !3478

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3479
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3480 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3484, metadata !691), !dbg !3487
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3485, metadata !691), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3486, metadata !691), !dbg !3489
  %4 = udiv i64 9223372036854775807, %2, !dbg !3490
  %5 = icmp ult i64 %4, %1, !dbg !3490
  br i1 %5, label %6, label %7, !dbg !3492

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3493
  unreachable, !dbg !3493

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3494
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3495, metadata !691) #10, !dbg !3501
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3500, metadata !691) #10, !dbg !3503
  %9 = icmp eq i64 %8, 0, !dbg !3504
  %10 = icmp ne i8* %0, null, !dbg !3506
  %11 = and i1 %10, %9, !dbg !3507
  br i1 %11, label %12, label %13, !dbg !3507

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3508
  br label %19, !dbg !3510

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3511
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3495, metadata !691) #10, !dbg !3501
  %15 = icmp eq i8* %14, null, !dbg !3512
  %16 = icmp ne i64 %8, 0, !dbg !3514
  %17 = and i1 %16, %15, !dbg !3515
  br i1 %17, label %18, label %19, !dbg !3515

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3516
  unreachable, !dbg !3516

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3517
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3496 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3495, metadata !691), !dbg !3518
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3500, metadata !691), !dbg !3519
  %3 = icmp eq i64 %1, 0, !dbg !3520
  %4 = icmp ne i8* %0, null, !dbg !3521
  %5 = and i1 %4, %3, !dbg !3522
  br i1 %5, label %6, label %7, !dbg !3522

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3523
  br label %13, !dbg !3524

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3525
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3495, metadata !691), !dbg !3518
  %9 = icmp eq i8* %8, null, !dbg !3526
  %10 = icmp ne i64 %1, 0, !dbg !3527
  %11 = and i1 %10, %9, !dbg !3528
  br i1 %11, label %12, label %13, !dbg !3528

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3529
  unreachable, !dbg !3529

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3530
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !654 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !656, metadata !691), !dbg !3531
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !657, metadata !691), !dbg !3532
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !658, metadata !691), !dbg !3533
  %4 = load i64, i64* %1, align 8, !dbg !3534, !tbaa !866
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !659, metadata !691), !dbg !3535
  %5 = icmp eq i8* %0, null, !dbg !3536
  br i1 %5, label %6, label %13, !dbg !3538

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3539
  br i1 %7, label %8, label %17, !dbg !3542

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !659, metadata !691), !dbg !3535
  %10 = icmp ugt i64 %2, 128, !dbg !3545
  %11 = zext i1 %10 to i64, !dbg !3545
  %12 = add nuw nsw i64 %9, %11, !dbg !3546
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !659, metadata !691), !dbg !3535
  br label %17, !dbg !3547

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3548
  %15 = icmp ugt i64 %14, %4, !dbg !3551
  br i1 %15, label %20, label %16, !dbg !3552

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3553
  unreachable, !dbg !3553

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !659, metadata !691), !dbg !3535
  store i64 %18, i64* %1, align 8, !dbg !3554, !tbaa !866
  %19 = mul i64 %18, %2, !dbg !3555
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3495, metadata !691) #10, !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3500, metadata !691) #10, !dbg !3558
  br label %27, !dbg !3559

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3560
  %22 = add i64 %4, 1, !dbg !3561
  %23 = add i64 %22, %21, !dbg !3562
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !659, metadata !691), !dbg !3535
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !659, metadata !691), !dbg !3535
  store i64 %23, i64* %1, align 8, !dbg !3554, !tbaa !866
  %24 = mul i64 %23, %2, !dbg !3555
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3495, metadata !691) #10, !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3500, metadata !691) #10, !dbg !3558
  %25 = icmp eq i64 %24, 0, !dbg !3563
  br i1 %25, label %26, label %27, !dbg !3559

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3564
  br label %34, !dbg !3565

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3566
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3495, metadata !691) #10, !dbg !3556
  %30 = icmp eq i8* %29, null, !dbg !3567
  %31 = icmp ne i64 %28, 0, !dbg !3568
  %32 = and i1 %31, %30, !dbg !3569
  br i1 %32, label %33, label %34, !dbg !3569

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3570
  unreachable, !dbg !3570

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3571
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3572 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3574, metadata !691), !dbg !3575
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3455, metadata !691) #10, !dbg !3576
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3578
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3461, metadata !691) #10, !dbg !3579
  %3 = icmp eq i8* %2, null, !dbg !3580
  %4 = icmp ne i64 %0, 0, !dbg !3581
  %5 = and i1 %4, %3, !dbg !3582
  br i1 %5, label %6, label %7, !dbg !3582

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3583
  unreachable, !dbg !3583

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3584
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3585 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3589, metadata !691), !dbg !3591
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3590, metadata !691), !dbg !3592
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !656, metadata !691) #10, !dbg !3593
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !657, metadata !691) #10, !dbg !3595
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !658, metadata !691) #10, !dbg !3596
  %3 = load i64, i64* %1, align 8, !dbg !3597, !tbaa !866
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !659, metadata !691) #10, !dbg !3598
  %4 = icmp eq i8* %0, null, !dbg !3599
  br i1 %4, label %5, label %8, !dbg !3600

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3601
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !659, metadata !691) #10, !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !659, metadata !691) #10, !dbg !3598
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !659, metadata !691) #10, !dbg !3598
  store i64 %7, i64* %1, align 8, !dbg !3603, !tbaa !866
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3495, metadata !691) #10, !dbg !3604
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3500, metadata !691) #10, !dbg !3606
  br label %17, !dbg !3607

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3608
  br i1 %9, label %11, label %10, !dbg !3609

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3610
  unreachable, !dbg !3610

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3611
  %13 = add i64 %3, 1, !dbg !3612
  %14 = add i64 %13, %12, !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !659, metadata !691) #10, !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !659, metadata !691) #10, !dbg !3598
  store i64 %14, i64* %1, align 8, !dbg !3603, !tbaa !866
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3495, metadata !691) #10, !dbg !3604
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3500, metadata !691) #10, !dbg !3606
  %15 = icmp eq i64 %14, 0, !dbg !3614
  br i1 %15, label %16, label %17, !dbg !3607

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3615
  br label %24, !dbg !3616

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3617
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3495, metadata !691) #10, !dbg !3604
  %20 = icmp eq i8* %19, null, !dbg !3618
  %21 = icmp ne i64 %18, 0, !dbg !3619
  %22 = and i1 %21, %20, !dbg !3620
  br i1 %22, label %23, label %24, !dbg !3620

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3621
  unreachable, !dbg !3621

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3622
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3623 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3625, metadata !691), !dbg !3626
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3455, metadata !691) #10, !dbg !3627
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3629
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3461, metadata !691) #10, !dbg !3630
  %3 = icmp eq i8* %2, null, !dbg !3631
  %4 = icmp ne i64 %0, 0, !dbg !3632
  %5 = and i1 %4, %3, !dbg !3633
  br i1 %5, label %6, label %7, !dbg !3633

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3634
  unreachable, !dbg !3634

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3635
  ret i8* %2, !dbg !3636
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3637 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3639, metadata !691), !dbg !3642
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3640, metadata !691), !dbg !3643
  %3 = udiv i64 9223372036854775807, %1, !dbg !3644
  %4 = icmp ult i64 %3, %0, !dbg !3644
  br i1 %4, label %8, label %5, !dbg !3646

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3647
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3641, metadata !691), !dbg !3648
  %7 = icmp eq i8* %6, null, !dbg !3649
  br i1 %7, label %8, label %9, !dbg !3650

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3651
  unreachable, !dbg !3651

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3652
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3653 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3659, metadata !691), !dbg !3661
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3660, metadata !691), !dbg !3662
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3455, metadata !691) #10, !dbg !3663
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3665
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3461, metadata !691) #10, !dbg !3666
  %4 = icmp eq i8* %3, null, !dbg !3667
  %5 = icmp ne i64 %1, 0, !dbg !3668
  %6 = and i1 %5, %4, !dbg !3669
  br i1 %6, label %7, label %8, !dbg !3669

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3670
  unreachable, !dbg !3670

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3671
  ret i8* %3, !dbg !3672
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3673 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3675, metadata !691), !dbg !3676
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3677
  %3 = add i64 %2, 1, !dbg !3678
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3659, metadata !691) #10, !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3660, metadata !691) #10, !dbg !3681
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3455, metadata !691) #10, !dbg !3682
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3461, metadata !691) #10, !dbg !3685
  %5 = icmp eq i8* %4, null, !dbg !3686
  %6 = icmp ne i64 %3, 0, !dbg !3687
  %7 = and i1 %6, %5, !dbg !3688
  br i1 %7, label %8, label %9, !dbg !3688

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3689
  unreachable, !dbg !3689

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3690
  ret i8* %4, !dbg !3691
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3692 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3694, !tbaa !793
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.106, i64 0, i64 0), i32 5) #10, !dbg !3695
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* %2) #10, !dbg !3696
  tail call void @abort() #15, !dbg !3697
  unreachable, !dbg !3697
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3698 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3701, metadata !691), !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3702, metadata !691), !dbg !3705
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #10, !dbg !3706
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3703, metadata !691), !dbg !3707
  %4 = icmp eq i8* %3, null, !dbg !3708
  br i1 %4, label %5, label %6, !dbg !3710

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3711
  unreachable, !dbg !3711

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !3712
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3713 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3716, metadata !691), !dbg !3722
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3717, metadata !691), !dbg !3723
  %3 = icmp eq i64 %0, 0, !dbg !3724
  %4 = icmp eq i64 %1, 0, !dbg !3725
  %5 = or i1 %3, %4, !dbg !3726
  br i1 %5, label %12, label %6, !dbg !3726

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3719, metadata !691), !dbg !3728
  %8 = udiv i64 %7, %1, !dbg !3729
  %9 = icmp eq i64 %8, %0, !dbg !3731
  br i1 %9, label %12, label %10, !dbg !3732

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3733
  store i32 12, i32* %11, align 4, !dbg !3735, !tbaa !793
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3716, metadata !691), !dbg !3722
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3717, metadata !691), !dbg !3723
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3736
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3718, metadata !691), !dbg !3737
  br label %16, !dbg !3738

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3739
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3740 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3785, metadata !691), !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3786, metadata !691), !dbg !3790
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3788, metadata !691), !dbg !3791
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3792
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3787, metadata !691), !dbg !3793
  %3 = icmp slt i32 %2, 0, !dbg !3794
  br i1 %3, label %4, label %6, !dbg !3796

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3797
  br label %24, !dbg !3798

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3799
  %8 = icmp eq i32 %7, 0, !dbg !3799
  br i1 %8, label %13, label %9, !dbg !3801

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3802
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3803
  %12 = icmp eq i64 %11, -1, !dbg !3804
  br i1 %12, label %16, label %13, !dbg !3805

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3806
  %15 = icmp eq i32 %14, 0, !dbg !3806
  br i1 %15, label %16, label %18, !dbg !3807

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3786, metadata !691), !dbg !3790
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3808
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3788, metadata !691), !dbg !3791
  br label %24, !dbg !3809

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3810
  %20 = load i32, i32* %19, align 4, !dbg !3810, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3786, metadata !691), !dbg !3790
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3786, metadata !691), !dbg !3790
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3808
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3788, metadata !691), !dbg !3791
  %22 = icmp eq i32 %20, 0, !dbg !3811
  br i1 %22, label %24, label %23, !dbg !3809

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3813, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3788, metadata !691), !dbg !3791
  br label %24, !dbg !3815

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3816
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3817 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3862, metadata !691), !dbg !3863
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3864
  br i1 %2, label %6, label %3, !dbg !3866

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3867
  %5 = icmp eq i32 %4, 0, !dbg !3867
  br i1 %5, label %6, label %8, !dbg !3868

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3869
  br label %17, !dbg !3870

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3871, metadata !691) #10, !dbg !3876
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3878
  %10 = load i32, i32* %9, align 8, !dbg !3878, !tbaa !1381
  %11 = and i32 %10, 256, !dbg !3880
  %12 = icmp eq i32 %11, 0, !dbg !3880
  br i1 %12, label %15, label %13, !dbg !3881

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3882
  br label %15, !dbg !3882

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3883
  br label %17, !dbg !3884

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3885
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3886 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3931, metadata !691), !dbg !3937
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3932, metadata !691), !dbg !3938
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3933, metadata !691), !dbg !3939
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3940
  %5 = load i8*, i8** %4, align 8, !dbg !3940, !tbaa !895
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3941
  %7 = load i8*, i8** %6, align 8, !dbg !3941, !tbaa !892
  %8 = icmp eq i8* %5, %7, !dbg !3942
  br i1 %8, label %9, label %28, !dbg !3943

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3944
  %11 = load i8*, i8** %10, align 8, !dbg !3944, !tbaa !999
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3945
  %13 = load i8*, i8** %12, align 8, !dbg !3945, !tbaa !3946
  %14 = icmp eq i8* %11, %13, !dbg !3947
  br i1 %14, label %15, label %28, !dbg !3948

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3949
  %17 = load i8*, i8** %16, align 8, !dbg !3949, !tbaa !3950
  %18 = icmp eq i8* %17, null, !dbg !3951
  br i1 %18, label %19, label %28, !dbg !3952

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3953
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3954
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3934, metadata !691), !dbg !3955
  %22 = icmp eq i64 %21, -1, !dbg !3956
  br i1 %22, label %30, label %23, !dbg !3958

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3959
  %25 = load i32, i32* %24, align 8, !dbg !3960, !tbaa !1381
  %26 = and i32 %25, -17, !dbg !3960
  store i32 %26, i32* %24, align 8, !dbg !3960, !tbaa !1381
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3961
  store i64 %21, i64* %27, align 8, !dbg !3962, !tbaa !3963
  br label %30, !dbg !3964

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3965
  br label %30, !dbg !3966

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3967
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3968 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3985, metadata !691), !dbg !3994
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3986, metadata !691), !dbg !3995
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3987, metadata !691), !dbg !3996
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3988, metadata !691), !dbg !3997
  %6 = bitcast i32* %5 to i8*, !dbg !3998
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3998
  %7 = icmp eq i32* %0, null, !dbg !3999
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3985, metadata !691), !dbg !3994
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4001
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3985, metadata !691), !dbg !3994
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4002
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3989, metadata !691), !dbg !4003
  %10 = icmp ugt i64 %9, -3, !dbg !4004
  %11 = icmp ne i64 %2, 0, !dbg !4005
  %12 = and i1 %11, %10, !dbg !4006
  br i1 %12, label %13, label %18, !dbg !4006

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4007
  br i1 %14, label %18, label %15, !dbg !4008

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4009, !tbaa !900
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3991, metadata !691), !dbg !4010
  %17 = zext i8 %16 to i32, !dbg !4011
  store i32 %17, i32* %8, align 4, !dbg !4012, !tbaa !793
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4013
  ret i64 %19, !dbg !4013
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4014 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4059, metadata !691), !dbg !4064
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4065
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4066, metadata !691), !dbg !4069
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4071
  %4 = load i32, i32* %3, align 8, !dbg !4071, !tbaa !1381
  %5 = and i32 %4, 32, !dbg !4071
  %6 = icmp eq i32 %5, 0, !dbg !4072
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4073
  %8 = icmp ne i32 %7, 0, !dbg !4074
  br i1 %6, label %9, label %19, !dbg !4075

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4077
  %11 = xor i1 %8, true, !dbg !4078
  %12 = or i1 %10, %11, !dbg !4078
  %13 = sext i1 %8 to i32, !dbg !4078
  br i1 %12, label %22, label %14, !dbg !4078

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4079
  %16 = load i32, i32* %15, align 4, !dbg !4079, !tbaa !793
  %17 = icmp ne i32 %16, 9, !dbg !4080
  %18 = sext i1 %17 to i32, !dbg !4081
  br label %22, !dbg !4081

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4082

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4084
  store i32 0, i32* %21, align 4, !dbg !4086, !tbaa !793
  br label %22, !dbg !4084

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4087
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4088 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4093, metadata !691), !dbg !4096
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4094, metadata !691), !dbg !4097
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4098
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4095, metadata !691), !dbg !4099
  %3 = icmp eq i8* %2, null, !dbg !4100
  br i1 %3, label %11, label %4, !dbg !4102

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0)) #14, !dbg !4103
  %6 = icmp eq i32 %5, 0, !dbg !4108
  br i1 %6, label %10, label %7, !dbg !4109

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.125, i64 0, i64 0)) #14, !dbg !4110
  %9 = icmp eq i32 %8, 0, !dbg !4111
  br i1 %9, label %10, label %11, !dbg !4112

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4094, metadata !691), !dbg !4097
  br label %11, !dbg !4113

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4114
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4115 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4121, metadata !691), !dbg !4195
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4188, metadata !691), !dbg !4198
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4199
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4119, metadata !691), !dbg !4200
  %4 = icmp eq i8* %3, null, !dbg !4201
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.128, i64 0, i64 0), i8* %3, !dbg !4203
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4119, metadata !691), !dbg !4200
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4204, !tbaa !698
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4135, metadata !691) #10, !dbg !4205
  %7 = icmp eq i8* %6, null, !dbg !4206
  br i1 %7, label %8, label %123, !dbg !4207

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.129, i64 0, i64 0)) #10, !dbg !4208
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4136, metadata !691) #10, !dbg !4209
  %10 = icmp eq i8* %9, null, !dbg !4210
  br i1 %10, label %14, label %11, !dbg !4212

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4213, !tbaa !900
  %13 = icmp eq i8 %12, 0, !dbg !4214
  br i1 %13, label %14, label %15, !dbg !4215

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4216

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.130, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4136, metadata !691) #10, !dbg !4209
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4139, metadata !691) #10, !dbg !4218
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4141, metadata !691) #10, !dbg !4219
  %18 = icmp eq i64 %17, 0, !dbg !4220
  br i1 %18, label %24, label %19, !dbg !4221

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4222
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4222
  %22 = load i8, i8* %21, align 1, !dbg !4222, !tbaa !900
  %23 = icmp ne i8 %22, 47, !dbg !4222
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4223
  %27 = add i64 %17, 14, !dbg !4224
  %28 = add i64 %27, %26, !dbg !4225
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4226
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4138, metadata !691) #10, !dbg !4227
  %30 = icmp eq i8* %29, null, !dbg !4228
  br i1 %30, label %121, label %31, !dbg !4228

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4229
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4232

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4233, !tbaa !900
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4235
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.131, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4236
  br label %37, !dbg !4237

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4235
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.131, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4236
  br label %37, !dbg !4237

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4238
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4143, metadata !691) #10, !dbg !4239
  %39 = icmp slt i32 %38, 0, !dbg !4240
  br i1 %39, label %119, label %40, !dbg !4241

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.132, i64 0, i64 0)) #10, !dbg !4242
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4144, metadata !691) #10, !dbg !4243
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4244
  br i1 %42, label %43, label %45, !dbg !4245

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !4246
  br label %119, !dbg !4248

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4185, metadata !691) #10, !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4186, metadata !691) #10, !dbg !4250
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4251

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4252

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4185, metadata !691) #10, !dbg !4249
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4186, metadata !691) #10, !dbg !4250
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4252
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4253
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4254, metadata !691) #10, !dbg !4259
  %54 = load i8*, i8** %48, align 8, !dbg !4261, !tbaa !892
  %55 = load i8*, i8** %49, align 8, !dbg !4261, !tbaa !895
  %56 = icmp ult i8* %54, %55, !dbg !4261
  br i1 %56, label %59, label %57, !dbg !4261, !prof !896

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4261
  br label %63, !dbg !4261

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4261
  store i8* %60, i8** %48, align 8, !dbg !4261, !tbaa !892
  %61 = load i8, i8* %54, align 1, !dbg !4261, !tbaa !900
  %62 = zext i8 %61 to i32, !dbg !4261
  br label %63, !dbg !4261

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4261
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4187, metadata !691) #10, !dbg !4262
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4263, !llvm.loop !4264

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4269

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4254, metadata !691) #10, !dbg !4271
  %67 = load i8*, i8** %48, align 8, !dbg !4269, !tbaa !892
  %68 = load i8*, i8** %49, align 8, !dbg !4269, !tbaa !895
  %69 = icmp ult i8* %67, %68, !dbg !4269
  br i1 %69, label %72, label %70, !dbg !4269, !prof !896

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4269
  br label %76, !dbg !4269

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4269
  store i8* %73, i8** %48, align 8, !dbg !4269, !tbaa !892
  %74 = load i8, i8* %67, align 1, !dbg !4269, !tbaa !900
  %75 = zext i8 %74 to i32, !dbg !4269
  br label %76, !dbg !4269

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4269
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4187, metadata !691) #10, !dbg !4262
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4272, !llvm.loop !4273

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !4276
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.133, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !4277
  %81 = icmp slt i32 %80, 2, !dbg !4279
  br i1 %81, label %112, label %82, !dbg !4280

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4281
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4192, metadata !691) #10, !dbg !4282
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4283
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4193, metadata !691) #10, !dbg !4284
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4194, metadata !691) #10, !dbg !4285
  %85 = icmp eq i64 %51, 0, !dbg !4286
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4288

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4186, metadata !691) #10, !dbg !4250
  %90 = add i64 %87, 2, !dbg !4289
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !4291
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4185, metadata !691) #10, !dbg !4249
  br label %96, !dbg !4292

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4293
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4186, metadata !691) #10, !dbg !4250
  %94 = add i64 %93, 1, !dbg !4295
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !4296
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4185, metadata !691) #10, !dbg !4249
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4185, metadata !691) #10, !dbg !4249
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4186, metadata !691) #10, !dbg !4250
  %99 = icmp eq i8* %98, null, !dbg !4297
  br i1 %99, label %100, label %102, !dbg !4299

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4186, metadata !691) #10, !dbg !4250
  call void @free(i8* %52) #10, !dbg !4300
  br label %112, !dbg !4302

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4303
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4303
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4304
  %104 = xor i64 %84, -1, !dbg !4305
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4305
  %106 = xor i64 %83, -1, !dbg !4306
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4306
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4307, metadata !691) #10, !dbg !4316
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4315, metadata !691) #10, !dbg !4316
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !4318
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !4319
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4307, metadata !691) #10, !dbg !4320
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4315, metadata !691) #10, !dbg !4320
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !4322
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !4323
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4185, metadata !691) #10, !dbg !4249
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4186, metadata !691) #10, !dbg !4250
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4303
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4303
  br label %50, !dbg !4324, !llvm.loop !4273

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !4303
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !4303
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4325
  %116 = icmp eq i64 %113, 0, !dbg !4326
  br i1 %116, label %119, label %117, !dbg !4328

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4329
  store i8 0, i8* %118, align 1, !dbg !4331, !tbaa !900
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.128, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.128, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.128, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4135, metadata !691) #10, !dbg !4205
  call void @free(i8* %29) #10, !dbg !4332
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.128, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4135, metadata !691) #10, !dbg !4205
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4333, !tbaa !698
  br label %123, !dbg !4334

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4135, metadata !691) #10, !dbg !4205
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4120, metadata !691), !dbg !4335
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4120, metadata !691), !dbg !4335
  %125 = load i8, i8* %124, align 1, !dbg !4336, !tbaa !900
  %126 = icmp eq i8 %125, 0, !dbg !4338
  br i1 %126, label %152, label %127, !dbg !4339

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4340

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4120, metadata !691), !dbg !4335
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4340
  %132 = icmp eq i32 %131, 0, !dbg !4342
  br i1 %132, label %139, label %133, !dbg !4343

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4344
  br i1 %134, label %135, label %143, !dbg !4345

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4346
  %137 = load i8, i8* %136, align 1, !dbg !4346, !tbaa !900
  %138 = icmp eq i8 %137, 0, !dbg !4347
  br i1 %138, label %139, label %143, !dbg !4348

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4349
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4351
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4352
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4119, metadata !691), !dbg !4200
  br label %152, !dbg !4353

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4354
  %145 = add i64 %144, 1, !dbg !4355
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4356
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4120, metadata !691), !dbg !4335
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4357
  %148 = add i64 %147, 1, !dbg !4358
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4359
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4120, metadata !691), !dbg !4335
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4120, metadata !691), !dbg !4335
  %150 = load i8, i8* %149, align 1, !dbg !4336, !tbaa !900
  %151 = icmp eq i8 %150, 0, !dbg !4338
  br i1 %151, label %152, label %128, !dbg !4339, !llvm.loop !4360

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4119, metadata !691), !dbg !4200
  %154 = load i8, i8* %153, align 1, !dbg !4362, !tbaa !900
  %155 = icmp eq i8 %154, 0, !dbg !4364
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.134, i64 0, i64 0), i8* %153, !dbg !4365
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4119, metadata !691), !dbg !4200
  ret i8* %156, !dbg !4366
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

!llvm.dbg.cu = !{!2, !71, !204, !210, !218, !639, !225, !232, !642, !285, !650, !661, !663, !665, !667, !669, !671, !673, !676, !678, !294}
!llvm.ident = !{!680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680}
!llvm.module.flags = !{!681, !682, !683, !684, !685}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 61, type: !57, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !34)
!3 = !DIFile(filename: "src/unexpand.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!20 = !{!21, !23, !24, !25, !30, !31, !32, !33}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !26, line: 112, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !28, line: 62, baseType: !29)
!28 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !{!35, !0}
!35 = !DIGlobalVariableExpression(var: !36)
!36 = distinct !DIGlobalVariable(name: "infomap", scope: !37, file: !38, line: 632, type: !54, isLocal: true, isDefinition: true)
!37 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !38, file: !38, line: 630, type: !39, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !43)
!38 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!43 = !{!44, !45, !46, !53}
!44 = !DILocalVariable(name: "program", arg: 1, scope: !37, file: !38, line: 630, type: !41)
!45 = !DILocalVariable(name: "node", scope: !37, file: !38, line: 642, type: !41)
!46 = !DILocalVariable(name: "map_prog", scope: !37, file: !38, line: 643, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !37, file: !38, line: 632, size: 128, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !49, file: !38, line: 632, baseType: !41, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !49, file: !38, line: 632, baseType: !41, size: 64, offset: 64)
!53 = !DILocalVariable(name: "lc_messages", scope: !37, file: !38, line: 655, type: !41)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 896, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 7)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1536, elements: !67)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !60, line: 50, size: 256, elements: !61)
!60 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!61 = !{!62, !63, !64, !66}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !59, file: !60, line: 52, baseType: !41, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !59, file: !60, line: 55, baseType: !30, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !59, file: !60, line: 56, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !59, file: !60, line: 57, baseType: !30, size: 32, offset: 192)
!67 = !{!68}
!68 = !DISubrange(count: 6)
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !71, file: !72, line: 32, type: !193, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !112, globals: !114)
!72 = !DIFile(filename: "src/expand-common.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!73 = !{!5, !74, !88, !97}
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !75, line: 32, size: 32, elements: !76)
!75 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!77 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!78 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!79 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!80 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!81 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!82 = !DIEnumerator(name: "c_quoting_style", value: 5)
!83 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!84 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!85 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!86 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!87 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 45, size: 32, elements: !90)
!89 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!90 = !{!91, !92, !93, !94, !95, !96}
!91 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!92 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!93 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!94 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!95 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!96 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !99, file: !98, line: 192, size: 32, elements: !110)
!98 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = distinct !DISubprogram(name: "x2nrealloc", scope: !98, file: !98, line: 180, type: !100, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !105)
!100 = !DISubroutineType(types: !101)
!101 = !{!23, !23, !102, !103}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 62, baseType: !29)
!104 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!105 = !{!106, !107, !108, !109}
!106 = !DILocalVariable(name: "p", arg: 1, scope: !99, file: !98, line: 180, type: !23)
!107 = !DILocalVariable(name: "pn", arg: 2, scope: !99, file: !98, line: 180, type: !102)
!108 = !DILocalVariable(name: "s", arg: 3, scope: !99, file: !98, line: 180, type: !103)
!109 = !DILocalVariable(name: "n", scope: !99, file: !98, line: 182, type: !103)
!110 = !{!111}
!111 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!112 = !{!30, !31, !113, !24, !23, !25}
!113 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!114 = !{!69, !115, !117, !179, !181, !183, !185, !187, !189, !191, !194, !199}
!115 = !DIGlobalVariableExpression(var: !116)
!116 = distinct !DIGlobalVariable(name: "exit_status", scope: !71, file: !72, line: 68, type: !30, isLocal: false, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118)
!118 = distinct !DIGlobalVariable(name: "prev_file", scope: !119, file: !72, line: 280, type: !21, isLocal: true, isDefinition: true)
!119 = distinct !DISubprogram(name: "next_file", scope: !72, file: !72, line: 278, type: !120, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !176)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !124, line: 7, baseType: !125)
!124 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !126, line: 241, size: 1728, elements: !127)
!126 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !148, !149, !150, !151, !154, !155, !157, !161, !164, !166, !167, !168, !169, !170, !171, !172}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !125, file: !126, line: 242, baseType: !30, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !125, file: !126, line: 247, baseType: !21, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !125, file: !126, line: 248, baseType: !21, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !125, file: !126, line: 249, baseType: !21, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !125, file: !126, line: 250, baseType: !21, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !125, file: !126, line: 251, baseType: !21, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !125, file: !126, line: 252, baseType: !21, size: 64, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !125, file: !126, line: 253, baseType: !21, size: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !125, file: !126, line: 254, baseType: !21, size: 64, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !125, file: !126, line: 256, baseType: !21, size: 64, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !125, file: !126, line: 257, baseType: !21, size: 64, offset: 640)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !125, file: !126, line: 258, baseType: !21, size: 64, offset: 704)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !125, file: !126, line: 260, baseType: !141, size: 64, offset: 768)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !126, line: 156, size: 192, elements: !143)
!143 = !{!144, !145, !147}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !142, file: !126, line: 157, baseType: !141, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !142, file: !126, line: 158, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !142, file: !126, line: 162, baseType: !30, size: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !125, file: !126, line: 262, baseType: !146, size: 64, offset: 832)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !125, file: !126, line: 264, baseType: !30, size: 32, offset: 896)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !125, file: !126, line: 268, baseType: !30, size: 32, offset: 928)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !125, file: !126, line: 270, baseType: !152, size: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !28, line: 140, baseType: !153)
!153 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !125, file: !126, line: 274, baseType: !31, size: 16, offset: 1024)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !125, file: !126, line: 275, baseType: !156, size: 8, offset: 1040)
!156 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !125, file: !126, line: 276, baseType: !158, size: 8, offset: 1048)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 1)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !125, file: !126, line: 280, baseType: !162, size: 64, offset: 1088)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !126, line: 150, baseType: null)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !125, file: !126, line: 289, baseType: !165, size: 64, offset: 1152)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !28, line: 141, baseType: !153)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !125, file: !126, line: 297, baseType: !23, size: 64, offset: 1216)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !125, file: !126, line: 298, baseType: !23, size: 64, offset: 1280)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !125, file: !126, line: 299, baseType: !23, size: 64, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !125, file: !126, line: 300, baseType: !23, size: 64, offset: 1408)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !125, file: !126, line: 302, baseType: !103, size: 64, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !125, file: !126, line: 303, baseType: !30, size: 32, offset: 1536)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !125, file: !126, line: 305, baseType: !173, size: 160, offset: 1568)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 20)
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "fp", arg: 1, scope: !119, file: !72, line: 278, type: !122)
!178 = !DILocalVariable(name: "file", scope: !119, file: !72, line: 281, type: !21)
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "max_column_width", scope: !71, file: !72, line: 41, type: !103, isLocal: false, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182)
!182 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !71, file: !72, line: 53, type: !103, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "tab_list", scope: !71, file: !72, line: 46, type: !24, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !71, file: !72, line: 49, type: !103, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188)
!188 = distinct !DIGlobalVariable(name: "extend_size", scope: !71, file: !72, line: 38, type: !25, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "tab_size", scope: !71, file: !72, line: 35, type: !25, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !71, file: !72, line: 65, type: !193, isLocal: true, isDefinition: true)
!193 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!194 = !DIGlobalVariableExpression(var: !195)
!195 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !71, file: !72, line: 59, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 2)
!199 = !DIGlobalVariableExpression(var: !200)
!200 = distinct !DIGlobalVariable(name: "file_list", scope: !71, file: !72, line: 56, type: !201, isLocal: true, isDefinition: true)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!202 = !DIGlobalVariableExpression(var: !203)
!203 = distinct !DIGlobalVariable(name: "Version", scope: !204, file: !205, line: 2, type: !41, isLocal: false, isDefinition: true)
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206, globals: !207)
!205 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!206 = !{}
!207 = !{!202}
!208 = !DIGlobalVariableExpression(var: !209)
!209 = distinct !DIGlobalVariable(name: "file_name", scope: !210, file: !215, line: 36, type: !41, isLocal: true, isDefinition: true)
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206, globals: !212)
!211 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!212 = !{!208, !213}
!213 = !DIGlobalVariableExpression(var: !214)
!214 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !210, file: !215, line: 46, type: !193, isLocal: true, isDefinition: true)
!215 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!216 = !DIGlobalVariableExpression(var: !217)
!217 = distinct !DIGlobalVariable(name: "exit_failure", scope: !218, file: !221, line: 24, type: !222, isLocal: false, isDefinition: true)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206, globals: !220)
!219 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!220 = !{!216}
!221 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!223 = !DIGlobalVariableExpression(var: !224)
!224 = distinct !DIGlobalVariable(name: "program_name", scope: !225, file: !229, line: 33, type: !41, isLocal: false, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206, retainedTypes: !227, globals: !228)
!226 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!227 = !{!23, !21}
!228 = !{!223}
!229 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!230 = !DIGlobalVariableExpression(var: !231)
!231 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !232, file: !244, line: 77, type: !279, isLocal: false, isDefinition: true)
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !234, retainedTypes: !240, globals: !241)
!233 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!234 = !{!74, !235, !5}
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !75, line: 242, size: 32, elements: !236)
!236 = !{!237, !238, !239}
!237 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!238 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!239 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!240 = !{!30, !31, !103, !21}
!241 = !{!230, !242, !249, !261, !263, !268, !275, !277}
!242 = !DIGlobalVariableExpression(var: !243)
!243 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !232, file: !244, line: 93, type: !245, isLocal: false, isDefinition: true)
!244 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 320, elements: !247)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!247 = !{!248}
!248 = !DISubrange(count: 10)
!249 = !DIGlobalVariableExpression(var: !250)
!250 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !232, file: !244, line: 1043, type: !251, isLocal: false, isDefinition: true)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !244, line: 57, size: 448, elements: !252)
!252 = !{!253, !254, !255, !259, !260}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !251, file: !244, line: 60, baseType: !74, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !244, line: 63, baseType: !30, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !251, file: !244, line: 67, baseType: !256, size: 256, offset: 64)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !251, file: !244, line: 70, baseType: !41, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !251, file: !244, line: 73, baseType: !41, size: 64, offset: 384)
!261 = !DIGlobalVariableExpression(var: !262)
!262 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !232, file: !244, line: 108, type: !251, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264)
!264 = distinct !DIGlobalVariable(name: "slot0", scope: !232, file: !244, line: 834, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 256)
!268 = !DIGlobalVariableExpression(var: !269)
!269 = distinct !DIGlobalVariable(name: "slotvec", scope: !232, file: !244, line: 837, type: !270, isLocal: true, isDefinition: true)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !244, line: 826, size: 128, elements: !272)
!272 = !{!273, !274}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !271, file: !244, line: 828, baseType: !103, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !271, file: !244, line: 829, baseType: !21, size: 64, offset: 64)
!275 = !DIGlobalVariableExpression(var: !276)
!276 = distinct !DIGlobalVariable(name: "nslots", scope: !232, file: !244, line: 835, type: !30, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278)
!278 = distinct !DIGlobalVariable(name: "slotvec0", scope: !232, file: !244, line: 836, type: !271, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 704, elements: !281)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!281 = !{!282}
!282 = !DISubrange(count: 11)
!283 = !DIGlobalVariableExpression(var: !284)
!284 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !285, file: !288, line: 26, type: !289, isLocal: false, isDefinition: true)
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206, globals: !287)
!286 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!287 = !{!283}
!288 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 376, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 47)
!292 = !DIGlobalVariableExpression(var: !293)
!293 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !294, file: !637, line: 120, type: !638, isLocal: true, isDefinition: true)
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !296, retainedTypes: !635, globals: !636)
!295 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!296 = !{!297}
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !298, line: 41, size: 32, elements: !299)
!298 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634}
!300 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!301 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!302 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!303 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!304 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!305 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!306 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!307 = !DIEnumerator(name: "DAY_1", value: 131079)
!308 = !DIEnumerator(name: "DAY_2", value: 131080)
!309 = !DIEnumerator(name: "DAY_3", value: 131081)
!310 = !DIEnumerator(name: "DAY_4", value: 131082)
!311 = !DIEnumerator(name: "DAY_5", value: 131083)
!312 = !DIEnumerator(name: "DAY_6", value: 131084)
!313 = !DIEnumerator(name: "DAY_7", value: 131085)
!314 = !DIEnumerator(name: "ABMON_1", value: 131086)
!315 = !DIEnumerator(name: "ABMON_2", value: 131087)
!316 = !DIEnumerator(name: "ABMON_3", value: 131088)
!317 = !DIEnumerator(name: "ABMON_4", value: 131089)
!318 = !DIEnumerator(name: "ABMON_5", value: 131090)
!319 = !DIEnumerator(name: "ABMON_6", value: 131091)
!320 = !DIEnumerator(name: "ABMON_7", value: 131092)
!321 = !DIEnumerator(name: "ABMON_8", value: 131093)
!322 = !DIEnumerator(name: "ABMON_9", value: 131094)
!323 = !DIEnumerator(name: "ABMON_10", value: 131095)
!324 = !DIEnumerator(name: "ABMON_11", value: 131096)
!325 = !DIEnumerator(name: "ABMON_12", value: 131097)
!326 = !DIEnumerator(name: "MON_1", value: 131098)
!327 = !DIEnumerator(name: "MON_2", value: 131099)
!328 = !DIEnumerator(name: "MON_3", value: 131100)
!329 = !DIEnumerator(name: "MON_4", value: 131101)
!330 = !DIEnumerator(name: "MON_5", value: 131102)
!331 = !DIEnumerator(name: "MON_6", value: 131103)
!332 = !DIEnumerator(name: "MON_7", value: 131104)
!333 = !DIEnumerator(name: "MON_8", value: 131105)
!334 = !DIEnumerator(name: "MON_9", value: 131106)
!335 = !DIEnumerator(name: "MON_10", value: 131107)
!336 = !DIEnumerator(name: "MON_11", value: 131108)
!337 = !DIEnumerator(name: "MON_12", value: 131109)
!338 = !DIEnumerator(name: "AM_STR", value: 131110)
!339 = !DIEnumerator(name: "PM_STR", value: 131111)
!340 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!341 = !DIEnumerator(name: "D_FMT", value: 131113)
!342 = !DIEnumerator(name: "T_FMT", value: 131114)
!343 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!344 = !DIEnumerator(name: "ERA", value: 131116)
!345 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!346 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!347 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!348 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!349 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!350 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!351 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!352 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!353 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!354 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!355 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!356 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!357 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!358 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!359 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!360 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!361 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!362 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!363 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!364 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!365 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!366 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!367 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!368 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!369 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!370 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!371 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!372 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!373 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!374 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!375 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!376 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!377 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!378 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!379 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!380 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!381 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!382 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!383 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!384 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!385 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!386 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!387 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!388 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!389 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!390 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!391 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!392 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!393 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!394 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!395 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!396 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!397 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!398 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!399 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!400 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!401 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!402 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!403 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!404 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!405 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!406 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!407 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!408 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!409 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!410 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!411 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!412 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!413 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!414 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!415 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!416 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!417 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!418 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!419 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!420 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!421 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!422 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!423 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!424 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!425 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!426 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!427 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!428 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!429 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!430 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!431 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!432 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!433 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!434 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!435 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!436 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!437 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!438 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!439 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!440 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!441 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!442 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!443 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!444 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!445 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!446 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!447 = !DIEnumerator(name: "CODESET", value: 14)
!448 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!449 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!450 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!451 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!494 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!495 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!496 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!497 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!498 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!499 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!500 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!501 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!502 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!503 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!504 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!505 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!506 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!507 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!508 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!509 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!510 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!511 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!512 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!513 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!514 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!515 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!516 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!517 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!518 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!519 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!520 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!521 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!522 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!523 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!524 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!525 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!526 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!527 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!528 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!529 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!530 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!531 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!532 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!533 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!534 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!535 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!536 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!537 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!538 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!539 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!540 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!541 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!552 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!553 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!558 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!559 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!562 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!563 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!564 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!565 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!566 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!567 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!568 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!569 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!570 = !DIEnumerator(name: "THOUSEP", value: 65537)
!571 = !DIEnumerator(name: "__GROUPING", value: 65538)
!572 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!573 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!574 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!575 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!576 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!577 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!578 = !DIEnumerator(name: "__YESSTR", value: 327682)
!579 = !DIEnumerator(name: "__NOSTR", value: 327683)
!580 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!581 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!582 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!583 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!584 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!585 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!586 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!587 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!588 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!589 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!590 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!591 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!592 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!593 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!594 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!595 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!596 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!597 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!598 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!599 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!600 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!601 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!602 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!603 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!604 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!605 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!606 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!607 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!608 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!609 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!610 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!611 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!612 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!613 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!614 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!615 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!616 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!617 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!618 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!619 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!623 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!624 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!625 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!626 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!627 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!628 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!631 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!633 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!634 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!635 = !{!23, !21, !32}
!636 = !{!292}
!637 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!638 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !640, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !641)
!640 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!641 = !{!88}
!642 = distinct !DICompileUnit(language: DW_LANG_C99, file: !643, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !644, retainedTypes: !649)
!643 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!644 = !{!645}
!645 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !646, line: 41, size: 32, elements: !647)
!646 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!647 = !{!648}
!648 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!649 = !{!23}
!650 = distinct !DICompileUnit(language: DW_LANG_C99, file: !651, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !652, retainedTypes: !660)
!651 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!652 = !{!653}
!653 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !654, file: !98, line: 192, size: 32, elements: !110)
!654 = distinct !DISubprogram(name: "x2nrealloc", scope: !98, file: !98, line: 180, type: !100, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !655)
!655 = !{!656, !657, !658, !659}
!656 = !DILocalVariable(name: "p", arg: 1, scope: !654, file: !98, line: 180, type: !23)
!657 = !DILocalVariable(name: "pn", arg: 2, scope: !654, file: !98, line: 180, type: !102)
!658 = !DILocalVariable(name: "s", arg: 3, scope: !654, file: !98, line: 180, type: !103)
!659 = !DILocalVariable(name: "n", scope: !654, file: !98, line: 182, type: !103)
!660 = !{!103, !21, !23}
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206)
!662 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206)
!664 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!665 = distinct !DICompileUnit(language: DW_LANG_C99, file: !666, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206, retainedTypes: !649)
!666 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!667 = distinct !DICompileUnit(language: DW_LANG_C99, file: !668, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206)
!668 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!669 = distinct !DICompileUnit(language: DW_LANG_C99, file: !670, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206, retainedTypes: !649)
!670 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!671 = distinct !DICompileUnit(language: DW_LANG_C99, file: !672, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206, retainedTypes: !649)
!672 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!673 = distinct !DICompileUnit(language: DW_LANG_C99, file: !674, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206, retainedTypes: !675)
!674 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!675 = !{!103}
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206)
!677 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!678 = distinct !DICompileUnit(language: DW_LANG_C99, file: !679, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206)
!679 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!680 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!681 = !{i32 2, !"Dwarf Version", i32 4}
!682 = !{i32 2, !"Debug Info Version", i32 3}
!683 = !{i32 1, !"wchar_size", i32 4}
!684 = !{i32 7, !"PIC Level", i32 2}
!685 = !{i32 7, !"PIE Level", i32 2}
!686 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 72, type: !687, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !30}
!689 = !{!690}
!690 = !DILocalVariable(name: "status", arg: 1, scope: !686, file: !3, line: 72, type: !30)
!691 = !DIExpression()
!692 = !DILocation(line: 72, column: 12, scope: !686)
!693 = !DILocation(line: 74, column: 14, scope: !694)
!694 = distinct !DILexicalBlock(scope: !686, file: !3, line: 74, column: 7)
!695 = !DILocation(line: 74, column: 7, scope: !686)
!696 = !DILocation(line: 75, column: 5, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !3, line: 75, column: 5)
!698 = !{!699, !699, i64 0}
!699 = !{!"any pointer", !700, i64 0}
!700 = !{!"omnipotent char", !701, i64 0}
!701 = !{!"Simple C/C++ TBAA"}
!702 = !DILocation(line: 78, column: 7, scope: !703)
!703 = distinct !DILexicalBlock(scope: !694, file: !3, line: 77, column: 5)
!704 = !DILocation(line: 82, column: 7, scope: !703)
!705 = !DILocation(line: 580, column: 3, scope: !706, inlinedAt: !709)
!706 = distinct !DISubprogram(name: "emit_stdin_note", scope: !38, file: !38, line: 578, type: !707, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !206)
!707 = !DISubroutineType(types: !708)
!708 = !{null}
!709 = distinct !DILocation(line: 86, column: 7, scope: !703)
!710 = !DILocation(line: 587, column: 3, scope: !711, inlinedAt: !712)
!711 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !38, file: !38, line: 585, type: !707, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !206)
!712 = distinct !DILocation(line: 87, column: 7, scope: !703)
!713 = !DILocation(line: 89, column: 7, scope: !703)
!714 = !DILocation(line: 95, column: 7, scope: !703)
!715 = !DILocation(line: 96, column: 7, scope: !703)
!716 = !DILocation(line: 642, column: 15, scope: !37, inlinedAt: !717)
!717 = distinct !DILocation(line: 97, column: 7, scope: !703)
!718 = !DILocation(line: 651, column: 3, scope: !37, inlinedAt: !717)
!719 = !DILocation(line: 655, column: 29, scope: !37, inlinedAt: !717)
!720 = !DILocation(line: 655, column: 15, scope: !37, inlinedAt: !717)
!721 = !DILocation(line: 656, column: 7, scope: !722, inlinedAt: !717)
!722 = distinct !DILexicalBlock(scope: !37, file: !38, line: 656, column: 7)
!723 = !DILocation(line: 656, column: 19, scope: !722, inlinedAt: !717)
!724 = !DILocation(line: 656, column: 22, scope: !722, inlinedAt: !717)
!725 = !DILocation(line: 656, column: 7, scope: !37, inlinedAt: !717)
!726 = !DILocation(line: 662, column: 7, scope: !727, inlinedAt: !717)
!727 = distinct !DILexicalBlock(scope: !722, file: !38, line: 657, column: 5)
!728 = !DILocation(line: 664, column: 5, scope: !727, inlinedAt: !717)
!729 = !DILocation(line: 665, column: 3, scope: !37, inlinedAt: !717)
!730 = !DILocation(line: 667, column: 3, scope: !37, inlinedAt: !717)
!731 = !DILocation(line: 99, column: 3, scope: !686)
!732 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 257, type: !733, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{!30, !30, !201}
!735 = !{!736, !737, !738, !739, !740, !741}
!736 = !DILocalVariable(name: "argc", arg: 1, scope: !732, file: !3, line: 257, type: !30)
!737 = !DILocalVariable(name: "argv", arg: 2, scope: !732, file: !3, line: 257, type: !201)
!738 = !DILocalVariable(name: "have_tabval", scope: !732, file: !3, line: 259, type: !193)
!739 = !DILocalVariable(name: "tabval", scope: !732, file: !3, line: 260, type: !25)
!740 = !DILocalVariable(name: "c", scope: !732, file: !3, line: 261, type: !30)
!741 = !DILocalVariable(name: "convert_first_only", scope: !732, file: !3, line: 265, type: !193)
!742 = !DILocation(line: 257, column: 11, scope: !732)
!743 = !DILocation(line: 257, column: 24, scope: !732)
!744 = !DILocation(line: 259, column: 8, scope: !732)
!745 = !DILocation(line: 265, column: 8, scope: !732)
!746 = !DILocation(line: 268, column: 21, scope: !732)
!747 = !DILocation(line: 268, column: 3, scope: !732)
!748 = !DILocation(line: 269, column: 3, scope: !732)
!749 = !DILocation(line: 270, column: 3, scope: !732)
!750 = !DILocation(line: 271, column: 3, scope: !732)
!751 = !DILocation(line: 273, column: 3, scope: !732)
!752 = !DILocation(line: 275, column: 3, scope: !732)
!753 = !DILocation(line: 275, column: 15, scope: !732)
!754 = !DILocation(line: 260, column: 13, scope: !732)
!755 = !DILocation(line: 261, column: 7, scope: !732)
!756 = distinct !{!756, !752, !757}
!757 = !DILocation(line: 309, column: 5, scope: !732)
!758 = !DILocation(line: 281, column: 11, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 279, column: 9)
!760 = distinct !DILexicalBlock(scope: !732, file: !3, line: 277, column: 5)
!761 = !DILocation(line: 283, column: 31, scope: !759)
!762 = !{!763, !763, i64 0}
!763 = !{!"_Bool", !700, i64 0}
!764 = !DILocation(line: 284, column: 11, scope: !759)
!765 = !DILocation(line: 286, column: 31, scope: !759)
!766 = !DILocation(line: 287, column: 28, scope: !759)
!767 = !DILocation(line: 287, column: 11, scope: !759)
!768 = !DILocation(line: 288, column: 11, scope: !759)
!769 = !DILocation(line: 293, column: 15, scope: !770)
!770 = distinct !DILexicalBlock(scope: !759, file: !3, line: 293, column: 15)
!771 = !DILocation(line: 293, column: 15, scope: !759)
!772 = !DILocation(line: 294, column: 13, scope: !770)
!773 = !DILocation(line: 297, column: 9, scope: !759)
!774 = !DILocation(line: 298, column: 9, scope: !759)
!775 = !DILocation(line: 300, column: 16, scope: !776)
!776 = distinct !DILexicalBlock(scope: !759, file: !3, line: 300, column: 15)
!777 = !DILocation(line: 300, column: 15, scope: !759)
!778 = !DILocation(line: 305, column: 16, scope: !779)
!779 = distinct !DILexicalBlock(scope: !759, file: !3, line: 305, column: 15)
!780 = !DILocation(line: 305, column: 15, scope: !759)
!781 = !DILocation(line: 306, column: 13, scope: !779)
!782 = !DILocation(line: 311, column: 7, scope: !783)
!783 = distinct !DILexicalBlock(scope: !732, file: !3, line: 311, column: 7)
!784 = !DILocation(line: 311, column: 7, scope: !732)
!785 = !DILocation(line: 312, column: 25, scope: !783)
!786 = !DILocation(line: 312, column: 5, scope: !783)
!787 = !DILocation(line: 314, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !732, file: !3, line: 314, column: 7)
!789 = !DILocation(line: 314, column: 7, scope: !732)
!790 = !DILocation(line: 315, column: 5, scope: !788)
!791 = !DILocation(line: 317, column: 3, scope: !732)
!792 = !DILocation(line: 319, column: 20, scope: !732)
!793 = !{!794, !794, i64 0}
!794 = !{!"int", !700, i64 0}
!795 = !DILocation(line: 319, column: 27, scope: !732)
!796 = !DILocation(line: 319, column: 38, scope: !732)
!797 = !DILocation(line: 319, column: 19, scope: !732)
!798 = !DILocation(line: 319, column: 3, scope: !732)
!799 = !DILocation(line: 109, column: 14, scope: !800, inlinedAt: !860)
!800 = distinct !DISubprogram(name: "unexpand", scope: !3, file: !3, line: 106, type: !707, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !801)
!801 = !{!802, !843, !844, !846, !847, !848, !849, !850, !851, !852, !853, !857}
!802 = !DILocalVariable(name: "fp", scope: !800, file: !3, line: 109, type: !803)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !124, line: 7, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !126, line: 241, size: 1728, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !805, file: !126, line: 242, baseType: !30, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !805, file: !126, line: 247, baseType: !21, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !805, file: !126, line: 248, baseType: !21, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !805, file: !126, line: 249, baseType: !21, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !805, file: !126, line: 250, baseType: !21, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !805, file: !126, line: 251, baseType: !21, size: 64, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !805, file: !126, line: 252, baseType: !21, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !805, file: !126, line: 253, baseType: !21, size: 64, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !805, file: !126, line: 254, baseType: !21, size: 64, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !805, file: !126, line: 256, baseType: !21, size: 64, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !805, file: !126, line: 257, baseType: !21, size: 64, offset: 640)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !805, file: !126, line: 258, baseType: !21, size: 64, offset: 704)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !805, file: !126, line: 260, baseType: !820, size: 64, offset: 768)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !126, line: 156, size: 192, elements: !822)
!822 = !{!823, !824, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !821, file: !126, line: 157, baseType: !820, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !821, file: !126, line: 158, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !821, file: !126, line: 162, baseType: !30, size: 32, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !805, file: !126, line: 262, baseType: !825, size: 64, offset: 832)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !805, file: !126, line: 264, baseType: !30, size: 32, offset: 896)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !805, file: !126, line: 268, baseType: !30, size: 32, offset: 928)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !805, file: !126, line: 270, baseType: !152, size: 64, offset: 960)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !805, file: !126, line: 274, baseType: !31, size: 16, offset: 1024)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !805, file: !126, line: 275, baseType: !156, size: 8, offset: 1040)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !805, file: !126, line: 276, baseType: !158, size: 8, offset: 1048)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !805, file: !126, line: 280, baseType: !162, size: 64, offset: 1088)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !805, file: !126, line: 289, baseType: !165, size: 64, offset: 1152)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !805, file: !126, line: 297, baseType: !23, size: 64, offset: 1216)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !805, file: !126, line: 298, baseType: !23, size: 64, offset: 1280)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !805, file: !126, line: 299, baseType: !23, size: 64, offset: 1344)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !805, file: !126, line: 300, baseType: !23, size: 64, offset: 1408)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !805, file: !126, line: 302, baseType: !103, size: 64, offset: 1472)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !805, file: !126, line: 303, baseType: !30, size: 32, offset: 1536)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !805, file: !126, line: 305, baseType: !173, size: 160, offset: 1568)
!843 = !DILocalVariable(name: "pending_blank", scope: !800, file: !3, line: 114, type: !21)
!844 = !DILocalVariable(name: "c", scope: !845, file: !3, line: 127, type: !30)
!845 = distinct !DILexicalBlock(scope: !800, file: !3, line: 125, column: 5)
!846 = !DILocalVariable(name: "convert", scope: !845, file: !3, line: 130, type: !193)
!847 = !DILocalVariable(name: "column", scope: !845, file: !3, line: 137, type: !25)
!848 = !DILocalVariable(name: "next_tab_column", scope: !845, file: !3, line: 140, type: !25)
!849 = !DILocalVariable(name: "tab_index", scope: !845, file: !3, line: 143, type: !103)
!850 = !DILocalVariable(name: "one_blank_before_tab_stop", scope: !845, file: !3, line: 146, type: !193)
!851 = !DILocalVariable(name: "prev_blank", scope: !845, file: !3, line: 151, type: !193)
!852 = !DILocalVariable(name: "pending", scope: !845, file: !3, line: 154, type: !103)
!853 = !DILocalVariable(name: "blank", scope: !854, file: !3, line: 166, type: !193)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 165, column: 13)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 164, column: 15)
!856 = distinct !DILexicalBlock(scope: !845, file: !3, line: 160, column: 9)
!857 = !DILocalVariable(name: "last_tab", scope: !858, file: !3, line: 170, type: !193)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 169, column: 17)
!859 = distinct !DILexicalBlock(scope: !854, file: !3, line: 168, column: 19)
!860 = distinct !DILocation(line: 321, column: 3, scope: !732)
!861 = !DILocation(line: 109, column: 9, scope: !800, inlinedAt: !860)
!862 = !DILocation(line: 116, column: 8, scope: !863, inlinedAt: !860)
!863 = distinct !DILexicalBlock(scope: !800, file: !3, line: 116, column: 7)
!864 = !DILocation(line: 116, column: 7, scope: !800, inlinedAt: !860)
!865 = !DILocation(line: 122, column: 28, scope: !800, inlinedAt: !860)
!866 = !{!867, !867, i64 0}
!867 = !{!"long", !700, i64 0}
!868 = !DILocation(line: 122, column: 19, scope: !800, inlinedAt: !860)
!869 = !DILocation(line: 114, column: 9, scope: !800, inlinedAt: !860)
!870 = !DILocation(line: 124, column: 3, scope: !800, inlinedAt: !860)
!871 = !DILocation(line: 130, column: 12, scope: !845, inlinedAt: !860)
!872 = !DILocation(line: 137, column: 17, scope: !845, inlinedAt: !860)
!873 = !DILocation(line: 140, column: 17, scope: !845, inlinedAt: !860)
!874 = !DILocation(line: 143, column: 7, scope: !845, inlinedAt: !860)
!875 = !DILocation(line: 143, column: 14, scope: !845, inlinedAt: !860)
!876 = !DILocation(line: 146, column: 12, scope: !845, inlinedAt: !860)
!877 = !DILocation(line: 151, column: 12, scope: !845, inlinedAt: !860)
!878 = !DILocation(line: 154, column: 14, scope: !845, inlinedAt: !860)
!879 = !DILocation(line: 159, column: 7, scope: !845, inlinedAt: !860)
!880 = distinct !{!880, !881, !882}
!881 = !DILocation(line: 159, column: 7, scope: !845)
!882 = !DILocation(line: 252, column: 23, scope: !845)
!883 = !DILocalVariable(name: "__fp", arg: 1, scope: !884, file: !885, line: 63, type: !803)
!884 = distinct !DISubprogram(name: "getc_unlocked", scope: !885, file: !885, line: 63, type: !886, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !888)
!885 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!886 = !DISubroutineType(types: !887)
!887 = !{!30, !803}
!888 = !{!883}
!889 = !DILocation(line: 63, column: 22, scope: !884, inlinedAt: !890)
!890 = distinct !DILocation(line: 161, column: 23, scope: !856, inlinedAt: !860)
!891 = !DILocation(line: 65, column: 10, scope: !884, inlinedAt: !890)
!892 = !{!893, !699, i64 8}
!893 = !{!"_IO_FILE", !794, i64 0, !699, i64 8, !699, i64 16, !699, i64 24, !699, i64 32, !699, i64 40, !699, i64 48, !699, i64 56, !699, i64 64, !699, i64 72, !699, i64 80, !699, i64 88, !699, i64 96, !699, i64 104, !794, i64 112, !794, i64 116, !867, i64 120, !894, i64 128, !700, i64 130, !700, i64 131, !699, i64 136, !867, i64 144, !699, i64 152, !699, i64 160, !699, i64 168, !699, i64 176, !867, i64 184, !794, i64 192, !700, i64 196}
!894 = !{!"short", !700, i64 0}
!895 = !{!893, !699, i64 16}
!896 = !{!"branch_weights", i32 2000, i32 1}
!897 = distinct !{!897, !898, !899}
!898 = !DILocation(line: 161, column: 11, scope: !856)
!899 = !DILocation(line: 162, column: 13, scope: !856)
!900 = !{!700, !700, i64 0}
!901 = !DILocation(line: 127, column: 11, scope: !845, inlinedAt: !860)
!902 = !DILocation(line: 161, column: 38, scope: !856, inlinedAt: !860)
!903 = !DILocation(line: 161, column: 34, scope: !856, inlinedAt: !860)
!904 = !DILocation(line: 161, column: 47, scope: !856, inlinedAt: !860)
!905 = !DILocation(line: 161, column: 11, scope: !856, inlinedAt: !860)
!906 = !DILocation(line: 164, column: 15, scope: !855, inlinedAt: !860)
!907 = !DILocation(line: 164, column: 15, scope: !856, inlinedAt: !860)
!908 = !DILocation(line: 166, column: 31, scope: !854, inlinedAt: !860)
!909 = !{!894, !894, i64 0}
!910 = !DILocation(line: 166, column: 29, scope: !854, inlinedAt: !860)
!911 = !DILocation(line: 166, column: 20, scope: !854, inlinedAt: !860)
!912 = !DILocation(line: 168, column: 19, scope: !854, inlinedAt: !860)
!913 = !DILocation(line: 170, column: 24, scope: !858, inlinedAt: !860)
!914 = !DILocation(line: 170, column: 19, scope: !858, inlinedAt: !860)
!915 = !DILocation(line: 172, column: 37, scope: !858, inlinedAt: !860)
!916 = !DILocation(line: 175, column: 23, scope: !917, inlinedAt: !860)
!917 = distinct !DILexicalBlock(scope: !858, file: !3, line: 175, column: 23)
!918 = !{i8 0, i8 2}
!919 = !DILocation(line: 175, column: 23, scope: !858, inlinedAt: !860)
!920 = !DILocation(line: 178, column: 23, scope: !921, inlinedAt: !860)
!921 = distinct !DILexicalBlock(scope: !858, file: !3, line: 178, column: 23)
!922 = !DILocation(line: 178, column: 23, scope: !858, inlinedAt: !860)
!923 = !DILocation(line: 180, column: 43, scope: !924, inlinedAt: !860)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 180, column: 27)
!925 = distinct !DILexicalBlock(scope: !921, file: !3, line: 179, column: 21)
!926 = !DILocation(line: 180, column: 27, scope: !925, inlinedAt: !860)
!927 = !DILocation(line: 181, column: 25, scope: !924, inlinedAt: !860)
!928 = !DILocation(line: 183, column: 29, scope: !929, inlinedAt: !860)
!929 = distinct !DILexicalBlock(scope: !925, file: !3, line: 183, column: 27)
!930 = !DILocation(line: 183, column: 27, scope: !925, inlinedAt: !860)
!931 = !DILocation(line: 187, column: 31, scope: !932, inlinedAt: !860)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 187, column: 31)
!933 = distinct !DILexicalBlock(scope: !929, file: !3, line: 184, column: 25)
!934 = !DILocation(line: 187, column: 31, scope: !933, inlinedAt: !860)
!935 = !DILocation(line: 192, column: 33, scope: !936, inlinedAt: !860)
!936 = distinct !DILexicalBlock(scope: !929, file: !3, line: 191, column: 25)
!937 = !DILocation(line: 194, column: 34, scope: !938, inlinedAt: !860)
!938 = distinct !DILexicalBlock(scope: !936, file: !3, line: 194, column: 31)
!939 = !DILocation(line: 194, column: 55, scope: !938, inlinedAt: !860)
!940 = !DILocation(line: 194, column: 45, scope: !938, inlinedAt: !860)
!941 = !DILocation(line: 211, column: 33, scope: !925, inlinedAt: !860)
!942 = !DILocation(line: 212, column: 21, scope: !925, inlinedAt: !860)
!943 = !DILocation(line: 213, column: 17, scope: !859, inlinedAt: !860)
!944 = !DILocation(line: 214, column: 26, scope: !945, inlinedAt: !860)
!945 = distinct !DILexicalBlock(scope: !859, file: !3, line: 214, column: 24)
!946 = !DILocation(line: 214, column: 24, scope: !859, inlinedAt: !860)
!947 = !DILocation(line: 218, column: 30, scope: !948, inlinedAt: !860)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 215, column: 17)
!949 = !DILocation(line: 218, column: 29, scope: !948, inlinedAt: !860)
!950 = !DILocation(line: 218, column: 26, scope: !948, inlinedAt: !860)
!951 = !DILocation(line: 220, column: 34, scope: !948, inlinedAt: !860)
!952 = !DILocation(line: 220, column: 33, scope: !948, inlinedAt: !860)
!953 = !DILocation(line: 220, column: 32, scope: !948, inlinedAt: !860)
!954 = !DILocation(line: 220, column: 29, scope: !948, inlinedAt: !860)
!955 = !DILocation(line: 221, column: 17, scope: !948, inlinedAt: !860)
!956 = !DILocation(line: 224, column: 25, scope: !957, inlinedAt: !860)
!957 = distinct !DILexicalBlock(scope: !945, file: !3, line: 223, column: 17)
!958 = !DILocation(line: 225, column: 24, scope: !959, inlinedAt: !860)
!959 = distinct !DILexicalBlock(scope: !957, file: !3, line: 225, column: 23)
!960 = !DILocation(line: 225, column: 23, scope: !957, inlinedAt: !860)
!961 = !DILocation(line: 226, column: 21, scope: !959, inlinedAt: !860)
!962 = !DILocation(line: 229, column: 19, scope: !854, inlinedAt: !860)
!963 = !DILocation(line: 231, column: 38, scope: !964, inlinedAt: !860)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 231, column: 23)
!965 = distinct !DILexicalBlock(scope: !966, file: !3, line: 230, column: 17)
!966 = distinct !DILexicalBlock(scope: !854, file: !3, line: 229, column: 19)
!967 = !DILocation(line: 231, column: 23, scope: !965, inlinedAt: !860)
!968 = !DILocation(line: 232, column: 38, scope: !964, inlinedAt: !860)
!969 = !DILocation(line: 232, column: 21, scope: !964, inlinedAt: !860)
!970 = !DILocation(line: 233, column: 23, scope: !971, inlinedAt: !860)
!971 = distinct !DILexicalBlock(scope: !965, file: !3, line: 233, column: 23)
!972 = !DILocation(line: 233, column: 66, scope: !971, inlinedAt: !860)
!973 = !DILocation(line: 233, column: 23, scope: !965, inlinedAt: !860)
!974 = !DILocation(line: 234, column: 21, scope: !971, inlinedAt: !860)
!975 = !DILocation(line: 240, column: 26, scope: !854, inlinedAt: !860)
!976 = !DILocation(line: 240, column: 46, scope: !854, inlinedAt: !860)
!977 = !DILocation(line: 240, column: 23, scope: !854, inlinedAt: !860)
!978 = !DILocation(line: 198, column: 35, scope: !979, inlinedAt: !860)
!979 = distinct !DILexicalBlock(scope: !938, file: !3, line: 195, column: 29)
!980 = !DILocation(line: 200, column: 58, scope: !979, inlinedAt: !860)
!981 = !DILocation(line: 200, column: 52, scope: !979, inlinedAt: !860)
!982 = !DILocation(line: 200, column: 31, scope: !979, inlinedAt: !860)
!983 = !DILocation(line: 200, column: 56, scope: !979, inlinedAt: !860)
!984 = !DILocation(line: 243, column: 17, scope: !985, inlinedAt: !860)
!985 = distinct !DILexicalBlock(scope: !856, file: !3, line: 243, column: 15)
!986 = !DILocation(line: 243, column: 15, scope: !856, inlinedAt: !860)
!987 = !DILocation(line: 245, column: 15, scope: !988, inlinedAt: !860)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 244, column: 13)
!989 = !DILocation(line: 253, column: 5, scope: !800, inlinedAt: !860)
!990 = !DILocalVariable(name: "__c", arg: 1, scope: !991, file: !885, line: 105, type: !30)
!991 = distinct !DISubprogram(name: "putchar_unlocked", scope: !885, file: !885, line: 105, type: !992, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !994)
!992 = !DISubroutineType(types: !993)
!993 = !{!30, !30}
!994 = !{!990}
!995 = !DILocation(line: 105, column: 23, scope: !991, inlinedAt: !996)
!996 = distinct !DILocation(line: 249, column: 15, scope: !997, inlinedAt: !860)
!997 = distinct !DILexicalBlock(scope: !856, file: !3, line: 249, column: 15)
!998 = !DILocation(line: 107, column: 10, scope: !991, inlinedAt: !996)
!999 = !{!893, !699, i64 40}
!1000 = !{!893, !699, i64 48}
!1001 = !DILocation(line: 249, column: 15, scope: !856, inlinedAt: !860)
!1002 = !DILocation(line: 249, column: 27, scope: !997, inlinedAt: !860)
!1003 = !DILocation(line: 250, column: 13, scope: !997, inlinedAt: !860)
!1004 = !DILocation(line: 252, column: 16, scope: !845, inlinedAt: !860)
!1005 = !DILocation(line: 251, column: 9, scope: !856, inlinedAt: !860)
!1006 = distinct !{!1006, !1007, !1008}
!1007 = !DILocation(line: 124, column: 3, scope: !800)
!1008 = !DILocation(line: 253, column: 5, scope: !800)
!1009 = !DILocation(line: 323, column: 3, scope: !732)
!1010 = !DILocation(line: 325, column: 10, scope: !732)
!1011 = !DILocation(line: 326, column: 1, scope: !732)
!1012 = distinct !DISubprogram(name: "add_tab_stop", scope: !72, file: !72, line: 74, type: !1013, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !25}
!1015 = !{!1016, !1017, !1018}
!1016 = !DILocalVariable(name: "tabval", arg: 1, scope: !1012, file: !72, line: 74, type: !25)
!1017 = !DILocalVariable(name: "prev_column", scope: !1012, file: !72, line: 76, type: !25)
!1018 = !DILocalVariable(name: "column_width", scope: !1012, file: !72, line: 77, type: !25)
!1019 = !DILocation(line: 74, column: 25, scope: !1012)
!1020 = !DILocation(line: 76, column: 27, scope: !1012)
!1021 = !DILocation(line: 76, column: 44, scope: !1012)
!1022 = !DILocation(line: 76, column: 68, scope: !1012)
!1023 = !DILocation(line: 76, column: 13, scope: !1012)
!1024 = !DILocation(line: 77, column: 40, scope: !1012)
!1025 = !DILocation(line: 77, column: 59, scope: !1012)
!1026 = !DILocation(line: 77, column: 28, scope: !1012)
!1027 = !DILocation(line: 77, column: 13, scope: !1012)
!1028 = !DILocation(line: 79, column: 25, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1012, file: !72, line: 79, column: 7)
!1030 = !DILocation(line: 79, column: 22, scope: !1029)
!1031 = !DILocation(line: 79, column: 7, scope: !1012)
!1032 = !DILocation(line: 81, column: 3, scope: !1012)
!1033 = !DILocation(line: 80, column: 16, scope: !1029)
!1034 = !DILocation(line: 180, column: 19, scope: !99, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 80, column: 16, scope: !1029)
!1036 = !DILocation(line: 180, column: 30, scope: !99, inlinedAt: !1035)
!1037 = !DILocation(line: 180, column: 41, scope: !99, inlinedAt: !1035)
!1038 = !DILocation(line: 182, column: 10, scope: !99, inlinedAt: !1035)
!1039 = !DILocation(line: 184, column: 9, scope: !1040, inlinedAt: !1035)
!1040 = distinct !DILexicalBlock(scope: !99, file: !98, line: 184, column: 7)
!1041 = !DILocation(line: 184, column: 7, scope: !99, inlinedAt: !1035)
!1042 = !DILocation(line: 186, column: 11, scope: !1043, inlinedAt: !1035)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !98, line: 185, column: 5)
!1044 = !DILocation(line: 205, column: 11, scope: !1045, inlinedAt: !1035)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !98, line: 204, column: 11)
!1046 = distinct !DILexicalBlock(scope: !1040, file: !98, line: 199, column: 5)
!1047 = !DILocation(line: 204, column: 11, scope: !1046, inlinedAt: !1035)
!1048 = !DILocation(line: 206, column: 9, scope: !1045, inlinedAt: !1035)
!1049 = !DILocation(line: 207, column: 14, scope: !1046, inlinedAt: !1035)
!1050 = !DILocation(line: 207, column: 18, scope: !1046, inlinedAt: !1035)
!1051 = !DILocation(line: 207, column: 9, scope: !1046, inlinedAt: !1035)
!1052 = !DILocation(line: 210, column: 7, scope: !99, inlinedAt: !1035)
!1053 = !DILocation(line: 211, column: 25, scope: !99, inlinedAt: !1035)
!1054 = !DILocation(line: 211, column: 10, scope: !99, inlinedAt: !1035)
!1055 = !DILocation(line: 80, column: 14, scope: !1029)
!1056 = !DILocation(line: 80, column: 5, scope: !1029)
!1057 = !DILocation(line: 81, column: 26, scope: !1012)
!1058 = !DILocation(line: 81, column: 30, scope: !1012)
!1059 = !DILocation(line: 83, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1012, file: !72, line: 83, column: 7)
!1061 = !DILocation(line: 83, column: 24, scope: !1060)
!1062 = !DILocation(line: 83, column: 7, scope: !1012)
!1063 = !DILocation(line: 87, column: 24, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !72, line: 84, column: 5)
!1065 = !DILocation(line: 88, column: 5, scope: !1064)
!1066 = !DILocation(line: 89, column: 1, scope: !1012)
!1067 = distinct !DISubprogram(name: "parse_tab_stops", scope: !72, file: !72, line: 111, type: !39, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075, !1085}
!1069 = !DILocalVariable(name: "stops", arg: 1, scope: !1067, file: !72, line: 111, type: !41)
!1070 = !DILocalVariable(name: "have_tabval", scope: !1067, file: !72, line: 113, type: !193)
!1071 = !DILocalVariable(name: "tabval", scope: !1067, file: !72, line: 114, type: !25)
!1072 = !DILocalVariable(name: "extend_tabval", scope: !1067, file: !72, line: 115, type: !193)
!1073 = !DILocalVariable(name: "num_start", scope: !1067, file: !72, line: 116, type: !41)
!1074 = !DILocalVariable(name: "ok", scope: !1067, file: !72, line: 117, type: !193)
!1075 = !DILocalVariable(name: "len", scope: !1076, file: !72, line: 160, type: !103)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !72, line: 159, column: 13)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !72, line: 158, column: 15)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !72, line: 149, column: 9)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !72, line: 148, column: 16)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !72, line: 138, column: 16)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !72, line: 121, column: 11)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !72, line: 120, column: 5)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !72, line: 119, column: 3)
!1084 = distinct !DILexicalBlock(scope: !1067, file: !72, line: 119, column: 3)
!1085 = !DILocalVariable(name: "bad_num", scope: !1076, file: !72, line: 161, type: !21)
!1086 = !DILocation(line: 111, column: 30, scope: !1067)
!1087 = !DILocation(line: 113, column: 8, scope: !1067)
!1088 = !DILocation(line: 114, column: 13, scope: !1067)
!1089 = !DILocation(line: 115, column: 8, scope: !1067)
!1090 = !DILocation(line: 116, column: 15, scope: !1067)
!1091 = !DILocation(line: 117, column: 8, scope: !1067)
!1092 = !DILocation(line: 119, column: 3, scope: !1067)
!1093 = !DILocation(line: 119, column: 10, scope: !1083)
!1094 = !DILocation(line: 119, column: 3, scope: !1084)
!1095 = !DILocation(line: 121, column: 28, scope: !1081)
!1096 = !DILocation(line: 121, column: 11, scope: !1082)
!1097 = !DILocation(line: 123, column: 15, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !72, line: 123, column: 15)
!1099 = distinct !DILexicalBlock(scope: !1081, file: !72, line: 122, column: 9)
!1100 = !DILocation(line: 123, column: 15, scope: !1099)
!1101 = !DILocation(line: 125, column: 19, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !72, line: 125, column: 19)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !72, line: 124, column: 13)
!1104 = !DILocation(line: 125, column: 19, scope: !1103)
!1105 = !DILocalVariable(name: "tabval", arg: 1, scope: !1106, file: !72, line: 92, type: !25)
!1106 = distinct !DISubprogram(name: "set_extend_size", scope: !72, file: !72, line: 92, type: !1107, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!193, !25}
!1109 = !{!1105, !1110}
!1110 = !DILocalVariable(name: "ok", scope: !1106, file: !72, line: 94, type: !193)
!1111 = !DILocation(line: 92, column: 28, scope: !1106, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 127, column: 25, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !72, line: 127, column: 23)
!1114 = distinct !DILexicalBlock(scope: !1102, file: !72, line: 126, column: 17)
!1115 = !DILocation(line: 94, column: 8, scope: !1106, inlinedAt: !1112)
!1116 = !DILocation(line: 96, column: 7, scope: !1117, inlinedAt: !1112)
!1117 = distinct !DILexicalBlock(scope: !1106, file: !72, line: 96, column: 7)
!1118 = !DILocation(line: 96, column: 7, scope: !1106, inlinedAt: !1112)
!1119 = !DILocation(line: 103, column: 15, scope: !1106, inlinedAt: !1112)
!1120 = !DILocation(line: 127, column: 23, scope: !1114)
!1121 = !DILocation(line: 99, column: 14, scope: !1122, inlinedAt: !1112)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !72, line: 97, column: 5)
!1123 = !DILocation(line: 98, column: 7, scope: !1122, inlinedAt: !1112)
!1124 = !DILocation(line: 74, column: 25, scope: !1012, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 134, column: 17, scope: !1102)
!1126 = !DILocation(line: 76, column: 27, scope: !1012, inlinedAt: !1125)
!1127 = !DILocation(line: 76, column: 44, scope: !1012, inlinedAt: !1125)
!1128 = !DILocation(line: 76, column: 68, scope: !1012, inlinedAt: !1125)
!1129 = !DILocation(line: 76, column: 13, scope: !1012, inlinedAt: !1125)
!1130 = !DILocation(line: 77, column: 40, scope: !1012, inlinedAt: !1125)
!1131 = !DILocation(line: 77, column: 59, scope: !1012, inlinedAt: !1125)
!1132 = !DILocation(line: 77, column: 28, scope: !1012, inlinedAt: !1125)
!1133 = !DILocation(line: 77, column: 13, scope: !1012, inlinedAt: !1125)
!1134 = !DILocation(line: 79, column: 25, scope: !1029, inlinedAt: !1125)
!1135 = !DILocation(line: 79, column: 22, scope: !1029, inlinedAt: !1125)
!1136 = !DILocation(line: 79, column: 7, scope: !1012, inlinedAt: !1125)
!1137 = !DILocation(line: 81, column: 3, scope: !1012, inlinedAt: !1125)
!1138 = !DILocation(line: 80, column: 16, scope: !1029, inlinedAt: !1125)
!1139 = !DILocation(line: 180, column: 19, scope: !99, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 80, column: 16, scope: !1029, inlinedAt: !1125)
!1141 = !DILocation(line: 180, column: 30, scope: !99, inlinedAt: !1140)
!1142 = !DILocation(line: 180, column: 41, scope: !99, inlinedAt: !1140)
!1143 = !DILocation(line: 182, column: 10, scope: !99, inlinedAt: !1140)
!1144 = !DILocation(line: 184, column: 9, scope: !1040, inlinedAt: !1140)
!1145 = !DILocation(line: 184, column: 7, scope: !99, inlinedAt: !1140)
!1146 = !DILocation(line: 186, column: 11, scope: !1043, inlinedAt: !1140)
!1147 = !DILocation(line: 205, column: 11, scope: !1045, inlinedAt: !1140)
!1148 = !DILocation(line: 204, column: 11, scope: !1046, inlinedAt: !1140)
!1149 = !DILocation(line: 206, column: 9, scope: !1045, inlinedAt: !1140)
!1150 = !DILocation(line: 207, column: 14, scope: !1046, inlinedAt: !1140)
!1151 = !DILocation(line: 207, column: 18, scope: !1046, inlinedAt: !1140)
!1152 = !DILocation(line: 207, column: 9, scope: !1046, inlinedAt: !1140)
!1153 = !DILocation(line: 210, column: 7, scope: !99, inlinedAt: !1140)
!1154 = !DILocation(line: 211, column: 25, scope: !99, inlinedAt: !1140)
!1155 = !DILocation(line: 211, column: 10, scope: !99, inlinedAt: !1140)
!1156 = !DILocation(line: 80, column: 14, scope: !1029, inlinedAt: !1125)
!1157 = !DILocation(line: 80, column: 5, scope: !1029, inlinedAt: !1125)
!1158 = !DILocation(line: 81, column: 26, scope: !1012, inlinedAt: !1125)
!1159 = !DILocation(line: 81, column: 30, scope: !1012, inlinedAt: !1125)
!1160 = !DILocation(line: 83, column: 7, scope: !1060, inlinedAt: !1125)
!1161 = !DILocation(line: 83, column: 24, scope: !1060, inlinedAt: !1125)
!1162 = !DILocation(line: 83, column: 7, scope: !1012, inlinedAt: !1125)
!1163 = !DILocation(line: 87, column: 24, scope: !1064, inlinedAt: !1125)
!1164 = !DILocation(line: 88, column: 5, scope: !1064, inlinedAt: !1125)
!1165 = !DILocation(line: 138, column: 23, scope: !1080)
!1166 = !DILocation(line: 138, column: 16, scope: !1081)
!1167 = !DILocation(line: 140, column: 15, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !72, line: 140, column: 15)
!1169 = distinct !DILexicalBlock(scope: !1080, file: !72, line: 139, column: 9)
!1170 = !DILocation(line: 140, column: 15, scope: !1169)
!1171 = !DILocation(line: 142, column: 28, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !72, line: 141, column: 13)
!1173 = !DILocation(line: 143, column: 22, scope: !1172)
!1174 = !DILocation(line: 142, column: 15, scope: !1172)
!1175 = !DILocation(line: 145, column: 13, scope: !1172)
!1176 = !DILocation(line: 138, column: 16, scope: !1080)
!1177 = !DILocation(line: 148, column: 16, scope: !1079)
!1178 = !DILocation(line: 148, column: 16, scope: !1080)
!1179 = !DILocation(line: 150, column: 16, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1078, file: !72, line: 150, column: 15)
!1181 = !DILocation(line: 150, column: 15, scope: !1078)
!1182 = !DILocation(line: 158, column: 16, scope: !1077)
!1183 = !DILocation(line: 158, column: 15, scope: !1078)
!1184 = !DILocation(line: 160, column: 28, scope: !1076)
!1185 = !DILocation(line: 160, column: 22, scope: !1076)
!1186 = !DILocation(line: 161, column: 31, scope: !1076)
!1187 = !DILocation(line: 161, column: 21, scope: !1076)
!1188 = !DILocation(line: 162, column: 28, scope: !1076)
!1189 = !DILocation(line: 162, column: 59, scope: !1076)
!1190 = !DILocation(line: 162, column: 15, scope: !1076)
!1191 = !DILocation(line: 163, column: 15, scope: !1076)
!1192 = !DILocation(line: 165, column: 33, scope: !1076)
!1193 = !DILocation(line: 165, column: 39, scope: !1076)
!1194 = !DILocation(line: 166, column: 13, scope: !1076)
!1195 = !DILocation(line: 170, column: 24, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1079, file: !72, line: 169, column: 9)
!1197 = !DILocation(line: 171, column: 18, scope: !1196)
!1198 = !DILocation(line: 170, column: 11, scope: !1196)
!1199 = !DILocation(line: 173, column: 11, scope: !1196)
!1200 = !DILocation(line: 119, column: 23, scope: !1083)
!1201 = !DILocation(line: 119, column: 3, scope: !1083)
!1202 = distinct !{!1202, !1094, !1203}
!1203 = !DILocation(line: 175, column: 5, scope: !1084)
!1204 = !DILocation(line: 177, column: 10, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1067, file: !72, line: 177, column: 7)
!1206 = !DILocation(line: 179, column: 11, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !72, line: 179, column: 11)
!1208 = distinct !DILexicalBlock(scope: !1205, file: !72, line: 178, column: 5)
!1209 = !DILocation(line: 179, column: 11, scope: !1208)
!1210 = !DILocation(line: 92, column: 28, scope: !1106, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 180, column: 15, scope: !1207)
!1212 = !DILocation(line: 94, column: 8, scope: !1106, inlinedAt: !1211)
!1213 = !DILocation(line: 96, column: 7, scope: !1117, inlinedAt: !1211)
!1214 = !DILocation(line: 96, column: 7, scope: !1106, inlinedAt: !1211)
!1215 = !DILocation(line: 99, column: 14, scope: !1122, inlinedAt: !1211)
!1216 = !DILocation(line: 98, column: 7, scope: !1122, inlinedAt: !1211)
!1217 = !DILocation(line: 102, column: 5, scope: !1122, inlinedAt: !1211)
!1218 = !DILocation(line: 103, column: 15, scope: !1106, inlinedAt: !1211)
!1219 = !DILocation(line: 180, column: 9, scope: !1207)
!1220 = !DILocation(line: 74, column: 25, scope: !1012, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 182, column: 9, scope: !1207)
!1222 = !DILocation(line: 76, column: 27, scope: !1012, inlinedAt: !1221)
!1223 = !DILocation(line: 76, column: 44, scope: !1012, inlinedAt: !1221)
!1224 = !DILocation(line: 76, column: 68, scope: !1012, inlinedAt: !1221)
!1225 = !DILocation(line: 76, column: 13, scope: !1012, inlinedAt: !1221)
!1226 = !DILocation(line: 77, column: 40, scope: !1012, inlinedAt: !1221)
!1227 = !DILocation(line: 77, column: 59, scope: !1012, inlinedAt: !1221)
!1228 = !DILocation(line: 77, column: 28, scope: !1012, inlinedAt: !1221)
!1229 = !DILocation(line: 77, column: 13, scope: !1012, inlinedAt: !1221)
!1230 = !DILocation(line: 79, column: 25, scope: !1029, inlinedAt: !1221)
!1231 = !DILocation(line: 79, column: 22, scope: !1029, inlinedAt: !1221)
!1232 = !DILocation(line: 79, column: 7, scope: !1012, inlinedAt: !1221)
!1233 = !DILocation(line: 81, column: 3, scope: !1012, inlinedAt: !1221)
!1234 = !DILocation(line: 80, column: 16, scope: !1029, inlinedAt: !1221)
!1235 = !DILocation(line: 180, column: 19, scope: !99, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 80, column: 16, scope: !1029, inlinedAt: !1221)
!1237 = !DILocation(line: 180, column: 30, scope: !99, inlinedAt: !1236)
!1238 = !DILocation(line: 180, column: 41, scope: !99, inlinedAt: !1236)
!1239 = !DILocation(line: 182, column: 10, scope: !99, inlinedAt: !1236)
!1240 = !DILocation(line: 184, column: 9, scope: !1040, inlinedAt: !1236)
!1241 = !DILocation(line: 184, column: 7, scope: !99, inlinedAt: !1236)
!1242 = !DILocation(line: 186, column: 11, scope: !1043, inlinedAt: !1236)
!1243 = !DILocation(line: 205, column: 11, scope: !1045, inlinedAt: !1236)
!1244 = !DILocation(line: 204, column: 11, scope: !1046, inlinedAt: !1236)
!1245 = !DILocation(line: 206, column: 9, scope: !1045, inlinedAt: !1236)
!1246 = !DILocation(line: 207, column: 14, scope: !1046, inlinedAt: !1236)
!1247 = !DILocation(line: 207, column: 18, scope: !1046, inlinedAt: !1236)
!1248 = !DILocation(line: 207, column: 9, scope: !1046, inlinedAt: !1236)
!1249 = !DILocation(line: 210, column: 7, scope: !99, inlinedAt: !1236)
!1250 = !DILocation(line: 211, column: 25, scope: !99, inlinedAt: !1236)
!1251 = !DILocation(line: 211, column: 10, scope: !99, inlinedAt: !1236)
!1252 = !DILocation(line: 80, column: 14, scope: !1029, inlinedAt: !1221)
!1253 = !DILocation(line: 80, column: 5, scope: !1029, inlinedAt: !1221)
!1254 = !DILocation(line: 81, column: 26, scope: !1012, inlinedAt: !1221)
!1255 = !DILocation(line: 81, column: 30, scope: !1012, inlinedAt: !1221)
!1256 = !DILocation(line: 83, column: 7, scope: !1060, inlinedAt: !1221)
!1257 = !DILocation(line: 83, column: 24, scope: !1060, inlinedAt: !1221)
!1258 = !DILocation(line: 83, column: 7, scope: !1012, inlinedAt: !1221)
!1259 = !DILocation(line: 87, column: 24, scope: !1064, inlinedAt: !1221)
!1260 = !DILocation(line: 88, column: 5, scope: !1064, inlinedAt: !1221)
!1261 = !DILocation(line: 185, column: 9, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1067, file: !72, line: 185, column: 7)
!1263 = !DILocation(line: 185, column: 7, scope: !1067)
!1264 = !DILocation(line: 186, column: 5, scope: !1262)
!1265 = !DILocation(line: 187, column: 1, scope: !1067)
!1266 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !72, file: !72, line: 217, type: !707, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !206)
!1267 = !DILocation(line: 219, column: 23, scope: !1266)
!1268 = !DILocation(line: 219, column: 33, scope: !1266)
!1269 = !DILocalVariable(name: "tabs", arg: 1, scope: !1270, file: !72, line: 193, type: !1273)
!1270 = distinct !DISubprogram(name: "validate_tab_stops", scope: !72, file: !72, line: 193, type: !1271, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !1275)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !1273, !103}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!1275 = !{!1269, !1276, !1277, !1278}
!1276 = !DILocalVariable(name: "entries", arg: 2, scope: !1270, file: !72, line: 193, type: !103)
!1277 = !DILocalVariable(name: "prev_tab", scope: !1270, file: !72, line: 195, type: !25)
!1278 = !DILocalVariable(name: "i", scope: !1270, file: !72, line: 196, type: !103)
!1279 = !DILocation(line: 193, column: 38, scope: !1270, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 219, column: 3, scope: !1266)
!1281 = !DILocation(line: 193, column: 51, scope: !1270, inlinedAt: !1280)
!1282 = !DILocation(line: 195, column: 13, scope: !1270, inlinedAt: !1280)
!1283 = !DILocation(line: 196, column: 10, scope: !1270, inlinedAt: !1280)
!1284 = !DILocation(line: 198, column: 17, scope: !1285, inlinedAt: !1280)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !72, line: 198, column: 3)
!1286 = distinct !DILexicalBlock(scope: !1270, file: !72, line: 198, column: 3)
!1287 = !DILocation(line: 198, column: 3, scope: !1286, inlinedAt: !1280)
!1288 = !DILocation(line: 200, column: 11, scope: !1289, inlinedAt: !1280)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !72, line: 200, column: 11)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !72, line: 199, column: 5)
!1291 = distinct !{!1291, !1292, !1293}
!1292 = !DILocation(line: 198, column: 3, scope: !1286)
!1293 = !DILocation(line: 205, column: 5, scope: !1286)
!1294 = !DILocation(line: 200, column: 19, scope: !1289, inlinedAt: !1280)
!1295 = !DILocation(line: 200, column: 11, scope: !1290, inlinedAt: !1280)
!1296 = !DILocation(line: 201, column: 9, scope: !1289, inlinedAt: !1280)
!1297 = !DILocation(line: 202, column: 19, scope: !1298, inlinedAt: !1280)
!1298 = distinct !DILexicalBlock(scope: !1290, file: !72, line: 202, column: 11)
!1299 = !DILocation(line: 198, column: 29, scope: !1285, inlinedAt: !1280)
!1300 = !DILocation(line: 202, column: 11, scope: !1290, inlinedAt: !1280)
!1301 = !DILocation(line: 203, column: 9, scope: !1298, inlinedAt: !1280)
!1302 = !DILocation(line: 222, column: 35, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1266, file: !72, line: 221, column: 7)
!1304 = !DILocation(line: 222, column: 33, scope: !1303)
!1305 = !DILocation(line: 222, column: 5, scope: !1303)
!1306 = !DILocation(line: 223, column: 27, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !72, line: 223, column: 12)
!1308 = !DILocation(line: 223, column: 37, scope: !1307)
!1309 = !DILocation(line: 223, column: 32, scope: !1307)
!1310 = !DILocation(line: 224, column: 16, scope: !1307)
!1311 = !DILocation(line: 224, column: 5, scope: !1307)
!1312 = !DILocation(line: 227, column: 1, scope: !1266)
!1313 = distinct !DISubprogram(name: "get_next_tab_column", scope: !72, file: !72, line: 231, type: !1314, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !1317)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!25, !1274, !102, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1317 = !{!1318, !1319, !1320, !1321}
!1318 = !DILocalVariable(name: "column", arg: 1, scope: !1313, file: !72, line: 231, type: !1274)
!1319 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1313, file: !72, line: 231, type: !102)
!1320 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1313, file: !72, line: 232, type: !1316)
!1321 = !DILocalVariable(name: "tab", scope: !1322, file: !72, line: 244, type: !25)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !72, line: 243, column: 5)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !72, line: 242, column: 3)
!1324 = distinct !DILexicalBlock(scope: !1313, file: !72, line: 242, column: 3)
!1325 = !DILocation(line: 231, column: 38, scope: !1313)
!1326 = !DILocation(line: 231, column: 54, scope: !1313)
!1327 = !DILocation(line: 232, column: 28, scope: !1313)
!1328 = !DILocation(line: 234, column: 13, scope: !1313)
!1329 = !DILocation(line: 237, column: 7, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1313, file: !72, line: 237, column: 7)
!1331 = !DILocation(line: 237, column: 7, scope: !1313)
!1332 = !DILocation(line: 238, column: 40, scope: !1330)
!1333 = !DILocation(line: 238, column: 31, scope: !1330)
!1334 = !DILocation(line: 238, column: 19, scope: !1330)
!1335 = !DILocation(line: 238, column: 5, scope: !1330)
!1336 = !DILocation(line: 242, column: 11, scope: !1323)
!1337 = !DILocation(line: 242, column: 24, scope: !1323)
!1338 = !DILocation(line: 242, column: 22, scope: !1323)
!1339 = !DILocation(line: 242, column: 3, scope: !1324)
!1340 = !DILocation(line: 244, column: 25, scope: !1322)
!1341 = !DILocation(line: 244, column: 19, scope: !1322)
!1342 = !DILocation(line: 245, column: 20, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1322, file: !72, line: 245, column: 13)
!1344 = !DILocation(line: 242, column: 53, scope: !1323)
!1345 = distinct !{!1345, !1339, !1346}
!1346 = !DILocation(line: 247, column: 5, scope: !1324)
!1347 = !DILocation(line: 250, column: 7, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1313, file: !72, line: 250, column: 7)
!1349 = !DILocation(line: 250, column: 7, scope: !1313)
!1350 = !DILocation(line: 251, column: 43, scope: !1348)
!1351 = !DILocation(line: 251, column: 34, scope: !1348)
!1352 = !DILocation(line: 251, column: 19, scope: !1348)
!1353 = !DILocation(line: 251, column: 5, scope: !1348)
!1354 = !DILocation(line: 253, column: 13, scope: !1313)
!1355 = !DILocation(line: 254, column: 3, scope: !1313)
!1356 = !DILocation(line: 255, column: 1, scope: !1313)
!1357 = distinct !DISubprogram(name: "set_file_list", scope: !72, file: !72, line: 262, type: !1358, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !1360)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{null, !201}
!1360 = !{!1361}
!1361 = !DILocalVariable(name: "list", arg: 1, scope: !1357, file: !72, line: 262, type: !201)
!1362 = !DILocation(line: 262, column: 23, scope: !1357)
!1363 = !DILocation(line: 266, column: 8, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1357, file: !72, line: 266, column: 7)
!1365 = !DILocation(line: 266, column: 7, scope: !1357)
!1366 = !DILocation(line: 270, column: 1, scope: !1357)
!1367 = !DILocation(line: 278, column: 18, scope: !119)
!1368 = !DILocation(line: 283, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !119, file: !72, line: 283, column: 7)
!1370 = !DILocation(line: 283, column: 7, scope: !119)
!1371 = !DILocalVariable(name: "__stream", arg: 1, scope: !1372, file: !885, line: 132, type: !122)
!1372 = distinct !DISubprogram(name: "ferror_unlocked", scope: !885, file: !885, line: 132, type: !1373, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !1375)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!30, !122}
!1375 = !{!1371}
!1376 = !DILocation(line: 132, column: 1, scope: !1372, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 285, column: 11, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !72, line: 285, column: 11)
!1379 = distinct !DILexicalBlock(scope: !1369, file: !72, line: 284, column: 5)
!1380 = !DILocation(line: 134, column: 10, scope: !1372, inlinedAt: !1377)
!1381 = !{!893, !794, i64 0}
!1382 = !DILocation(line: 285, column: 11, scope: !1378)
!1383 = !DILocation(line: 285, column: 11, scope: !1379)
!1384 = !DILocation(line: 287, column: 21, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1378, file: !72, line: 286, column: 9)
!1386 = !DILocation(line: 287, column: 34, scope: !1385)
!1387 = !DILocation(line: 287, column: 11, scope: !1385)
!1388 = !DILocation(line: 288, column: 23, scope: !1385)
!1389 = !DILocation(line: 289, column: 9, scope: !1385)
!1390 = !DILocation(line: 290, column: 11, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1379, file: !72, line: 290, column: 11)
!1392 = !DILocation(line: 290, column: 11, scope: !1379)
!1393 = !DILocation(line: 291, column: 9, scope: !1391)
!1394 = !DILocation(line: 292, column: 16, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !72, line: 292, column: 16)
!1396 = !DILocation(line: 292, column: 28, scope: !1395)
!1397 = !DILocation(line: 292, column: 16, scope: !1391)
!1398 = !DILocation(line: 294, column: 21, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !72, line: 293, column: 9)
!1400 = !DILocation(line: 294, column: 34, scope: !1399)
!1401 = !DILocation(line: 294, column: 11, scope: !1399)
!1402 = !DILocation(line: 295, column: 23, scope: !1399)
!1403 = !DILocation(line: 296, column: 9, scope: !1399)
!1404 = !DILocation(line: 299, column: 28, scope: !119)
!1405 = !DILocation(line: 299, column: 18, scope: !119)
!1406 = !DILocation(line: 281, column: 9, scope: !119)
!1407 = !DILocation(line: 299, column: 32, scope: !119)
!1408 = !DILocation(line: 299, column: 3, scope: !119)
!1409 = !DILocation(line: 301, column: 11, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !72, line: 301, column: 11)
!1411 = distinct !DILexicalBlock(scope: !119, file: !72, line: 300, column: 5)
!1412 = !DILocation(line: 301, column: 11, scope: !1411)
!1413 = !DILocation(line: 304, column: 16, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !72, line: 302, column: 9)
!1415 = !DILocation(line: 305, column: 9, scope: !1414)
!1416 = !DILocation(line: 307, column: 14, scope: !1410)
!1417 = !DILocation(line: 308, column: 11, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1411, file: !72, line: 308, column: 11)
!1419 = !DILocation(line: 308, column: 11, scope: !1411)
!1420 = !DILocation(line: 310, column: 21, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !72, line: 309, column: 9)
!1422 = !DILocation(line: 311, column: 11, scope: !1421)
!1423 = !DILocation(line: 312, column: 11, scope: !1421)
!1424 = !DILocation(line: 314, column: 17, scope: !1411)
!1425 = !DILocation(line: 314, column: 30, scope: !1411)
!1426 = !DILocation(line: 314, column: 7, scope: !1411)
!1427 = !DILocation(line: 315, column: 19, scope: !1411)
!1428 = distinct !{!1428, !1408, !1429}
!1429 = !DILocation(line: 316, column: 5, scope: !119)
!1430 = !DILocation(line: 318, column: 1, scope: !119)
!1431 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !72, file: !72, line: 322, type: !707, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !71, variables: !206)
!1432 = !DILocation(line: 324, column: 25, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1431, file: !72, line: 324, column: 9)
!1434 = !DILocation(line: 324, column: 36, scope: !1433)
!1435 = !DILocation(line: 324, column: 28, scope: !1433)
!1436 = !DILocation(line: 324, column: 43, scope: !1433)
!1437 = !DILocation(line: 324, column: 9, scope: !1431)
!1438 = !DILocation(line: 325, column: 7, scope: !1433)
!1439 = !DILocation(line: 326, column: 1, scope: !1431)
!1440 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !215, file: !215, line: 41, type: !39, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !1441)
!1441 = !{!1442}
!1442 = !DILocalVariable(name: "file", arg: 1, scope: !1440, file: !215, line: 41, type: !41)
!1443 = !DILocation(line: 41, column: 41, scope: !1440)
!1444 = !DILocation(line: 43, column: 13, scope: !1440)
!1445 = !DILocation(line: 44, column: 1, scope: !1440)
!1446 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !215, file: !215, line: 78, type: !1447, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !1449)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !193}
!1449 = !{!1450}
!1450 = !DILocalVariable(name: "ignore", arg: 1, scope: !1446, file: !215, line: 78, type: !193)
!1451 = !DILocation(line: 78, column: 37, scope: !1446)
!1452 = !DILocation(line: 80, column: 16, scope: !1446)
!1453 = !DILocation(line: 81, column: 1, scope: !1446)
!1454 = distinct !DISubprogram(name: "close_stdout", scope: !215, file: !215, line: 107, type: !707, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !210, variables: !1455)
!1455 = !{!1456}
!1456 = !DILocalVariable(name: "write_error", scope: !1457, file: !215, line: 112, type: !41)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !215, line: 111, column: 5)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !215, line: 109, column: 7)
!1459 = !DILocation(line: 109, column: 21, scope: !1458)
!1460 = !DILocation(line: 109, column: 7, scope: !1458)
!1461 = !DILocation(line: 109, column: 29, scope: !1458)
!1462 = !DILocation(line: 110, column: 7, scope: !1458)
!1463 = !DILocation(line: 110, column: 12, scope: !1458)
!1464 = !DILocation(line: 114, column: 19, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1457, file: !215, line: 113, column: 11)
!1466 = !DILocation(line: 110, column: 25, scope: !1458)
!1467 = !DILocation(line: 110, column: 28, scope: !1458)
!1468 = !DILocation(line: 110, column: 34, scope: !1458)
!1469 = !DILocation(line: 109, column: 7, scope: !1454)
!1470 = !DILocation(line: 112, column: 33, scope: !1457)
!1471 = !DILocation(line: 112, column: 19, scope: !1457)
!1472 = !DILocation(line: 113, column: 11, scope: !1465)
!1473 = !DILocation(line: 113, column: 11, scope: !1457)
!1474 = !DILocation(line: 114, column: 36, scope: !1465)
!1475 = !DILocation(line: 114, column: 9, scope: !1465)
!1476 = !DILocation(line: 117, column: 9, scope: !1465)
!1477 = !DILocation(line: 119, column: 14, scope: !1457)
!1478 = !DILocation(line: 119, column: 7, scope: !1457)
!1479 = !DILocation(line: 122, column: 22, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1454, file: !215, line: 122, column: 8)
!1481 = !DILocation(line: 122, column: 8, scope: !1480)
!1482 = !DILocation(line: 122, column: 30, scope: !1480)
!1483 = !DILocation(line: 122, column: 8, scope: !1454)
!1484 = !DILocation(line: 123, column: 13, scope: !1480)
!1485 = !DILocation(line: 123, column: 6, scope: !1480)
!1486 = !DILocation(line: 124, column: 1, scope: !1454)
!1487 = distinct !DISubprogram(name: "fdadvise", scope: !1488, file: !1488, line: 31, type: !1489, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !1494)
!1488 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !30, !1491, !1491, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1492, line: 57, baseType: !152)
!1492 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !89, line: 52, baseType: !88)
!1494 = !{!1495, !1496, !1497, !1498, !1499}
!1495 = !DILocalVariable(name: "fd", arg: 1, scope: !1487, file: !1488, line: 31, type: !30)
!1496 = !DILocalVariable(name: "offset", arg: 2, scope: !1487, file: !1488, line: 31, type: !1491)
!1497 = !DILocalVariable(name: "len", arg: 3, scope: !1487, file: !1488, line: 31, type: !1491)
!1498 = !DILocalVariable(name: "advice", arg: 4, scope: !1487, file: !1488, line: 31, type: !1493)
!1499 = !DILocalVariable(name: "__x", scope: !1500, file: !1488, line: 34, type: !30)
!1500 = distinct !DILexicalBlock(scope: !1487, file: !1488, line: 34, column: 3)
!1501 = !DILocation(line: 31, column: 15, scope: !1487)
!1502 = !DILocation(line: 31, column: 25, scope: !1487)
!1503 = !DILocation(line: 31, column: 39, scope: !1487)
!1504 = !DILocation(line: 31, column: 54, scope: !1487)
!1505 = !DILocation(line: 34, column: 3, scope: !1500)
!1506 = !DILocation(line: 36, column: 1, scope: !1487)
!1507 = distinct !DISubprogram(name: "fadvise", scope: !1488, file: !1488, line: 39, type: !1508, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !1550)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !1510, !1493}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !124, line: 7, baseType: !1512)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !126, line: 241, size: 1728, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1512, file: !126, line: 242, baseType: !30, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1512, file: !126, line: 247, baseType: !21, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1512, file: !126, line: 248, baseType: !21, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1512, file: !126, line: 249, baseType: !21, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1512, file: !126, line: 250, baseType: !21, size: 64, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1512, file: !126, line: 251, baseType: !21, size: 64, offset: 320)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1512, file: !126, line: 252, baseType: !21, size: 64, offset: 384)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1512, file: !126, line: 253, baseType: !21, size: 64, offset: 448)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1512, file: !126, line: 254, baseType: !21, size: 64, offset: 512)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1512, file: !126, line: 256, baseType: !21, size: 64, offset: 576)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1512, file: !126, line: 257, baseType: !21, size: 64, offset: 640)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1512, file: !126, line: 258, baseType: !21, size: 64, offset: 704)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1512, file: !126, line: 260, baseType: !1527, size: 64, offset: 768)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !126, line: 156, size: 192, elements: !1529)
!1529 = !{!1530, !1531, !1533}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1528, file: !126, line: 157, baseType: !1527, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1528, file: !126, line: 158, baseType: !1532, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1528, file: !126, line: 162, baseType: !30, size: 32, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1512, file: !126, line: 262, baseType: !1532, size: 64, offset: 832)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1512, file: !126, line: 264, baseType: !30, size: 32, offset: 896)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1512, file: !126, line: 268, baseType: !30, size: 32, offset: 928)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1512, file: !126, line: 270, baseType: !152, size: 64, offset: 960)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1512, file: !126, line: 274, baseType: !31, size: 16, offset: 1024)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1512, file: !126, line: 275, baseType: !156, size: 8, offset: 1040)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1512, file: !126, line: 276, baseType: !158, size: 8, offset: 1048)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1512, file: !126, line: 280, baseType: !162, size: 64, offset: 1088)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1512, file: !126, line: 289, baseType: !165, size: 64, offset: 1152)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1512, file: !126, line: 297, baseType: !23, size: 64, offset: 1216)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1512, file: !126, line: 298, baseType: !23, size: 64, offset: 1280)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1512, file: !126, line: 299, baseType: !23, size: 64, offset: 1344)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1512, file: !126, line: 300, baseType: !23, size: 64, offset: 1408)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1512, file: !126, line: 302, baseType: !103, size: 64, offset: 1472)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1512, file: !126, line: 303, baseType: !30, size: 32, offset: 1536)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1512, file: !126, line: 305, baseType: !173, size: 160, offset: 1568)
!1550 = !{!1551, !1552}
!1551 = !DILocalVariable(name: "fp", arg: 1, scope: !1507, file: !1488, line: 39, type: !1510)
!1552 = !DILocalVariable(name: "advice", arg: 2, scope: !1507, file: !1488, line: 39, type: !1493)
!1553 = !DILocation(line: 39, column: 16, scope: !1507)
!1554 = !DILocation(line: 39, column: 30, scope: !1507)
!1555 = !DILocation(line: 41, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1507, file: !1488, line: 41, column: 7)
!1557 = !DILocation(line: 41, column: 7, scope: !1507)
!1558 = !DILocation(line: 42, column: 15, scope: !1556)
!1559 = !DILocation(line: 31, column: 15, scope: !1487, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 42, column: 5, scope: !1556)
!1561 = !DILocation(line: 31, column: 25, scope: !1487, inlinedAt: !1560)
!1562 = !DILocation(line: 31, column: 39, scope: !1487, inlinedAt: !1560)
!1563 = !DILocation(line: 31, column: 54, scope: !1487, inlinedAt: !1560)
!1564 = !DILocation(line: 34, column: 3, scope: !1500, inlinedAt: !1560)
!1565 = !DILocation(line: 42, column: 5, scope: !1556)
!1566 = !DILocation(line: 43, column: 1, scope: !1507)
!1567 = distinct !DISubprogram(name: "set_program_name", scope: !229, file: !229, line: 39, type: !39, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !225, variables: !1568)
!1568 = !{!1569, !1570, !1571}
!1569 = !DILocalVariable(name: "argv0", arg: 1, scope: !1567, file: !229, line: 39, type: !41)
!1570 = !DILocalVariable(name: "slash", scope: !1567, file: !229, line: 46, type: !41)
!1571 = !DILocalVariable(name: "base", scope: !1567, file: !229, line: 47, type: !41)
!1572 = !DILocation(line: 39, column: 31, scope: !1567)
!1573 = !DILocation(line: 51, column: 13, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1567, file: !229, line: 51, column: 7)
!1575 = !DILocation(line: 51, column: 7, scope: !1567)
!1576 = !DILocation(line: 55, column: 14, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !229, line: 52, column: 5)
!1578 = !DILocation(line: 54, column: 7, scope: !1577)
!1579 = !DILocation(line: 56, column: 7, scope: !1577)
!1580 = !DILocation(line: 59, column: 11, scope: !1567)
!1581 = !DILocation(line: 46, column: 15, scope: !1567)
!1582 = !DILocation(line: 60, column: 17, scope: !1567)
!1583 = !DILocation(line: 60, column: 33, scope: !1567)
!1584 = !DILocation(line: 60, column: 11, scope: !1567)
!1585 = !DILocation(line: 47, column: 15, scope: !1567)
!1586 = !DILocation(line: 61, column: 12, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1567, file: !229, line: 61, column: 7)
!1588 = !DILocation(line: 61, column: 20, scope: !1587)
!1589 = !DILocation(line: 61, column: 25, scope: !1587)
!1590 = !DILocation(line: 61, column: 42, scope: !1587)
!1591 = !DILocation(line: 61, column: 28, scope: !1587)
!1592 = !DILocation(line: 61, column: 61, scope: !1587)
!1593 = !DILocation(line: 61, column: 7, scope: !1567)
!1594 = !DILocation(line: 64, column: 11, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !229, line: 64, column: 11)
!1596 = distinct !DILexicalBlock(scope: !1587, file: !229, line: 62, column: 5)
!1597 = !DILocation(line: 64, column: 36, scope: !1595)
!1598 = !DILocation(line: 64, column: 11, scope: !1596)
!1599 = !DILocation(line: 66, column: 24, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !229, line: 65, column: 9)
!1601 = !DILocation(line: 70, column: 41, scope: !1600)
!1602 = !DILocation(line: 72, column: 9, scope: !1600)
!1603 = !DILocation(line: 84, column: 16, scope: !1567)
!1604 = !DILocation(line: 90, column: 27, scope: !1567)
!1605 = !DILocation(line: 92, column: 1, scope: !1567)
!1606 = distinct !DISubprogram(name: "clone_quoting_options", scope: !244, file: !244, line: 114, type: !1607, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !1610)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!1609, !1609}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!1610 = !{!1611, !1612, !1613}
!1611 = !DILocalVariable(name: "o", arg: 1, scope: !1606, file: !244, line: 114, type: !1609)
!1612 = !DILocalVariable(name: "e", scope: !1606, file: !244, line: 116, type: !30)
!1613 = !DILocalVariable(name: "p", scope: !1606, file: !244, line: 117, type: !1609)
!1614 = !DILocation(line: 114, column: 48, scope: !1606)
!1615 = !DILocation(line: 116, column: 11, scope: !1606)
!1616 = !DILocation(line: 116, column: 7, scope: !1606)
!1617 = !DILocation(line: 117, column: 40, scope: !1606)
!1618 = !DILocation(line: 117, column: 31, scope: !1606)
!1619 = !DILocation(line: 117, column: 27, scope: !1606)
!1620 = !DILocation(line: 119, column: 9, scope: !1606)
!1621 = !DILocation(line: 120, column: 3, scope: !1606)
!1622 = distinct !DISubprogram(name: "get_quoting_style", scope: !244, file: !244, line: 125, type: !1623, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !1627)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!74, !1625}
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!1627 = !{!1628}
!1628 = !DILocalVariable(name: "o", arg: 1, scope: !1622, file: !244, line: 125, type: !1625)
!1629 = !DILocation(line: 125, column: 50, scope: !1622)
!1630 = !DILocation(line: 127, column: 11, scope: !1622)
!1631 = !DILocation(line: 127, column: 46, scope: !1622)
!1632 = !{!1633, !700, i64 0}
!1633 = !{!"quoting_options", !700, i64 0, !794, i64 4, !700, i64 8, !699, i64 40, !699, i64 48}
!1634 = !DILocation(line: 127, column: 3, scope: !1622)
!1635 = distinct !DISubprogram(name: "set_quoting_style", scope: !244, file: !244, line: 133, type: !1636, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !1638)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1609, !74}
!1638 = !{!1639, !1640}
!1639 = !DILocalVariable(name: "o", arg: 1, scope: !1635, file: !244, line: 133, type: !1609)
!1640 = !DILocalVariable(name: "s", arg: 2, scope: !1635, file: !244, line: 133, type: !74)
!1641 = !DILocation(line: 133, column: 44, scope: !1635)
!1642 = !DILocation(line: 133, column: 66, scope: !1635)
!1643 = !DILocation(line: 135, column: 4, scope: !1635)
!1644 = !DILocation(line: 135, column: 39, scope: !1635)
!1645 = !DILocation(line: 135, column: 45, scope: !1635)
!1646 = !DILocation(line: 136, column: 1, scope: !1635)
!1647 = distinct !DISubprogram(name: "set_char_quoting", scope: !244, file: !244, line: 144, type: !1648, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !1650)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!30, !1609, !22, !30}
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1657, !1658}
!1651 = !DILocalVariable(name: "o", arg: 1, scope: !1647, file: !244, line: 144, type: !1609)
!1652 = !DILocalVariable(name: "c", arg: 2, scope: !1647, file: !244, line: 144, type: !22)
!1653 = !DILocalVariable(name: "i", arg: 3, scope: !1647, file: !244, line: 144, type: !30)
!1654 = !DILocalVariable(name: "uc", scope: !1647, file: !244, line: 146, type: !33)
!1655 = !DILocalVariable(name: "p", scope: !1647, file: !244, line: 147, type: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1657 = !DILocalVariable(name: "shift", scope: !1647, file: !244, line: 149, type: !30)
!1658 = !DILocalVariable(name: "r", scope: !1647, file: !244, line: 150, type: !30)
!1659 = !DILocation(line: 144, column: 43, scope: !1647)
!1660 = !DILocation(line: 144, column: 51, scope: !1647)
!1661 = !DILocation(line: 144, column: 58, scope: !1647)
!1662 = !DILocation(line: 146, column: 17, scope: !1647)
!1663 = !DILocation(line: 148, column: 6, scope: !1647)
!1664 = !DILocation(line: 148, column: 62, scope: !1647)
!1665 = !DILocation(line: 148, column: 57, scope: !1647)
!1666 = !DILocation(line: 147, column: 17, scope: !1647)
!1667 = !DILocation(line: 149, column: 18, scope: !1647)
!1668 = !DILocation(line: 149, column: 15, scope: !1647)
!1669 = !DILocation(line: 149, column: 7, scope: !1647)
!1670 = !DILocation(line: 150, column: 12, scope: !1647)
!1671 = !DILocation(line: 150, column: 15, scope: !1647)
!1672 = !DILocation(line: 150, column: 25, scope: !1647)
!1673 = !DILocation(line: 150, column: 7, scope: !1647)
!1674 = !DILocation(line: 151, column: 13, scope: !1647)
!1675 = !DILocation(line: 151, column: 18, scope: !1647)
!1676 = !DILocation(line: 151, column: 23, scope: !1647)
!1677 = !DILocation(line: 151, column: 6, scope: !1647)
!1678 = !DILocation(line: 152, column: 3, scope: !1647)
!1679 = distinct !DISubprogram(name: "set_quoting_flags", scope: !244, file: !244, line: 160, type: !1680, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !1682)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!30, !1609, !30}
!1682 = !{!1683, !1684, !1685}
!1683 = !DILocalVariable(name: "o", arg: 1, scope: !1679, file: !244, line: 160, type: !1609)
!1684 = !DILocalVariable(name: "i", arg: 2, scope: !1679, file: !244, line: 160, type: !30)
!1685 = !DILocalVariable(name: "r", scope: !1679, file: !244, line: 162, type: !30)
!1686 = !DILocation(line: 160, column: 44, scope: !1679)
!1687 = !DILocation(line: 160, column: 51, scope: !1679)
!1688 = !DILocation(line: 163, column: 8, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1679, file: !244, line: 163, column: 7)
!1690 = !DILocation(line: 163, column: 7, scope: !1679)
!1691 = !DILocation(line: 165, column: 10, scope: !1679)
!1692 = !{!1633, !794, i64 4}
!1693 = !DILocation(line: 162, column: 7, scope: !1679)
!1694 = !DILocation(line: 166, column: 12, scope: !1679)
!1695 = !DILocation(line: 167, column: 3, scope: !1679)
!1696 = distinct !DISubprogram(name: "set_custom_quoting", scope: !244, file: !244, line: 171, type: !1697, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !1699)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !1609, !41, !41}
!1699 = !{!1700, !1701, !1702}
!1700 = !DILocalVariable(name: "o", arg: 1, scope: !1696, file: !244, line: 171, type: !1609)
!1701 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1696, file: !244, line: 172, type: !41)
!1702 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1696, file: !244, line: 172, type: !41)
!1703 = !DILocation(line: 171, column: 45, scope: !1696)
!1704 = !DILocation(line: 172, column: 33, scope: !1696)
!1705 = !DILocation(line: 172, column: 57, scope: !1696)
!1706 = !DILocation(line: 174, column: 8, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1696, file: !244, line: 174, column: 7)
!1708 = !DILocation(line: 174, column: 7, scope: !1696)
!1709 = !DILocation(line: 176, column: 6, scope: !1696)
!1710 = !DILocation(line: 176, column: 12, scope: !1696)
!1711 = !DILocation(line: 177, column: 8, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1696, file: !244, line: 177, column: 7)
!1713 = !DILocation(line: 177, column: 23, scope: !1712)
!1714 = !DILocation(line: 177, column: 19, scope: !1712)
!1715 = !DILocation(line: 178, column: 5, scope: !1712)
!1716 = !DILocation(line: 179, column: 6, scope: !1696)
!1717 = !DILocation(line: 179, column: 17, scope: !1696)
!1718 = !{!1633, !699, i64 40}
!1719 = !DILocation(line: 180, column: 6, scope: !1696)
!1720 = !DILocation(line: 180, column: 18, scope: !1696)
!1721 = !{!1633, !699, i64 48}
!1722 = !DILocation(line: 181, column: 1, scope: !1696)
!1723 = distinct !DISubprogram(name: "quotearg_buffer", scope: !244, file: !244, line: 776, type: !1724, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!103, !21, !103, !41, !103, !1625}
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734}
!1727 = !DILocalVariable(name: "buffer", arg: 1, scope: !1723, file: !244, line: 776, type: !21)
!1728 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1723, file: !244, line: 776, type: !103)
!1729 = !DILocalVariable(name: "arg", arg: 3, scope: !1723, file: !244, line: 777, type: !41)
!1730 = !DILocalVariable(name: "argsize", arg: 4, scope: !1723, file: !244, line: 777, type: !103)
!1731 = !DILocalVariable(name: "o", arg: 5, scope: !1723, file: !244, line: 778, type: !1625)
!1732 = !DILocalVariable(name: "p", scope: !1723, file: !244, line: 780, type: !1625)
!1733 = !DILocalVariable(name: "e", scope: !1723, file: !244, line: 781, type: !30)
!1734 = !DILocalVariable(name: "r", scope: !1723, file: !244, line: 782, type: !103)
!1735 = !DILocation(line: 776, column: 24, scope: !1723)
!1736 = !DILocation(line: 776, column: 39, scope: !1723)
!1737 = !DILocation(line: 777, column: 30, scope: !1723)
!1738 = !DILocation(line: 777, column: 42, scope: !1723)
!1739 = !DILocation(line: 778, column: 48, scope: !1723)
!1740 = !DILocation(line: 780, column: 37, scope: !1723)
!1741 = !DILocation(line: 780, column: 33, scope: !1723)
!1742 = !DILocation(line: 781, column: 11, scope: !1723)
!1743 = !DILocation(line: 781, column: 7, scope: !1723)
!1744 = !DILocation(line: 783, column: 43, scope: !1723)
!1745 = !DILocation(line: 783, column: 53, scope: !1723)
!1746 = !DILocation(line: 783, column: 60, scope: !1723)
!1747 = !DILocation(line: 784, column: 43, scope: !1723)
!1748 = !DILocation(line: 784, column: 58, scope: !1723)
!1749 = !DILocation(line: 782, column: 14, scope: !1723)
!1750 = !DILocation(line: 782, column: 10, scope: !1723)
!1751 = !DILocation(line: 785, column: 9, scope: !1723)
!1752 = !DILocation(line: 786, column: 3, scope: !1723)
!1753 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !244, file: !244, line: 248, type: !1754, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !1758)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!103, !21, !103, !41, !103, !74, !30, !1756, !41, !41}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1783, !1784, !1785, !1786, !1787, !1790, !1791, !1809, !1812, !1813, !1820}
!1759 = !DILocalVariable(name: "buffer", arg: 1, scope: !1753, file: !244, line: 248, type: !21)
!1760 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1753, file: !244, line: 248, type: !103)
!1761 = !DILocalVariable(name: "arg", arg: 3, scope: !1753, file: !244, line: 249, type: !41)
!1762 = !DILocalVariable(name: "argsize", arg: 4, scope: !1753, file: !244, line: 249, type: !103)
!1763 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1753, file: !244, line: 250, type: !74)
!1764 = !DILocalVariable(name: "flags", arg: 6, scope: !1753, file: !244, line: 250, type: !30)
!1765 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1753, file: !244, line: 251, type: !1756)
!1766 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1753, file: !244, line: 252, type: !41)
!1767 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1753, file: !244, line: 253, type: !41)
!1768 = !DILocalVariable(name: "i", scope: !1753, file: !244, line: 255, type: !103)
!1769 = !DILocalVariable(name: "len", scope: !1753, file: !244, line: 256, type: !103)
!1770 = !DILocalVariable(name: "orig_buffersize", scope: !1753, file: !244, line: 257, type: !103)
!1771 = !DILocalVariable(name: "quote_string", scope: !1753, file: !244, line: 258, type: !41)
!1772 = !DILocalVariable(name: "quote_string_len", scope: !1753, file: !244, line: 259, type: !103)
!1773 = !DILocalVariable(name: "backslash_escapes", scope: !1753, file: !244, line: 260, type: !193)
!1774 = !DILocalVariable(name: "unibyte_locale", scope: !1753, file: !244, line: 261, type: !193)
!1775 = !DILocalVariable(name: "elide_outer_quotes", scope: !1753, file: !244, line: 262, type: !193)
!1776 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1753, file: !244, line: 263, type: !193)
!1777 = !DILocalVariable(name: "encountered_single_quote", scope: !1753, file: !244, line: 264, type: !193)
!1778 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1753, file: !244, line: 265, type: !193)
!1779 = !DILocalVariable(name: "c", scope: !1780, file: !244, line: 394, type: !33)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !244, line: 393, column: 5)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !244, line: 392, column: 3)
!1782 = distinct !DILexicalBlock(scope: !1753, file: !244, line: 392, column: 3)
!1783 = !DILocalVariable(name: "esc", scope: !1780, file: !244, line: 395, type: !33)
!1784 = !DILocalVariable(name: "is_right_quote", scope: !1780, file: !244, line: 396, type: !193)
!1785 = !DILocalVariable(name: "escaping", scope: !1780, file: !244, line: 397, type: !193)
!1786 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1780, file: !244, line: 398, type: !193)
!1787 = !DILocalVariable(name: "m", scope: !1788, file: !244, line: 602, type: !103)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !244, line: 600, column: 11)
!1789 = distinct !DILexicalBlock(scope: !1780, file: !244, line: 418, column: 9)
!1790 = !DILocalVariable(name: "printable", scope: !1788, file: !244, line: 604, type: !193)
!1791 = !DILocalVariable(name: "mbstate", scope: !1792, file: !244, line: 613, type: !1794)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !244, line: 612, column: 15)
!1793 = distinct !DILexicalBlock(scope: !1788, file: !244, line: 606, column: 17)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1795, line: 6, baseType: !1796)
!1795 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1797, line: 21, baseType: !1798)
!1797 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1797, line: 13, size: 64, elements: !1799)
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1798, file: !1797, line: 15, baseType: !30, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1798, file: !1797, line: 20, baseType: !1802, size: 32, offset: 32)
!1802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1798, file: !1797, line: 16, size: 32, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1802, file: !1797, line: 18, baseType: !113, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1802, file: !1797, line: 19, baseType: !1806, size: 32)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !1807)
!1807 = !{!1808}
!1808 = !DISubrange(count: 4)
!1809 = !DILocalVariable(name: "w", scope: !1810, file: !244, line: 623, type: !1811)
!1810 = distinct !DILexicalBlock(scope: !1792, file: !244, line: 622, column: 19)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !104, line: 90, baseType: !30)
!1812 = !DILocalVariable(name: "bytes", scope: !1810, file: !244, line: 624, type: !103)
!1813 = !DILocalVariable(name: "j", scope: !1814, file: !244, line: 649, type: !103)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !244, line: 648, column: 27)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !244, line: 646, column: 29)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !244, line: 641, column: 23)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !244, line: 633, column: 30)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !244, line: 628, column: 30)
!1819 = distinct !DILexicalBlock(scope: !1810, file: !244, line: 626, column: 25)
!1820 = !DILocalVariable(name: "ilim", scope: !1821, file: !244, line: 676, type: !103)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !244, line: 673, column: 15)
!1822 = distinct !DILexicalBlock(scope: !1788, file: !244, line: 672, column: 17)
!1823 = !DILocation(line: 248, column: 33, scope: !1753)
!1824 = !DILocation(line: 248, column: 48, scope: !1753)
!1825 = !DILocation(line: 249, column: 39, scope: !1753)
!1826 = !DILocation(line: 249, column: 51, scope: !1753)
!1827 = !DILocation(line: 250, column: 46, scope: !1753)
!1828 = !DILocation(line: 250, column: 65, scope: !1753)
!1829 = !DILocation(line: 251, column: 47, scope: !1753)
!1830 = !DILocation(line: 252, column: 39, scope: !1753)
!1831 = !DILocation(line: 253, column: 39, scope: !1753)
!1832 = !DILocation(line: 256, column: 10, scope: !1753)
!1833 = !DILocation(line: 257, column: 10, scope: !1753)
!1834 = !DILocation(line: 258, column: 15, scope: !1753)
!1835 = !DILocation(line: 259, column: 10, scope: !1753)
!1836 = !DILocation(line: 260, column: 8, scope: !1753)
!1837 = !DILocation(line: 261, column: 25, scope: !1753)
!1838 = !DILocation(line: 261, column: 36, scope: !1753)
!1839 = !DILocation(line: 262, column: 8, scope: !1753)
!1840 = !DILocation(line: 263, column: 8, scope: !1753)
!1841 = !DILocation(line: 264, column: 8, scope: !1753)
!1842 = !DILocation(line: 265, column: 8, scope: !1753)
!1843 = !DILocation(line: 265, column: 3, scope: !1753)
!1844 = !DILocation(line: 308, column: 3, scope: !1753)
!1845 = !DILocation(line: 315, column: 11, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1753, file: !244, line: 309, column: 5)
!1847 = !DILocation(line: 315, column: 12, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1846, file: !244, line: 315, column: 11)
!1849 = !DILocation(line: 316, column: 9, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !244, line: 316, column: 9)
!1851 = distinct !DILexicalBlock(scope: !1848, file: !244, line: 316, column: 9)
!1852 = !DILocation(line: 316, column: 9, scope: !1851)
!1853 = !DILocation(line: 354, column: 26, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !244, line: 332, column: 11)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !244, line: 331, column: 13)
!1856 = distinct !DILexicalBlock(scope: !1846, file: !244, line: 330, column: 7)
!1857 = !DILocation(line: 355, column: 27, scope: !1854)
!1858 = !DILocation(line: 356, column: 11, scope: !1854)
!1859 = !DILocation(line: 357, column: 14, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !244, line: 357, column: 13)
!1861 = !DILocation(line: 357, column: 13, scope: !1856)
!1862 = !DILocation(line: 358, column: 43, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !244, line: 358, column: 11)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !244, line: 358, column: 11)
!1865 = !DILocation(line: 358, column: 11, scope: !1864)
!1866 = !DILocation(line: 359, column: 13, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !244, line: 359, column: 13)
!1868 = distinct !DILexicalBlock(scope: !1863, file: !244, line: 359, column: 13)
!1869 = !DILocation(line: 359, column: 13, scope: !1868)
!1870 = !DILocation(line: 358, column: 70, scope: !1863)
!1871 = distinct !{!1871, !1865, !1872}
!1872 = !DILocation(line: 359, column: 13, scope: !1864)
!1873 = !DILocation(line: 362, column: 28, scope: !1856)
!1874 = !DILocation(line: 364, column: 7, scope: !1846)
!1875 = !DILocation(line: 367, column: 7, scope: !1846)
!1876 = !DILocation(line: 370, column: 7, scope: !1846)
!1877 = !DILocation(line: 373, column: 12, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1846, file: !244, line: 373, column: 11)
!1879 = !DILocation(line: 373, column: 11, scope: !1846)
!1880 = !DILocation(line: 378, column: 12, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1846, file: !244, line: 378, column: 11)
!1882 = !DILocation(line: 378, column: 11, scope: !1846)
!1883 = !DILocation(line: 379, column: 9, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !244, line: 379, column: 9)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !244, line: 379, column: 9)
!1886 = !DILocation(line: 379, column: 9, scope: !1885)
!1887 = !DILocation(line: 386, column: 7, scope: !1846)
!1888 = !DILocation(line: 389, column: 7, scope: !1846)
!1889 = !DILocation(line: 255, column: 10, scope: !1753)
!1890 = !DILocation(line: 392, column: 8, scope: !1782)
!1891 = !DILocation(line: 392, column: 27, scope: !1781)
!1892 = !DILocation(line: 392, column: 19, scope: !1781)
!1893 = !DILocation(line: 392, column: 60, scope: !1781)
!1894 = !DILocation(line: 392, column: 3, scope: !1782)
!1895 = !DILocation(line: 392, column: 41, scope: !1781)
!1896 = !DILocation(line: 392, column: 48, scope: !1781)
!1897 = !DILocation(line: 396, column: 12, scope: !1780)
!1898 = !DILocation(line: 397, column: 12, scope: !1780)
!1899 = !DILocation(line: 398, column: 12, scope: !1780)
!1900 = !DILocation(line: 401, column: 11, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1780, file: !244, line: 400, column: 11)
!1902 = !DILocation(line: 403, column: 17, scope: !1901)
!1903 = !DILocation(line: 404, column: 39, scope: !1901)
!1904 = !DILocation(line: 408, column: 32, scope: !1901)
!1905 = !DILocation(line: 404, column: 19, scope: !1901)
!1906 = !DILocation(line: 404, column: 15, scope: !1901)
!1907 = !DILocation(line: 409, column: 11, scope: !1901)
!1908 = !DILocation(line: 409, column: 26, scope: !1901)
!1909 = !DILocation(line: 409, column: 14, scope: !1901)
!1910 = !DILocation(line: 409, column: 63, scope: !1901)
!1911 = !DILocation(line: 400, column: 11, scope: !1780)
!1912 = !DILocation(line: 416, column: 11, scope: !1780)
!1913 = !DILocation(line: 394, column: 21, scope: !1780)
!1914 = !DILocation(line: 417, column: 7, scope: !1780)
!1915 = !DILocation(line: 420, column: 15, scope: !1789)
!1916 = !DILocation(line: 422, column: 15, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !244, line: 422, column: 15)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !244, line: 421, column: 13)
!1919 = distinct !DILexicalBlock(scope: !1789, file: !244, line: 420, column: 15)
!1920 = !DILocation(line: 422, column: 15, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1917, file: !244, line: 422, column: 15)
!1922 = !DILocation(line: 422, column: 15, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !244, line: 422, column: 15)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !244, line: 422, column: 15)
!1925 = distinct !DILexicalBlock(scope: !1921, file: !244, line: 422, column: 15)
!1926 = !DILocation(line: 422, column: 15, scope: !1924)
!1927 = !DILocation(line: 422, column: 15, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !244, line: 422, column: 15)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !244, line: 422, column: 15)
!1930 = !DILocation(line: 422, column: 15, scope: !1929)
!1931 = !DILocation(line: 422, column: 15, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !244, line: 422, column: 15)
!1933 = distinct !DILexicalBlock(scope: !1925, file: !244, line: 422, column: 15)
!1934 = !DILocation(line: 422, column: 15, scope: !1933)
!1935 = !DILocation(line: 422, column: 15, scope: !1925)
!1936 = !DILocation(line: 422, column: 15, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !244, line: 422, column: 15)
!1938 = distinct !DILexicalBlock(scope: !1917, file: !244, line: 422, column: 15)
!1939 = !DILocation(line: 422, column: 15, scope: !1938)
!1940 = !DILocation(line: 430, column: 19, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1918, file: !244, line: 429, column: 19)
!1942 = !DILocation(line: 430, column: 24, scope: !1941)
!1943 = !DILocation(line: 430, column: 28, scope: !1941)
!1944 = !DILocation(line: 430, column: 38, scope: !1941)
!1945 = !DILocation(line: 430, column: 48, scope: !1941)
!1946 = !DILocation(line: 430, column: 59, scope: !1941)
!1947 = !DILocation(line: 432, column: 19, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !244, line: 432, column: 19)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !244, line: 432, column: 19)
!1950 = distinct !DILexicalBlock(scope: !1941, file: !244, line: 431, column: 17)
!1951 = !DILocation(line: 432, column: 19, scope: !1949)
!1952 = !DILocation(line: 433, column: 19, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !244, line: 433, column: 19)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !244, line: 433, column: 19)
!1955 = !DILocation(line: 433, column: 19, scope: !1954)
!1956 = !DILocation(line: 434, column: 17, scope: !1950)
!1957 = !DILocation(line: 441, column: 20, scope: !1919)
!1958 = !DILocation(line: 446, column: 11, scope: !1789)
!1959 = !DILocation(line: 449, column: 19, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1789, file: !244, line: 447, column: 13)
!1961 = !DILocation(line: 455, column: 19, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1960, file: !244, line: 454, column: 19)
!1963 = !DILocation(line: 455, column: 24, scope: !1962)
!1964 = !DILocation(line: 455, column: 28, scope: !1962)
!1965 = !DILocation(line: 455, column: 38, scope: !1962)
!1966 = !DILocation(line: 455, column: 47, scope: !1962)
!1967 = !DILocation(line: 455, column: 41, scope: !1962)
!1968 = !DILocation(line: 455, column: 52, scope: !1962)
!1969 = !DILocation(line: 454, column: 19, scope: !1960)
!1970 = !DILocation(line: 456, column: 25, scope: !1962)
!1971 = !DILocation(line: 456, column: 17, scope: !1962)
!1972 = !DILocation(line: 463, column: 25, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1962, file: !244, line: 457, column: 19)
!1974 = !DILocation(line: 467, column: 21, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !244, line: 467, column: 21)
!1976 = distinct !DILexicalBlock(scope: !1973, file: !244, line: 467, column: 21)
!1977 = !DILocation(line: 467, column: 21, scope: !1976)
!1978 = !DILocation(line: 468, column: 21, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !244, line: 468, column: 21)
!1980 = distinct !DILexicalBlock(scope: !1973, file: !244, line: 468, column: 21)
!1981 = !DILocation(line: 468, column: 21, scope: !1980)
!1982 = !DILocation(line: 469, column: 21, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !244, line: 469, column: 21)
!1984 = distinct !DILexicalBlock(scope: !1973, file: !244, line: 469, column: 21)
!1985 = !DILocation(line: 469, column: 21, scope: !1984)
!1986 = !DILocation(line: 470, column: 21, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !244, line: 470, column: 21)
!1988 = distinct !DILexicalBlock(scope: !1973, file: !244, line: 470, column: 21)
!1989 = !DILocation(line: 470, column: 21, scope: !1988)
!1990 = !DILocation(line: 471, column: 21, scope: !1973)
!1991 = !DILocation(line: 395, column: 21, scope: !1780)
!1992 = !DILocation(line: 484, column: 31, scope: !1789)
!1993 = !DILocation(line: 485, column: 31, scope: !1789)
!1994 = !DILocation(line: 487, column: 31, scope: !1789)
!1995 = !DILocation(line: 488, column: 31, scope: !1789)
!1996 = !DILocation(line: 489, column: 31, scope: !1789)
!1997 = !DILocation(line: 492, column: 15, scope: !1789)
!1998 = !DILocation(line: 494, column: 19, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !244, line: 493, column: 13)
!2000 = distinct !DILexicalBlock(scope: !1789, file: !244, line: 492, column: 15)
!2001 = !DILocation(line: 501, column: 33, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1789, file: !244, line: 501, column: 15)
!2003 = !DILocation(line: 506, column: 15, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1789, file: !244, line: 505, column: 15)
!2005 = !DILocation(line: 510, column: 15, scope: !1789)
!2006 = !DILocation(line: 518, column: 26, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1789, file: !244, line: 518, column: 15)
!2008 = !DILocation(line: 518, column: 15, scope: !1789)
!2009 = !DILocation(line: 518, column: 40, scope: !2007)
!2010 = !DILocation(line: 518, column: 47, scope: !2007)
!2011 = !DILocation(line: 522, column: 17, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1789, file: !244, line: 522, column: 15)
!2013 = !DILocation(line: 518, column: 18, scope: !2007)
!2014 = !DILocation(line: 518, column: 65, scope: !2007)
!2015 = !DILocation(line: 522, column: 15, scope: !1789)
!2016 = !DILocation(line: 526, column: 11, scope: !1789)
!2017 = !DILocation(line: 541, column: 15, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1789, file: !244, line: 540, column: 15)
!2019 = !DILocation(line: 548, column: 15, scope: !1789)
!2020 = !DILocation(line: 550, column: 19, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !244, line: 549, column: 13)
!2022 = distinct !DILexicalBlock(scope: !1789, file: !244, line: 548, column: 15)
!2023 = !DILocation(line: 553, column: 19, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2021, file: !244, line: 553, column: 19)
!2025 = !DILocation(line: 553, column: 35, scope: !2024)
!2026 = !DILocation(line: 553, column: 30, scope: !2024)
!2027 = !DILocation(line: 562, column: 15, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !244, line: 562, column: 15)
!2029 = distinct !DILexicalBlock(scope: !2021, file: !244, line: 562, column: 15)
!2030 = !DILocation(line: 562, column: 15, scope: !2029)
!2031 = !DILocation(line: 563, column: 15, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !244, line: 563, column: 15)
!2033 = distinct !DILexicalBlock(scope: !2021, file: !244, line: 563, column: 15)
!2034 = !DILocation(line: 563, column: 15, scope: !2033)
!2035 = !DILocation(line: 564, column: 15, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !244, line: 564, column: 15)
!2037 = distinct !DILexicalBlock(scope: !2021, file: !244, line: 564, column: 15)
!2038 = !DILocation(line: 564, column: 15, scope: !2037)
!2039 = !DILocation(line: 566, column: 13, scope: !2021)
!2040 = !DILocation(line: 606, column: 17, scope: !1788)
!2041 = !DILocation(line: 602, column: 20, scope: !1788)
!2042 = !DILocation(line: 609, column: 29, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1793, file: !244, line: 607, column: 15)
!2044 = !DILocation(line: 609, column: 27, scope: !2043)
!2045 = !DILocation(line: 604, column: 18, scope: !1788)
!2046 = !DILocation(line: 610, column: 15, scope: !2043)
!2047 = !DILocation(line: 613, column: 17, scope: !1792)
!2048 = !DILocation(line: 614, column: 17, scope: !1792)
!2049 = !DILocation(line: 618, column: 29, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1792, file: !244, line: 618, column: 21)
!2051 = !DILocation(line: 618, column: 21, scope: !1792)
!2052 = !DILocation(line: 619, column: 29, scope: !2050)
!2053 = !DILocation(line: 619, column: 19, scope: !2050)
!2054 = !DILocation(line: 621, column: 17, scope: !1792)
!2055 = distinct !{!2055, !2054, !2056}
!2056 = !DILocation(line: 667, column: 44, scope: !1792)
!2057 = !DILocation(line: 623, column: 21, scope: !1810)
!2058 = !DILocation(line: 624, column: 56, scope: !1810)
!2059 = !DILocation(line: 624, column: 50, scope: !1810)
!2060 = !DILocation(line: 625, column: 53, scope: !1810)
!2061 = !DILocation(line: 613, column: 27, scope: !1792)
!2062 = !DILocation(line: 623, column: 29, scope: !1810)
!2063 = !DILocation(line: 624, column: 36, scope: !1810)
!2064 = !DILocation(line: 624, column: 28, scope: !1810)
!2065 = !DILocation(line: 626, column: 25, scope: !1810)
!2066 = !DILocation(line: 636, column: 38, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1817, file: !244, line: 634, column: 23)
!2068 = !DILocation(line: 636, column: 48, scope: !2067)
!2069 = !DILocation(line: 636, column: 51, scope: !2067)
!2070 = !DILocation(line: 636, column: 25, scope: !2067)
!2071 = !DILocation(line: 637, column: 28, scope: !2067)
!2072 = !DILocation(line: 636, column: 34, scope: !2067)
!2073 = distinct !{!2073, !2070, !2071}
!2074 = !DILocation(line: 650, column: 43, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !244, line: 650, column: 29)
!2076 = distinct !DILexicalBlock(scope: !1814, file: !244, line: 650, column: 29)
!2077 = !DILocation(line: 647, column: 29, scope: !1815)
!2078 = !DILocation(line: 649, column: 36, scope: !1814)
!2079 = !DILocation(line: 651, column: 49, scope: !2075)
!2080 = !DILocation(line: 651, column: 39, scope: !2075)
!2081 = !DILocation(line: 651, column: 31, scope: !2075)
!2082 = !DILocation(line: 650, column: 53, scope: !2075)
!2083 = !DILocation(line: 650, column: 29, scope: !2076)
!2084 = distinct !{!2084, !2083, !2085}
!2085 = !DILocation(line: 659, column: 33, scope: !2076)
!2086 = !DILocation(line: 666, column: 19, scope: !1792)
!2087 = !DILocation(line: 662, column: 41, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1816, file: !244, line: 662, column: 29)
!2089 = !DILocation(line: 662, column: 31, scope: !2088)
!2090 = !DILocation(line: 662, column: 29, scope: !1816)
!2091 = !DILocation(line: 664, column: 27, scope: !1816)
!2092 = !DILocation(line: 667, column: 26, scope: !1792)
!2093 = !DILocation(line: 667, column: 24, scope: !1792)
!2094 = !DILocation(line: 666, column: 19, scope: !1810)
!2095 = !DILocation(line: 668, column: 15, scope: !1793)
!2096 = !DILocation(line: 670, column: 40, scope: !1788)
!2097 = !DILocation(line: 672, column: 19, scope: !1822)
!2098 = !DILocation(line: 672, column: 45, scope: !1822)
!2099 = !DILocation(line: 672, column: 23, scope: !1822)
!2100 = !DILocation(line: 676, column: 33, scope: !1821)
!2101 = !DILocation(line: 676, column: 24, scope: !1821)
!2102 = !DILocation(line: 678, column: 17, scope: !1821)
!2103 = !DILocation(line: 680, column: 43, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !244, line: 680, column: 25)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !244, line: 679, column: 19)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !244, line: 678, column: 17)
!2107 = distinct !DILexicalBlock(scope: !1821, file: !244, line: 678, column: 17)
!2108 = !DILocation(line: 682, column: 25, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !244, line: 682, column: 25)
!2110 = distinct !DILexicalBlock(scope: !2104, file: !244, line: 681, column: 23)
!2111 = !DILocation(line: 682, column: 25, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !244, line: 682, column: 25)
!2113 = !DILocation(line: 682, column: 25, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !244, line: 682, column: 25)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !244, line: 682, column: 25)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !244, line: 682, column: 25)
!2117 = !DILocation(line: 682, column: 25, scope: !2115)
!2118 = !DILocation(line: 682, column: 25, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !244, line: 682, column: 25)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !244, line: 682, column: 25)
!2121 = !DILocation(line: 682, column: 25, scope: !2120)
!2122 = !DILocation(line: 682, column: 25, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !244, line: 682, column: 25)
!2124 = distinct !DILexicalBlock(scope: !2116, file: !244, line: 682, column: 25)
!2125 = !DILocation(line: 682, column: 25, scope: !2124)
!2126 = !DILocation(line: 682, column: 25, scope: !2116)
!2127 = !DILocation(line: 682, column: 25, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !244, line: 682, column: 25)
!2129 = distinct !DILexicalBlock(scope: !2109, file: !244, line: 682, column: 25)
!2130 = !DILocation(line: 682, column: 25, scope: !2129)
!2131 = !DILocation(line: 683, column: 25, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !244, line: 683, column: 25)
!2133 = distinct !DILexicalBlock(scope: !2110, file: !244, line: 683, column: 25)
!2134 = !DILocation(line: 683, column: 25, scope: !2133)
!2135 = !DILocation(line: 684, column: 25, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !244, line: 684, column: 25)
!2137 = distinct !DILexicalBlock(scope: !2110, file: !244, line: 684, column: 25)
!2138 = !DILocation(line: 684, column: 25, scope: !2137)
!2139 = !DILocation(line: 685, column: 38, scope: !2110)
!2140 = !DILocation(line: 685, column: 33, scope: !2110)
!2141 = !DILocation(line: 686, column: 23, scope: !2110)
!2142 = !DILocation(line: 687, column: 30, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2104, file: !244, line: 687, column: 30)
!2144 = !DILocation(line: 687, column: 30, scope: !2104)
!2145 = !DILocation(line: 689, column: 25, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !244, line: 689, column: 25)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !244, line: 689, column: 25)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !244, line: 688, column: 23)
!2149 = !DILocation(line: 689, column: 25, scope: !2147)
!2150 = !DILocation(line: 691, column: 23, scope: !2148)
!2151 = !DILocation(line: 692, column: 35, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2105, file: !244, line: 692, column: 25)
!2153 = !DILocation(line: 692, column: 30, scope: !2152)
!2154 = !DILocation(line: 692, column: 25, scope: !2105)
!2155 = !DILocation(line: 694, column: 21, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !244, line: 694, column: 21)
!2157 = distinct !DILexicalBlock(scope: !2105, file: !244, line: 694, column: 21)
!2158 = !DILocation(line: 694, column: 21, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !244, line: 694, column: 21)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !244, line: 694, column: 21)
!2161 = distinct !DILexicalBlock(scope: !2156, file: !244, line: 694, column: 21)
!2162 = !DILocation(line: 694, column: 21, scope: !2160)
!2163 = !DILocation(line: 694, column: 21, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !244, line: 694, column: 21)
!2165 = distinct !DILexicalBlock(scope: !2161, file: !244, line: 694, column: 21)
!2166 = !DILocation(line: 694, column: 21, scope: !2165)
!2167 = !DILocation(line: 694, column: 21, scope: !2161)
!2168 = !DILocation(line: 695, column: 21, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !244, line: 695, column: 21)
!2170 = distinct !DILexicalBlock(scope: !2105, file: !244, line: 695, column: 21)
!2171 = !DILocation(line: 695, column: 21, scope: !2170)
!2172 = !DILocation(line: 696, column: 25, scope: !2105)
!2173 = !DILocation(line: 678, column: 17, scope: !2106)
!2174 = distinct !{!2174, !2175, !2176}
!2175 = !DILocation(line: 678, column: 17, scope: !2107)
!2176 = !DILocation(line: 697, column: 19, scope: !2107)
!2177 = !DILocation(line: 704, column: 34, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !1780, file: !244, line: 704, column: 11)
!2179 = !DILocation(line: 706, column: 14, scope: !2178)
!2180 = !DILocation(line: 707, column: 14, scope: !2178)
!2181 = !DILocation(line: 707, column: 35, scope: !2178)
!2182 = !DILocation(line: 707, column: 17, scope: !2178)
!2183 = !DILocation(line: 707, column: 53, scope: !2178)
!2184 = !DILocation(line: 707, column: 47, scope: !2178)
!2185 = !DILocation(line: 707, column: 65, scope: !2178)
!2186 = !DILocation(line: 708, column: 15, scope: !2178)
!2187 = !DILocation(line: 708, column: 11, scope: !2178)
!2188 = !DILocation(line: 704, column: 11, scope: !1780)
!2189 = !DILocation(line: 712, column: 7, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1780, file: !244, line: 712, column: 7)
!2191 = !DILocation(line: 712, column: 7, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2190, file: !244, line: 712, column: 7)
!2193 = !DILocation(line: 712, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !244, line: 712, column: 7)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !244, line: 712, column: 7)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !244, line: 712, column: 7)
!2197 = !DILocation(line: 712, column: 7, scope: !2195)
!2198 = !DILocation(line: 712, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !244, line: 712, column: 7)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !244, line: 712, column: 7)
!2201 = !DILocation(line: 712, column: 7, scope: !2200)
!2202 = !DILocation(line: 712, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !244, line: 712, column: 7)
!2204 = distinct !DILexicalBlock(scope: !2196, file: !244, line: 712, column: 7)
!2205 = !DILocation(line: 712, column: 7, scope: !2204)
!2206 = !DILocation(line: 712, column: 7, scope: !2196)
!2207 = !DILocation(line: 712, column: 7, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !244, line: 712, column: 7)
!2209 = distinct !DILexicalBlock(scope: !2190, file: !244, line: 712, column: 7)
!2210 = !DILocation(line: 712, column: 7, scope: !2209)
!2211 = !DILocation(line: 715, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !244, line: 715, column: 7)
!2213 = distinct !DILexicalBlock(scope: !1780, file: !244, line: 715, column: 7)
!2214 = !DILocation(line: 715, column: 7, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !244, line: 715, column: 7)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !244, line: 715, column: 7)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !244, line: 715, column: 7)
!2218 = !DILocation(line: 715, column: 7, scope: !2216)
!2219 = !DILocation(line: 715, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !244, line: 715, column: 7)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !244, line: 715, column: 7)
!2222 = !DILocation(line: 715, column: 7, scope: !2221)
!2223 = !DILocation(line: 715, column: 7, scope: !2217)
!2224 = !DILocation(line: 716, column: 7, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !244, line: 716, column: 7)
!2226 = distinct !DILexicalBlock(scope: !1780, file: !244, line: 716, column: 7)
!2227 = !DILocation(line: 716, column: 7, scope: !2226)
!2228 = !DILocation(line: 718, column: 13, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !1780, file: !244, line: 718, column: 11)
!2230 = !DILocation(line: 718, column: 11, scope: !1780)
!2231 = !DILocation(line: 720, column: 5, scope: !1781)
!2232 = !DILocation(line: 392, column: 75, scope: !1781)
!2233 = !DILocation(line: 392, column: 3, scope: !1781)
!2234 = distinct !{!2234, !1894, !2235}
!2235 = !DILocation(line: 720, column: 5, scope: !1782)
!2236 = !DILocation(line: 722, column: 11, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !1753, file: !244, line: 722, column: 7)
!2238 = !DILocation(line: 722, column: 16, scope: !2237)
!2239 = !DILocation(line: 730, column: 51, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !1753, file: !244, line: 730, column: 7)
!2241 = !DILocation(line: 731, column: 10, scope: !2240)
!2242 = !DILocation(line: 733, column: 11, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !244, line: 733, column: 11)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !244, line: 732, column: 5)
!2245 = !DILocation(line: 733, column: 11, scope: !2244)
!2246 = !DILocation(line: 734, column: 16, scope: !2243)
!2247 = !DILocation(line: 734, column: 9, scope: !2243)
!2248 = !DILocation(line: 738, column: 18, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2243, file: !244, line: 738, column: 16)
!2250 = !DILocation(line: 738, column: 32, scope: !2249)
!2251 = !DILocation(line: 738, column: 29, scope: !2249)
!2252 = !DILocation(line: 747, column: 7, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1753, file: !244, line: 747, column: 7)
!2254 = !DILocation(line: 747, column: 20, scope: !2253)
!2255 = !DILocation(line: 748, column: 12, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !244, line: 748, column: 5)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !244, line: 748, column: 5)
!2258 = !DILocation(line: 748, column: 5, scope: !2257)
!2259 = !DILocation(line: 749, column: 7, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !244, line: 749, column: 7)
!2261 = distinct !DILexicalBlock(scope: !2256, file: !244, line: 749, column: 7)
!2262 = !DILocation(line: 749, column: 7, scope: !2261)
!2263 = !DILocation(line: 748, column: 39, scope: !2256)
!2264 = distinct !{!2264, !2258, !2265}
!2265 = !DILocation(line: 749, column: 7, scope: !2257)
!2266 = !DILocation(line: 751, column: 11, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !1753, file: !244, line: 751, column: 7)
!2268 = !DILocation(line: 751, column: 7, scope: !1753)
!2269 = !DILocation(line: 752, column: 5, scope: !2267)
!2270 = !DILocation(line: 752, column: 17, scope: !2267)
!2271 = !DILocation(line: 758, column: 21, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !1753, file: !244, line: 758, column: 7)
!2273 = !DILocation(line: 758, column: 54, scope: !2272)
!2274 = !DILocation(line: 758, column: 51, scope: !2272)
!2275 = !DILocation(line: 762, column: 42, scope: !1753)
!2276 = !DILocation(line: 760, column: 10, scope: !1753)
!2277 = !DILocation(line: 760, column: 3, scope: !1753)
!2278 = !DILocation(line: 764, column: 1, scope: !1753)
!2279 = distinct !DISubprogram(name: "gettext_quote", scope: !244, file: !244, line: 199, type: !2280, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!41, !41, !74}
!2282 = !{!2283, !2284, !2285, !2286}
!2283 = !DILocalVariable(name: "msgid", arg: 1, scope: !2279, file: !244, line: 199, type: !41)
!2284 = !DILocalVariable(name: "s", arg: 2, scope: !2279, file: !244, line: 199, type: !74)
!2285 = !DILocalVariable(name: "translation", scope: !2279, file: !244, line: 201, type: !41)
!2286 = !DILocalVariable(name: "locale_code", scope: !2279, file: !244, line: 202, type: !41)
!2287 = !DILocation(line: 199, column: 28, scope: !2279)
!2288 = !DILocation(line: 199, column: 54, scope: !2279)
!2289 = !DILocation(line: 201, column: 29, scope: !2279)
!2290 = !DILocation(line: 201, column: 15, scope: !2279)
!2291 = !DILocation(line: 204, column: 19, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2279, file: !244, line: 204, column: 7)
!2293 = !DILocation(line: 204, column: 7, scope: !2279)
!2294 = !DILocation(line: 225, column: 17, scope: !2279)
!2295 = !DILocation(line: 202, column: 15, scope: !2279)
!2296 = !DILocalVariable(name: "s2", arg: 2, scope: !2297, file: !2298, line: 160, type: !41)
!2297 = distinct !DISubprogram(name: "strcaseeq0", scope: !2298, file: !2298, line: 160, type: !2299, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2301)
!2298 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!30, !41, !41, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!2301 = !{!2302, !2296, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2302 = !DILocalVariable(name: "s1", arg: 1, scope: !2297, file: !2298, line: 160, type: !41)
!2303 = !DILocalVariable(name: "s20", arg: 3, scope: !2297, file: !2298, line: 160, type: !22)
!2304 = !DILocalVariable(name: "s21", arg: 4, scope: !2297, file: !2298, line: 160, type: !22)
!2305 = !DILocalVariable(name: "s22", arg: 5, scope: !2297, file: !2298, line: 160, type: !22)
!2306 = !DILocalVariable(name: "s23", arg: 6, scope: !2297, file: !2298, line: 160, type: !22)
!2307 = !DILocalVariable(name: "s24", arg: 7, scope: !2297, file: !2298, line: 160, type: !22)
!2308 = !DILocalVariable(name: "s25", arg: 8, scope: !2297, file: !2298, line: 160, type: !22)
!2309 = !DILocalVariable(name: "s26", arg: 9, scope: !2297, file: !2298, line: 160, type: !22)
!2310 = !DILocalVariable(name: "s27", arg: 10, scope: !2297, file: !2298, line: 160, type: !22)
!2311 = !DILocalVariable(name: "s28", arg: 11, scope: !2297, file: !2298, line: 160, type: !22)
!2312 = !DILocation(line: 160, column: 41, scope: !2297, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 226, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2279, file: !244, line: 226, column: 7)
!2315 = !DILocation(line: 160, column: 120, scope: !2297, inlinedAt: !2313)
!2316 = !DILocation(line: 160, column: 130, scope: !2297, inlinedAt: !2313)
!2317 = !DILocation(line: 162, column: 7, scope: !2318, inlinedAt: !2313)
!2318 = distinct !DILexicalBlock(scope: !2297, file: !2298, line: 162, column: 7)
!2319 = !DILocalVariable(name: "s2", arg: 2, scope: !2320, file: !2298, line: 146, type: !41)
!2320 = distinct !DISubprogram(name: "strcaseeq1", scope: !2298, file: !2298, line: 146, type: !2321, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!30, !41, !41, !22, !22, !22, !22, !22, !22, !22, !22}
!2323 = !{!2324, !2319, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332}
!2324 = !DILocalVariable(name: "s1", arg: 1, scope: !2320, file: !2298, line: 146, type: !41)
!2325 = !DILocalVariable(name: "s21", arg: 3, scope: !2320, file: !2298, line: 146, type: !22)
!2326 = !DILocalVariable(name: "s22", arg: 4, scope: !2320, file: !2298, line: 146, type: !22)
!2327 = !DILocalVariable(name: "s23", arg: 5, scope: !2320, file: !2298, line: 146, type: !22)
!2328 = !DILocalVariable(name: "s24", arg: 6, scope: !2320, file: !2298, line: 146, type: !22)
!2329 = !DILocalVariable(name: "s25", arg: 7, scope: !2320, file: !2298, line: 146, type: !22)
!2330 = !DILocalVariable(name: "s26", arg: 8, scope: !2320, file: !2298, line: 146, type: !22)
!2331 = !DILocalVariable(name: "s27", arg: 9, scope: !2320, file: !2298, line: 146, type: !22)
!2332 = !DILocalVariable(name: "s28", arg: 10, scope: !2320, file: !2298, line: 146, type: !22)
!2333 = !DILocation(line: 146, column: 41, scope: !2320, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 167, column: 16, scope: !2335, inlinedAt: !2313)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !2298, line: 164, column: 11)
!2336 = distinct !DILexicalBlock(scope: !2318, file: !2298, line: 163, column: 5)
!2337 = !DILocation(line: 146, column: 110, scope: !2320, inlinedAt: !2334)
!2338 = !DILocation(line: 146, column: 120, scope: !2320, inlinedAt: !2334)
!2339 = !DILocation(line: 148, column: 7, scope: !2340, inlinedAt: !2334)
!2340 = distinct !DILexicalBlock(scope: !2320, file: !2298, line: 148, column: 7)
!2341 = !DILocalVariable(name: "s2", arg: 2, scope: !2342, file: !2298, line: 132, type: !41)
!2342 = distinct !DISubprogram(name: "strcaseeq2", scope: !2298, file: !2298, line: 132, type: !2343, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!30, !41, !41, !22, !22, !22, !22, !22, !22, !22}
!2345 = !{!2346, !2341, !2347, !2348, !2349, !2350, !2351, !2352, !2353}
!2346 = !DILocalVariable(name: "s1", arg: 1, scope: !2342, file: !2298, line: 132, type: !41)
!2347 = !DILocalVariable(name: "s22", arg: 3, scope: !2342, file: !2298, line: 132, type: !22)
!2348 = !DILocalVariable(name: "s23", arg: 4, scope: !2342, file: !2298, line: 132, type: !22)
!2349 = !DILocalVariable(name: "s24", arg: 5, scope: !2342, file: !2298, line: 132, type: !22)
!2350 = !DILocalVariable(name: "s25", arg: 6, scope: !2342, file: !2298, line: 132, type: !22)
!2351 = !DILocalVariable(name: "s26", arg: 7, scope: !2342, file: !2298, line: 132, type: !22)
!2352 = !DILocalVariable(name: "s27", arg: 8, scope: !2342, file: !2298, line: 132, type: !22)
!2353 = !DILocalVariable(name: "s28", arg: 9, scope: !2342, file: !2298, line: 132, type: !22)
!2354 = !DILocation(line: 132, column: 41, scope: !2342, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 153, column: 16, scope: !2356, inlinedAt: !2334)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !2298, line: 150, column: 11)
!2357 = distinct !DILexicalBlock(scope: !2340, file: !2298, line: 149, column: 5)
!2358 = !DILocation(line: 132, column: 100, scope: !2342, inlinedAt: !2355)
!2359 = !DILocation(line: 132, column: 110, scope: !2342, inlinedAt: !2355)
!2360 = !DILocation(line: 134, column: 7, scope: !2361, inlinedAt: !2355)
!2361 = distinct !DILexicalBlock(scope: !2342, file: !2298, line: 134, column: 7)
!2362 = !DILocalVariable(name: "s2", arg: 2, scope: !2363, file: !2298, line: 118, type: !41)
!2363 = distinct !DISubprogram(name: "strcaseeq3", scope: !2298, file: !2298, line: 118, type: !2364, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!30, !41, !41, !22, !22, !22, !22, !22, !22}
!2366 = !{!2367, !2362, !2368, !2369, !2370, !2371, !2372, !2373}
!2367 = !DILocalVariable(name: "s1", arg: 1, scope: !2363, file: !2298, line: 118, type: !41)
!2368 = !DILocalVariable(name: "s23", arg: 3, scope: !2363, file: !2298, line: 118, type: !22)
!2369 = !DILocalVariable(name: "s24", arg: 4, scope: !2363, file: !2298, line: 118, type: !22)
!2370 = !DILocalVariable(name: "s25", arg: 5, scope: !2363, file: !2298, line: 118, type: !22)
!2371 = !DILocalVariable(name: "s26", arg: 6, scope: !2363, file: !2298, line: 118, type: !22)
!2372 = !DILocalVariable(name: "s27", arg: 7, scope: !2363, file: !2298, line: 118, type: !22)
!2373 = !DILocalVariable(name: "s28", arg: 8, scope: !2363, file: !2298, line: 118, type: !22)
!2374 = !DILocation(line: 118, column: 41, scope: !2363, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 139, column: 16, scope: !2376, inlinedAt: !2355)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !2298, line: 136, column: 11)
!2377 = distinct !DILexicalBlock(scope: !2361, file: !2298, line: 135, column: 5)
!2378 = !DILocation(line: 118, column: 90, scope: !2363, inlinedAt: !2375)
!2379 = !DILocation(line: 118, column: 100, scope: !2363, inlinedAt: !2375)
!2380 = !DILocation(line: 120, column: 7, scope: !2381, inlinedAt: !2375)
!2381 = distinct !DILexicalBlock(scope: !2363, file: !2298, line: 120, column: 7)
!2382 = !DILocation(line: 120, column: 7, scope: !2363, inlinedAt: !2375)
!2383 = !DILocalVariable(name: "s2", arg: 2, scope: !2384, file: !2298, line: 104, type: !41)
!2384 = distinct !DISubprogram(name: "strcaseeq4", scope: !2298, file: !2298, line: 104, type: !2385, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!30, !41, !41, !22, !22, !22, !22, !22}
!2387 = !{!2388, !2383, !2389, !2390, !2391, !2392, !2393}
!2388 = !DILocalVariable(name: "s1", arg: 1, scope: !2384, file: !2298, line: 104, type: !41)
!2389 = !DILocalVariable(name: "s24", arg: 3, scope: !2384, file: !2298, line: 104, type: !22)
!2390 = !DILocalVariable(name: "s25", arg: 4, scope: !2384, file: !2298, line: 104, type: !22)
!2391 = !DILocalVariable(name: "s26", arg: 5, scope: !2384, file: !2298, line: 104, type: !22)
!2392 = !DILocalVariable(name: "s27", arg: 6, scope: !2384, file: !2298, line: 104, type: !22)
!2393 = !DILocalVariable(name: "s28", arg: 7, scope: !2384, file: !2298, line: 104, type: !22)
!2394 = !DILocation(line: 104, column: 41, scope: !2384, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 125, column: 16, scope: !2396, inlinedAt: !2375)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !2298, line: 122, column: 11)
!2397 = distinct !DILexicalBlock(scope: !2381, file: !2298, line: 121, column: 5)
!2398 = !DILocation(line: 104, column: 80, scope: !2384, inlinedAt: !2395)
!2399 = !DILocation(line: 104, column: 90, scope: !2384, inlinedAt: !2395)
!2400 = !DILocation(line: 106, column: 7, scope: !2401, inlinedAt: !2395)
!2401 = distinct !DILexicalBlock(scope: !2384, file: !2298, line: 106, column: 7)
!2402 = !DILocation(line: 106, column: 7, scope: !2384, inlinedAt: !2395)
!2403 = !DILocalVariable(name: "s2", arg: 2, scope: !2404, file: !2298, line: 90, type: !41)
!2404 = distinct !DISubprogram(name: "strcaseeq5", scope: !2298, file: !2298, line: 90, type: !2405, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2407)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!30, !41, !41, !22, !22, !22, !22}
!2407 = !{!2408, !2403, !2409, !2410, !2411, !2412}
!2408 = !DILocalVariable(name: "s1", arg: 1, scope: !2404, file: !2298, line: 90, type: !41)
!2409 = !DILocalVariable(name: "s25", arg: 3, scope: !2404, file: !2298, line: 90, type: !22)
!2410 = !DILocalVariable(name: "s26", arg: 4, scope: !2404, file: !2298, line: 90, type: !22)
!2411 = !DILocalVariable(name: "s27", arg: 5, scope: !2404, file: !2298, line: 90, type: !22)
!2412 = !DILocalVariable(name: "s28", arg: 6, scope: !2404, file: !2298, line: 90, type: !22)
!2413 = !DILocation(line: 90, column: 41, scope: !2404, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 111, column: 16, scope: !2415, inlinedAt: !2395)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !2298, line: 108, column: 11)
!2416 = distinct !DILexicalBlock(scope: !2401, file: !2298, line: 107, column: 5)
!2417 = !DILocation(line: 90, column: 70, scope: !2404, inlinedAt: !2414)
!2418 = !DILocation(line: 90, column: 80, scope: !2404, inlinedAt: !2414)
!2419 = !DILocation(line: 92, column: 7, scope: !2420, inlinedAt: !2414)
!2420 = distinct !DILexicalBlock(scope: !2404, file: !2298, line: 92, column: 7)
!2421 = !DILocation(line: 92, column: 7, scope: !2404, inlinedAt: !2414)
!2422 = !DILocation(line: 227, column: 12, scope: !2314)
!2423 = !DILocation(line: 227, column: 21, scope: !2314)
!2424 = !DILocation(line: 227, column: 5, scope: !2314)
!2425 = !DILocation(line: 146, column: 41, scope: !2320, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 167, column: 16, scope: !2335, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 228, column: 7, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2279, file: !244, line: 228, column: 7)
!2429 = !DILocation(line: 146, column: 110, scope: !2320, inlinedAt: !2426)
!2430 = !DILocation(line: 146, column: 120, scope: !2320, inlinedAt: !2426)
!2431 = !DILocation(line: 148, column: 7, scope: !2340, inlinedAt: !2426)
!2432 = !DILocation(line: 132, column: 41, scope: !2342, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 153, column: 16, scope: !2356, inlinedAt: !2426)
!2434 = !DILocation(line: 132, column: 100, scope: !2342, inlinedAt: !2433)
!2435 = !DILocation(line: 132, column: 110, scope: !2342, inlinedAt: !2433)
!2436 = !DILocation(line: 134, column: 7, scope: !2361, inlinedAt: !2433)
!2437 = !DILocation(line: 134, column: 7, scope: !2342, inlinedAt: !2433)
!2438 = !DILocation(line: 118, column: 41, scope: !2363, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 139, column: 16, scope: !2376, inlinedAt: !2433)
!2440 = !DILocation(line: 118, column: 90, scope: !2363, inlinedAt: !2439)
!2441 = !DILocation(line: 118, column: 100, scope: !2363, inlinedAt: !2439)
!2442 = !DILocation(line: 120, column: 7, scope: !2381, inlinedAt: !2439)
!2443 = !DILocation(line: 120, column: 7, scope: !2363, inlinedAt: !2439)
!2444 = !DILocation(line: 104, column: 41, scope: !2384, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 125, column: 16, scope: !2396, inlinedAt: !2439)
!2446 = !DILocation(line: 104, column: 80, scope: !2384, inlinedAt: !2445)
!2447 = !DILocation(line: 104, column: 90, scope: !2384, inlinedAt: !2445)
!2448 = !DILocation(line: 106, column: 7, scope: !2401, inlinedAt: !2445)
!2449 = !DILocation(line: 106, column: 7, scope: !2384, inlinedAt: !2445)
!2450 = !DILocation(line: 90, column: 41, scope: !2404, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 111, column: 16, scope: !2415, inlinedAt: !2445)
!2452 = !DILocation(line: 90, column: 70, scope: !2404, inlinedAt: !2451)
!2453 = !DILocation(line: 90, column: 80, scope: !2404, inlinedAt: !2451)
!2454 = !DILocation(line: 92, column: 7, scope: !2420, inlinedAt: !2451)
!2455 = !DILocation(line: 92, column: 7, scope: !2404, inlinedAt: !2451)
!2456 = !DILocalVariable(name: "s2", arg: 2, scope: !2457, file: !2298, line: 76, type: !41)
!2457 = distinct !DISubprogram(name: "strcaseeq6", scope: !2298, file: !2298, line: 76, type: !2458, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2460)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!30, !41, !41, !22, !22, !22}
!2460 = !{!2461, !2456, !2462, !2463, !2464}
!2461 = !DILocalVariable(name: "s1", arg: 1, scope: !2457, file: !2298, line: 76, type: !41)
!2462 = !DILocalVariable(name: "s26", arg: 3, scope: !2457, file: !2298, line: 76, type: !22)
!2463 = !DILocalVariable(name: "s27", arg: 4, scope: !2457, file: !2298, line: 76, type: !22)
!2464 = !DILocalVariable(name: "s28", arg: 5, scope: !2457, file: !2298, line: 76, type: !22)
!2465 = !DILocation(line: 76, column: 41, scope: !2457, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 97, column: 16, scope: !2467, inlinedAt: !2451)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !2298, line: 94, column: 11)
!2468 = distinct !DILexicalBlock(scope: !2420, file: !2298, line: 93, column: 5)
!2469 = !DILocation(line: 76, column: 60, scope: !2457, inlinedAt: !2466)
!2470 = !DILocation(line: 76, column: 70, scope: !2457, inlinedAt: !2466)
!2471 = !DILocation(line: 78, column: 7, scope: !2472, inlinedAt: !2466)
!2472 = distinct !DILexicalBlock(scope: !2457, file: !2298, line: 78, column: 7)
!2473 = !DILocation(line: 78, column: 7, scope: !2457, inlinedAt: !2466)
!2474 = !DILocalVariable(name: "s2", arg: 2, scope: !2475, file: !2298, line: 62, type: !41)
!2475 = distinct !DISubprogram(name: "strcaseeq7", scope: !2298, file: !2298, line: 62, type: !2476, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!30, !41, !41, !22, !22}
!2478 = !{!2479, !2474, !2480, !2481}
!2479 = !DILocalVariable(name: "s1", arg: 1, scope: !2475, file: !2298, line: 62, type: !41)
!2480 = !DILocalVariable(name: "s27", arg: 3, scope: !2475, file: !2298, line: 62, type: !22)
!2481 = !DILocalVariable(name: "s28", arg: 4, scope: !2475, file: !2298, line: 62, type: !22)
!2482 = !DILocation(line: 62, column: 41, scope: !2475, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 83, column: 16, scope: !2484, inlinedAt: !2466)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !2298, line: 80, column: 11)
!2485 = distinct !DILexicalBlock(scope: !2472, file: !2298, line: 79, column: 5)
!2486 = !DILocation(line: 62, column: 50, scope: !2475, inlinedAt: !2483)
!2487 = !DILocation(line: 62, column: 60, scope: !2475, inlinedAt: !2483)
!2488 = !DILocation(line: 64, column: 7, scope: !2489, inlinedAt: !2483)
!2489 = distinct !DILexicalBlock(scope: !2475, file: !2298, line: 64, column: 7)
!2490 = !DILocation(line: 228, column: 7, scope: !2279)
!2491 = !DILocation(line: 229, column: 12, scope: !2428)
!2492 = !DILocation(line: 229, column: 21, scope: !2428)
!2493 = !DILocation(line: 229, column: 5, scope: !2428)
!2494 = !DILocation(line: 231, column: 13, scope: !2279)
!2495 = !DILocation(line: 231, column: 11, scope: !2279)
!2496 = !DILocation(line: 231, column: 3, scope: !2279)
!2497 = !DILocation(line: 232, column: 1, scope: !2279)
!2498 = distinct !DISubprogram(name: "quotearg_alloc", scope: !244, file: !244, line: 791, type: !2499, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!21, !41, !103, !1625}
!2501 = !{!2502, !2503, !2504}
!2502 = !DILocalVariable(name: "arg", arg: 1, scope: !2498, file: !244, line: 791, type: !41)
!2503 = !DILocalVariable(name: "argsize", arg: 2, scope: !2498, file: !244, line: 791, type: !103)
!2504 = !DILocalVariable(name: "o", arg: 3, scope: !2498, file: !244, line: 792, type: !1625)
!2505 = !DILocation(line: 791, column: 29, scope: !2498)
!2506 = !DILocation(line: 791, column: 41, scope: !2498)
!2507 = !DILocation(line: 792, column: 47, scope: !2498)
!2508 = !DILocalVariable(name: "arg", arg: 1, scope: !2509, file: !244, line: 804, type: !41)
!2509 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !244, file: !244, line: 804, type: !2510, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!21, !41, !103, !102, !1625}
!2512 = !{!2508, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520}
!2513 = !DILocalVariable(name: "argsize", arg: 2, scope: !2509, file: !244, line: 804, type: !103)
!2514 = !DILocalVariable(name: "size", arg: 3, scope: !2509, file: !244, line: 804, type: !102)
!2515 = !DILocalVariable(name: "o", arg: 4, scope: !2509, file: !244, line: 805, type: !1625)
!2516 = !DILocalVariable(name: "p", scope: !2509, file: !244, line: 807, type: !1625)
!2517 = !DILocalVariable(name: "e", scope: !2509, file: !244, line: 808, type: !30)
!2518 = !DILocalVariable(name: "flags", scope: !2509, file: !244, line: 810, type: !30)
!2519 = !DILocalVariable(name: "bufsize", scope: !2509, file: !244, line: 811, type: !103)
!2520 = !DILocalVariable(name: "buf", scope: !2509, file: !244, line: 815, type: !21)
!2521 = !DILocation(line: 804, column: 33, scope: !2509, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 794, column: 10, scope: !2498)
!2523 = !DILocation(line: 804, column: 45, scope: !2509, inlinedAt: !2522)
!2524 = !DILocation(line: 804, column: 62, scope: !2509, inlinedAt: !2522)
!2525 = !DILocation(line: 805, column: 51, scope: !2509, inlinedAt: !2522)
!2526 = !DILocation(line: 807, column: 37, scope: !2509, inlinedAt: !2522)
!2527 = !DILocation(line: 807, column: 33, scope: !2509, inlinedAt: !2522)
!2528 = !DILocation(line: 808, column: 11, scope: !2509, inlinedAt: !2522)
!2529 = !DILocation(line: 808, column: 7, scope: !2509, inlinedAt: !2522)
!2530 = !DILocation(line: 810, column: 18, scope: !2509, inlinedAt: !2522)
!2531 = !DILocation(line: 810, column: 24, scope: !2509, inlinedAt: !2522)
!2532 = !DILocation(line: 810, column: 7, scope: !2509, inlinedAt: !2522)
!2533 = !DILocation(line: 811, column: 69, scope: !2509, inlinedAt: !2522)
!2534 = !DILocation(line: 812, column: 53, scope: !2509, inlinedAt: !2522)
!2535 = !DILocation(line: 813, column: 49, scope: !2509, inlinedAt: !2522)
!2536 = !DILocation(line: 814, column: 49, scope: !2509, inlinedAt: !2522)
!2537 = !DILocation(line: 811, column: 20, scope: !2509, inlinedAt: !2522)
!2538 = !DILocation(line: 814, column: 62, scope: !2509, inlinedAt: !2522)
!2539 = !DILocation(line: 811, column: 10, scope: !2509, inlinedAt: !2522)
!2540 = !DILocalVariable(name: "n", arg: 1, scope: !2541, file: !98, line: 220, type: !103)
!2541 = distinct !DISubprogram(name: "xcharalloc", scope: !98, file: !98, line: 220, type: !2542, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!21, !103}
!2544 = !{!2540}
!2545 = !DILocation(line: 220, column: 20, scope: !2541, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 815, column: 15, scope: !2509, inlinedAt: !2522)
!2547 = !DILocation(line: 222, column: 10, scope: !2541, inlinedAt: !2546)
!2548 = !DILocation(line: 815, column: 9, scope: !2509, inlinedAt: !2522)
!2549 = !DILocation(line: 816, column: 60, scope: !2509, inlinedAt: !2522)
!2550 = !DILocation(line: 818, column: 32, scope: !2509, inlinedAt: !2522)
!2551 = !DILocation(line: 818, column: 47, scope: !2509, inlinedAt: !2522)
!2552 = !DILocation(line: 816, column: 3, scope: !2509, inlinedAt: !2522)
!2553 = !DILocation(line: 819, column: 9, scope: !2509, inlinedAt: !2522)
!2554 = !DILocation(line: 794, column: 3, scope: !2498)
!2555 = !DILocation(line: 804, column: 33, scope: !2509)
!2556 = !DILocation(line: 804, column: 45, scope: !2509)
!2557 = !DILocation(line: 804, column: 62, scope: !2509)
!2558 = !DILocation(line: 805, column: 51, scope: !2509)
!2559 = !DILocation(line: 807, column: 37, scope: !2509)
!2560 = !DILocation(line: 807, column: 33, scope: !2509)
!2561 = !DILocation(line: 808, column: 11, scope: !2509)
!2562 = !DILocation(line: 808, column: 7, scope: !2509)
!2563 = !DILocation(line: 810, column: 18, scope: !2509)
!2564 = !DILocation(line: 810, column: 27, scope: !2509)
!2565 = !DILocation(line: 810, column: 24, scope: !2509)
!2566 = !DILocation(line: 810, column: 7, scope: !2509)
!2567 = !DILocation(line: 811, column: 69, scope: !2509)
!2568 = !DILocation(line: 812, column: 53, scope: !2509)
!2569 = !DILocation(line: 813, column: 49, scope: !2509)
!2570 = !DILocation(line: 814, column: 49, scope: !2509)
!2571 = !DILocation(line: 811, column: 20, scope: !2509)
!2572 = !DILocation(line: 814, column: 62, scope: !2509)
!2573 = !DILocation(line: 811, column: 10, scope: !2509)
!2574 = !DILocation(line: 220, column: 20, scope: !2541, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 815, column: 15, scope: !2509)
!2576 = !DILocation(line: 222, column: 10, scope: !2541, inlinedAt: !2575)
!2577 = !DILocation(line: 815, column: 9, scope: !2509)
!2578 = !DILocation(line: 816, column: 60, scope: !2509)
!2579 = !DILocation(line: 818, column: 32, scope: !2509)
!2580 = !DILocation(line: 818, column: 47, scope: !2509)
!2581 = !DILocation(line: 816, column: 3, scope: !2509)
!2582 = !DILocation(line: 819, column: 9, scope: !2509)
!2583 = !DILocation(line: 820, column: 7, scope: !2509)
!2584 = !DILocation(line: 821, column: 11, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2509, file: !244, line: 820, column: 7)
!2586 = !DILocation(line: 821, column: 5, scope: !2585)
!2587 = !DILocation(line: 822, column: 3, scope: !2509)
!2588 = distinct !DISubprogram(name: "quotearg_free", scope: !244, file: !244, line: 840, type: !707, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2589)
!2589 = !{!2590, !2591}
!2590 = !DILocalVariable(name: "sv", scope: !2588, file: !244, line: 842, type: !270)
!2591 = !DILocalVariable(name: "i", scope: !2588, file: !244, line: 843, type: !30)
!2592 = !DILocation(line: 842, column: 24, scope: !2588)
!2593 = !DILocation(line: 842, column: 19, scope: !2588)
!2594 = !DILocation(line: 843, column: 7, scope: !2588)
!2595 = !DILocation(line: 844, column: 19, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !244, line: 844, column: 3)
!2597 = distinct !DILexicalBlock(scope: !2588, file: !244, line: 844, column: 3)
!2598 = !DILocation(line: 844, column: 17, scope: !2596)
!2599 = !DILocation(line: 844, column: 3, scope: !2597)
!2600 = !DILocation(line: 845, column: 17, scope: !2596)
!2601 = !{!2602, !699, i64 8}
!2602 = !{!"slotvec", !867, i64 0, !699, i64 8}
!2603 = !DILocation(line: 845, column: 5, scope: !2596)
!2604 = !DILocation(line: 844, column: 28, scope: !2596)
!2605 = distinct !{!2605, !2599, !2606}
!2606 = !DILocation(line: 845, column: 20, scope: !2597)
!2607 = !DILocation(line: 846, column: 13, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2588, file: !244, line: 846, column: 7)
!2609 = !DILocation(line: 846, column: 17, scope: !2608)
!2610 = !DILocation(line: 846, column: 7, scope: !2588)
!2611 = !DILocation(line: 848, column: 7, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2608, file: !244, line: 847, column: 5)
!2613 = !DILocation(line: 849, column: 21, scope: !2612)
!2614 = !{!2602, !867, i64 0}
!2615 = !DILocation(line: 850, column: 20, scope: !2612)
!2616 = !DILocation(line: 851, column: 5, scope: !2612)
!2617 = !DILocation(line: 852, column: 10, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2588, file: !244, line: 852, column: 7)
!2619 = !DILocation(line: 852, column: 7, scope: !2588)
!2620 = !DILocation(line: 854, column: 13, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2618, file: !244, line: 853, column: 5)
!2622 = !DILocation(line: 854, column: 7, scope: !2621)
!2623 = !DILocation(line: 855, column: 15, scope: !2621)
!2624 = !DILocation(line: 856, column: 5, scope: !2621)
!2625 = !DILocation(line: 857, column: 10, scope: !2588)
!2626 = !DILocation(line: 858, column: 1, scope: !2588)
!2627 = distinct !DISubprogram(name: "quotearg_n", scope: !244, file: !244, line: 922, type: !2628, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!21, !30, !41}
!2630 = !{!2631, !2632}
!2631 = !DILocalVariable(name: "n", arg: 1, scope: !2627, file: !244, line: 922, type: !30)
!2632 = !DILocalVariable(name: "arg", arg: 2, scope: !2627, file: !244, line: 922, type: !41)
!2633 = !DILocation(line: 922, column: 17, scope: !2627)
!2634 = !DILocation(line: 922, column: 32, scope: !2627)
!2635 = !DILocation(line: 924, column: 10, scope: !2627)
!2636 = !DILocation(line: 924, column: 3, scope: !2627)
!2637 = distinct !DISubprogram(name: "quotearg_n_options", scope: !244, file: !244, line: 869, type: !2638, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!21, !30, !41, !103, !1625}
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647, !2650, !2652, !2653, !2654}
!2641 = !DILocalVariable(name: "n", arg: 1, scope: !2637, file: !244, line: 869, type: !30)
!2642 = !DILocalVariable(name: "arg", arg: 2, scope: !2637, file: !244, line: 869, type: !41)
!2643 = !DILocalVariable(name: "argsize", arg: 3, scope: !2637, file: !244, line: 869, type: !103)
!2644 = !DILocalVariable(name: "options", arg: 4, scope: !2637, file: !244, line: 870, type: !1625)
!2645 = !DILocalVariable(name: "e", scope: !2637, file: !244, line: 872, type: !30)
!2646 = !DILocalVariable(name: "sv", scope: !2637, file: !244, line: 874, type: !270)
!2647 = !DILocalVariable(name: "preallocated", scope: !2648, file: !244, line: 881, type: !193)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !244, line: 880, column: 5)
!2649 = distinct !DILexicalBlock(scope: !2637, file: !244, line: 879, column: 7)
!2650 = !DILocalVariable(name: "size", scope: !2651, file: !244, line: 894, type: !103)
!2651 = distinct !DILexicalBlock(scope: !2637, file: !244, line: 893, column: 3)
!2652 = !DILocalVariable(name: "val", scope: !2651, file: !244, line: 895, type: !21)
!2653 = !DILocalVariable(name: "flags", scope: !2651, file: !244, line: 897, type: !30)
!2654 = !DILocalVariable(name: "qsize", scope: !2651, file: !244, line: 898, type: !103)
!2655 = !DILocation(line: 869, column: 25, scope: !2637)
!2656 = !DILocation(line: 869, column: 40, scope: !2637)
!2657 = !DILocation(line: 869, column: 52, scope: !2637)
!2658 = !DILocation(line: 870, column: 51, scope: !2637)
!2659 = !DILocation(line: 872, column: 11, scope: !2637)
!2660 = !DILocation(line: 872, column: 7, scope: !2637)
!2661 = !DILocation(line: 874, column: 24, scope: !2637)
!2662 = !DILocation(line: 874, column: 19, scope: !2637)
!2663 = !DILocation(line: 876, column: 9, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2637, file: !244, line: 876, column: 7)
!2665 = !DILocation(line: 876, column: 7, scope: !2637)
!2666 = !DILocation(line: 877, column: 5, scope: !2664)
!2667 = !DILocation(line: 879, column: 7, scope: !2649)
!2668 = !DILocation(line: 879, column: 14, scope: !2649)
!2669 = !DILocation(line: 879, column: 7, scope: !2637)
!2670 = !DILocation(line: 881, column: 31, scope: !2648)
!2671 = !DILocation(line: 883, column: 67, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2648, file: !244, line: 883, column: 11)
!2673 = !DILocation(line: 883, column: 11, scope: !2648)
!2674 = !DILocation(line: 884, column: 9, scope: !2672)
!2675 = !DILocation(line: 886, column: 32, scope: !2648)
!2676 = !DILocation(line: 886, column: 61, scope: !2648)
!2677 = !DILocation(line: 886, column: 58, scope: !2648)
!2678 = !DILocation(line: 886, column: 66, scope: !2648)
!2679 = !DILocation(line: 886, column: 22, scope: !2648)
!2680 = !DILocation(line: 886, column: 15, scope: !2648)
!2681 = !DILocation(line: 887, column: 11, scope: !2648)
!2682 = !DILocation(line: 888, column: 15, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2648, file: !244, line: 887, column: 11)
!2684 = !{i64 0, i64 8, !866, i64 8, i64 8, !698}
!2685 = !DILocation(line: 888, column: 9, scope: !2683)
!2686 = !DILocation(line: 889, column: 20, scope: !2648)
!2687 = !DILocation(line: 889, column: 18, scope: !2648)
!2688 = !DILocation(line: 889, column: 7, scope: !2648)
!2689 = !DILocation(line: 889, column: 38, scope: !2648)
!2690 = !DILocation(line: 889, column: 31, scope: !2648)
!2691 = !DILocation(line: 889, column: 48, scope: !2648)
!2692 = !DILocation(line: 890, column: 14, scope: !2648)
!2693 = !DILocation(line: 891, column: 5, scope: !2648)
!2694 = !DILocation(line: 894, column: 19, scope: !2651)
!2695 = !DILocation(line: 894, column: 25, scope: !2651)
!2696 = !DILocation(line: 894, column: 12, scope: !2651)
!2697 = !DILocation(line: 895, column: 23, scope: !2651)
!2698 = !DILocation(line: 895, column: 11, scope: !2651)
!2699 = !DILocation(line: 897, column: 26, scope: !2651)
!2700 = !DILocation(line: 897, column: 32, scope: !2651)
!2701 = !DILocation(line: 897, column: 9, scope: !2651)
!2702 = !DILocation(line: 899, column: 55, scope: !2651)
!2703 = !DILocation(line: 900, column: 46, scope: !2651)
!2704 = !DILocation(line: 901, column: 55, scope: !2651)
!2705 = !DILocation(line: 902, column: 55, scope: !2651)
!2706 = !DILocation(line: 898, column: 20, scope: !2651)
!2707 = !DILocation(line: 898, column: 12, scope: !2651)
!2708 = !DILocation(line: 904, column: 14, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2651, file: !244, line: 904, column: 9)
!2710 = !DILocation(line: 904, column: 9, scope: !2651)
!2711 = !DILocation(line: 906, column: 35, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !244, line: 905, column: 7)
!2713 = !DILocation(line: 906, column: 20, scope: !2712)
!2714 = !DILocation(line: 907, column: 17, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2712, file: !244, line: 907, column: 13)
!2716 = !DILocation(line: 907, column: 13, scope: !2712)
!2717 = !DILocation(line: 908, column: 11, scope: !2715)
!2718 = !DILocation(line: 220, column: 20, scope: !2541, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 909, column: 27, scope: !2712)
!2720 = !DILocation(line: 222, column: 10, scope: !2541, inlinedAt: !2719)
!2721 = !DILocation(line: 909, column: 19, scope: !2712)
!2722 = !DILocation(line: 910, column: 69, scope: !2712)
!2723 = !DILocation(line: 912, column: 44, scope: !2712)
!2724 = !DILocation(line: 913, column: 44, scope: !2712)
!2725 = !DILocation(line: 910, column: 9, scope: !2712)
!2726 = !DILocation(line: 914, column: 7, scope: !2712)
!2727 = !DILocation(line: 916, column: 11, scope: !2651)
!2728 = !DILocation(line: 917, column: 5, scope: !2651)
!2729 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !244, file: !244, line: 928, type: !2730, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!21, !30, !41, !103}
!2732 = !{!2733, !2734, !2735}
!2733 = !DILocalVariable(name: "n", arg: 1, scope: !2729, file: !244, line: 928, type: !30)
!2734 = !DILocalVariable(name: "arg", arg: 2, scope: !2729, file: !244, line: 928, type: !41)
!2735 = !DILocalVariable(name: "argsize", arg: 3, scope: !2729, file: !244, line: 928, type: !103)
!2736 = !DILocation(line: 928, column: 21, scope: !2729)
!2737 = !DILocation(line: 928, column: 36, scope: !2729)
!2738 = !DILocation(line: 928, column: 48, scope: !2729)
!2739 = !DILocation(line: 930, column: 10, scope: !2729)
!2740 = !DILocation(line: 930, column: 3, scope: !2729)
!2741 = distinct !DISubprogram(name: "quotearg", scope: !244, file: !244, line: 934, type: !2742, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!21, !41}
!2744 = !{!2745}
!2745 = !DILocalVariable(name: "arg", arg: 1, scope: !2741, file: !244, line: 934, type: !41)
!2746 = !DILocation(line: 934, column: 23, scope: !2741)
!2747 = !DILocation(line: 922, column: 17, scope: !2627, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 936, column: 10, scope: !2741)
!2749 = !DILocation(line: 922, column: 32, scope: !2627, inlinedAt: !2748)
!2750 = !DILocation(line: 924, column: 10, scope: !2627, inlinedAt: !2748)
!2751 = !DILocation(line: 936, column: 3, scope: !2741)
!2752 = distinct !DISubprogram(name: "quotearg_mem", scope: !244, file: !244, line: 940, type: !2753, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!21, !41, !103}
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "arg", arg: 1, scope: !2752, file: !244, line: 940, type: !41)
!2757 = !DILocalVariable(name: "argsize", arg: 2, scope: !2752, file: !244, line: 940, type: !103)
!2758 = !DILocation(line: 940, column: 27, scope: !2752)
!2759 = !DILocation(line: 940, column: 39, scope: !2752)
!2760 = !DILocation(line: 928, column: 21, scope: !2729, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 942, column: 10, scope: !2752)
!2762 = !DILocation(line: 928, column: 36, scope: !2729, inlinedAt: !2761)
!2763 = !DILocation(line: 928, column: 48, scope: !2729, inlinedAt: !2761)
!2764 = !DILocation(line: 930, column: 10, scope: !2729, inlinedAt: !2761)
!2765 = !DILocation(line: 942, column: 3, scope: !2752)
!2766 = distinct !DISubprogram(name: "quotearg_n_style", scope: !244, file: !244, line: 946, type: !2767, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!21, !30, !74, !41}
!2769 = !{!2770, !2771, !2772, !2773}
!2770 = !DILocalVariable(name: "n", arg: 1, scope: !2766, file: !244, line: 946, type: !30)
!2771 = !DILocalVariable(name: "s", arg: 2, scope: !2766, file: !244, line: 946, type: !74)
!2772 = !DILocalVariable(name: "arg", arg: 3, scope: !2766, file: !244, line: 946, type: !41)
!2773 = !DILocalVariable(name: "o", scope: !2766, file: !244, line: 948, type: !1626)
!2774 = !DILocalVariable(name: "o", scope: !2775, file: !244, line: 187, type: !251)
!2775 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !244, file: !244, line: 185, type: !2776, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!251, !74}
!2778 = !{!2779, !2774}
!2779 = !DILocalVariable(name: "style", arg: 1, scope: !2775, file: !244, line: 185, type: !74)
!2780 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2781 = !DILocation(line: 187, column: 26, scope: !2775, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 948, column: 36, scope: !2766)
!2783 = !DILocation(line: 946, column: 23, scope: !2766)
!2784 = !DILocation(line: 946, column: 45, scope: !2766)
!2785 = !DILocation(line: 946, column: 60, scope: !2766)
!2786 = !DILocation(line: 948, column: 3, scope: !2766)
!2787 = !DILocation(line: 948, column: 32, scope: !2766)
!2788 = !DILocation(line: 185, column: 48, scope: !2775, inlinedAt: !2782)
!2789 = !DILocation(line: 187, column: 3, scope: !2775, inlinedAt: !2782)
!2790 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2791 = !DILocation(line: 188, column: 13, scope: !2792, inlinedAt: !2782)
!2792 = distinct !DILexicalBlock(scope: !2775, file: !244, line: 188, column: 7)
!2793 = !DILocation(line: 188, column: 7, scope: !2775, inlinedAt: !2782)
!2794 = !DILocation(line: 189, column: 5, scope: !2792, inlinedAt: !2782)
!2795 = !{!2796}
!2796 = distinct !{!2796, !2797, !"quoting_options_from_style: argument 0"}
!2797 = distinct !{!2797, !"quoting_options_from_style"}
!2798 = !DILocation(line: 191, column: 10, scope: !2775, inlinedAt: !2782)
!2799 = !DILocation(line: 192, column: 1, scope: !2775, inlinedAt: !2782)
!2800 = !DILocation(line: 949, column: 10, scope: !2766)
!2801 = !DILocation(line: 950, column: 1, scope: !2766)
!2802 = !DILocation(line: 949, column: 3, scope: !2766)
!2803 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !244, file: !244, line: 953, type: !2804, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!21, !30, !74, !41, !103}
!2806 = !{!2807, !2808, !2809, !2810, !2811}
!2807 = !DILocalVariable(name: "n", arg: 1, scope: !2803, file: !244, line: 953, type: !30)
!2808 = !DILocalVariable(name: "s", arg: 2, scope: !2803, file: !244, line: 953, type: !74)
!2809 = !DILocalVariable(name: "arg", arg: 3, scope: !2803, file: !244, line: 954, type: !41)
!2810 = !DILocalVariable(name: "argsize", arg: 4, scope: !2803, file: !244, line: 954, type: !103)
!2811 = !DILocalVariable(name: "o", scope: !2803, file: !244, line: 956, type: !1626)
!2812 = !DILocation(line: 187, column: 26, scope: !2775, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 956, column: 36, scope: !2803)
!2814 = !DILocation(line: 953, column: 27, scope: !2803)
!2815 = !DILocation(line: 953, column: 49, scope: !2803)
!2816 = !DILocation(line: 954, column: 35, scope: !2803)
!2817 = !DILocation(line: 954, column: 47, scope: !2803)
!2818 = !DILocation(line: 956, column: 3, scope: !2803)
!2819 = !DILocation(line: 956, column: 32, scope: !2803)
!2820 = !DILocation(line: 185, column: 48, scope: !2775, inlinedAt: !2813)
!2821 = !DILocation(line: 187, column: 3, scope: !2775, inlinedAt: !2813)
!2822 = !DILocation(line: 188, column: 13, scope: !2792, inlinedAt: !2813)
!2823 = !DILocation(line: 188, column: 7, scope: !2775, inlinedAt: !2813)
!2824 = !DILocation(line: 189, column: 5, scope: !2792, inlinedAt: !2813)
!2825 = !{!2826}
!2826 = distinct !{!2826, !2827, !"quoting_options_from_style: argument 0"}
!2827 = distinct !{!2827, !"quoting_options_from_style"}
!2828 = !DILocation(line: 191, column: 10, scope: !2775, inlinedAt: !2813)
!2829 = !DILocation(line: 192, column: 1, scope: !2775, inlinedAt: !2813)
!2830 = !DILocation(line: 957, column: 10, scope: !2803)
!2831 = !DILocation(line: 958, column: 1, scope: !2803)
!2832 = !DILocation(line: 957, column: 3, scope: !2803)
!2833 = distinct !DISubprogram(name: "quotearg_style", scope: !244, file: !244, line: 961, type: !2834, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!21, !74, !41}
!2836 = !{!2837, !2838}
!2837 = !DILocalVariable(name: "s", arg: 1, scope: !2833, file: !244, line: 961, type: !74)
!2838 = !DILocalVariable(name: "arg", arg: 2, scope: !2833, file: !244, line: 961, type: !41)
!2839 = !DILocation(line: 187, column: 26, scope: !2775, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 948, column: 36, scope: !2766, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 963, column: 10, scope: !2833)
!2842 = !DILocation(line: 961, column: 36, scope: !2833)
!2843 = !DILocation(line: 961, column: 51, scope: !2833)
!2844 = !DILocation(line: 946, column: 23, scope: !2766, inlinedAt: !2841)
!2845 = !DILocation(line: 946, column: 45, scope: !2766, inlinedAt: !2841)
!2846 = !DILocation(line: 946, column: 60, scope: !2766, inlinedAt: !2841)
!2847 = !DILocation(line: 948, column: 3, scope: !2766, inlinedAt: !2841)
!2848 = !DILocation(line: 948, column: 32, scope: !2766, inlinedAt: !2841)
!2849 = !DILocation(line: 185, column: 48, scope: !2775, inlinedAt: !2840)
!2850 = !DILocation(line: 187, column: 3, scope: !2775, inlinedAt: !2840)
!2851 = !DILocation(line: 188, column: 13, scope: !2792, inlinedAt: !2840)
!2852 = !DILocation(line: 188, column: 7, scope: !2775, inlinedAt: !2840)
!2853 = !DILocation(line: 189, column: 5, scope: !2792, inlinedAt: !2840)
!2854 = !{!2855}
!2855 = distinct !{!2855, !2856, !"quoting_options_from_style: argument 0"}
!2856 = distinct !{!2856, !"quoting_options_from_style"}
!2857 = !DILocation(line: 191, column: 10, scope: !2775, inlinedAt: !2840)
!2858 = !DILocation(line: 192, column: 1, scope: !2775, inlinedAt: !2840)
!2859 = !DILocation(line: 949, column: 10, scope: !2766, inlinedAt: !2841)
!2860 = !DILocation(line: 950, column: 1, scope: !2766, inlinedAt: !2841)
!2861 = !DILocation(line: 963, column: 3, scope: !2833)
!2862 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !244, file: !244, line: 967, type: !2863, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!21, !74, !41, !103}
!2865 = !{!2866, !2867, !2868}
!2866 = !DILocalVariable(name: "s", arg: 1, scope: !2862, file: !244, line: 967, type: !74)
!2867 = !DILocalVariable(name: "arg", arg: 2, scope: !2862, file: !244, line: 967, type: !41)
!2868 = !DILocalVariable(name: "argsize", arg: 3, scope: !2862, file: !244, line: 967, type: !103)
!2869 = !DILocation(line: 187, column: 26, scope: !2775, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 956, column: 36, scope: !2803, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 969, column: 10, scope: !2862)
!2872 = !DILocation(line: 967, column: 40, scope: !2862)
!2873 = !DILocation(line: 967, column: 55, scope: !2862)
!2874 = !DILocation(line: 967, column: 67, scope: !2862)
!2875 = !DILocation(line: 953, column: 27, scope: !2803, inlinedAt: !2871)
!2876 = !DILocation(line: 953, column: 49, scope: !2803, inlinedAt: !2871)
!2877 = !DILocation(line: 954, column: 35, scope: !2803, inlinedAt: !2871)
!2878 = !DILocation(line: 954, column: 47, scope: !2803, inlinedAt: !2871)
!2879 = !DILocation(line: 956, column: 3, scope: !2803, inlinedAt: !2871)
!2880 = !DILocation(line: 956, column: 32, scope: !2803, inlinedAt: !2871)
!2881 = !DILocation(line: 185, column: 48, scope: !2775, inlinedAt: !2870)
!2882 = !DILocation(line: 187, column: 3, scope: !2775, inlinedAt: !2870)
!2883 = !DILocation(line: 188, column: 13, scope: !2792, inlinedAt: !2870)
!2884 = !DILocation(line: 188, column: 7, scope: !2775, inlinedAt: !2870)
!2885 = !DILocation(line: 189, column: 5, scope: !2792, inlinedAt: !2870)
!2886 = !{!2887}
!2887 = distinct !{!2887, !2888, !"quoting_options_from_style: argument 0"}
!2888 = distinct !{!2888, !"quoting_options_from_style"}
!2889 = !DILocation(line: 191, column: 10, scope: !2775, inlinedAt: !2870)
!2890 = !DILocation(line: 192, column: 1, scope: !2775, inlinedAt: !2870)
!2891 = !DILocation(line: 957, column: 10, scope: !2803, inlinedAt: !2871)
!2892 = !DILocation(line: 958, column: 1, scope: !2803, inlinedAt: !2871)
!2893 = !DILocation(line: 969, column: 3, scope: !2862)
!2894 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !244, file: !244, line: 973, type: !2895, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!21, !41, !103, !22}
!2897 = !{!2898, !2899, !2900, !2901}
!2898 = !DILocalVariable(name: "arg", arg: 1, scope: !2894, file: !244, line: 973, type: !41)
!2899 = !DILocalVariable(name: "argsize", arg: 2, scope: !2894, file: !244, line: 973, type: !103)
!2900 = !DILocalVariable(name: "ch", arg: 3, scope: !2894, file: !244, line: 973, type: !22)
!2901 = !DILocalVariable(name: "options", scope: !2894, file: !244, line: 975, type: !251)
!2902 = !DILocation(line: 973, column: 32, scope: !2894)
!2903 = !DILocation(line: 973, column: 44, scope: !2894)
!2904 = !DILocation(line: 973, column: 58, scope: !2894)
!2905 = !DILocation(line: 975, column: 3, scope: !2894)
!2906 = !DILocation(line: 976, column: 13, scope: !2894)
!2907 = !{i64 0, i64 4, !900, i64 4, i64 4, !793, i64 8, i64 32, !900, i64 40, i64 8, !698, i64 48, i64 8, !698}
!2908 = !DILocation(line: 975, column: 26, scope: !2894)
!2909 = !DILocation(line: 144, column: 43, scope: !1647, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 977, column: 3, scope: !2894)
!2911 = !DILocation(line: 144, column: 51, scope: !1647, inlinedAt: !2910)
!2912 = !DILocation(line: 144, column: 58, scope: !1647, inlinedAt: !2910)
!2913 = !DILocation(line: 146, column: 17, scope: !1647, inlinedAt: !2910)
!2914 = !DILocation(line: 148, column: 62, scope: !1647, inlinedAt: !2910)
!2915 = !DILocation(line: 148, column: 57, scope: !1647, inlinedAt: !2910)
!2916 = !DILocation(line: 147, column: 17, scope: !1647, inlinedAt: !2910)
!2917 = !DILocation(line: 149, column: 18, scope: !1647, inlinedAt: !2910)
!2918 = !DILocation(line: 149, column: 15, scope: !1647, inlinedAt: !2910)
!2919 = !DILocation(line: 149, column: 7, scope: !1647, inlinedAt: !2910)
!2920 = !DILocation(line: 150, column: 12, scope: !1647, inlinedAt: !2910)
!2921 = !DILocation(line: 150, column: 15, scope: !1647, inlinedAt: !2910)
!2922 = !DILocation(line: 150, column: 25, scope: !1647, inlinedAt: !2910)
!2923 = !DILocation(line: 150, column: 7, scope: !1647, inlinedAt: !2910)
!2924 = !DILocation(line: 151, column: 18, scope: !1647, inlinedAt: !2910)
!2925 = !DILocation(line: 151, column: 23, scope: !1647, inlinedAt: !2910)
!2926 = !DILocation(line: 151, column: 6, scope: !1647, inlinedAt: !2910)
!2927 = !DILocation(line: 978, column: 10, scope: !2894)
!2928 = !DILocation(line: 979, column: 1, scope: !2894)
!2929 = !DILocation(line: 978, column: 3, scope: !2894)
!2930 = distinct !DISubprogram(name: "quotearg_char", scope: !244, file: !244, line: 982, type: !2931, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!21, !41, !22}
!2933 = !{!2934, !2935}
!2934 = !DILocalVariable(name: "arg", arg: 1, scope: !2930, file: !244, line: 982, type: !41)
!2935 = !DILocalVariable(name: "ch", arg: 2, scope: !2930, file: !244, line: 982, type: !22)
!2936 = !DILocation(line: 982, column: 28, scope: !2930)
!2937 = !DILocation(line: 982, column: 38, scope: !2930)
!2938 = !DILocation(line: 973, column: 32, scope: !2894, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 984, column: 10, scope: !2930)
!2940 = !DILocation(line: 973, column: 44, scope: !2894, inlinedAt: !2939)
!2941 = !DILocation(line: 973, column: 58, scope: !2894, inlinedAt: !2939)
!2942 = !DILocation(line: 975, column: 3, scope: !2894, inlinedAt: !2939)
!2943 = !DILocation(line: 976, column: 13, scope: !2894, inlinedAt: !2939)
!2944 = !DILocation(line: 975, column: 26, scope: !2894, inlinedAt: !2939)
!2945 = !DILocation(line: 144, column: 43, scope: !1647, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 977, column: 3, scope: !2894, inlinedAt: !2939)
!2947 = !DILocation(line: 144, column: 51, scope: !1647, inlinedAt: !2946)
!2948 = !DILocation(line: 144, column: 58, scope: !1647, inlinedAt: !2946)
!2949 = !DILocation(line: 146, column: 17, scope: !1647, inlinedAt: !2946)
!2950 = !DILocation(line: 148, column: 62, scope: !1647, inlinedAt: !2946)
!2951 = !DILocation(line: 148, column: 57, scope: !1647, inlinedAt: !2946)
!2952 = !DILocation(line: 147, column: 17, scope: !1647, inlinedAt: !2946)
!2953 = !DILocation(line: 149, column: 18, scope: !1647, inlinedAt: !2946)
!2954 = !DILocation(line: 149, column: 15, scope: !1647, inlinedAt: !2946)
!2955 = !DILocation(line: 149, column: 7, scope: !1647, inlinedAt: !2946)
!2956 = !DILocation(line: 150, column: 12, scope: !1647, inlinedAt: !2946)
!2957 = !DILocation(line: 150, column: 15, scope: !1647, inlinedAt: !2946)
!2958 = !DILocation(line: 150, column: 25, scope: !1647, inlinedAt: !2946)
!2959 = !DILocation(line: 150, column: 7, scope: !1647, inlinedAt: !2946)
!2960 = !DILocation(line: 151, column: 18, scope: !1647, inlinedAt: !2946)
!2961 = !DILocation(line: 151, column: 23, scope: !1647, inlinedAt: !2946)
!2962 = !DILocation(line: 151, column: 6, scope: !1647, inlinedAt: !2946)
!2963 = !DILocation(line: 978, column: 10, scope: !2894, inlinedAt: !2939)
!2964 = !DILocation(line: 979, column: 1, scope: !2894, inlinedAt: !2939)
!2965 = !DILocation(line: 984, column: 3, scope: !2930)
!2966 = distinct !DISubprogram(name: "quotearg_colon", scope: !244, file: !244, line: 988, type: !2742, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2967)
!2967 = !{!2968}
!2968 = !DILocalVariable(name: "arg", arg: 1, scope: !2966, file: !244, line: 988, type: !41)
!2969 = !DILocation(line: 988, column: 29, scope: !2966)
!2970 = !DILocation(line: 982, column: 28, scope: !2930, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 990, column: 10, scope: !2966)
!2972 = !DILocation(line: 982, column: 38, scope: !2930, inlinedAt: !2971)
!2973 = !DILocation(line: 973, column: 32, scope: !2894, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 984, column: 10, scope: !2930, inlinedAt: !2971)
!2975 = !DILocation(line: 973, column: 44, scope: !2894, inlinedAt: !2974)
!2976 = !DILocation(line: 973, column: 58, scope: !2894, inlinedAt: !2974)
!2977 = !DILocation(line: 975, column: 3, scope: !2894, inlinedAt: !2974)
!2978 = !DILocation(line: 976, column: 13, scope: !2894, inlinedAt: !2974)
!2979 = !DILocation(line: 975, column: 26, scope: !2894, inlinedAt: !2974)
!2980 = !DILocation(line: 144, column: 43, scope: !1647, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 977, column: 3, scope: !2894, inlinedAt: !2974)
!2982 = !DILocation(line: 144, column: 51, scope: !1647, inlinedAt: !2981)
!2983 = !DILocation(line: 144, column: 58, scope: !1647, inlinedAt: !2981)
!2984 = !DILocation(line: 146, column: 17, scope: !1647, inlinedAt: !2981)
!2985 = !DILocation(line: 148, column: 57, scope: !1647, inlinedAt: !2981)
!2986 = !DILocation(line: 147, column: 17, scope: !1647, inlinedAt: !2981)
!2987 = !DILocation(line: 149, column: 7, scope: !1647, inlinedAt: !2981)
!2988 = !DILocation(line: 150, column: 12, scope: !1647, inlinedAt: !2981)
!2989 = !DILocation(line: 151, column: 6, scope: !1647, inlinedAt: !2981)
!2990 = !DILocation(line: 978, column: 10, scope: !2894, inlinedAt: !2974)
!2991 = !DILocation(line: 979, column: 1, scope: !2894, inlinedAt: !2974)
!2992 = !DILocation(line: 990, column: 3, scope: !2966)
!2993 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !244, file: !244, line: 994, type: !2753, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !2994)
!2994 = !{!2995, !2996}
!2995 = !DILocalVariable(name: "arg", arg: 1, scope: !2993, file: !244, line: 994, type: !41)
!2996 = !DILocalVariable(name: "argsize", arg: 2, scope: !2993, file: !244, line: 994, type: !103)
!2997 = !DILocation(line: 994, column: 33, scope: !2993)
!2998 = !DILocation(line: 994, column: 45, scope: !2993)
!2999 = !DILocation(line: 973, column: 32, scope: !2894, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 996, column: 10, scope: !2993)
!3001 = !DILocation(line: 973, column: 44, scope: !2894, inlinedAt: !3000)
!3002 = !DILocation(line: 973, column: 58, scope: !2894, inlinedAt: !3000)
!3003 = !DILocation(line: 975, column: 3, scope: !2894, inlinedAt: !3000)
!3004 = !DILocation(line: 976, column: 13, scope: !2894, inlinedAt: !3000)
!3005 = !DILocation(line: 975, column: 26, scope: !2894, inlinedAt: !3000)
!3006 = !DILocation(line: 144, column: 43, scope: !1647, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 977, column: 3, scope: !2894, inlinedAt: !3000)
!3008 = !DILocation(line: 144, column: 51, scope: !1647, inlinedAt: !3007)
!3009 = !DILocation(line: 144, column: 58, scope: !1647, inlinedAt: !3007)
!3010 = !DILocation(line: 146, column: 17, scope: !1647, inlinedAt: !3007)
!3011 = !DILocation(line: 148, column: 57, scope: !1647, inlinedAt: !3007)
!3012 = !DILocation(line: 147, column: 17, scope: !1647, inlinedAt: !3007)
!3013 = !DILocation(line: 149, column: 7, scope: !1647, inlinedAt: !3007)
!3014 = !DILocation(line: 150, column: 12, scope: !1647, inlinedAt: !3007)
!3015 = !DILocation(line: 151, column: 6, scope: !1647, inlinedAt: !3007)
!3016 = !DILocation(line: 978, column: 10, scope: !2894, inlinedAt: !3000)
!3017 = !DILocation(line: 979, column: 1, scope: !2894, inlinedAt: !3000)
!3018 = !DILocation(line: 996, column: 3, scope: !2993)
!3019 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !244, file: !244, line: 1000, type: !2767, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !3020)
!3020 = !{!3021, !3022, !3023, !3024}
!3021 = !DILocalVariable(name: "n", arg: 1, scope: !3019, file: !244, line: 1000, type: !30)
!3022 = !DILocalVariable(name: "s", arg: 2, scope: !3019, file: !244, line: 1000, type: !74)
!3023 = !DILocalVariable(name: "arg", arg: 3, scope: !3019, file: !244, line: 1000, type: !41)
!3024 = !DILocalVariable(name: "options", scope: !3019, file: !244, line: 1002, type: !251)
!3025 = !DILocation(line: 187, column: 26, scope: !2775, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 1003, column: 13, scope: !3019)
!3027 = !DILocation(line: 1000, column: 29, scope: !3019)
!3028 = !DILocation(line: 1000, column: 51, scope: !3019)
!3029 = !DILocation(line: 1000, column: 66, scope: !3019)
!3030 = !DILocation(line: 1002, column: 3, scope: !3019)
!3031 = !DILocation(line: 185, column: 48, scope: !2775, inlinedAt: !3026)
!3032 = !DILocation(line: 187, column: 3, scope: !2775, inlinedAt: !3026)
!3033 = !DILocation(line: 188, column: 13, scope: !2792, inlinedAt: !3026)
!3034 = !DILocation(line: 188, column: 7, scope: !2775, inlinedAt: !3026)
!3035 = !DILocation(line: 189, column: 5, scope: !2792, inlinedAt: !3026)
!3036 = !{!3037}
!3037 = distinct !{!3037, !3038, !"quoting_options_from_style: argument 0"}
!3038 = distinct !{!3038, !"quoting_options_from_style"}
!3039 = !DILocation(line: 191, column: 10, scope: !2775, inlinedAt: !3026)
!3040 = !DILocation(line: 192, column: 1, scope: !2775, inlinedAt: !3026)
!3041 = !DILocation(line: 1003, column: 13, scope: !3019)
!3042 = !DILocation(line: 1002, column: 26, scope: !3019)
!3043 = !DILocation(line: 144, column: 43, scope: !1647, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 1004, column: 3, scope: !3019)
!3045 = !DILocation(line: 144, column: 51, scope: !1647, inlinedAt: !3044)
!3046 = !DILocation(line: 144, column: 58, scope: !1647, inlinedAt: !3044)
!3047 = !DILocation(line: 146, column: 17, scope: !1647, inlinedAt: !3044)
!3048 = !DILocation(line: 148, column: 57, scope: !1647, inlinedAt: !3044)
!3049 = !DILocation(line: 147, column: 17, scope: !1647, inlinedAt: !3044)
!3050 = !DILocation(line: 149, column: 7, scope: !1647, inlinedAt: !3044)
!3051 = !DILocation(line: 150, column: 12, scope: !1647, inlinedAt: !3044)
!3052 = !DILocation(line: 151, column: 6, scope: !1647, inlinedAt: !3044)
!3053 = !DILocation(line: 1005, column: 10, scope: !3019)
!3054 = !DILocation(line: 1006, column: 1, scope: !3019)
!3055 = !DILocation(line: 1005, column: 3, scope: !3019)
!3056 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !244, file: !244, line: 1009, type: !3057, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!21, !30, !41, !41, !41}
!3059 = !{!3060, !3061, !3062, !3063}
!3060 = !DILocalVariable(name: "n", arg: 1, scope: !3056, file: !244, line: 1009, type: !30)
!3061 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3056, file: !244, line: 1009, type: !41)
!3062 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3056, file: !244, line: 1010, type: !41)
!3063 = !DILocalVariable(name: "arg", arg: 4, scope: !3056, file: !244, line: 1010, type: !41)
!3064 = !DILocation(line: 1009, column: 24, scope: !3056)
!3065 = !DILocation(line: 1009, column: 39, scope: !3056)
!3066 = !DILocation(line: 1010, column: 32, scope: !3056)
!3067 = !DILocation(line: 1010, column: 57, scope: !3056)
!3068 = !DILocalVariable(name: "n", arg: 1, scope: !3069, file: !244, line: 1017, type: !30)
!3069 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !244, file: !244, line: 1017, type: !3070, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !3072)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!21, !30, !41, !41, !41, !103}
!3072 = !{!3068, !3073, !3074, !3075, !3076, !3077}
!3073 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3069, file: !244, line: 1017, type: !41)
!3074 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3069, file: !244, line: 1018, type: !41)
!3075 = !DILocalVariable(name: "arg", arg: 4, scope: !3069, file: !244, line: 1019, type: !41)
!3076 = !DILocalVariable(name: "argsize", arg: 5, scope: !3069, file: !244, line: 1019, type: !103)
!3077 = !DILocalVariable(name: "o", scope: !3069, file: !244, line: 1021, type: !251)
!3078 = !DILocation(line: 1017, column: 28, scope: !3069, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 1012, column: 10, scope: !3056)
!3080 = !DILocation(line: 1017, column: 43, scope: !3069, inlinedAt: !3079)
!3081 = !DILocation(line: 1018, column: 36, scope: !3069, inlinedAt: !3079)
!3082 = !DILocation(line: 1019, column: 36, scope: !3069, inlinedAt: !3079)
!3083 = !DILocation(line: 1019, column: 48, scope: !3069, inlinedAt: !3079)
!3084 = !DILocation(line: 1021, column: 3, scope: !3069, inlinedAt: !3079)
!3085 = !DILocation(line: 1021, column: 30, scope: !3069, inlinedAt: !3079)
!3086 = !DILocation(line: 1021, column: 26, scope: !3069, inlinedAt: !3079)
!3087 = !DILocation(line: 171, column: 45, scope: !1696, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 1022, column: 3, scope: !3069, inlinedAt: !3079)
!3089 = !DILocation(line: 172, column: 33, scope: !1696, inlinedAt: !3088)
!3090 = !DILocation(line: 172, column: 57, scope: !1696, inlinedAt: !3088)
!3091 = !DILocation(line: 176, column: 6, scope: !1696, inlinedAt: !3088)
!3092 = !DILocation(line: 176, column: 12, scope: !1696, inlinedAt: !3088)
!3093 = !DILocation(line: 177, column: 8, scope: !1712, inlinedAt: !3088)
!3094 = !DILocation(line: 177, column: 23, scope: !1712, inlinedAt: !3088)
!3095 = !DILocation(line: 177, column: 19, scope: !1712, inlinedAt: !3088)
!3096 = !DILocation(line: 178, column: 5, scope: !1712, inlinedAt: !3088)
!3097 = !DILocation(line: 179, column: 6, scope: !1696, inlinedAt: !3088)
!3098 = !DILocation(line: 179, column: 17, scope: !1696, inlinedAt: !3088)
!3099 = !DILocation(line: 180, column: 6, scope: !1696, inlinedAt: !3088)
!3100 = !DILocation(line: 180, column: 18, scope: !1696, inlinedAt: !3088)
!3101 = !DILocation(line: 1023, column: 10, scope: !3069, inlinedAt: !3079)
!3102 = !DILocation(line: 1024, column: 1, scope: !3069, inlinedAt: !3079)
!3103 = !DILocation(line: 1012, column: 3, scope: !3056)
!3104 = !DILocation(line: 1017, column: 28, scope: !3069)
!3105 = !DILocation(line: 1017, column: 43, scope: !3069)
!3106 = !DILocation(line: 1018, column: 36, scope: !3069)
!3107 = !DILocation(line: 1019, column: 36, scope: !3069)
!3108 = !DILocation(line: 1019, column: 48, scope: !3069)
!3109 = !DILocation(line: 1021, column: 3, scope: !3069)
!3110 = !DILocation(line: 1021, column: 30, scope: !3069)
!3111 = !DILocation(line: 1021, column: 26, scope: !3069)
!3112 = !DILocation(line: 171, column: 45, scope: !1696, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 1022, column: 3, scope: !3069)
!3114 = !DILocation(line: 172, column: 33, scope: !1696, inlinedAt: !3113)
!3115 = !DILocation(line: 172, column: 57, scope: !1696, inlinedAt: !3113)
!3116 = !DILocation(line: 176, column: 6, scope: !1696, inlinedAt: !3113)
!3117 = !DILocation(line: 176, column: 12, scope: !1696, inlinedAt: !3113)
!3118 = !DILocation(line: 177, column: 8, scope: !1712, inlinedAt: !3113)
!3119 = !DILocation(line: 177, column: 23, scope: !1712, inlinedAt: !3113)
!3120 = !DILocation(line: 177, column: 19, scope: !1712, inlinedAt: !3113)
!3121 = !DILocation(line: 178, column: 5, scope: !1712, inlinedAt: !3113)
!3122 = !DILocation(line: 179, column: 6, scope: !1696, inlinedAt: !3113)
!3123 = !DILocation(line: 179, column: 17, scope: !1696, inlinedAt: !3113)
!3124 = !DILocation(line: 180, column: 6, scope: !1696, inlinedAt: !3113)
!3125 = !DILocation(line: 180, column: 18, scope: !1696, inlinedAt: !3113)
!3126 = !DILocation(line: 1023, column: 10, scope: !3069)
!3127 = !DILocation(line: 1024, column: 1, scope: !3069)
!3128 = !DILocation(line: 1023, column: 3, scope: !3069)
!3129 = distinct !DISubprogram(name: "quotearg_custom", scope: !244, file: !244, line: 1027, type: !3130, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!21, !41, !41, !41}
!3132 = !{!3133, !3134, !3135}
!3133 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3129, file: !244, line: 1027, type: !41)
!3134 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3129, file: !244, line: 1027, type: !41)
!3135 = !DILocalVariable(name: "arg", arg: 3, scope: !3129, file: !244, line: 1028, type: !41)
!3136 = !DILocation(line: 1027, column: 30, scope: !3129)
!3137 = !DILocation(line: 1027, column: 54, scope: !3129)
!3138 = !DILocation(line: 1028, column: 30, scope: !3129)
!3139 = !DILocation(line: 1009, column: 24, scope: !3056, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 1030, column: 10, scope: !3129)
!3141 = !DILocation(line: 1009, column: 39, scope: !3056, inlinedAt: !3140)
!3142 = !DILocation(line: 1010, column: 32, scope: !3056, inlinedAt: !3140)
!3143 = !DILocation(line: 1010, column: 57, scope: !3056, inlinedAt: !3140)
!3144 = !DILocation(line: 1017, column: 28, scope: !3069, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 1012, column: 10, scope: !3056, inlinedAt: !3140)
!3146 = !DILocation(line: 1017, column: 43, scope: !3069, inlinedAt: !3145)
!3147 = !DILocation(line: 1018, column: 36, scope: !3069, inlinedAt: !3145)
!3148 = !DILocation(line: 1019, column: 36, scope: !3069, inlinedAt: !3145)
!3149 = !DILocation(line: 1019, column: 48, scope: !3069, inlinedAt: !3145)
!3150 = !DILocation(line: 1021, column: 3, scope: !3069, inlinedAt: !3145)
!3151 = !DILocation(line: 1021, column: 30, scope: !3069, inlinedAt: !3145)
!3152 = !DILocation(line: 1021, column: 26, scope: !3069, inlinedAt: !3145)
!3153 = !DILocation(line: 171, column: 45, scope: !1696, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 1022, column: 3, scope: !3069, inlinedAt: !3145)
!3155 = !DILocation(line: 172, column: 33, scope: !1696, inlinedAt: !3154)
!3156 = !DILocation(line: 172, column: 57, scope: !1696, inlinedAt: !3154)
!3157 = !DILocation(line: 176, column: 6, scope: !1696, inlinedAt: !3154)
!3158 = !DILocation(line: 176, column: 12, scope: !1696, inlinedAt: !3154)
!3159 = !DILocation(line: 177, column: 8, scope: !1712, inlinedAt: !3154)
!3160 = !DILocation(line: 177, column: 23, scope: !1712, inlinedAt: !3154)
!3161 = !DILocation(line: 177, column: 19, scope: !1712, inlinedAt: !3154)
!3162 = !DILocation(line: 178, column: 5, scope: !1712, inlinedAt: !3154)
!3163 = !DILocation(line: 179, column: 6, scope: !1696, inlinedAt: !3154)
!3164 = !DILocation(line: 179, column: 17, scope: !1696, inlinedAt: !3154)
!3165 = !DILocation(line: 180, column: 6, scope: !1696, inlinedAt: !3154)
!3166 = !DILocation(line: 180, column: 18, scope: !1696, inlinedAt: !3154)
!3167 = !DILocation(line: 1023, column: 10, scope: !3069, inlinedAt: !3145)
!3168 = !DILocation(line: 1024, column: 1, scope: !3069, inlinedAt: !3145)
!3169 = !DILocation(line: 1030, column: 3, scope: !3129)
!3170 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !244, file: !244, line: 1034, type: !3171, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!21, !41, !41, !41, !103}
!3173 = !{!3174, !3175, !3176, !3177}
!3174 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3170, file: !244, line: 1034, type: !41)
!3175 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3170, file: !244, line: 1034, type: !41)
!3176 = !DILocalVariable(name: "arg", arg: 3, scope: !3170, file: !244, line: 1035, type: !41)
!3177 = !DILocalVariable(name: "argsize", arg: 4, scope: !3170, file: !244, line: 1035, type: !103)
!3178 = !DILocation(line: 1034, column: 34, scope: !3170)
!3179 = !DILocation(line: 1034, column: 58, scope: !3170)
!3180 = !DILocation(line: 1035, column: 34, scope: !3170)
!3181 = !DILocation(line: 1035, column: 46, scope: !3170)
!3182 = !DILocation(line: 1017, column: 28, scope: !3069, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 1037, column: 10, scope: !3170)
!3184 = !DILocation(line: 1017, column: 43, scope: !3069, inlinedAt: !3183)
!3185 = !DILocation(line: 1018, column: 36, scope: !3069, inlinedAt: !3183)
!3186 = !DILocation(line: 1019, column: 36, scope: !3069, inlinedAt: !3183)
!3187 = !DILocation(line: 1019, column: 48, scope: !3069, inlinedAt: !3183)
!3188 = !DILocation(line: 1021, column: 3, scope: !3069, inlinedAt: !3183)
!3189 = !DILocation(line: 1021, column: 30, scope: !3069, inlinedAt: !3183)
!3190 = !DILocation(line: 1021, column: 26, scope: !3069, inlinedAt: !3183)
!3191 = !DILocation(line: 171, column: 45, scope: !1696, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 1022, column: 3, scope: !3069, inlinedAt: !3183)
!3193 = !DILocation(line: 172, column: 33, scope: !1696, inlinedAt: !3192)
!3194 = !DILocation(line: 172, column: 57, scope: !1696, inlinedAt: !3192)
!3195 = !DILocation(line: 176, column: 6, scope: !1696, inlinedAt: !3192)
!3196 = !DILocation(line: 176, column: 12, scope: !1696, inlinedAt: !3192)
!3197 = !DILocation(line: 177, column: 8, scope: !1712, inlinedAt: !3192)
!3198 = !DILocation(line: 177, column: 23, scope: !1712, inlinedAt: !3192)
!3199 = !DILocation(line: 177, column: 19, scope: !1712, inlinedAt: !3192)
!3200 = !DILocation(line: 178, column: 5, scope: !1712, inlinedAt: !3192)
!3201 = !DILocation(line: 179, column: 6, scope: !1696, inlinedAt: !3192)
!3202 = !DILocation(line: 179, column: 17, scope: !1696, inlinedAt: !3192)
!3203 = !DILocation(line: 180, column: 6, scope: !1696, inlinedAt: !3192)
!3204 = !DILocation(line: 180, column: 18, scope: !1696, inlinedAt: !3192)
!3205 = !DILocation(line: 1023, column: 10, scope: !3069, inlinedAt: !3183)
!3206 = !DILocation(line: 1024, column: 1, scope: !3069, inlinedAt: !3183)
!3207 = !DILocation(line: 1037, column: 3, scope: !3170)
!3208 = distinct !DISubprogram(name: "quote_n_mem", scope: !244, file: !244, line: 1052, type: !3209, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!41, !30, !41, !103}
!3211 = !{!3212, !3213, !3214}
!3212 = !DILocalVariable(name: "n", arg: 1, scope: !3208, file: !244, line: 1052, type: !30)
!3213 = !DILocalVariable(name: "arg", arg: 2, scope: !3208, file: !244, line: 1052, type: !41)
!3214 = !DILocalVariable(name: "argsize", arg: 3, scope: !3208, file: !244, line: 1052, type: !103)
!3215 = !DILocation(line: 1052, column: 18, scope: !3208)
!3216 = !DILocation(line: 1052, column: 33, scope: !3208)
!3217 = !DILocation(line: 1052, column: 45, scope: !3208)
!3218 = !DILocation(line: 1054, column: 10, scope: !3208)
!3219 = !DILocation(line: 1054, column: 3, scope: !3208)
!3220 = distinct !DISubprogram(name: "quote_mem", scope: !244, file: !244, line: 1058, type: !3221, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!41, !41, !103}
!3223 = !{!3224, !3225}
!3224 = !DILocalVariable(name: "arg", arg: 1, scope: !3220, file: !244, line: 1058, type: !41)
!3225 = !DILocalVariable(name: "argsize", arg: 2, scope: !3220, file: !244, line: 1058, type: !103)
!3226 = !DILocation(line: 1058, column: 24, scope: !3220)
!3227 = !DILocation(line: 1058, column: 36, scope: !3220)
!3228 = !DILocation(line: 1052, column: 18, scope: !3208, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 1060, column: 10, scope: !3220)
!3230 = !DILocation(line: 1052, column: 33, scope: !3208, inlinedAt: !3229)
!3231 = !DILocation(line: 1052, column: 45, scope: !3208, inlinedAt: !3229)
!3232 = !DILocation(line: 1054, column: 10, scope: !3208, inlinedAt: !3229)
!3233 = !DILocation(line: 1060, column: 3, scope: !3220)
!3234 = distinct !DISubprogram(name: "quote_n", scope: !244, file: !244, line: 1064, type: !3235, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!41, !30, !41}
!3237 = !{!3238, !3239}
!3238 = !DILocalVariable(name: "n", arg: 1, scope: !3234, file: !244, line: 1064, type: !30)
!3239 = !DILocalVariable(name: "arg", arg: 2, scope: !3234, file: !244, line: 1064, type: !41)
!3240 = !DILocation(line: 1064, column: 14, scope: !3234)
!3241 = !DILocation(line: 1064, column: 29, scope: !3234)
!3242 = !DILocation(line: 1052, column: 18, scope: !3208, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 1066, column: 10, scope: !3234)
!3244 = !DILocation(line: 1052, column: 33, scope: !3208, inlinedAt: !3243)
!3245 = !DILocation(line: 1052, column: 45, scope: !3208, inlinedAt: !3243)
!3246 = !DILocation(line: 1054, column: 10, scope: !3208, inlinedAt: !3243)
!3247 = !DILocation(line: 1066, column: 3, scope: !3234)
!3248 = distinct !DISubprogram(name: "quote", scope: !244, file: !244, line: 1070, type: !3249, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!41, !41}
!3251 = !{!3252}
!3252 = !DILocalVariable(name: "arg", arg: 1, scope: !3248, file: !244, line: 1070, type: !41)
!3253 = !DILocation(line: 1070, column: 20, scope: !3248)
!3254 = !DILocation(line: 1064, column: 14, scope: !3234, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 1072, column: 10, scope: !3248)
!3256 = !DILocation(line: 1064, column: 29, scope: !3234, inlinedAt: !3255)
!3257 = !DILocation(line: 1052, column: 18, scope: !3208, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 1066, column: 10, scope: !3234, inlinedAt: !3255)
!3259 = !DILocation(line: 1052, column: 33, scope: !3208, inlinedAt: !3258)
!3260 = !DILocation(line: 1052, column: 45, scope: !3208, inlinedAt: !3258)
!3261 = !DILocation(line: 1054, column: 10, scope: !3208, inlinedAt: !3258)
!3262 = !DILocation(line: 1072, column: 3, scope: !3248)
!3263 = distinct !DISubprogram(name: "version_etc_arn", scope: !646, file: !646, line: 62, type: !3264, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !642, variables: !3307)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{null, !3266, !41, !41, !41, !3306, !103}
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !124, line: 7, baseType: !3268)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !126, line: 241, size: 1728, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3268, file: !126, line: 242, baseType: !30, size: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3268, file: !126, line: 247, baseType: !21, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3268, file: !126, line: 248, baseType: !21, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3268, file: !126, line: 249, baseType: !21, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3268, file: !126, line: 250, baseType: !21, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3268, file: !126, line: 251, baseType: !21, size: 64, offset: 320)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3268, file: !126, line: 252, baseType: !21, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3268, file: !126, line: 253, baseType: !21, size: 64, offset: 448)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3268, file: !126, line: 254, baseType: !21, size: 64, offset: 512)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3268, file: !126, line: 256, baseType: !21, size: 64, offset: 576)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3268, file: !126, line: 257, baseType: !21, size: 64, offset: 640)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3268, file: !126, line: 258, baseType: !21, size: 64, offset: 704)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3268, file: !126, line: 260, baseType: !3283, size: 64, offset: 768)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !126, line: 156, size: 192, elements: !3285)
!3285 = !{!3286, !3287, !3289}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3284, file: !126, line: 157, baseType: !3283, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3284, file: !126, line: 158, baseType: !3288, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3284, file: !126, line: 162, baseType: !30, size: 32, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3268, file: !126, line: 262, baseType: !3288, size: 64, offset: 832)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3268, file: !126, line: 264, baseType: !30, size: 32, offset: 896)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3268, file: !126, line: 268, baseType: !30, size: 32, offset: 928)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3268, file: !126, line: 270, baseType: !152, size: 64, offset: 960)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3268, file: !126, line: 274, baseType: !31, size: 16, offset: 1024)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3268, file: !126, line: 275, baseType: !156, size: 8, offset: 1040)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3268, file: !126, line: 276, baseType: !158, size: 8, offset: 1048)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3268, file: !126, line: 280, baseType: !162, size: 64, offset: 1088)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3268, file: !126, line: 289, baseType: !165, size: 64, offset: 1152)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3268, file: !126, line: 297, baseType: !23, size: 64, offset: 1216)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3268, file: !126, line: 298, baseType: !23, size: 64, offset: 1280)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3268, file: !126, line: 299, baseType: !23, size: 64, offset: 1344)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3268, file: !126, line: 300, baseType: !23, size: 64, offset: 1408)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3268, file: !126, line: 302, baseType: !103, size: 64, offset: 1472)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3268, file: !126, line: 303, baseType: !30, size: 32, offset: 1536)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3268, file: !126, line: 305, baseType: !173, size: 160, offset: 1568)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!3307 = !{!3308, !3309, !3310, !3311, !3312, !3313}
!3308 = !DILocalVariable(name: "stream", arg: 1, scope: !3263, file: !646, line: 62, type: !3266)
!3309 = !DILocalVariable(name: "command_name", arg: 2, scope: !3263, file: !646, line: 63, type: !41)
!3310 = !DILocalVariable(name: "package", arg: 3, scope: !3263, file: !646, line: 63, type: !41)
!3311 = !DILocalVariable(name: "version", arg: 4, scope: !3263, file: !646, line: 64, type: !41)
!3312 = !DILocalVariable(name: "authors", arg: 5, scope: !3263, file: !646, line: 65, type: !3306)
!3313 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3263, file: !646, line: 65, type: !103)
!3314 = !DILocation(line: 62, column: 24, scope: !3263)
!3315 = !DILocation(line: 63, column: 30, scope: !3263)
!3316 = !DILocation(line: 63, column: 56, scope: !3263)
!3317 = !DILocation(line: 64, column: 30, scope: !3263)
!3318 = !DILocation(line: 65, column: 39, scope: !3263)
!3319 = !DILocation(line: 65, column: 55, scope: !3263)
!3320 = !DILocation(line: 67, column: 7, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3263, file: !646, line: 67, column: 7)
!3322 = !DILocation(line: 67, column: 7, scope: !3263)
!3323 = !DILocation(line: 68, column: 5, scope: !3321)
!3324 = !DILocation(line: 70, column: 5, scope: !3321)
!3325 = !DILocation(line: 84, column: 3, scope: !3263)
!3326 = !DILocation(line: 86, column: 3, scope: !3263)
!3327 = !DILocation(line: 95, column: 3, scope: !3263)
!3328 = !DILocation(line: 99, column: 7, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3263, file: !646, line: 96, column: 5)
!3330 = !DILocation(line: 102, column: 7, scope: !3329)
!3331 = !DILocation(line: 103, column: 7, scope: !3329)
!3332 = !DILocation(line: 106, column: 7, scope: !3329)
!3333 = !DILocation(line: 107, column: 7, scope: !3329)
!3334 = !DILocation(line: 110, column: 7, scope: !3329)
!3335 = !DILocation(line: 112, column: 7, scope: !3329)
!3336 = !DILocation(line: 117, column: 7, scope: !3329)
!3337 = !DILocation(line: 119, column: 7, scope: !3329)
!3338 = !DILocation(line: 124, column: 7, scope: !3329)
!3339 = !DILocation(line: 126, column: 7, scope: !3329)
!3340 = !DILocation(line: 131, column: 7, scope: !3329)
!3341 = !DILocation(line: 134, column: 7, scope: !3329)
!3342 = !DILocation(line: 139, column: 7, scope: !3329)
!3343 = !DILocation(line: 142, column: 7, scope: !3329)
!3344 = !DILocation(line: 147, column: 7, scope: !3329)
!3345 = !DILocation(line: 151, column: 7, scope: !3329)
!3346 = !DILocation(line: 156, column: 7, scope: !3329)
!3347 = !DILocation(line: 160, column: 7, scope: !3329)
!3348 = !DILocation(line: 167, column: 7, scope: !3329)
!3349 = !DILocation(line: 171, column: 7, scope: !3329)
!3350 = !DILocation(line: 173, column: 1, scope: !3263)
!3351 = distinct !DISubprogram(name: "version_etc_ar", scope: !646, file: !646, line: 180, type: !3352, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !642, variables: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{null, !3266, !41, !41, !41, !3306}
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3360}
!3355 = !DILocalVariable(name: "stream", arg: 1, scope: !3351, file: !646, line: 180, type: !3266)
!3356 = !DILocalVariable(name: "command_name", arg: 2, scope: !3351, file: !646, line: 181, type: !41)
!3357 = !DILocalVariable(name: "package", arg: 3, scope: !3351, file: !646, line: 181, type: !41)
!3358 = !DILocalVariable(name: "version", arg: 4, scope: !3351, file: !646, line: 182, type: !41)
!3359 = !DILocalVariable(name: "authors", arg: 5, scope: !3351, file: !646, line: 182, type: !3306)
!3360 = !DILocalVariable(name: "n_authors", scope: !3351, file: !646, line: 184, type: !103)
!3361 = !DILocation(line: 180, column: 23, scope: !3351)
!3362 = !DILocation(line: 181, column: 29, scope: !3351)
!3363 = !DILocation(line: 181, column: 55, scope: !3351)
!3364 = !DILocation(line: 182, column: 29, scope: !3351)
!3365 = !DILocation(line: 182, column: 59, scope: !3351)
!3366 = !DILocation(line: 184, column: 10, scope: !3351)
!3367 = !DILocation(line: 186, column: 8, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3351, file: !646, line: 186, column: 3)
!3369 = !DILocation(line: 186, column: 23, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3368, file: !646, line: 186, column: 3)
!3371 = !DILocation(line: 186, column: 3, scope: !3368)
!3372 = !DILocation(line: 186, column: 52, scope: !3370)
!3373 = distinct !{!3373, !3371, !3374}
!3374 = !DILocation(line: 187, column: 5, scope: !3368)
!3375 = !DILocation(line: 188, column: 3, scope: !3351)
!3376 = !DILocation(line: 189, column: 1, scope: !3351)
!3377 = distinct !DISubprogram(name: "version_etc_va", scope: !646, file: !646, line: 196, type: !3378, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !642, variables: !3387)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{null, !3266, !41, !41, !41, !3380}
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !643, line: 189, size: 192, elements: !3382)
!3382 = !{!3383, !3384, !3385, !3386}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3381, file: !643, line: 189, baseType: !113, size: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3381, file: !643, line: 189, baseType: !113, size: 32, offset: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3381, file: !643, line: 189, baseType: !23, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3381, file: !643, line: 189, baseType: !23, size: 64, offset: 128)
!3387 = !{!3388, !3389, !3390, !3391, !3392, !3393, !3394}
!3388 = !DILocalVariable(name: "stream", arg: 1, scope: !3377, file: !646, line: 196, type: !3266)
!3389 = !DILocalVariable(name: "command_name", arg: 2, scope: !3377, file: !646, line: 197, type: !41)
!3390 = !DILocalVariable(name: "package", arg: 3, scope: !3377, file: !646, line: 197, type: !41)
!3391 = !DILocalVariable(name: "version", arg: 4, scope: !3377, file: !646, line: 198, type: !41)
!3392 = !DILocalVariable(name: "authors", arg: 5, scope: !3377, file: !646, line: 198, type: !3380)
!3393 = !DILocalVariable(name: "n_authors", scope: !3377, file: !646, line: 200, type: !103)
!3394 = !DILocalVariable(name: "authtab", scope: !3377, file: !646, line: 201, type: !3395)
!3395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, elements: !247)
!3396 = !DILocation(line: 196, column: 23, scope: !3377)
!3397 = !DILocation(line: 197, column: 29, scope: !3377)
!3398 = !DILocation(line: 197, column: 55, scope: !3377)
!3399 = !DILocation(line: 198, column: 29, scope: !3377)
!3400 = !DILocation(line: 198, column: 46, scope: !3377)
!3401 = !DILocation(line: 201, column: 3, scope: !3377)
!3402 = !DILocation(line: 201, column: 15, scope: !3377)
!3403 = !DILocation(line: 200, column: 10, scope: !3377)
!3404 = !DILocation(line: 205, column: 35, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !646, line: 203, column: 3)
!3406 = distinct !DILexicalBlock(scope: !3377, file: !646, line: 203, column: 3)
!3407 = !DILocation(line: 205, column: 14, scope: !3405)
!3408 = !DILocation(line: 205, column: 33, scope: !3405)
!3409 = !DILocation(line: 205, column: 67, scope: !3405)
!3410 = !DILocation(line: 203, column: 3, scope: !3406)
!3411 = !DILocation(line: 208, column: 3, scope: !3377)
!3412 = !DILocation(line: 210, column: 1, scope: !3377)
!3413 = distinct !DISubprogram(name: "version_etc", scope: !646, file: !646, line: 227, type: !3414, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !642, variables: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{null, !3266, !41, !41, !41, null}
!3416 = !{!3417, !3418, !3419, !3420, !3421}
!3417 = !DILocalVariable(name: "stream", arg: 1, scope: !3413, file: !646, line: 227, type: !3266)
!3418 = !DILocalVariable(name: "command_name", arg: 2, scope: !3413, file: !646, line: 228, type: !41)
!3419 = !DILocalVariable(name: "package", arg: 3, scope: !3413, file: !646, line: 228, type: !41)
!3420 = !DILocalVariable(name: "version", arg: 4, scope: !3413, file: !646, line: 229, type: !41)
!3421 = !DILocalVariable(name: "authors", scope: !3413, file: !646, line: 231, type: !3422)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1492, line: 46, baseType: !3423)
!3423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3424, line: 48, baseType: !3425)
!3424 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !643, line: 231, baseType: !3426)
!3426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3381, size: 192, elements: !159)
!3427 = !DILocation(line: 227, column: 20, scope: !3413)
!3428 = !DILocation(line: 228, column: 26, scope: !3413)
!3429 = !DILocation(line: 228, column: 52, scope: !3413)
!3430 = !DILocation(line: 229, column: 26, scope: !3413)
!3431 = !DILocation(line: 231, column: 3, scope: !3413)
!3432 = !DILocation(line: 231, column: 11, scope: !3413)
!3433 = !DILocation(line: 233, column: 3, scope: !3413)
!3434 = !DILocation(line: 234, column: 3, scope: !3413)
!3435 = !DILocation(line: 235, column: 3, scope: !3413)
!3436 = !DILocation(line: 236, column: 1, scope: !3413)
!3437 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !646, file: !646, line: 239, type: !707, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !642, variables: !206)
!3438 = !DILocation(line: 245, column: 3, scope: !3437)
!3439 = !DILocation(line: 251, column: 3, scope: !3437)
!3440 = !DILocation(line: 256, column: 3, scope: !3437)
!3441 = !DILocation(line: 258, column: 1, scope: !3437)
!3442 = distinct !DISubprogram(name: "xnmalloc", scope: !98, file: !98, line: 105, type: !3443, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!23, !103, !103}
!3445 = !{!3446, !3447}
!3446 = !DILocalVariable(name: "n", arg: 1, scope: !3442, file: !98, line: 105, type: !103)
!3447 = !DILocalVariable(name: "s", arg: 2, scope: !3442, file: !98, line: 105, type: !103)
!3448 = !DILocation(line: 105, column: 18, scope: !3442)
!3449 = !DILocation(line: 105, column: 28, scope: !3442)
!3450 = !DILocation(line: 107, column: 7, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3442, file: !98, line: 107, column: 7)
!3452 = !DILocation(line: 107, column: 7, scope: !3442)
!3453 = !DILocation(line: 108, column: 5, scope: !3451)
!3454 = !DILocation(line: 109, column: 21, scope: !3442)
!3455 = !DILocalVariable(name: "n", arg: 1, scope: !3456, file: !3457, line: 39, type: !103)
!3456 = distinct !DISubprogram(name: "xmalloc", scope: !3457, file: !3457, line: 39, type: !3458, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !3460)
!3457 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!23, !103}
!3460 = !{!3455, !3461}
!3461 = !DILocalVariable(name: "p", scope: !3456, file: !3457, line: 41, type: !23)
!3462 = !DILocation(line: 39, column: 17, scope: !3456, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 109, column: 10, scope: !3442)
!3464 = !DILocation(line: 41, column: 13, scope: !3456, inlinedAt: !3463)
!3465 = !DILocation(line: 41, column: 9, scope: !3456, inlinedAt: !3463)
!3466 = !DILocation(line: 42, column: 8, scope: !3467, inlinedAt: !3463)
!3467 = distinct !DILexicalBlock(scope: !3456, file: !3457, line: 42, column: 7)
!3468 = !DILocation(line: 42, column: 15, scope: !3467, inlinedAt: !3463)
!3469 = !DILocation(line: 42, column: 10, scope: !3467, inlinedAt: !3463)
!3470 = !DILocation(line: 43, column: 5, scope: !3467, inlinedAt: !3463)
!3471 = !DILocation(line: 109, column: 3, scope: !3442)
!3472 = !DILocation(line: 39, column: 17, scope: !3456)
!3473 = !DILocation(line: 41, column: 13, scope: !3456)
!3474 = !DILocation(line: 41, column: 9, scope: !3456)
!3475 = !DILocation(line: 42, column: 8, scope: !3467)
!3476 = !DILocation(line: 42, column: 15, scope: !3467)
!3477 = !DILocation(line: 42, column: 10, scope: !3467)
!3478 = !DILocation(line: 43, column: 5, scope: !3467)
!3479 = !DILocation(line: 44, column: 3, scope: !3456)
!3480 = distinct !DISubprogram(name: "xnrealloc", scope: !98, file: !98, line: 118, type: !3481, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !3483)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!23, !23, !103, !103}
!3483 = !{!3484, !3485, !3486}
!3484 = !DILocalVariable(name: "p", arg: 1, scope: !3480, file: !98, line: 118, type: !23)
!3485 = !DILocalVariable(name: "n", arg: 2, scope: !3480, file: !98, line: 118, type: !103)
!3486 = !DILocalVariable(name: "s", arg: 3, scope: !3480, file: !98, line: 118, type: !103)
!3487 = !DILocation(line: 118, column: 18, scope: !3480)
!3488 = !DILocation(line: 118, column: 28, scope: !3480)
!3489 = !DILocation(line: 118, column: 38, scope: !3480)
!3490 = !DILocation(line: 120, column: 7, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3480, file: !98, line: 120, column: 7)
!3492 = !DILocation(line: 120, column: 7, scope: !3480)
!3493 = !DILocation(line: 121, column: 5, scope: !3491)
!3494 = !DILocation(line: 122, column: 25, scope: !3480)
!3495 = !DILocalVariable(name: "p", arg: 1, scope: !3496, file: !3457, line: 51, type: !23)
!3496 = distinct !DISubprogram(name: "xrealloc", scope: !3457, file: !3457, line: 51, type: !3497, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !3499)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!23, !23, !103}
!3499 = !{!3495, !3500}
!3500 = !DILocalVariable(name: "n", arg: 2, scope: !3496, file: !3457, line: 51, type: !103)
!3501 = !DILocation(line: 51, column: 17, scope: !3496, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 122, column: 10, scope: !3480)
!3503 = !DILocation(line: 51, column: 27, scope: !3496, inlinedAt: !3502)
!3504 = !DILocation(line: 53, column: 8, scope: !3505, inlinedAt: !3502)
!3505 = distinct !DILexicalBlock(scope: !3496, file: !3457, line: 53, column: 7)
!3506 = !DILocation(line: 53, column: 13, scope: !3505, inlinedAt: !3502)
!3507 = !DILocation(line: 53, column: 10, scope: !3505, inlinedAt: !3502)
!3508 = !DILocation(line: 57, column: 7, scope: !3509, inlinedAt: !3502)
!3509 = distinct !DILexicalBlock(scope: !3505, file: !3457, line: 54, column: 5)
!3510 = !DILocation(line: 58, column: 7, scope: !3509, inlinedAt: !3502)
!3511 = !DILocation(line: 61, column: 7, scope: !3496, inlinedAt: !3502)
!3512 = !DILocation(line: 62, column: 8, scope: !3513, inlinedAt: !3502)
!3513 = distinct !DILexicalBlock(scope: !3496, file: !3457, line: 62, column: 7)
!3514 = !DILocation(line: 62, column: 13, scope: !3513, inlinedAt: !3502)
!3515 = !DILocation(line: 62, column: 10, scope: !3513, inlinedAt: !3502)
!3516 = !DILocation(line: 63, column: 5, scope: !3513, inlinedAt: !3502)
!3517 = !DILocation(line: 122, column: 3, scope: !3480)
!3518 = !DILocation(line: 51, column: 17, scope: !3496)
!3519 = !DILocation(line: 51, column: 27, scope: !3496)
!3520 = !DILocation(line: 53, column: 8, scope: !3505)
!3521 = !DILocation(line: 53, column: 13, scope: !3505)
!3522 = !DILocation(line: 53, column: 10, scope: !3505)
!3523 = !DILocation(line: 57, column: 7, scope: !3509)
!3524 = !DILocation(line: 58, column: 7, scope: !3509)
!3525 = !DILocation(line: 61, column: 7, scope: !3496)
!3526 = !DILocation(line: 62, column: 8, scope: !3513)
!3527 = !DILocation(line: 62, column: 13, scope: !3513)
!3528 = !DILocation(line: 62, column: 10, scope: !3513)
!3529 = !DILocation(line: 63, column: 5, scope: !3513)
!3530 = !DILocation(line: 65, column: 1, scope: !3496)
!3531 = !DILocation(line: 180, column: 19, scope: !654)
!3532 = !DILocation(line: 180, column: 30, scope: !654)
!3533 = !DILocation(line: 180, column: 41, scope: !654)
!3534 = !DILocation(line: 182, column: 14, scope: !654)
!3535 = !DILocation(line: 182, column: 10, scope: !654)
!3536 = !DILocation(line: 184, column: 9, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !654, file: !98, line: 184, column: 7)
!3538 = !DILocation(line: 184, column: 7, scope: !654)
!3539 = !DILocation(line: 186, column: 13, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !98, line: 186, column: 11)
!3541 = distinct !DILexicalBlock(scope: !3537, file: !98, line: 185, column: 5)
!3542 = !DILocation(line: 186, column: 11, scope: !3541)
!3543 = !DILocation(line: 194, column: 30, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3540, file: !98, line: 187, column: 9)
!3545 = !DILocation(line: 195, column: 16, scope: !3544)
!3546 = !DILocation(line: 195, column: 13, scope: !3544)
!3547 = !DILocation(line: 196, column: 9, scope: !3544)
!3548 = !DILocation(line: 204, column: 69, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !98, line: 204, column: 11)
!3550 = distinct !DILexicalBlock(scope: !3537, file: !98, line: 199, column: 5)
!3551 = !DILocation(line: 205, column: 11, scope: !3549)
!3552 = !DILocation(line: 204, column: 11, scope: !3550)
!3553 = !DILocation(line: 206, column: 9, scope: !3549)
!3554 = !DILocation(line: 210, column: 7, scope: !654)
!3555 = !DILocation(line: 211, column: 25, scope: !654)
!3556 = !DILocation(line: 51, column: 17, scope: !3496, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 211, column: 10, scope: !654)
!3558 = !DILocation(line: 51, column: 27, scope: !3496, inlinedAt: !3557)
!3559 = !DILocation(line: 53, column: 10, scope: !3505, inlinedAt: !3557)
!3560 = !DILocation(line: 207, column: 14, scope: !3550)
!3561 = !DILocation(line: 207, column: 18, scope: !3550)
!3562 = !DILocation(line: 207, column: 9, scope: !3550)
!3563 = !DILocation(line: 53, column: 8, scope: !3505, inlinedAt: !3557)
!3564 = !DILocation(line: 57, column: 7, scope: !3509, inlinedAt: !3557)
!3565 = !DILocation(line: 58, column: 7, scope: !3509, inlinedAt: !3557)
!3566 = !DILocation(line: 61, column: 7, scope: !3496, inlinedAt: !3557)
!3567 = !DILocation(line: 62, column: 8, scope: !3513, inlinedAt: !3557)
!3568 = !DILocation(line: 62, column: 13, scope: !3513, inlinedAt: !3557)
!3569 = !DILocation(line: 62, column: 10, scope: !3513, inlinedAt: !3557)
!3570 = !DILocation(line: 63, column: 5, scope: !3513, inlinedAt: !3557)
!3571 = !DILocation(line: 211, column: 3, scope: !654)
!3572 = distinct !DISubprogram(name: "xcharalloc", scope: !98, file: !98, line: 220, type: !2542, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !3573)
!3573 = !{!3574}
!3574 = !DILocalVariable(name: "n", arg: 1, scope: !3572, file: !98, line: 220, type: !103)
!3575 = !DILocation(line: 220, column: 20, scope: !3572)
!3576 = !DILocation(line: 39, column: 17, scope: !3456, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 222, column: 10, scope: !3572)
!3578 = !DILocation(line: 41, column: 13, scope: !3456, inlinedAt: !3577)
!3579 = !DILocation(line: 41, column: 9, scope: !3456, inlinedAt: !3577)
!3580 = !DILocation(line: 42, column: 8, scope: !3467, inlinedAt: !3577)
!3581 = !DILocation(line: 42, column: 15, scope: !3467, inlinedAt: !3577)
!3582 = !DILocation(line: 42, column: 10, scope: !3467, inlinedAt: !3577)
!3583 = !DILocation(line: 43, column: 5, scope: !3467, inlinedAt: !3577)
!3584 = !DILocation(line: 222, column: 3, scope: !3572)
!3585 = distinct !DISubprogram(name: "x2realloc", scope: !3457, file: !3457, line: 74, type: !3586, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !3588)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!23, !23, !102}
!3588 = !{!3589, !3590}
!3589 = !DILocalVariable(name: "p", arg: 1, scope: !3585, file: !3457, line: 74, type: !23)
!3590 = !DILocalVariable(name: "pn", arg: 2, scope: !3585, file: !3457, line: 74, type: !102)
!3591 = !DILocation(line: 74, column: 18, scope: !3585)
!3592 = !DILocation(line: 74, column: 29, scope: !3585)
!3593 = !DILocation(line: 180, column: 19, scope: !654, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 76, column: 10, scope: !3585)
!3595 = !DILocation(line: 180, column: 30, scope: !654, inlinedAt: !3594)
!3596 = !DILocation(line: 180, column: 41, scope: !654, inlinedAt: !3594)
!3597 = !DILocation(line: 182, column: 14, scope: !654, inlinedAt: !3594)
!3598 = !DILocation(line: 182, column: 10, scope: !654, inlinedAt: !3594)
!3599 = !DILocation(line: 184, column: 9, scope: !3537, inlinedAt: !3594)
!3600 = !DILocation(line: 184, column: 7, scope: !654, inlinedAt: !3594)
!3601 = !DILocation(line: 186, column: 13, scope: !3540, inlinedAt: !3594)
!3602 = !DILocation(line: 186, column: 11, scope: !3541, inlinedAt: !3594)
!3603 = !DILocation(line: 210, column: 7, scope: !654, inlinedAt: !3594)
!3604 = !DILocation(line: 51, column: 17, scope: !3496, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 211, column: 10, scope: !654, inlinedAt: !3594)
!3606 = !DILocation(line: 51, column: 27, scope: !3496, inlinedAt: !3605)
!3607 = !DILocation(line: 53, column: 10, scope: !3505, inlinedAt: !3605)
!3608 = !DILocation(line: 205, column: 11, scope: !3549, inlinedAt: !3594)
!3609 = !DILocation(line: 204, column: 11, scope: !3550, inlinedAt: !3594)
!3610 = !DILocation(line: 206, column: 9, scope: !3549, inlinedAt: !3594)
!3611 = !DILocation(line: 207, column: 14, scope: !3550, inlinedAt: !3594)
!3612 = !DILocation(line: 207, column: 18, scope: !3550, inlinedAt: !3594)
!3613 = !DILocation(line: 207, column: 9, scope: !3550, inlinedAt: !3594)
!3614 = !DILocation(line: 53, column: 8, scope: !3505, inlinedAt: !3605)
!3615 = !DILocation(line: 57, column: 7, scope: !3509, inlinedAt: !3605)
!3616 = !DILocation(line: 58, column: 7, scope: !3509, inlinedAt: !3605)
!3617 = !DILocation(line: 61, column: 7, scope: !3496, inlinedAt: !3605)
!3618 = !DILocation(line: 62, column: 8, scope: !3513, inlinedAt: !3605)
!3619 = !DILocation(line: 62, column: 13, scope: !3513, inlinedAt: !3605)
!3620 = !DILocation(line: 62, column: 10, scope: !3513, inlinedAt: !3605)
!3621 = !DILocation(line: 63, column: 5, scope: !3513, inlinedAt: !3605)
!3622 = !DILocation(line: 76, column: 3, scope: !3585)
!3623 = distinct !DISubprogram(name: "xzalloc", scope: !3457, file: !3457, line: 84, type: !3458, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !3624)
!3624 = !{!3625}
!3625 = !DILocalVariable(name: "s", arg: 1, scope: !3623, file: !3457, line: 84, type: !103)
!3626 = !DILocation(line: 84, column: 17, scope: !3623)
!3627 = !DILocation(line: 39, column: 17, scope: !3456, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 86, column: 18, scope: !3623)
!3629 = !DILocation(line: 41, column: 13, scope: !3456, inlinedAt: !3628)
!3630 = !DILocation(line: 41, column: 9, scope: !3456, inlinedAt: !3628)
!3631 = !DILocation(line: 42, column: 8, scope: !3467, inlinedAt: !3628)
!3632 = !DILocation(line: 42, column: 15, scope: !3467, inlinedAt: !3628)
!3633 = !DILocation(line: 42, column: 10, scope: !3467, inlinedAt: !3628)
!3634 = !DILocation(line: 43, column: 5, scope: !3467, inlinedAt: !3628)
!3635 = !DILocation(line: 86, column: 10, scope: !3623)
!3636 = !DILocation(line: 86, column: 3, scope: !3623)
!3637 = distinct !DISubprogram(name: "xcalloc", scope: !3457, file: !3457, line: 93, type: !3443, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !3638)
!3638 = !{!3639, !3640, !3641}
!3639 = !DILocalVariable(name: "n", arg: 1, scope: !3637, file: !3457, line: 93, type: !103)
!3640 = !DILocalVariable(name: "s", arg: 2, scope: !3637, file: !3457, line: 93, type: !103)
!3641 = !DILocalVariable(name: "p", scope: !3637, file: !3457, line: 95, type: !23)
!3642 = !DILocation(line: 93, column: 17, scope: !3637)
!3643 = !DILocation(line: 93, column: 27, scope: !3637)
!3644 = !DILocation(line: 100, column: 7, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3637, file: !3457, line: 100, column: 7)
!3646 = !DILocation(line: 101, column: 7, scope: !3645)
!3647 = !DILocation(line: 101, column: 18, scope: !3645)
!3648 = !DILocation(line: 95, column: 9, scope: !3637)
!3649 = !DILocation(line: 101, column: 16, scope: !3645)
!3650 = !DILocation(line: 100, column: 7, scope: !3637)
!3651 = !DILocation(line: 102, column: 5, scope: !3645)
!3652 = !DILocation(line: 103, column: 3, scope: !3637)
!3653 = distinct !DISubprogram(name: "xmemdup", scope: !3457, file: !3457, line: 111, type: !3654, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !3658)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!23, !3656, !103}
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3658 = !{!3659, !3660}
!3659 = !DILocalVariable(name: "p", arg: 1, scope: !3653, file: !3457, line: 111, type: !3656)
!3660 = !DILocalVariable(name: "s", arg: 2, scope: !3653, file: !3457, line: 111, type: !103)
!3661 = !DILocation(line: 111, column: 22, scope: !3653)
!3662 = !DILocation(line: 111, column: 32, scope: !3653)
!3663 = !DILocation(line: 39, column: 17, scope: !3456, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 113, column: 18, scope: !3653)
!3665 = !DILocation(line: 41, column: 13, scope: !3456, inlinedAt: !3664)
!3666 = !DILocation(line: 41, column: 9, scope: !3456, inlinedAt: !3664)
!3667 = !DILocation(line: 42, column: 8, scope: !3467, inlinedAt: !3664)
!3668 = !DILocation(line: 42, column: 15, scope: !3467, inlinedAt: !3664)
!3669 = !DILocation(line: 42, column: 10, scope: !3467, inlinedAt: !3664)
!3670 = !DILocation(line: 43, column: 5, scope: !3467, inlinedAt: !3664)
!3671 = !DILocation(line: 113, column: 10, scope: !3653)
!3672 = !DILocation(line: 113, column: 3, scope: !3653)
!3673 = distinct !DISubprogram(name: "xstrdup", scope: !3457, file: !3457, line: 119, type: !2742, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !3674)
!3674 = !{!3675}
!3675 = !DILocalVariable(name: "string", arg: 1, scope: !3673, file: !3457, line: 119, type: !41)
!3676 = !DILocation(line: 119, column: 22, scope: !3673)
!3677 = !DILocation(line: 121, column: 27, scope: !3673)
!3678 = !DILocation(line: 121, column: 43, scope: !3673)
!3679 = !DILocation(line: 111, column: 22, scope: !3653, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 121, column: 10, scope: !3673)
!3681 = !DILocation(line: 111, column: 32, scope: !3653, inlinedAt: !3680)
!3682 = !DILocation(line: 39, column: 17, scope: !3456, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 113, column: 18, scope: !3653, inlinedAt: !3680)
!3684 = !DILocation(line: 41, column: 13, scope: !3456, inlinedAt: !3683)
!3685 = !DILocation(line: 41, column: 9, scope: !3456, inlinedAt: !3683)
!3686 = !DILocation(line: 42, column: 8, scope: !3467, inlinedAt: !3683)
!3687 = !DILocation(line: 42, column: 15, scope: !3467, inlinedAt: !3683)
!3688 = !DILocation(line: 42, column: 10, scope: !3467, inlinedAt: !3683)
!3689 = !DILocation(line: 43, column: 5, scope: !3467, inlinedAt: !3683)
!3690 = !DILocation(line: 113, column: 10, scope: !3653, inlinedAt: !3680)
!3691 = !DILocation(line: 121, column: 3, scope: !3673)
!3692 = distinct !DISubprogram(name: "xalloc_die", scope: !3693, file: !3693, line: 32, type: !707, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !661, variables: !206)
!3693 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3694 = !DILocation(line: 34, column: 10, scope: !3692)
!3695 = !DILocation(line: 34, column: 33, scope: !3692)
!3696 = !DILocation(line: 34, column: 3, scope: !3692)
!3697 = !DILocation(line: 40, column: 3, scope: !3692)
!3698 = distinct !DISubprogram(name: "xstrndup", scope: !3699, file: !3699, line: 30, type: !2753, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !3700)
!3699 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3700 = !{!3701, !3702, !3703}
!3701 = !DILocalVariable(name: "string", arg: 1, scope: !3698, file: !3699, line: 30, type: !41)
!3702 = !DILocalVariable(name: "n", arg: 2, scope: !3698, file: !3699, line: 30, type: !103)
!3703 = !DILocalVariable(name: "s", scope: !3698, file: !3699, line: 32, type: !21)
!3704 = !DILocation(line: 30, column: 23, scope: !3698)
!3705 = !DILocation(line: 30, column: 38, scope: !3698)
!3706 = !DILocation(line: 32, column: 13, scope: !3698)
!3707 = !DILocation(line: 32, column: 9, scope: !3698)
!3708 = !DILocation(line: 33, column: 9, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3698, file: !3699, line: 33, column: 7)
!3710 = !DILocation(line: 33, column: 7, scope: !3698)
!3711 = !DILocation(line: 34, column: 5, scope: !3709)
!3712 = !DILocation(line: 35, column: 3, scope: !3698)
!3713 = distinct !DISubprogram(name: "rpl_calloc", scope: !3714, file: !3714, line: 42, type: !3443, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !665, variables: !3715)
!3714 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3715 = !{!3716, !3717, !3718, !3719}
!3716 = !DILocalVariable(name: "n", arg: 1, scope: !3713, file: !3714, line: 42, type: !103)
!3717 = !DILocalVariable(name: "s", arg: 2, scope: !3713, file: !3714, line: 42, type: !103)
!3718 = !DILocalVariable(name: "result", scope: !3713, file: !3714, line: 44, type: !23)
!3719 = !DILocalVariable(name: "bytes", scope: !3720, file: !3714, line: 56, type: !103)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !3714, line: 53, column: 5)
!3721 = distinct !DILexicalBlock(scope: !3713, file: !3714, line: 47, column: 7)
!3722 = !DILocation(line: 42, column: 20, scope: !3713)
!3723 = !DILocation(line: 42, column: 30, scope: !3713)
!3724 = !DILocation(line: 47, column: 9, scope: !3721)
!3725 = !DILocation(line: 47, column: 19, scope: !3721)
!3726 = !DILocation(line: 47, column: 14, scope: !3721)
!3727 = !DILocation(line: 56, column: 24, scope: !3720)
!3728 = !DILocation(line: 56, column: 14, scope: !3720)
!3729 = !DILocation(line: 57, column: 17, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3720, file: !3714, line: 57, column: 11)
!3731 = !DILocation(line: 57, column: 21, scope: !3730)
!3732 = !DILocation(line: 57, column: 11, scope: !3720)
!3733 = !DILocation(line: 59, column: 11, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3730, file: !3714, line: 58, column: 9)
!3735 = !DILocation(line: 59, column: 17, scope: !3734)
!3736 = !DILocation(line: 65, column: 12, scope: !3713)
!3737 = !DILocation(line: 44, column: 9, scope: !3713)
!3738 = !DILocation(line: 72, column: 3, scope: !3713)
!3739 = !DILocation(line: 73, column: 1, scope: !3713)
!3740 = distinct !DISubprogram(name: "rpl_fclose", scope: !3741, file: !3741, line: 56, type: !3742, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3784)
!3741 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!30, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !124, line: 7, baseType: !3746)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !126, line: 241, size: 1728, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3746, file: !126, line: 242, baseType: !30, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3746, file: !126, line: 247, baseType: !21, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3746, file: !126, line: 248, baseType: !21, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3746, file: !126, line: 249, baseType: !21, size: 64, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3746, file: !126, line: 250, baseType: !21, size: 64, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3746, file: !126, line: 251, baseType: !21, size: 64, offset: 320)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3746, file: !126, line: 252, baseType: !21, size: 64, offset: 384)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3746, file: !126, line: 253, baseType: !21, size: 64, offset: 448)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3746, file: !126, line: 254, baseType: !21, size: 64, offset: 512)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3746, file: !126, line: 256, baseType: !21, size: 64, offset: 576)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3746, file: !126, line: 257, baseType: !21, size: 64, offset: 640)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3746, file: !126, line: 258, baseType: !21, size: 64, offset: 704)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3746, file: !126, line: 260, baseType: !3761, size: 64, offset: 768)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !126, line: 156, size: 192, elements: !3763)
!3763 = !{!3764, !3765, !3767}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3762, file: !126, line: 157, baseType: !3761, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3762, file: !126, line: 158, baseType: !3766, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3762, file: !126, line: 162, baseType: !30, size: 32, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3746, file: !126, line: 262, baseType: !3766, size: 64, offset: 832)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3746, file: !126, line: 264, baseType: !30, size: 32, offset: 896)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3746, file: !126, line: 268, baseType: !30, size: 32, offset: 928)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3746, file: !126, line: 270, baseType: !152, size: 64, offset: 960)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3746, file: !126, line: 274, baseType: !31, size: 16, offset: 1024)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3746, file: !126, line: 275, baseType: !156, size: 8, offset: 1040)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3746, file: !126, line: 276, baseType: !158, size: 8, offset: 1048)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3746, file: !126, line: 280, baseType: !162, size: 64, offset: 1088)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3746, file: !126, line: 289, baseType: !165, size: 64, offset: 1152)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3746, file: !126, line: 297, baseType: !23, size: 64, offset: 1216)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3746, file: !126, line: 298, baseType: !23, size: 64, offset: 1280)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3746, file: !126, line: 299, baseType: !23, size: 64, offset: 1344)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3746, file: !126, line: 300, baseType: !23, size: 64, offset: 1408)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3746, file: !126, line: 302, baseType: !103, size: 64, offset: 1472)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3746, file: !126, line: 303, baseType: !30, size: 32, offset: 1536)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3746, file: !126, line: 305, baseType: !173, size: 160, offset: 1568)
!3784 = !{!3785, !3786, !3787, !3788}
!3785 = !DILocalVariable(name: "fp", arg: 1, scope: !3740, file: !3741, line: 56, type: !3744)
!3786 = !DILocalVariable(name: "saved_errno", scope: !3740, file: !3741, line: 58, type: !30)
!3787 = !DILocalVariable(name: "fd", scope: !3740, file: !3741, line: 59, type: !30)
!3788 = !DILocalVariable(name: "result", scope: !3740, file: !3741, line: 60, type: !30)
!3789 = !DILocation(line: 56, column: 19, scope: !3740)
!3790 = !DILocation(line: 58, column: 7, scope: !3740)
!3791 = !DILocation(line: 60, column: 7, scope: !3740)
!3792 = !DILocation(line: 63, column: 8, scope: !3740)
!3793 = !DILocation(line: 59, column: 7, scope: !3740)
!3794 = !DILocation(line: 64, column: 10, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3740, file: !3741, line: 64, column: 7)
!3796 = !DILocation(line: 64, column: 7, scope: !3740)
!3797 = !DILocation(line: 65, column: 12, scope: !3795)
!3798 = !DILocation(line: 65, column: 5, scope: !3795)
!3799 = !DILocation(line: 70, column: 9, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3740, file: !3741, line: 70, column: 7)
!3801 = !DILocation(line: 70, column: 23, scope: !3800)
!3802 = !DILocation(line: 70, column: 33, scope: !3800)
!3803 = !DILocation(line: 70, column: 26, scope: !3800)
!3804 = !DILocation(line: 70, column: 59, scope: !3800)
!3805 = !DILocation(line: 71, column: 7, scope: !3800)
!3806 = !DILocation(line: 71, column: 10, scope: !3800)
!3807 = !DILocation(line: 70, column: 7, scope: !3740)
!3808 = !DILocation(line: 98, column: 12, scope: !3740)
!3809 = !DILocation(line: 103, column: 7, scope: !3740)
!3810 = !DILocation(line: 72, column: 19, scope: !3800)
!3811 = !DILocation(line: 103, column: 19, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3740, file: !3741, line: 103, column: 7)
!3813 = !DILocation(line: 105, column: 13, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3812, file: !3741, line: 104, column: 5)
!3815 = !DILocation(line: 107, column: 5, scope: !3814)
!3816 = !DILocation(line: 110, column: 1, scope: !3740)
!3817 = distinct !DISubprogram(name: "rpl_fflush", scope: !3818, file: !3818, line: 127, type: !3819, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !669, variables: !3861)
!3818 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!30, !3821}
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !124, line: 7, baseType: !3823)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !126, line: 241, size: 1728, elements: !3824)
!3824 = !{!3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3823, file: !126, line: 242, baseType: !30, size: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3823, file: !126, line: 247, baseType: !21, size: 64, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3823, file: !126, line: 248, baseType: !21, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3823, file: !126, line: 249, baseType: !21, size: 64, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3823, file: !126, line: 250, baseType: !21, size: 64, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3823, file: !126, line: 251, baseType: !21, size: 64, offset: 320)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3823, file: !126, line: 252, baseType: !21, size: 64, offset: 384)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3823, file: !126, line: 253, baseType: !21, size: 64, offset: 448)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3823, file: !126, line: 254, baseType: !21, size: 64, offset: 512)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3823, file: !126, line: 256, baseType: !21, size: 64, offset: 576)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3823, file: !126, line: 257, baseType: !21, size: 64, offset: 640)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3823, file: !126, line: 258, baseType: !21, size: 64, offset: 704)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3823, file: !126, line: 260, baseType: !3838, size: 64, offset: 768)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !126, line: 156, size: 192, elements: !3840)
!3840 = !{!3841, !3842, !3844}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3839, file: !126, line: 157, baseType: !3838, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3839, file: !126, line: 158, baseType: !3843, size: 64, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3839, file: !126, line: 162, baseType: !30, size: 32, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3823, file: !126, line: 262, baseType: !3843, size: 64, offset: 832)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3823, file: !126, line: 264, baseType: !30, size: 32, offset: 896)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3823, file: !126, line: 268, baseType: !30, size: 32, offset: 928)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3823, file: !126, line: 270, baseType: !152, size: 64, offset: 960)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3823, file: !126, line: 274, baseType: !31, size: 16, offset: 1024)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3823, file: !126, line: 275, baseType: !156, size: 8, offset: 1040)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3823, file: !126, line: 276, baseType: !158, size: 8, offset: 1048)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3823, file: !126, line: 280, baseType: !162, size: 64, offset: 1088)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3823, file: !126, line: 289, baseType: !165, size: 64, offset: 1152)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3823, file: !126, line: 297, baseType: !23, size: 64, offset: 1216)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3823, file: !126, line: 298, baseType: !23, size: 64, offset: 1280)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3823, file: !126, line: 299, baseType: !23, size: 64, offset: 1344)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3823, file: !126, line: 300, baseType: !23, size: 64, offset: 1408)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3823, file: !126, line: 302, baseType: !103, size: 64, offset: 1472)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3823, file: !126, line: 303, baseType: !30, size: 32, offset: 1536)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3823, file: !126, line: 305, baseType: !173, size: 160, offset: 1568)
!3861 = !{!3862}
!3862 = !DILocalVariable(name: "stream", arg: 1, scope: !3817, file: !3818, line: 127, type: !3821)
!3863 = !DILocation(line: 127, column: 19, scope: !3817)
!3864 = !DILocation(line: 148, column: 14, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3817, file: !3818, line: 148, column: 7)
!3866 = !DILocation(line: 148, column: 22, scope: !3865)
!3867 = !DILocation(line: 148, column: 27, scope: !3865)
!3868 = !DILocation(line: 148, column: 7, scope: !3817)
!3869 = !DILocation(line: 149, column: 12, scope: !3865)
!3870 = !DILocation(line: 149, column: 5, scope: !3865)
!3871 = !DILocalVariable(name: "fp", arg: 1, scope: !3872, file: !3818, line: 40, type: !3821)
!3872 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3818, file: !3818, line: 40, type: !3873, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !669, variables: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !3821}
!3875 = !{!3871}
!3876 = !DILocation(line: 40, column: 48, scope: !3872, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 153, column: 3, scope: !3817)
!3878 = !DILocation(line: 42, column: 11, scope: !3879, inlinedAt: !3877)
!3879 = distinct !DILexicalBlock(scope: !3872, file: !3818, line: 42, column: 7)
!3880 = !DILocation(line: 42, column: 18, scope: !3879, inlinedAt: !3877)
!3881 = !DILocation(line: 42, column: 7, scope: !3872, inlinedAt: !3877)
!3882 = !DILocation(line: 44, column: 5, scope: !3879, inlinedAt: !3877)
!3883 = !DILocation(line: 155, column: 10, scope: !3817)
!3884 = !DILocation(line: 155, column: 3, scope: !3817)
!3885 = !DILocation(line: 229, column: 1, scope: !3817)
!3886 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3887, file: !3887, line: 28, type: !3888, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !3930)
!3887 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!30, !3890, !1491, !30}
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !124, line: 7, baseType: !3892)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !126, line: 241, size: 1728, elements: !3893)
!3893 = !{!3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3892, file: !126, line: 242, baseType: !30, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3892, file: !126, line: 247, baseType: !21, size: 64, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3892, file: !126, line: 248, baseType: !21, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3892, file: !126, line: 249, baseType: !21, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3892, file: !126, line: 250, baseType: !21, size: 64, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3892, file: !126, line: 251, baseType: !21, size: 64, offset: 320)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3892, file: !126, line: 252, baseType: !21, size: 64, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3892, file: !126, line: 253, baseType: !21, size: 64, offset: 448)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3892, file: !126, line: 254, baseType: !21, size: 64, offset: 512)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3892, file: !126, line: 256, baseType: !21, size: 64, offset: 576)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3892, file: !126, line: 257, baseType: !21, size: 64, offset: 640)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3892, file: !126, line: 258, baseType: !21, size: 64, offset: 704)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3892, file: !126, line: 260, baseType: !3907, size: 64, offset: 768)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !126, line: 156, size: 192, elements: !3909)
!3909 = !{!3910, !3911, !3913}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3908, file: !126, line: 157, baseType: !3907, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3908, file: !126, line: 158, baseType: !3912, size: 64, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3908, file: !126, line: 162, baseType: !30, size: 32, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3892, file: !126, line: 262, baseType: !3912, size: 64, offset: 832)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3892, file: !126, line: 264, baseType: !30, size: 32, offset: 896)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3892, file: !126, line: 268, baseType: !30, size: 32, offset: 928)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3892, file: !126, line: 270, baseType: !152, size: 64, offset: 960)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3892, file: !126, line: 274, baseType: !31, size: 16, offset: 1024)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3892, file: !126, line: 275, baseType: !156, size: 8, offset: 1040)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3892, file: !126, line: 276, baseType: !158, size: 8, offset: 1048)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3892, file: !126, line: 280, baseType: !162, size: 64, offset: 1088)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3892, file: !126, line: 289, baseType: !165, size: 64, offset: 1152)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3892, file: !126, line: 297, baseType: !23, size: 64, offset: 1216)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3892, file: !126, line: 298, baseType: !23, size: 64, offset: 1280)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3892, file: !126, line: 299, baseType: !23, size: 64, offset: 1344)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3892, file: !126, line: 300, baseType: !23, size: 64, offset: 1408)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3892, file: !126, line: 302, baseType: !103, size: 64, offset: 1472)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3892, file: !126, line: 303, baseType: !30, size: 32, offset: 1536)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3892, file: !126, line: 305, baseType: !173, size: 160, offset: 1568)
!3930 = !{!3931, !3932, !3933, !3934}
!3931 = !DILocalVariable(name: "fp", arg: 1, scope: !3886, file: !3887, line: 28, type: !3890)
!3932 = !DILocalVariable(name: "offset", arg: 2, scope: !3886, file: !3887, line: 28, type: !1491)
!3933 = !DILocalVariable(name: "whence", arg: 3, scope: !3886, file: !3887, line: 28, type: !30)
!3934 = !DILocalVariable(name: "pos", scope: !3935, file: !3887, line: 116, type: !1491)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !3887, line: 112, column: 5)
!3936 = distinct !DILexicalBlock(scope: !3886, file: !3887, line: 51, column: 7)
!3937 = !DILocation(line: 28, column: 15, scope: !3886)
!3938 = !DILocation(line: 28, column: 25, scope: !3886)
!3939 = !DILocation(line: 28, column: 37, scope: !3886)
!3940 = !DILocation(line: 51, column: 11, scope: !3936)
!3941 = !DILocation(line: 51, column: 31, scope: !3936)
!3942 = !DILocation(line: 51, column: 24, scope: !3936)
!3943 = !DILocation(line: 52, column: 7, scope: !3936)
!3944 = !DILocation(line: 52, column: 14, scope: !3936)
!3945 = !DILocation(line: 52, column: 35, scope: !3936)
!3946 = !{!893, !699, i64 32}
!3947 = !DILocation(line: 52, column: 28, scope: !3936)
!3948 = !DILocation(line: 53, column: 7, scope: !3936)
!3949 = !DILocation(line: 53, column: 14, scope: !3936)
!3950 = !{!893, !699, i64 72}
!3951 = !DILocation(line: 53, column: 28, scope: !3936)
!3952 = !DILocation(line: 51, column: 7, scope: !3886)
!3953 = !DILocation(line: 116, column: 26, scope: !3935)
!3954 = !DILocation(line: 116, column: 19, scope: !3935)
!3955 = !DILocation(line: 116, column: 13, scope: !3935)
!3956 = !DILocation(line: 117, column: 15, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3935, file: !3887, line: 117, column: 11)
!3958 = !DILocation(line: 117, column: 11, scope: !3935)
!3959 = !DILocation(line: 127, column: 11, scope: !3935)
!3960 = !DILocation(line: 127, column: 18, scope: !3935)
!3961 = !DILocation(line: 128, column: 11, scope: !3935)
!3962 = !DILocation(line: 128, column: 19, scope: !3935)
!3963 = !{!893, !867, i64 144}
!3964 = !DILocation(line: 159, column: 7, scope: !3935)
!3965 = !DILocation(line: 161, column: 10, scope: !3886)
!3966 = !DILocation(line: 161, column: 3, scope: !3886)
!3967 = !DILocation(line: 162, column: 1, scope: !3886)
!3968 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3969, file: !3969, line: 334, type: !3970, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !673, variables: !3984)
!3969 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!103, !3972, !41, !103, !3973}
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1795, line: 6, baseType: !3975)
!3975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1797, line: 21, baseType: !3976)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1797, line: 13, size: 64, elements: !3977)
!3977 = !{!3978, !3979}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3976, file: !1797, line: 15, baseType: !30, size: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3976, file: !1797, line: 20, baseType: !3980, size: 32, offset: 32)
!3980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3976, file: !1797, line: 16, size: 32, elements: !3981)
!3981 = !{!3982, !3983}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3980, file: !1797, line: 18, baseType: !113, size: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3980, file: !1797, line: 19, baseType: !1806, size: 32)
!3984 = !{!3985, !3986, !3987, !3988, !3989, !3990, !3991}
!3985 = !DILocalVariable(name: "pwc", arg: 1, scope: !3968, file: !3969, line: 334, type: !3972)
!3986 = !DILocalVariable(name: "s", arg: 2, scope: !3968, file: !3969, line: 334, type: !41)
!3987 = !DILocalVariable(name: "n", arg: 3, scope: !3968, file: !3969, line: 334, type: !103)
!3988 = !DILocalVariable(name: "ps", arg: 4, scope: !3968, file: !3969, line: 334, type: !3973)
!3989 = !DILocalVariable(name: "ret", scope: !3968, file: !3969, line: 336, type: !103)
!3990 = !DILocalVariable(name: "wc", scope: !3968, file: !3969, line: 337, type: !1811)
!3991 = !DILocalVariable(name: "uc", scope: !3992, file: !3969, line: 398, type: !33)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !3969, line: 397, column: 5)
!3993 = distinct !DILexicalBlock(scope: !3968, file: !3969, line: 396, column: 7)
!3994 = !DILocation(line: 334, column: 23, scope: !3968)
!3995 = !DILocation(line: 334, column: 40, scope: !3968)
!3996 = !DILocation(line: 334, column: 50, scope: !3968)
!3997 = !DILocation(line: 334, column: 64, scope: !3968)
!3998 = !DILocation(line: 337, column: 3, scope: !3968)
!3999 = !DILocation(line: 353, column: 9, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3968, file: !3969, line: 353, column: 7)
!4001 = !DILocation(line: 353, column: 7, scope: !3968)
!4002 = !DILocation(line: 388, column: 9, scope: !3968)
!4003 = !DILocation(line: 336, column: 10, scope: !3968)
!4004 = !DILocation(line: 396, column: 19, scope: !3993)
!4005 = !DILocation(line: 396, column: 31, scope: !3993)
!4006 = !DILocation(line: 396, column: 26, scope: !3993)
!4007 = !DILocation(line: 396, column: 41, scope: !3993)
!4008 = !DILocation(line: 396, column: 7, scope: !3968)
!4009 = !DILocation(line: 398, column: 26, scope: !3992)
!4010 = !DILocation(line: 398, column: 21, scope: !3992)
!4011 = !DILocation(line: 399, column: 14, scope: !3992)
!4012 = !DILocation(line: 399, column: 12, scope: !3992)
!4013 = !DILocation(line: 405, column: 1, scope: !3968)
!4014 = distinct !DISubprogram(name: "close_stream", scope: !4015, file: !4015, line: 56, type: !4016, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4058)
!4015 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!30, !4018}
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !124, line: 7, baseType: !4020)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !126, line: 241, size: 1728, elements: !4021)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4020, file: !126, line: 242, baseType: !30, size: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4020, file: !126, line: 247, baseType: !21, size: 64, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4020, file: !126, line: 248, baseType: !21, size: 64, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4020, file: !126, line: 249, baseType: !21, size: 64, offset: 192)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4020, file: !126, line: 250, baseType: !21, size: 64, offset: 256)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4020, file: !126, line: 251, baseType: !21, size: 64, offset: 320)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4020, file: !126, line: 252, baseType: !21, size: 64, offset: 384)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4020, file: !126, line: 253, baseType: !21, size: 64, offset: 448)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4020, file: !126, line: 254, baseType: !21, size: 64, offset: 512)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4020, file: !126, line: 256, baseType: !21, size: 64, offset: 576)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4020, file: !126, line: 257, baseType: !21, size: 64, offset: 640)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4020, file: !126, line: 258, baseType: !21, size: 64, offset: 704)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4020, file: !126, line: 260, baseType: !4035, size: 64, offset: 768)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !126, line: 156, size: 192, elements: !4037)
!4037 = !{!4038, !4039, !4041}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4036, file: !126, line: 157, baseType: !4035, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4036, file: !126, line: 158, baseType: !4040, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4036, file: !126, line: 162, baseType: !30, size: 32, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4020, file: !126, line: 262, baseType: !4040, size: 64, offset: 832)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4020, file: !126, line: 264, baseType: !30, size: 32, offset: 896)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4020, file: !126, line: 268, baseType: !30, size: 32, offset: 928)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4020, file: !126, line: 270, baseType: !152, size: 64, offset: 960)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4020, file: !126, line: 274, baseType: !31, size: 16, offset: 1024)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4020, file: !126, line: 275, baseType: !156, size: 8, offset: 1040)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4020, file: !126, line: 276, baseType: !158, size: 8, offset: 1048)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4020, file: !126, line: 280, baseType: !162, size: 64, offset: 1088)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4020, file: !126, line: 289, baseType: !165, size: 64, offset: 1152)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4020, file: !126, line: 297, baseType: !23, size: 64, offset: 1216)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4020, file: !126, line: 298, baseType: !23, size: 64, offset: 1280)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4020, file: !126, line: 299, baseType: !23, size: 64, offset: 1344)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4020, file: !126, line: 300, baseType: !23, size: 64, offset: 1408)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4020, file: !126, line: 302, baseType: !103, size: 64, offset: 1472)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4020, file: !126, line: 303, baseType: !30, size: 32, offset: 1536)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4020, file: !126, line: 305, baseType: !173, size: 160, offset: 1568)
!4058 = !{!4059, !4060, !4062, !4063}
!4059 = !DILocalVariable(name: "stream", arg: 1, scope: !4014, file: !4015, line: 56, type: !4018)
!4060 = !DILocalVariable(name: "some_pending", scope: !4014, file: !4015, line: 58, type: !4061)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!4062 = !DILocalVariable(name: "prev_fail", scope: !4014, file: !4015, line: 59, type: !4061)
!4063 = !DILocalVariable(name: "fclose_fail", scope: !4014, file: !4015, line: 60, type: !4061)
!4064 = !DILocation(line: 56, column: 21, scope: !4014)
!4065 = !DILocation(line: 58, column: 30, scope: !4014)
!4066 = !DILocalVariable(name: "__stream", arg: 1, scope: !4067, file: !885, line: 132, type: !4018)
!4067 = distinct !DISubprogram(name: "ferror_unlocked", scope: !885, file: !885, line: 132, type: !4016, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4068)
!4068 = !{!4066}
!4069 = !DILocation(line: 132, column: 1, scope: !4067, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 59, column: 27, scope: !4014)
!4071 = !DILocation(line: 134, column: 10, scope: !4067, inlinedAt: !4070)
!4072 = !DILocation(line: 59, column: 43, scope: !4014)
!4073 = !DILocation(line: 60, column: 29, scope: !4014)
!4074 = !DILocation(line: 60, column: 45, scope: !4014)
!4075 = !DILocation(line: 70, column: 17, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4014, file: !4015, line: 70, column: 7)
!4077 = !DILocation(line: 58, column: 50, scope: !4014)
!4078 = !DILocation(line: 70, column: 33, scope: !4076)
!4079 = !DILocation(line: 70, column: 53, scope: !4076)
!4080 = !DILocation(line: 70, column: 59, scope: !4076)
!4081 = !DILocation(line: 70, column: 7, scope: !4014)
!4082 = !DILocation(line: 72, column: 11, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4076, file: !4015, line: 71, column: 5)
!4084 = !DILocation(line: 73, column: 9, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4083, file: !4015, line: 72, column: 11)
!4086 = !DILocation(line: 73, column: 15, scope: !4085)
!4087 = !DILocation(line: 78, column: 1, scope: !4014)
!4088 = distinct !DISubprogram(name: "hard_locale", scope: !4089, file: !4089, line: 38, type: !4090, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !678, variables: !4092)
!4089 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!193, !30}
!4092 = !{!4093, !4094, !4095}
!4093 = !DILocalVariable(name: "category", arg: 1, scope: !4088, file: !4089, line: 38, type: !30)
!4094 = !DILocalVariable(name: "hard", scope: !4088, file: !4089, line: 40, type: !193)
!4095 = !DILocalVariable(name: "p", scope: !4088, file: !4089, line: 41, type: !41)
!4096 = !DILocation(line: 38, column: 18, scope: !4088)
!4097 = !DILocation(line: 40, column: 8, scope: !4088)
!4098 = !DILocation(line: 41, column: 19, scope: !4088)
!4099 = !DILocation(line: 41, column: 15, scope: !4088)
!4100 = !DILocation(line: 43, column: 7, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4088, file: !4089, line: 43, column: 7)
!4102 = !DILocation(line: 43, column: 7, scope: !4088)
!4103 = !DILocation(line: 47, column: 15, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4105, file: !4089, line: 47, column: 15)
!4105 = distinct !DILexicalBlock(scope: !4106, file: !4089, line: 46, column: 9)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !4089, line: 45, column: 11)
!4107 = distinct !DILexicalBlock(scope: !4101, file: !4089, line: 44, column: 5)
!4108 = !DILocation(line: 47, column: 31, scope: !4104)
!4109 = !DILocation(line: 47, column: 36, scope: !4104)
!4110 = !DILocation(line: 47, column: 39, scope: !4104)
!4111 = !DILocation(line: 47, column: 59, scope: !4104)
!4112 = !DILocation(line: 47, column: 15, scope: !4105)
!4113 = !DILocation(line: 48, column: 13, scope: !4104)
!4114 = !DILocation(line: 71, column: 3, scope: !4088)
!4115 = distinct !DISubprogram(name: "locale_charset", scope: !637, file: !637, line: 393, type: !4116, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4118)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!41}
!4118 = !{!4119, !4120}
!4119 = !DILocalVariable(name: "codeset", scope: !4115, file: !637, line: 395, type: !41)
!4120 = !DILocalVariable(name: "aliases", scope: !4115, file: !637, line: 396, type: !41)
!4121 = !DILocalVariable(name: "buf1", scope: !4122, file: !637, line: 196, type: !4189)
!4122 = distinct !DILexicalBlock(scope: !4123, file: !637, line: 194, column: 21)
!4123 = distinct !DILexicalBlock(scope: !4124, file: !637, line: 193, column: 19)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !637, line: 193, column: 19)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !637, line: 188, column: 17)
!4126 = distinct !DILexicalBlock(scope: !4127, file: !637, line: 181, column: 19)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !637, line: 177, column: 13)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !637, line: 173, column: 15)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !637, line: 161, column: 9)
!4130 = distinct !DILexicalBlock(scope: !4131, file: !637, line: 157, column: 11)
!4131 = distinct !DILexicalBlock(scope: !4132, file: !637, line: 130, column: 5)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !637, line: 129, column: 7)
!4133 = distinct !DISubprogram(name: "get_charset_aliases", scope: !637, file: !637, line: 124, type: !4116, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4134)
!4134 = !{!4135, !4136, !4137, !4138, !4139, !4141, !4142, !4143, !4144, !4185, !4186, !4187, !4121, !4188, !4192, !4193, !4194}
!4135 = !DILocalVariable(name: "cp", scope: !4133, file: !637, line: 126, type: !41)
!4136 = !DILocalVariable(name: "dir", scope: !4131, file: !637, line: 132, type: !41)
!4137 = !DILocalVariable(name: "base", scope: !4131, file: !637, line: 133, type: !41)
!4138 = !DILocalVariable(name: "file_name", scope: !4131, file: !637, line: 134, type: !21)
!4139 = !DILocalVariable(name: "dir_len", scope: !4140, file: !637, line: 144, type: !103)
!4140 = distinct !DILexicalBlock(scope: !4131, file: !637, line: 143, column: 7)
!4141 = !DILocalVariable(name: "base_len", scope: !4140, file: !637, line: 145, type: !103)
!4142 = !DILocalVariable(name: "add_slash", scope: !4140, file: !637, line: 146, type: !30)
!4143 = !DILocalVariable(name: "fd", scope: !4129, file: !637, line: 162, type: !30)
!4144 = !DILocalVariable(name: "fp", scope: !4127, file: !637, line: 178, type: !4145)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !124, line: 7, baseType: !4147)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !126, line: 241, size: 1728, elements: !4148)
!4148 = !{!4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4147, file: !126, line: 242, baseType: !30, size: 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4147, file: !126, line: 247, baseType: !21, size: 64, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4147, file: !126, line: 248, baseType: !21, size: 64, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4147, file: !126, line: 249, baseType: !21, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4147, file: !126, line: 250, baseType: !21, size: 64, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4147, file: !126, line: 251, baseType: !21, size: 64, offset: 320)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4147, file: !126, line: 252, baseType: !21, size: 64, offset: 384)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4147, file: !126, line: 253, baseType: !21, size: 64, offset: 448)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4147, file: !126, line: 254, baseType: !21, size: 64, offset: 512)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4147, file: !126, line: 256, baseType: !21, size: 64, offset: 576)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4147, file: !126, line: 257, baseType: !21, size: 64, offset: 640)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4147, file: !126, line: 258, baseType: !21, size: 64, offset: 704)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4147, file: !126, line: 260, baseType: !4162, size: 64, offset: 768)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !126, line: 156, size: 192, elements: !4164)
!4164 = !{!4165, !4166, !4168}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4163, file: !126, line: 157, baseType: !4162, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4163, file: !126, line: 158, baseType: !4167, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4163, file: !126, line: 162, baseType: !30, size: 32, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4147, file: !126, line: 262, baseType: !4167, size: 64, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4147, file: !126, line: 264, baseType: !30, size: 32, offset: 896)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4147, file: !126, line: 268, baseType: !30, size: 32, offset: 928)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4147, file: !126, line: 270, baseType: !152, size: 64, offset: 960)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4147, file: !126, line: 274, baseType: !31, size: 16, offset: 1024)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4147, file: !126, line: 275, baseType: !156, size: 8, offset: 1040)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4147, file: !126, line: 276, baseType: !158, size: 8, offset: 1048)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4147, file: !126, line: 280, baseType: !162, size: 64, offset: 1088)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4147, file: !126, line: 289, baseType: !165, size: 64, offset: 1152)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4147, file: !126, line: 297, baseType: !23, size: 64, offset: 1216)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4147, file: !126, line: 298, baseType: !23, size: 64, offset: 1280)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4147, file: !126, line: 299, baseType: !23, size: 64, offset: 1344)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4147, file: !126, line: 300, baseType: !23, size: 64, offset: 1408)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4147, file: !126, line: 302, baseType: !103, size: 64, offset: 1472)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4147, file: !126, line: 303, baseType: !30, size: 32, offset: 1536)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4147, file: !126, line: 305, baseType: !173, size: 160, offset: 1568)
!4185 = !DILocalVariable(name: "res_ptr", scope: !4125, file: !637, line: 190, type: !21)
!4186 = !DILocalVariable(name: "res_size", scope: !4125, file: !637, line: 191, type: !103)
!4187 = !DILocalVariable(name: "c", scope: !4122, file: !637, line: 195, type: !30)
!4188 = !DILocalVariable(name: "buf2", scope: !4122, file: !637, line: 197, type: !4189)
!4189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 408, elements: !4190)
!4190 = !{!4191}
!4191 = !DISubrange(count: 51)
!4192 = !DILocalVariable(name: "l1", scope: !4122, file: !637, line: 198, type: !103)
!4193 = !DILocalVariable(name: "l2", scope: !4122, file: !637, line: 198, type: !103)
!4194 = !DILocalVariable(name: "old_res_ptr", scope: !4122, file: !637, line: 199, type: !21)
!4195 = !DILocation(line: 196, column: 28, scope: !4122, inlinedAt: !4196)
!4196 = distinct !DILocation(line: 589, column: 18, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4115, file: !637, line: 589, column: 3)
!4198 = !DILocation(line: 197, column: 28, scope: !4122, inlinedAt: !4196)
!4199 = !DILocation(line: 403, column: 13, scope: !4115)
!4200 = !DILocation(line: 395, column: 15, scope: !4115)
!4201 = !DILocation(line: 584, column: 15, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4115, file: !637, line: 584, column: 7)
!4203 = !DILocation(line: 584, column: 7, scope: !4115)
!4204 = !DILocation(line: 128, column: 8, scope: !4133, inlinedAt: !4196)
!4205 = !DILocation(line: 126, column: 15, scope: !4133, inlinedAt: !4196)
!4206 = !DILocation(line: 129, column: 10, scope: !4132, inlinedAt: !4196)
!4207 = !DILocation(line: 129, column: 7, scope: !4133, inlinedAt: !4196)
!4208 = !DILocation(line: 138, column: 13, scope: !4131, inlinedAt: !4196)
!4209 = !DILocation(line: 132, column: 19, scope: !4131, inlinedAt: !4196)
!4210 = !DILocation(line: 139, column: 15, scope: !4211, inlinedAt: !4196)
!4211 = distinct !DILexicalBlock(scope: !4131, file: !637, line: 139, column: 11)
!4212 = !DILocation(line: 139, column: 23, scope: !4211, inlinedAt: !4196)
!4213 = !DILocation(line: 139, column: 26, scope: !4211, inlinedAt: !4196)
!4214 = !DILocation(line: 139, column: 33, scope: !4211, inlinedAt: !4196)
!4215 = !DILocation(line: 139, column: 11, scope: !4131, inlinedAt: !4196)
!4216 = !DILocation(line: 140, column: 9, scope: !4211, inlinedAt: !4196)
!4217 = !DILocation(line: 144, column: 26, scope: !4140, inlinedAt: !4196)
!4218 = !DILocation(line: 144, column: 16, scope: !4140, inlinedAt: !4196)
!4219 = !DILocation(line: 145, column: 16, scope: !4140, inlinedAt: !4196)
!4220 = !DILocation(line: 146, column: 34, scope: !4140, inlinedAt: !4196)
!4221 = !DILocation(line: 146, column: 38, scope: !4140, inlinedAt: !4196)
!4222 = !DILocation(line: 146, column: 42, scope: !4140, inlinedAt: !4196)
!4223 = !DILocation(line: 147, column: 48, scope: !4140, inlinedAt: !4196)
!4224 = !DILocation(line: 147, column: 46, scope: !4140, inlinedAt: !4196)
!4225 = !DILocation(line: 147, column: 69, scope: !4140, inlinedAt: !4196)
!4226 = !DILocation(line: 147, column: 30, scope: !4140, inlinedAt: !4196)
!4227 = !DILocation(line: 134, column: 13, scope: !4131, inlinedAt: !4196)
!4228 = !DILocation(line: 148, column: 13, scope: !4140, inlinedAt: !4196)
!4229 = !DILocation(line: 150, column: 13, scope: !4230, inlinedAt: !4196)
!4230 = distinct !DILexicalBlock(scope: !4231, file: !637, line: 149, column: 11)
!4231 = distinct !DILexicalBlock(scope: !4140, file: !637, line: 148, column: 13)
!4232 = !DILocation(line: 151, column: 17, scope: !4230, inlinedAt: !4196)
!4233 = !DILocation(line: 152, column: 34, scope: !4234, inlinedAt: !4196)
!4234 = distinct !DILexicalBlock(scope: !4230, file: !637, line: 151, column: 17)
!4235 = !DILocation(line: 153, column: 41, scope: !4230, inlinedAt: !4196)
!4236 = !DILocation(line: 153, column: 13, scope: !4230, inlinedAt: !4196)
!4237 = !DILocation(line: 157, column: 11, scope: !4131, inlinedAt: !4196)
!4238 = !DILocation(line: 171, column: 16, scope: !4129, inlinedAt: !4196)
!4239 = !DILocation(line: 162, column: 15, scope: !4129, inlinedAt: !4196)
!4240 = !DILocation(line: 173, column: 18, scope: !4128, inlinedAt: !4196)
!4241 = !DILocation(line: 173, column: 15, scope: !4129, inlinedAt: !4196)
!4242 = !DILocation(line: 180, column: 20, scope: !4127, inlinedAt: !4196)
!4243 = !DILocation(line: 178, column: 21, scope: !4127, inlinedAt: !4196)
!4244 = !DILocation(line: 181, column: 22, scope: !4126, inlinedAt: !4196)
!4245 = !DILocation(line: 181, column: 19, scope: !4127, inlinedAt: !4196)
!4246 = !DILocation(line: 184, column: 19, scope: !4247, inlinedAt: !4196)
!4247 = distinct !DILexicalBlock(scope: !4126, file: !637, line: 182, column: 17)
!4248 = !DILocation(line: 186, column: 17, scope: !4247, inlinedAt: !4196)
!4249 = !DILocation(line: 190, column: 25, scope: !4125, inlinedAt: !4196)
!4250 = !DILocation(line: 191, column: 26, scope: !4125, inlinedAt: !4196)
!4251 = !DILocation(line: 193, column: 19, scope: !4125, inlinedAt: !4196)
!4252 = !DILocation(line: 196, column: 23, scope: !4122, inlinedAt: !4196)
!4253 = !DILocation(line: 197, column: 23, scope: !4122, inlinedAt: !4196)
!4254 = !DILocalVariable(name: "__fp", arg: 1, scope: !4255, file: !885, line: 63, type: !4145)
!4255 = distinct !DISubprogram(name: "getc_unlocked", scope: !885, file: !885, line: 63, type: !4256, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!30, !4145}
!4258 = !{!4254}
!4259 = !DILocation(line: 63, column: 22, scope: !4255, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 201, column: 27, scope: !4122, inlinedAt: !4196)
!4261 = !DILocation(line: 65, column: 10, scope: !4255, inlinedAt: !4260)
!4262 = !DILocation(line: 195, column: 27, scope: !4122, inlinedAt: !4196)
!4263 = !DILocation(line: 202, column: 27, scope: !4122, inlinedAt: !4196)
!4264 = distinct !{!4264, !4265, !4268}
!4265 = !DILocation(line: 209, column: 27, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4267, file: !637, line: 207, column: 25)
!4267 = distinct !DILexicalBlock(scope: !4122, file: !637, line: 206, column: 27)
!4268 = !DILocation(line: 211, column: 58, scope: !4266)
!4269 = !DILocation(line: 65, column: 10, scope: !4255, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 210, column: 33, scope: !4266, inlinedAt: !4196)
!4271 = !DILocation(line: 63, column: 22, scope: !4255, inlinedAt: !4270)
!4272 = !DILocation(line: 210, column: 29, scope: !4266, inlinedAt: !4196)
!4273 = distinct !{!4273, !4274, !4275}
!4274 = !DILocation(line: 193, column: 19, scope: !4124)
!4275 = !DILocation(line: 241, column: 21, scope: !4124)
!4276 = !DILocation(line: 216, column: 23, scope: !4122, inlinedAt: !4196)
!4277 = !DILocation(line: 217, column: 27, scope: !4278, inlinedAt: !4196)
!4278 = distinct !DILexicalBlock(scope: !4122, file: !637, line: 217, column: 27)
!4279 = !DILocation(line: 217, column: 64, scope: !4278, inlinedAt: !4196)
!4280 = !DILocation(line: 217, column: 27, scope: !4122, inlinedAt: !4196)
!4281 = !DILocation(line: 219, column: 28, scope: !4122, inlinedAt: !4196)
!4282 = !DILocation(line: 198, column: 30, scope: !4122, inlinedAt: !4196)
!4283 = !DILocation(line: 220, column: 28, scope: !4122, inlinedAt: !4196)
!4284 = !DILocation(line: 198, column: 34, scope: !4122, inlinedAt: !4196)
!4285 = !DILocation(line: 199, column: 29, scope: !4122, inlinedAt: !4196)
!4286 = !DILocation(line: 222, column: 36, scope: !4287, inlinedAt: !4196)
!4287 = distinct !DILexicalBlock(scope: !4122, file: !637, line: 222, column: 27)
!4288 = !DILocation(line: 222, column: 27, scope: !4122, inlinedAt: !4196)
!4289 = !DILocation(line: 225, column: 63, scope: !4290, inlinedAt: !4196)
!4290 = distinct !DILexicalBlock(scope: !4287, file: !637, line: 223, column: 25)
!4291 = !DILocation(line: 225, column: 46, scope: !4290, inlinedAt: !4196)
!4292 = !DILocation(line: 226, column: 25, scope: !4290, inlinedAt: !4196)
!4293 = !DILocation(line: 229, column: 36, scope: !4294, inlinedAt: !4196)
!4294 = distinct !DILexicalBlock(scope: !4287, file: !637, line: 228, column: 25)
!4295 = !DILocation(line: 230, column: 73, scope: !4294, inlinedAt: !4196)
!4296 = !DILocation(line: 230, column: 46, scope: !4294, inlinedAt: !4196)
!4297 = !DILocation(line: 232, column: 35, scope: !4298, inlinedAt: !4196)
!4298 = distinct !DILexicalBlock(scope: !4122, file: !637, line: 232, column: 27)
!4299 = !DILocation(line: 232, column: 27, scope: !4122, inlinedAt: !4196)
!4300 = !DILocation(line: 236, column: 27, scope: !4301, inlinedAt: !4196)
!4301 = distinct !DILexicalBlock(scope: !4298, file: !637, line: 233, column: 25)
!4302 = !DILocation(line: 237, column: 27, scope: !4301, inlinedAt: !4196)
!4303 = !DILocation(line: 241, column: 21, scope: !4123, inlinedAt: !4196)
!4304 = !DILocation(line: 239, column: 39, scope: !4122, inlinedAt: !4196)
!4305 = !DILocation(line: 239, column: 50, scope: !4122, inlinedAt: !4196)
!4306 = !DILocation(line: 239, column: 61, scope: !4122, inlinedAt: !4196)
!4307 = !DILocalVariable(name: "__dest", arg: 1, scope: !4308, file: !4309, line: 88, type: !4312)
!4308 = distinct !DISubprogram(name: "strcpy", scope: !4309, file: !4309, line: 88, type: !4310, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !294, variables: !4314)
!4309 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!21, !4312, !4313}
!4312 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!4313 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!4314 = !{!4307, !4315}
!4315 = !DILocalVariable(name: "__src", arg: 2, scope: !4308, file: !4309, line: 88, type: !4313)
!4316 = !DILocation(line: 88, column: 1, scope: !4308, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 239, column: 23, scope: !4122, inlinedAt: !4196)
!4318 = !DILocation(line: 90, column: 49, scope: !4308, inlinedAt: !4317)
!4319 = !DILocation(line: 90, column: 10, scope: !4308, inlinedAt: !4317)
!4320 = !DILocation(line: 88, column: 1, scope: !4308, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 240, column: 23, scope: !4122, inlinedAt: !4196)
!4322 = !DILocation(line: 90, column: 49, scope: !4308, inlinedAt: !4321)
!4323 = !DILocation(line: 90, column: 10, scope: !4308, inlinedAt: !4321)
!4324 = !DILocation(line: 193, column: 19, scope: !4123, inlinedAt: !4196)
!4325 = !DILocation(line: 242, column: 19, scope: !4125, inlinedAt: !4196)
!4326 = !DILocation(line: 243, column: 32, scope: !4327, inlinedAt: !4196)
!4327 = distinct !DILexicalBlock(scope: !4125, file: !637, line: 243, column: 23)
!4328 = !DILocation(line: 243, column: 23, scope: !4125, inlinedAt: !4196)
!4329 = !DILocation(line: 247, column: 33, scope: !4330, inlinedAt: !4196)
!4330 = distinct !DILexicalBlock(scope: !4327, file: !637, line: 246, column: 21)
!4331 = !DILocation(line: 247, column: 45, scope: !4330, inlinedAt: !4196)
!4332 = !DILocation(line: 253, column: 11, scope: !4129, inlinedAt: !4196)
!4333 = !DILocation(line: 377, column: 23, scope: !4131, inlinedAt: !4196)
!4334 = !DILocation(line: 378, column: 5, scope: !4131, inlinedAt: !4196)
!4335 = !DILocation(line: 396, column: 15, scope: !4115)
!4336 = !DILocation(line: 590, column: 8, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4197, file: !637, line: 589, column: 3)
!4338 = !DILocation(line: 590, column: 17, scope: !4337)
!4339 = !DILocation(line: 589, column: 3, scope: !4197)
!4340 = !DILocation(line: 592, column: 9, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4337, file: !637, line: 592, column: 9)
!4342 = !DILocation(line: 592, column: 35, scope: !4341)
!4343 = !DILocation(line: 593, column: 9, scope: !4341)
!4344 = !DILocation(line: 593, column: 24, scope: !4341)
!4345 = !DILocation(line: 593, column: 31, scope: !4341)
!4346 = !DILocation(line: 593, column: 34, scope: !4341)
!4347 = !DILocation(line: 593, column: 45, scope: !4341)
!4348 = !DILocation(line: 592, column: 9, scope: !4337)
!4349 = !DILocation(line: 595, column: 29, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4341, file: !637, line: 594, column: 7)
!4351 = !DILocation(line: 595, column: 27, scope: !4350)
!4352 = !DILocation(line: 595, column: 46, scope: !4350)
!4353 = !DILocation(line: 596, column: 9, scope: !4350)
!4354 = !DILocation(line: 591, column: 19, scope: !4337)
!4355 = !DILocation(line: 591, column: 36, scope: !4337)
!4356 = !DILocation(line: 591, column: 16, scope: !4337)
!4357 = !DILocation(line: 591, column: 52, scope: !4337)
!4358 = !DILocation(line: 591, column: 69, scope: !4337)
!4359 = !DILocation(line: 591, column: 49, scope: !4337)
!4360 = distinct !{!4360, !4339, !4361}
!4361 = !DILocation(line: 597, column: 7, scope: !4197)
!4362 = !DILocation(line: 602, column: 7, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4115, file: !637, line: 602, column: 7)
!4364 = !DILocation(line: 602, column: 18, scope: !4363)
!4365 = !DILocation(line: 602, column: 7, scope: !4115)
!4366 = !DILocation(line: 612, column: 3, scope: !4115)
