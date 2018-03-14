; ModuleID = 'coreutils-8.27/src/fmt.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.Word = type { i8*, i32, i32, i8, i32, i64, %struct.Word* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Usage: %s [-WIDTH] [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [129 x i8] c"Reformat each paragraph in the FILE(s), writing to standard output.\0AThe option -WIDTH is an abbreviated form of --width=DIGITS.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [278 x i8] c"  -c, --crown-margin        preserve indentation of first two lines\0A  -p, --prefix=STRING       reformat only lines beginning with STRING,\0A                              reattaching the prefix to reformatted lines\0A  -s, --split-only          split long lines, but do not refill\0A\00", align 1
@.str.4 = private unnamed_addr constant [286 x i8] c"  -t, --tagged-paragraph    indentation of first line different from second\0A  -u, --uniform-spacing     one space between words, two after sentences\0A  -w, --width=WIDTH         maximum line width (default of 75 columns)\0A  -g, --goal=WIDTH          goal width (default of 93% of width)\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
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
@uniform = internal unnamed_addr global i1 false, align 1
@split = internal unnamed_addr global i1 false, align 1
@tagged = internal unnamed_addr global i1 false, align 1
@crown = internal unnamed_addr global i1 false, align 1
@max_width = internal unnamed_addr global i32 0, align 4, !dbg !0
@prefix = internal unnamed_addr global i8* null, align 8, !dbg !64
@prefix_full_length = internal unnamed_addr global i32 0, align 4, !dbg !68
@prefix_lead_space = internal unnamed_addr global i32 0, align 4, !dbg !70
@prefix_length = internal unnamed_addr global i32 0, align 4, !dbg !72
@.str.11 = private unnamed_addr constant [21 x i8] c"0123456789cstuw:p:g:\00", align 1
@long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !96
@.str.12 = private unnamed_addr constant [94 x i8] c"invalid option -- %c; -WIDTH is recognized only when it is the first\0Aoption; use -w N instead\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"Ross Paterson\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"invalid width\00", align 1
@goal_width = internal unnamed_addr global i32 0, align 4, !dbg !74
@optind = external local_unnamed_addr global i32, align 4
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@tabs = internal unnamed_addr global i1 false, align 1
@other_indent = internal unnamed_addr global i32 0, align 4, !dbg !112
@next_char = internal unnamed_addr global i32 0, align 4, !dbg !118
@last_line_length = internal unnamed_addr global i32 0, align 4, !dbg !120
@next_prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !116
@in_column = internal unnamed_addr global i32 0, align 4, !dbg !114
@out_column = internal unnamed_addr global i32 0, align 4, !dbg !122
@prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !124
@first_indent = internal unnamed_addr global i32 0, align 4, !dbg !126
@parabuf = internal global [5000 x i8] zeroinitializer, align 16, !dbg !128
@wptr = internal unnamed_addr global i8* null, align 8, !dbg !133
@unused_word_type = internal global [1000 x %struct.Word] zeroinitializer, align 16, !dbg !135
@word_limit = internal unnamed_addr global %struct.Word* null, align 8, !dbg !154
@.str.46 = private unnamed_addr constant [18 x i8] c"word < word_limit\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"src/fmt.c\00", align 1
@__PRETTY_FUNCTION__.get_paragraph = private unnamed_addr constant [28 x i8] c"_Bool get_paragraph(FILE *)\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"(['`\22\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c")]'\22\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"crown-margin\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"split-only\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"tagged-paragraph\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"uniform-spacing\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"goal\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), align 8, !dbg !156
@.str.22 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !162
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !167
@.str.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !170
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !177
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !184
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !199
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !204
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !216
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.66 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.67 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.68 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.69 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !223
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !230
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !218
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !232
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
@.str.19.97 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !238
@.str.1.108 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.116 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !247
@.str.3.136 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.137 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.138 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.139 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.140 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !660 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !664, metadata !665), !dbg !666
  %2 = icmp eq i32 %0, 0, !dbg !667
  br i1 %2, label %8, label %3, !dbg !669

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !670, !tbaa !672
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !670
  %6 = load i8*, i8** @program_name, align 8, !dbg !670, !tbaa !672
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !670
  br label %48, !dbg !670

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !676
  %10 = load i8*, i8** @program_name, align 8, !dbg !676, !tbaa !672
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12, !dbg !676
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !678
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !678, !tbaa !672
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !678
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i32 5) #12, !dbg !679
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !679, !tbaa !672
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !679
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #12, !dbg !684
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !672
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !684
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([278 x i8], [278 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !687
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !672
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !687
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([286 x i8], [286 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !688
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !672
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12, !dbg !688
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !689
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !672
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12, !dbg !689
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !690
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !690, !tbaa !672
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #12, !dbg !690
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !84, metadata !665) #12, !dbg !691
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !84, metadata !665) #12, !dbg !691
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !693
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !693
  %35 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !694
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !92, metadata !665) #12, !dbg !695
  %36 = icmp eq i8* %35, null, !dbg !696
  br i1 %36, label %43, label %37, !dbg !698

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #9, !dbg !699
  %39 = icmp eq i32 %38, 0, !dbg !699
  br i1 %39, label %43, label %40, !dbg !700

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !701
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !701
  br label %43, !dbg !703

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #12, !dbg !704
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !704
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #12, !dbg !705
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #12, !dbg !705
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #15, !dbg !706
  unreachable, !dbg !706
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !707 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !712, metadata !665), !dbg !781
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !713, metadata !665), !dbg !782
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !715, metadata !665), !dbg !783
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !716, metadata !665), !dbg !784
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !717, metadata !665), !dbg !785
  %3 = load i8*, i8** %1, align 8, !dbg !786, !tbaa !672
  tail call void @set_program_name(i8* %3) #12, !dbg !787
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !788
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !789
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !790
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !791
  store i1 false, i1* @uniform, align 1
  store i1 false, i1* @split, align 1
  store i1 false, i1* @tagged, align 1
  store i1 false, i1* @crown, align 1
  store i32 75, i32* @max_width, align 4, !dbg !792, !tbaa !793
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** @prefix, align 8, !dbg !795, !tbaa !672
  store i32 0, i32* @prefix_full_length, align 4, !dbg !796, !tbaa !793
  store i32 0, i32* @prefix_lead_space, align 4, !dbg !797, !tbaa !793
  store i32 0, i32* @prefix_length, align 4, !dbg !798, !tbaa !793
  %8 = icmp sgt i32 %0, 1, !dbg !799
  br i1 %8, label %9, label %25, !dbg !801

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !802
  %11 = load i8*, i8** %10, align 8, !dbg !802, !tbaa !672
  %12 = load i8, i8* %11, align 1, !dbg !802, !tbaa !803
  %13 = icmp eq i8 %12, 45, !dbg !804
  br i1 %13, label %14, label %25, !dbg !805

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !806
  %16 = load i8, i8* %15, align 1, !dbg !806, !tbaa !803
  %17 = sext i8 %16 to i32, !dbg !806
  %18 = add nsw i32 %17, -48, !dbg !806
  %19 = icmp ult i32 %18, 10, !dbg !806
  br i1 %19, label %20, label %25, !dbg !807

; <label>:20:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !716, metadata !665), !dbg !784
  %21 = bitcast i8** %1 to i64*, !dbg !808
  %22 = load i64, i64* %21, align 8, !dbg !808, !tbaa !672
  %23 = bitcast i8** %10 to i64*, !dbg !810
  store i64 %22, i64* %23, align 8, !dbg !810, !tbaa !672
  tail call void @llvm.dbg.value(metadata i8** %10, i64 0, metadata !713, metadata !665), !dbg !782
  %24 = add nsw i32 %0, -1, !dbg !811
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !712, metadata !665), !dbg !781
  br label %25, !dbg !812

; <label>:25:                                     ; preds = %20, %14, %9, %2
  %26 = phi i8** [ %10, %20 ], [ %1, %14 ], [ %1, %9 ], [ %1, %2 ]
  %27 = phi i8* [ %15, %20 ], [ null, %14 ], [ null, %9 ], [ null, %2 ]
  %28 = phi i32 [ %24, %20 ], [ %0, %14 ], [ %0, %9 ], [ %0, %2 ]
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !712, metadata !665), !dbg !781
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !716, metadata !665), !dbg !784
  tail call void @llvm.dbg.value(metadata i8** %26, i64 0, metadata !713, metadata !665), !dbg !782
  br label %29, !dbg !813

; <label>:29:                                     ; preds = %46, %25
  %30 = phi i8* [ %47, %46 ], [ %27, %25 ]
  %31 = phi i8* [ %33, %46 ], [ null, %25 ]
  br label %32, !dbg !814

; <label>:32:                                     ; preds = %29, %48
  %33 = phi i8* [ %31, %29 ], [ %49, %48 ]
  br label %34, !dbg !814

; <label>:34:                                     ; preds = %85, %32
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !717, metadata !665), !dbg !785
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !716, metadata !665), !dbg !784
  %35 = tail call i32 @getopt_long(i32 %28, i8** %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !814
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !714, metadata !665), !dbg !815
  switch i32 %35, label %36 [
    i32 -1, label %90
    i32 99, label %42
    i32 115, label %43
    i32 116, label %44
    i32 117, label %45
    i32 119, label %46
    i32 103, label %48
    i32 112, label %50
    i32 -130, label %86
    i32 -131, label %87
  ], !dbg !813

; <label>:36:                                     ; preds = %34
  %37 = add i32 %35, -48, !dbg !816
  %38 = icmp ult i32 %37, 10, !dbg !816
  br i1 %38, label %39, label %41, !dbg !819

; <label>:39:                                     ; preds = %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !820
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40, i32 %35) #12, !dbg !821
  br label %41, !dbg !821

; <label>:41:                                     ; preds = %39, %36
  tail call void @usage(i32 1) #16, !dbg !822
  unreachable, !dbg !822

; <label>:42:                                     ; preds = %34
  store i1 true, i1* @crown, align 1
  br label %85, !dbg !823

; <label>:43:                                     ; preds = %34
  store i1 true, i1* @split, align 1
  br label %85, !dbg !824

; <label>:44:                                     ; preds = %34
  store i1 true, i1* @tagged, align 1
  br label %85, !dbg !825

; <label>:45:                                     ; preds = %34
  store i1 true, i1* @uniform, align 1
  br label %85, !dbg !826

; <label>:46:                                     ; preds = %34
  %47 = load i8*, i8** @optarg, align 8, !dbg !827, !tbaa !672
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !716, metadata !665), !dbg !784
  br label %29, !dbg !828, !llvm.loop !829

; <label>:48:                                     ; preds = %34
  %49 = load i8*, i8** @optarg, align 8, !dbg !831, !tbaa !672
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !717, metadata !665), !dbg !785
  br label %32, !dbg !832, !llvm.loop !829

; <label>:50:                                     ; preds = %34
  %51 = load i8*, i8** @optarg, align 8, !dbg !833, !tbaa !672
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !834, metadata !665) #12, !dbg !840
  store i32 0, i32* @prefix_lead_space, align 4, !dbg !842, !tbaa !793
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !834, metadata !665) #12, !dbg !840
  %52 = load i8, i8* %51, align 1, !dbg !843, !tbaa !803
  %53 = icmp eq i8 %52, 32, !dbg !844
  br i1 %53, label %54, label %63, !dbg !845

; <label>:54:                                     ; preds = %50
  br label %55, !dbg !846

; <label>:55:                                     ; preds = %54, %55
  %56 = phi i32 [ %58, %55 ], [ 0, %54 ], !dbg !840
  %57 = phi i8* [ %59, %55 ], [ %51, %54 ]
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !834, metadata !665) #12, !dbg !840
  %58 = add nuw nsw i32 %56, 1, !dbg !846
  %59 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !848
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !834, metadata !665) #12, !dbg !840
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !834, metadata !665) #12, !dbg !840
  %60 = load i8, i8* %59, align 1, !dbg !843, !tbaa !803
  %61 = icmp eq i8 %60, 32, !dbg !844
  br i1 %61, label %55, label %62, !dbg !845, !llvm.loop !849

; <label>:62:                                     ; preds = %55
  store i32 %58, i32* @prefix_lead_space, align 4, !dbg !846, !tbaa !793
  br label %63, !dbg !845

; <label>:63:                                     ; preds = %62, %50
  %64 = phi i8* [ %59, %62 ], [ %51, %50 ]
  store i8* %64, i8** @prefix, align 8, !dbg !852, !tbaa !672
  %65 = tail call i64 @strlen(i8* %64) #9, !dbg !853
  %66 = trunc i64 %65 to i32, !dbg !853
  store i32 %66, i32* @prefix_full_length, align 4, !dbg !854, !tbaa !793
  %67 = shl i64 %65, 32, !dbg !855
  %68 = ashr exact i64 %67, 32, !dbg !855
  %69 = getelementptr inbounds i8, i8* %64, i64 %68, !dbg !855
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !839, metadata !665) #12, !dbg !856
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !839, metadata !665) #12, !dbg !856
  %70 = icmp sgt i64 %67, 0, !dbg !857
  br i1 %70, label %71, label %79, !dbg !858

; <label>:71:                                     ; preds = %63
  br label %74, !dbg !859

; <label>:72:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !839, metadata !665) #12, !dbg !856
  %73 = icmp ugt i8* %76, %64, !dbg !857
  br i1 %73, label %74, label %79, !dbg !858, !llvm.loop !860

; <label>:74:                                     ; preds = %71, %72
  %75 = phi i8* [ %76, %72 ], [ %69, %71 ]
  tail call void @llvm.dbg.value(metadata i8* %75, i64 0, metadata !839, metadata !665) #12, !dbg !856
  %76 = getelementptr inbounds i8, i8* %75, i64 -1, !dbg !859
  %77 = load i8, i8* %76, align 1, !dbg !859, !tbaa !803
  %78 = icmp eq i8 %77, 32, !dbg !863
  tail call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !839, metadata !665) #12, !dbg !856
  br i1 %78, label %72, label %79, !dbg !864

; <label>:79:                                     ; preds = %72, %74, %63
  %80 = phi i8* [ %69, %63 ], [ %75, %74 ], [ %76, %72 ]
  store i8 0, i8* %80, align 1, !dbg !865, !tbaa !803
  %81 = ptrtoint i8* %80 to i64, !dbg !866
  %82 = ptrtoint i8* %64 to i64, !dbg !866
  %83 = sub i64 %81, %82, !dbg !866
  %84 = trunc i64 %83 to i32, !dbg !867
  store i32 %84, i32* @prefix_length, align 4, !dbg !868, !tbaa !793
  br label %85, !dbg !869

; <label>:85:                                     ; preds = %79, %45, %44, %43, %42
  br label %34, !dbg !785, !llvm.loop !829

; <label>:86:                                     ; preds = %34
  tail call void @usage(i32 0) #16, !dbg !870
  unreachable, !dbg !870

; <label>:87:                                     ; preds = %34
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !871, !tbaa !672
  %89 = load i8*, i8** @Version, align 8, !dbg !871, !tbaa !672
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* null) #12, !dbg !871
  tail call void @exit(i32 0) #15, !dbg !871
  unreachable, !dbg !871

; <label>:90:                                     ; preds = %34
  %91 = icmp eq i8* %30, null, !dbg !872
  br i1 %91, label %92, label %94, !dbg !874

; <label>:92:                                     ; preds = %90
  %93 = load i32, i32* @max_width, align 4, !tbaa !793
  br label %98, !dbg !874

; <label>:94:                                     ; preds = %90
  %95 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 5) #12, !dbg !875
  %96 = tail call i64 @xdectoumax(i8* nonnull %30, i64 0, i64 2500, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %95, i32 0) #12, !dbg !877
  %97 = trunc i64 %96 to i32, !dbg !877
  store i32 %97, i32* @max_width, align 4, !dbg !878, !tbaa !793
  br label %98, !dbg !879

; <label>:98:                                     ; preds = %92, %94
  %99 = phi i32 [ %93, %92 ], [ %97, %94 ]
  %100 = icmp eq i8* %33, null, !dbg !880
  br i1 %100, label %108, label %101, !dbg !882

; <label>:101:                                    ; preds = %98
  %102 = sext i32 %99 to i64, !dbg !883
  %103 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 5) #12, !dbg !885
  %104 = tail call i64 @xdectoumax(i8* nonnull %33, i64 0, i64 %102, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %103, i32 0) #12, !dbg !886
  %105 = trunc i64 %104 to i32, !dbg !886
  store i32 %105, i32* @goal_width, align 4, !dbg !887, !tbaa !793
  br i1 %91, label %106, label %111, !dbg !888

; <label>:106:                                    ; preds = %101
  %107 = add nsw i32 %105, 10, !dbg !889
  store i32 %107, i32* @max_width, align 4, !dbg !891, !tbaa !793
  br label %111, !dbg !892

; <label>:108:                                    ; preds = %98
  %109 = mul nsw i32 %99, 187, !dbg !893
  %110 = sdiv i32 %109, 200, !dbg !895
  store i32 %110, i32* @goal_width, align 4, !dbg !896, !tbaa !793
  br label %111

; <label>:111:                                    ; preds = %101, %106, %108
  %112 = load i32, i32* @optind, align 4, !dbg !897, !tbaa !793
  %113 = icmp eq i32 %112, %28, !dbg !898
  br i1 %113, label %114, label %116, !dbg !899

; <label>:114:                                    ; preds = %111
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !900, !tbaa !672
  tail call fastcc void @fmt(%struct._IO_FILE* %115), !dbg !901
  br label %149, !dbg !901

; <label>:116:                                    ; preds = %111
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !715, metadata !665), !dbg !783
  %117 = icmp slt i32 %112, %28, !dbg !902
  br i1 %117, label %118, label %149, !dbg !903

; <label>:118:                                    ; preds = %116
  br label %119, !dbg !904

; <label>:119:                                    ; preds = %118, %144
  %120 = phi i32 [ %147, %144 ], [ %112, %118 ]
  %121 = phi i8 [ %145, %144 ], [ 1, %118 ]
  tail call void @llvm.dbg.value(metadata i8 %121, i64 0, metadata !715, metadata !665), !dbg !783
  %122 = sext i32 %120 to i64, !dbg !904
  %123 = getelementptr inbounds i8*, i8** %26, i64 %122, !dbg !904
  %124 = load i8*, i8** %123, align 8, !dbg !904, !tbaa !672
  tail call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !718, metadata !665), !dbg !905
  %125 = tail call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !906
  %126 = icmp eq i32 %125, 0, !dbg !906
  br i1 %126, label %127, label %129, !dbg !907

; <label>:127:                                    ; preds = %119
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !908, !tbaa !672
  tail call fastcc void @fmt(%struct._IO_FILE* %128), !dbg !909
  br label %144, !dbg !909

; <label>:129:                                    ; preds = %119
  %130 = tail call %struct._IO_FILE* @fopen(i8* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)), !dbg !910
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %130, i64 0, metadata !724, metadata !665), !dbg !911
  %131 = icmp eq %struct._IO_FILE* %130, null, !dbg !912
  br i1 %131, label %139, label %132, !dbg !914

; <label>:132:                                    ; preds = %129
  tail call fastcc void @fmt(%struct._IO_FILE* nonnull %130), !dbg !915
  %133 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %130) #12, !dbg !917
  %134 = icmp eq i32 %133, -1, !dbg !919
  br i1 %134, label %135, label %144, !dbg !920

; <label>:135:                                    ; preds = %132
  %136 = tail call i32* @__errno_location() #17, !dbg !921
  %137 = load i32, i32* %136, align 4, !dbg !921, !tbaa !793
  %138 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %124) #12, !dbg !923
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %138) #12, !dbg !924
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !715, metadata !665), !dbg !783
  br label %144, !dbg !925

; <label>:139:                                    ; preds = %129
  %140 = tail call i32* @__errno_location() #17, !dbg !926
  %141 = load i32, i32* %140, align 4, !dbg !926, !tbaa !793
  %142 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !928
  %143 = tail call i8* @quotearg_style(i32 4, i8* %124) #12, !dbg !929
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %141, i8* %142, i8* %143) #12, !dbg !930
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !715, metadata !665), !dbg !783
  br label %144

; <label>:144:                                    ; preds = %139, %135, %132, %127
  %145 = phi i8 [ %121, %127 ], [ 0, %135 ], [ %121, %132 ], [ 0, %139 ]
  tail call void @llvm.dbg.value(metadata i8 %145, i64 0, metadata !715, metadata !665), !dbg !783
  %146 = load i32, i32* @optind, align 4, !dbg !931, !tbaa !793
  %147 = add nsw i32 %146, 1, !dbg !931
  store i32 %147, i32* @optind, align 4, !dbg !931, !tbaa !793
  tail call void @llvm.dbg.value(metadata i8 %145, i64 0, metadata !715, metadata !665), !dbg !783
  %148 = icmp slt i32 %147, %28, !dbg !902
  br i1 %148, label %119, label %149, !dbg !903, !llvm.loop !932

; <label>:149:                                    ; preds = %144, %116, %114
  %150 = phi i8 [ 1, %114 ], [ 1, %116 ], [ %145, %144 ]
  tail call void @llvm.dbg.value(metadata i8 %150, i64 0, metadata !715, metadata !665), !dbg !783
  %151 = and i8 %150, 1, !dbg !934
  %152 = xor i8 %151, 1, !dbg !934
  %153 = zext i8 %152 to i32, !dbg !934
  ret i32 %153, !dbg !935
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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fmt(%struct._IO_FILE*) unnamed_addr #6 !dbg !936 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !940, metadata !665), !dbg !941
  tail call void @fadvise(%struct._IO_FILE* %0, i32 2) #12, !dbg !942
  store i1 false, i1* @tabs, align 1
  store i32 0, i32* @other_indent, align 4, !dbg !943, !tbaa !793
  %2 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0), !dbg !944
  store i32 %2, i32* @next_char, align 4, !dbg !945, !tbaa !793
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  br label %5, !dbg !946

; <label>:5:                                      ; preds = %343, %1
  %6 = phi i32 [ %344, %343 ], [ %2, %1 ], !dbg !947
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !952, metadata !665) #12, !dbg !955
  store i32 0, i32* @last_line_length, align 4, !dbg !956, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !953, metadata !665) #12, !dbg !957
  br label %7, !dbg !958

; <label>:7:                                      ; preds = %212, %5
  %8 = phi i32 [ %6, %5 ], [ %213, %212 ]
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !953, metadata !665) #12, !dbg !957
  switch i32 %8, label %9 [
    i32 -1, label %18
    i32 10, label %18
  ], !dbg !959

; <label>:9:                                      ; preds = %7
  %10 = load i32, i32* @next_prefix_indent, align 4, !dbg !960, !tbaa !793
  %11 = load i32, i32* @prefix_lead_space, align 4, !dbg !961, !tbaa !793
  %12 = icmp slt i32 %10, %11, !dbg !962
  br i1 %12, label %20, label %13, !dbg !963

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* @in_column, align 4, !dbg !964, !tbaa !793
  %15 = load i32, i32* @prefix_full_length, align 4, !dbg !965, !tbaa !793
  %16 = add nsw i32 %15, %10, !dbg !966
  %17 = icmp slt i32 %14, %16, !dbg !967
  br i1 %17, label %18, label %214, !dbg !958

; <label>:18:                                     ; preds = %13, %7, %7
  %19 = load i32, i32* @next_prefix_indent, align 4, !dbg !968, !tbaa !793
  br label %20, !dbg !979

; <label>:20:                                     ; preds = %18, %9
  %21 = phi i32 [ %19, %18 ], [ %10, %9 ], !dbg !968
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !974, metadata !665) #12, !dbg !980
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !975, metadata !665) #12, !dbg !981
  store i32 0, i32* @out_column, align 4, !dbg !979, !tbaa !793
  %22 = load i32, i32* @in_column, align 4, !dbg !982, !tbaa !793
  %23 = icmp sgt i32 %22, %21, !dbg !983
  br i1 %23, label %25, label %24, !dbg !984

; <label>:24:                                     ; preds = %20
  switch i32 %8, label %25 [
    i32 -1, label %173
    i32 10, label %173
  ], !dbg !985

; <label>:25:                                     ; preds = %24, %20
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !986, metadata !665) #12, !dbg !991
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !989, metadata !665) #12, !dbg !994
  %26 = load i1, i1* @tabs, align 1
  br i1 %26, label %27, label %51, !dbg !995

; <label>:27:                                     ; preds = %25
  %28 = sdiv i32 %21, 8, !dbg !996
  %29 = shl nsw i32 %28, 3, !dbg !999
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !990, metadata !665) #12, !dbg !1000
  %30 = icmp sgt i32 %21, 7, !dbg !1001
  br i1 %30, label %31, label %51, !dbg !1003

; <label>:31:                                     ; preds = %27
  br label %32, !dbg !1004

; <label>:32:                                     ; preds = %31, %45
  %33 = phi i32 [ %49, %45 ], [ 0, %31 ]
  tail call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !1010, metadata !665) #12, !dbg !1013
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1004, !tbaa !672
  %35 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 5, !dbg !1004
  %36 = load i8*, i8** %35, align 8, !dbg !1004, !tbaa !1014
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 6, !dbg !1004
  %38 = load i8*, i8** %37, align 8, !dbg !1004, !tbaa !1018
  %39 = icmp ult i8* %36, %38, !dbg !1004
  br i1 %39, label %43, label %40, !dbg !1004, !prof !1019

; <label>:40:                                     ; preds = %32
  %41 = tail call i32 @__overflow(%struct._IO_FILE* %34, i32 9) #12, !dbg !1004
  %42 = load i32, i32* @out_column, align 4, !dbg !1020, !tbaa !793
  br label %45, !dbg !1004

; <label>:43:                                     ; preds = %32
  %44 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1004
  store i8* %44, i8** %35, align 8, !dbg !1004, !tbaa !1014
  store i8 9, i8* %36, align 1, !dbg !1004, !tbaa !803
  br label %45, !dbg !1004

; <label>:45:                                     ; preds = %43, %40
  %46 = phi i32 [ %42, %40 ], [ %33, %43 ], !dbg !1020
  %47 = sdiv i32 %46, 8, !dbg !1021
  %48 = shl nsw i32 %47, 3, !dbg !1022
  %49 = add i32 %48, 8, !dbg !1022
  store i32 %49, i32* @out_column, align 4, !dbg !1023, !tbaa !793
  %50 = icmp slt i32 %49, %29, !dbg !1024
  br i1 %50, label %32, label %51, !dbg !1025, !llvm.loop !1026

; <label>:51:                                     ; preds = %45, %27, %25
  %52 = phi i32 [ 0, %27 ], [ 0, %25 ], [ %49, %45 ], !dbg !1029
  %53 = icmp slt i32 %52, %21, !dbg !1030
  br i1 %53, label %54, label %72, !dbg !1031

; <label>:54:                                     ; preds = %51
  br label %55, !dbg !1032

; <label>:55:                                     ; preds = %54, %68
  %56 = phi i32 [ %70, %68 ], [ %52, %54 ]
  tail call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !1010, metadata !665) #12, !dbg !1035
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1032, !tbaa !672
  %58 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %57, i64 0, i32 5, !dbg !1032
  %59 = load i8*, i8** %58, align 8, !dbg !1032, !tbaa !1014
  %60 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %57, i64 0, i32 6, !dbg !1032
  %61 = load i8*, i8** %60, align 8, !dbg !1032, !tbaa !1018
  %62 = icmp ult i8* %59, %61, !dbg !1032
  br i1 %62, label %66, label %63, !dbg !1032, !prof !1019

; <label>:63:                                     ; preds = %55
  %64 = tail call i32 @__overflow(%struct._IO_FILE* %57, i32 32) #12, !dbg !1032
  %65 = load i32, i32* @out_column, align 4, !dbg !1036, !tbaa !793
  br label %68, !dbg !1032

; <label>:66:                                     ; preds = %55
  %67 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1032
  store i8* %67, i8** %58, align 8, !dbg !1032, !tbaa !1014
  store i8 32, i8* %59, align 1, !dbg !1032, !tbaa !803
  br label %68, !dbg !1032

; <label>:68:                                     ; preds = %66, %63
  %69 = phi i32 [ %65, %63 ], [ %56, %66 ], !dbg !1036
  %70 = add nsw i32 %69, 1, !dbg !1036
  store i32 %70, i32* @out_column, align 4, !dbg !1036, !tbaa !793
  %71 = icmp slt i32 %70, %21, !dbg !1030
  br i1 %71, label %55, label %72, !dbg !1031, !llvm.loop !1037

; <label>:72:                                     ; preds = %68, %51
  %73 = phi i32 [ %52, %51 ], [ %70, %68 ], !dbg !1040
  %74 = load i32, i32* @in_column, align 4, !dbg !1043, !tbaa !793
  %75 = icmp eq i32 %73, %74, !dbg !1044
  br i1 %75, label %104, label %76, !dbg !1045

; <label>:76:                                     ; preds = %72
  %77 = load i8*, i8** @prefix, align 8, !dbg !1046, !tbaa !672
  br label %78, !dbg !1045

; <label>:78:                                     ; preds = %99, %76
  %79 = phi i32 [ %74, %76 ], [ %100, %99 ]
  %80 = phi i32 [ %73, %76 ], [ %102, %99 ]
  %81 = phi i8* [ %77, %76 ], [ %85, %99 ]
  tail call void @llvm.dbg.value(metadata i8* %81, i64 0, metadata !976, metadata !665) #12, !dbg !1047
  %82 = load i8, i8* %81, align 1, !dbg !1048, !tbaa !803
  %83 = icmp eq i8 %82, 0, !dbg !1045
  br i1 %83, label %104, label %84, !dbg !1049

; <label>:84:                                     ; preds = %78
  %85 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !1050
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !976, metadata !665) #12, !dbg !1047
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1051, !tbaa !672
  %87 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %86, i64 0, i32 5, !dbg !1051
  %88 = load i8*, i8** %87, align 8, !dbg !1051, !tbaa !1014
  %89 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %86, i64 0, i32 6, !dbg !1051
  %90 = load i8*, i8** %89, align 8, !dbg !1051, !tbaa !1018
  %91 = icmp ult i8* %88, %90, !dbg !1051
  br i1 %91, label %97, label %92, !dbg !1051, !prof !1019

; <label>:92:                                     ; preds = %84
  %93 = zext i8 %82 to i32, !dbg !1048
  %94 = tail call i32 @__overflow(%struct._IO_FILE* %86, i32 %93) #12, !dbg !1051
  %95 = load i32, i32* @out_column, align 4, !dbg !1053, !tbaa !793
  %96 = load i32, i32* @in_column, align 4, !dbg !1043, !tbaa !793
  br label %99, !dbg !1051

; <label>:97:                                     ; preds = %84
  %98 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1051
  store i8* %98, i8** %87, align 8, !dbg !1051, !tbaa !1014
  store i8 %82, i8* %88, align 1, !dbg !1051, !tbaa !803
  br label %99, !dbg !1051

; <label>:99:                                     ; preds = %97, %92
  %100 = phi i32 [ %96, %92 ], [ %79, %97 ], !dbg !1043
  %101 = phi i32 [ %95, %92 ], [ %80, %97 ], !dbg !1053
  %102 = add nsw i32 %101, 1, !dbg !1053
  store i32 %102, i32* @out_column, align 4, !dbg !1053, !tbaa !793
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !976, metadata !665) #12, !dbg !1047
  %103 = icmp eq i32 %102, %100, !dbg !1044
  br i1 %103, label %104, label %78, !dbg !1045, !llvm.loop !1054

; <label>:104:                                    ; preds = %99, %78, %72
  %105 = phi i32 [ %73, %72 ], [ %80, %78 ], [ %100, %99 ]
  %106 = phi i32 [ %73, %72 ], [ %79, %78 ], [ %100, %99 ]
  switch i32 %8, label %107 [
    i32 -1, label %157
    i32 10, label %173
  ], !dbg !1057

; <label>:107:                                    ; preds = %104
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !989, metadata !665) #12, !dbg !1059
  %108 = load i1, i1* @tabs, align 1
  br i1 %108, label %109, label %136, !dbg !1061

; <label>:109:                                    ; preds = %107
  %110 = sdiv i32 %106, 8, !dbg !1062
  %111 = shl nsw i32 %110, 3, !dbg !1063
  tail call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !990, metadata !665) #12, !dbg !1064
  %112 = add nsw i32 %105, 1, !dbg !1065
  %113 = icmp slt i32 %112, %111, !dbg !1066
  %114 = icmp slt i32 %105, %111, !dbg !1067
  %115 = and i1 %113, %114, !dbg !1068
  br i1 %115, label %116, label %136, !dbg !1068

; <label>:116:                                    ; preds = %109
  br label %117, !dbg !1069

; <label>:117:                                    ; preds = %116, %130
  %118 = phi i32 [ %134, %130 ], [ %105, %116 ]
  tail call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !1010, metadata !665) #12, !dbg !1071
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1069, !tbaa !672
  %120 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %119, i64 0, i32 5, !dbg !1069
  %121 = load i8*, i8** %120, align 8, !dbg !1069, !tbaa !1014
  %122 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %119, i64 0, i32 6, !dbg !1069
  %123 = load i8*, i8** %122, align 8, !dbg !1069, !tbaa !1018
  %124 = icmp ult i8* %121, %123, !dbg !1069
  br i1 %124, label %128, label %125, !dbg !1069, !prof !1019

; <label>:125:                                    ; preds = %117
  %126 = tail call i32 @__overflow(%struct._IO_FILE* %119, i32 9) #12, !dbg !1069
  %127 = load i32, i32* @out_column, align 4, !dbg !1072, !tbaa !793
  br label %130, !dbg !1069

; <label>:128:                                    ; preds = %117
  %129 = getelementptr inbounds i8, i8* %121, i64 1, !dbg !1069
  store i8* %129, i8** %120, align 8, !dbg !1069, !tbaa !1014
  store i8 9, i8* %121, align 1, !dbg !1069, !tbaa !803
  br label %130, !dbg !1069

; <label>:130:                                    ; preds = %128, %125
  %131 = phi i32 [ %127, %125 ], [ %118, %128 ], !dbg !1072
  %132 = sdiv i32 %131, 8, !dbg !1073
  %133 = shl nsw i32 %132, 3, !dbg !1074
  %134 = add i32 %133, 8, !dbg !1074
  store i32 %134, i32* @out_column, align 4, !dbg !1075, !tbaa !793
  %135 = icmp slt i32 %134, %111, !dbg !1067
  br i1 %135, label %117, label %136, !dbg !1076, !llvm.loop !1026

; <label>:136:                                    ; preds = %130, %109, %107
  %137 = phi i32 [ %105, %109 ], [ %105, %107 ], [ %134, %130 ]
  %138 = icmp slt i32 %137, %106, !dbg !1077
  br i1 %138, label %139, label %173, !dbg !1078

; <label>:139:                                    ; preds = %136
  br label %140, !dbg !1079

; <label>:140:                                    ; preds = %139, %153
  %141 = phi i32 [ %155, %153 ], [ %137, %139 ]
  tail call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !1010, metadata !665) #12, !dbg !1081
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1079, !tbaa !672
  %143 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %142, i64 0, i32 5, !dbg !1079
  %144 = load i8*, i8** %143, align 8, !dbg !1079, !tbaa !1014
  %145 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %142, i64 0, i32 6, !dbg !1079
  %146 = load i8*, i8** %145, align 8, !dbg !1079, !tbaa !1018
  %147 = icmp ult i8* %144, %146, !dbg !1079
  br i1 %147, label %151, label %148, !dbg !1079, !prof !1019

; <label>:148:                                    ; preds = %140
  %149 = tail call i32 @__overflow(%struct._IO_FILE* %142, i32 32) #12, !dbg !1079
  %150 = load i32, i32* @out_column, align 4, !dbg !1082, !tbaa !793
  br label %153, !dbg !1079

; <label>:151:                                    ; preds = %140
  %152 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !1079
  store i8* %152, i8** %143, align 8, !dbg !1079, !tbaa !1014
  store i8 32, i8* %144, align 1, !dbg !1079, !tbaa !803
  br label %153, !dbg !1079

; <label>:153:                                    ; preds = %151, %148
  %154 = phi i32 [ %150, %148 ], [ %141, %151 ], !dbg !1082
  %155 = add nsw i32 %154, 1, !dbg !1082
  store i32 %155, i32* @out_column, align 4, !dbg !1082, !tbaa !793
  %156 = icmp slt i32 %155, %106, !dbg !1077
  br i1 %156, label %140, label %173, !dbg !1078, !llvm.loop !1037

; <label>:157:                                    ; preds = %104
  %158 = load i32, i32* @next_prefix_indent, align 4, !dbg !1083, !tbaa !793
  %159 = load i32, i32* @prefix_length, align 4, !dbg !1085, !tbaa !793
  %160 = add nsw i32 %159, %158, !dbg !1086
  %161 = icmp slt i32 %106, %160, !dbg !1087
  br i1 %161, label %173, label %162, !dbg !1088

; <label>:162:                                    ; preds = %157
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1010, metadata !665) #12, !dbg !1089
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1091, !tbaa !672
  %164 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %163, i64 0, i32 5, !dbg !1091
  %165 = load i8*, i8** %164, align 8, !dbg !1091, !tbaa !1014
  %166 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %163, i64 0, i32 6, !dbg !1091
  %167 = load i8*, i8** %166, align 8, !dbg !1091, !tbaa !1018
  %168 = icmp ult i8* %165, %167, !dbg !1091
  br i1 %168, label %171, label %169, !dbg !1091, !prof !1019

; <label>:169:                                    ; preds = %162
  %170 = tail call i32 @__overflow(%struct._IO_FILE* %163, i32 10) #12, !dbg !1091
  br label %173, !dbg !1091

; <label>:171:                                    ; preds = %162
  %172 = getelementptr inbounds i8, i8* %165, i64 1, !dbg !1091
  store i8* %172, i8** %164, align 8, !dbg !1091, !tbaa !1014
  store i8 10, i8* %165, align 1, !dbg !1091, !tbaa !803
  br label %173, !dbg !1091

; <label>:173:                                    ; preds = %153, %171, %169, %157, %136, %104, %24, %24
  br label %174, !dbg !1092

; <label>:174:                                    ; preds = %199, %173
  %175 = phi i32 [ %8, %173 ], [ %200, %199 ]
  tail call void @llvm.dbg.value(metadata i32 %175, i64 0, metadata !975, metadata !665) #12, !dbg !981
  switch i32 %175, label %176 [
    i32 -1, label %345
    i32 10, label %201
  ], !dbg !1092

; <label>:176:                                    ; preds = %174
  tail call void @llvm.dbg.value(metadata i32 %175, i64 0, metadata !1010, metadata !665) #12, !dbg !1093
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1096, !tbaa !672
  %178 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %177, i64 0, i32 5, !dbg !1096
  %179 = load i8*, i8** %178, align 8, !dbg !1096, !tbaa !1014
  %180 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %177, i64 0, i32 6, !dbg !1096
  %181 = load i8*, i8** %180, align 8, !dbg !1096, !tbaa !1018
  %182 = icmp ult i8* %179, %181, !dbg !1096
  br i1 %182, label %186, label %183, !dbg !1096, !prof !1019

; <label>:183:                                    ; preds = %176
  %184 = and i32 %175, 255, !dbg !1096
  %185 = tail call i32 @__overflow(%struct._IO_FILE* %177, i32 %184) #12, !dbg !1096
  br label %189, !dbg !1096

; <label>:186:                                    ; preds = %176
  %187 = trunc i32 %175 to i8, !dbg !1096
  %188 = getelementptr inbounds i8, i8* %179, i64 1, !dbg !1096
  store i8* %188, i8** %178, align 8, !dbg !1096, !tbaa !1014
  store i8 %187, i8* %179, align 1, !dbg !1096, !tbaa !803
  br label %189, !dbg !1096

; <label>:189:                                    ; preds = %186, %183
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1097, metadata !665) #12, !dbg !1102
  %190 = load i8*, i8** %3, align 8, !dbg !1104, !tbaa !1105
  %191 = load i8*, i8** %4, align 8, !dbg !1104, !tbaa !1106
  %192 = icmp ult i8* %190, %191, !dbg !1104
  br i1 %192, label %195, label %193, !dbg !1104, !prof !1019

; <label>:193:                                    ; preds = %189
  %194 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1104
  br label %199, !dbg !1104

; <label>:195:                                    ; preds = %189
  %196 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1104
  store i8* %196, i8** %3, align 8, !dbg !1104, !tbaa !1105
  %197 = load i8, i8* %190, align 1, !dbg !1104, !tbaa !803
  %198 = zext i8 %197 to i32, !dbg !1104
  br label %199, !dbg !1104

; <label>:199:                                    ; preds = %195, %193
  %200 = phi i32 [ %194, %193 ], [ %198, %195 ]
  br label %174, !dbg !981, !llvm.loop !1107

; <label>:201:                                    ; preds = %174
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1010, metadata !665) #12, !dbg !1110
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1112, !tbaa !672
  %203 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %202, i64 0, i32 5, !dbg !1112
  %204 = load i8*, i8** %203, align 8, !dbg !1112, !tbaa !1014
  %205 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %202, i64 0, i32 6, !dbg !1112
  %206 = load i8*, i8** %205, align 8, !dbg !1112, !tbaa !1018
  %207 = icmp ult i8* %204, %206, !dbg !1112
  br i1 %207, label %210, label %208, !dbg !1112, !prof !1019

; <label>:208:                                    ; preds = %201
  %209 = tail call i32 @__overflow(%struct._IO_FILE* %202, i32 10) #12, !dbg !1112
  br label %212, !dbg !1112

; <label>:210:                                    ; preds = %201
  %211 = getelementptr inbounds i8, i8* %204, i64 1, !dbg !1112
  store i8* %211, i8** %203, align 8, !dbg !1112, !tbaa !1014
  store i8 10, i8* %204, align 1, !dbg !1112, !tbaa !803
  br label %212, !dbg !1112

; <label>:212:                                    ; preds = %210, %208
  %213 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0) #12, !dbg !1113
  tail call void @llvm.dbg.value(metadata i32 %213, i64 0, metadata !953, metadata !665) #12, !dbg !957
  br label %7, !dbg !958, !llvm.loop !1114

; <label>:214:                                    ; preds = %13
  store i32 %10, i32* @prefix_indent, align 4, !dbg !1117, !tbaa !793
  store i32 %14, i32* @first_indent, align 4, !dbg !1118, !tbaa !793
  store i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8** @wptr, align 8, !dbg !1119, !tbaa !672
  store %struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), %struct.Word** @word_limit, align 8, !dbg !1120, !tbaa !672
  %215 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %8) #12, !dbg !1121
  tail call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !953, metadata !665) #12, !dbg !957
  tail call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !1122, metadata !665) #12, !dbg !1127
  %216 = load i32, i32* @next_prefix_indent, align 4, !dbg !1129, !tbaa !793
  %217 = load i32, i32* @prefix_indent, align 4, !dbg !1130, !tbaa !793
  %218 = icmp eq i32 %216, %217, !dbg !1131
  br i1 %218, label %219, label %228, !dbg !1132

; <label>:219:                                    ; preds = %214
  %220 = load i32, i32* @in_column, align 4, !dbg !1133, !tbaa !793
  %221 = load i32, i32* @prefix_full_length, align 4, !dbg !1134, !tbaa !793
  %222 = add nsw i32 %221, %216, !dbg !1135
  %223 = icmp sge i32 %220, %222, !dbg !1136
  %224 = icmp ne i32 %215, 10, !dbg !1137
  %225 = and i1 %224, %223, !dbg !1138
  %226 = icmp ne i32 %215, -1, !dbg !1139
  %227 = and i1 %226, %225, !dbg !1138
  br label %228, !dbg !1138

; <label>:228:                                    ; preds = %219, %214
  %229 = phi i1 [ %227, %219 ], [ false, %214 ]
  tail call void @llvm.dbg.value(metadata i1 %229, i64 0, metadata !1140, metadata !665) #12, !dbg !1145
  %230 = load i1, i1* @split, align 1
  br i1 %230, label %249, label %231, !dbg !1147

; <label>:231:                                    ; preds = %228
  %232 = load i1, i1* @crown, align 1
  br i1 %232, label %251, label %233, !dbg !1148

; <label>:233:                                    ; preds = %231
  %234 = load i1, i1* @tagged, align 1
  br i1 %234, label %235, label %305, !dbg !1150

; <label>:235:                                    ; preds = %233
  br i1 %229, label %238, label %236, !dbg !1152

; <label>:236:                                    ; preds = %235
  %237 = load i32, i32* @first_indent, align 4, !dbg !1156, !tbaa !793
  br label %242, !dbg !1152

; <label>:238:                                    ; preds = %235
  %239 = load i32, i32* @in_column, align 4, !dbg !1158, !tbaa !793
  %240 = load i32, i32* @first_indent, align 4, !dbg !1159, !tbaa !793
  %241 = icmp eq i32 %239, %240, !dbg !1160
  br i1 %241, label %242, label %276, !dbg !1161

; <label>:242:                                    ; preds = %238, %236
  %243 = phi i32 [ %237, %236 ], [ %239, %238 ]
  %244 = load i32, i32* @other_indent, align 4, !dbg !1162, !tbaa !793
  %245 = icmp eq i32 %244, %243, !dbg !1163
  br i1 %245, label %246, label %279, !dbg !1164

; <label>:246:                                    ; preds = %242
  %247 = icmp eq i32 %243, 0, !dbg !1165
  %248 = select i1 %247, i32 3, i32 0, !dbg !1166
  br label %276, !dbg !1167

; <label>:249:                                    ; preds = %228
  %250 = load i32, i32* @first_indent, align 4, !dbg !1168, !tbaa !793
  store i32 %250, i32* @other_indent, align 4, !tbaa !793
  br label %324

; <label>:251:                                    ; preds = %231
  %252 = load i32, i32* @in_column, align 4
  %253 = load i32, i32* @first_indent, align 4
  %254 = select i1 %229, i32 %252, i32 %253
  store i32 %254, i32* @other_indent, align 4, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !1122, metadata !665) #12, !dbg !1169
  br i1 %218, label %255, label %324, !dbg !1175

; <label>:255:                                    ; preds = %251
  %256 = load i32, i32* @prefix_full_length, align 4, !dbg !1176, !tbaa !793
  %257 = add nsw i32 %256, %216, !dbg !1177
  %258 = icmp slt i32 %252, %257, !dbg !1178
  br i1 %258, label %324, label %259, !dbg !1179

; <label>:259:                                    ; preds = %255
  switch i32 %215, label %260 [
    i32 -1, label %324
    i32 10, label %324
  ], !dbg !1179, !llvm.loop !1180

; <label>:260:                                    ; preds = %259
  br label %261, !dbg !1184

; <label>:261:                                    ; preds = %260, %273
  %262 = phi i32 [ %263, %273 ], [ %215, %260 ]
  tail call void @llvm.dbg.value(metadata i32 %262, i64 0, metadata !953, metadata !665) #12, !dbg !957
  %263 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %262) #12, !dbg !1184
  tail call void @llvm.dbg.value(metadata i32 %263, i64 0, metadata !953, metadata !665) #12, !dbg !957
  tail call void @llvm.dbg.value(metadata i32 %263, i64 0, metadata !1122, metadata !665) #12, !dbg !1186
  %264 = load i32, i32* @next_prefix_indent, align 4, !dbg !1188, !tbaa !793
  %265 = load i32, i32* @prefix_indent, align 4, !dbg !1189, !tbaa !793
  %266 = icmp eq i32 %264, %265, !dbg !1190
  br i1 %266, label %267, label %324, !dbg !1191

; <label>:267:                                    ; preds = %261
  %268 = load i32, i32* @in_column, align 4, !dbg !1192, !tbaa !793
  %269 = load i32, i32* @prefix_full_length, align 4, !dbg !1193, !tbaa !793
  %270 = add nsw i32 %269, %264, !dbg !1194
  %271 = icmp slt i32 %268, %270, !dbg !1195
  br i1 %271, label %324, label %272, !dbg !1196

; <label>:272:                                    ; preds = %267
  switch i32 %263, label %273 [
    i32 -1, label %324
    i32 10, label %324
  ], !dbg !1196

; <label>:273:                                    ; preds = %272
  %274 = load i32, i32* @other_indent, align 4, !dbg !1197, !tbaa !793
  %275 = icmp eq i32 %268, %274, !dbg !1198
  br i1 %275, label %261, label %324, !dbg !1199, !llvm.loop !1180

; <label>:276:                                    ; preds = %238, %246
  %277 = phi i32 [ %240, %238 ], [ %243, %246 ]
  %278 = phi i32 [ %239, %238 ], [ %248, %246 ]
  store i32 %278, i32* @other_indent, align 4, !tbaa !793
  br label %279, !dbg !1200

; <label>:279:                                    ; preds = %242, %276
  %280 = phi i32 [ %277, %276 ], [ %243, %242 ]
  tail call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !1122, metadata !665) #12, !dbg !1201
  br i1 %218, label %281, label %324, !dbg !1206

; <label>:281:                                    ; preds = %279
  %282 = load i32, i32* @in_column, align 4, !dbg !1207, !tbaa !793
  %283 = load i32, i32* @prefix_full_length, align 4, !dbg !1208, !tbaa !793
  %284 = add nsw i32 %283, %216, !dbg !1209
  %285 = icmp slt i32 %282, %284, !dbg !1210
  br i1 %285, label %324, label %286, !dbg !1211

; <label>:286:                                    ; preds = %281
  switch i32 %215, label %287 [
    i32 -1, label %324
    i32 10, label %324
  ], !dbg !1211

; <label>:287:                                    ; preds = %286
  %288 = icmp eq i32 %282, %280, !dbg !1212
  br i1 %288, label %324, label %289, !dbg !1213, !llvm.loop !1214

; <label>:289:                                    ; preds = %287
  br label %290, !dbg !1218

; <label>:290:                                    ; preds = %289, %302
  %291 = phi i32 [ %292, %302 ], [ %215, %289 ]
  tail call void @llvm.dbg.value(metadata i32 %291, i64 0, metadata !953, metadata !665) #12, !dbg !957
  %292 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %291) #12, !dbg !1218
  tail call void @llvm.dbg.value(metadata i32 %292, i64 0, metadata !953, metadata !665) #12, !dbg !957
  tail call void @llvm.dbg.value(metadata i32 %292, i64 0, metadata !1122, metadata !665) #12, !dbg !1220
  %293 = load i32, i32* @next_prefix_indent, align 4, !dbg !1222, !tbaa !793
  %294 = load i32, i32* @prefix_indent, align 4, !dbg !1223, !tbaa !793
  %295 = icmp eq i32 %293, %294, !dbg !1224
  br i1 %295, label %296, label %324, !dbg !1225

; <label>:296:                                    ; preds = %290
  %297 = load i32, i32* @in_column, align 4, !dbg !1226, !tbaa !793
  %298 = load i32, i32* @prefix_full_length, align 4, !dbg !1227, !tbaa !793
  %299 = add nsw i32 %298, %293, !dbg !1228
  %300 = icmp slt i32 %297, %299, !dbg !1229
  br i1 %300, label %324, label %301, !dbg !1230

; <label>:301:                                    ; preds = %296
  switch i32 %292, label %302 [
    i32 -1, label %324
    i32 10, label %324
  ], !dbg !1230

; <label>:302:                                    ; preds = %301
  %303 = load i32, i32* @other_indent, align 4, !dbg !1231, !tbaa !793
  %304 = icmp eq i32 %297, %303, !dbg !1232
  br i1 %304, label %290, label %324, !dbg !1233, !llvm.loop !1214

; <label>:305:                                    ; preds = %233
  %306 = load i32, i32* @first_indent, align 4, !dbg !1234, !tbaa !793
  store i32 %306, i32* @other_indent, align 4, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !953, metadata !665) #12, !dbg !957
  tail call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !1122, metadata !665) #12, !dbg !1236
  br i1 %218, label %307, label %324, !dbg !1239

; <label>:307:                                    ; preds = %305
  br label %308, !dbg !1240

; <label>:308:                                    ; preds = %307, %319
  %309 = phi i32 [ %321, %319 ], [ %216, %307 ]
  %310 = phi i32 [ %320, %319 ], [ %215, %307 ]
  tail call void @llvm.dbg.value(metadata i32 %310, i64 0, metadata !953, metadata !665) #12, !dbg !957
  %311 = load i32, i32* @in_column, align 4, !dbg !1240, !tbaa !793
  %312 = load i32, i32* @prefix_full_length, align 4, !dbg !1241, !tbaa !793
  %313 = add nsw i32 %312, %309, !dbg !1242
  %314 = icmp slt i32 %311, %313, !dbg !1243
  br i1 %314, label %324, label %315, !dbg !1244

; <label>:315:                                    ; preds = %308
  switch i32 %310, label %316 [
    i32 -1, label %324
    i32 10, label %324
  ], !dbg !1244

; <label>:316:                                    ; preds = %315
  %317 = load i32, i32* @other_indent, align 4, !dbg !1245, !tbaa !793
  %318 = icmp eq i32 %311, %317, !dbg !1246
  br i1 %318, label %319, label %324, !dbg !1247

; <label>:319:                                    ; preds = %316
  %320 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %310) #12, !dbg !1248
  tail call void @llvm.dbg.value(metadata i32 %320, i64 0, metadata !953, metadata !665) #12, !dbg !957
  tail call void @llvm.dbg.value(metadata i32 %320, i64 0, metadata !953, metadata !665) #12, !dbg !957
  tail call void @llvm.dbg.value(metadata i32 %320, i64 0, metadata !1122, metadata !665) #12, !dbg !1236
  %321 = load i32, i32* @next_prefix_indent, align 4, !dbg !1249, !tbaa !793
  %322 = load i32, i32* @prefix_indent, align 4, !dbg !1250, !tbaa !793
  %323 = icmp eq i32 %321, %322, !dbg !1251
  br i1 %323, label %308, label %324, !dbg !1239, !llvm.loop !1252

; <label>:324:                                    ; preds = %319, %316, %315, %315, %308, %302, %301, %301, %296, %290, %273, %272, %272, %267, %261, %305, %287, %286, %286, %281, %279, %259, %259, %255, %251, %249
  %325 = phi i32 [ %215, %249 ], [ %215, %259 ], [ %215, %287 ], [ %215, %286 ], [ %215, %251 ], [ %215, %279 ], [ %215, %255 ], [ %215, %259 ], [ %215, %281 ], [ %215, %286 ], [ %215, %305 ], [ %263, %261 ], [ %263, %267 ], [ %263, %272 ], [ %263, %272 ], [ %263, %273 ], [ %292, %290 ], [ %292, %296 ], [ %292, %301 ], [ %292, %301 ], [ %292, %302 ], [ %310, %308 ], [ %310, %315 ], [ %310, %315 ], [ %320, %319 ], [ %310, %316 ]
  tail call void @llvm.dbg.value(metadata i32 %325, i64 0, metadata !953, metadata !665) #12, !dbg !957
  %326 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1255, !tbaa !672
  %327 = icmp ugt %struct.Word* %326, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1255
  br i1 %327, label %329, label %328, !dbg !1258

; <label>:328:                                    ; preds = %324
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i32 606, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.get_paragraph, i64 0, i64 0)) #15, !dbg !1255
  unreachable, !dbg !1255

; <label>:329:                                    ; preds = %324
  %330 = getelementptr inbounds %struct.Word, %struct.Word* %326, i64 -1, i32 3, !dbg !1259
  %331 = load i8, i8* %330, align 8, !dbg !1260
  %332 = or i8 %331, 10, !dbg !1261
  store i8 %332, i8* %330, align 8, !dbg !1261
  store i32 %325, i32* @next_char, align 4, !tbaa !793
  tail call fastcc void @fmt_paragraph(), !dbg !1262
  tail call void @llvm.dbg.value(metadata %struct.Word* %326, i64 0, metadata !1264, metadata !665) #12, !dbg !1270
  %333 = load i32, i32* @first_indent, align 4, !dbg !1272, !tbaa !793
  tail call fastcc void @put_line(%struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), i32 %333) #12, !dbg !1273
  tail call void @llvm.dbg.value(metadata %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), i64 0, metadata !1269, metadata !1274) #12, !dbg !1275
  %334 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !tbaa !1276
  tail call void @llvm.dbg.value(metadata %struct.Word* %334, i64 0, metadata !1269, metadata !665) #12, !dbg !1275
  %335 = icmp eq %struct.Word* %334, %326, !dbg !1278
  br i1 %335, label %343, label %336, !dbg !1281

; <label>:336:                                    ; preds = %329
  br label %337, !dbg !1282

; <label>:337:                                    ; preds = %336, %337
  %338 = phi %struct.Word* [ %341, %337 ], [ %334, %336 ]
  %339 = load i32, i32* @other_indent, align 4, !dbg !1282, !tbaa !793
  tail call fastcc void @put_line(%struct.Word* %338, i32 %339) #12, !dbg !1283
  %340 = getelementptr inbounds %struct.Word, %struct.Word* %338, i64 0, i32 6, !dbg !1284
  tail call void @llvm.dbg.value(metadata %struct.Word** %340, i64 0, metadata !1269, metadata !1274) #12, !dbg !1275
  %341 = load %struct.Word*, %struct.Word** %340, align 8, !tbaa !1276
  tail call void @llvm.dbg.value(metadata %struct.Word* %341, i64 0, metadata !1269, metadata !665) #12, !dbg !1275
  %342 = icmp eq %struct.Word* %341, %326, !dbg !1278
  br i1 %342, label %343, label %337, !dbg !1281, !llvm.loop !1285

; <label>:343:                                    ; preds = %337, %329
  %344 = load i32, i32* @next_char, align 4, !dbg !947, !tbaa !793
  br label %5, !dbg !946, !llvm.loop !1288

; <label>:345:                                    ; preds = %174
  store i32 -1, i32* @next_char, align 4, !tbaa !793
  ret void, !dbg !1290
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @get_prefix(%struct._IO_FILE*) unnamed_addr #6 !dbg !1291 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1293, metadata !665), !dbg !1302
  store i32 0, i32* @in_column, align 4, !dbg !1303, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1097, metadata !665) #12, !dbg !1304
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1306
  %3 = load i8*, i8** %2, align 8, !dbg !1306, !tbaa !1105
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1306
  %5 = load i8*, i8** %4, align 8, !dbg !1306, !tbaa !1106
  %6 = icmp ult i8* %3, %5, !dbg !1306
  br i1 %6, label %9, label %7, !dbg !1306, !prof !1019

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1306
  br label %13, !dbg !1306

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1306
  store i8* %10, i8** %2, align 8, !dbg !1306, !tbaa !1105
  %11 = load i8, i8* %3, align 1, !dbg !1306, !tbaa !803
  %12 = zext i8 %11 to i32, !dbg !1306
  br label %13, !dbg !1306

; <label>:13:                                     ; preds = %7, %9
  %14 = phi i32 [ %12, %9 ], [ %8, %7 ]
  br label %15, !dbg !1307

; <label>:15:                                     ; preds = %36, %13
  %16 = phi i32 [ %14, %13 ], [ %37, %36 ]
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !1312, metadata !665) #12, !dbg !1314
  switch i32 %16, label %38 [
    i32 32, label %17
    i32 9, label %20
  ], !dbg !1307

; <label>:17:                                     ; preds = %15
  %18 = load i32, i32* @in_column, align 4, !dbg !1315, !tbaa !793
  %19 = add nsw i32 %18, 1, !dbg !1315
  br label %25, !dbg !1317

; <label>:20:                                     ; preds = %15
  store i1 true, i1* @tabs, align 1
  %21 = load i32, i32* @in_column, align 4, !dbg !1318, !tbaa !793
  %22 = sdiv i32 %21, 8, !dbg !1321
  %23 = shl nsw i32 %22, 3, !dbg !1322
  %24 = add i32 %23, 8, !dbg !1322
  br label %25

; <label>:25:                                     ; preds = %20, %17
  %26 = phi i32 [ %24, %20 ], [ %19, %17 ]
  store i32 %26, i32* @in_column, align 4, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1097, metadata !665) #12, !dbg !1323
  %27 = load i8*, i8** %2, align 8, !dbg !1325, !tbaa !1105
  %28 = load i8*, i8** %4, align 8, !dbg !1325, !tbaa !1106
  %29 = icmp ult i8* %27, %28, !dbg !1325
  br i1 %29, label %32, label %30, !dbg !1325, !prof !1019

; <label>:30:                                     ; preds = %25
  %31 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1325
  br label %36, !dbg !1325

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1325
  store i8* %33, i8** %2, align 8, !dbg !1325, !tbaa !1105
  %34 = load i8, i8* %27, align 1, !dbg !1325, !tbaa !803
  %35 = zext i8 %34 to i32, !dbg !1325
  br label %36, !dbg !1325

; <label>:36:                                     ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ %35, %32 ]
  br label %15, !dbg !1314, !llvm.loop !1326

; <label>:38:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !1294, metadata !665), !dbg !1329
  %39 = load i32, i32* @prefix_length, align 4, !dbg !1330, !tbaa !793
  %40 = icmp eq i32 %39, 0, !dbg !1331
  br i1 %40, label %41, label %46, !dbg !1332

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* @prefix_lead_space, align 4, !dbg !1333
  %43 = load i32, i32* @in_column, align 4, !dbg !1334
  %44 = icmp slt i32 %42, %43, !dbg !1335
  %45 = select i1 %44, i32 %42, i32 %43
  store i32 %45, i32* @next_prefix_indent, align 4, !dbg !1336, !tbaa !793
  br label %100, !dbg !1337

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* @in_column, align 4, !dbg !1338, !tbaa !793
  store i32 %47, i32* @next_prefix_indent, align 4, !dbg !1339, !tbaa !793
  %48 = load i8*, i8** @prefix, align 8, !dbg !1340, !tbaa !672
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !1295, metadata !665), !dbg !1341
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !1295, metadata !665), !dbg !1341
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !1294, metadata !665), !dbg !1329
  %49 = load i8, i8* %48, align 1, !dbg !1342, !tbaa !803
  %50 = icmp eq i8 %49, 0, !dbg !1343
  br i1 %50, label %75, label %51, !dbg !1344

; <label>:51:                                     ; preds = %46
  br label %52, !dbg !1345

; <label>:52:                                     ; preds = %51, %70
  %53 = phi i8 [ %73, %70 ], [ %49, %51 ]
  %54 = phi i8* [ %72, %70 ], [ %48, %51 ]
  %55 = phi i32 [ %71, %70 ], [ %16, %51 ]
  tail call void @llvm.dbg.value(metadata i8 %53, i64 0, metadata !1298, metadata !665), !dbg !1347
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !1294, metadata !665), !dbg !1329
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !1295, metadata !665), !dbg !1341
  %56 = zext i8 %53 to i32, !dbg !1345
  %57 = icmp eq i32 %55, %56, !dbg !1348
  br i1 %57, label %58, label %100, !dbg !1349

; <label>:58:                                     ; preds = %52
  %59 = load i32, i32* @in_column, align 4, !dbg !1350, !tbaa !793
  %60 = add nsw i32 %59, 1, !dbg !1350
  store i32 %60, i32* @in_column, align 4, !dbg !1350, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1097, metadata !665) #12, !dbg !1351
  %61 = load i8*, i8** %2, align 8, !dbg !1353, !tbaa !1105
  %62 = load i8*, i8** %4, align 8, !dbg !1353, !tbaa !1106
  %63 = icmp ult i8* %61, %62, !dbg !1353
  br i1 %63, label %66, label %64, !dbg !1353, !prof !1019

; <label>:64:                                     ; preds = %58
  %65 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1353
  br label %70, !dbg !1353

; <label>:66:                                     ; preds = %58
  %67 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1353
  store i8* %67, i8** %2, align 8, !dbg !1353, !tbaa !1105
  %68 = load i8, i8* %61, align 1, !dbg !1353, !tbaa !803
  %69 = zext i8 %68 to i32, !dbg !1353
  br label %70, !dbg !1353

; <label>:70:                                     ; preds = %64, %66
  %71 = phi i32 [ %69, %66 ], [ %65, %64 ]
  %72 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !1354
  tail call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !1295, metadata !665), !dbg !1341
  tail call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !1295, metadata !665), !dbg !1341
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !1294, metadata !665), !dbg !1329
  %73 = load i8, i8* %72, align 1, !dbg !1342, !tbaa !803
  %74 = icmp eq i8 %73, 0, !dbg !1343
  br i1 %74, label %75, label %52, !dbg !1344, !llvm.loop !1355

; <label>:75:                                     ; preds = %70, %46
  %76 = phi i32 [ %16, %46 ], [ %71, %70 ]
  br label %77, !dbg !1357

; <label>:77:                                     ; preds = %98, %75
  %78 = phi i32 [ %76, %75 ], [ %99, %98 ]
  tail call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !1312, metadata !665) #12, !dbg !1359
  switch i32 %78, label %100 [
    i32 32, label %79
    i32 9, label %82
  ], !dbg !1357

; <label>:79:                                     ; preds = %77
  %80 = load i32, i32* @in_column, align 4, !dbg !1360, !tbaa !793
  %81 = add nsw i32 %80, 1, !dbg !1360
  br label %87, !dbg !1361

; <label>:82:                                     ; preds = %77
  store i1 true, i1* @tabs, align 1
  %83 = load i32, i32* @in_column, align 4, !dbg !1362, !tbaa !793
  %84 = sdiv i32 %83, 8, !dbg !1363
  %85 = shl nsw i32 %84, 3, !dbg !1364
  %86 = add i32 %85, 8, !dbg !1364
  br label %87

; <label>:87:                                     ; preds = %82, %79
  %88 = phi i32 [ %86, %82 ], [ %81, %79 ]
  store i32 %88, i32* @in_column, align 4, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1097, metadata !665) #12, !dbg !1365
  %89 = load i8*, i8** %2, align 8, !dbg !1367, !tbaa !1105
  %90 = load i8*, i8** %4, align 8, !dbg !1367, !tbaa !1106
  %91 = icmp ult i8* %89, %90, !dbg !1367
  br i1 %91, label %94, label %92, !dbg !1367, !prof !1019

; <label>:92:                                     ; preds = %87
  %93 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1367
  br label %98, !dbg !1367

; <label>:94:                                     ; preds = %87
  %95 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1367
  store i8* %95, i8** %2, align 8, !dbg !1367, !tbaa !1105
  %96 = load i8, i8* %89, align 1, !dbg !1367, !tbaa !803
  %97 = zext i8 %96 to i32, !dbg !1367
  br label %98, !dbg !1367

; <label>:98:                                     ; preds = %94, %92
  %99 = phi i32 [ %93, %92 ], [ %97, %94 ]
  br label %77, !dbg !1359, !llvm.loop !1326

; <label>:100:                                    ; preds = %52, %77, %41
  %101 = phi i32 [ %16, %41 ], [ %78, %77 ], [ %55, %52 ]
  ret i32 %101, !dbg !1368
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @get_line(%struct._IO_FILE*, i32) unnamed_addr #6 !dbg !1369 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1371, metadata !665), !dbg !1376
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1372, metadata !665), !dbg !1377
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 1, i64 0), i64 0, metadata !1374, metadata !665), !dbg !1378
  tail call void @llvm.dbg.value(metadata %struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 998), i64 0, metadata !1375, metadata !665), !dbg !1379
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i64*, i64** bitcast (%struct.Word** @word_limit to i64**), align 8, !dbg !1380, !tbaa !672
  br label %6, !dbg !1382, !llvm.loop !1383

; <label>:6:                                      ; preds = %206, %2
  %7 = phi i64* [ %5, %2 ], [ %209, %206 ], !dbg !1380
  %8 = phi i32 [ %1, %2 ], [ %129, %206 ]
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1372, metadata !665), !dbg !1377
  %9 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1385, !tbaa !672
  store i64 %9, i64* %7, align 8, !dbg !1386, !tbaa !1387
  %10 = inttoptr i64 %9 to i8*
  br label %13, !dbg !1388, !llvm.loop !1389

; <label>:11:                                     ; preds = %59
  %12 = load i8*, i8** @wptr, align 8, !dbg !1391, !tbaa !672
  br label %13, !dbg !1391

; <label>:13:                                     ; preds = %11, %6
  %14 = phi i8* [ %12, %11 ], [ %10, %6 ]
  %15 = phi i32 [ %60, %11 ], [ %8, %6 ]
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1372, metadata !665), !dbg !1377
  %16 = icmp eq i8* %14, getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 1, i64 0), !dbg !1394
  br i1 %16, label %17, label %43, !dbg !1395

; <label>:17:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !1140, metadata !665), !dbg !1396
  %18 = load i1, i1* @split, align 1
  br i1 %18, label %19, label %21, !dbg !1399

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* @first_indent, align 4, !dbg !1400, !tbaa !793
  br label %39, !dbg !1401

; <label>:21:                                     ; preds = %17
  %22 = load i1, i1* @crown, align 1
  br i1 %22, label %23, label %25, !dbg !1402

; <label>:23:                                     ; preds = %21
  %24 = load i32, i32* @in_column, align 4
  br label %39, !dbg !1403

; <label>:25:                                     ; preds = %21
  %26 = load i1, i1* @tagged, align 1
  br i1 %26, label %27, label %37, !dbg !1405

; <label>:27:                                     ; preds = %25
  %28 = load i32, i32* @in_column, align 4, !dbg !1406, !tbaa !793
  %29 = load i32, i32* @first_indent, align 4, !dbg !1407, !tbaa !793
  %30 = icmp eq i32 %28, %29, !dbg !1408
  br i1 %30, label %31, label %39, !dbg !1409

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* @other_indent, align 4, !dbg !1410, !tbaa !793
  %33 = icmp eq i32 %32, %28, !dbg !1411
  br i1 %33, label %34, label %41, !dbg !1412

; <label>:34:                                     ; preds = %31
  %35 = icmp eq i32 %28, 0, !dbg !1413
  %36 = select i1 %35, i32 3, i32 0, !dbg !1414
  br label %39, !dbg !1415

; <label>:37:                                     ; preds = %25
  %38 = load i32, i32* @first_indent, align 4, !dbg !1416, !tbaa !793
  br label %39

; <label>:39:                                     ; preds = %37, %34, %27, %23, %19
  %40 = phi i32 [ %24, %23 ], [ %20, %19 ], [ %36, %34 ], [ %38, %37 ], [ %28, %27 ]
  store i32 %40, i32* @other_indent, align 4, !tbaa !793
  br label %41, !dbg !1417

; <label>:41:                                     ; preds = %31, %39
  tail call fastcc void @flush_paragraph(), !dbg !1418
  %42 = load i8*, i8** @wptr, align 8, !dbg !1419, !tbaa !672
  br label %43, !dbg !1420

; <label>:43:                                     ; preds = %41, %13
  %44 = phi i8* [ %42, %41 ], [ %14, %13 ], !dbg !1419
  %45 = trunc i32 %15 to i8, !dbg !1421
  %46 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1419
  store i8* %46, i8** @wptr, align 8, !dbg !1419, !tbaa !672
  store i8 %45, i8* %44, align 1, !dbg !1422, !tbaa !803
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1097, metadata !665) #12, !dbg !1423
  %47 = load i8*, i8** %3, align 8, !dbg !1425, !tbaa !1105
  %48 = load i8*, i8** %4, align 8, !dbg !1425, !tbaa !1106
  %49 = icmp ult i8* %47, %48, !dbg !1425
  br i1 %49, label %50, label %54, !dbg !1425, !prof !1019

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1425
  store i8* %51, i8** %3, align 8, !dbg !1425, !tbaa !1105
  %52 = load i8, i8* %47, align 1, !dbg !1425, !tbaa !803
  %53 = zext i8 %52 to i32, !dbg !1425
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !1372, metadata !665), !dbg !1377
  br label %59, !dbg !1426

; <label>:54:                                     ; preds = %43
  %55 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1425
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !1372, metadata !665), !dbg !1377
  %56 = icmp eq i32 %55, -1, !dbg !1427
  br i1 %56, label %57, label %59, !dbg !1426

; <label>:57:                                     ; preds = %54
  %58 = tail call i16** @__ctype_b_loc() #17, !dbg !1428
  br label %68, !dbg !1426

; <label>:59:                                     ; preds = %50, %54
  %60 = phi i32 [ %53, %50 ], [ %55, %54 ]
  %61 = tail call i16** @__ctype_b_loc() #17, !dbg !1436
  %62 = load i16*, i16** %61, align 8, !dbg !1436, !tbaa !672
  %63 = sext i32 %60 to i64, !dbg !1436
  %64 = getelementptr inbounds i16, i16* %62, i64 %63, !dbg !1436
  %65 = load i16, i16* %64, align 2, !dbg !1436, !tbaa !1437
  %66 = and i16 %65, 8192, !dbg !1436
  %67 = icmp eq i16 %66, 0, !dbg !1438
  br i1 %67, label %11, label %68, !dbg !1439, !llvm.loop !1389

; <label>:68:                                     ; preds = %59, %57
  %69 = phi i16** [ %58, %57 ], [ %61, %59 ], !dbg !1428
  %70 = phi i32 [ -1, %57 ], [ %60, %59 ]
  %71 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1440, !tbaa !672
  %72 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1441, !tbaa !672
  %73 = bitcast %struct.Word* %72 to i64*, !dbg !1442
  %74 = load i64, i64* %73, align 8, !dbg !1442, !tbaa !1387
  %75 = sub i64 %71, %74, !dbg !1443
  %76 = trunc i64 %75 to i32, !dbg !1440
  %77 = getelementptr inbounds %struct.Word, %struct.Word* %72, i64 0, i32 1, !dbg !1444
  store i32 %76, i32* %77, align 8, !dbg !1445, !tbaa !1446
  %78 = load i32, i32* @in_column, align 4, !dbg !1447, !tbaa !793
  %79 = add nsw i32 %78, %76, !dbg !1447
  store i32 %79, i32* @in_column, align 4, !dbg !1447, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct.Word* %72, i64 0, metadata !1431, metadata !665) #12, !dbg !1448
  %80 = inttoptr i64 %74 to i8*, !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !1432, metadata !665) #12, !dbg !1450
  %81 = shl i64 %75, 32, !dbg !1451
  %82 = add i64 %81, -4294967296, !dbg !1451
  %83 = ashr exact i64 %82, 32, !dbg !1451
  %84 = getelementptr inbounds i8, i8* %80, i64 %83, !dbg !1451
  tail call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !1433, metadata !665) #12, !dbg !1452
  %85 = load i8, i8* %84, align 1, !dbg !1453, !tbaa !803
  tail call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1434, metadata !665) #12, !dbg !1454
  %86 = load i8, i8* %80, align 1, !dbg !1455, !tbaa !803
  %87 = sext i8 %86 to i32, !dbg !1455
  %88 = tail call i8* @memchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i32 %87, i64 6) #12, !dbg !1455
  %89 = icmp ne i8* %88, null, !dbg !1455
  %90 = getelementptr inbounds %struct.Word, %struct.Word* %72, i64 0, i32 3, !dbg !1456
  %91 = zext i1 %89 to i8, !dbg !1457
  %92 = load i8, i8* %90, align 8, !dbg !1457
  %93 = and i8 %92, -2, !dbg !1457
  %94 = or i8 %93, %91, !dbg !1457
  store i8 %94, i8* %90, align 8, !dbg !1457
  %95 = load i16*, i16** %69, align 8, !dbg !1428, !tbaa !672
  %96 = zext i8 %85 to i64, !dbg !1428
  %97 = getelementptr inbounds i16, i16* %95, i64 %96, !dbg !1428
  %98 = load i16, i16* %97, align 2, !dbg !1428, !tbaa !1437
  %99 = trunc i16 %98 to i8, !dbg !1458
  %100 = and i8 %99, 4, !dbg !1458
  %101 = and i8 %94, -5, !dbg !1458
  %102 = or i8 %100, %101, !dbg !1458
  store i8 %102, i8* %90, align 8, !dbg !1458
  tail call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !1433, metadata !665) #12, !dbg !1452
  %103 = icmp sgt i32 %76, 1, !dbg !1459
  br i1 %103, label %104, label %114, !dbg !1460

; <label>:104:                                    ; preds = %68
  br label %105, !dbg !1461

; <label>:105:                                    ; preds = %104, %111
  %106 = phi i8* [ %112, %111 ], [ %84, %104 ]
  tail call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !1433, metadata !665) #12, !dbg !1452
  %107 = load i8, i8* %106, align 1, !dbg !1461, !tbaa !803
  %108 = sext i8 %107 to i32, !dbg !1461
  %109 = tail call i8* @memchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 %108, i64 5) #12, !dbg !1461
  %110 = icmp eq i8* %109, null, !dbg !1461
  br i1 %110, label %114, label %111, !dbg !1462

; <label>:111:                                    ; preds = %105
  %112 = getelementptr inbounds i8, i8* %106, i64 -1, !dbg !1463
  tail call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !1433, metadata !665) #12, !dbg !1452
  tail call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !1433, metadata !665) #12, !dbg !1452
  %113 = icmp ugt i8* %112, %80, !dbg !1459
  br i1 %113, label %105, label %114, !dbg !1460, !llvm.loop !1464

; <label>:114:                                    ; preds = %105, %111, %68
  %115 = phi i8* [ %84, %68 ], [ %112, %111 ], [ %106, %105 ]
  %116 = load i8, i8* %115, align 1, !dbg !1467, !tbaa !803
  %117 = sext i8 %116 to i64, !dbg !1467
  %118 = and i64 %117, 4294967295, !dbg !1467
  %119 = icmp ult i64 %118, 64, !dbg !1467
  %120 = shl i64 1, %118, !dbg !1467
  %121 = and i64 %120, -9223301659520663551, !dbg !1467
  %122 = icmp ne i64 %121, 0, !dbg !1467
  %123 = and i1 %119, %122, !dbg !1467
  %124 = zext i1 %123 to i8, !dbg !1468
  %125 = shl nuw nsw i8 %124, 1, !dbg !1468
  %126 = and i8 %102, -3, !dbg !1468
  %127 = or i8 %125, %126, !dbg !1468
  store i8 %127, i8* %90, align 8, !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !1373, metadata !665), !dbg !1469
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1311, metadata !665) #12, !dbg !1470
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !1312, metadata !665) #12, !dbg !1472
  br label %128, !dbg !1473

; <label>:128:                                    ; preds = %149, %114
  %129 = phi i32 [ %70, %114 ], [ %150, %149 ]
  tail call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !1312, metadata !665) #12, !dbg !1472
  switch i32 %129, label %151 [
    i32 32, label %130
    i32 9, label %133
  ], !dbg !1474

; <label>:130:                                    ; preds = %128
  %131 = load i32, i32* @in_column, align 4, !dbg !1475, !tbaa !793
  %132 = add nsw i32 %131, 1, !dbg !1475
  br label %138, !dbg !1476

; <label>:133:                                    ; preds = %128
  store i1 true, i1* @tabs, align 1
  %134 = load i32, i32* @in_column, align 4, !dbg !1477, !tbaa !793
  %135 = sdiv i32 %134, 8, !dbg !1478
  %136 = shl nsw i32 %135, 3, !dbg !1479
  %137 = add i32 %136, 8, !dbg !1479
  br label %138

; <label>:138:                                    ; preds = %133, %130
  %139 = phi i32 [ %137, %133 ], [ %132, %130 ]
  store i32 %139, i32* @in_column, align 4, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1097, metadata !665) #12, !dbg !1480
  %140 = load i8*, i8** %3, align 8, !dbg !1482, !tbaa !1105
  %141 = load i8*, i8** %4, align 8, !dbg !1482, !tbaa !1106
  %142 = icmp ult i8* %140, %141, !dbg !1482
  br i1 %142, label %145, label %143, !dbg !1482, !prof !1019

; <label>:143:                                    ; preds = %138
  %144 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #12, !dbg !1482
  br label %149, !dbg !1482

; <label>:145:                                    ; preds = %138
  %146 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !1482
  store i8* %146, i8** %3, align 8, !dbg !1482, !tbaa !1105
  %147 = load i8, i8* %140, align 1, !dbg !1482, !tbaa !803
  %148 = zext i8 %147 to i32, !dbg !1482
  br label %149, !dbg !1482

; <label>:149:                                    ; preds = %145, %143
  %150 = phi i32 [ %144, %143 ], [ %148, %145 ]
  br label %128, !dbg !1472, !llvm.loop !1326

; <label>:151:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !1372, metadata !665), !dbg !1377
  %152 = load i32, i32* @in_column, align 4, !dbg !1483, !tbaa !793
  %153 = sub nsw i32 %152, %79, !dbg !1484
  %154 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1485, !tbaa !672
  %155 = getelementptr inbounds %struct.Word, %struct.Word* %154, i64 0, i32 2, !dbg !1486
  store i32 %153, i32* %155, align 4, !dbg !1487, !tbaa !1488
  %156 = icmp eq i32 %129, -1, !dbg !1489
  %157 = getelementptr inbounds %struct.Word, %struct.Word* %154, i64 0, i32 3
  %158 = load i8, i8* %157, align 8
  br i1 %156, label %166, label %159, !dbg !1490

; <label>:159:                                    ; preds = %151
  %160 = and i8 %158, 2, !dbg !1491
  %161 = icmp eq i8 %160, 0, !dbg !1492
  br i1 %161, label %168, label %162, !dbg !1493

; <label>:162:                                    ; preds = %159
  %163 = icmp eq i32 %129, 10, !dbg !1494
  br i1 %163, label %166, label %164, !dbg !1495

; <label>:164:                                    ; preds = %162
  %165 = icmp sgt i32 %153, 1, !dbg !1496
  br label %168, !dbg !1495

; <label>:166:                                    ; preds = %151, %162
  %167 = or i8 %158, 8, !dbg !1497
  store i8 %167, i8* %157, align 8, !dbg !1497
  br label %177, !dbg !1498

; <label>:168:                                    ; preds = %159, %164
  %169 = phi i1 [ false, %159 ], [ %165, %164 ]
  %170 = zext i1 %169 to i8, !dbg !1497
  %171 = shl nuw nsw i8 %170, 3, !dbg !1497
  %172 = and i8 %158, -9, !dbg !1497
  %173 = or i8 %172, %171, !dbg !1497
  store i8 %173, i8* %157, align 8, !dbg !1497
  %174 = icmp eq i32 %129, 10, !dbg !1498
  br i1 %174, label %177, label %175, !dbg !1498

; <label>:175:                                    ; preds = %168
  %176 = load i1, i1* @uniform, align 1
  br i1 %176, label %177, label %183, !dbg !1500

; <label>:177:                                    ; preds = %168, %166, %175
  %178 = phi i8 [ %167, %166 ], [ %173, %168 ], [ %173, %175 ]
  %179 = and i8 %178, 8, !dbg !1501
  %180 = zext i8 %179 to i32, !dbg !1502
  %181 = lshr exact i32 %180, 3, !dbg !1502
  %182 = add nuw nsw i32 %181, 1, !dbg !1502
  store i32 %182, i32* %155, align 4, !dbg !1503, !tbaa !1488
  br label %183, !dbg !1504

; <label>:183:                                    ; preds = %177, %175
  %184 = icmp eq %struct.Word* %154, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 998), !dbg !1505
  br i1 %184, label %185, label %206, !dbg !1507

; <label>:185:                                    ; preds = %183
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !1140, metadata !665), !dbg !1508
  %186 = load i1, i1* @split, align 1
  br i1 %186, label %187, label %189, !dbg !1511

; <label>:187:                                    ; preds = %185
  %188 = load i32, i32* @first_indent, align 4, !dbg !1512, !tbaa !793
  br label %202, !dbg !1513

; <label>:189:                                    ; preds = %185
  %190 = load i1, i1* @crown, align 1
  br i1 %190, label %202, label %191, !dbg !1514

; <label>:191:                                    ; preds = %189
  %192 = load i1, i1* @tagged, align 1
  %193 = load i32, i32* @first_indent, align 4, !tbaa !793
  br i1 %192, label %194, label %202, !dbg !1515

; <label>:194:                                    ; preds = %191
  %195 = icmp eq i32 %152, %193, !dbg !1516
  br i1 %195, label %196, label %202, !dbg !1517

; <label>:196:                                    ; preds = %194
  %197 = load i32, i32* @other_indent, align 4, !dbg !1518, !tbaa !793
  %198 = icmp eq i32 %197, %152, !dbg !1519
  br i1 %198, label %199, label %204, !dbg !1520

; <label>:199:                                    ; preds = %196
  %200 = icmp eq i32 %152, 0, !dbg !1521
  %201 = select i1 %200, i32 3, i32 0, !dbg !1522
  br label %202, !dbg !1523

; <label>:202:                                    ; preds = %191, %189, %199, %194, %187
  %203 = phi i32 [ %188, %187 ], [ %201, %199 ], [ %152, %194 ], [ %152, %189 ], [ %193, %191 ]
  store i32 %203, i32* @other_indent, align 4, !tbaa !793
  br label %204, !dbg !1524

; <label>:204:                                    ; preds = %196, %202
  tail call fastcc void @flush_paragraph(), !dbg !1525
  %205 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1526, !tbaa !672
  br label %206, !dbg !1527

; <label>:206:                                    ; preds = %204, %183
  %207 = phi %struct.Word* [ %205, %204 ], [ %154, %183 ], !dbg !1526
  %208 = getelementptr inbounds %struct.Word, %struct.Word* %207, i64 1, !dbg !1526
  store %struct.Word* %208, %struct.Word** @word_limit, align 8, !dbg !1526, !tbaa !672
  %209 = bitcast %struct.Word* %208 to i64*, !dbg !1528
  switch i32 %129, label %6 [
    i32 -1, label %210
    i32 10, label %210
  ], !dbg !1528

; <label>:210:                                    ; preds = %206, %206
  %211 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0), !dbg !1529
  ret i32 %211, !dbg !1530
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fmt_paragraph() unnamed_addr #6 !dbg !1531 {
  %1 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1539, !tbaa !672
  %2 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 0, i32 5, !dbg !1540
  store i64 0, i64* %2, align 8, !dbg !1541, !tbaa !1542
  %3 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 0, i32 1, !dbg !1543
  %4 = load i32, i32* %3, align 8, !dbg !1543, !tbaa !1446
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1538, metadata !665), !dbg !1544
  %5 = load i32, i32* @max_width, align 4, !dbg !1545, !tbaa !793
  store i32 %5, i32* %3, align 8, !dbg !1546, !tbaa !1446
  tail call void @llvm.dbg.value(metadata %struct.Word* %1, i64 0, metadata !1533, metadata !1547), !dbg !1548
  %6 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 -1
  tail call void @llvm.dbg.value(metadata %struct.Word* %6, i64 0, metadata !1533, metadata !665), !dbg !1548
  %7 = icmp ult %struct.Word* %6, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1549
  br i1 %7, label %124, label %8, !dbg !1552

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* @first_indent, align 4
  %10 = load i32, i32* @other_indent, align 4
  %11 = load i32, i32* @last_line_length, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = load i32, i32* @goal_width, align 4
  br label %14, !dbg !1552

; <label>:14:                                     ; preds = %8, %118
  %15 = phi %struct.Word* [ %6, %8 ], [ %122, %118 ]
  %16 = phi %struct.Word* [ %1, %8 ], [ %15, %118 ]
  tail call void @llvm.dbg.value(metadata i64 9223372036854775807, i64 0, metadata !1537, metadata !665), !dbg !1553
  %17 = icmp eq %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1554
  %18 = select i1 %17, i32 %9, i32 %10
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !1535, metadata !665), !dbg !1556
  tail call void @llvm.dbg.value(metadata %struct.Word* %15, i64 0, metadata !1534, metadata !665), !dbg !1557
  %19 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 1, !dbg !1558
  %20 = load i32, i32* %19, align 8, !dbg !1558, !tbaa !1446
  %21 = add nsw i32 %18, %20, !dbg !1559
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !1535, metadata !665), !dbg !1556
  %22 = and i1 %17, %12
  %23 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 6
  %24 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 4
  br label %25, !dbg !1560, !llvm.loop !1561

; <label>:25:                                     ; preds = %66, %14
  %26 = phi %struct.Word* [ %15, %14 ], [ %29, %66 ]
  %27 = phi i32 [ %21, %14 ], [ %72, %66 ]
  %28 = phi i64 [ 9223372036854775807, %14 ], [ %65, %66 ]
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !1537, metadata !665), !dbg !1553
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1535, metadata !665), !dbg !1556
  tail call void @llvm.dbg.value(metadata %struct.Word* %26, i64 0, metadata !1534, metadata !665), !dbg !1557
  %29 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, !dbg !1563
  tail call void @llvm.dbg.value(metadata %struct.Word* %29, i64 0, metadata !1534, metadata !665), !dbg !1557
  tail call void @llvm.dbg.value(metadata %struct.Word* %29, i64 0, metadata !1565, metadata !665), !dbg !1573
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1570, metadata !665), !dbg !1575
  %30 = icmp eq %struct.Word* %1, %29, !dbg !1576
  br i1 %30, label %48, label %31, !dbg !1578

; <label>:31:                                     ; preds = %25
  %32 = sub nsw i32 %13, %27, !dbg !1579
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !1571, metadata !665), !dbg !1580
  %33 = mul nsw i32 %32, 10, !dbg !1581
  %34 = sext i32 %33 to i64, !dbg !1581
  %35 = mul nsw i64 %34, %34, !dbg !1581
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1572, metadata !665), !dbg !1582
  %36 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 6, !dbg !1583
  %37 = load %struct.Word*, %struct.Word** %36, align 8, !dbg !1583, !tbaa !1276
  %38 = icmp eq %struct.Word* %37, %1, !dbg !1585
  br i1 %38, label %48, label %39, !dbg !1586

; <label>:39:                                     ; preds = %31
  %40 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 4, !dbg !1587
  %41 = load i32, i32* %40, align 4, !dbg !1587, !tbaa !1589
  %42 = sub nsw i32 %27, %41, !dbg !1590
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1571, metadata !665), !dbg !1580
  %43 = mul nsw i32 %42, 10, !dbg !1591
  %44 = sext i32 %43 to i64, !dbg !1591
  %45 = mul nsw i64 %44, %44, !dbg !1591
  %46 = lshr exact i64 %45, 1, !dbg !1591
  %47 = add nuw nsw i64 %46, %35, !dbg !1592
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !1572, metadata !665), !dbg !1582
  br label %48, !dbg !1593

; <label>:48:                                     ; preds = %25, %31, %39
  %49 = phi i64 [ 0, %25 ], [ %47, %39 ], [ %35, %31 ]
  %50 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 5, !dbg !1594
  %51 = load i64, i64* %50, align 8, !dbg !1594, !tbaa !1542
  %52 = add nsw i64 %51, %49, !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1536, metadata !665), !dbg !1596
  br i1 %22, label %53, label %60, !dbg !1597

; <label>:53:                                     ; preds = %48
  %54 = sub nsw i32 %27, %11, !dbg !1599
  %55 = mul nsw i32 %54, 10, !dbg !1599
  %56 = sext i32 %55 to i64, !dbg !1599
  %57 = mul nsw i64 %56, %56, !dbg !1599
  %58 = lshr exact i64 %57, 1, !dbg !1599
  %59 = add nsw i64 %58, %52, !dbg !1600
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !1536, metadata !665), !dbg !1596
  br label %60, !dbg !1601

; <label>:60:                                     ; preds = %53, %48
  %61 = phi i64 [ %59, %53 ], [ %52, %48 ]
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1536, metadata !665), !dbg !1596
  %62 = icmp slt i64 %61, %28, !dbg !1602
  br i1 %62, label %63, label %64, !dbg !1604

; <label>:63:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1537, metadata !665), !dbg !1553
  store %struct.Word* %29, %struct.Word** %23, align 8, !dbg !1605, !tbaa !1276
  store i32 %27, i32* %24, align 4, !dbg !1607, !tbaa !1589
  br label %64, !dbg !1608

; <label>:64:                                     ; preds = %63, %60
  %65 = phi i64 [ %61, %63 ], [ %28, %60 ]
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !1537, metadata !665), !dbg !1553
  br i1 %30, label %74, label %66, !dbg !1609

; <label>:66:                                     ; preds = %64
  %67 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 0, i32 2, !dbg !1610
  %68 = load i32, i32* %67, align 4, !dbg !1610, !tbaa !1488
  %69 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 1, !dbg !1611
  %70 = load i32, i32* %69, align 8, !dbg !1611, !tbaa !1446
  %71 = add i32 %68, %27, !dbg !1612
  %72 = add i32 %71, %70, !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1535, metadata !665), !dbg !1556
  %73 = icmp slt i32 %72, %5, !dbg !1614
  br i1 %73, label %25, label %74, !dbg !1615, !llvm.loop !1561

; <label>:74:                                     ; preds = %64, %66
  tail call void @llvm.dbg.value(metadata %struct.Word* %15, i64 0, metadata !1616, metadata !665), !dbg !1622
  tail call void @llvm.dbg.value(metadata i64 4900, i64 0, metadata !1621, metadata !665), !dbg !1624
  %75 = icmp ugt %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1625
  br i1 %75, label %76, label %102, !dbg !1627

; <label>:76:                                     ; preds = %74
  %77 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -2, i32 3, !dbg !1628
  %78 = load i8, i8* %77, align 8, !dbg !1628
  %79 = and i8 %78, 2, !dbg !1628
  %80 = icmp eq i8 %79, 0, !dbg !1631
  br i1 %80, label %85, label %81, !dbg !1632

; <label>:81:                                     ; preds = %76
  %82 = and i8 %78, 8, !dbg !1633
  %83 = icmp eq i8 %82, 0, !dbg !1636
  %84 = select i1 %83, i64 364900, i64 2400
  br label %102

; <label>:85:                                     ; preds = %76
  %86 = and i8 %78, 4, !dbg !1637
  %87 = icmp eq i8 %86, 0, !dbg !1639
  br i1 %87, label %88, label %102, !dbg !1640

; <label>:88:                                     ; preds = %85
  %89 = icmp ugt %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 1), !dbg !1641
  br i1 %89, label %90, label %102, !dbg !1643

; <label>:90:                                     ; preds = %88
  %91 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -3, i32 3, !dbg !1644
  %92 = load i8, i8* %91, align 8, !dbg !1644
  %93 = and i8 %92, 8, !dbg !1644
  %94 = icmp eq i8 %93, 0, !dbg !1645
  br i1 %94, label %102, label %95, !dbg !1646

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -2, i32 1, !dbg !1647
  %97 = load i32, i32* %96, align 8, !dbg !1647, !tbaa !1446
  %98 = add nsw i32 %97, 2, !dbg !1647
  %99 = sext i32 %98 to i64, !dbg !1647
  %100 = sdiv i64 40000, %99, !dbg !1647
  %101 = add nsw i64 %100, 4900, !dbg !1648
  tail call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1621, metadata !665), !dbg !1624
  br label %102, !dbg !1649

; <label>:102:                                    ; preds = %95, %90, %88, %85, %81, %74
  %103 = phi i64 [ %101, %95 ], [ 4900, %90 ], [ 4900, %88 ], [ 4900, %74 ], [ %84, %81 ], [ 3300, %85 ]
  tail call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !1621, metadata !665), !dbg !1624
  %104 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 3, !dbg !1650
  %105 = load i8, i8* %104, align 8, !dbg !1650
  %106 = and i8 %105, 1, !dbg !1650
  %107 = icmp eq i8 %106, 0, !dbg !1652
  br i1 %107, label %110, label %108, !dbg !1653

; <label>:108:                                    ; preds = %102
  %109 = add nsw i64 %103, -1600, !dbg !1654
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1621, metadata !665), !dbg !1624
  br label %118, !dbg !1655

; <label>:110:                                    ; preds = %102
  %111 = and i8 %105, 8, !dbg !1656
  %112 = icmp eq i8 %111, 0, !dbg !1658
  br i1 %112, label %118, label %113, !dbg !1659

; <label>:113:                                    ; preds = %110
  %114 = add nsw i32 %20, 2, !dbg !1660
  %115 = sext i32 %114 to i64, !dbg !1660
  %116 = sdiv i64 22500, %115, !dbg !1660
  %117 = add nsw i64 %116, %103, !dbg !1661
  tail call void @llvm.dbg.value(metadata i64 %117, i64 0, metadata !1621, metadata !665), !dbg !1624
  br label %118, !dbg !1662

; <label>:118:                                    ; preds = %108, %110, %113
  %119 = phi i64 [ %109, %108 ], [ %117, %113 ], [ %103, %110 ]
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !1621, metadata !665), !dbg !1624
  %120 = add nsw i64 %119, %65, !dbg !1663
  %121 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 5, !dbg !1664
  store i64 %120, i64* %121, align 8, !dbg !1665, !tbaa !1542
  tail call void @llvm.dbg.value(metadata %struct.Word* %15, i64 0, metadata !1533, metadata !1547), !dbg !1548
  %122 = getelementptr inbounds %struct.Word, %struct.Word* %15, i64 -1
  tail call void @llvm.dbg.value(metadata %struct.Word* %122, i64 0, metadata !1533, metadata !665), !dbg !1548
  %123 = icmp ult %struct.Word* %122, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1549
  br i1 %123, label %124, label %14, !dbg !1552, !llvm.loop !1666

; <label>:124:                                    ; preds = %118, %0
  store i32 %4, i32* %3, align 8, !dbg !1668, !tbaa !1446
  ret void, !dbg !1669
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @put_line(%struct.Word* readonly, i32) unnamed_addr #6 !dbg !1670 {
  tail call void @llvm.dbg.value(metadata %struct.Word* %0, i64 0, metadata !1674, metadata !665), !dbg !1677
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1675, metadata !665), !dbg !1678
  store i32 0, i32* @out_column, align 4, !dbg !1679, !tbaa !793
  %3 = load i32, i32* @prefix_indent, align 4, !dbg !1680, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !986, metadata !665) #12, !dbg !1681
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !989, metadata !665) #12, !dbg !1683
  %4 = load i1, i1* @tabs, align 1
  br i1 %4, label %5, label %29, !dbg !1684

; <label>:5:                                      ; preds = %2
  %6 = sdiv i32 %3, 8, !dbg !1685
  %7 = shl nsw i32 %6, 3, !dbg !1686
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !990, metadata !665) #12, !dbg !1687
  %8 = icmp sgt i32 %3, 7, !dbg !1688
  br i1 %8, label %9, label %29, !dbg !1689

; <label>:9:                                      ; preds = %5
  br label %10, !dbg !1690

; <label>:10:                                     ; preds = %9, %23
  %11 = phi i32 [ %27, %23 ], [ 0, %9 ]
  tail call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !1010, metadata !665) #12, !dbg !1692
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1690, !tbaa !672
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i64 0, i32 5, !dbg !1690
  %14 = load i8*, i8** %13, align 8, !dbg !1690, !tbaa !1014
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i64 0, i32 6, !dbg !1690
  %16 = load i8*, i8** %15, align 8, !dbg !1690, !tbaa !1018
  %17 = icmp ult i8* %14, %16, !dbg !1690
  br i1 %17, label %21, label %18, !dbg !1690, !prof !1019

; <label>:18:                                     ; preds = %10
  %19 = tail call i32 @__overflow(%struct._IO_FILE* %12, i32 9) #12, !dbg !1690
  %20 = load i32, i32* @out_column, align 4, !dbg !1693, !tbaa !793
  br label %23, !dbg !1690

; <label>:21:                                     ; preds = %10
  %22 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1690
  store i8* %22, i8** %13, align 8, !dbg !1690, !tbaa !1014
  store i8 9, i8* %14, align 1, !dbg !1690, !tbaa !803
  br label %23, !dbg !1690

; <label>:23:                                     ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ %11, %21 ], !dbg !1693
  %25 = sdiv i32 %24, 8, !dbg !1694
  %26 = shl nsw i32 %25, 3, !dbg !1695
  %27 = add i32 %26, 8, !dbg !1695
  store i32 %27, i32* @out_column, align 4, !dbg !1696, !tbaa !793
  %28 = icmp slt i32 %27, %7, !dbg !1697
  br i1 %28, label %10, label %29, !dbg !1698, !llvm.loop !1026

; <label>:29:                                     ; preds = %23, %5, %2
  %30 = phi i32 [ 0, %5 ], [ 0, %2 ], [ %27, %23 ], !dbg !1699
  %31 = icmp slt i32 %30, %3, !dbg !1700
  br i1 %31, label %32, label %50, !dbg !1701

; <label>:32:                                     ; preds = %29
  br label %33, !dbg !1702

; <label>:33:                                     ; preds = %32, %46
  %34 = phi i32 [ %48, %46 ], [ %30, %32 ]
  tail call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !1010, metadata !665) #12, !dbg !1704
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1702, !tbaa !672
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %35, i64 0, i32 5, !dbg !1702
  %37 = load i8*, i8** %36, align 8, !dbg !1702, !tbaa !1014
  %38 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %35, i64 0, i32 6, !dbg !1702
  %39 = load i8*, i8** %38, align 8, !dbg !1702, !tbaa !1018
  %40 = icmp ult i8* %37, %39, !dbg !1702
  br i1 %40, label %44, label %41, !dbg !1702, !prof !1019

; <label>:41:                                     ; preds = %33
  %42 = tail call i32 @__overflow(%struct._IO_FILE* %35, i32 32) #12, !dbg !1702
  %43 = load i32, i32* @out_column, align 4, !dbg !1705, !tbaa !793
  br label %46, !dbg !1702

; <label>:44:                                     ; preds = %33
  %45 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1702
  store i8* %45, i8** %36, align 8, !dbg !1702, !tbaa !1014
  store i8 32, i8* %37, align 1, !dbg !1702, !tbaa !803
  br label %46, !dbg !1702

; <label>:46:                                     ; preds = %41, %44
  %47 = phi i32 [ %43, %41 ], [ %34, %44 ], !dbg !1705
  %48 = add nsw i32 %47, 1, !dbg !1705
  store i32 %48, i32* @out_column, align 4, !dbg !1705, !tbaa !793
  %49 = icmp slt i32 %48, %3, !dbg !1700
  br i1 %49, label %33, label %50, !dbg !1701, !llvm.loop !1037

; <label>:50:                                     ; preds = %46, %29
  %51 = load i8*, i8** @prefix, align 8, !dbg !1706, !tbaa !672
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1706, !tbaa !672
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #12, !dbg !1706
  %54 = load i32, i32* @prefix_length, align 4, !dbg !1707, !tbaa !793
  %55 = load i32, i32* @out_column, align 4, !dbg !1708, !tbaa !793
  %56 = add nsw i32 %55, %54, !dbg !1708
  store i32 %56, i32* @out_column, align 4, !dbg !1708, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !989, metadata !665) #12, !dbg !1709
  %57 = load i1, i1* @tabs, align 1
  br i1 %57, label %58, label %85, !dbg !1711

; <label>:58:                                     ; preds = %50
  %59 = sdiv i32 %1, 8, !dbg !1712
  %60 = shl nsw i32 %59, 3, !dbg !1713
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !990, metadata !665) #12, !dbg !1714
  %61 = add nsw i32 %56, 1, !dbg !1715
  %62 = icmp slt i32 %61, %60, !dbg !1716
  %63 = icmp slt i32 %56, %60, !dbg !1717
  %64 = and i1 %63, %62, !dbg !1718
  br i1 %64, label %65, label %85, !dbg !1718

; <label>:65:                                     ; preds = %58
  br label %66, !dbg !1719

; <label>:66:                                     ; preds = %65, %79
  %67 = phi i32 [ %83, %79 ], [ %56, %65 ]
  tail call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !1010, metadata !665) #12, !dbg !1721
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1719, !tbaa !672
  %69 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 5, !dbg !1719
  %70 = load i8*, i8** %69, align 8, !dbg !1719, !tbaa !1014
  %71 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 6, !dbg !1719
  %72 = load i8*, i8** %71, align 8, !dbg !1719, !tbaa !1018
  %73 = icmp ult i8* %70, %72, !dbg !1719
  br i1 %73, label %77, label %74, !dbg !1719, !prof !1019

; <label>:74:                                     ; preds = %66
  %75 = tail call i32 @__overflow(%struct._IO_FILE* %68, i32 9) #12, !dbg !1719
  %76 = load i32, i32* @out_column, align 4, !dbg !1722, !tbaa !793
  br label %79, !dbg !1719

; <label>:77:                                     ; preds = %66
  %78 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !1719
  store i8* %78, i8** %69, align 8, !dbg !1719, !tbaa !1014
  store i8 9, i8* %70, align 1, !dbg !1719, !tbaa !803
  br label %79, !dbg !1719

; <label>:79:                                     ; preds = %77, %74
  %80 = phi i32 [ %76, %74 ], [ %67, %77 ], !dbg !1722
  %81 = sdiv i32 %80, 8, !dbg !1723
  %82 = shl nsw i32 %81, 3, !dbg !1724
  %83 = add i32 %82, 8, !dbg !1724
  store i32 %83, i32* @out_column, align 4, !dbg !1725, !tbaa !793
  %84 = icmp slt i32 %83, %60, !dbg !1717
  br i1 %84, label %66, label %85, !dbg !1726, !llvm.loop !1026

; <label>:85:                                     ; preds = %79, %58, %50
  %86 = phi i32 [ %56, %58 ], [ %56, %50 ], [ %83, %79 ], !dbg !1727
  %87 = icmp slt i32 %86, %1, !dbg !1728
  br i1 %87, label %88, label %106, !dbg !1729

; <label>:88:                                     ; preds = %85
  br label %89, !dbg !1730

; <label>:89:                                     ; preds = %88, %102
  %90 = phi i32 [ %104, %102 ], [ %86, %88 ]
  tail call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !1010, metadata !665) #12, !dbg !1732
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1730, !tbaa !672
  %92 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %91, i64 0, i32 5, !dbg !1730
  %93 = load i8*, i8** %92, align 8, !dbg !1730, !tbaa !1014
  %94 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %91, i64 0, i32 6, !dbg !1730
  %95 = load i8*, i8** %94, align 8, !dbg !1730, !tbaa !1018
  %96 = icmp ult i8* %93, %95, !dbg !1730
  br i1 %96, label %100, label %97, !dbg !1730, !prof !1019

; <label>:97:                                     ; preds = %89
  %98 = tail call i32 @__overflow(%struct._IO_FILE* %91, i32 32) #12, !dbg !1730
  %99 = load i32, i32* @out_column, align 4, !dbg !1733, !tbaa !793
  br label %102, !dbg !1730

; <label>:100:                                    ; preds = %89
  %101 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !1730
  store i8* %101, i8** %92, align 8, !dbg !1730, !tbaa !1014
  store i8 32, i8* %93, align 1, !dbg !1730, !tbaa !803
  br label %102, !dbg !1730

; <label>:102:                                    ; preds = %97, %100
  %103 = phi i32 [ %99, %97 ], [ %90, %100 ], !dbg !1733
  %104 = add nsw i32 %103, 1, !dbg !1733
  store i32 %104, i32* @out_column, align 4, !dbg !1733, !tbaa !793
  %105 = icmp slt i32 %104, %1, !dbg !1728
  br i1 %105, label %89, label %106, !dbg !1729, !llvm.loop !1037

; <label>:106:                                    ; preds = %102, %85
  %107 = phi i32 [ %86, %85 ], [ %104, %102 ]
  %108 = getelementptr inbounds %struct.Word, %struct.Word* %0, i64 0, i32 6, !dbg !1734
  %109 = load %struct.Word*, %struct.Word** %108, align 8, !dbg !1734, !tbaa !1276
  %110 = getelementptr inbounds %struct.Word, %struct.Word* %109, i64 -1, !dbg !1735
  tail call void @llvm.dbg.value(metadata %struct.Word* %110, i64 0, metadata !1676, metadata !665), !dbg !1736
  br label %111, !dbg !1737

; <label>:111:                                    ; preds = %200, %106
  %112 = phi i32 [ %107, %106 ], [ %201, %200 ]
  %113 = phi %struct.Word* [ %0, %106 ], [ %202, %200 ]
  tail call void @llvm.dbg.value(metadata %struct.Word* %113, i64 0, metadata !1674, metadata !665), !dbg !1677
  %114 = icmp eq %struct.Word* %113, %110, !dbg !1738
  tail call void @llvm.dbg.value(metadata %struct.Word* %113, i64 0, metadata !1741, metadata !665) #12, !dbg !1746
  %115 = getelementptr inbounds %struct.Word, %struct.Word* %113, i64 0, i32 1, !dbg !1749
  %116 = load i32, i32* %115, align 8, !dbg !1749, !tbaa !1446
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !1745, metadata !665) #12, !dbg !1751
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !1745, metadata !665) #12, !dbg !1751
  %117 = icmp eq i32 %116, 0, !dbg !1752
  br i1 %117, label %143, label %118, !dbg !1754

; <label>:118:                                    ; preds = %111
  %119 = getelementptr inbounds %struct.Word, %struct.Word* %113, i64 0, i32 0, !dbg !1755
  %120 = load i8*, i8** %119, align 8, !dbg !1755, !tbaa !1387
  br label %121, !dbg !1754

; <label>:121:                                    ; preds = %137, %118
  %122 = phi i32 [ %116, %118 ], [ %138, %137 ]
  %123 = phi i8* [ %120, %118 ], [ %124, %137 ]
  tail call void @llvm.dbg.value(metadata i8* %123, i64 0, metadata !1744, metadata !665) #12, !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !1745, metadata !665) #12, !dbg !1751
  %124 = getelementptr inbounds i8, i8* %123, i64 1, !dbg !1757
  tail call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !1744, metadata !665) #12, !dbg !1756
  %125 = load i8, i8* %123, align 1, !dbg !1757, !tbaa !803
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1758, !tbaa !672
  %127 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %126, i64 0, i32 5, !dbg !1758
  %128 = load i8*, i8** %127, align 8, !dbg !1758, !tbaa !1014
  %129 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %126, i64 0, i32 6, !dbg !1758
  %130 = load i8*, i8** %129, align 8, !dbg !1758, !tbaa !1018
  %131 = icmp ult i8* %128, %130, !dbg !1758
  br i1 %131, label %135, label %132, !dbg !1758, !prof !1019

; <label>:132:                                    ; preds = %121
  %133 = zext i8 %125 to i32, !dbg !1757
  %134 = tail call i32 @__overflow(%struct._IO_FILE* %126, i32 %133) #12, !dbg !1758
  br label %137, !dbg !1758

; <label>:135:                                    ; preds = %121
  %136 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !1758
  store i8* %136, i8** %127, align 8, !dbg !1758, !tbaa !1014
  store i8 %125, i8* %128, align 1, !dbg !1758, !tbaa !803
  br label %137, !dbg !1758

; <label>:137:                                    ; preds = %135, %132
  %138 = add nsw i32 %122, -1, !dbg !1760
  tail call void @llvm.dbg.value(metadata i32 %138, i64 0, metadata !1745, metadata !665) #12, !dbg !1751
  tail call void @llvm.dbg.value(metadata i32 %138, i64 0, metadata !1745, metadata !665) #12, !dbg !1751
  tail call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !1744, metadata !665) #12, !dbg !1756
  %139 = icmp eq i32 %138, 0, !dbg !1752
  br i1 %139, label %140, label %121, !dbg !1754, !llvm.loop !1761

; <label>:140:                                    ; preds = %137
  %141 = load i32, i32* %115, align 8, !dbg !1764, !tbaa !1446
  %142 = load i32, i32* @out_column, align 4, !dbg !1765, !tbaa !793
  br label %143, !dbg !1764

; <label>:143:                                    ; preds = %111, %140
  %144 = phi i32 [ %142, %140 ], [ %112, %111 ], !dbg !1765
  %145 = phi i32 [ %141, %140 ], [ 0, %111 ], !dbg !1764
  %146 = add nsw i32 %144, %145, !dbg !1765
  store i32 %146, i32* @out_column, align 4, !dbg !1765, !tbaa !793
  br i1 %114, label %203, label %147, !dbg !1766

; <label>:147:                                    ; preds = %143
  %148 = getelementptr inbounds %struct.Word, %struct.Word* %113, i64 0, i32 2, !dbg !1767
  %149 = load i32, i32* %148, align 4, !dbg !1767, !tbaa !1488
  tail call void @llvm.dbg.value(metadata i32 %149, i64 0, metadata !986, metadata !665) #12, !dbg !1768
  %150 = add nsw i32 %149, %146, !dbg !1770
  tail call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !989, metadata !665) #12, !dbg !1771
  %151 = load i1, i1* @tabs, align 1
  br i1 %151, label %152, label %179, !dbg !1772

; <label>:152:                                    ; preds = %147
  %153 = sdiv i32 %150, 8, !dbg !1773
  %154 = shl nsw i32 %153, 3, !dbg !1774
  tail call void @llvm.dbg.value(metadata i32 %154, i64 0, metadata !990, metadata !665) #12, !dbg !1775
  %155 = add nsw i32 %146, 1, !dbg !1776
  %156 = icmp slt i32 %155, %154, !dbg !1777
  %157 = icmp slt i32 %146, %154, !dbg !1778
  %158 = and i1 %156, %157, !dbg !1779
  br i1 %158, label %159, label %179, !dbg !1779

; <label>:159:                                    ; preds = %152
  br label %160, !dbg !1780

; <label>:160:                                    ; preds = %159, %173
  %161 = phi i32 [ %177, %173 ], [ %146, %159 ]
  tail call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !1010, metadata !665) #12, !dbg !1782
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1780, !tbaa !672
  %163 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %162, i64 0, i32 5, !dbg !1780
  %164 = load i8*, i8** %163, align 8, !dbg !1780, !tbaa !1014
  %165 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %162, i64 0, i32 6, !dbg !1780
  %166 = load i8*, i8** %165, align 8, !dbg !1780, !tbaa !1018
  %167 = icmp ult i8* %164, %166, !dbg !1780
  br i1 %167, label %171, label %168, !dbg !1780, !prof !1019

; <label>:168:                                    ; preds = %160
  %169 = tail call i32 @__overflow(%struct._IO_FILE* %162, i32 9) #12, !dbg !1780
  %170 = load i32, i32* @out_column, align 4, !dbg !1783, !tbaa !793
  br label %173, !dbg !1780

; <label>:171:                                    ; preds = %160
  %172 = getelementptr inbounds i8, i8* %164, i64 1, !dbg !1780
  store i8* %172, i8** %163, align 8, !dbg !1780, !tbaa !1014
  store i8 9, i8* %164, align 1, !dbg !1780, !tbaa !803
  br label %173, !dbg !1780

; <label>:173:                                    ; preds = %171, %168
  %174 = phi i32 [ %170, %168 ], [ %161, %171 ], !dbg !1783
  %175 = sdiv i32 %174, 8, !dbg !1784
  %176 = shl nsw i32 %175, 3, !dbg !1785
  %177 = add i32 %176, 8, !dbg !1785
  store i32 %177, i32* @out_column, align 4, !dbg !1786, !tbaa !793
  %178 = icmp slt i32 %177, %154, !dbg !1778
  br i1 %178, label %160, label %179, !dbg !1787, !llvm.loop !1026

; <label>:179:                                    ; preds = %173, %152, %147
  %180 = phi i32 [ %146, %152 ], [ %146, %147 ], [ %177, %173 ]
  %181 = icmp slt i32 %180, %150, !dbg !1788
  br i1 %181, label %182, label %200, !dbg !1789

; <label>:182:                                    ; preds = %179
  br label %183, !dbg !1790

; <label>:183:                                    ; preds = %182, %196
  %184 = phi i32 [ %198, %196 ], [ %180, %182 ]
  tail call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !1010, metadata !665) #12, !dbg !1792
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1790, !tbaa !672
  %186 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %185, i64 0, i32 5, !dbg !1790
  %187 = load i8*, i8** %186, align 8, !dbg !1790, !tbaa !1014
  %188 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %185, i64 0, i32 6, !dbg !1790
  %189 = load i8*, i8** %188, align 8, !dbg !1790, !tbaa !1018
  %190 = icmp ult i8* %187, %189, !dbg !1790
  br i1 %190, label %194, label %191, !dbg !1790, !prof !1019

; <label>:191:                                    ; preds = %183
  %192 = tail call i32 @__overflow(%struct._IO_FILE* %185, i32 32) #12, !dbg !1790
  %193 = load i32, i32* @out_column, align 4, !dbg !1793, !tbaa !793
  br label %196, !dbg !1790

; <label>:194:                                    ; preds = %183
  %195 = getelementptr inbounds i8, i8* %187, i64 1, !dbg !1790
  store i8* %195, i8** %186, align 8, !dbg !1790, !tbaa !1014
  store i8 32, i8* %187, align 1, !dbg !1790, !tbaa !803
  br label %196, !dbg !1790

; <label>:196:                                    ; preds = %191, %194
  %197 = phi i32 [ %193, %191 ], [ %184, %194 ], !dbg !1793
  %198 = add nsw i32 %197, 1, !dbg !1793
  store i32 %198, i32* @out_column, align 4, !dbg !1793, !tbaa !793
  %199 = icmp slt i32 %198, %150, !dbg !1788
  br i1 %199, label %183, label %200, !dbg !1789, !llvm.loop !1037

; <label>:200:                                    ; preds = %196, %179
  %201 = phi i32 [ %180, %179 ], [ %198, %196 ]
  %202 = getelementptr inbounds %struct.Word, %struct.Word* %113, i64 1, !dbg !1794
  tail call void @llvm.dbg.value(metadata %struct.Word* %202, i64 0, metadata !1674, metadata !665), !dbg !1677
  br label %111, !dbg !1795, !llvm.loop !1796

; <label>:203:                                    ; preds = %143
  store i32 %146, i32* @last_line_length, align 4, !dbg !1798, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1010, metadata !665) #12, !dbg !1799
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1801, !tbaa !672
  %205 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %204, i64 0, i32 5, !dbg !1801
  %206 = load i8*, i8** %205, align 8, !dbg !1801, !tbaa !1014
  %207 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %204, i64 0, i32 6, !dbg !1801
  %208 = load i8*, i8** %207, align 8, !dbg !1801, !tbaa !1018
  %209 = icmp ult i8* %206, %208, !dbg !1801
  br i1 %209, label %212, label %210, !dbg !1801, !prof !1019

; <label>:210:                                    ; preds = %203
  %211 = tail call i32 @__overflow(%struct._IO_FILE* %204, i32 10) #12, !dbg !1801
  br label %214, !dbg !1801

; <label>:212:                                    ; preds = %203
  %213 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !1801
  store i8* %213, i8** %205, align 8, !dbg !1801, !tbaa !1014
  store i8 10, i8* %206, align 1, !dbg !1801, !tbaa !803
  br label %214, !dbg !1801

; <label>:214:                                    ; preds = %210, %212
  ret void, !dbg !1802
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flush_paragraph() unnamed_addr #6 !dbg !1803 {
  %1 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1809, !tbaa !672
  %2 = icmp eq %struct.Word* %1, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1811
  br i1 %2, label %3, label %8, !dbg !1812

; <label>:3:                                      ; preds = %0
  %4 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1813, !tbaa !672
  %5 = sub i64 %4, ptrtoint ([5000 x i8]* @parabuf to i64), !dbg !1813
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1813, !tbaa !672
  %7 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i64 1, i64 %5, %struct._IO_FILE* %6) #12, !dbg !1813
  store i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8** @wptr, align 8, !dbg !1815, !tbaa !672
  br label %78, !dbg !1816

; <label>:8:                                      ; preds = %0
  tail call fastcc void @fmt_paragraph(), !dbg !1817
  tail call void @llvm.dbg.value(metadata %struct.Word* %1, i64 0, metadata !1805, metadata !665), !dbg !1818
  tail call void @llvm.dbg.value(metadata i64 9223372036854775807, i64 0, metadata !1808, metadata !665), !dbg !1819
  tail call void @llvm.dbg.value(metadata %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), i64 0, metadata !1806, metadata !1274), !dbg !1820
  %9 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !tbaa !1276
  tail call void @llvm.dbg.value(metadata i64 9223372036854775807, i64 0, metadata !1808, metadata !665), !dbg !1819
  tail call void @llvm.dbg.value(metadata %struct.Word* %1, i64 0, metadata !1805, metadata !665), !dbg !1818
  tail call void @llvm.dbg.value(metadata %struct.Word* %9, i64 0, metadata !1806, metadata !665), !dbg !1820
  %10 = icmp eq %struct.Word* %9, %1, !dbg !1821
  br i1 %10, label %31, label %11, !dbg !1824

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds %struct.Word, %struct.Word* %9, i64 0, i32 5
  %13 = load i64, i64* %12, align 8, !dbg !1825, !tbaa !1542
  br label %14, !dbg !1824

; <label>:14:                                     ; preds = %11, %14
  %15 = phi i64 [ %13, %11 ], [ %22, %14 ], !dbg !1825
  %16 = phi %struct.Word* [ %9, %11 ], [ %20, %14 ]
  %17 = phi i64 [ 9223372036854775807, %11 ], [ %29, %14 ]
  %18 = phi %struct.Word* [ %1, %11 ], [ %25, %14 ]
  tail call void @llvm.dbg.value(metadata %struct.Word* %18, i64 0, metadata !1805, metadata !665), !dbg !1818
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1808, metadata !665), !dbg !1819
  %19 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 0, i32 6, !dbg !1828
  %20 = load %struct.Word*, %struct.Word** %19, align 8, !dbg !1828, !tbaa !1276
  %21 = getelementptr inbounds %struct.Word, %struct.Word* %20, i64 0, i32 5, !dbg !1829
  %22 = load i64, i64* %21, align 8, !dbg !1829, !tbaa !1542
  %23 = sub nsw i64 %15, %22, !dbg !1830
  %24 = icmp slt i64 %23, %17, !dbg !1831
  tail call void @llvm.dbg.value(metadata %struct.Word* %16, i64 0, metadata !1805, metadata !665), !dbg !1818
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1808, metadata !665), !dbg !1819
  %25 = select i1 %24, %struct.Word* %16, %struct.Word* %18, !dbg !1832
  %26 = select i1 %24, i64 %23, i64 %17, !dbg !1832
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !1808, metadata !665), !dbg !1819
  tail call void @llvm.dbg.value(metadata %struct.Word* %25, i64 0, metadata !1805, metadata !665), !dbg !1818
  %27 = icmp slt i64 %26, 9223372036854775799, !dbg !1833
  %28 = add nsw i64 %26, 9, !dbg !1835
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !1808, metadata !665), !dbg !1819
  %29 = select i1 %27, i64 %28, i64 %26, !dbg !1836
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !1808, metadata !665), !dbg !1819
  tail call void @llvm.dbg.value(metadata %struct.Word** %19, i64 0, metadata !1806, metadata !1274), !dbg !1820
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !1808, metadata !665), !dbg !1819
  tail call void @llvm.dbg.value(metadata %struct.Word* %25, i64 0, metadata !1805, metadata !665), !dbg !1818
  tail call void @llvm.dbg.value(metadata %struct.Word* %20, i64 0, metadata !1806, metadata !665), !dbg !1820
  %30 = icmp eq %struct.Word* %20, %1, !dbg !1821
  br i1 %30, label %31, label %14, !dbg !1824, !llvm.loop !1837

; <label>:31:                                     ; preds = %14, %8
  %32 = phi %struct.Word* [ %1, %8 ], [ %25, %14 ]
  tail call void @llvm.dbg.value(metadata %struct.Word* undef, i64 0, metadata !1264, metadata !665) #12, !dbg !1839
  %33 = load i32, i32* @first_indent, align 4, !dbg !1841, !tbaa !793
  tail call fastcc void @put_line(%struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), i32 %33) #12, !dbg !1842
  tail call void @llvm.dbg.value(metadata %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), i64 0, metadata !1269, metadata !1274) #12, !dbg !1843
  %34 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !tbaa !1276
  tail call void @llvm.dbg.value(metadata %struct.Word* %34, i64 0, metadata !1269, metadata !665) #12, !dbg !1843
  %35 = icmp eq %struct.Word* %34, %32, !dbg !1844
  br i1 %35, label %43, label %36, !dbg !1845

; <label>:36:                                     ; preds = %31
  br label %37, !dbg !1846

; <label>:37:                                     ; preds = %36, %37
  %38 = phi %struct.Word* [ %41, %37 ], [ %34, %36 ]
  %39 = load i32, i32* @other_indent, align 4, !dbg !1846, !tbaa !793
  tail call fastcc void @put_line(%struct.Word* %38, i32 %39) #12, !dbg !1847
  %40 = getelementptr inbounds %struct.Word, %struct.Word* %38, i64 0, i32 6, !dbg !1848
  tail call void @llvm.dbg.value(metadata %struct.Word** %40, i64 0, metadata !1269, metadata !1274) #12, !dbg !1843
  %41 = load %struct.Word*, %struct.Word** %40, align 8, !tbaa !1276
  tail call void @llvm.dbg.value(metadata %struct.Word* %41, i64 0, metadata !1269, metadata !665) #12, !dbg !1843
  %42 = icmp eq %struct.Word* %41, %32, !dbg !1844
  br i1 %42, label %43, label %37, !dbg !1845, !llvm.loop !1285

; <label>:43:                                     ; preds = %37, %31
  %44 = getelementptr inbounds %struct.Word, %struct.Word* %32, i64 0, i32 0, !dbg !1849
  %45 = load i8*, i8** %44, align 8, !dbg !1849, !tbaa !1387
  %46 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1850, !tbaa !672
  %47 = ptrtoint i8* %45 to i64, !dbg !1851
  %48 = sub i64 %46, %47, !dbg !1851
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8* %45, i64 %48, i32 1, i1 false), !dbg !1852
  %49 = bitcast %struct.Word* %32 to i64*, !dbg !1853
  %50 = load i64, i64* %49, align 8, !dbg !1853, !tbaa !1387
  %51 = sub i64 %50, ptrtoint ([5000 x i8]* @parabuf to i64), !dbg !1854
  %52 = inttoptr i64 %46 to i8*, !dbg !1855
  %53 = shl i64 %51, 32, !dbg !1855
  %54 = ashr exact i64 %53, 32, !dbg !1855
  %55 = sub nsw i64 0, %54, !dbg !1855
  %56 = getelementptr inbounds i8, i8* %52, i64 %55, !dbg !1855
  store i8* %56, i8** @wptr, align 8, !dbg !1855, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct.Word* undef, i64 0, metadata !1806, metadata !665), !dbg !1820
  tail call void @llvm.dbg.value(metadata %struct.Word* %32, i64 0, metadata !1806, metadata !665), !dbg !1820
  %57 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1856, !tbaa !672
  %58 = icmp ugt %struct.Word* %32, %57, !dbg !1859
  br i1 %58, label %68, label %59, !dbg !1860

; <label>:59:                                     ; preds = %43
  br label %60, !dbg !1861

; <label>:60:                                     ; preds = %59, %60
  %61 = phi %struct.Word* [ %65, %60 ], [ %32, %59 ]
  tail call void @llvm.dbg.value(metadata %struct.Word* %61, i64 0, metadata !1806, metadata !665), !dbg !1820
  %62 = getelementptr inbounds %struct.Word, %struct.Word* %61, i64 0, i32 0, !dbg !1861
  %63 = load i8*, i8** %62, align 8, !dbg !1862, !tbaa !1387
  %64 = getelementptr inbounds i8, i8* %63, i64 %55, !dbg !1862
  store i8* %64, i8** %62, align 8, !dbg !1862, !tbaa !1387
  %65 = getelementptr inbounds %struct.Word, %struct.Word* %61, i64 1, !dbg !1863
  tail call void @llvm.dbg.value(metadata %struct.Word* %65, i64 0, metadata !1806, metadata !665), !dbg !1820
  tail call void @llvm.dbg.value(metadata %struct.Word* %65, i64 0, metadata !1806, metadata !665), !dbg !1820
  %66 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1856, !tbaa !672
  %67 = icmp ugt %struct.Word* %65, %66, !dbg !1859
  br i1 %67, label %68, label %60, !dbg !1860, !llvm.loop !1864

; <label>:68:                                     ; preds = %60, %43
  %69 = phi %struct.Word* [ %57, %43 ], [ %66, %60 ]
  %70 = bitcast %struct.Word* %32 to i8*, !dbg !1866
  %71 = ptrtoint %struct.Word* %69 to i64, !dbg !1867
  %72 = ptrtoint %struct.Word* %32 to i64, !dbg !1867
  %73 = sub i64 40, %72, !dbg !1867
  %74 = add i64 %73, %71, !dbg !1868
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* bitcast ([1000 x %struct.Word]* @unused_word_type to i8*), i8* %70, i64 %74, i32 8, i1 false), !dbg !1866
  %75 = sub i64 %72, ptrtoint ([1000 x %struct.Word]* @unused_word_type to i64), !dbg !1869
  %76 = sdiv i64 %75, -40, !dbg !1870
  %77 = getelementptr inbounds %struct.Word, %struct.Word* %69, i64 %76, !dbg !1870
  store %struct.Word* %77, %struct.Word** @word_limit, align 8, !dbg !1870, !tbaa !672
  br label %78, !dbg !1871

; <label>:78:                                     ; preds = %68, %3
  ret void, !dbg !1871
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #9

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1872 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1874, metadata !665), !dbg !1875
  store i8* %0, i8** @file_name, align 8, !dbg !1876, !tbaa !672
  ret void, !dbg !1877
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1878 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1880, metadata !665), !dbg !1881
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1882, !tbaa !1883
  ret void, !dbg !1885
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1886 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1891, !tbaa !672
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1892
  %3 = icmp eq i32 %2, 0, !dbg !1893
  br i1 %3, label %21, label %4, !dbg !1894

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1895, !tbaa !1883, !range !1896
  %6 = icmp eq i8 %5, 0, !dbg !1895
  %7 = tail call i32* @__errno_location() #17, !dbg !1897
  br i1 %6, label %11, label %8, !dbg !1899

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1900, !tbaa !793
  %10 = icmp eq i32 %9, 32, !dbg !1901
  br i1 %10, label %21, label %11, !dbg !1902

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !1903
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1888, metadata !665), !dbg !1904
  %13 = load i8*, i8** @file_name, align 8, !dbg !1905, !tbaa !672
  %14 = icmp eq i8* %13, null, !dbg !1905
  %15 = load i32, i32* %7, align 4, !tbaa !793
  br i1 %14, label %18, label %16, !dbg !1906

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1907
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.26, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1908
  br label %19, !dbg !1908

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.27, i64 0, i64 0), i8* %12) #12, !dbg !1909
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1910, !tbaa !793
  tail call void @_exit(i32 %20) #15, !dbg !1911
  unreachable, !dbg !1911

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1912, !tbaa !672
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1914
  %24 = icmp eq i32 %23, 0, !dbg !1915
  br i1 %24, label %27, label %25, !dbg !1916

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1917, !tbaa !793
  tail call void @_exit(i32 %26) #15, !dbg !1918
  unreachable, !dbg !1918

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1919
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1920 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1928, metadata !665), !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1929, metadata !665), !dbg !1935
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1930, metadata !665), !dbg !1936
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1931, metadata !665), !dbg !1937
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #12, !dbg !1938
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1932, metadata !665), !dbg !1938
  ret void, !dbg !1939
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1940 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1984, metadata !665), !dbg !1986
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1985, metadata !665), !dbg !1987
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1988
  br i1 %3, label %7, label %4, !dbg !1990

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !1991
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1928, metadata !665) #12, !dbg !1992
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1929, metadata !665) #12, !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1930, metadata !665) #12, !dbg !1995
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1931, metadata !665) #12, !dbg !1996
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #12, !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1932, metadata !665) #12, !dbg !1997
  br label %7, !dbg !1998

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1999
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2000 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2002, metadata !665), !dbg !2005
  %2 = icmp eq i8* %0, null, !dbg !2006
  br i1 %2, label %3, label %6, !dbg !2008

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2009, !tbaa !672
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2011
  tail call void @abort() #15, !dbg !2012
  unreachable, !dbg !2012

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #9, !dbg !2013
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2003, metadata !665), !dbg !2014
  %8 = icmp eq i8* %7, null, !dbg !2015
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2016
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2017
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2004, metadata !665), !dbg !2018
  %11 = ptrtoint i8* %10 to i64, !dbg !2019
  %12 = ptrtoint i8* %0 to i64, !dbg !2019
  %13 = sub i64 %11, %12, !dbg !2019
  %14 = icmp sgt i64 %13, 6, !dbg !2021
  br i1 %14, label %15, label %24, !dbg !2022

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2023
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #9, !dbg !2024
  %18 = icmp eq i32 %17, 0, !dbg !2025
  br i1 %18, label %19, label %24, !dbg !2026

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2002, metadata !665), !dbg !2005
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #9, !dbg !2027
  %21 = icmp eq i32 %20, 0, !dbg !2030
  br i1 %21, label %22, label %24, !dbg !2031

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2032
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2002, metadata !665), !dbg !2005
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2034, !tbaa !672
  br label %24, !dbg !2035

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2002, metadata !665), !dbg !2005
  store i8* %25, i8** @program_name, align 8, !dbg !2036, !tbaa !672
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2037, !tbaa !672
  ret void, !dbg !2038
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2039 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2044, metadata !665), !dbg !2047
  %2 = tail call i32* @__errno_location() #17, !dbg !2048
  %3 = load i32, i32* %2, align 4, !dbg !2048, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2045, metadata !665), !dbg !2049
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2050
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2050
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !2050
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !2051
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2051
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2046, metadata !665), !dbg !2052
  store i32 %3, i32* %2, align 4, !dbg !2053, !tbaa !793
  ret %struct.quoting_options* %8, !dbg !2054
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #13 !dbg !2055 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2061, metadata !665), !dbg !2062
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2063
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2063
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2064
  %5 = load i32, i32* %4, align 8, !dbg !2064, !tbaa !2065
  ret i32 %5, !dbg !2067
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2068 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2072, metadata !665), !dbg !2074
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2073, metadata !665), !dbg !2075
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2076
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2076
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2077
  store i32 %1, i32* %5, align 8, !dbg !2078, !tbaa !2065
  ret void, !dbg !2079
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2080 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2084, metadata !665), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2085, metadata !665), !dbg !2093
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2086, metadata !665), !dbg !2094
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2087, metadata !665), !dbg !2095
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2096
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2096
  %6 = lshr i8 %1, 5, !dbg !2097
  %7 = zext i8 %6 to i64, !dbg !2097
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2098
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2088, metadata !665), !dbg !2099
  %9 = and i8 %1, 31, !dbg !2100
  %10 = zext i8 %9 to i32, !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2090, metadata !665), !dbg !2102
  %11 = load i32, i32* %8, align 4, !dbg !2103, !tbaa !793
  %12 = lshr i32 %11, %10, !dbg !2104
  %13 = and i32 %12, 1, !dbg !2105
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2091, metadata !665), !dbg !2106
  %14 = and i32 %2, 1, !dbg !2107
  %15 = xor i32 %13, %14, !dbg !2108
  %16 = shl i32 %15, %10, !dbg !2109
  %17 = xor i32 %16, %11, !dbg !2110
  store i32 %17, i32* %8, align 4, !dbg !2110, !tbaa !793
  ret i32 %13, !dbg !2111
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2112 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2116, metadata !665), !dbg !2119
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2117, metadata !665), !dbg !2120
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2121
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2116, metadata !665), !dbg !2119
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2116, metadata !665), !dbg !2119
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2124
  %6 = load i32, i32* %5, align 4, !dbg !2124, !tbaa !2125
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2118, metadata !665), !dbg !2126
  store i32 %1, i32* %5, align 4, !dbg !2127, !tbaa !2125
  ret i32 %6, !dbg !2128
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2129 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2133, metadata !665), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2134, metadata !665), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2135, metadata !665), !dbg !2138
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2139
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2133, metadata !665), !dbg !2136
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2141
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2133, metadata !665), !dbg !2136
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2142
  store i32 10, i32* %6, align 8, !dbg !2143, !tbaa !2065
  %7 = icmp ne i8* %1, null, !dbg !2144
  %8 = icmp ne i8* %2, null, !dbg !2146
  %9 = and i1 %7, %8, !dbg !2147
  br i1 %9, label %11, label %10, !dbg !2147

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2148
  unreachable, !dbg !2148

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2149
  store i8* %1, i8** %12, align 8, !dbg !2150, !tbaa !2151
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2152
  store i8* %2, i8** %13, align 8, !dbg !2153, !tbaa !2154
  ret void, !dbg !2155
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2156 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2160, metadata !665), !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2161, metadata !665), !dbg !2169
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2162, metadata !665), !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2163, metadata !665), !dbg !2171
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2164, metadata !665), !dbg !2172
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2173
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2173
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2165, metadata !665), !dbg !2174
  %8 = tail call i32* @__errno_location() #17, !dbg !2175
  %9 = load i32, i32* %8, align 4, !dbg !2175, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2166, metadata !665), !dbg !2176
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2177
  %11 = load i32, i32* %10, align 8, !dbg !2177, !tbaa !2065
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2178
  %13 = load i32, i32* %12, align 4, !dbg !2178, !tbaa !2125
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2179
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2180
  %16 = load i8*, i8** %15, align 8, !dbg !2180, !tbaa !2151
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2181
  %18 = load i8*, i8** %17, align 8, !dbg !2181, !tbaa !2154
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2167, metadata !665), !dbg !2183
  store i32 %9, i32* %8, align 4, !dbg !2184, !tbaa !793
  ret i64 %19, !dbg !2185
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2186 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2192, metadata !665), !dbg !2256
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2193, metadata !665), !dbg !2257
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2194, metadata !665), !dbg !2258
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2195, metadata !665), !dbg !2259
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2196, metadata !665), !dbg !2260
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2197, metadata !665), !dbg !2261
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2198, metadata !665), !dbg !2262
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2199, metadata !665), !dbg !2263
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2200, metadata !665), !dbg !2264
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2202, metadata !665), !dbg !2265
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2203, metadata !665), !dbg !2266
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2204, metadata !665), !dbg !2267
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2205, metadata !665), !dbg !2268
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2206, metadata !665), !dbg !2269
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !2270
  %14 = icmp eq i64 %13, 1, !dbg !2271
  %15 = lshr i32 %5, 1, !dbg !2272
  %16 = trunc i32 %15 to i8, !dbg !2272
  %17 = and i8 %16, 1, !dbg !2272
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2208, metadata !665), !dbg !2272
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2209, metadata !665), !dbg !2273
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2210, metadata !665), !dbg !2274
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2211, metadata !665), !dbg !2275
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2276

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2193, metadata !665), !dbg !2257
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2211, metadata !665), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2210, metadata !665), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2208, metadata !665), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2195, metadata !665), !dbg !2259
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2206, metadata !665), !dbg !2269
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2205, metadata !665), !dbg !2268
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2204, metadata !665), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2203, metadata !665), !dbg !2266
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2200, metadata !665), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2199, metadata !665), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2196, metadata !665), !dbg !2260
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
  ], !dbg !2277

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2196, metadata !665), !dbg !2260
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2208, metadata !665), !dbg !2272
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2208, metadata !665), !dbg !2272
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2196, metadata !665), !dbg !2260
  br label %94, !dbg !2278

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2208, metadata !665), !dbg !2272
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2196, metadata !665), !dbg !2260
  %43 = and i8 %36, 1, !dbg !2280
  %44 = icmp eq i8 %43, 0, !dbg !2280
  br i1 %44, label %45, label %94, !dbg !2278

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2282
  br i1 %46, label %94, label %47, !dbg !2285

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2282, !tbaa !803
  br label %94, !dbg !2282

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %28), !dbg !2286
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2199, metadata !665), !dbg !2263
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %28), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2200, metadata !665), !dbg !2264
  br label %51, !dbg !2291

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2200, metadata !665), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2199, metadata !665), !dbg !2263
  %54 = and i8 %36, 1, !dbg !2292
  %55 = icmp eq i8 %54, 0, !dbg !2292
  br i1 %55, label %56, label %72, !dbg !2294

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2204, metadata !665), !dbg !2267
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2204, metadata !665), !dbg !2267
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2202, metadata !665), !dbg !2265
  %57 = load i8, i8* %52, align 1, !dbg !2295, !tbaa !803
  %58 = icmp eq i8 %57, 0, !dbg !2298
  br i1 %58, label %72, label %59, !dbg !2298

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2299

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !2204, metadata !665), !dbg !2267
  %64 = icmp ult i64 %63, %40, !dbg !2299
  br i1 %64, label %65, label %67, !dbg !2302

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2299
  store i8 %61, i8* %66, align 1, !dbg !2299, !tbaa !803
  br label %67, !dbg !2299

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2302
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2202, metadata !665), !dbg !2265
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2303
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2204, metadata !665), !dbg !2267
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2204, metadata !665), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2202, metadata !665), !dbg !2265
  %70 = load i8, i8* %69, align 1, !dbg !2295, !tbaa !803
  %71 = icmp eq i8 %70, 0, !dbg !2298
  br i1 %71, label %72, label %60, !dbg !2298, !llvm.loop !2304

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2206, metadata !665), !dbg !2269
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2204, metadata !665), !dbg !2267
  %74 = call i64 @strlen(i8* %53) #9, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2205, metadata !665), !dbg !2268
  br label %94, !dbg !2307

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2206, metadata !665), !dbg !2269
  br label %76, !dbg !2308

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2206, metadata !665), !dbg !2269
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2208, metadata !665), !dbg !2272
  br label %78, !dbg !2309

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2208, metadata !665), !dbg !2272
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2206, metadata !665), !dbg !2269
  %81 = and i8 %80, 1, !dbg !2310
  %82 = icmp eq i8 %81, 0, !dbg !2310
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2206, metadata !665), !dbg !2269
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2312
  br label %84, !dbg !2312

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2208, metadata !665), !dbg !2272
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2206, metadata !665), !dbg !2269
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2196, metadata !665), !dbg !2260
  %87 = and i8 %86, 1, !dbg !2313
  %88 = icmp eq i8 %87, 0, !dbg !2313
  br i1 %88, label %89, label %94, !dbg !2315

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2316
  br i1 %90, label %94, label %91, !dbg !2319

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2316, !tbaa !803
  br label %94, !dbg !2316

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2208, metadata !665), !dbg !2272
  br label %94, !dbg !2320

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !2321
  unreachable, !dbg !2321

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2208, metadata !665), !dbg !2272
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2206, metadata !665), !dbg !2269
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !2205, metadata !665), !dbg !2268
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2204, metadata !665), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2200, metadata !665), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2199, metadata !665), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2196, metadata !665), !dbg !2260
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2201, metadata !665), !dbg !2322
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
  br label %122, !dbg !2323

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2193, metadata !665), !dbg !2257
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2211, metadata !665), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2210, metadata !665), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2195, metadata !665), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2203, metadata !665), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !2201, metadata !665), !dbg !2322
  %131 = icmp eq i64 %126, -1, !dbg !2324
  br i1 %131, label %134, label %132, !dbg !2325

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2326
  br i1 %133, label %590, label %138, !dbg !2327

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2328
  %136 = load i8, i8* %135, align 1, !dbg !2328, !tbaa !803
  %137 = icmp eq i8 %136, 0, !dbg !2329
  br i1 %137, label %590, label %138, !dbg !2327

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2217, metadata !665), !dbg !2330
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2218, metadata !665), !dbg !2331
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2219, metadata !665), !dbg !2332
  br i1 %108, label %139, label %154, !dbg !2333

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2335
  %141 = and i1 %109, %131, !dbg !2336
  br i1 %141, label %142, label %144, !dbg !2336

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #9, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !2195, metadata !665), !dbg !2259
  br label %144, !dbg !2338

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !2195, metadata !665), !dbg !2259
  %146 = icmp ugt i64 %140, %145, !dbg !2339
  br i1 %146, label %154, label %147, !dbg !2340

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2341
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #9, !dbg !2342
  %150 = icmp ne i32 %149, 0, !dbg !2343
  %151 = or i1 %150, %111, !dbg !2344
  %152 = xor i1 %150, true, !dbg !2344
  %153 = zext i1 %152 to i8, !dbg !2344
  br i1 %151, label %154, label %635, !dbg !2344

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2217, metadata !665), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !2195, metadata !665), !dbg !2259
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2345
  %158 = load i8, i8* %157, align 1, !dbg !2345, !tbaa !803
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2212, metadata !665), !dbg !2346
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
  ], !dbg !2347

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2348

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2349

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2218, metadata !665), !dbg !2331
  %162 = and i8 %127, 1, !dbg !2353
  %163 = icmp eq i8 %162, 0, !dbg !2353
  %164 = and i1 %113, %163, !dbg !2353
  br i1 %164, label %165, label %181, !dbg !2353

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2355
  br i1 %166, label %167, label %169, !dbg !2359

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2355
  store i8 39, i8* %168, align 1, !dbg !2355, !tbaa !803
  br label %169, !dbg !2355

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !2202, metadata !665), !dbg !2265
  %171 = icmp ult i64 %170, %130, !dbg !2360
  br i1 %171, label %172, label %174, !dbg !2363

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2360
  store i8 36, i8* %173, align 1, !dbg !2360, !tbaa !803
  br label %174, !dbg !2360

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !2202, metadata !665), !dbg !2265
  %176 = icmp ult i64 %175, %130, !dbg !2364
  br i1 %176, label %177, label %179, !dbg !2367

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2364
  store i8 39, i8* %178, align 1, !dbg !2364, !tbaa !803
  br label %179, !dbg !2364

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2209, metadata !665), !dbg !2273
  br label %181, !dbg !2368

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !2202, metadata !665), !dbg !2265
  %184 = icmp ult i64 %182, %130, !dbg !2369
  br i1 %184, label %185, label %187, !dbg !2372

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2369
  store i8 92, i8* %186, align 1, !dbg !2369, !tbaa !803
  br label %187, !dbg !2369

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !2202, metadata !665), !dbg !2265
  br i1 %105, label %189, label %470, !dbg !2373

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2375
  %191 = icmp ult i64 %190, %155, !dbg !2376
  br i1 %191, label %192, label %470, !dbg !2377

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2378
  %194 = load i8, i8* %193, align 1, !dbg !2378, !tbaa !803
  %195 = add i8 %194, -48, !dbg !2379
  %196 = icmp ult i8 %195, 10, !dbg !2379
  br i1 %196, label %197, label %470, !dbg !2379

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2380
  br i1 %198, label %199, label %201, !dbg !2384

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2380
  store i8 48, i8* %200, align 1, !dbg !2380, !tbaa !803
  br label %201, !dbg !2380

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !2202, metadata !665), !dbg !2265
  %203 = icmp ult i64 %202, %130, !dbg !2385
  br i1 %203, label %204, label %206, !dbg !2388

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2385
  store i8 48, i8* %205, align 1, !dbg !2385, !tbaa !803
  br label %206, !dbg !2385

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2388
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !2202, metadata !665), !dbg !2265
  br label %470, !dbg !2389

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2390

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2391

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2392

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2394

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2396
  %214 = icmp ult i64 %213, %155, !dbg !2397
  br i1 %214, label %215, label %470, !dbg !2398

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2399
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2400
  %218 = load i8, i8* %217, align 1, !dbg !2400, !tbaa !803
  %219 = icmp eq i8 %218, 63, !dbg !2401
  br i1 %219, label %220, label %470, !dbg !2402

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2403
  %222 = load i8, i8* %221, align 1, !dbg !2403, !tbaa !803
  %223 = sext i8 %222 to i32, !dbg !2403
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
  ], !dbg !2404

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2405

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2212, metadata !665), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !2201, metadata !665), !dbg !2322
  %226 = icmp ult i64 %124, %130, !dbg !2407
  br i1 %226, label %227, label %229, !dbg !2410

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2407
  store i8 63, i8* %228, align 1, !dbg !2407, !tbaa !803
  br label %229, !dbg !2407

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !2202, metadata !665), !dbg !2265
  %231 = icmp ult i64 %230, %130, !dbg !2411
  br i1 %231, label %232, label %234, !dbg !2414

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2411
  store i8 34, i8* %233, align 1, !dbg !2411, !tbaa !803
  br label %234, !dbg !2411

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !2202, metadata !665), !dbg !2265
  %236 = icmp ult i64 %235, %130, !dbg !2415
  br i1 %236, label %237, label %239, !dbg !2418

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2415
  store i8 34, i8* %238, align 1, !dbg !2415, !tbaa !803
  br label %239, !dbg !2415

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !2202, metadata !665), !dbg !2265
  %241 = icmp ult i64 %240, %130, !dbg !2419
  br i1 %241, label %242, label %244, !dbg !2422

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2419
  store i8 63, i8* %243, align 1, !dbg !2419, !tbaa !803
  br label %244, !dbg !2419

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !2202, metadata !665), !dbg !2265
  br label %470, !dbg !2423

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2216, metadata !665), !dbg !2424
  br label %256, !dbg !2425

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2216, metadata !665), !dbg !2424
  br label %256, !dbg !2426

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2216, metadata !665), !dbg !2424
  br label %254, !dbg !2427

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2216, metadata !665), !dbg !2424
  br label %254, !dbg !2428

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2216, metadata !665), !dbg !2424
  br label %256, !dbg !2429

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2216, metadata !665), !dbg !2424
  br i1 %113, label %252, label %253, !dbg !2430

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2431

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2434

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2216, metadata !665), !dbg !2424
  br i1 %117, label %256, label %635, !dbg !2436

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2216, metadata !665), !dbg !2424
  br i1 %104, label %497, label %470, !dbg !2438

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2439
  br i1 %259, label %260, label %265, !dbg !2441

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2442, !tbaa !803
  %262 = icmp ne i8 %261, 0, !dbg !2443
  %263 = icmp ne i64 %123, 0, !dbg !2444
  %264 = or i1 %263, %262, !dbg !2446
  br i1 %264, label %470, label %271, !dbg !2446

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2447
  %267 = icmp ne i64 %123, 0, !dbg !2444
  %268 = or i1 %267, %266, !dbg !2441
  br i1 %268, label %470, label %271, !dbg !2441

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2444
  br i1 %270, label %271, label %470, !dbg !2448

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2219, metadata !665), !dbg !2332
  br label %272, !dbg !2449

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2219, metadata !665), !dbg !2332
  br i1 %117, label %470, label %635, !dbg !2450

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2210, metadata !665), !dbg !2274
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2219, metadata !665), !dbg !2332
  br i1 %113, label %275, label %470, !dbg !2452

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2453

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2456
  %278 = icmp ne i64 %125, 0, !dbg !2458
  %279 = or i1 %278, %277, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2203, metadata !665), !dbg !2266
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2193, metadata !665), !dbg !2257
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2459
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2193, metadata !665), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !2203, metadata !665), !dbg !2266
  %282 = icmp ult i64 %124, %281, !dbg !2460
  br i1 %282, label %283, label %285, !dbg !2463

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2460
  store i8 39, i8* %284, align 1, !dbg !2460, !tbaa !803
  br label %285, !dbg !2460

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !2202, metadata !665), !dbg !2265
  %287 = icmp ult i64 %286, %281, !dbg !2464
  br i1 %287, label %288, label %290, !dbg !2467

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2464
  store i8 92, i8* %289, align 1, !dbg !2464, !tbaa !803
  br label %290, !dbg !2464

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !2202, metadata !665), !dbg !2265
  %292 = icmp ult i64 %291, %281, !dbg !2468
  br i1 %292, label %293, label %295, !dbg !2471

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2468
  store i8 39, i8* %294, align 1, !dbg !2468, !tbaa !803
  br label %295, !dbg !2468

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2471
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2209, metadata !665), !dbg !2273
  br label %470, !dbg !2472

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2473

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2220, metadata !665), !dbg !2474
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2475
  %300 = load i16*, i16** %299, align 8, !dbg !2475, !tbaa !672
  %301 = zext i8 %158 to i64, !dbg !2475
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2475
  %303 = load i16, i16* %302, align 2, !dbg !2475, !tbaa !1437
  %304 = lshr i16 %303, 14, !dbg !2477
  %305 = trunc i16 %304 to i8, !dbg !2477
  %306 = and i8 %305, 1, !dbg !2477
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2223, metadata !665), !dbg !2478
  br label %362, !dbg !2479

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2480
  store i64 0, i64* %10, align 8, !dbg !2481
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2220, metadata !665), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2223, metadata !665), !dbg !2478
  %308 = icmp eq i64 %155, -1, !dbg !2482
  br i1 %308, label %309, label %311, !dbg !2484

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #9, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !2195, metadata !665), !dbg !2259
  br label %311, !dbg !2486

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !2195, metadata !665), !dbg !2259
  br label %313, !dbg !2487, !llvm.loop !2488

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2223, metadata !665), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2220, metadata !665), !dbg !2474
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2490
  %316 = add i64 %314, %123, !dbg !2491
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2492
  %318 = sub i64 %312, %316, !dbg !2493
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2224, metadata !665), !dbg !2494
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2242, metadata !665), !dbg !2495
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #12, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2245, metadata !665), !dbg !2497
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2498

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2223, metadata !665), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2220, metadata !665), !dbg !2474
  %321 = icmp ugt i64 %312, %316, !dbg !2499
  br i1 %321, label %322, label %347, !dbg !2501

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2502

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2220, metadata !665), !dbg !2474
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2502
  %327 = load i8, i8* %326, align 1, !dbg !2502, !tbaa !803
  %328 = icmp eq i8 %327, 0, !dbg !2501
  br i1 %328, label %347, label %329, !dbg !2503

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2220, metadata !665), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2220, metadata !665), !dbg !2474
  %331 = add i64 %330, %123, !dbg !2505
  %332 = icmp ult i64 %331, %312, !dbg !2499
  br i1 %332, label %323, label %347, !dbg !2501, !llvm.loop !2506

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2507
  %335 = and i1 %115, %334, !dbg !2510
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2246, metadata !665), !dbg !2511
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2246, metadata !665), !dbg !2511
  br i1 %335, label %336, label %350, !dbg !2510

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2512

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2246, metadata !665), !dbg !2511
  %339 = add i64 %338, %316, !dbg !2512
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2513
  %341 = load i8, i8* %340, align 1, !dbg !2513, !tbaa !803
  %342 = sext i8 %341 to i32, !dbg !2513
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2514

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2246, metadata !665), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2246, metadata !665), !dbg !2511
  %345 = icmp ult i64 %344, %319, !dbg !2507
  br i1 %345, label %337, label %350, !dbg !2516, !llvm.loop !2517

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2519

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2223, metadata !665), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2220, metadata !665), !dbg !2474
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2519
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2520, !tbaa !793
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2242, metadata !665), !dbg !2495
  %352 = call i32 @iswprint(i32 %351) #12, !dbg !2522
  %353 = icmp eq i32 %352, 0, !dbg !2522
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2223, metadata !665), !dbg !2478
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2523
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2223, metadata !665), !dbg !2478
  %355 = add i64 %319, %314, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2220, metadata !665), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2223, metadata !665), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2220, metadata !665), !dbg !2474
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2519
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2224, metadata !665), !dbg !2494
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #9, !dbg !2525
  %357 = icmp eq i32 %356, 0, !dbg !2526
  br i1 %357, label %313, label %358, !dbg !2527, !llvm.loop !2488

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2528
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2223, metadata !665), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2220, metadata !665), !dbg !2474
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2519
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2528
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2223, metadata !665), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2220, metadata !665), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !2195, metadata !665), !dbg !2259
  %366 = and i8 %365, 1, !dbg !2529
  %367 = icmp ne i8 %366, 0, !dbg !2529
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2219, metadata !665), !dbg !2332
  %368 = icmp ult i64 %364, 2, !dbg !2530
  %369 = or i1 %367, %112, !dbg !2531
  %370 = and i1 %368, %369, !dbg !2532
  br i1 %370, label %470, label %371, !dbg !2532

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2533
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2253, metadata !665), !dbg !2534
  br label %373, !dbg !2535

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2218, metadata !665), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2217, metadata !665), !dbg !2330
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2212, metadata !665), !dbg !2346
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !2201, metadata !665), !dbg !2322
  br i1 %369, label %426, label %380, !dbg !2536

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2541

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2218, metadata !665), !dbg !2331
  %382 = and i8 %376, 1, !dbg !2544
  %383 = icmp eq i8 %382, 0, !dbg !2544
  %384 = and i1 %113, %383, !dbg !2544
  br i1 %384, label %385, label %401, !dbg !2544

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2546
  br i1 %386, label %387, label %389, !dbg !2550

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2546
  store i8 39, i8* %388, align 1, !dbg !2546, !tbaa !803
  br label %389, !dbg !2546

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !2202, metadata !665), !dbg !2265
  %391 = icmp ult i64 %390, %130, !dbg !2551
  br i1 %391, label %392, label %394, !dbg !2554

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2551
  store i8 36, i8* %393, align 1, !dbg !2551, !tbaa !803
  br label %394, !dbg !2551

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !2202, metadata !665), !dbg !2265
  %396 = icmp ult i64 %395, %130, !dbg !2555
  br i1 %396, label %397, label %399, !dbg !2558

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2555
  store i8 39, i8* %398, align 1, !dbg !2555, !tbaa !803
  br label %399, !dbg !2555

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2209, metadata !665), !dbg !2273
  br label %401, !dbg !2559

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !2202, metadata !665), !dbg !2265
  %404 = icmp ult i64 %402, %130, !dbg !2560
  br i1 %404, label %405, label %407, !dbg !2563

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2560
  store i8 92, i8* %406, align 1, !dbg !2560, !tbaa !803
  br label %407, !dbg !2560

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2202, metadata !665), !dbg !2265
  %409 = icmp ult i64 %408, %130, !dbg !2564
  br i1 %409, label %410, label %414, !dbg !2567

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2564
  %412 = or i8 %411, 48, !dbg !2564
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2564
  store i8 %412, i8* %413, align 1, !dbg !2564, !tbaa !803
  br label %414, !dbg !2564

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !2202, metadata !665), !dbg !2265
  %416 = icmp ult i64 %415, %130, !dbg !2568
  br i1 %416, label %417, label %422, !dbg !2571

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2568
  %419 = and i8 %418, 7, !dbg !2568
  %420 = or i8 %419, 48, !dbg !2568
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2568
  store i8 %420, i8* %421, align 1, !dbg !2568, !tbaa !803
  br label %422, !dbg !2568

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2571
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !2202, metadata !665), !dbg !2265
  %424 = and i8 %377, 7, !dbg !2572
  %425 = or i8 %424, 48, !dbg !2573
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2212, metadata !665), !dbg !2346
  br label %435, !dbg !2574

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2575
  %428 = icmp eq i8 %427, 0, !dbg !2575
  br i1 %428, label %435, label %429, !dbg !2577

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2578
  br i1 %430, label %431, label %433, !dbg !2582

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2578
  store i8 92, i8* %432, align 1, !dbg !2578, !tbaa !803
  br label %433, !dbg !2578

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2217, metadata !665), !dbg !2330
  br label %435, !dbg !2583

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2218, metadata !665), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2217, metadata !665), !dbg !2330
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2212, metadata !665), !dbg !2346
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !2202, metadata !665), !dbg !2265
  %441 = add i64 %374, 1, !dbg !2584
  %442 = icmp ugt i64 %372, %441, !dbg !2586
  br i1 %442, label %443, label %535, !dbg !2587

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2588
  %445 = icmp ne i8 %444, 0, !dbg !2588
  %446 = and i8 %440, 1, !dbg !2588
  %447 = icmp eq i8 %446, 0, !dbg !2588
  %448 = and i1 %445, %447, !dbg !2588
  br i1 %448, label %449, label %460, !dbg !2588

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2591
  br i1 %450, label %451, label %453, !dbg !2595

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2591
  store i8 39, i8* %452, align 1, !dbg !2591, !tbaa !803
  br label %453, !dbg !2591

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !2202, metadata !665), !dbg !2265
  %455 = icmp ult i64 %454, %130, !dbg !2596
  br i1 %455, label %456, label %458, !dbg !2599

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2596
  store i8 39, i8* %457, align 1, !dbg !2596, !tbaa !803
  br label %458, !dbg !2596

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2209, metadata !665), !dbg !2273
  br label %460, !dbg !2600

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !2202, metadata !665), !dbg !2265
  %463 = icmp ult i64 %461, %130, !dbg !2601
  br i1 %463, label %464, label %466, !dbg !2604

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2601
  store i8 %438, i8* %465, align 1, !dbg !2601, !tbaa !803
  br label %466, !dbg !2601

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2604
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !2201, metadata !665), !dbg !2322
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2605
  %469 = load i8, i8* %468, align 1, !dbg !2605, !tbaa !803
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2212, metadata !665), !dbg !2346
  br label %373, !dbg !2606, !llvm.loop !2607

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2193, metadata !665), !dbg !2257
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2219, metadata !665), !dbg !2332
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2218, metadata !665), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2217, metadata !665), !dbg !2330
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2212, metadata !665), !dbg !2346
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2210, metadata !665), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !2195, metadata !665), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2203, metadata !665), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !2201, metadata !665), !dbg !2322
  br i1 %106, label %482, label %481, !dbg !2610

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2612

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2613

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2614
  %485 = zext i8 %484 to i64, !dbg !2614
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2615
  %487 = load i32, i32* %486, align 4, !dbg !2615, !tbaa !793
  %488 = and i8 %477, 31, !dbg !2616
  %489 = zext i8 %488 to i32, !dbg !2617
  %490 = shl i32 1, %489, !dbg !2618
  %491 = and i32 %487, %490, !dbg !2618
  %492 = icmp eq i32 %491, 0, !dbg !2618
  %493 = icmp eq i8 %156, 0, !dbg !2619
  %494 = and i1 %493, %492, !dbg !2620
  br i1 %494, label %535, label %497, !dbg !2620

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2619
  br i1 %496, label %535, label %497, !dbg !2621

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2193, metadata !665), !dbg !2257
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2219, metadata !665), !dbg !2332
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2212, metadata !665), !dbg !2346
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2210, metadata !665), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !2195, metadata !665), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !2203, metadata !665), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !2201, metadata !665), !dbg !2322
  br i1 %111, label %507, label %635, !dbg !2622

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2218, metadata !665), !dbg !2331
  %508 = and i8 %502, 1, !dbg !2624
  %509 = icmp eq i8 %508, 0, !dbg !2624
  %510 = and i1 %113, %509, !dbg !2624
  br i1 %510, label %511, label %527, !dbg !2624

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2626
  br i1 %512, label %513, label %515, !dbg !2630

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2626
  store i8 39, i8* %514, align 1, !dbg !2626, !tbaa !803
  br label %515, !dbg !2626

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2630
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !2202, metadata !665), !dbg !2265
  %517 = icmp ult i64 %516, %506, !dbg !2631
  br i1 %517, label %518, label %520, !dbg !2634

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2631
  store i8 36, i8* %519, align 1, !dbg !2631, !tbaa !803
  br label %520, !dbg !2631

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !2202, metadata !665), !dbg !2265
  %522 = icmp ult i64 %521, %506, !dbg !2635
  br i1 %522, label %523, label %525, !dbg !2638

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2635
  store i8 39, i8* %524, align 1, !dbg !2635, !tbaa !803
  br label %525, !dbg !2635

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2638
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2209, metadata !665), !dbg !2273
  br label %527, !dbg !2639

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !2202, metadata !665), !dbg !2265
  %530 = icmp ult i64 %528, %506, !dbg !2640
  br i1 %530, label %531, label %533, !dbg !2643

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2640
  store i8 92, i8* %532, align 1, !dbg !2640, !tbaa !803
  br label %533, !dbg !2640

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2193, metadata !665), !dbg !2257
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2219, metadata !665), !dbg !2332
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2218, metadata !665), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2212, metadata !665), !dbg !2346
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2210, metadata !665), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2195, metadata !665), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2203, metadata !665), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2201, metadata !665), !dbg !2322
  br label %562, !dbg !2644

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2193, metadata !665), !dbg !2257
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2219, metadata !665), !dbg !2332
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2218, metadata !665), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2212, metadata !665), !dbg !2346
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2210, metadata !665), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2195, metadata !665), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2203, metadata !665), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2201, metadata !665), !dbg !2322
  %546 = and i8 %540, 1, !dbg !2644
  %547 = icmp ne i8 %546, 0, !dbg !2644
  %548 = and i8 %543, 1, !dbg !2644
  %549 = icmp eq i8 %548, 0, !dbg !2644
  %550 = and i1 %547, %549, !dbg !2644
  br i1 %550, label %551, label %562, !dbg !2644

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2647
  br i1 %552, label %553, label %555, !dbg !2651

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2647
  store i8 39, i8* %554, align 1, !dbg !2647, !tbaa !803
  br label %555, !dbg !2647

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !2202, metadata !665), !dbg !2265
  %557 = icmp ult i64 %556, %545, !dbg !2652
  br i1 %557, label %558, label %560, !dbg !2655

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2652
  store i8 39, i8* %559, align 1, !dbg !2652, !tbaa !803
  br label %560, !dbg !2652

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2209, metadata !665), !dbg !2273
  br label %562, !dbg !2656

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !2202, metadata !665), !dbg !2265
  %572 = icmp ult i64 %570, %563, !dbg !2657
  br i1 %572, label %573, label %575, !dbg !2660

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2657
  store i8 %565, i8* %574, align 1, !dbg !2657, !tbaa !803
  br label %575, !dbg !2657

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !2202, metadata !665), !dbg !2265
  %577 = and i8 %564, 1, !dbg !2661
  %578 = icmp eq i8 %577, 0, !dbg !2661
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2211, metadata !665), !dbg !2275
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2663
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2211, metadata !665), !dbg !2275
  br label %580, !dbg !2664

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !2193, metadata !665), !dbg !2257
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2211, metadata !665), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2210, metadata !665), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2209, metadata !665), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !2195, metadata !665), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2203, metadata !665), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !2201, metadata !665), !dbg !2322
  %589 = add i64 %581, 1, !dbg !2665
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !2201, metadata !665), !dbg !2322
  br label %122, !dbg !2666, !llvm.loop !2667

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2669
  %593 = and i1 %113, %592, !dbg !2671
  %594 = xor i1 %593, true, !dbg !2671
  %595 = or i1 %111, %594, !dbg !2671
  br i1 %595, label %596, label %635, !dbg !2671

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2672
  %598 = xor i1 %597, true, !dbg !2672
  %599 = and i8 %128, 1, !dbg !2674
  %600 = icmp eq i8 %599, 0, !dbg !2674
  %601 = or i1 %600, %598, !dbg !2672
  br i1 %601, label %611, label %602, !dbg !2672

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2675
  %604 = icmp eq i8 %603, 0, !dbg !2675
  br i1 %604, label %607, label %605, !dbg !2678

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2679
  br label %645, !dbg !2680

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2681
  %609 = icmp ne i64 %125, 0, !dbg !2683
  %610 = and i1 %609, %608, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2193, metadata !665), !dbg !2257
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2202, metadata !665), !dbg !2265
  br i1 %610, label %27, label %611, !dbg !2684

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2685
  %613 = and i1 %612, %111, !dbg !2687
  br i1 %613, label %614, label %630, !dbg !2687

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2204, metadata !665), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2202, metadata !665), !dbg !2265
  %615 = load i8, i8* %99, align 1, !dbg !2688, !tbaa !803
  %616 = icmp eq i8 %615, 0, !dbg !2691
  br i1 %616, label %630, label %617, !dbg !2691

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2692

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !2202, metadata !665), !dbg !2265
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !2204, metadata !665), !dbg !2267
  %622 = icmp ult i64 %621, %130, !dbg !2692
  br i1 %622, label %623, label %625, !dbg !2695

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2692
  store i8 %619, i8* %624, align 1, !dbg !2692, !tbaa !803
  br label %625, !dbg !2692

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2202, metadata !665), !dbg !2265
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2696
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2204, metadata !665), !dbg !2267
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2204, metadata !665), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2202, metadata !665), !dbg !2265
  %628 = load i8, i8* %627, align 1, !dbg !2688, !tbaa !803
  %629 = icmp eq i8 %628, 0, !dbg !2691
  br i1 %629, label %630, label %618, !dbg !2691, !llvm.loop !2697

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2202, metadata !665), !dbg !2265
  %632 = icmp ult i64 %631, %130, !dbg !2699
  br i1 %632, label %633, label %645, !dbg !2701

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2702
  store i8 0, i8* %634, align 1, !dbg !2703, !tbaa !803
  br label %645, !dbg !2702

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !2193, metadata !665), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !2195, metadata !665), !dbg !2259
  %639 = icmp ne i32 %636, 2, !dbg !2704
  %640 = icmp eq i8 %103, 0, !dbg !2706
  %641 = or i1 %639, %640, !dbg !2707
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2196, metadata !665), !dbg !2260
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2707
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !2196, metadata !665), !dbg !2260
  %643 = and i32 %5, -3, !dbg !2708
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2709
  br label %645, !dbg !2710

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2711
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2712 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2716, metadata !665), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2717, metadata !665), !dbg !2721
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2722
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2718, metadata !665), !dbg !2723
  %4 = icmp eq i8* %3, %0, !dbg !2724
  br i1 %4, label %5, label %75, !dbg !2726

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2727
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2719, metadata !665), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2729, metadata !665), !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2743, metadata !665), !dbg !2748
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2744, metadata !665), !dbg !2749
  %7 = load i8, i8* %6, align 1, !dbg !2750, !tbaa !803
  %8 = sext i8 %7 to i32, !dbg !2750
  %9 = and i32 %8, -33, !dbg !2750
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2750

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2752, metadata !665), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2764, metadata !665), !dbg !2770
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2765, metadata !665), !dbg !2771
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2772
  %12 = load i8, i8* %11, align 1, !dbg !2772, !tbaa !803
  %13 = sext i8 %12 to i32, !dbg !2772
  %14 = and i32 %13, -33, !dbg !2772
  %15 = icmp eq i32 %14, 84, !dbg !2772
  br i1 %15, label %16, label %72, !dbg !2772

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2774, metadata !665), !dbg !2787
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2785, metadata !665), !dbg !2791
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2786, metadata !665), !dbg !2792
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2793
  %18 = load i8, i8* %17, align 1, !dbg !2793, !tbaa !803
  %19 = sext i8 %18 to i32, !dbg !2793
  %20 = and i32 %19, -33, !dbg !2793
  %21 = icmp eq i32 %20, 70, !dbg !2793
  br i1 %21, label %22, label %72, !dbg !2793

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2795, metadata !665), !dbg !2807
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2805, metadata !665), !dbg !2811
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2806, metadata !665), !dbg !2812
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2813
  %24 = load i8, i8* %23, align 1, !dbg !2813, !tbaa !803
  %25 = icmp eq i8 %24, 45, !dbg !2813
  br i1 %25, label %26, label %72, !dbg !2815

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2816, metadata !665), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2825, metadata !665), !dbg !2831
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2826, metadata !665), !dbg !2832
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2833
  %28 = load i8, i8* %27, align 1, !dbg !2833, !tbaa !803
  %29 = icmp eq i8 %28, 56, !dbg !2833
  br i1 %29, label %30, label %72, !dbg !2835

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2836, metadata !665), !dbg !2846
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2844, metadata !665), !dbg !2850
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2845, metadata !665), !dbg !2851
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2852
  %32 = load i8, i8* %31, align 1, !dbg !2852, !tbaa !803
  %33 = icmp eq i8 %32, 0, !dbg !2852
  br i1 %33, label %34, label %72, !dbg !2854

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2855, !tbaa !803
  %36 = icmp eq i8 %35, 96, !dbg !2856
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.67, i64 0, i64 0), !dbg !2855
  br label %75, !dbg !2857

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2752, metadata !665), !dbg !2858
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2764, metadata !665), !dbg !2862
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2765, metadata !665), !dbg !2863
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2864
  %40 = load i8, i8* %39, align 1, !dbg !2864, !tbaa !803
  %41 = sext i8 %40 to i32, !dbg !2864
  %42 = and i32 %41, -33, !dbg !2864
  %43 = icmp eq i32 %42, 66, !dbg !2864
  br i1 %43, label %44, label %72, !dbg !2864

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2774, metadata !665), !dbg !2865
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2785, metadata !665), !dbg !2867
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2786, metadata !665), !dbg !2868
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2869
  %46 = load i8, i8* %45, align 1, !dbg !2869, !tbaa !803
  %47 = icmp eq i8 %46, 49, !dbg !2869
  br i1 %47, label %48, label %72, !dbg !2870

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2795, metadata !665), !dbg !2871
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2805, metadata !665), !dbg !2873
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2806, metadata !665), !dbg !2874
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2875
  %50 = load i8, i8* %49, align 1, !dbg !2875, !tbaa !803
  %51 = icmp eq i8 %50, 56, !dbg !2875
  br i1 %51, label %52, label %72, !dbg !2876

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2816, metadata !665), !dbg !2877
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2825, metadata !665), !dbg !2879
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2826, metadata !665), !dbg !2880
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2881
  %54 = load i8, i8* %53, align 1, !dbg !2881, !tbaa !803
  %55 = icmp eq i8 %54, 48, !dbg !2881
  br i1 %55, label %56, label %72, !dbg !2882

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2836, metadata !665), !dbg !2883
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2844, metadata !665), !dbg !2885
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2845, metadata !665), !dbg !2886
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2887
  %58 = load i8, i8* %57, align 1, !dbg !2887, !tbaa !803
  %59 = icmp eq i8 %58, 51, !dbg !2887
  br i1 %59, label %60, label %72, !dbg !2888

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2889, metadata !665), !dbg !2898
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2896, metadata !665), !dbg !2902
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2897, metadata !665), !dbg !2903
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2904
  %62 = load i8, i8* %61, align 1, !dbg !2904, !tbaa !803
  %63 = icmp eq i8 %62, 48, !dbg !2904
  br i1 %63, label %64, label %72, !dbg !2906

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2907, metadata !665), !dbg !2915
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2913, metadata !665), !dbg !2919
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2914, metadata !665), !dbg !2920
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2921
  %66 = load i8, i8* %65, align 1, !dbg !2921, !tbaa !803
  %67 = icmp eq i8 %66, 0, !dbg !2921
  br i1 %67, label %68, label %72, !dbg !2923

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2924, !tbaa !803
  %70 = icmp eq i8 %69, 96, !dbg !2925
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.68, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.69, i64 0, i64 0), !dbg !2924
  br label %75, !dbg !2926

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2927
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !2928
  br label %75, !dbg !2929

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2930
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #10

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #10

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2931 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2935, metadata !665), !dbg !2938
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2936, metadata !665), !dbg !2939
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2937, metadata !665), !dbg !2940
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2941, metadata !665) #12, !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2946, metadata !665) #12, !dbg !2956
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2947, metadata !665) #12, !dbg !2957
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2948, metadata !665) #12, !dbg !2958
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2959
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2959
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2949, metadata !665) #12, !dbg !2960
  %6 = tail call i32* @__errno_location() #17, !dbg !2961
  %7 = load i32, i32* %6, align 4, !dbg !2961, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2950, metadata !665) #12, !dbg !2962
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2963
  %9 = load i32, i32* %8, align 4, !dbg !2963, !tbaa !2125
  %10 = or i32 %9, 1, !dbg !2964
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2951, metadata !665) #12, !dbg !2965
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2966
  %12 = load i32, i32* %11, align 8, !dbg !2966, !tbaa !2065
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2967
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2968
  %15 = load i8*, i8** %14, align 8, !dbg !2968, !tbaa !2151
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2969
  %17 = load i8*, i8** %16, align 8, !dbg !2969, !tbaa !2154
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !2970
  %19 = add i64 %18, 1, !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2952, metadata !665) #12, !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2973, metadata !665) #12, !dbg !2978
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2980
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2953, metadata !665) #12, !dbg !2981
  %21 = load i32, i32* %11, align 8, !dbg !2982, !tbaa !2065
  %22 = load i8*, i8** %14, align 8, !dbg !2983, !tbaa !2151
  %23 = load i8*, i8** %16, align 8, !dbg !2984, !tbaa !2154
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !2985
  store i32 %7, i32* %6, align 4, !dbg !2986, !tbaa !793
  ret i8* %20, !dbg !2987
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2942 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2941, metadata !665), !dbg !2988
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2946, metadata !665), !dbg !2989
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2947, metadata !665), !dbg !2990
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2948, metadata !665), !dbg !2991
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2992
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2992
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2949, metadata !665), !dbg !2993
  %7 = tail call i32* @__errno_location() #17, !dbg !2994
  %8 = load i32, i32* %7, align 4, !dbg !2994, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2950, metadata !665), !dbg !2995
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2996
  %10 = load i32, i32* %9, align 4, !dbg !2996, !tbaa !2125
  %11 = icmp ne i64* %2, null, !dbg !2997
  %12 = xor i1 %11, true, !dbg !2997
  %13 = zext i1 %12 to i32, !dbg !2997
  %14 = or i32 %10, %13, !dbg !2998
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2951, metadata !665), !dbg !2999
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3000
  %16 = load i32, i32* %15, align 8, !dbg !3000, !tbaa !2065
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3001
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3002
  %19 = load i8*, i8** %18, align 8, !dbg !3002, !tbaa !2151
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3003
  %21 = load i8*, i8** %20, align 8, !dbg !3003, !tbaa !2154
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3004
  %23 = add i64 %22, 1, !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2952, metadata !665), !dbg !3006
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2973, metadata !665) #12, !dbg !3007
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !3009
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2953, metadata !665), !dbg !3010
  %25 = load i32, i32* %15, align 8, !dbg !3011, !tbaa !2065
  %26 = load i8*, i8** %18, align 8, !dbg !3012, !tbaa !2151
  %27 = load i8*, i8** %20, align 8, !dbg !3013, !tbaa !2154
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3014
  store i32 %8, i32* %7, align 4, !dbg !3015, !tbaa !793
  br i1 %11, label %29, label %30, !dbg !3016

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3017, !tbaa !3019
  br label %30, !dbg !3020

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3021
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3022 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3026, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3024, metadata !665), !dbg !3027
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3025, metadata !665), !dbg !3028
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3025, metadata !665), !dbg !3028
  %2 = load i32, i32* @nslots, align 4, !dbg !3029, !tbaa !793
  %3 = icmp sgt i32 %2, 1, !dbg !3032
  br i1 %3, label %4, label %13, !dbg !3033

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3034

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !3025, metadata !665), !dbg !3028
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3034
  %8 = load i8*, i8** %7, align 8, !dbg !3034, !tbaa !3035
  tail call void @free(i8* %8) #12, !dbg !3037
  %9 = add nuw i64 %6, 1, !dbg !3038
  %10 = load i32, i32* @nslots, align 4, !dbg !3029, !tbaa !793
  %11 = sext i32 %10 to i64, !dbg !3032
  %12 = icmp slt i64 %9, %11, !dbg !3032
  br i1 %12, label %5, label %13, !dbg !3033, !llvm.loop !3039

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3041
  %15 = load i8*, i8** %14, align 8, !dbg !3041, !tbaa !3035
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3043
  br i1 %16, label %18, label %17, !dbg !3044

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #12, !dbg !3045
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3047, !tbaa !3048
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3049, !tbaa !3035
  br label %18, !dbg !3050

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3051
  br i1 %19, label %22, label %20, !dbg !3053

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !3054
  tail call void @free(i8* %21) #12, !dbg !3056
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3057, !tbaa !672
  br label %22, !dbg !3058

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !3059, !tbaa !793
  ret void, !dbg !3060
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3061 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3065, metadata !665), !dbg !3067
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3066, metadata !665), !dbg !3068
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3069
  ret i8* %3, !dbg !3070
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3071 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3075, metadata !665), !dbg !3089
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3076, metadata !665), !dbg !3090
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3077, metadata !665), !dbg !3091
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3078, metadata !665), !dbg !3092
  %5 = tail call i32* @__errno_location() #17, !dbg !3093
  %6 = load i32, i32* %5, align 4, !dbg !3093, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3079, metadata !665), !dbg !3094
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3095, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3080, metadata !665), !dbg !3096
  %8 = icmp slt i32 %0, 0, !dbg !3097
  br i1 %8, label %9, label %10, !dbg !3099

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3100
  unreachable, !dbg !3100

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3101, !tbaa !793
  %12 = icmp sgt i32 %11, %0, !dbg !3102
  br i1 %12, label %34, label %13, !dbg !3103

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3104
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3105
  br i1 %15, label %16, label %17, !dbg !3107

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3108
  unreachable, !dbg !3108

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3109
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3109
  %20 = add nsw i32 %0, 1, !dbg !3110
  %21 = sext i32 %20 to i64, !dbg !3111
  %22 = shl nsw i64 %21, 4, !dbg !3112
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !3113
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3113
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3080, metadata !665), !dbg !3096
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3114, !tbaa !672
  br i1 %14, label %25, label %26, !dbg !3115

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3116, !tbaa.struct !3118
  br label %26, !dbg !3119

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3120, !tbaa !793
  %28 = sext i32 %27 to i64, !dbg !3121
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3121
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3122
  %31 = sub nsw i32 %20, %27, !dbg !3123
  %32 = sext i32 %31 to i64, !dbg !3124
  %33 = shl nsw i64 %32, 4, !dbg !3125
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3122
  store i32 %20, i32* @nslots, align 4, !dbg !3126, !tbaa !793
  br label %34, !dbg !3127

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3080, metadata !665), !dbg !3096
  %36 = sext i32 %0 to i64, !dbg !3128
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3129
  %38 = load i64, i64* %37, align 8, !dbg !3129, !tbaa !3048
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3084, metadata !665), !dbg !3130
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3131
  %40 = load i8*, i8** %39, align 8, !dbg !3131, !tbaa !3035
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3086, metadata !665), !dbg !3132
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3133
  %42 = load i32, i32* %41, align 4, !dbg !3133, !tbaa !2125
  %43 = or i32 %42, 1, !dbg !3134
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3087, metadata !665), !dbg !3135
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3136
  %45 = load i32, i32* %44, align 8, !dbg !3136, !tbaa !2065
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3137
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3138
  %48 = load i8*, i8** %47, align 8, !dbg !3138, !tbaa !2151
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3139
  %50 = load i8*, i8** %49, align 8, !dbg !3139, !tbaa !2154
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3140
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3088, metadata !665), !dbg !3141
  %52 = icmp ugt i64 %38, %51, !dbg !3142
  br i1 %52, label %63, label %53, !dbg !3144

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3145
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3084, metadata !665), !dbg !3130
  store i64 %54, i64* %37, align 8, !dbg !3147, !tbaa !3048
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3148
  br i1 %55, label %57, label %56, !dbg !3150

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !3151
  br label %57, !dbg !3151

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2973, metadata !665) #12, !dbg !3152
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !3154
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3086, metadata !665), !dbg !3132
  store i8* %58, i8** %39, align 8, !dbg !3155, !tbaa !3035
  %59 = load i32, i32* %44, align 8, !dbg !3156, !tbaa !2065
  %60 = load i8*, i8** %47, align 8, !dbg !3157, !tbaa !2151
  %61 = load i8*, i8** %49, align 8, !dbg !3158, !tbaa !2154
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3159
  br label %63, !dbg !3160

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3086, metadata !665), !dbg !3132
  store i32 %6, i32* %5, align 4, !dbg !3161, !tbaa !793
  ret i8* %64, !dbg !3162
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3163 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3167, metadata !665), !dbg !3170
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3168, metadata !665), !dbg !3171
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3169, metadata !665), !dbg !3172
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3173
  ret i8* %4, !dbg !3174
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3175 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3179, metadata !665), !dbg !3180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3065, metadata !665) #12, !dbg !3181
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3066, metadata !665) #12, !dbg !3183
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3184
  ret i8* %2, !dbg !3185
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3186 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3190, metadata !665), !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3191, metadata !665), !dbg !3193
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3167, metadata !665) #12, !dbg !3194
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3168, metadata !665) #12, !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3169, metadata !665) #12, !dbg !3197
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3198
  ret i8* %3, !dbg !3199
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3200 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3208, metadata !3214), !dbg !3215
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3204, metadata !665), !dbg !3217
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3205, metadata !665), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3206, metadata !665), !dbg !3219
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3220
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3220
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3207, metadata !665), !dbg !3221
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3213, metadata !665) #12, !dbg !3222
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3223
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3223
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3208, metadata !665) #12, !dbg !3215
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3208, metadata !3224) #12, !dbg !3215
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3215
  %8 = icmp eq i32 %1, 10, !dbg !3225
  br i1 %8, label %9, label %10, !dbg !3227

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3228, !noalias !3229
  unreachable, !dbg !3228

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3208, metadata !3224) #12, !dbg !3215
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3232
  store i32 %1, i32* %11, align 8, !dbg !3232, !alias.scope !3229
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3232
  %13 = bitcast i32* %12 to i8*, !dbg !3232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !3232
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3233
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3207, metadata !665), !dbg !3221
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3234
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3235
  ret i8* %14, !dbg !3236
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3237 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3208, metadata !3214), !dbg !3246
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3241, metadata !665), !dbg !3248
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3242, metadata !665), !dbg !3249
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3243, metadata !665), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3244, metadata !665), !dbg !3251
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3252
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3252
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3245, metadata !665), !dbg !3253
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3213, metadata !665) #12, !dbg !3254
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3255
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3255
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3208, metadata !665) #12, !dbg !3246
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3208, metadata !3224) #12, !dbg !3246
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3246
  %9 = icmp eq i32 %1, 10, !dbg !3256
  br i1 %9, label %10, label %11, !dbg !3257

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3258, !noalias !3259
  unreachable, !dbg !3258

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3208, metadata !3224) #12, !dbg !3246
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3262
  store i32 %1, i32* %12, align 8, !dbg !3262, !alias.scope !3259
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3262
  %14 = bitcast i32* %13 to i8*, !dbg !3262
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !3262
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3263
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3245, metadata !665), !dbg !3253
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3264
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3265
  ret i8* %15, !dbg !3266
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3267 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3208, metadata !3214), !dbg !3273
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3271, metadata !665), !dbg !3276
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3272, metadata !665), !dbg !3277
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3204, metadata !665) #12, !dbg !3278
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3205, metadata !665) #12, !dbg !3279
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3206, metadata !665) #12, !dbg !3280
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3281
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3281
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3207, metadata !665) #12, !dbg !3282
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3213, metadata !665) #12, !dbg !3283
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3284
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3284
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3208, metadata !665) #12, !dbg !3273
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3208, metadata !3224) #12, !dbg !3273
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3273
  %7 = icmp eq i32 %0, 10, !dbg !3285
  br i1 %7, label %8, label %9, !dbg !3286

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3287, !noalias !3288
  unreachable, !dbg !3287

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3208, metadata !3224) #12, !dbg !3273
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3291
  store i32 %0, i32* %10, align 8, !dbg !3291, !alias.scope !3288
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3291
  %12 = bitcast i32* %11 to i8*, !dbg !3291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !3291
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3207, metadata !665) #12, !dbg !3282
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3293
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3294
  ret i8* %13, !dbg !3295
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3296 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3208, metadata !3214), !dbg !3303
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3300, metadata !665), !dbg !3306
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3301, metadata !665), !dbg !3307
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3302, metadata !665), !dbg !3308
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3241, metadata !665) #12, !dbg !3309
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3242, metadata !665) #12, !dbg !3310
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3243, metadata !665) #12, !dbg !3311
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3244, metadata !665) #12, !dbg !3312
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3313
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3313
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3245, metadata !665) #12, !dbg !3314
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3213, metadata !665) #12, !dbg !3315
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3316
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3316
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3208, metadata !665) #12, !dbg !3303
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3208, metadata !3224) #12, !dbg !3303
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3303
  %8 = icmp eq i32 %0, 10, !dbg !3317
  br i1 %8, label %9, label %10, !dbg !3318

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3319, !noalias !3320
  unreachable, !dbg !3319

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3208, metadata !3224) #12, !dbg !3303
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3323
  store i32 %0, i32* %11, align 8, !dbg !3323, !alias.scope !3320
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3323
  %13 = bitcast i32* %12 to i8*, !dbg !3323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !3323
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3245, metadata !665) #12, !dbg !3314
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !3325
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3326
  ret i8* %14, !dbg !3327
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3328 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3332, metadata !665), !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3333, metadata !665), !dbg !3337
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3334, metadata !665), !dbg !3338
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3339
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3339
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3340, !tbaa.struct !3341
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3335, metadata !665), !dbg !3342
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2084, metadata !665), !dbg !3343
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2085, metadata !665), !dbg !3345
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2086, metadata !665), !dbg !3346
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2087, metadata !665), !dbg !3347
  %6 = lshr i8 %2, 5, !dbg !3348
  %7 = zext i8 %6 to i64, !dbg !3348
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3349
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2088, metadata !665), !dbg !3350
  %9 = and i8 %2, 31, !dbg !3351
  %10 = zext i8 %9 to i32, !dbg !3352
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2090, metadata !665), !dbg !3353
  %11 = load i32, i32* %8, align 4, !dbg !3354, !tbaa !793
  %12 = lshr i32 %11, %10, !dbg !3355
  %13 = and i32 %12, 1, !dbg !3356
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2091, metadata !665), !dbg !3357
  %14 = xor i32 %13, 1, !dbg !3358
  %15 = shl i32 %14, %10, !dbg !3359
  %16 = xor i32 %15, %11, !dbg !3360
  store i32 %16, i32* %8, align 4, !dbg !3360, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3335, metadata !665), !dbg !3342
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3361
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3362
  ret i8* %17, !dbg !3363
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3364 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3368, metadata !665), !dbg !3370
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3369, metadata !665), !dbg !3371
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3332, metadata !665) #12, !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3333, metadata !665) #12, !dbg !3374
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3334, metadata !665) #12, !dbg !3375
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3376
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3377, !tbaa.struct !3341
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3335, metadata !665) #12, !dbg !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2084, metadata !665) #12, !dbg !3379
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2085, metadata !665) #12, !dbg !3381
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2086, metadata !665) #12, !dbg !3382
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2087, metadata !665) #12, !dbg !3383
  %5 = lshr i8 %1, 5, !dbg !3384
  %6 = zext i8 %5 to i64, !dbg !3384
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3385
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2088, metadata !665) #12, !dbg !3386
  %8 = and i8 %1, 31, !dbg !3387
  %9 = zext i8 %8 to i32, !dbg !3388
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2090, metadata !665) #12, !dbg !3389
  %10 = load i32, i32* %7, align 4, !dbg !3390, !tbaa !793
  %11 = lshr i32 %10, %9, !dbg !3391
  %12 = and i32 %11, 1, !dbg !3392
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2091, metadata !665) #12, !dbg !3393
  %13 = xor i32 %12, 1, !dbg !3394
  %14 = shl i32 %13, %9, !dbg !3395
  %15 = xor i32 %14, %10, !dbg !3396
  store i32 %15, i32* %7, align 4, !dbg !3396, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3335, metadata !665) #12, !dbg !3378
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3397
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3398
  ret i8* %16, !dbg !3399
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3400 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3402, metadata !665), !dbg !3403
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3368, metadata !665) #12, !dbg !3404
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3369, metadata !665) #12, !dbg !3406
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3332, metadata !665) #12, !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3333, metadata !665) #12, !dbg !3409
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3334, metadata !665) #12, !dbg !3410
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3411
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3411
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3412, !tbaa.struct !3341
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3335, metadata !665) #12, !dbg !3413
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2084, metadata !665) #12, !dbg !3414
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2085, metadata !665) #12, !dbg !3416
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2086, metadata !665) #12, !dbg !3417
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2087, metadata !665) #12, !dbg !3418
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3419
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2088, metadata !665) #12, !dbg !3420
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2090, metadata !665) #12, !dbg !3421
  %5 = load i32, i32* %4, align 4, !dbg !3422, !tbaa !793
  %6 = or i32 %5, 67108864, !dbg !3423
  store i32 %6, i32* %4, align 4, !dbg !3423, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3335, metadata !665) #12, !dbg !3413
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3424
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3425
  ret i8* %7, !dbg !3426
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3427 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3429, metadata !665), !dbg !3431
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3430, metadata !665), !dbg !3432
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3332, metadata !665) #12, !dbg !3433
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3333, metadata !665) #12, !dbg !3435
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3334, metadata !665) #12, !dbg !3436
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3437
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3438, !tbaa.struct !3341
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3335, metadata !665) #12, !dbg !3439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2084, metadata !665) #12, !dbg !3440
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2085, metadata !665) #12, !dbg !3442
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2086, metadata !665) #12, !dbg !3443
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2087, metadata !665) #12, !dbg !3444
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3445
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2088, metadata !665) #12, !dbg !3446
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2090, metadata !665) #12, !dbg !3447
  %6 = load i32, i32* %5, align 4, !dbg !3448, !tbaa !793
  %7 = or i32 %6, 67108864, !dbg !3449
  store i32 %7, i32* %5, align 4, !dbg !3449, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3335, metadata !665) #12, !dbg !3439
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3450
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3451
  ret i8* %8, !dbg !3452
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3453 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3208, metadata !3214), !dbg !3459
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3455, metadata !665), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3456, metadata !665), !dbg !3462
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3457, metadata !665), !dbg !3463
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3464
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3464
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3213, metadata !665) #12, !dbg !3465
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3466
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3466
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3208, metadata !665) #12, !dbg !3459
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3208, metadata !3224) #12, !dbg !3459
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3459
  %9 = icmp eq i32 %1, 10, !dbg !3467
  br i1 %9, label %10, label %11, !dbg !3468

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3469, !noalias !3470
  unreachable, !dbg !3469

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3208, metadata !3224) #12, !dbg !3459
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3473
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3473
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3474
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3475
  store i32 %1, i32* %13, align 8, !dbg !3475
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3475
  %15 = bitcast i32* %14 to i8*, !dbg !3475
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3458, metadata !665), !dbg !3476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2084, metadata !665), !dbg !3477
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2085, metadata !665), !dbg !3479
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2086, metadata !665), !dbg !3480
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2087, metadata !665), !dbg !3481
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3482
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2088, metadata !665), !dbg !3483
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2090, metadata !665), !dbg !3484
  %17 = load i32, i32* %16, align 4, !dbg !3485, !tbaa !793
  %18 = or i32 %17, 67108864, !dbg !3486
  store i32 %18, i32* %16, align 4, !dbg !3486, !tbaa !793
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3458, metadata !665), !dbg !3476
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3487
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3488
  ret i8* %19, !dbg !3489
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3490 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3494, metadata !665), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3495, metadata !665), !dbg !3499
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3496, metadata !665), !dbg !3500
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3497, metadata !665), !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3502, metadata !665) #12, !dbg !3512
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3507, metadata !665) #12, !dbg !3514
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3508, metadata !665) #12, !dbg !3515
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3509, metadata !665) #12, !dbg !3516
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3510, metadata !665) #12, !dbg !3517
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3518
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3518
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3519, !tbaa.struct !3341
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3511, metadata !665) #12, !dbg !3520
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2133, metadata !665) #12, !dbg !3521
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2134, metadata !665) #12, !dbg !3523
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2135, metadata !665) #12, !dbg !3524
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2133, metadata !665) #12, !dbg !3521
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2133, metadata !665) #12, !dbg !3521
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3525
  store i32 10, i32* %7, align 8, !dbg !3526, !tbaa !2065
  %8 = icmp ne i8* %1, null, !dbg !3527
  %9 = icmp ne i8* %2, null, !dbg !3528
  %10 = and i1 %8, %9, !dbg !3529
  br i1 %10, label %12, label %11, !dbg !3529

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3530
  unreachable, !dbg !3530

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3531
  store i8* %1, i8** %13, align 8, !dbg !3532, !tbaa !2151
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3533
  store i8* %2, i8** %14, align 8, !dbg !3534, !tbaa !2154
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3511, metadata !665) #12, !dbg !3520
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3535
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3536
  ret i8* %15, !dbg !3537
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3503 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3502, metadata !665), !dbg !3538
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3507, metadata !665), !dbg !3539
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3508, metadata !665), !dbg !3540
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3509, metadata !665), !dbg !3541
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3510, metadata !665), !dbg !3542
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3543
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3543
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3544, !tbaa.struct !3341
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3511, metadata !665), !dbg !3545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2133, metadata !665) #12, !dbg !3546
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2134, metadata !665) #12, !dbg !3548
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2135, metadata !665) #12, !dbg !3549
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2133, metadata !665) #12, !dbg !3546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2133, metadata !665) #12, !dbg !3546
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3550
  store i32 10, i32* %8, align 8, !dbg !3551, !tbaa !2065
  %9 = icmp ne i8* %1, null, !dbg !3552
  %10 = icmp ne i8* %2, null, !dbg !3553
  %11 = and i1 %9, %10, !dbg !3554
  br i1 %11, label %13, label %12, !dbg !3554

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3555
  unreachable, !dbg !3555

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3556
  store i8* %1, i8** %14, align 8, !dbg !3557, !tbaa !2151
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3558
  store i8* %2, i8** %15, align 8, !dbg !3559, !tbaa !2154
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3511, metadata !665), !dbg !3545
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3560
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3561
  ret i8* %16, !dbg !3562
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3563 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3567, metadata !665), !dbg !3570
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3568, metadata !665), !dbg !3571
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3569, metadata !665), !dbg !3572
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3494, metadata !665) #12, !dbg !3573
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3495, metadata !665) #12, !dbg !3575
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3496, metadata !665) #12, !dbg !3576
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3497, metadata !665) #12, !dbg !3577
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3502, metadata !665) #12, !dbg !3578
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3507, metadata !665) #12, !dbg !3580
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3508, metadata !665) #12, !dbg !3581
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3509, metadata !665) #12, !dbg !3582
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3510, metadata !665) #12, !dbg !3583
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3584
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3585, !tbaa.struct !3341
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3511, metadata !665) #12, !dbg !3586
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2133, metadata !665) #12, !dbg !3587
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2134, metadata !665) #12, !dbg !3589
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2135, metadata !665) #12, !dbg !3590
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2133, metadata !665) #12, !dbg !3587
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2133, metadata !665) #12, !dbg !3587
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3591
  store i32 10, i32* %6, align 8, !dbg !3592, !tbaa !2065
  %7 = icmp ne i8* %0, null, !dbg !3593
  %8 = icmp ne i8* %1, null, !dbg !3594
  %9 = and i1 %7, %8, !dbg !3595
  br i1 %9, label %11, label %10, !dbg !3595

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3596
  unreachable, !dbg !3596

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3597
  store i8* %0, i8** %12, align 8, !dbg !3598, !tbaa !2151
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3599
  store i8* %1, i8** %13, align 8, !dbg !3600, !tbaa !2154
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3511, metadata !665) #12, !dbg !3586
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3601
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3602
  ret i8* %14, !dbg !3603
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3604 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3608, metadata !665), !dbg !3612
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3609, metadata !665), !dbg !3613
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3610, metadata !665), !dbg !3614
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3611, metadata !665), !dbg !3615
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3502, metadata !665) #12, !dbg !3616
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3507, metadata !665) #12, !dbg !3618
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3508, metadata !665) #12, !dbg !3619
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3509, metadata !665) #12, !dbg !3620
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3510, metadata !665) #12, !dbg !3621
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3622
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3622
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3623, !tbaa.struct !3341
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3511, metadata !665) #12, !dbg !3624
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2133, metadata !665) #12, !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2134, metadata !665) #12, !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2135, metadata !665) #12, !dbg !3628
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2133, metadata !665) #12, !dbg !3625
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2133, metadata !665) #12, !dbg !3625
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3629
  store i32 10, i32* %7, align 8, !dbg !3630, !tbaa !2065
  %8 = icmp ne i8* %0, null, !dbg !3631
  %9 = icmp ne i8* %1, null, !dbg !3632
  %10 = and i1 %8, %9, !dbg !3633
  br i1 %10, label %12, label %11, !dbg !3633

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3634
  unreachable, !dbg !3634

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3635
  store i8* %0, i8** %13, align 8, !dbg !3636, !tbaa !2151
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3637
  store i8* %1, i8** %14, align 8, !dbg !3638, !tbaa !2154
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3511, metadata !665) #12, !dbg !3624
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3639
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3640
  ret i8* %15, !dbg !3641
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3642 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3646, metadata !665), !dbg !3649
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3647, metadata !665), !dbg !3650
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3648, metadata !665), !dbg !3651
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3652
  ret i8* %4, !dbg !3653
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3654 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3658, metadata !665), !dbg !3660
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3659, metadata !665), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3646, metadata !665) #12, !dbg !3662
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3647, metadata !665) #12, !dbg !3664
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3648, metadata !665) #12, !dbg !3665
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3666
  ret i8* %3, !dbg !3667
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3668 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3672, metadata !665), !dbg !3674
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3673, metadata !665), !dbg !3675
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3646, metadata !665) #12, !dbg !3676
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3647, metadata !665) #12, !dbg !3678
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3648, metadata !665) #12, !dbg !3679
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3680
  ret i8* %3, !dbg !3681
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3682 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3686, metadata !665), !dbg !3687
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3672, metadata !665) #12, !dbg !3688
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3673, metadata !665) #12, !dbg !3690
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3646, metadata !665) #12, !dbg !3691
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3647, metadata !665) #12, !dbg !3693
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3648, metadata !665) #12, !dbg !3694
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3695
  ret i8* %2, !dbg !3696
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3697 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3742, metadata !665), !dbg !3748
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3743, metadata !665), !dbg !3749
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3744, metadata !665), !dbg !3750
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3745, metadata !665), !dbg !3751
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3746, metadata !665), !dbg !3752
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3747, metadata !665), !dbg !3753
  %7 = icmp eq i8* %1, null, !dbg !3754
  br i1 %7, label %10, label %8, !dbg !3756

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3757
  br label %12, !dbg !3757

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3758
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #12, !dbg !3759
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !3759
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.79, i64 0, i64 0), i32 5) #12, !dbg !3760
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !3760
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
  ], !dbg !3761

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3762
  unreachable, !dbg !3762

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #12, !dbg !3764
  %20 = load i8*, i8** %4, align 8, !dbg !3764, !tbaa !672
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3764
  br label %146, !dbg !3765

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.81, i64 0, i64 0), i32 5) #12, !dbg !3766
  %24 = load i8*, i8** %4, align 8, !dbg !3766, !tbaa !672
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3766
  %26 = load i8*, i8** %25, align 8, !dbg !3766, !tbaa !672
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3766
  br label %146, !dbg !3767

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #12, !dbg !3768
  %30 = load i8*, i8** %4, align 8, !dbg !3768, !tbaa !672
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3768
  %32 = load i8*, i8** %31, align 8, !dbg !3768, !tbaa !672
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3768
  %34 = load i8*, i8** %33, align 8, !dbg !3768, !tbaa !672
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3768
  br label %146, !dbg !3769

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #12, !dbg !3770
  %38 = load i8*, i8** %4, align 8, !dbg !3770, !tbaa !672
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3770
  %40 = load i8*, i8** %39, align 8, !dbg !3770, !tbaa !672
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3770
  %42 = load i8*, i8** %41, align 8, !dbg !3770, !tbaa !672
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3770
  %44 = load i8*, i8** %43, align 8, !dbg !3770, !tbaa !672
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3770
  br label %146, !dbg !3771

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #12, !dbg !3772
  %48 = load i8*, i8** %4, align 8, !dbg !3772, !tbaa !672
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3772
  %50 = load i8*, i8** %49, align 8, !dbg !3772, !tbaa !672
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3772
  %52 = load i8*, i8** %51, align 8, !dbg !3772, !tbaa !672
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3772
  %54 = load i8*, i8** %53, align 8, !dbg !3772, !tbaa !672
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3772
  %56 = load i8*, i8** %55, align 8, !dbg !3772, !tbaa !672
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3772
  br label %146, !dbg !3773

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #12, !dbg !3774
  %60 = load i8*, i8** %4, align 8, !dbg !3774, !tbaa !672
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3774
  %62 = load i8*, i8** %61, align 8, !dbg !3774, !tbaa !672
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3774
  %64 = load i8*, i8** %63, align 8, !dbg !3774, !tbaa !672
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3774
  %66 = load i8*, i8** %65, align 8, !dbg !3774, !tbaa !672
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3774
  %68 = load i8*, i8** %67, align 8, !dbg !3774, !tbaa !672
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3774
  %70 = load i8*, i8** %69, align 8, !dbg !3774, !tbaa !672
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3774
  br label %146, !dbg !3775

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #12, !dbg !3776
  %74 = load i8*, i8** %4, align 8, !dbg !3776, !tbaa !672
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3776
  %76 = load i8*, i8** %75, align 8, !dbg !3776, !tbaa !672
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3776
  %78 = load i8*, i8** %77, align 8, !dbg !3776, !tbaa !672
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3776
  %80 = load i8*, i8** %79, align 8, !dbg !3776, !tbaa !672
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3776
  %82 = load i8*, i8** %81, align 8, !dbg !3776, !tbaa !672
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3776
  %84 = load i8*, i8** %83, align 8, !dbg !3776, !tbaa !672
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3776
  %86 = load i8*, i8** %85, align 8, !dbg !3776, !tbaa !672
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3776
  br label %146, !dbg !3777

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #12, !dbg !3778
  %90 = load i8*, i8** %4, align 8, !dbg !3778, !tbaa !672
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3778
  %92 = load i8*, i8** %91, align 8, !dbg !3778, !tbaa !672
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3778
  %94 = load i8*, i8** %93, align 8, !dbg !3778, !tbaa !672
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3778
  %96 = load i8*, i8** %95, align 8, !dbg !3778, !tbaa !672
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3778
  %98 = load i8*, i8** %97, align 8, !dbg !3778, !tbaa !672
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3778
  %100 = load i8*, i8** %99, align 8, !dbg !3778, !tbaa !672
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3778
  %102 = load i8*, i8** %101, align 8, !dbg !3778, !tbaa !672
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3778
  %104 = load i8*, i8** %103, align 8, !dbg !3778, !tbaa !672
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3778
  br label %146, !dbg !3779

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #12, !dbg !3780
  %108 = load i8*, i8** %4, align 8, !dbg !3780, !tbaa !672
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3780
  %110 = load i8*, i8** %109, align 8, !dbg !3780, !tbaa !672
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3780
  %112 = load i8*, i8** %111, align 8, !dbg !3780, !tbaa !672
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3780
  %114 = load i8*, i8** %113, align 8, !dbg !3780, !tbaa !672
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3780
  %116 = load i8*, i8** %115, align 8, !dbg !3780, !tbaa !672
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3780
  %118 = load i8*, i8** %117, align 8, !dbg !3780, !tbaa !672
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3780
  %120 = load i8*, i8** %119, align 8, !dbg !3780, !tbaa !672
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3780
  %122 = load i8*, i8** %121, align 8, !dbg !3780, !tbaa !672
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3780
  %124 = load i8*, i8** %123, align 8, !dbg !3780, !tbaa !672
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3780
  br label %146, !dbg !3781

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #12, !dbg !3782
  %128 = load i8*, i8** %4, align 8, !dbg !3782, !tbaa !672
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3782
  %130 = load i8*, i8** %129, align 8, !dbg !3782, !tbaa !672
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3782
  %132 = load i8*, i8** %131, align 8, !dbg !3782, !tbaa !672
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3782
  %134 = load i8*, i8** %133, align 8, !dbg !3782, !tbaa !672
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3782
  %136 = load i8*, i8** %135, align 8, !dbg !3782, !tbaa !672
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3782
  %138 = load i8*, i8** %137, align 8, !dbg !3782, !tbaa !672
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3782
  %140 = load i8*, i8** %139, align 8, !dbg !3782, !tbaa !672
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3782
  %142 = load i8*, i8** %141, align 8, !dbg !3782, !tbaa !672
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3782
  %144 = load i8*, i8** %143, align 8, !dbg !3782, !tbaa !672
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3782
  br label %146, !dbg !3783

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3784
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3785 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3789, metadata !665), !dbg !3795
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3790, metadata !665), !dbg !3796
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3791, metadata !665), !dbg !3797
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3792, metadata !665), !dbg !3798
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3793, metadata !665), !dbg !3799
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3794, metadata !665), !dbg !3800
  br label %6, !dbg !3801

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3794, metadata !665), !dbg !3800
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3803
  %9 = load i8*, i8** %8, align 8, !dbg !3803, !tbaa !672
  %10 = icmp eq i8* %9, null, !dbg !3805
  %11 = add i64 %7, 1, !dbg !3806
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3794, metadata !665), !dbg !3800
  br i1 %10, label %12, label %6, !dbg !3805, !llvm.loop !3807

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3809
  ret void, !dbg !3810
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3811 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3822, metadata !665), !dbg !3830
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3823, metadata !665), !dbg !3831
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3824, metadata !665), !dbg !3832
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3825, metadata !665), !dbg !3833
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3826, metadata !665), !dbg !3834
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3835
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3835
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3828, metadata !665), !dbg !3836
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !665), !dbg !3837
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !665), !dbg !3837
  %11 = load i32, i32* %8, align 8, !dbg !3838
  %12 = icmp ult i32 %11, 41, !dbg !3838
  br i1 %12, label %13, label %18, !dbg !3838

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3838
  %15 = sext i32 %11 to i64, !dbg !3838
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3838
  %17 = add i32 %11, 8, !dbg !3838
  store i32 %17, i32* %8, align 8, !dbg !3838
  br label %21, !dbg !3838

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3838
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3838
  store i8* %20, i8** %10, align 8, !dbg !3838
  br label %21, !dbg !3838

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3838
  %25 = load i8*, i8** %24, align 8, !dbg !3838
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3841
  store i8* %25, i8** %26, align 16, !dbg !3842, !tbaa !672
  %27 = icmp eq i8* %25, null, !dbg !3843
  br i1 %27, label %30, label %28, !dbg !3844

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !665), !dbg !3837
  %29 = icmp ult i32 %22, 41, !dbg !3838
  br i1 %29, label %35, label %32, !dbg !3838

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3845
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3846
  ret void, !dbg !3846

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3838
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3838
  store i8* %34, i8** %10, align 8, !dbg !3838
  br label %40, !dbg !3838

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3838
  %37 = sext i32 %22 to i64, !dbg !3838
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3838
  %39 = add i32 %22, 8, !dbg !3838
  store i32 %39, i32* %8, align 8, !dbg !3838
  br label %40, !dbg !3838

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3838
  %44 = load i8*, i8** %43, align 8, !dbg !3838
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3841
  store i8* %44, i8** %45, align 8, !dbg !3842, !tbaa !672
  %46 = icmp eq i8* %44, null, !dbg !3843
  br i1 %46, label %30, label %47, !dbg !3844

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !665), !dbg !3837
  %48 = icmp ult i32 %41, 41, !dbg !3838
  br i1 %48, label %52, label %49, !dbg !3838

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3838
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3838
  store i8* %51, i8** %10, align 8, !dbg !3838
  br label %57, !dbg !3838

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3838
  %54 = sext i32 %41 to i64, !dbg !3838
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3838
  %56 = add i32 %41, 8, !dbg !3838
  store i32 %56, i32* %8, align 8, !dbg !3838
  br label %57, !dbg !3838

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3838
  %61 = load i8*, i8** %60, align 8, !dbg !3838
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3841
  store i8* %61, i8** %62, align 16, !dbg !3842, !tbaa !672
  %63 = icmp eq i8* %61, null, !dbg !3843
  br i1 %63, label %30, label %64, !dbg !3844

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !665), !dbg !3837
  %65 = icmp ult i32 %58, 41, !dbg !3838
  br i1 %65, label %69, label %66, !dbg !3838

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3838
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3838
  store i8* %68, i8** %10, align 8, !dbg !3838
  br label %74, !dbg !3838

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3838
  %71 = sext i32 %58 to i64, !dbg !3838
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3838
  %73 = add i32 %58, 8, !dbg !3838
  store i32 %73, i32* %8, align 8, !dbg !3838
  br label %74, !dbg !3838

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3838
  %78 = load i8*, i8** %77, align 8, !dbg !3838
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3841
  store i8* %78, i8** %79, align 8, !dbg !3842, !tbaa !672
  %80 = icmp eq i8* %78, null, !dbg !3843
  br i1 %80, label %30, label %81, !dbg !3844

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !665), !dbg !3837
  %82 = icmp ult i32 %75, 41, !dbg !3838
  br i1 %82, label %86, label %83, !dbg !3838

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3838
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3838
  store i8* %85, i8** %10, align 8, !dbg !3838
  br label %91, !dbg !3838

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3838
  %88 = sext i32 %75 to i64, !dbg !3838
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3838
  %90 = add i32 %75, 8, !dbg !3838
  store i32 %90, i32* %8, align 8, !dbg !3838
  br label %91, !dbg !3838

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3838
  %95 = load i8*, i8** %94, align 8, !dbg !3838
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3841
  store i8* %95, i8** %96, align 16, !dbg !3842, !tbaa !672
  %97 = icmp eq i8* %95, null, !dbg !3843
  br i1 %97, label %30, label %98, !dbg !3844

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !665), !dbg !3837
  %99 = icmp ult i32 %92, 41, !dbg !3838
  br i1 %99, label %103, label %100, !dbg !3838

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3838
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3838
  store i8* %102, i8** %10, align 8, !dbg !3838
  br label %108, !dbg !3838

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3838
  %105 = sext i32 %92 to i64, !dbg !3838
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3838
  %107 = add i32 %92, 8, !dbg !3838
  store i32 %107, i32* %8, align 8, !dbg !3838
  br label %108, !dbg !3838

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3838
  %111 = load i8*, i8** %110, align 8, !dbg !3838
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3841
  store i8* %111, i8** %112, align 8, !dbg !3842, !tbaa !672
  %113 = icmp eq i8* %111, null, !dbg !3843
  br i1 %113, label %30, label %114, !dbg !3844

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !665), !dbg !3837
  %115 = load i8*, i8** %10, align 8, !dbg !3838
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3838
  store i8* %116, i8** %10, align 8, !dbg !3838
  %117 = bitcast i8* %115 to i8**, !dbg !3838
  %118 = load i8*, i8** %117, align 8, !dbg !3838
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3841
  store i8* %118, i8** %119, align 16, !dbg !3842, !tbaa !672
  %120 = icmp eq i8* %118, null, !dbg !3843
  br i1 %120, label %30, label %121, !dbg !3844

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !665), !dbg !3837
  %122 = load i8*, i8** %10, align 8, !dbg !3838
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3838
  store i8* %123, i8** %10, align 8, !dbg !3838
  %124 = bitcast i8* %122 to i8**, !dbg !3838
  %125 = load i8*, i8** %124, align 8, !dbg !3838
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3841
  store i8* %125, i8** %126, align 8, !dbg !3842, !tbaa !672
  %127 = icmp eq i8* %125, null, !dbg !3843
  br i1 %127, label %30, label %128, !dbg !3844

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !665), !dbg !3837
  %129 = load i8*, i8** %10, align 8, !dbg !3838
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3838
  store i8* %130, i8** %10, align 8, !dbg !3838
  %131 = bitcast i8* %129 to i8**, !dbg !3838
  %132 = load i8*, i8** %131, align 8, !dbg !3838
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3841
  store i8* %132, i8** %133, align 16, !dbg !3842, !tbaa !672
  %134 = icmp eq i8* %132, null, !dbg !3843
  br i1 %134, label %30, label %135, !dbg !3844

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !665), !dbg !3837
  %136 = load i8*, i8** %10, align 8, !dbg !3838
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3838
  store i8* %137, i8** %10, align 8, !dbg !3838
  %138 = bitcast i8* %136 to i8**, !dbg !3838
  %139 = load i8*, i8** %138, align 8, !dbg !3838
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3841
  store i8* %139, i8** %140, align 8, !dbg !3842, !tbaa !672
  %141 = icmp eq i8* %139, null, !dbg !3843
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !665), !dbg !3837
  %142 = select i1 %141, i64 9, i64 10, !dbg !3844
  br label %30, !dbg !3844
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3847 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3851, metadata !665), !dbg !3861
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3852, metadata !665), !dbg !3862
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3853, metadata !665), !dbg !3863
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3854, metadata !665), !dbg !3864
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3865
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3865
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3855, metadata !665), !dbg !3866
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3867
  call void @llvm.va_start(i8* nonnull %6), !dbg !3867
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3868
  call void @llvm.va_end(i8* nonnull %6), !dbg !3869
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3870
  ret void, !dbg !3870
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3871 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #12, !dbg !3872
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.93, i64 0, i64 0)) #12, !dbg !3872
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #12, !dbg !3873
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.95, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.96, i64 0, i64 0)) #12, !dbg !3873
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.97, i64 0, i64 0), i32 5) #12, !dbg !3874
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3874, !tbaa !672
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !3874
  ret void, !dbg !3875
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3876 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3880, metadata !665), !dbg !3882
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3881, metadata !665), !dbg !3883
  %3 = udiv i64 9223372036854775807, %1, !dbg !3884
  %4 = icmp ult i64 %3, %0, !dbg !3884
  br i1 %4, label %5, label %6, !dbg !3886

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3887
  unreachable, !dbg !3887

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3888
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3889, metadata !665) #12, !dbg !3896
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3898
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3895, metadata !665) #12, !dbg !3899
  %9 = icmp eq i8* %8, null, !dbg !3900
  %10 = icmp ne i64 %7, 0, !dbg !3902
  %11 = and i1 %10, %9, !dbg !3903
  br i1 %11, label %12, label %13, !dbg !3903

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3904
  unreachable, !dbg !3904

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3905
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3890 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3889, metadata !665), !dbg !3906
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3907
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3895, metadata !665), !dbg !3908
  %3 = icmp eq i8* %2, null, !dbg !3909
  %4 = icmp ne i64 %0, 0, !dbg !3910
  %5 = and i1 %4, %3, !dbg !3911
  br i1 %5, label %6, label %7, !dbg !3911

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3912
  unreachable, !dbg !3912

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3913
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3914 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3918, metadata !665), !dbg !3921
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3919, metadata !665), !dbg !3922
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3920, metadata !665), !dbg !3923
  %4 = udiv i64 9223372036854775807, %2, !dbg !3924
  %5 = icmp ult i64 %4, %1, !dbg !3924
  br i1 %5, label %6, label %7, !dbg !3926

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3927
  unreachable, !dbg !3927

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3928
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3929, metadata !665) #12, !dbg !3935
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3934, metadata !665) #12, !dbg !3937
  %9 = icmp eq i64 %8, 0, !dbg !3938
  %10 = icmp ne i8* %0, null, !dbg !3940
  %11 = and i1 %10, %9, !dbg !3941
  br i1 %11, label %12, label %13, !dbg !3941

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3942
  br label %19, !dbg !3944

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3945
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3929, metadata !665) #12, !dbg !3935
  %15 = icmp eq i8* %14, null, !dbg !3946
  %16 = icmp ne i64 %8, 0, !dbg !3948
  %17 = and i1 %16, %15, !dbg !3949
  br i1 %17, label %18, label %19, !dbg !3949

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3950
  unreachable, !dbg !3950

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3951
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3930 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3929, metadata !665), !dbg !3952
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3934, metadata !665), !dbg !3953
  %3 = icmp eq i64 %1, 0, !dbg !3954
  %4 = icmp ne i8* %0, null, !dbg !3955
  %5 = and i1 %4, %3, !dbg !3956
  br i1 %5, label %6, label %7, !dbg !3956

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3957
  br label %13, !dbg !3958

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3959
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3929, metadata !665), !dbg !3952
  %9 = icmp eq i8* %8, null, !dbg !3960
  %10 = icmp ne i64 %1, 0, !dbg !3961
  %11 = and i1 %10, %9, !dbg !3962
  br i1 %11, label %12, label %13, !dbg !3962

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3963
  unreachable, !dbg !3963

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3964
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !610 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !615, metadata !665), !dbg !3965
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !616, metadata !665), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !617, metadata !665), !dbg !3967
  %4 = load i64, i64* %1, align 8, !dbg !3968, !tbaa !3019
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !618, metadata !665), !dbg !3969
  %5 = icmp eq i8* %0, null, !dbg !3970
  br i1 %5, label %6, label %13, !dbg !3972

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3973
  br i1 %7, label %8, label %17, !dbg !3976

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3977
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !618, metadata !665), !dbg !3969
  %10 = icmp ugt i64 %2, 128, !dbg !3979
  %11 = zext i1 %10 to i64, !dbg !3979
  %12 = add nuw nsw i64 %9, %11, !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !618, metadata !665), !dbg !3969
  br label %17, !dbg !3981

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3982
  %15 = icmp ugt i64 %14, %4, !dbg !3985
  br i1 %15, label %20, label %16, !dbg !3986

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3987
  unreachable, !dbg !3987

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !618, metadata !665), !dbg !3969
  store i64 %18, i64* %1, align 8, !dbg !3988, !tbaa !3019
  %19 = mul i64 %18, %2, !dbg !3989
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3929, metadata !665) #12, !dbg !3990
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3934, metadata !665) #12, !dbg !3992
  br label %27, !dbg !3993

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3994
  %22 = add i64 %4, 1, !dbg !3995
  %23 = add i64 %22, %21, !dbg !3996
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !618, metadata !665), !dbg !3969
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !618, metadata !665), !dbg !3969
  store i64 %23, i64* %1, align 8, !dbg !3988, !tbaa !3019
  %24 = mul i64 %23, %2, !dbg !3989
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3929, metadata !665) #12, !dbg !3990
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3934, metadata !665) #12, !dbg !3992
  %25 = icmp eq i64 %24, 0, !dbg !3997
  br i1 %25, label %26, label %27, !dbg !3993

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !3998
  br label %34, !dbg !3999

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !4000
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3929, metadata !665) #12, !dbg !3990
  %30 = icmp eq i8* %29, null, !dbg !4001
  %31 = icmp ne i64 %28, 0, !dbg !4002
  %32 = and i1 %31, %30, !dbg !4003
  br i1 %32, label %33, label %34, !dbg !4003

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !4004
  unreachable, !dbg !4004

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4005
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !4006 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4008, metadata !665), !dbg !4009
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3889, metadata !665) #12, !dbg !4010
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4012
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3895, metadata !665) #12, !dbg !4013
  %3 = icmp eq i8* %2, null, !dbg !4014
  %4 = icmp ne i64 %0, 0, !dbg !4015
  %5 = and i1 %4, %3, !dbg !4016
  br i1 %5, label %6, label %7, !dbg !4016

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4017
  unreachable, !dbg !4017

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4018
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4019 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4023, metadata !665), !dbg !4025
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4024, metadata !665), !dbg !4026
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !615, metadata !665) #12, !dbg !4027
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !616, metadata !665) #12, !dbg !4029
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !617, metadata !665) #12, !dbg !4030
  %3 = load i64, i64* %1, align 8, !dbg !4031, !tbaa !3019
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !618, metadata !665) #12, !dbg !4032
  %4 = icmp eq i8* %0, null, !dbg !4033
  br i1 %4, label %5, label %8, !dbg !4034

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4035
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !618, metadata !665) #12, !dbg !4032
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !618, metadata !665) #12, !dbg !4032
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4036
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !618, metadata !665) #12, !dbg !4032
  store i64 %7, i64* %1, align 8, !dbg !4037, !tbaa !3019
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3929, metadata !665) #12, !dbg !4038
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3934, metadata !665) #12, !dbg !4040
  br label %17, !dbg !4041

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4042
  br i1 %9, label %11, label %10, !dbg !4043

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !4044
  unreachable, !dbg !4044

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4045
  %13 = add i64 %3, 1, !dbg !4046
  %14 = add i64 %13, %12, !dbg !4047
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !618, metadata !665) #12, !dbg !4032
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !618, metadata !665) #12, !dbg !4032
  store i64 %14, i64* %1, align 8, !dbg !4037, !tbaa !3019
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3929, metadata !665) #12, !dbg !4038
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3934, metadata !665) #12, !dbg !4040
  %15 = icmp eq i64 %14, 0, !dbg !4048
  br i1 %15, label %16, label %17, !dbg !4041

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !4049
  br label %24, !dbg !4050

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !4051
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3929, metadata !665) #12, !dbg !4038
  %20 = icmp eq i8* %19, null, !dbg !4052
  %21 = icmp ne i64 %18, 0, !dbg !4053
  %22 = and i1 %21, %20, !dbg !4054
  br i1 %22, label %23, label %24, !dbg !4054

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !4055
  unreachable, !dbg !4055

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4056
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4057 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4059, metadata !665), !dbg !4060
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3889, metadata !665) #12, !dbg !4061
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4063
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3895, metadata !665) #12, !dbg !4064
  %3 = icmp eq i8* %2, null, !dbg !4065
  %4 = icmp ne i64 %0, 0, !dbg !4066
  %5 = and i1 %4, %3, !dbg !4067
  br i1 %5, label %6, label %7, !dbg !4067

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4068
  unreachable, !dbg !4068

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4069
  ret i8* %2, !dbg !4070
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4071 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4073, metadata !665), !dbg !4076
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4074, metadata !665), !dbg !4077
  %3 = udiv i64 9223372036854775807, %1, !dbg !4078
  %4 = icmp ult i64 %3, %0, !dbg !4078
  br i1 %4, label %8, label %5, !dbg !4080

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !4081
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4075, metadata !665), !dbg !4082
  %7 = icmp eq i8* %6, null, !dbg !4083
  br i1 %7, label %8, label %9, !dbg !4084

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4085
  unreachable, !dbg !4085

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4086
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4087 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4093, metadata !665), !dbg !4095
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4094, metadata !665), !dbg !4096
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3889, metadata !665) #12, !dbg !4097
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !4099
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3895, metadata !665) #12, !dbg !4100
  %4 = icmp eq i8* %3, null, !dbg !4101
  %5 = icmp ne i64 %1, 0, !dbg !4102
  %6 = and i1 %5, %4, !dbg !4103
  br i1 %6, label %7, label %8, !dbg !4103

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4104
  unreachable, !dbg !4104

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4105
  ret i8* %3, !dbg !4106
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4107 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4109, metadata !665), !dbg !4110
  %2 = tail call i64 @strlen(i8* %0) #9, !dbg !4111
  %3 = add i64 %2, 1, !dbg !4112
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4093, metadata !665) #12, !dbg !4113
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4094, metadata !665) #12, !dbg !4115
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3889, metadata !665) #12, !dbg !4116
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !4118
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3895, metadata !665) #12, !dbg !4119
  %5 = icmp eq i8* %4, null, !dbg !4120
  %6 = icmp ne i64 %3, 0, !dbg !4121
  %7 = and i1 %6, %5, !dbg !4122
  br i1 %7, label %8, label %9, !dbg !4122

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4123
  unreachable, !dbg !4123

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !4124
  ret i8* %4, !dbg !4125
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4126 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4128, !tbaa !793
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.108, i64 0, i64 0), i32 5) #12, !dbg !4129
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* %2) #12, !dbg !4130
  tail call void @abort() #15, !dbg !4131
  unreachable, !dbg !4131
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4132 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4140, metadata !665), !dbg !4150
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4141, metadata !665), !dbg !4151
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4142, metadata !665), !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4143, metadata !665), !dbg !4153
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4144, metadata !665), !dbg !4154
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4145, metadata !665), !dbg !4155
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4146, metadata !665), !dbg !4156
  %9 = bitcast i64* %8 to i8*, !dbg !4157
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #12, !dbg !4157
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !4149, metadata !665), !dbg !4158
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #12, !dbg !4159
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4147, metadata !665), !dbg !4160
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ], !dbg !4161

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #17, !dbg !4162
  br label %26, !dbg !4161

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4165, !tbaa !3019
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4149, metadata !665), !dbg !4158
  %15 = icmp ult i64 %14, %2, !dbg !4169
  %16 = icmp ugt i64 %14, %3, !dbg !4170
  %17 = or i1 %15, %16, !dbg !4171
  br i1 %17, label %18, label %35, !dbg !4171

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4147, metadata !665), !dbg !4160
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4149, metadata !665), !dbg !4158
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4172
  %20 = tail call i32* @__errno_location() #17, !dbg !4175
  %21 = select i1 %19, i32 75, i32 34, !dbg !4176
  store i32 %21, i32* %20, align 4, !tbaa !793
  br label %26, !dbg !4177

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #17, !dbg !4178
  store i32 75, i32* %23, align 4, !dbg !4180, !tbaa !793
  br label %26, !dbg !4178

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #17, !dbg !4181
  store i32 0, i32* %25, align 4, !dbg !4183, !tbaa !793
  br label %26, !dbg !4181

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ], !dbg !4162
  %28 = icmp eq i32 %6, 0, !dbg !4184
  %29 = select i1 %28, i32 1, i32 %6, !dbg !4184
  %30 = load i32, i32* %27, align 4, !dbg !4162, !tbaa !793
  %31 = icmp eq i32 %30, 22, !dbg !4185
  %32 = select i1 %31, i32 0, i32 %30, !dbg !4162
  %33 = call i8* @quote(i8* %0) #12, !dbg !4186
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i64 0, i64 0), i8* %5, i8* %33) #12, !dbg !4187
  %34 = load i64, i64* %8, align 8, !dbg !4188, !tbaa !3019
  br label %35, !dbg !4189

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ], !dbg !4188
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !4149, metadata !665), !dbg !4158
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #12, !dbg !4190
  ret i64 %36, !dbg !4191
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4192 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4196, metadata !665), !dbg !4202
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4197, metadata !665), !dbg !4203
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4198, metadata !665), !dbg !4204
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4199, metadata !665), !dbg !4205
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4200, metadata !665), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4201, metadata !665), !dbg !4207
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4208
  ret i64 %7, !dbg !4209
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4210 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4216, metadata !665), !dbg !4234
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4217, metadata !665), !dbg !4235
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4218, metadata !665), !dbg !4236
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4219, metadata !665), !dbg !4237
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4220, metadata !665), !dbg !4238
  %7 = bitcast i8** %6 to i8*, !dbg !4239
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12, !dbg !4239
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4224, metadata !665), !dbg !4240
  %8 = icmp ult i32 %2, 37, !dbg !4241
  br i1 %8, label %10, label %9, !dbg !4241

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.116, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !4241
  unreachable, !dbg !4241

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4244
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4222, metadata !665), !dbg !4245
  %12 = tail call i32* @__errno_location() #17, !dbg !4246
  store i32 0, i32* %12, align 4, !dbg !4247, !tbaa !793
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4225, metadata !665), !dbg !4248
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4228, metadata !1274), !dbg !4249
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !4250
  %14 = load i16*, i16** %13, align 8, !tbaa !672
  br label %15, !dbg !4251

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !803
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !4228, metadata !665), !dbg !4249
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4225, metadata !665), !dbg !4248
  %18 = zext i8 %17 to i64, !dbg !4250
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4250
  %20 = load i16, i16* %19, align 2, !dbg !4250, !tbaa !1437
  %21 = and i16 %20, 8192, !dbg !4250
  %22 = icmp eq i16 %21, 0, !dbg !4251
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4252
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4225, metadata !665), !dbg !4248
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4228, metadata !1274), !dbg !4249
  br i1 %22, label %24, label %15, !dbg !4251, !llvm.loop !4253

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4244
  %26 = icmp eq i8 %17, 45, !dbg !4255
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4257, metadata !665) #12, !dbg !4267
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4265, metadata !665) #12, !dbg !4267
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4266, metadata !665) #12, !dbg !4267
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #12, !dbg !4269
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4223, metadata !665), !dbg !4270
  %29 = load i8*, i8** %25, align 8, !dbg !4271, !tbaa !672
  %30 = icmp eq i8* %29, %0, !dbg !4273
  br i1 %30, label %31, label %40, !dbg !4274

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4275
  br i1 %32, label %265, label %33, !dbg !4278

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4279, !tbaa !803
  %35 = icmp eq i8 %34, 0, !dbg !4279
  br i1 %35, label %265, label %36, !dbg !4280

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4279
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #9, !dbg !4281
  %39 = icmp eq i8* %38, null, !dbg !4281
  br i1 %39, label %265, label %47, !dbg !4282

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4283, !tbaa !793
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4285

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4224, metadata !665), !dbg !4240
  br label %43, !dbg !4286

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !4224, metadata !665), !dbg !4240
  %45 = icmp eq i8* %4, null, !dbg !4288
  br i1 %45, label %46, label %47, !dbg !4290

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4223, metadata !665), !dbg !4270
  store i64 %28, i64* %3, align 8, !dbg !4291, !tbaa !3019
  br label %265, !dbg !4293

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4294, !tbaa !803
  %51 = sext i8 %50 to i32, !dbg !4294
  %52 = icmp eq i8 %50, 0, !dbg !4295
  br i1 %52, label %262, label %53, !dbg !4296

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4229, metadata !665), !dbg !4297
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4232, metadata !665), !dbg !4298
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #9, !dbg !4299
  %55 = icmp eq i8* %54, null, !dbg !4299
  br i1 %55, label %56, label %58, !dbg !4301

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4223, metadata !665), !dbg !4270
  store i64 %49, i64* %3, align 8, !dbg !4302, !tbaa !3019
  %57 = or i32 %48, 2, !dbg !4304
  br label %265, !dbg !4305

; <label>:58:                                     ; preds = %53
  switch i32 %51, label %72 [
    i32 69, label %59
    i32 71, label %59
    i32 103, label %59
    i32 107, label %59
    i32 75, label %59
    i32 77, label %59
    i32 109, label %59
    i32 80, label %59
    i32 84, label %59
    i32 116, label %59
    i32 89, label %59
    i32 90, label %59
  ], !dbg !4306

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #9, !dbg !4307
  %61 = icmp eq i8* %60, null, !dbg !4307
  br i1 %61, label %72, label %62, !dbg !4310

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4311
  %64 = load i8, i8* %63, align 1, !dbg !4311, !tbaa !803
  %65 = sext i8 %64 to i32, !dbg !4311
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4312

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4313
  %68 = load i8, i8* %67, align 1, !dbg !4313, !tbaa !803
  %69 = icmp eq i8 %68, 66, !dbg !4316
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4232, metadata !665), !dbg !4298
  %70 = select i1 %69, i64 3, i64 1, !dbg !4317
  br label %72, !dbg !4317

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4229, metadata !665), !dbg !4297
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4232, metadata !665), !dbg !4298
  br label %72, !dbg !4318

; <label>:72:                                     ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  switch i32 %51, label %251 [
    i32 98, label %75
    i32 66, label %80
    i32 99, label %253
    i32 69, label %85
    i32 71, label %111
    i32 103, label %111
    i32 107, label %125
    i32 75, label %125
    i32 77, label %131
    i32 109, label %131
    i32 80, label %141
    i32 84, label %163
    i32 116, label %163
    i32 119, label %181
    i32 89, label %187
    i32 90, label %221
  ], !dbg !4319

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4320, metadata !665), !dbg !4326
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4329
  %77 = shl i64 %49, 9, !dbg !4331
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4332
  %79 = zext i1 %76 to i32, !dbg !4332
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4233, metadata !665), !dbg !4333
  br label %253, !dbg !4334

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4320, metadata !665), !dbg !4335
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4337
  %82 = shl i64 %49, 10, !dbg !4338
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4339
  %84 = zext i1 %81 to i32, !dbg !4339
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4233, metadata !665), !dbg !4333
  br label %253, !dbg !4340

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4351
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4351
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4349
  %86 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4351
  %87 = icmp ult i64 %86, %49, !dbg !4352
  %88 = mul i64 %49, %73, !dbg !4354
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4355
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4351
  %90 = icmp ult i64 %86, %89, !dbg !4352
  %91 = mul i64 %89, %73, !dbg !4354
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4355
  %93 = or i1 %87, %90, !dbg !4356
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4351
  %94 = icmp ult i64 %86, %92, !dbg !4352
  %95 = mul i64 %92, %73, !dbg !4354
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4355
  %97 = or i1 %93, %94, !dbg !4356
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4351
  %98 = icmp ult i64 %86, %96, !dbg !4352
  %99 = mul i64 %96, %73, !dbg !4354
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4355
  %101 = or i1 %97, %98, !dbg !4356
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4351
  %102 = icmp ult i64 %86, %100, !dbg !4352
  %103 = mul i64 %100, %73, !dbg !4354
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4355
  %105 = or i1 %101, %102, !dbg !4356
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4351
  %106 = icmp ult i64 %86, %104, !dbg !4352
  %107 = mul i64 %104, %73, !dbg !4354
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4355
  %109 = or i1 %105, %106, !dbg !4356
  %110 = zext i1 %109 to i32, !dbg !4356
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4349
  br label %253, !dbg !4357

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4360
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4360
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4358
  %112 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4360
  %113 = icmp ult i64 %112, %49, !dbg !4361
  %114 = mul i64 %49, %73, !dbg !4363
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4364
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4341, metadata !665), !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4341, metadata !665), !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4360
  %116 = icmp ult i64 %112, %115, !dbg !4361
  %117 = mul i64 %115, %73, !dbg !4363
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4364
  %119 = or i1 %113, %116, !dbg !4365
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4341, metadata !665), !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4341, metadata !665), !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4360
  %120 = icmp ult i64 %112, %118, !dbg !4361
  %121 = mul i64 %118, %73, !dbg !4363
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4364
  %123 = or i1 %119, %120, !dbg !4365
  %124 = zext i1 %123 to i32, !dbg !4365
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4341, metadata !665), !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4341, metadata !665), !dbg !4358
  br label %253, !dbg !4357

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4341, metadata !665), !dbg !4366
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4368
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4368
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4341, metadata !665), !dbg !4366
  %126 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4341, metadata !665), !dbg !4366
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4368
  %127 = icmp ult i64 %126, %49, !dbg !4369
  %128 = mul i64 %49, %73, !dbg !4371
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4372
  %130 = zext i1 %127 to i32, !dbg !4372
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4348, metadata !665), !dbg !4368
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4348, metadata !665), !dbg !4368
  br label %253, !dbg !4357

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4341, metadata !665), !dbg !4373
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4375
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4375
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4341, metadata !665), !dbg !4373
  %132 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4341, metadata !665), !dbg !4373
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4375
  %133 = icmp ult i64 %132, %49, !dbg !4376
  %134 = mul i64 %49, %73, !dbg !4378
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4379
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4341, metadata !665), !dbg !4373
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4341, metadata !665), !dbg !4373
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4341, metadata !665), !dbg !4373
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4375
  %136 = icmp ult i64 %132, %135, !dbg !4376
  %137 = mul i64 %135, %73, !dbg !4378
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4379
  %139 = or i1 %133, %136, !dbg !4380
  %140 = zext i1 %139 to i32, !dbg !4380
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4341, metadata !665), !dbg !4373
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4341, metadata !665), !dbg !4373
  br label %253, !dbg !4357

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4383
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4383
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4381
  %142 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4383
  %143 = icmp ult i64 %142, %49, !dbg !4384
  %144 = mul i64 %49, %73, !dbg !4386
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4387
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4383
  %146 = icmp ult i64 %142, %145, !dbg !4384
  %147 = mul i64 %145, %73, !dbg !4386
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4387
  %149 = or i1 %143, %146, !dbg !4388
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4383
  %150 = icmp ult i64 %142, %148, !dbg !4384
  %151 = mul i64 %148, %73, !dbg !4386
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4387
  %153 = or i1 %149, %150, !dbg !4388
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4383
  %154 = icmp ult i64 %142, %152, !dbg !4384
  %155 = mul i64 %152, %73, !dbg !4386
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4387
  %157 = or i1 %153, %154, !dbg !4388
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4383
  %158 = icmp ult i64 %142, %156, !dbg !4384
  %159 = mul i64 %156, %73, !dbg !4386
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4387
  %161 = or i1 %157, %158, !dbg !4388
  %162 = zext i1 %161 to i32, !dbg !4388
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4381
  br label %253, !dbg !4357

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4391
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4391
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4389
  %164 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4391
  %165 = icmp ult i64 %164, %49, !dbg !4392
  %166 = mul i64 %49, %73, !dbg !4394
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4395
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4391
  %168 = icmp ult i64 %164, %167, !dbg !4392
  %169 = mul i64 %167, %73, !dbg !4394
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4395
  %171 = or i1 %165, %168, !dbg !4396
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4391
  %172 = icmp ult i64 %164, %170, !dbg !4392
  %173 = mul i64 %170, %73, !dbg !4394
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4395
  %175 = or i1 %171, %172, !dbg !4396
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4341, metadata !665), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4391
  %176 = icmp ult i64 %164, %174, !dbg !4392
  %177 = mul i64 %174, %73, !dbg !4394
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4395
  %179 = or i1 %175, %176, !dbg !4396
  %180 = zext i1 %179 to i32, !dbg !4396
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4341, metadata !665), !dbg !4389
  br label %253, !dbg !4357

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4320, metadata !665), !dbg !4397
  %182 = icmp slt i64 %49, 0, !dbg !4399
  %183 = shl i64 %49, 1, !dbg !4400
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4401
  %185 = lshr i64 %49, 63, !dbg !4401
  %186 = trunc i64 %185 to i32, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4233, metadata !665), !dbg !4333
  br label %253, !dbg !4402

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4405
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4405
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4341, metadata !665), !dbg !4403
  %188 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4405
  %189 = icmp ult i64 %188, %49, !dbg !4406
  %190 = mul i64 %49, %73, !dbg !4408
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4409
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4405
  %192 = icmp ult i64 %188, %191, !dbg !4406
  %193 = mul i64 %191, %73, !dbg !4408
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4409
  %195 = or i1 %189, %192, !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4405
  %196 = icmp ult i64 %188, %194, !dbg !4406
  %197 = mul i64 %194, %73, !dbg !4408
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4409
  %199 = or i1 %195, %196, !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4405
  %200 = icmp ult i64 %188, %198, !dbg !4406
  %201 = mul i64 %198, %73, !dbg !4408
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4409
  %203 = or i1 %199, %200, !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4405
  %204 = icmp ult i64 %188, %202, !dbg !4406
  %205 = mul i64 %202, %73, !dbg !4408
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4409
  %207 = or i1 %203, %204, !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4405
  %208 = icmp ult i64 %188, %206, !dbg !4406
  %209 = mul i64 %206, %73, !dbg !4408
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4409
  %211 = or i1 %207, %208, !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4405
  %212 = icmp ult i64 %188, %210, !dbg !4406
  %213 = mul i64 %210, %73, !dbg !4408
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4409
  %215 = or i1 %211, %212, !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4405
  %216 = icmp ult i64 %188, %214, !dbg !4406
  %217 = mul i64 %214, %73, !dbg !4408
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4409
  %219 = or i1 %215, %216, !dbg !4410
  %220 = zext i1 %219 to i32, !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4403
  br label %253, !dbg !4357

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4413
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4413
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4411
  %222 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4413
  %223 = icmp ult i64 %222, %49, !dbg !4414
  %224 = mul i64 %49, %73, !dbg !4416
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4417
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4413
  %226 = icmp ult i64 %222, %225, !dbg !4414
  %227 = mul i64 %225, %73, !dbg !4416
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4417
  %229 = or i1 %223, %226, !dbg !4418
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4413
  %230 = icmp ult i64 %222, %228, !dbg !4414
  %231 = mul i64 %228, %73, !dbg !4416
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4417
  %233 = or i1 %229, %230, !dbg !4418
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4413
  %234 = icmp ult i64 %222, %232, !dbg !4414
  %235 = mul i64 %232, %73, !dbg !4416
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4417
  %237 = or i1 %233, %234, !dbg !4418
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4413
  %238 = icmp ult i64 %222, %236, !dbg !4414
  %239 = mul i64 %236, %73, !dbg !4416
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4417
  %241 = or i1 %237, %238, !dbg !4418
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4413
  %242 = icmp ult i64 %222, %240, !dbg !4414
  %243 = mul i64 %240, %73, !dbg !4416
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4417
  %245 = or i1 %241, %242, !dbg !4418
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !665), !dbg !4413
  %246 = icmp ult i64 %222, %244, !dbg !4414
  %247 = mul i64 %244, %73, !dbg !4416
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4417
  %249 = or i1 %245, %246, !dbg !4418
  %250 = zext i1 %249 to i32, !dbg !4418
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4341, metadata !665), !dbg !4411
  br label %253, !dbg !4357

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4223, metadata !665), !dbg !4270
  store i64 %49, i64* %3, align 8, !dbg !4419, !tbaa !3019
  %252 = or i32 %48, 2, !dbg !4420
  br label %265, !dbg !4421

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !4233, metadata !665), !dbg !4333
  %256 = or i32 %255, %48, !dbg !4357
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !4224, metadata !665), !dbg !4240
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4422
  store i8* %257, i8** %25, align 8, !dbg !4422, !tbaa !672
  %258 = load i8, i8* %257, align 1, !dbg !4423, !tbaa !803
  %259 = icmp eq i8 %258, 0, !dbg !4423
  %260 = or i32 %256, 2, !dbg !4425
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !4224, metadata !665), !dbg !4240
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4426
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4224, metadata !665), !dbg !4240
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4224, metadata !665), !dbg !4240
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !4224, metadata !665), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !4223, metadata !665), !dbg !4270
  store i64 %263, i64* %3, align 8, !dbg !4427, !tbaa !3019
  br label %265, !dbg !4428

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12, !dbg !4429
  ret i32 %266, !dbg !4429
}

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4430 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4433, metadata !665), !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4434, metadata !665), !dbg !4440
  %3 = icmp eq i64 %0, 0, !dbg !4441
  %4 = icmp eq i64 %1, 0, !dbg !4442
  %5 = or i1 %3, %4, !dbg !4443
  br i1 %5, label %12, label %6, !dbg !4443

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4444
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4436, metadata !665), !dbg !4445
  %8 = udiv i64 %7, %1, !dbg !4446
  %9 = icmp eq i64 %8, %0, !dbg !4448
  br i1 %9, label %12, label %10, !dbg !4449

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4450
  store i32 12, i32* %11, align 4, !dbg !4452, !tbaa !793
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4433, metadata !665), !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4434, metadata !665), !dbg !4440
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !4453
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4435, metadata !665), !dbg !4454
  br label %16, !dbg !4455

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4456
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4457 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4502, metadata !665), !dbg !4506
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4503, metadata !665), !dbg !4507
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4505, metadata !665), !dbg !4508
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4509
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4504, metadata !665), !dbg !4510
  %3 = icmp slt i32 %2, 0, !dbg !4511
  br i1 %3, label %4, label %6, !dbg !4513

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4514
  br label %24, !dbg !4515

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4516
  %8 = icmp eq i32 %7, 0, !dbg !4516
  br i1 %8, label %13, label %9, !dbg !4518

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4519
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4520
  %12 = icmp eq i64 %11, -1, !dbg !4521
  br i1 %12, label %16, label %13, !dbg !4522

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4523
  %15 = icmp eq i32 %14, 0, !dbg !4523
  br i1 %15, label %16, label %18, !dbg !4524

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4503, metadata !665), !dbg !4507
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4525
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4505, metadata !665), !dbg !4508
  br label %24, !dbg !4526

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4527
  %20 = load i32, i32* %19, align 4, !dbg !4527, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4503, metadata !665), !dbg !4507
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4503, metadata !665), !dbg !4507
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4525
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4505, metadata !665), !dbg !4508
  %22 = icmp eq i32 %20, 0, !dbg !4528
  br i1 %22, label %24, label %23, !dbg !4526

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4530, !tbaa !793
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4505, metadata !665), !dbg !4508
  br label %24, !dbg !4532

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4533
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4534 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4579, metadata !665), !dbg !4580
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4581
  br i1 %2, label %6, label %3, !dbg !4583

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4584
  %5 = icmp eq i32 %4, 0, !dbg !4584
  br i1 %5, label %6, label %8, !dbg !4585

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4586
  br label %17, !dbg !4587

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4588, metadata !665) #12, !dbg !4593
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4595
  %10 = load i32, i32* %9, align 8, !dbg !4595, !tbaa !4597
  %11 = and i32 %10, 256, !dbg !4598
  %12 = icmp eq i32 %11, 0, !dbg !4598
  br i1 %12, label %15, label %13, !dbg !4599

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4600
  br label %15, !dbg !4600

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4601
  br label %17, !dbg !4602

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4603
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4604 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4649, metadata !665), !dbg !4655
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4650, metadata !665), !dbg !4656
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4651, metadata !665), !dbg !4657
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4658
  %5 = load i8*, i8** %4, align 8, !dbg !4658, !tbaa !1106
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4659
  %7 = load i8*, i8** %6, align 8, !dbg !4659, !tbaa !1105
  %8 = icmp eq i8* %5, %7, !dbg !4660
  br i1 %8, label %9, label %28, !dbg !4661

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4662
  %11 = load i8*, i8** %10, align 8, !dbg !4662, !tbaa !1014
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4663
  %13 = load i8*, i8** %12, align 8, !dbg !4663, !tbaa !4664
  %14 = icmp eq i8* %11, %13, !dbg !4665
  br i1 %14, label %15, label %28, !dbg !4666

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4667
  %17 = load i8*, i8** %16, align 8, !dbg !4667, !tbaa !4668
  %18 = icmp eq i8* %17, null, !dbg !4669
  br i1 %18, label %19, label %28, !dbg !4670

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4671
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4672
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4652, metadata !665), !dbg !4673
  %22 = icmp eq i64 %21, -1, !dbg !4674
  br i1 %22, label %30, label %23, !dbg !4676

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4677
  %25 = load i32, i32* %24, align 8, !dbg !4678, !tbaa !4597
  %26 = and i32 %25, -17, !dbg !4678
  store i32 %26, i32* %24, align 8, !dbg !4678, !tbaa !4597
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4679
  store i64 %21, i64* %27, align 8, !dbg !4680, !tbaa !4681
  br label %30, !dbg !4682

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4683
  br label %30, !dbg !4684

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4685
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4686 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4703, metadata !665), !dbg !4712
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4704, metadata !665), !dbg !4713
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4705, metadata !665), !dbg !4714
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4706, metadata !665), !dbg !4715
  %6 = bitcast i32* %5 to i8*, !dbg !4716
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4716
  %7 = icmp eq i32* %0, null, !dbg !4717
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4703, metadata !665), !dbg !4712
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4719
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4703, metadata !665), !dbg !4712
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4720
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4707, metadata !665), !dbg !4721
  %10 = icmp ugt i64 %9, -3, !dbg !4722
  %11 = icmp ne i64 %2, 0, !dbg !4723
  %12 = and i1 %11, %10, !dbg !4724
  br i1 %12, label %13, label %18, !dbg !4724

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4725
  br i1 %14, label %18, label %15, !dbg !4726

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4727, !tbaa !803
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4709, metadata !665), !dbg !4728
  %17 = zext i8 %16 to i32, !dbg !4729
  store i32 %17, i32* %8, align 4, !dbg !4730, !tbaa !793
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4731
  ret i64 %19, !dbg !4731
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4732 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4777, metadata !665), !dbg !4782
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4783
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4784, metadata !665), !dbg !4787
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4789
  %4 = load i32, i32* %3, align 8, !dbg !4789, !tbaa !4597
  %5 = and i32 %4, 32, !dbg !4789
  %6 = icmp eq i32 %5, 0, !dbg !4790
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4791
  %8 = icmp ne i32 %7, 0, !dbg !4792
  br i1 %6, label %9, label %19, !dbg !4793

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4795
  %11 = xor i1 %8, true, !dbg !4796
  %12 = or i1 %10, %11, !dbg !4796
  %13 = sext i1 %8 to i32, !dbg !4796
  br i1 %12, label %22, label %14, !dbg !4796

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4797
  %16 = load i32, i32* %15, align 4, !dbg !4797, !tbaa !793
  %17 = icmp ne i32 %16, 9, !dbg !4798
  %18 = sext i1 %17 to i32, !dbg !4799
  br label %22, !dbg !4799

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4800

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4802
  store i32 0, i32* %21, align 4, !dbg !4804, !tbaa !793
  br label %22, !dbg !4802

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4805
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4806 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4809, metadata !665), !dbg !4812
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4810, metadata !665), !dbg !4813
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !4814
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4811, metadata !665), !dbg !4815
  %3 = icmp eq i8* %2, null, !dbg !4816
  br i1 %3, label %11, label %4, !dbg !4818

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i64 0, i64 0)) #9, !dbg !4819
  %6 = icmp eq i32 %5, 0, !dbg !4824
  br i1 %6, label %10, label %7, !dbg !4825

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0)) #9, !dbg !4826
  %9 = icmp eq i32 %8, 0, !dbg !4827
  br i1 %9, label %10, label %11, !dbg !4828

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4810, metadata !665), !dbg !4813
  br label %11, !dbg !4829

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4830
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4831 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4837, metadata !665), !dbg !4911
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4904, metadata !665), !dbg !4914
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4915
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4835, metadata !665), !dbg !4916
  %4 = icmp eq i8* %3, null, !dbg !4917
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), i8* %3, !dbg !4919
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4835, metadata !665), !dbg !4916
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4920, !tbaa !672
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4851, metadata !665) #12, !dbg !4921
  %7 = icmp eq i8* %6, null, !dbg !4922
  br i1 %7, label %8, label %123, !dbg !4923

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.136, i64 0, i64 0)) #12, !dbg !4924
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4852, metadata !665) #12, !dbg !4925
  %10 = icmp eq i8* %9, null, !dbg !4926
  br i1 %10, label %14, label %11, !dbg !4928

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4929, !tbaa !803
  %13 = icmp eq i8 %12, 0, !dbg !4930
  br i1 %13, label %14, label %15, !dbg !4931

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4932

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.137, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4852, metadata !665) #12, !dbg !4925
  %17 = tail call i64 @strlen(i8* nonnull %16) #9, !dbg !4933
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4855, metadata !665) #12, !dbg !4934
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4857, metadata !665) #12, !dbg !4935
  %18 = icmp eq i64 %17, 0, !dbg !4936
  br i1 %18, label %24, label %19, !dbg !4937

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4938
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4938
  %22 = load i8, i8* %21, align 1, !dbg !4938, !tbaa !803
  %23 = icmp ne i8 %22, 47, !dbg !4938
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4939
  %27 = add i64 %17, 14, !dbg !4940
  %28 = add i64 %27, %26, !dbg !4941
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !4942
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4854, metadata !665) #12, !dbg !4943
  %30 = icmp eq i8* %29, null, !dbg !4944
  br i1 %30, label %121, label %31, !dbg !4944

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !4945
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4948

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4949, !tbaa !803
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4951
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.138, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4952
  br label %37, !dbg !4953

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4951
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.138, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4952
  br label %37, !dbg !4953

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !4954
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4859, metadata !665) #12, !dbg !4955
  %39 = icmp slt i32 %38, 0, !dbg !4956
  br i1 %39, label %119, label %40, !dbg !4957

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.139, i64 0, i64 0)) #12, !dbg !4958
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4860, metadata !665) #12, !dbg !4959
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4960
  br i1 %42, label %43, label %45, !dbg !4961

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #12, !dbg !4962
  br label %119, !dbg !4964

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4901, metadata !665) #12, !dbg !4965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4902, metadata !665) #12, !dbg !4966
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4967

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4968

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4901, metadata !665) #12, !dbg !4965
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4902, metadata !665) #12, !dbg !4966
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4968
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4969
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4970, metadata !665) #12, !dbg !4975
  %54 = load i8*, i8** %48, align 8, !dbg !4977, !tbaa !1105
  %55 = load i8*, i8** %49, align 8, !dbg !4977, !tbaa !1106
  %56 = icmp ult i8* %54, %55, !dbg !4977
  br i1 %56, label %59, label %57, !dbg !4977, !prof !1019

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4977
  br label %63, !dbg !4977

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4977
  store i8* %60, i8** %48, align 8, !dbg !4977, !tbaa !1105
  %61 = load i8, i8* %54, align 1, !dbg !4977, !tbaa !803
  %62 = zext i8 %61 to i32, !dbg !4977
  br label %63, !dbg !4977

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4977
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4903, metadata !665) #12, !dbg !4978
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4979, !llvm.loop !4980

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4985

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4970, metadata !665) #12, !dbg !4987
  %67 = load i8*, i8** %48, align 8, !dbg !4985, !tbaa !1105
  %68 = load i8*, i8** %49, align 8, !dbg !4985, !tbaa !1106
  %69 = icmp ult i8* %67, %68, !dbg !4985
  br i1 %69, label %72, label %70, !dbg !4985, !prof !1019

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4985
  br label %76, !dbg !4985

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4985
  store i8* %73, i8** %48, align 8, !dbg !4985, !tbaa !1105
  %74 = load i8, i8* %67, align 1, !dbg !4985, !tbaa !803
  %75 = zext i8 %74 to i32, !dbg !4985
  br label %76, !dbg !4985

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4985
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4903, metadata !665) #12, !dbg !4978
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4988, !llvm.loop !4989

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #12, !dbg !4992
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.140, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !4993
  %81 = icmp slt i32 %80, 2, !dbg !4995
  br i1 %81, label %112, label %82, !dbg !4996

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #9, !dbg !4997
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4908, metadata !665) #12, !dbg !4998
  %84 = call i64 @strlen(i8* nonnull %47) #9, !dbg !4999
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4909, metadata !665) #12, !dbg !5000
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4910, metadata !665) #12, !dbg !5001
  %85 = icmp eq i64 %51, 0, !dbg !5002
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !5004

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4902, metadata !665) #12, !dbg !4966
  %90 = add i64 %87, 2, !dbg !5005
  %91 = call noalias i8* @malloc(i64 %90) #12, !dbg !5007
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4901, metadata !665) #12, !dbg !4965
  br label %96, !dbg !5008

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !5009
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4902, metadata !665) #12, !dbg !4966
  %94 = add i64 %93, 1, !dbg !5011
  %95 = call i8* @realloc(i8* %52, i64 %94) #12, !dbg !5012
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4901, metadata !665) #12, !dbg !4965
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4901, metadata !665) #12, !dbg !4965
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4902, metadata !665) #12, !dbg !4966
  %99 = icmp eq i8* %98, null, !dbg !5013
  br i1 %99, label %100, label %102, !dbg !5015

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4902, metadata !665) #12, !dbg !4966
  call void @free(i8* %52) #12, !dbg !5016
  br label %112, !dbg !5018

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !5019
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !5019
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !5020
  %104 = xor i64 %84, -1, !dbg !5021
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5021
  %106 = xor i64 %83, -1, !dbg !5022
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !5022
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !5023, metadata !665) #12, !dbg !5031
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !5030, metadata !665) #12, !dbg !5031
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #12, !dbg !5033
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #12, !dbg !5034
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5023, metadata !665) #12, !dbg !5035
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !5030, metadata !665) #12, !dbg !5035
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #12, !dbg !5037
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #12, !dbg !5038
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4901, metadata !665) #12, !dbg !4965
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4902, metadata !665) #12, !dbg !4966
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !5019
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !5019
  br label %50, !dbg !5039, !llvm.loop !4989

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !5019
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !5019
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !5040
  %116 = icmp eq i64 %113, 0, !dbg !5041
  br i1 %116, label %119, label %117, !dbg !5043

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !5044
  store i8 0, i8* %118, align 1, !dbg !5046, !tbaa !803
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4851, metadata !665) #12, !dbg !4921
  call void @free(i8* %29) #12, !dbg !5047
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4851, metadata !665) #12, !dbg !4921
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !5048, !tbaa !672
  br label %123, !dbg !5049

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4851, metadata !665) #12, !dbg !4921
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4836, metadata !665), !dbg !5050
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4836, metadata !665), !dbg !5050
  %125 = load i8, i8* %124, align 1, !dbg !5051, !tbaa !803
  %126 = icmp eq i8 %125, 0, !dbg !5053
  br i1 %126, label %152, label %127, !dbg !5054

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !5055

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4836, metadata !665), !dbg !5050
  %131 = call i32 @strcmp(i8* %5, i8* %130) #9, !dbg !5055
  %132 = icmp eq i32 %131, 0, !dbg !5057
  br i1 %132, label %139, label %133, !dbg !5058

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !5059
  br i1 %134, label %135, label %143, !dbg !5060

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !5061
  %137 = load i8, i8* %136, align 1, !dbg !5061, !tbaa !803
  %138 = icmp eq i8 %137, 0, !dbg !5062
  br i1 %138, label %139, label %143, !dbg !5063

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #9, !dbg !5064
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !5066
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !5067
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4835, metadata !665), !dbg !4916
  br label %152, !dbg !5068

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #9, !dbg !5069
  %145 = add i64 %144, 1, !dbg !5070
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !5071
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4836, metadata !665), !dbg !5050
  %147 = call i64 @strlen(i8* %146) #9, !dbg !5072
  %148 = add i64 %147, 1, !dbg !5073
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !5074
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4836, metadata !665), !dbg !5050
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4836, metadata !665), !dbg !5050
  %150 = load i8, i8* %149, align 1, !dbg !5051, !tbaa !803
  %151 = icmp eq i8 %150, 0, !dbg !5053
  br i1 %151, label %152, label %128, !dbg !5054, !llvm.loop !5075

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4835, metadata !665), !dbg !4916
  %154 = load i8, i8* %153, align 1, !dbg !5077, !tbaa !803
  %155 = icmp eq i8 %154, 0, !dbg !5079
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), i8* %153, !dbg !5080
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4835, metadata !665), !dbg !4916
  ret i8* %156, !dbg !5081
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
attributes #7 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly nounwind }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !158, !164, !172, !594, !179, !186, !597, !240, !605, !622, !624, !635, !639, !641, !643, !645, !647, !650, !652, !249}
!llvm.ident = !{!654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654}
!llvm.module.flags = !{!655, !656, !657, !658, !659}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "max_width", scope: !2, file: !3, line: 190, type: !50, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !54)
!3 = !DIFile(filename: "src/fmt.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19, !28}
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
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 46, size: 32, elements: !30)
!29 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!31 = !DIEnumerator(name: "_ISupper", value: 256)
!32 = !DIEnumerator(name: "_ISlower", value: 512)
!33 = !DIEnumerator(name: "_ISalpha", value: 1024)
!34 = !DIEnumerator(name: "_ISdigit", value: 2048)
!35 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!36 = !DIEnumerator(name: "_ISspace", value: 8192)
!37 = !DIEnumerator(name: "_ISprint", value: 16384)
!38 = !DIEnumerator(name: "_ISgraph", value: 32768)
!39 = !DIEnumerator(name: "_ISblank", value: 1)
!40 = !DIEnumerator(name: "_IScntrl", value: 2)
!41 = !DIEnumerator(name: "_ISpunct", value: 4)
!42 = !DIEnumerator(name: "_ISalnum", value: 8)
!43 = !{!44, !45, !47, !48, !49, !50, !51, !52}
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "COST", file: !3, line: 64, baseType: !53)
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !{!55, !58, !60, !62, !64, !0, !68, !70, !72, !74, !76, !96, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !133, !135, !154}
!55 = !DIGlobalVariableExpression(var: !56)
!56 = distinct !DIGlobalVariable(name: "crown", scope: !2, file: !3, line: 174, type: !57, isLocal: true, isDefinition: true)
!57 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!58 = !DIGlobalVariableExpression(var: !59)
!59 = distinct !DIGlobalVariable(name: "tagged", scope: !2, file: !3, line: 177, type: !57, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61)
!61 = distinct !DIGlobalVariable(name: "split", scope: !2, file: !3, line: 180, type: !57, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63)
!63 = distinct !DIGlobalVariable(name: "uniform", scope: !2, file: !3, line: 183, type: !57, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65)
!65 = distinct !DIGlobalVariable(name: "prefix", scope: !2, file: !3, line: 186, type: !66, isLocal: true, isDefinition: true)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!68 = !DIGlobalVariableExpression(var: !69)
!69 = distinct !DIGlobalVariable(name: "prefix_full_length", scope: !2, file: !3, line: 195, type: !50, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71)
!71 = distinct !DIGlobalVariable(name: "prefix_lead_space", scope: !2, file: !3, line: 198, type: !50, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73)
!73 = distinct !DIGlobalVariable(name: "prefix_length", scope: !2, file: !3, line: 201, type: !50, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "goal_width", scope: !2, file: !3, line: 204, type: !50, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77)
!77 = distinct !DIGlobalVariable(name: "infomap", scope: !78, file: !79, line: 632, type: !93, isLocal: true, isDefinition: true)
!78 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !79, file: !79, line: 630, type: !80, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !82)
!79 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!80 = !DISubroutineType(types: !81)
!81 = !{null, !66}
!82 = !{!83, !84, !85, !92}
!83 = !DILocalVariable(name: "program", arg: 1, scope: !78, file: !79, line: 630, type: !66)
!84 = !DILocalVariable(name: "node", scope: !78, file: !79, line: 642, type: !66)
!85 = !DILocalVariable(name: "map_prog", scope: !78, file: !79, line: 643, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !78, file: !79, line: 632, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !88, file: !79, line: 632, baseType: !66, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !88, file: !79, line: 632, baseType: !66, size: 64, offset: 64)
!92 = !DILocalVariable(name: "lc_messages", scope: !78, file: !79, line: 655, type: !66)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 896, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 7)
!96 = !DIGlobalVariableExpression(var: !97)
!97 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 302, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 2560, elements: !108)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !101, line: 50, size: 256, elements: !102)
!101 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !{!103, !104, !105, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !101, line: 52, baseType: !66, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !100, file: !101, line: 55, baseType: !50, size: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !100, file: !101, line: 56, baseType: !106, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !100, file: !101, line: 57, baseType: !50, size: 32, offset: 192)
!108 = !{!109}
!109 = !DISubrange(count: 10)
!110 = !DIGlobalVariableExpression(var: !111)
!111 = distinct !DIGlobalVariable(name: "tabs", scope: !2, file: !3, line: 232, type: !57, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "other_indent", scope: !2, file: !3, line: 241, type: !50, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115)
!115 = distinct !DIGlobalVariable(name: "in_column", scope: !2, file: !3, line: 209, type: !50, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117)
!117 = distinct !DIGlobalVariable(name: "next_prefix_indent", scope: !2, file: !3, line: 255, type: !50, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119)
!119 = distinct !DIGlobalVariable(name: "next_char", scope: !2, file: !3, line: 251, type: !50, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121)
!121 = distinct !DIGlobalVariable(name: "last_line_length", scope: !2, file: !3, line: 260, type: !50, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "out_column", scope: !2, file: !3, line: 212, type: !50, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125)
!125 = distinct !DIGlobalVariable(name: "prefix_indent", scope: !2, file: !3, line: 235, type: !50, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127)
!127 = distinct !DIGlobalVariable(name: "first_indent", scope: !2, file: !3, line: 238, type: !50, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129)
!129 = distinct !DIGlobalVariable(name: "parabuf", scope: !2, file: !3, line: 216, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 40000, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 5000)
!133 = !DIGlobalVariableExpression(var: !134)
!134 = distinct !DIGlobalVariable(name: "wptr", scope: !2, file: !3, line: 219, type: !45, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "unused_word_type", scope: !2, file: !3, line: 223, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 320000, elements: !152)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "WORD", file: !3, line: 129, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Word", file: !3, line: 131, size: 320, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !139, file: !3, line: 136, baseType: !66, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !139, file: !3, line: 137, baseType: !50, size: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !139, file: !3, line: 138, baseType: !50, size: 32, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "paren", scope: !139, file: !3, line: 139, baseType: !44, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !139, file: !3, line: 140, baseType: !44, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !139, file: !3, line: 141, baseType: !44, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !139, file: !3, line: 142, baseType: !44, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !139, file: !3, line: 146, baseType: !50, size: 32, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "best_cost", scope: !139, file: !3, line: 147, baseType: !52, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next_break", scope: !139, file: !3, line: 148, baseType: !151, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!152 = !{!153}
!153 = !DISubrange(count: 1000)
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "word_limit", scope: !2, file: !3, line: 228, type: !151, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157)
!157 = distinct !DIGlobalVariable(name: "Version", scope: !158, file: !159, line: 2, type: !66, isLocal: false, isDefinition: true)
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160, globals: !161)
!159 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!160 = !{}
!161 = !{!156}
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "file_name", scope: !164, file: !169, line: 36, type: !66, isLocal: true, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160, globals: !166)
!165 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!166 = !{!162, !167}
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !164, file: !169, line: 46, type: !57, isLocal: true, isDefinition: true)
!169 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "exit_failure", scope: !172, file: !175, line: 24, type: !176, isLocal: false, isDefinition: true)
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160, globals: !174)
!173 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!174 = !{!170}
!175 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!176 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "program_name", scope: !179, file: !183, line: 33, type: !66, isLocal: false, isDefinition: true)
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160, retainedTypes: !181, globals: !182)
!180 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!181 = !{!47, !45}
!182 = !{!177}
!183 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!184 = !DIGlobalVariableExpression(var: !185)
!185 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !186, file: !201, line: 77, type: !234, isLocal: false, isDefinition: true)
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !188, retainedTypes: !194, globals: !198)
!187 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !{!5, !189, !28}
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !190)
!190 = !{!191, !192, !193}
!191 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!192 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!193 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!194 = !{!50, !51, !195, !45}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !196, line: 62, baseType: !197)
!196 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!197 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!198 = !{!184, !199, !204, !216, !218, !223, !230, !232}
!199 = !DIGlobalVariableExpression(var: !200)
!200 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !186, file: !201, line: 93, type: !202, isLocal: false, isDefinition: true)
!201 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 320, elements: !108)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!204 = !DIGlobalVariableExpression(var: !205)
!205 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !186, file: !201, line: 1043, type: !206, isLocal: false, isDefinition: true)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !201, line: 57, size: 448, elements: !207)
!207 = !{!208, !209, !210, !214, !215}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !206, file: !201, line: 60, baseType: !5, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !201, line: 63, baseType: !50, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !206, file: !201, line: 67, baseType: !211, size: 256, offset: 64)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 256, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 8)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !206, file: !201, line: 70, baseType: !66, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !206, file: !201, line: 73, baseType: !66, size: 64, offset: 384)
!216 = !DIGlobalVariableExpression(var: !217)
!217 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !186, file: !201, line: 108, type: !206, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "slot0", scope: !186, file: !201, line: 834, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 256)
!223 = !DIGlobalVariableExpression(var: !224)
!224 = distinct !DIGlobalVariable(name: "slotvec", scope: !186, file: !201, line: 837, type: !225, isLocal: true, isDefinition: true)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !201, line: 826, size: 128, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !226, file: !201, line: 828, baseType: !195, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !226, file: !201, line: 829, baseType: !45, size: 64, offset: 64)
!230 = !DIGlobalVariableExpression(var: !231)
!231 = distinct !DIGlobalVariable(name: "nslots", scope: !186, file: !201, line: 835, type: !50, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233)
!233 = distinct !DIGlobalVariable(name: "slotvec0", scope: !186, file: !201, line: 836, type: !226, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 704, elements: !236)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!236 = !{!237}
!237 = !DISubrange(count: 11)
!238 = !DIGlobalVariableExpression(var: !239)
!239 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !240, file: !243, line: 26, type: !244, isLocal: false, isDefinition: true)
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160, globals: !242)
!241 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!242 = !{!238}
!243 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 376, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 47)
!247 = !DIGlobalVariableExpression(var: !248)
!248 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !249, file: !592, line: 120, type: !593, isLocal: true, isDefinition: true)
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !251, retainedTypes: !590, globals: !591)
!250 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!251 = !{!252}
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !253, line: 41, size: 32, elements: !254)
!253 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!255 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!256 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!257 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!258 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!259 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!260 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!261 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!262 = !DIEnumerator(name: "DAY_1", value: 131079)
!263 = !DIEnumerator(name: "DAY_2", value: 131080)
!264 = !DIEnumerator(name: "DAY_3", value: 131081)
!265 = !DIEnumerator(name: "DAY_4", value: 131082)
!266 = !DIEnumerator(name: "DAY_5", value: 131083)
!267 = !DIEnumerator(name: "DAY_6", value: 131084)
!268 = !DIEnumerator(name: "DAY_7", value: 131085)
!269 = !DIEnumerator(name: "ABMON_1", value: 131086)
!270 = !DIEnumerator(name: "ABMON_2", value: 131087)
!271 = !DIEnumerator(name: "ABMON_3", value: 131088)
!272 = !DIEnumerator(name: "ABMON_4", value: 131089)
!273 = !DIEnumerator(name: "ABMON_5", value: 131090)
!274 = !DIEnumerator(name: "ABMON_6", value: 131091)
!275 = !DIEnumerator(name: "ABMON_7", value: 131092)
!276 = !DIEnumerator(name: "ABMON_8", value: 131093)
!277 = !DIEnumerator(name: "ABMON_9", value: 131094)
!278 = !DIEnumerator(name: "ABMON_10", value: 131095)
!279 = !DIEnumerator(name: "ABMON_11", value: 131096)
!280 = !DIEnumerator(name: "ABMON_12", value: 131097)
!281 = !DIEnumerator(name: "MON_1", value: 131098)
!282 = !DIEnumerator(name: "MON_2", value: 131099)
!283 = !DIEnumerator(name: "MON_3", value: 131100)
!284 = !DIEnumerator(name: "MON_4", value: 131101)
!285 = !DIEnumerator(name: "MON_5", value: 131102)
!286 = !DIEnumerator(name: "MON_6", value: 131103)
!287 = !DIEnumerator(name: "MON_7", value: 131104)
!288 = !DIEnumerator(name: "MON_8", value: 131105)
!289 = !DIEnumerator(name: "MON_9", value: 131106)
!290 = !DIEnumerator(name: "MON_10", value: 131107)
!291 = !DIEnumerator(name: "MON_11", value: 131108)
!292 = !DIEnumerator(name: "MON_12", value: 131109)
!293 = !DIEnumerator(name: "AM_STR", value: 131110)
!294 = !DIEnumerator(name: "PM_STR", value: 131111)
!295 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!296 = !DIEnumerator(name: "D_FMT", value: 131113)
!297 = !DIEnumerator(name: "T_FMT", value: 131114)
!298 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!299 = !DIEnumerator(name: "ERA", value: 131116)
!300 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!301 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!302 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!303 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!304 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!305 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!306 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!307 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!308 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!309 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!310 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!311 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!312 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!313 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!314 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!315 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!316 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!317 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!318 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!319 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!320 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!321 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!322 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!323 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!324 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!325 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!326 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!327 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!328 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!329 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!330 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!331 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!332 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!333 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!334 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!335 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!336 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!337 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!338 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!339 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!340 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!341 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!342 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!343 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!344 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!345 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!346 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!347 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!348 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!349 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!350 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!351 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!352 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!353 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!354 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!355 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!356 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!357 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!358 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!359 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!360 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!361 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!362 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!363 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!364 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!365 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!366 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!367 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!368 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!369 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!370 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!371 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!372 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!373 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!374 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!375 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!376 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!377 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!378 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!379 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!380 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!381 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!382 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!383 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!384 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!385 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!386 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!387 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!388 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!389 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!390 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!391 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!392 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!393 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!394 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!395 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!396 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!397 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!398 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!399 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!400 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!401 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!402 = !DIEnumerator(name: "CODESET", value: 14)
!403 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!404 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!405 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!406 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!458 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!459 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!474 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!475 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!476 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!477 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!478 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!479 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!480 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!481 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!482 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!483 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!484 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!485 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!486 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!487 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!488 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!489 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!490 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!491 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!492 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!493 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!494 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!495 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!496 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!513 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!514 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!517 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!518 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!519 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!520 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!521 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!522 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!523 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!524 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!525 = !DIEnumerator(name: "THOUSEP", value: 65537)
!526 = !DIEnumerator(name: "__GROUPING", value: 65538)
!527 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!528 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!529 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!530 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!531 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!532 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!533 = !DIEnumerator(name: "__YESSTR", value: 327682)
!534 = !DIEnumerator(name: "__NOSTR", value: 327683)
!535 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!536 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!537 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!538 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!539 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!540 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!541 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!542 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!543 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!544 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!545 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!546 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!547 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!548 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!549 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!550 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!551 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!552 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!555 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!557 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!558 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!559 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!560 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!561 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!562 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!563 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!564 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!565 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!566 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!567 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!568 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!569 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!570 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!571 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!588 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!589 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!590 = !{!47, !45, !48}
!591 = !{!247}
!592 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !66)
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !596)
!595 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = !{!19}
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !599, retainedTypes: !604)
!598 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = !{!600}
!600 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !601, line: 41, size: 32, elements: !602)
!601 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = !{!603}
!603 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!604 = !{!47}
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !607, retainedTypes: !621)
!606 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!607 = !{!608}
!608 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !610, file: !609, line: 192, size: 32, elements: !619)
!609 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = distinct !DISubprogram(name: "x2nrealloc", scope: !609, file: !609, line: 180, type: !611, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !614)
!611 = !DISubroutineType(types: !612)
!612 = !{!47, !47, !613, !195}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!614 = !{!615, !616, !617, !618}
!615 = !DILocalVariable(name: "p", arg: 1, scope: !610, file: !609, line: 180, type: !47)
!616 = !DILocalVariable(name: "pn", arg: 2, scope: !610, file: !609, line: 180, type: !613)
!617 = !DILocalVariable(name: "s", arg: 3, scope: !610, file: !609, line: 180, type: !195)
!618 = !DILocalVariable(name: "n", scope: !610, file: !609, line: 182, type: !195)
!619 = !{!620}
!620 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!621 = !{!195, !45, !47}
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160)
!623 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = distinct !DICompileUnit(language: DW_LANG_C99, file: !625, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !626)
!625 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!626 = !{!627}
!627 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !628, line: 26, size: 32, elements: !629)
!628 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!629 = !{!630, !631, !632, !633, !634}
!630 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!631 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!632 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!633 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!634 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!635 = distinct !DICompileUnit(language: DW_LANG_C99, file: !636, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !637, retainedTypes: !638)
!636 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!637 = !{!627, !28}
!638 = !{!50, !51}
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !640, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160, retainedTypes: !604)
!640 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!641 = distinct !DICompileUnit(language: DW_LANG_C99, file: !642, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160)
!642 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!643 = distinct !DICompileUnit(language: DW_LANG_C99, file: !644, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160, retainedTypes: !604)
!644 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!645 = distinct !DICompileUnit(language: DW_LANG_C99, file: !646, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160, retainedTypes: !604)
!646 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!647 = distinct !DICompileUnit(language: DW_LANG_C99, file: !648, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160, retainedTypes: !649)
!648 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!649 = !{!195}
!650 = distinct !DICompileUnit(language: DW_LANG_C99, file: !651, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160)
!651 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !160)
!653 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!654 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!655 = !{i32 2, !"Dwarf Version", i32 4}
!656 = !{i32 2, !"Debug Info Version", i32 3}
!657 = !{i32 1, !"wchar_size", i32 4}
!658 = !{i32 7, !"PIC Level", i32 2}
!659 = !{i32 7, !"PIE Level", i32 2}
!660 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 263, type: !661, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !50}
!663 = !{!664}
!664 = !DILocalVariable(name: "status", arg: 1, scope: !660, file: !3, line: 263, type: !50)
!665 = !DIExpression()
!666 = !DILocation(line: 263, column: 12, scope: !660)
!667 = !DILocation(line: 265, column: 14, scope: !668)
!668 = distinct !DILexicalBlock(scope: !660, file: !3, line: 265, column: 7)
!669 = !DILocation(line: 265, column: 7, scope: !660)
!670 = !DILocation(line: 266, column: 5, scope: !671)
!671 = distinct !DILexicalBlock(scope: !668, file: !3, line: 266, column: 5)
!672 = !{!673, !673, i64 0}
!673 = !{!"any pointer", !674, i64 0}
!674 = !{!"omnipotent char", !675, i64 0}
!675 = !{!"Simple C/C++ TBAA"}
!676 = !DILocation(line: 269, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !668, file: !3, line: 268, column: 5)
!678 = !DILocation(line: 270, column: 7, scope: !677)
!679 = !DILocation(line: 580, column: 3, scope: !680, inlinedAt: !683)
!680 = distinct !DISubprogram(name: "emit_stdin_note", scope: !79, file: !79, line: 578, type: !681, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !160)
!681 = !DISubroutineType(types: !682)
!682 = !{null}
!683 = distinct !DILocation(line: 275, column: 7, scope: !677)
!684 = !DILocation(line: 587, column: 3, scope: !685, inlinedAt: !686)
!685 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !79, file: !79, line: 585, type: !681, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !160)
!686 = distinct !DILocation(line: 276, column: 7, scope: !677)
!687 = !DILocation(line: 278, column: 7, scope: !677)
!688 = !DILocation(line: 287, column: 7, scope: !677)
!689 = !DILocation(line: 293, column: 7, scope: !677)
!690 = !DILocation(line: 294, column: 7, scope: !677)
!691 = !DILocation(line: 642, column: 15, scope: !78, inlinedAt: !692)
!692 = distinct !DILocation(line: 295, column: 7, scope: !677)
!693 = !DILocation(line: 651, column: 3, scope: !78, inlinedAt: !692)
!694 = !DILocation(line: 655, column: 29, scope: !78, inlinedAt: !692)
!695 = !DILocation(line: 655, column: 15, scope: !78, inlinedAt: !692)
!696 = !DILocation(line: 656, column: 7, scope: !697, inlinedAt: !692)
!697 = distinct !DILexicalBlock(scope: !78, file: !79, line: 656, column: 7)
!698 = !DILocation(line: 656, column: 19, scope: !697, inlinedAt: !692)
!699 = !DILocation(line: 656, column: 22, scope: !697, inlinedAt: !692)
!700 = !DILocation(line: 656, column: 7, scope: !78, inlinedAt: !692)
!701 = !DILocation(line: 662, column: 7, scope: !702, inlinedAt: !692)
!702 = distinct !DILexicalBlock(scope: !697, file: !79, line: 657, column: 5)
!703 = !DILocation(line: 664, column: 5, scope: !702, inlinedAt: !692)
!704 = !DILocation(line: 665, column: 3, scope: !78, inlinedAt: !692)
!705 = !DILocation(line: 667, column: 3, scope: !78, inlinedAt: !692)
!706 = !DILocation(line: 297, column: 3, scope: !660)
!707 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 317, type: !708, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !711)
!708 = !DISubroutineType(types: !709)
!709 = !{!50, !50, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !724}
!712 = !DILocalVariable(name: "argc", arg: 1, scope: !707, file: !3, line: 317, type: !50)
!713 = !DILocalVariable(name: "argv", arg: 2, scope: !707, file: !3, line: 317, type: !710)
!714 = !DILocalVariable(name: "optchar", scope: !707, file: !3, line: 319, type: !50)
!715 = !DILocalVariable(name: "ok", scope: !707, file: !3, line: 320, type: !57)
!716 = !DILocalVariable(name: "max_width_option", scope: !707, file: !3, line: 321, type: !66)
!717 = !DILocalVariable(name: "goal_width_option", scope: !707, file: !3, line: 322, type: !66)
!718 = !DILocalVariable(name: "file", scope: !719, file: !3, line: 421, type: !45)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 420, column: 9)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 419, column: 7)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 419, column: 7)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 418, column: 5)
!723 = distinct !DILexicalBlock(scope: !707, file: !3, line: 415, column: 7)
!724 = !DILocalVariable(name: "in_stream", scope: !725, file: !3, line: 426, type: !727)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 425, column: 13)
!726 = distinct !DILexicalBlock(scope: !719, file: !3, line: 422, column: 15)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !729, line: 7, baseType: !730)
!729 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !731, line: 241, size: 1728, elements: !732)
!731 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !753, !754, !755, !756, !759, !760, !762, !766, !769, !771, !772, !773, !774, !775, !776, !777}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !730, file: !731, line: 242, baseType: !50, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !730, file: !731, line: 247, baseType: !45, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !730, file: !731, line: 248, baseType: !45, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !730, file: !731, line: 249, baseType: !45, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !730, file: !731, line: 250, baseType: !45, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !730, file: !731, line: 251, baseType: !45, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !730, file: !731, line: 252, baseType: !45, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !730, file: !731, line: 253, baseType: !45, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !730, file: !731, line: 254, baseType: !45, size: 64, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !730, file: !731, line: 256, baseType: !45, size: 64, offset: 576)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !730, file: !731, line: 257, baseType: !45, size: 64, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !730, file: !731, line: 258, baseType: !45, size: 64, offset: 704)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !730, file: !731, line: 260, baseType: !746, size: 64, offset: 768)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !731, line: 156, size: 192, elements: !748)
!748 = !{!749, !750, !752}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !747, file: !731, line: 157, baseType: !746, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !747, file: !731, line: 158, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !747, file: !731, line: 162, baseType: !50, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !730, file: !731, line: 262, baseType: !751, size: 64, offset: 832)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !730, file: !731, line: 264, baseType: !50, size: 32, offset: 896)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !730, file: !731, line: 268, baseType: !50, size: 32, offset: 928)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !730, file: !731, line: 270, baseType: !757, size: 64, offset: 960)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !758, line: 140, baseType: !53)
!758 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !730, file: !731, line: 274, baseType: !51, size: 16, offset: 1024)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !730, file: !731, line: 275, baseType: !761, size: 8, offset: 1040)
!761 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !730, file: !731, line: 276, baseType: !763, size: 8, offset: 1048)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 1)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !730, file: !731, line: 280, baseType: !767, size: 64, offset: 1088)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !731, line: 150, baseType: null)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !730, file: !731, line: 289, baseType: !770, size: 64, offset: 1152)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !758, line: 141, baseType: !53)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !730, file: !731, line: 297, baseType: !47, size: 64, offset: 1216)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !730, file: !731, line: 298, baseType: !47, size: 64, offset: 1280)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !730, file: !731, line: 299, baseType: !47, size: 64, offset: 1344)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !730, file: !731, line: 300, baseType: !47, size: 64, offset: 1408)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !730, file: !731, line: 302, baseType: !195, size: 64, offset: 1472)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !730, file: !731, line: 303, baseType: !50, size: 32, offset: 1536)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !730, file: !731, line: 305, baseType: !778, size: 160, offset: 1568)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !779)
!779 = !{!780}
!780 = !DISubrange(count: 20)
!781 = !DILocation(line: 317, column: 11, scope: !707)
!782 = !DILocation(line: 317, column: 24, scope: !707)
!783 = !DILocation(line: 320, column: 8, scope: !707)
!784 = !DILocation(line: 321, column: 15, scope: !707)
!785 = !DILocation(line: 322, column: 15, scope: !707)
!786 = !DILocation(line: 325, column: 21, scope: !707)
!787 = !DILocation(line: 325, column: 3, scope: !707)
!788 = !DILocation(line: 326, column: 3, scope: !707)
!789 = !DILocation(line: 327, column: 3, scope: !707)
!790 = !DILocation(line: 328, column: 3, scope: !707)
!791 = !DILocation(line: 330, column: 3, scope: !707)
!792 = !DILocation(line: 333, column: 13, scope: !707)
!793 = !{!794, !794, i64 0}
!794 = !{!"int", !674, i64 0}
!795 = !DILocation(line: 334, column: 10, scope: !707)
!796 = !DILocation(line: 335, column: 58, scope: !707)
!797 = !DILocation(line: 335, column: 37, scope: !707)
!798 = !DILocation(line: 335, column: 17, scope: !707)
!799 = !DILocation(line: 337, column: 12, scope: !800)
!800 = distinct !DILexicalBlock(scope: !707, file: !3, line: 337, column: 7)
!801 = !DILocation(line: 337, column: 16, scope: !800)
!802 = !DILocation(line: 337, column: 19, scope: !800)
!803 = !{!674, !674, i64 0}
!804 = !DILocation(line: 337, column: 30, scope: !800)
!805 = !DILocation(line: 337, column: 37, scope: !800)
!806 = !DILocation(line: 337, column: 40, scope: !800)
!807 = !DILocation(line: 337, column: 7, scope: !707)
!808 = !DILocation(line: 343, column: 17, scope: !809)
!809 = distinct !DILexicalBlock(scope: !800, file: !3, line: 338, column: 5)
!810 = !DILocation(line: 343, column: 15, scope: !809)
!811 = !DILocation(line: 345, column: 11, scope: !809)
!812 = !DILocation(line: 346, column: 5, scope: !809)
!813 = !DILocation(line: 348, column: 3, scope: !707)
!814 = !DILocation(line: 348, column: 21, scope: !707)
!815 = !DILocation(line: 319, column: 7, scope: !707)
!816 = !DILocation(line: 354, column: 13, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 354, column: 13)
!818 = distinct !DILexicalBlock(scope: !707, file: !3, line: 352, column: 7)
!819 = !DILocation(line: 354, column: 13, scope: !818)
!820 = !DILocation(line: 355, column: 24, scope: !817)
!821 = !DILocation(line: 355, column: 11, scope: !817)
!822 = !DILocation(line: 358, column: 9, scope: !818)
!823 = !DILocation(line: 362, column: 9, scope: !818)
!824 = !DILocation(line: 366, column: 9, scope: !818)
!825 = !DILocation(line: 370, column: 9, scope: !818)
!826 = !DILocation(line: 374, column: 9, scope: !818)
!827 = !DILocation(line: 377, column: 28, scope: !818)
!828 = !DILocation(line: 378, column: 9, scope: !818)
!829 = distinct !{!829, !813, !830}
!830 = !DILocation(line: 392, column: 7, scope: !707)
!831 = !DILocation(line: 381, column: 29, scope: !818)
!832 = !DILocation(line: 382, column: 9, scope: !818)
!833 = !DILocation(line: 385, column: 21, scope: !818)
!834 = !DILocalVariable(name: "p", arg: 1, scope: !835, file: !3, line: 454, type: !45)
!835 = distinct !DISubprogram(name: "set_prefix", scope: !3, file: !3, line: 454, type: !836, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !45}
!838 = !{!834, !839}
!839 = !DILocalVariable(name: "s", scope: !835, file: !3, line: 456, type: !45)
!840 = !DILocation(line: 454, column: 19, scope: !835, inlinedAt: !841)
!841 = distinct !DILocation(line: 385, column: 9, scope: !818)
!842 = !DILocation(line: 458, column: 21, scope: !835, inlinedAt: !841)
!843 = !DILocation(line: 459, column: 10, scope: !835, inlinedAt: !841)
!844 = !DILocation(line: 459, column: 13, scope: !835, inlinedAt: !841)
!845 = !DILocation(line: 459, column: 3, scope: !835, inlinedAt: !841)
!846 = !DILocation(line: 461, column: 24, scope: !847, inlinedAt: !841)
!847 = distinct !DILexicalBlock(scope: !835, file: !3, line: 460, column: 5)
!848 = !DILocation(line: 462, column: 8, scope: !847, inlinedAt: !841)
!849 = distinct !{!849, !850, !851}
!850 = !DILocation(line: 459, column: 3, scope: !835)
!851 = !DILocation(line: 463, column: 5, scope: !835)
!852 = !DILocation(line: 464, column: 10, scope: !835, inlinedAt: !841)
!853 = !DILocation(line: 465, column: 24, scope: !835, inlinedAt: !841)
!854 = !DILocation(line: 465, column: 22, scope: !835, inlinedAt: !841)
!855 = !DILocation(line: 466, column: 9, scope: !835, inlinedAt: !841)
!856 = !DILocation(line: 456, column: 9, scope: !835, inlinedAt: !841)
!857 = !DILocation(line: 467, column: 12, scope: !835, inlinedAt: !841)
!858 = !DILocation(line: 467, column: 16, scope: !835, inlinedAt: !841)
!859 = !DILocation(line: 467, column: 19, scope: !835, inlinedAt: !841)
!860 = distinct !{!860, !861, !862}
!861 = !DILocation(line: 467, column: 3, scope: !835)
!862 = !DILocation(line: 468, column: 6, scope: !835)
!863 = !DILocation(line: 467, column: 25, scope: !835, inlinedAt: !841)
!864 = !DILocation(line: 467, column: 3, scope: !835, inlinedAt: !841)
!865 = !DILocation(line: 469, column: 6, scope: !835, inlinedAt: !841)
!866 = !DILocation(line: 470, column: 21, scope: !835, inlinedAt: !841)
!867 = !DILocation(line: 470, column: 19, scope: !835, inlinedAt: !841)
!868 = !DILocation(line: 470, column: 17, scope: !835, inlinedAt: !841)
!869 = !DILocation(line: 386, column: 9, scope: !818)
!870 = !DILocation(line: 388, column: 7, scope: !818)
!871 = !DILocation(line: 390, column: 7, scope: !818)
!872 = !DILocation(line: 394, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !707, file: !3, line: 394, column: 7)
!874 = !DILocation(line: 394, column: 7, scope: !707)
!875 = !DILocation(line: 399, column: 31, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !3, line: 395, column: 5)
!877 = !DILocation(line: 398, column: 19, scope: !876)
!878 = !DILocation(line: 398, column: 17, scope: !876)
!879 = !DILocation(line: 400, column: 5, scope: !876)
!880 = !DILocation(line: 402, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !707, file: !3, line: 402, column: 7)
!882 = !DILocation(line: 402, column: 7, scope: !707)
!883 = !DILocation(line: 405, column: 54, scope: !884)
!884 = distinct !DILexicalBlock(scope: !881, file: !3, line: 403, column: 5)
!885 = !DILocation(line: 406, column: 32, scope: !884)
!886 = !DILocation(line: 405, column: 20, scope: !884)
!887 = !DILocation(line: 405, column: 18, scope: !884)
!888 = !DILocation(line: 407, column: 11, scope: !884)
!889 = !DILocation(line: 408, column: 32, scope: !890)
!890 = distinct !DILexicalBlock(scope: !884, file: !3, line: 407, column: 11)
!891 = !DILocation(line: 408, column: 19, scope: !890)
!892 = !DILocation(line: 408, column: 9, scope: !890)
!893 = !DILocation(line: 412, column: 30, scope: !894)
!894 = distinct !DILexicalBlock(scope: !881, file: !3, line: 411, column: 5)
!895 = !DILocation(line: 412, column: 57, scope: !894)
!896 = !DILocation(line: 412, column: 18, scope: !894)
!897 = !DILocation(line: 415, column: 7, scope: !723)
!898 = !DILocation(line: 415, column: 14, scope: !723)
!899 = !DILocation(line: 415, column: 7, scope: !707)
!900 = !DILocation(line: 416, column: 10, scope: !723)
!901 = !DILocation(line: 416, column: 5, scope: !723)
!902 = !DILocation(line: 419, column: 21, scope: !720)
!903 = !DILocation(line: 419, column: 7, scope: !721)
!904 = !DILocation(line: 421, column: 24, scope: !719)
!905 = !DILocation(line: 421, column: 17, scope: !719)
!906 = !DILocation(line: 422, column: 15, scope: !726)
!907 = !DILocation(line: 422, column: 15, scope: !719)
!908 = !DILocation(line: 423, column: 18, scope: !726)
!909 = !DILocation(line: 423, column: 13, scope: !726)
!910 = !DILocation(line: 427, column: 27, scope: !725)
!911 = !DILocation(line: 426, column: 21, scope: !725)
!912 = !DILocation(line: 428, column: 29, scope: !913)
!913 = distinct !DILexicalBlock(scope: !725, file: !3, line: 428, column: 19)
!914 = !DILocation(line: 428, column: 19, scope: !725)
!915 = !DILocation(line: 430, column: 19, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !3, line: 429, column: 17)
!917 = !DILocation(line: 431, column: 23, scope: !918)
!918 = distinct !DILexicalBlock(scope: !916, file: !3, line: 431, column: 23)
!919 = !DILocation(line: 431, column: 42, scope: !918)
!920 = !DILocation(line: 431, column: 23, scope: !916)
!921 = !DILocation(line: 433, column: 33, scope: !922)
!922 = distinct !DILexicalBlock(scope: !918, file: !3, line: 432, column: 21)
!923 = !DILocation(line: 433, column: 46, scope: !922)
!924 = !DILocation(line: 433, column: 23, scope: !922)
!925 = !DILocation(line: 435, column: 21, scope: !922)
!926 = !DILocation(line: 439, column: 29, scope: !927)
!927 = distinct !DILexicalBlock(scope: !913, file: !3, line: 438, column: 17)
!928 = !DILocation(line: 439, column: 36, scope: !927)
!929 = !DILocation(line: 440, column: 26, scope: !927)
!930 = !DILocation(line: 439, column: 19, scope: !927)
!931 = !DILocation(line: 419, column: 35, scope: !720)
!932 = distinct !{!932, !903, !933}
!933 = !DILocation(line: 444, column: 9, scope: !721)
!934 = !DILocation(line: 447, column: 10, scope: !707)
!935 = !DILocation(line: 448, column: 1, scope: !707)
!936 = distinct !DISubprogram(name: "fmt", scope: !3, file: !3, line: 476, type: !937, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !939)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !727}
!939 = !{!940}
!940 = !DILocalVariable(name: "f", arg: 1, scope: !936, file: !3, line: 476, type: !727)
!941 = !DILocation(line: 476, column: 12, scope: !936)
!942 = !DILocation(line: 478, column: 3, scope: !936)
!943 = !DILocation(line: 480, column: 16, scope: !936)
!944 = !DILocation(line: 481, column: 15, scope: !936)
!945 = !DILocation(line: 481, column: 13, scope: !936)
!946 = !DILocation(line: 482, column: 3, scope: !936)
!947 = !DILocation(line: 543, column: 7, scope: !948, inlinedAt: !954)
!948 = distinct !DISubprogram(name: "get_paragraph", scope: !3, file: !3, line: 538, type: !949, isLocal: true, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!57, !727}
!951 = !{!952, !953}
!952 = !DILocalVariable(name: "f", arg: 1, scope: !948, file: !3, line: 538, type: !727)
!953 = !DILocalVariable(name: "c", scope: !948, file: !3, line: 540, type: !50)
!954 = distinct !DILocation(line: 482, column: 10, scope: !936)
!955 = !DILocation(line: 538, column: 22, scope: !948, inlinedAt: !954)
!956 = !DILocation(line: 542, column: 20, scope: !948, inlinedAt: !954)
!957 = !DILocation(line: 540, column: 7, scope: !948, inlinedAt: !954)
!958 = !DILocation(line: 547, column: 3, scope: !948, inlinedAt: !954)
!959 = !DILocation(line: 547, column: 20, scope: !948, inlinedAt: !954)
!960 = !DILocation(line: 548, column: 13, scope: !948, inlinedAt: !954)
!961 = !DILocation(line: 548, column: 34, scope: !948, inlinedAt: !954)
!962 = !DILocation(line: 548, column: 32, scope: !948, inlinedAt: !954)
!963 = !DILocation(line: 549, column: 10, scope: !948, inlinedAt: !954)
!964 = !DILocation(line: 549, column: 13, scope: !948, inlinedAt: !954)
!965 = !DILocation(line: 549, column: 46, scope: !948, inlinedAt: !954)
!966 = !DILocation(line: 549, column: 44, scope: !948, inlinedAt: !954)
!967 = !DILocation(line: 549, column: 23, scope: !948, inlinedAt: !954)
!968 = !DILocation(line: 624, column: 19, scope: !969, inlinedAt: !977)
!969 = distinct !DILexicalBlock(scope: !970, file: !3, line: 624, column: 7)
!970 = distinct !DISubprogram(name: "copy_rest", scope: !3, file: !3, line: 619, type: !971, isLocal: true, isDefinition: true, scopeLine: 620, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{!50, !727, !50}
!973 = !{!974, !975, !976}
!974 = !DILocalVariable(name: "f", arg: 1, scope: !970, file: !3, line: 619, type: !727)
!975 = !DILocalVariable(name: "c", arg: 2, scope: !970, file: !3, line: 619, type: !50)
!976 = !DILocalVariable(name: "s", scope: !970, file: !3, line: 621, type: !66)
!977 = distinct !DILocation(line: 551, column: 11, scope: !978, inlinedAt: !954)
!978 = distinct !DILexicalBlock(scope: !948, file: !3, line: 550, column: 5)
!979 = !DILocation(line: 623, column: 14, scope: !970, inlinedAt: !977)
!980 = !DILocation(line: 619, column: 18, scope: !970, inlinedAt: !977)
!981 = !DILocation(line: 619, column: 25, scope: !970, inlinedAt: !977)
!982 = !DILocation(line: 624, column: 7, scope: !969, inlinedAt: !977)
!983 = !DILocation(line: 624, column: 17, scope: !969, inlinedAt: !977)
!984 = !DILocation(line: 624, column: 38, scope: !969, inlinedAt: !977)
!985 = !DILocation(line: 624, column: 52, scope: !969, inlinedAt: !977)
!986 = !DILocalVariable(name: "space", arg: 1, scope: !987, file: !3, line: 1009, type: !50)
!987 = distinct !DISubprogram(name: "put_space", scope: !3, file: !3, line: 1009, type: !661, isLocal: true, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !988)
!988 = !{!986, !989, !990}
!989 = !DILocalVariable(name: "space_target", scope: !987, file: !3, line: 1011, type: !50)
!990 = !DILocalVariable(name: "tab_target", scope: !987, file: !3, line: 1011, type: !50)
!991 = !DILocation(line: 1009, column: 16, scope: !987, inlinedAt: !992)
!992 = distinct !DILocation(line: 626, column: 7, scope: !993, inlinedAt: !977)
!993 = distinct !DILexicalBlock(scope: !969, file: !3, line: 625, column: 5)
!994 = !DILocation(line: 1011, column: 7, scope: !987, inlinedAt: !992)
!995 = !DILocation(line: 1014, column: 7, scope: !987, inlinedAt: !992)
!996 = !DILocation(line: 1016, column: 33, scope: !997, inlinedAt: !992)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 1015, column: 5)
!998 = distinct !DILexicalBlock(scope: !987, file: !3, line: 1014, column: 7)
!999 = !DILocation(line: 1016, column: 44, scope: !997, inlinedAt: !992)
!1000 = !DILocation(line: 1011, column: 21, scope: !987, inlinedAt: !992)
!1001 = !DILocation(line: 1017, column: 26, scope: !1002, inlinedAt: !992)
!1002 = distinct !DILexicalBlock(scope: !997, file: !3, line: 1017, column: 11)
!1003 = !DILocation(line: 1017, column: 11, scope: !997, inlinedAt: !992)
!1004 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1011)
!1005 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1006, file: !1006, line: 105, type: !1007, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1009)
!1006 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!50, !50}
!1009 = !{!1010}
!1010 = !DILocalVariable(name: "__c", arg: 1, scope: !1005, file: !1006, line: 105, type: !50)
!1011 = distinct !DILocation(line: 1020, column: 13, scope: !1012, inlinedAt: !992)
!1012 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 1019, column: 11)
!1013 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1011)
!1014 = !{!1015, !673, i64 40}
!1015 = !{!"_IO_FILE", !794, i64 0, !673, i64 8, !673, i64 16, !673, i64 24, !673, i64 32, !673, i64 40, !673, i64 48, !673, i64 56, !673, i64 64, !673, i64 72, !673, i64 80, !673, i64 88, !673, i64 96, !673, i64 104, !794, i64 112, !794, i64 116, !1016, i64 120, !1017, i64 128, !674, i64 130, !674, i64 131, !673, i64 136, !1016, i64 144, !673, i64 152, !673, i64 160, !673, i64 168, !673, i64 176, !1016, i64 184, !794, i64 192, !674, i64 196}
!1016 = !{!"long", !674, i64 0}
!1017 = !{!"short", !674, i64 0}
!1018 = !{!1015, !673, i64 48}
!1019 = !{!"branch_weights", i32 2000, i32 1}
!1020 = !DILocation(line: 1021, column: 27, scope: !1012, inlinedAt: !992)
!1021 = !DILocation(line: 1021, column: 38, scope: !1012, inlinedAt: !992)
!1022 = !DILocation(line: 1021, column: 54, scope: !1012, inlinedAt: !992)
!1023 = !DILocation(line: 1021, column: 24, scope: !1012, inlinedAt: !992)
!1024 = !DILocation(line: 1018, column: 27, scope: !1002, inlinedAt: !992)
!1025 = !DILocation(line: 1018, column: 9, scope: !1002, inlinedAt: !992)
!1026 = distinct !{!1026, !1027, !1028}
!1027 = !DILocation(line: 1018, column: 9, scope: !1002)
!1028 = !DILocation(line: 1022, column: 11, scope: !1002)
!1029 = !DILocation(line: 1024, column: 10, scope: !987, inlinedAt: !992)
!1030 = !DILocation(line: 1024, column: 21, scope: !987, inlinedAt: !992)
!1031 = !DILocation(line: 1024, column: 3, scope: !987, inlinedAt: !992)
!1032 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 1026, column: 7, scope: !1034, inlinedAt: !992)
!1034 = distinct !DILexicalBlock(scope: !987, file: !3, line: 1025, column: 5)
!1035 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1033)
!1036 = !DILocation(line: 1027, column: 17, scope: !1034, inlinedAt: !992)
!1037 = distinct !{!1037, !1038, !1039}
!1038 = !DILocation(line: 1024, column: 3, scope: !987)
!1039 = !DILocation(line: 1028, column: 5, scope: !987)
!1040 = !DILocation(line: 627, column: 24, scope: !1041, inlinedAt: !977)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 627, column: 7)
!1042 = distinct !DILexicalBlock(scope: !993, file: !3, line: 627, column: 7)
!1043 = !DILocation(line: 627, column: 38, scope: !1041, inlinedAt: !977)
!1044 = !DILocation(line: 627, column: 35, scope: !1041, inlinedAt: !977)
!1045 = !DILocation(line: 627, column: 48, scope: !1041, inlinedAt: !977)
!1046 = !DILocation(line: 627, column: 16, scope: !1042, inlinedAt: !977)
!1047 = !DILocation(line: 621, column: 15, scope: !970, inlinedAt: !977)
!1048 = !DILocation(line: 627, column: 51, scope: !1041, inlinedAt: !977)
!1049 = !DILocation(line: 627, column: 7, scope: !1042, inlinedAt: !977)
!1050 = !DILocation(line: 628, column: 9, scope: !1041, inlinedAt: !977)
!1051 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 628, column: 9, scope: !1041, inlinedAt: !977)
!1053 = !DILocation(line: 627, column: 65, scope: !1041, inlinedAt: !977)
!1054 = distinct !{!1054, !1055, !1056}
!1055 = !DILocation(line: 627, column: 7, scope: !1042)
!1056 = !DILocation(line: 628, column: 9, scope: !1042)
!1057 = !DILocation(line: 629, column: 20, scope: !1058, inlinedAt: !977)
!1058 = distinct !DILexicalBlock(scope: !993, file: !3, line: 629, column: 11)
!1059 = !DILocation(line: 1011, column: 7, scope: !987, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 630, column: 9, scope: !1058, inlinedAt: !977)
!1061 = !DILocation(line: 1014, column: 7, scope: !987, inlinedAt: !1060)
!1062 = !DILocation(line: 1016, column: 33, scope: !997, inlinedAt: !1060)
!1063 = !DILocation(line: 1016, column: 44, scope: !997, inlinedAt: !1060)
!1064 = !DILocation(line: 1011, column: 21, scope: !987, inlinedAt: !1060)
!1065 = !DILocation(line: 1017, column: 22, scope: !1002, inlinedAt: !1060)
!1066 = !DILocation(line: 1017, column: 26, scope: !1002, inlinedAt: !1060)
!1067 = !DILocation(line: 1018, column: 27, scope: !1002, inlinedAt: !1060)
!1068 = !DILocation(line: 1017, column: 11, scope: !997, inlinedAt: !1060)
!1069 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 1020, column: 13, scope: !1012, inlinedAt: !1060)
!1071 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1070)
!1072 = !DILocation(line: 1021, column: 27, scope: !1012, inlinedAt: !1060)
!1073 = !DILocation(line: 1021, column: 38, scope: !1012, inlinedAt: !1060)
!1074 = !DILocation(line: 1021, column: 54, scope: !1012, inlinedAt: !1060)
!1075 = !DILocation(line: 1021, column: 24, scope: !1012, inlinedAt: !1060)
!1076 = !DILocation(line: 1018, column: 9, scope: !1002, inlinedAt: !1060)
!1077 = !DILocation(line: 1024, column: 21, scope: !987, inlinedAt: !1060)
!1078 = !DILocation(line: 1024, column: 3, scope: !987, inlinedAt: !1060)
!1079 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 1026, column: 7, scope: !1034, inlinedAt: !1060)
!1081 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1080)
!1082 = !DILocation(line: 1027, column: 17, scope: !1034, inlinedAt: !1060)
!1083 = !DILocation(line: 631, column: 36, scope: !1084, inlinedAt: !977)
!1084 = distinct !DILexicalBlock(scope: !993, file: !3, line: 631, column: 11)
!1085 = !DILocation(line: 631, column: 57, scope: !1084, inlinedAt: !977)
!1086 = !DILocation(line: 631, column: 55, scope: !1084, inlinedAt: !977)
!1087 = !DILocation(line: 631, column: 33, scope: !1084, inlinedAt: !977)
!1088 = !DILocation(line: 631, column: 11, scope: !993, inlinedAt: !977)
!1089 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 632, column: 9, scope: !1084, inlinedAt: !977)
!1091 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1090)
!1092 = !DILocation(line: 634, column: 3, scope: !970, inlinedAt: !977)
!1093 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 636, column: 7, scope: !1095, inlinedAt: !977)
!1095 = distinct !DILexicalBlock(scope: !970, file: !3, line: 635, column: 5)
!1096 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1094)
!1097 = !DILocalVariable(name: "__fp", arg: 1, scope: !1098, file: !1006, line: 63, type: !727)
!1098 = distinct !DISubprogram(name: "getc_unlocked", scope: !1006, file: !1006, line: 63, type: !1099, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!50, !727}
!1101 = !{!1097}
!1102 = !DILocation(line: 63, column: 22, scope: !1098, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 637, column: 11, scope: !1095, inlinedAt: !977)
!1104 = !DILocation(line: 65, column: 10, scope: !1098, inlinedAt: !1103)
!1105 = !{!1015, !673, i64 8}
!1106 = !{!1015, !673, i64 16}
!1107 = distinct !{!1107, !1108, !1109}
!1108 = !DILocation(line: 634, column: 3, scope: !970)
!1109 = !DILocation(line: 638, column: 5, scope: !970)
!1110 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 557, column: 7, scope: !978, inlinedAt: !954)
!1112 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1111)
!1113 = !DILocation(line: 558, column: 11, scope: !978, inlinedAt: !954)
!1114 = distinct !{!1114, !1115, !1116}
!1115 = !DILocation(line: 547, column: 3, scope: !948)
!1116 = !DILocation(line: 559, column: 5, scope: !948)
!1117 = !DILocation(line: 563, column: 17, scope: !948, inlinedAt: !954)
!1118 = !DILocation(line: 564, column: 16, scope: !948, inlinedAt: !954)
!1119 = !DILocation(line: 565, column: 8, scope: !948, inlinedAt: !954)
!1120 = !DILocation(line: 566, column: 14, scope: !948, inlinedAt: !954)
!1121 = !DILocation(line: 567, column: 7, scope: !948, inlinedAt: !954)
!1122 = !DILocalVariable(name: "c", arg: 1, scope: !1123, file: !3, line: 647, type: !50)
!1123 = distinct !DISubprogram(name: "same_para", scope: !3, file: !3, line: 647, type: !1124, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1126)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!57, !50}
!1126 = !{!1122}
!1127 = !DILocation(line: 647, column: 16, scope: !1123, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 568, column: 21, scope: !948, inlinedAt: !954)
!1129 = !DILocation(line: 649, column: 11, scope: !1123, inlinedAt: !1128)
!1130 = !DILocation(line: 649, column: 33, scope: !1123, inlinedAt: !1128)
!1131 = !DILocation(line: 649, column: 30, scope: !1123, inlinedAt: !1128)
!1132 = !DILocation(line: 650, column: 11, scope: !1123, inlinedAt: !1128)
!1133 = !DILocation(line: 650, column: 14, scope: !1123, inlinedAt: !1128)
!1134 = !DILocation(line: 650, column: 48, scope: !1123, inlinedAt: !1128)
!1135 = !DILocation(line: 650, column: 46, scope: !1123, inlinedAt: !1128)
!1136 = !DILocation(line: 650, column: 24, scope: !1123, inlinedAt: !1128)
!1137 = !DILocation(line: 651, column: 16, scope: !1123, inlinedAt: !1128)
!1138 = !DILocation(line: 651, column: 11, scope: !1123, inlinedAt: !1128)
!1139 = !DILocation(line: 651, column: 29, scope: !1123, inlinedAt: !1128)
!1140 = !DILocalVariable(name: "same_paragraph", arg: 1, scope: !1141, file: !3, line: 493, type: !57)
!1141 = distinct !DISubprogram(name: "set_other_indent", scope: !3, file: !3, line: 493, type: !1142, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1144)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !57}
!1144 = !{!1140}
!1145 = !DILocation(line: 493, column: 24, scope: !1141, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 568, column: 3, scope: !948, inlinedAt: !954)
!1147 = !DILocation(line: 495, column: 7, scope: !1141, inlinedAt: !1146)
!1148 = !DILocation(line: 497, column: 12, scope: !1149, inlinedAt: !1146)
!1149 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 495, column: 7)
!1150 = !DILocation(line: 501, column: 12, scope: !1151, inlinedAt: !1146)
!1151 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 497, column: 12)
!1152 = !DILocation(line: 503, column: 26, scope: !1153, inlinedAt: !1146)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 503, column: 11)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 502, column: 5)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 501, column: 12)
!1156 = !DILocation(line: 513, column: 32, scope: !1157, inlinedAt: !1146)
!1157 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 513, column: 16)
!1158 = !DILocation(line: 503, column: 29, scope: !1153, inlinedAt: !1146)
!1159 = !DILocation(line: 503, column: 42, scope: !1153, inlinedAt: !1146)
!1160 = !DILocation(line: 503, column: 39, scope: !1153, inlinedAt: !1146)
!1161 = !DILocation(line: 503, column: 11, scope: !1154, inlinedAt: !1146)
!1162 = !DILocation(line: 513, column: 16, scope: !1157, inlinedAt: !1146)
!1163 = !DILocation(line: 513, column: 29, scope: !1157, inlinedAt: !1146)
!1164 = !DILocation(line: 513, column: 16, scope: !1153, inlinedAt: !1146)
!1165 = !DILocation(line: 514, column: 37, scope: !1157, inlinedAt: !1146)
!1166 = !DILocation(line: 514, column: 24, scope: !1157, inlinedAt: !1146)
!1167 = !DILocation(line: 514, column: 9, scope: !1157, inlinedAt: !1146)
!1168 = !DILocation(line: 496, column: 20, scope: !1149, inlinedAt: !1146)
!1169 = !DILocation(line: 647, column: 16, scope: !1123, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 578, column: 11, scope: !1171, inlinedAt: !954)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 578, column: 11)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 577, column: 5)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 576, column: 12)
!1174 = distinct !DILexicalBlock(scope: !948, file: !3, line: 572, column: 7)
!1175 = !DILocation(line: 650, column: 11, scope: !1123, inlinedAt: !1170)
!1176 = !DILocation(line: 650, column: 48, scope: !1123, inlinedAt: !1170)
!1177 = !DILocation(line: 650, column: 46, scope: !1123, inlinedAt: !1170)
!1178 = !DILocation(line: 650, column: 24, scope: !1123, inlinedAt: !1170)
!1179 = !DILocation(line: 578, column: 11, scope: !1172, inlinedAt: !954)
!1180 = distinct !{!1180, !1181, !1183}
!1181 = !DILocation(line: 580, column: 11, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 579, column: 9)
!1183 = !DILocation(line: 584, column: 60, scope: !1182)
!1184 = !DILocation(line: 582, column: 19, scope: !1185, inlinedAt: !954)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 581, column: 13)
!1186 = !DILocation(line: 647, column: 16, scope: !1123, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 584, column: 18, scope: !1182, inlinedAt: !954)
!1188 = !DILocation(line: 649, column: 11, scope: !1123, inlinedAt: !1187)
!1189 = !DILocation(line: 649, column: 33, scope: !1123, inlinedAt: !1187)
!1190 = !DILocation(line: 649, column: 30, scope: !1123, inlinedAt: !1187)
!1191 = !DILocation(line: 650, column: 11, scope: !1123, inlinedAt: !1187)
!1192 = !DILocation(line: 650, column: 14, scope: !1123, inlinedAt: !1187)
!1193 = !DILocation(line: 650, column: 48, scope: !1123, inlinedAt: !1187)
!1194 = !DILocation(line: 650, column: 46, scope: !1123, inlinedAt: !1187)
!1195 = !DILocation(line: 650, column: 24, scope: !1123, inlinedAt: !1187)
!1196 = !DILocation(line: 584, column: 32, scope: !1182, inlinedAt: !954)
!1197 = !DILocation(line: 584, column: 48, scope: !1182, inlinedAt: !954)
!1198 = !DILocation(line: 584, column: 45, scope: !1182, inlinedAt: !954)
!1199 = !DILocation(line: 583, column: 13, scope: !1185, inlinedAt: !954)
!1200 = !DILocation(line: 587, column: 12, scope: !1173, inlinedAt: !954)
!1201 = !DILocation(line: 647, column: 16, scope: !1123, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 589, column: 11, scope: !1203, inlinedAt: !954)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 589, column: 11)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 588, column: 5)
!1205 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 587, column: 12)
!1206 = !DILocation(line: 650, column: 11, scope: !1123, inlinedAt: !1202)
!1207 = !DILocation(line: 650, column: 14, scope: !1123, inlinedAt: !1202)
!1208 = !DILocation(line: 650, column: 48, scope: !1123, inlinedAt: !1202)
!1209 = !DILocation(line: 650, column: 46, scope: !1123, inlinedAt: !1202)
!1210 = !DILocation(line: 650, column: 24, scope: !1123, inlinedAt: !1202)
!1211 = !DILocation(line: 589, column: 25, scope: !1203, inlinedAt: !954)
!1212 = !DILocation(line: 589, column: 38, scope: !1203, inlinedAt: !954)
!1213 = !DILocation(line: 589, column: 11, scope: !1204, inlinedAt: !954)
!1214 = distinct !{!1214, !1215, !1217}
!1215 = !DILocation(line: 591, column: 11, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 590, column: 9)
!1217 = !DILocation(line: 595, column: 60, scope: !1216)
!1218 = !DILocation(line: 593, column: 19, scope: !1219, inlinedAt: !954)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 592, column: 13)
!1220 = !DILocation(line: 647, column: 16, scope: !1123, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 595, column: 18, scope: !1216, inlinedAt: !954)
!1222 = !DILocation(line: 649, column: 11, scope: !1123, inlinedAt: !1221)
!1223 = !DILocation(line: 649, column: 33, scope: !1123, inlinedAt: !1221)
!1224 = !DILocation(line: 649, column: 30, scope: !1123, inlinedAt: !1221)
!1225 = !DILocation(line: 650, column: 11, scope: !1123, inlinedAt: !1221)
!1226 = !DILocation(line: 650, column: 14, scope: !1123, inlinedAt: !1221)
!1227 = !DILocation(line: 650, column: 48, scope: !1123, inlinedAt: !1221)
!1228 = !DILocation(line: 650, column: 46, scope: !1123, inlinedAt: !1221)
!1229 = !DILocation(line: 650, column: 24, scope: !1123, inlinedAt: !1221)
!1230 = !DILocation(line: 595, column: 32, scope: !1216, inlinedAt: !954)
!1231 = !DILocation(line: 595, column: 48, scope: !1216, inlinedAt: !954)
!1232 = !DILocation(line: 595, column: 45, scope: !1216, inlinedAt: !954)
!1233 = !DILocation(line: 594, column: 13, scope: !1219, inlinedAt: !954)
!1234 = !DILocation(line: 518, column: 22, scope: !1235, inlinedAt: !1146)
!1235 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 517, column: 5)
!1236 = !DILocation(line: 647, column: 16, scope: !1123, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 600, column: 14, scope: !1238, inlinedAt: !954)
!1238 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 599, column: 5)
!1239 = !DILocation(line: 650, column: 11, scope: !1123, inlinedAt: !1237)
!1240 = !DILocation(line: 650, column: 14, scope: !1123, inlinedAt: !1237)
!1241 = !DILocation(line: 650, column: 48, scope: !1123, inlinedAt: !1237)
!1242 = !DILocation(line: 650, column: 46, scope: !1123, inlinedAt: !1237)
!1243 = !DILocation(line: 650, column: 24, scope: !1123, inlinedAt: !1237)
!1244 = !DILocation(line: 600, column: 28, scope: !1238, inlinedAt: !954)
!1245 = !DILocation(line: 600, column: 44, scope: !1238, inlinedAt: !954)
!1246 = !DILocation(line: 600, column: 41, scope: !1238, inlinedAt: !954)
!1247 = !DILocation(line: 600, column: 7, scope: !1238, inlinedAt: !954)
!1248 = !DILocation(line: 601, column: 13, scope: !1238, inlinedAt: !954)
!1249 = !DILocation(line: 649, column: 11, scope: !1123, inlinedAt: !1237)
!1250 = !DILocation(line: 649, column: 33, scope: !1123, inlinedAt: !1237)
!1251 = !DILocation(line: 649, column: 30, scope: !1123, inlinedAt: !1237)
!1252 = distinct !{!1252, !1253, !1254}
!1253 = !DILocation(line: 600, column: 7, scope: !1238)
!1254 = !DILocation(line: 601, column: 27, scope: !1238)
!1255 = !DILocation(line: 606, column: 3, scope: !1256, inlinedAt: !954)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 606, column: 3)
!1257 = distinct !DILexicalBlock(scope: !948, file: !3, line: 606, column: 3)
!1258 = !DILocation(line: 606, column: 3, scope: !1257, inlinedAt: !954)
!1259 = !DILocation(line: 608, column: 48, scope: !948, inlinedAt: !954)
!1260 = !DILocation(line: 608, column: 54, scope: !948, inlinedAt: !954)
!1261 = !DILocation(line: 608, column: 28, scope: !948, inlinedAt: !954)
!1262 = !DILocation(line: 484, column: 7, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !936, file: !3, line: 483, column: 5)
!1264 = !DILocalVariable(name: "finish", arg: 1, scope: !1265, file: !3, line: 958, type: !151)
!1265 = distinct !DISubprogram(name: "put_paragraph", scope: !3, file: !3, line: 958, type: !1266, isLocal: true, isDefinition: true, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1268)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !151}
!1268 = !{!1264, !1269}
!1269 = !DILocalVariable(name: "w", scope: !1265, file: !3, line: 960, type: !151)
!1270 = !DILocation(line: 958, column: 22, scope: !1265, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 485, column: 7, scope: !1263)
!1272 = !DILocation(line: 962, column: 19, scope: !1265, inlinedAt: !1271)
!1273 = !DILocation(line: 962, column: 3, scope: !1265, inlinedAt: !1271)
!1274 = !DIExpression(DW_OP_deref)
!1275 = !DILocation(line: 960, column: 9, scope: !1265, inlinedAt: !1271)
!1276 = !{!1277, !673, i64 32}
!1277 = !{!"Word", !673, i64 0, !794, i64 8, !794, i64 12, !794, i64 16, !794, i64 16, !794, i64 16, !794, i64 16, !794, i64 20, !1016, i64 24, !673, i64 32}
!1278 = !DILocation(line: 963, column: 32, scope: !1279, inlinedAt: !1271)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 963, column: 3)
!1280 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 963, column: 3)
!1281 = !DILocation(line: 963, column: 3, scope: !1280, inlinedAt: !1271)
!1282 = !DILocation(line: 964, column: 18, scope: !1279, inlinedAt: !1271)
!1283 = !DILocation(line: 964, column: 5, scope: !1279, inlinedAt: !1271)
!1284 = !DILocation(line: 963, column: 50, scope: !1279, inlinedAt: !1271)
!1285 = distinct !{!1285, !1286, !1287}
!1286 = !DILocation(line: 963, column: 3, scope: !1280)
!1287 = !DILocation(line: 964, column: 30, scope: !1280)
!1288 = distinct !{!1288, !946, !1289}
!1289 = !DILocation(line: 486, column: 5, scope: !936)
!1290 = !DILocation(line: 487, column: 1, scope: !936)
!1291 = distinct !DISubprogram(name: "get_prefix", scope: !3, file: !3, line: 717, type: !1099, isLocal: true, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1292)
!1292 = !{!1293, !1294, !1295, !1298}
!1293 = !DILocalVariable(name: "f", arg: 1, scope: !1291, file: !3, line: 717, type: !727)
!1294 = !DILocalVariable(name: "c", scope: !1291, file: !3, line: 719, type: !50)
!1295 = !DILocalVariable(name: "p", scope: !1296, file: !3, line: 728, type: !66)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 727, column: 5)
!1297 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 723, column: 7)
!1298 = !DILocalVariable(name: "pc", scope: !1299, file: !3, line: 732, type: !49)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 731, column: 9)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 730, column: 7)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 730, column: 7)
!1302 = !DILocation(line: 717, column: 19, scope: !1291)
!1303 = !DILocation(line: 721, column: 13, scope: !1291)
!1304 = !DILocation(line: 63, column: 22, scope: !1098, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 722, column: 21, scope: !1291)
!1306 = !DILocation(line: 65, column: 10, scope: !1098, inlinedAt: !1305)
!1307 = !DILocation(line: 751, column: 11, scope: !1308, inlinedAt: !1313)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 750, column: 5)
!1309 = distinct !DISubprogram(name: "get_space", scope: !3, file: !3, line: 747, type: !971, isLocal: true, isDefinition: true, scopeLine: 748, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1310)
!1310 = !{!1311, !1312}
!1311 = !DILocalVariable(name: "f", arg: 1, scope: !1309, file: !3, line: 747, type: !727)
!1312 = !DILocalVariable(name: "c", arg: 2, scope: !1309, file: !3, line: 747, type: !50)
!1313 = distinct !DILocation(line: 722, column: 7, scope: !1291)
!1314 = !DILocation(line: 747, column: 25, scope: !1309, inlinedAt: !1313)
!1315 = !DILocation(line: 752, column: 18, scope: !1316, inlinedAt: !1313)
!1316 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 751, column: 11)
!1317 = !DILocation(line: 752, column: 9, scope: !1316, inlinedAt: !1313)
!1318 = !DILocation(line: 756, column: 24, scope: !1319, inlinedAt: !1313)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 754, column: 9)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 753, column: 16)
!1321 = !DILocation(line: 756, column: 34, scope: !1319, inlinedAt: !1313)
!1322 = !DILocation(line: 756, column: 50, scope: !1319, inlinedAt: !1313)
!1323 = !DILocation(line: 63, column: 22, scope: !1098, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 760, column: 11, scope: !1308, inlinedAt: !1313)
!1325 = !DILocation(line: 65, column: 10, scope: !1098, inlinedAt: !1324)
!1326 = distinct !{!1326, !1327, !1328}
!1327 = !DILocation(line: 749, column: 3, scope: !1309)
!1328 = !DILocation(line: 761, column: 5, scope: !1309)
!1329 = !DILocation(line: 719, column: 7, scope: !1291)
!1330 = !DILocation(line: 723, column: 7, scope: !1297)
!1331 = !DILocation(line: 723, column: 21, scope: !1297)
!1332 = !DILocation(line: 723, column: 7, scope: !1291)
!1333 = !DILocation(line: 724, column: 26, scope: !1297)
!1334 = !DILocation(line: 724, column: 46, scope: !1297)
!1335 = !DILocation(line: 724, column: 44, scope: !1297)
!1336 = !DILocation(line: 724, column: 24, scope: !1297)
!1337 = !DILocation(line: 724, column: 5, scope: !1297)
!1338 = !DILocation(line: 729, column: 28, scope: !1296)
!1339 = !DILocation(line: 729, column: 26, scope: !1296)
!1340 = !DILocation(line: 730, column: 16, scope: !1301)
!1341 = !DILocation(line: 728, column: 19, scope: !1296)
!1342 = !DILocation(line: 730, column: 24, scope: !1300)
!1343 = !DILocation(line: 730, column: 27, scope: !1300)
!1344 = !DILocation(line: 730, column: 7, scope: !1301)
!1345 = !DILocation(line: 733, column: 20, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 733, column: 15)
!1347 = !DILocation(line: 732, column: 25, scope: !1299)
!1348 = !DILocation(line: 733, column: 17, scope: !1346)
!1349 = !DILocation(line: 733, column: 15, scope: !1299)
!1350 = !DILocation(line: 735, column: 20, scope: !1299)
!1351 = !DILocation(line: 63, column: 22, scope: !1098, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 736, column: 15, scope: !1299)
!1353 = !DILocation(line: 65, column: 10, scope: !1098, inlinedAt: !1352)
!1354 = !DILocation(line: 730, column: 37, scope: !1300)
!1355 = distinct !{!1355, !1344, !1356}
!1356 = !DILocation(line: 737, column: 9, scope: !1301)
!1357 = !DILocation(line: 751, column: 11, scope: !1308, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 738, column: 11, scope: !1296)
!1359 = !DILocation(line: 747, column: 25, scope: !1309, inlinedAt: !1358)
!1360 = !DILocation(line: 752, column: 18, scope: !1316, inlinedAt: !1358)
!1361 = !DILocation(line: 752, column: 9, scope: !1316, inlinedAt: !1358)
!1362 = !DILocation(line: 756, column: 24, scope: !1319, inlinedAt: !1358)
!1363 = !DILocation(line: 756, column: 34, scope: !1319, inlinedAt: !1358)
!1364 = !DILocation(line: 756, column: 50, scope: !1319, inlinedAt: !1358)
!1365 = !DILocation(line: 63, column: 22, scope: !1098, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 760, column: 11, scope: !1308, inlinedAt: !1358)
!1367 = !DILocation(line: 65, column: 10, scope: !1098, inlinedAt: !1366)
!1368 = !DILocation(line: 741, column: 1, scope: !1291)
!1369 = distinct !DISubprogram(name: "get_line", scope: !3, file: !3, line: 663, type: !971, isLocal: true, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1370)
!1370 = !{!1371, !1372, !1373, !1374, !1375}
!1371 = !DILocalVariable(name: "f", arg: 1, scope: !1369, file: !3, line: 663, type: !727)
!1372 = !DILocalVariable(name: "c", arg: 2, scope: !1369, file: !3, line: 663, type: !50)
!1373 = !DILocalVariable(name: "start", scope: !1369, file: !3, line: 665, type: !50)
!1374 = !DILocalVariable(name: "end_of_parabuf", scope: !1369, file: !3, line: 666, type: !45)
!1375 = !DILocalVariable(name: "end_of_word", scope: !1369, file: !3, line: 667, type: !151)
!1376 = !DILocation(line: 663, column: 17, scope: !1369)
!1377 = !DILocation(line: 663, column: 24, scope: !1369)
!1378 = !DILocation(line: 666, column: 9, scope: !1369)
!1379 = !DILocation(line: 667, column: 9, scope: !1369)
!1380 = !DILocation(line: 677, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 673, column: 5)
!1382 = !DILocation(line: 672, column: 3, scope: !1369)
!1383 = distinct !{!1383, !1382, !1384}
!1384 = !DILocation(line: 709, column: 31, scope: !1369)
!1385 = !DILocation(line: 677, column: 26, scope: !1381)
!1386 = !DILocation(line: 677, column: 24, scope: !1381)
!1387 = !{!1277, !673, i64 0}
!1388 = !DILocation(line: 678, column: 7, scope: !1381)
!1389 = distinct !{!1389, !1388, !1390}
!1390 = !DILocation(line: 688, column: 38, scope: !1381)
!1391 = !DILocation(line: 680, column: 15, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 680, column: 15)
!1393 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 679, column: 9)
!1394 = !DILocation(line: 680, column: 20, scope: !1392)
!1395 = !DILocation(line: 680, column: 15, scope: !1393)
!1396 = !DILocation(line: 493, column: 24, scope: !1141, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 682, column: 15, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 681, column: 13)
!1399 = !DILocation(line: 495, column: 7, scope: !1141, inlinedAt: !1397)
!1400 = !DILocation(line: 496, column: 20, scope: !1149, inlinedAt: !1397)
!1401 = !DILocation(line: 496, column: 5, scope: !1149, inlinedAt: !1397)
!1402 = !DILocation(line: 497, column: 12, scope: !1149, inlinedAt: !1397)
!1403 = !DILocation(line: 500, column: 5, scope: !1404, inlinedAt: !1397)
!1404 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 498, column: 5)
!1405 = !DILocation(line: 501, column: 12, scope: !1151, inlinedAt: !1397)
!1406 = !DILocation(line: 503, column: 29, scope: !1153, inlinedAt: !1397)
!1407 = !DILocation(line: 503, column: 42, scope: !1153, inlinedAt: !1397)
!1408 = !DILocation(line: 503, column: 39, scope: !1153, inlinedAt: !1397)
!1409 = !DILocation(line: 503, column: 11, scope: !1154, inlinedAt: !1397)
!1410 = !DILocation(line: 513, column: 16, scope: !1157, inlinedAt: !1397)
!1411 = !DILocation(line: 513, column: 29, scope: !1157, inlinedAt: !1397)
!1412 = !DILocation(line: 513, column: 16, scope: !1153, inlinedAt: !1397)
!1413 = !DILocation(line: 514, column: 37, scope: !1157, inlinedAt: !1397)
!1414 = !DILocation(line: 514, column: 24, scope: !1157, inlinedAt: !1397)
!1415 = !DILocation(line: 514, column: 9, scope: !1157, inlinedAt: !1397)
!1416 = !DILocation(line: 518, column: 22, scope: !1235, inlinedAt: !1397)
!1417 = !DILocation(line: 520, column: 1, scope: !1141, inlinedAt: !1397)
!1418 = !DILocation(line: 683, column: 15, scope: !1398)
!1419 = !DILocation(line: 685, column: 16, scope: !1393)
!1420 = !DILocation(line: 684, column: 13, scope: !1398)
!1421 = !DILocation(line: 685, column: 21, scope: !1393)
!1422 = !DILocation(line: 685, column: 19, scope: !1393)
!1423 = !DILocation(line: 63, column: 22, scope: !1098, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 686, column: 15, scope: !1393)
!1425 = !DILocation(line: 65, column: 10, scope: !1098, inlinedAt: !1424)
!1426 = !DILocation(line: 688, column: 23, scope: !1381)
!1427 = !DILocation(line: 688, column: 16, scope: !1381)
!1428 = !DILocation(line: 774, column: 17, scope: !1429, inlinedAt: !1435)
!1429 = distinct !DISubprogram(name: "check_punctuation", scope: !3, file: !3, line: 767, type: !1266, isLocal: true, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1430)
!1430 = !{!1431, !1432, !1433, !1434}
!1431 = !DILocalVariable(name: "w", arg: 1, scope: !1429, file: !3, line: 767, type: !151)
!1432 = !DILocalVariable(name: "start", scope: !1429, file: !3, line: 769, type: !66)
!1433 = !DILocalVariable(name: "finish", scope: !1429, file: !3, line: 770, type: !66)
!1434 = !DILocalVariable(name: "fin", scope: !1429, file: !3, line: 771, type: !49)
!1435 = distinct !DILocation(line: 690, column: 7, scope: !1381)
!1436 = !DILocation(line: 688, column: 27, scope: !1381)
!1437 = !{!1017, !1017, i64 0}
!1438 = !DILocation(line: 688, column: 26, scope: !1381)
!1439 = !DILocation(line: 687, column: 9, scope: !1393)
!1440 = !DILocation(line: 689, column: 41, scope: !1381)
!1441 = !DILocation(line: 689, column: 48, scope: !1381)
!1442 = !DILocation(line: 689, column: 60, scope: !1381)
!1443 = !DILocation(line: 689, column: 46, scope: !1381)
!1444 = !DILocation(line: 689, column: 32, scope: !1381)
!1445 = !DILocation(line: 689, column: 39, scope: !1381)
!1446 = !{!1277, !794, i64 8}
!1447 = !DILocation(line: 689, column: 17, scope: !1381)
!1448 = !DILocation(line: 767, column: 26, scope: !1429, inlinedAt: !1435)
!1449 = !DILocation(line: 769, column: 26, scope: !1429, inlinedAt: !1435)
!1450 = !DILocation(line: 769, column: 15, scope: !1429, inlinedAt: !1435)
!1451 = !DILocation(line: 770, column: 30, scope: !1429, inlinedAt: !1435)
!1452 = !DILocation(line: 770, column: 15, scope: !1429, inlinedAt: !1435)
!1453 = !DILocation(line: 771, column: 23, scope: !1429, inlinedAt: !1435)
!1454 = !DILocation(line: 771, column: 17, scope: !1429, inlinedAt: !1435)
!1455 = !DILocation(line: 773, column: 14, scope: !1429, inlinedAt: !1435)
!1456 = !DILocation(line: 773, column: 6, scope: !1429, inlinedAt: !1435)
!1457 = !DILocation(line: 773, column: 12, scope: !1429, inlinedAt: !1435)
!1458 = !DILocation(line: 774, column: 12, scope: !1429, inlinedAt: !1435)
!1459 = !DILocation(line: 775, column: 16, scope: !1429, inlinedAt: !1435)
!1460 = !DILocation(line: 775, column: 25, scope: !1429, inlinedAt: !1435)
!1461 = !DILocation(line: 775, column: 28, scope: !1429, inlinedAt: !1435)
!1462 = !DILocation(line: 775, column: 3, scope: !1429, inlinedAt: !1435)
!1463 = !DILocation(line: 776, column: 11, scope: !1429, inlinedAt: !1435)
!1464 = distinct !{!1464, !1465, !1466}
!1465 = !DILocation(line: 775, column: 3, scope: !1429)
!1466 = !DILocation(line: 776, column: 11, scope: !1429)
!1467 = !DILocation(line: 777, column: 15, scope: !1429, inlinedAt: !1435)
!1468 = !DILocation(line: 777, column: 13, scope: !1429, inlinedAt: !1435)
!1469 = !DILocation(line: 665, column: 7, scope: !1369)
!1470 = !DILocation(line: 747, column: 18, scope: !1309, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 695, column: 11, scope: !1381)
!1472 = !DILocation(line: 747, column: 25, scope: !1309, inlinedAt: !1471)
!1473 = !DILocation(line: 749, column: 3, scope: !1309, inlinedAt: !1471)
!1474 = !DILocation(line: 751, column: 11, scope: !1308, inlinedAt: !1471)
!1475 = !DILocation(line: 752, column: 18, scope: !1316, inlinedAt: !1471)
!1476 = !DILocation(line: 752, column: 9, scope: !1316, inlinedAt: !1471)
!1477 = !DILocation(line: 756, column: 24, scope: !1319, inlinedAt: !1471)
!1478 = !DILocation(line: 756, column: 34, scope: !1319, inlinedAt: !1471)
!1479 = !DILocation(line: 756, column: 50, scope: !1319, inlinedAt: !1471)
!1480 = !DILocation(line: 63, column: 22, scope: !1098, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 760, column: 11, scope: !1308, inlinedAt: !1471)
!1482 = !DILocation(line: 65, column: 10, scope: !1098, inlinedAt: !1481)
!1483 = !DILocation(line: 696, column: 27, scope: !1381)
!1484 = !DILocation(line: 696, column: 37, scope: !1381)
!1485 = !DILocation(line: 696, column: 7, scope: !1381)
!1486 = !DILocation(line: 696, column: 19, scope: !1381)
!1487 = !DILocation(line: 696, column: 25, scope: !1381)
!1488 = !{!1277, !794, i64 12}
!1489 = !DILocation(line: 697, column: 30, scope: !1381)
!1490 = !DILocation(line: 698, column: 28, scope: !1381)
!1491 = !DILocation(line: 698, column: 44, scope: !1381)
!1492 = !DILocation(line: 698, column: 32, scope: !1381)
!1493 = !DILocation(line: 699, column: 32, scope: !1381)
!1494 = !DILocation(line: 699, column: 38, scope: !1381)
!1495 = !DILocation(line: 699, column: 46, scope: !1381)
!1496 = !DILocation(line: 699, column: 67, scope: !1381)
!1497 = !DILocation(line: 697, column: 25, scope: !1381)
!1498 = !DILocation(line: 700, column: 21, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 700, column: 11)
!1500 = !DILocation(line: 700, column: 11, scope: !1381)
!1501 = !DILocation(line: 701, column: 41, scope: !1499)
!1502 = !DILocation(line: 701, column: 29, scope: !1499)
!1503 = !DILocation(line: 701, column: 27, scope: !1499)
!1504 = !DILocation(line: 701, column: 9, scope: !1499)
!1505 = !DILocation(line: 702, column: 22, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 702, column: 11)
!1507 = !DILocation(line: 702, column: 11, scope: !1381)
!1508 = !DILocation(line: 493, column: 24, scope: !1141, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 704, column: 11, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 703, column: 9)
!1511 = !DILocation(line: 495, column: 7, scope: !1141, inlinedAt: !1509)
!1512 = !DILocation(line: 496, column: 20, scope: !1149, inlinedAt: !1509)
!1513 = !DILocation(line: 496, column: 5, scope: !1149, inlinedAt: !1509)
!1514 = !DILocation(line: 497, column: 12, scope: !1149, inlinedAt: !1509)
!1515 = !DILocation(line: 501, column: 12, scope: !1151, inlinedAt: !1509)
!1516 = !DILocation(line: 503, column: 39, scope: !1153, inlinedAt: !1509)
!1517 = !DILocation(line: 503, column: 11, scope: !1154, inlinedAt: !1509)
!1518 = !DILocation(line: 513, column: 16, scope: !1157, inlinedAt: !1509)
!1519 = !DILocation(line: 513, column: 29, scope: !1157, inlinedAt: !1509)
!1520 = !DILocation(line: 513, column: 16, scope: !1153, inlinedAt: !1509)
!1521 = !DILocation(line: 514, column: 37, scope: !1157, inlinedAt: !1509)
!1522 = !DILocation(line: 514, column: 24, scope: !1157, inlinedAt: !1509)
!1523 = !DILocation(line: 514, column: 9, scope: !1157, inlinedAt: !1509)
!1524 = !DILocation(line: 520, column: 1, scope: !1141, inlinedAt: !1509)
!1525 = !DILocation(line: 705, column: 11, scope: !1510)
!1526 = !DILocation(line: 707, column: 17, scope: !1381)
!1527 = !DILocation(line: 706, column: 9, scope: !1510)
!1528 = !DILocation(line: 708, column: 5, scope: !1381)
!1529 = !DILocation(line: 710, column: 10, scope: !1369)
!1530 = !DILocation(line: 710, column: 3, scope: !1369)
!1531 = distinct !DISubprogram(name: "fmt_paragraph", scope: !3, file: !3, line: 848, type: !681, isLocal: true, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538}
!1533 = !DILocalVariable(name: "start", scope: !1531, file: !3, line: 850, type: !151)
!1534 = !DILocalVariable(name: "w", scope: !1531, file: !3, line: 850, type: !151)
!1535 = !DILocalVariable(name: "len", scope: !1531, file: !3, line: 851, type: !50)
!1536 = !DILocalVariable(name: "wcost", scope: !1531, file: !3, line: 852, type: !52)
!1537 = !DILocalVariable(name: "best", scope: !1531, file: !3, line: 852, type: !52)
!1538 = !DILocalVariable(name: "saved_length", scope: !1531, file: !3, line: 853, type: !50)
!1539 = !DILocation(line: 855, column: 3, scope: !1531)
!1540 = !DILocation(line: 855, column: 15, scope: !1531)
!1541 = !DILocation(line: 855, column: 25, scope: !1531)
!1542 = !{!1277, !1016, i64 24}
!1543 = !DILocation(line: 856, column: 30, scope: !1531)
!1544 = !DILocation(line: 853, column: 7, scope: !1531)
!1545 = !DILocation(line: 857, column: 24, scope: !1531)
!1546 = !DILocation(line: 857, column: 22, scope: !1531)
!1547 = !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)
!1548 = !DILocation(line: 850, column: 9, scope: !1531)
!1549 = !DILocation(line: 859, column: 38, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 859, column: 3)
!1551 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 859, column: 3)
!1552 = !DILocation(line: 859, column: 3, scope: !1551)
!1553 = !DILocation(line: 852, column: 15, scope: !1531)
!1554 = !DILocation(line: 862, column: 19, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 860, column: 5)
!1556 = !DILocation(line: 851, column: 7, scope: !1531)
!1557 = !DILocation(line: 850, column: 17, scope: !1531)
!1558 = !DILocation(line: 867, column: 17, scope: !1555)
!1559 = !DILocation(line: 867, column: 11, scope: !1555)
!1560 = !DILocation(line: 868, column: 7, scope: !1555)
!1561 = distinct !{!1561, !1560, !1562}
!1562 = !DILocation(line: 893, column: 29, scope: !1555)
!1563 = !DILocation(line: 870, column: 12, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 869, column: 9)
!1565 = !DILocalVariable(name: "next", arg: 1, scope: !1566, file: !3, line: 937, type: !151)
!1566 = distinct !DISubprogram(name: "line_cost", scope: !3, file: !3, line: 937, type: !1567, isLocal: true, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1569)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!52, !151, !50}
!1569 = !{!1565, !1570, !1571, !1572}
!1570 = !DILocalVariable(name: "len", arg: 2, scope: !1566, file: !3, line: 937, type: !50)
!1571 = !DILocalVariable(name: "n", scope: !1566, file: !3, line: 939, type: !50)
!1572 = !DILocalVariable(name: "cost", scope: !1566, file: !3, line: 940, type: !52)
!1573 = !DILocation(line: 937, column: 18, scope: !1566, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 874, column: 19, scope: !1564)
!1575 = !DILocation(line: 937, column: 28, scope: !1566, inlinedAt: !1574)
!1576 = !DILocation(line: 942, column: 12, scope: !1577, inlinedAt: !1574)
!1577 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 942, column: 7)
!1578 = !DILocation(line: 942, column: 7, scope: !1566, inlinedAt: !1574)
!1579 = !DILocation(line: 944, column: 18, scope: !1566, inlinedAt: !1574)
!1580 = !DILocation(line: 939, column: 7, scope: !1566, inlinedAt: !1574)
!1581 = !DILocation(line: 945, column: 10, scope: !1566, inlinedAt: !1574)
!1582 = !DILocation(line: 940, column: 8, scope: !1566, inlinedAt: !1574)
!1583 = !DILocation(line: 946, column: 13, scope: !1584, inlinedAt: !1574)
!1584 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 946, column: 7)
!1585 = !DILocation(line: 946, column: 24, scope: !1584, inlinedAt: !1574)
!1586 = !DILocation(line: 946, column: 7, scope: !1566, inlinedAt: !1574)
!1587 = !DILocation(line: 948, column: 23, scope: !1588, inlinedAt: !1574)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 947, column: 5)
!1589 = !{!1277, !794, i64 20}
!1590 = !DILocation(line: 948, column: 15, scope: !1588, inlinedAt: !1574)
!1591 = !DILocation(line: 949, column: 15, scope: !1588, inlinedAt: !1574)
!1592 = !DILocation(line: 949, column: 12, scope: !1588, inlinedAt: !1574)
!1593 = !DILocation(line: 950, column: 5, scope: !1588, inlinedAt: !1574)
!1594 = !DILocation(line: 874, column: 43, scope: !1564)
!1595 = !DILocation(line: 874, column: 38, scope: !1564)
!1596 = !DILocation(line: 852, column: 8, scope: !1531)
!1597 = !DILocation(line: 875, column: 29, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 875, column: 15)
!1599 = !DILocation(line: 876, column: 22, scope: !1598)
!1600 = !DILocation(line: 876, column: 19, scope: !1598)
!1601 = !DILocation(line: 876, column: 13, scope: !1598)
!1602 = !DILocation(line: 877, column: 21, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 877, column: 15)
!1604 = !DILocation(line: 877, column: 15, scope: !1564)
!1605 = !DILocation(line: 880, column: 33, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 878, column: 13)
!1607 = !DILocation(line: 881, column: 34, scope: !1606)
!1608 = !DILocation(line: 882, column: 13, scope: !1606)
!1609 = !DILocation(line: 888, column: 15, scope: !1564)
!1610 = !DILocation(line: 891, column: 27, scope: !1564)
!1611 = !DILocation(line: 891, column: 38, scope: !1564)
!1612 = !DILocation(line: 891, column: 33, scope: !1564)
!1613 = !DILocation(line: 891, column: 15, scope: !1564)
!1614 = !DILocation(line: 893, column: 18, scope: !1555)
!1615 = !DILocation(line: 892, column: 9, scope: !1564)
!1616 = !DILocalVariable(name: "this", arg: 1, scope: !1617, file: !3, line: 904, type: !151)
!1617 = distinct !DISubprogram(name: "base_cost", scope: !3, file: !3, line: 904, type: !1618, isLocal: true, isDefinition: true, scopeLine: 905, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!52, !151}
!1620 = !{!1616, !1621}
!1621 = !DILocalVariable(name: "cost", scope: !1617, file: !3, line: 906, type: !52)
!1622 = !DILocation(line: 904, column: 18, scope: !1617, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 894, column: 33, scope: !1555)
!1624 = !DILocation(line: 906, column: 8, scope: !1617, inlinedAt: !1623)
!1625 = !DILocation(line: 910, column: 12, scope: !1626, inlinedAt: !1623)
!1626 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 910, column: 7)
!1627 = !DILocation(line: 910, column: 7, scope: !1617, inlinedAt: !1623)
!1628 = !DILocation(line: 912, column: 23, scope: !1629, inlinedAt: !1623)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 912, column: 11)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 911, column: 5)
!1631 = !DILocation(line: 912, column: 11, scope: !1629, inlinedAt: !1623)
!1632 = !DILocation(line: 912, column: 11, scope: !1630, inlinedAt: !1623)
!1633 = !DILocation(line: 914, column: 27, scope: !1634, inlinedAt: !1623)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 914, column: 15)
!1635 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 913, column: 9)
!1636 = !DILocation(line: 914, column: 15, scope: !1634, inlinedAt: !1623)
!1637 = !DILocation(line: 919, column: 28, scope: !1638, inlinedAt: !1623)
!1638 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 919, column: 16)
!1639 = !DILocation(line: 919, column: 16, scope: !1638, inlinedAt: !1623)
!1640 = !DILocation(line: 919, column: 16, scope: !1629, inlinedAt: !1623)
!1641 = !DILocation(line: 921, column: 21, scope: !1642, inlinedAt: !1623)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 921, column: 16)
!1643 = !DILocation(line: 921, column: 32, scope: !1642, inlinedAt: !1623)
!1644 = !DILocation(line: 921, column: 47, scope: !1642, inlinedAt: !1623)
!1645 = !DILocation(line: 921, column: 35, scope: !1642, inlinedAt: !1623)
!1646 = !DILocation(line: 921, column: 16, scope: !1638, inlinedAt: !1623)
!1647 = !DILocation(line: 922, column: 17, scope: !1642, inlinedAt: !1623)
!1648 = !DILocation(line: 922, column: 14, scope: !1642, inlinedAt: !1623)
!1649 = !DILocation(line: 922, column: 9, scope: !1642, inlinedAt: !1623)
!1650 = !DILocation(line: 925, column: 13, scope: !1651, inlinedAt: !1623)
!1651 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 925, column: 7)
!1652 = !DILocation(line: 925, column: 7, scope: !1651, inlinedAt: !1623)
!1653 = !DILocation(line: 925, column: 7, scope: !1617, inlinedAt: !1623)
!1654 = !DILocation(line: 926, column: 10, scope: !1651, inlinedAt: !1623)
!1655 = !DILocation(line: 926, column: 5, scope: !1651, inlinedAt: !1623)
!1656 = !DILocation(line: 927, column: 18, scope: !1657, inlinedAt: !1623)
!1657 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 927, column: 12)
!1658 = !DILocation(line: 927, column: 12, scope: !1657, inlinedAt: !1623)
!1659 = !DILocation(line: 927, column: 12, scope: !1651, inlinedAt: !1623)
!1660 = !DILocation(line: 928, column: 13, scope: !1657, inlinedAt: !1623)
!1661 = !DILocation(line: 928, column: 10, scope: !1657, inlinedAt: !1623)
!1662 = !DILocation(line: 928, column: 5, scope: !1657, inlinedAt: !1623)
!1663 = !DILocation(line: 894, column: 31, scope: !1555)
!1664 = !DILocation(line: 894, column: 14, scope: !1555)
!1665 = !DILocation(line: 894, column: 24, scope: !1555)
!1666 = distinct !{!1666, !1552, !1667}
!1667 = !DILocation(line: 895, column: 5, scope: !1551)
!1668 = !DILocation(line: 897, column: 22, scope: !1531)
!1669 = !DILocation(line: 898, column: 1, scope: !1531)
!1670 = distinct !DISubprogram(name: "put_line", scope: !3, file: !3, line: 971, type: !1671, isLocal: true, isDefinition: true, scopeLine: 972, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !151, !50}
!1673 = !{!1674, !1675, !1676}
!1674 = !DILocalVariable(name: "w", arg: 1, scope: !1670, file: !3, line: 971, type: !151)
!1675 = !DILocalVariable(name: "indent", arg: 2, scope: !1670, file: !3, line: 971, type: !50)
!1676 = !DILocalVariable(name: "endline", scope: !1670, file: !3, line: 973, type: !151)
!1677 = !DILocation(line: 971, column: 17, scope: !1670)
!1678 = !DILocation(line: 971, column: 24, scope: !1670)
!1679 = !DILocation(line: 975, column: 14, scope: !1670)
!1680 = !DILocation(line: 976, column: 14, scope: !1670)
!1681 = !DILocation(line: 1009, column: 16, scope: !987, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 976, column: 3, scope: !1670)
!1683 = !DILocation(line: 1011, column: 7, scope: !987, inlinedAt: !1682)
!1684 = !DILocation(line: 1014, column: 7, scope: !987, inlinedAt: !1682)
!1685 = !DILocation(line: 1016, column: 33, scope: !997, inlinedAt: !1682)
!1686 = !DILocation(line: 1016, column: 44, scope: !997, inlinedAt: !1682)
!1687 = !DILocation(line: 1011, column: 21, scope: !987, inlinedAt: !1682)
!1688 = !DILocation(line: 1017, column: 26, scope: !1002, inlinedAt: !1682)
!1689 = !DILocation(line: 1017, column: 11, scope: !997, inlinedAt: !1682)
!1690 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 1020, column: 13, scope: !1012, inlinedAt: !1682)
!1692 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1691)
!1693 = !DILocation(line: 1021, column: 27, scope: !1012, inlinedAt: !1682)
!1694 = !DILocation(line: 1021, column: 38, scope: !1012, inlinedAt: !1682)
!1695 = !DILocation(line: 1021, column: 54, scope: !1012, inlinedAt: !1682)
!1696 = !DILocation(line: 1021, column: 24, scope: !1012, inlinedAt: !1682)
!1697 = !DILocation(line: 1018, column: 27, scope: !1002, inlinedAt: !1682)
!1698 = !DILocation(line: 1018, column: 9, scope: !1002, inlinedAt: !1682)
!1699 = !DILocation(line: 1024, column: 10, scope: !987, inlinedAt: !1682)
!1700 = !DILocation(line: 1024, column: 21, scope: !987, inlinedAt: !1682)
!1701 = !DILocation(line: 1024, column: 3, scope: !987, inlinedAt: !1682)
!1702 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 1026, column: 7, scope: !1034, inlinedAt: !1682)
!1704 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1703)
!1705 = !DILocation(line: 1027, column: 17, scope: !1034, inlinedAt: !1682)
!1706 = !DILocation(line: 977, column: 3, scope: !1670)
!1707 = !DILocation(line: 978, column: 17, scope: !1670)
!1708 = !DILocation(line: 978, column: 14, scope: !1670)
!1709 = !DILocation(line: 1011, column: 7, scope: !987, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 979, column: 3, scope: !1670)
!1711 = !DILocation(line: 1014, column: 7, scope: !987, inlinedAt: !1710)
!1712 = !DILocation(line: 1016, column: 33, scope: !997, inlinedAt: !1710)
!1713 = !DILocation(line: 1016, column: 44, scope: !997, inlinedAt: !1710)
!1714 = !DILocation(line: 1011, column: 21, scope: !987, inlinedAt: !1710)
!1715 = !DILocation(line: 1017, column: 22, scope: !1002, inlinedAt: !1710)
!1716 = !DILocation(line: 1017, column: 26, scope: !1002, inlinedAt: !1710)
!1717 = !DILocation(line: 1018, column: 27, scope: !1002, inlinedAt: !1710)
!1718 = !DILocation(line: 1017, column: 11, scope: !997, inlinedAt: !1710)
!1719 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 1020, column: 13, scope: !1012, inlinedAt: !1710)
!1721 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1720)
!1722 = !DILocation(line: 1021, column: 27, scope: !1012, inlinedAt: !1710)
!1723 = !DILocation(line: 1021, column: 38, scope: !1012, inlinedAt: !1710)
!1724 = !DILocation(line: 1021, column: 54, scope: !1012, inlinedAt: !1710)
!1725 = !DILocation(line: 1021, column: 24, scope: !1012, inlinedAt: !1710)
!1726 = !DILocation(line: 1018, column: 9, scope: !1002, inlinedAt: !1710)
!1727 = !DILocation(line: 1024, column: 10, scope: !987, inlinedAt: !1710)
!1728 = !DILocation(line: 1024, column: 21, scope: !987, inlinedAt: !1710)
!1729 = !DILocation(line: 1024, column: 3, scope: !987, inlinedAt: !1710)
!1730 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 1026, column: 7, scope: !1034, inlinedAt: !1710)
!1732 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1731)
!1733 = !DILocation(line: 1027, column: 17, scope: !1034, inlinedAt: !1710)
!1734 = !DILocation(line: 981, column: 16, scope: !1670)
!1735 = !DILocation(line: 981, column: 27, scope: !1670)
!1736 = !DILocation(line: 973, column: 9, scope: !1670)
!1737 = !DILocation(line: 982, column: 3, scope: !1670)
!1738 = !DILocation(line: 982, column: 12, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 982, column: 3)
!1740 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 982, column: 3)
!1741 = !DILocalVariable(name: "w", arg: 1, scope: !1742, file: !3, line: 995, type: !151)
!1742 = distinct !DISubprogram(name: "put_word", scope: !3, file: !3, line: 995, type: !1266, isLocal: true, isDefinition: true, scopeLine: 996, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1743)
!1743 = !{!1741, !1744, !1745}
!1744 = !DILocalVariable(name: "s", scope: !1742, file: !3, line: 997, type: !66)
!1745 = !DILocalVariable(name: "n", scope: !1742, file: !3, line: 998, type: !50)
!1746 = !DILocation(line: 995, column: 17, scope: !1742, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 984, column: 7, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 983, column: 5)
!1749 = !DILocation(line: 1001, column: 15, scope: !1750, inlinedAt: !1747)
!1750 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 1001, column: 3)
!1751 = !DILocation(line: 998, column: 7, scope: !1742, inlinedAt: !1747)
!1752 = !DILocation(line: 1001, column: 25, scope: !1753, inlinedAt: !1747)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 1001, column: 3)
!1754 = !DILocation(line: 1001, column: 3, scope: !1750, inlinedAt: !1747)
!1755 = !DILocation(line: 1000, column: 10, scope: !1742, inlinedAt: !1747)
!1756 = !DILocation(line: 997, column: 15, scope: !1742, inlinedAt: !1747)
!1757 = !DILocation(line: 1002, column: 5, scope: !1753, inlinedAt: !1747)
!1758 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 1002, column: 5, scope: !1753, inlinedAt: !1747)
!1760 = !DILocation(line: 1001, column: 32, scope: !1753, inlinedAt: !1747)
!1761 = distinct !{!1761, !1762, !1763}
!1762 = !DILocation(line: 1001, column: 3, scope: !1750)
!1763 = !DILocation(line: 1002, column: 5, scope: !1750)
!1764 = !DILocation(line: 1003, column: 20, scope: !1742, inlinedAt: !1747)
!1765 = !DILocation(line: 1003, column: 14, scope: !1742, inlinedAt: !1747)
!1766 = !DILocation(line: 982, column: 3, scope: !1740)
!1767 = !DILocation(line: 985, column: 21, scope: !1748)
!1768 = !DILocation(line: 1009, column: 16, scope: !987, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 985, column: 7, scope: !1748)
!1770 = !DILocation(line: 1013, column: 29, scope: !987, inlinedAt: !1769)
!1771 = !DILocation(line: 1011, column: 7, scope: !987, inlinedAt: !1769)
!1772 = !DILocation(line: 1014, column: 7, scope: !987, inlinedAt: !1769)
!1773 = !DILocation(line: 1016, column: 33, scope: !997, inlinedAt: !1769)
!1774 = !DILocation(line: 1016, column: 44, scope: !997, inlinedAt: !1769)
!1775 = !DILocation(line: 1011, column: 21, scope: !987, inlinedAt: !1769)
!1776 = !DILocation(line: 1017, column: 22, scope: !1002, inlinedAt: !1769)
!1777 = !DILocation(line: 1017, column: 26, scope: !1002, inlinedAt: !1769)
!1778 = !DILocation(line: 1018, column: 27, scope: !1002, inlinedAt: !1769)
!1779 = !DILocation(line: 1017, column: 11, scope: !997, inlinedAt: !1769)
!1780 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 1020, column: 13, scope: !1012, inlinedAt: !1769)
!1782 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1781)
!1783 = !DILocation(line: 1021, column: 27, scope: !1012, inlinedAt: !1769)
!1784 = !DILocation(line: 1021, column: 38, scope: !1012, inlinedAt: !1769)
!1785 = !DILocation(line: 1021, column: 54, scope: !1012, inlinedAt: !1769)
!1786 = !DILocation(line: 1021, column: 24, scope: !1012, inlinedAt: !1769)
!1787 = !DILocation(line: 1018, column: 9, scope: !1002, inlinedAt: !1769)
!1788 = !DILocation(line: 1024, column: 21, scope: !987, inlinedAt: !1769)
!1789 = !DILocation(line: 1024, column: 3, scope: !987, inlinedAt: !1769)
!1790 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 1026, column: 7, scope: !1034, inlinedAt: !1769)
!1792 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1791)
!1793 = !DILocation(line: 1027, column: 17, scope: !1034, inlinedAt: !1769)
!1794 = !DILocation(line: 982, column: 25, scope: !1739)
!1795 = !DILocation(line: 982, column: 3, scope: !1739)
!1796 = distinct !{!1796, !1766, !1797}
!1797 = !DILocation(line: 986, column: 5, scope: !1740)
!1798 = !DILocation(line: 988, column: 20, scope: !1670)
!1799 = !DILocation(line: 105, column: 23, scope: !1005, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 989, column: 3, scope: !1670)
!1801 = !DILocation(line: 107, column: 10, scope: !1005, inlinedAt: !1800)
!1802 = !DILocation(line: 990, column: 1, scope: !1670)
!1803 = distinct !DISubprogram(name: "flush_paragraph", scope: !3, file: !3, line: 784, type: !681, isLocal: true, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1804)
!1804 = !{!1805, !1806, !1807, !1808}
!1805 = !DILocalVariable(name: "split_point", scope: !1803, file: !3, line: 786, type: !151)
!1806 = !DILocalVariable(name: "w", scope: !1803, file: !3, line: 787, type: !151)
!1807 = !DILocalVariable(name: "shift", scope: !1803, file: !3, line: 788, type: !50)
!1808 = !DILocalVariable(name: "best_break", scope: !1803, file: !3, line: 789, type: !52)
!1809 = !DILocation(line: 793, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 793, column: 7)
!1811 = !DILocation(line: 793, column: 18, scope: !1810)
!1812 = !DILocation(line: 793, column: 7, scope: !1803)
!1813 = !DILocation(line: 795, column: 7, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 794, column: 5)
!1815 = !DILocation(line: 796, column: 12, scope: !1814)
!1816 = !DILocation(line: 797, column: 7, scope: !1814)
!1817 = !DILocation(line: 806, column: 3, scope: !1803)
!1818 = !DILocation(line: 786, column: 9, scope: !1803)
!1819 = !DILocation(line: 789, column: 8, scope: !1803)
!1820 = !DILocation(line: 787, column: 9, scope: !1803)
!1821 = !DILocation(line: 812, column: 32, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 812, column: 3)
!1823 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 812, column: 3)
!1824 = !DILocation(line: 812, column: 3, scope: !1823)
!1825 = !DILocation(line: 814, column: 14, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 814, column: 11)
!1827 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 813, column: 5)
!1828 = !DILocation(line: 814, column: 29, scope: !1826)
!1829 = !DILocation(line: 814, column: 41, scope: !1826)
!1830 = !DILocation(line: 814, column: 24, scope: !1826)
!1831 = !DILocation(line: 814, column: 51, scope: !1826)
!1832 = !DILocation(line: 814, column: 11, scope: !1827)
!1833 = !DILocation(line: 819, column: 22, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 819, column: 11)
!1835 = !DILocation(line: 820, column: 20, scope: !1834)
!1836 = !DILocation(line: 819, column: 11, scope: !1827)
!1837 = distinct !{!1837, !1824, !1838}
!1838 = !DILocation(line: 821, column: 5, scope: !1823)
!1839 = !DILocation(line: 958, column: 22, scope: !1265, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 822, column: 3, scope: !1803)
!1841 = !DILocation(line: 962, column: 19, scope: !1265, inlinedAt: !1840)
!1842 = !DILocation(line: 962, column: 3, scope: !1265, inlinedAt: !1840)
!1843 = !DILocation(line: 960, column: 9, scope: !1265, inlinedAt: !1840)
!1844 = !DILocation(line: 963, column: 32, scope: !1279, inlinedAt: !1840)
!1845 = !DILocation(line: 963, column: 3, scope: !1280, inlinedAt: !1840)
!1846 = !DILocation(line: 964, column: 18, scope: !1279, inlinedAt: !1840)
!1847 = !DILocation(line: 964, column: 5, scope: !1279, inlinedAt: !1840)
!1848 = !DILocation(line: 963, column: 50, scope: !1279, inlinedAt: !1840)
!1849 = !DILocation(line: 827, column: 34, scope: !1803)
!1850 = !DILocation(line: 827, column: 40, scope: !1803)
!1851 = !DILocation(line: 827, column: 45, scope: !1803)
!1852 = !DILocation(line: 827, column: 3, scope: !1803)
!1853 = !DILocation(line: 828, column: 24, scope: !1803)
!1854 = !DILocation(line: 828, column: 29, scope: !1803)
!1855 = !DILocation(line: 829, column: 8, scope: !1803)
!1856 = !DILocation(line: 833, column: 30, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 833, column: 3)
!1858 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 833, column: 3)
!1859 = !DILocation(line: 833, column: 27, scope: !1857)
!1860 = !DILocation(line: 833, column: 3, scope: !1858)
!1861 = !DILocation(line: 834, column: 8, scope: !1857)
!1862 = !DILocation(line: 834, column: 13, scope: !1857)
!1863 = !DILocation(line: 833, column: 43, scope: !1857)
!1864 = distinct !{!1864, !1860, !1865}
!1865 = !DILocation(line: 834, column: 16, scope: !1858)
!1866 = !DILocation(line: 839, column: 3, scope: !1803)
!1867 = !DILocation(line: 839, column: 43, scope: !1803)
!1868 = !DILocation(line: 839, column: 62, scope: !1803)
!1869 = !DILocation(line: 840, column: 29, scope: !1803)
!1870 = !DILocation(line: 840, column: 14, scope: !1803)
!1871 = !DILocation(line: 841, column: 1, scope: !1803)
!1872 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !169, file: !169, line: 41, type: !80, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !1873)
!1873 = !{!1874}
!1874 = !DILocalVariable(name: "file", arg: 1, scope: !1872, file: !169, line: 41, type: !66)
!1875 = !DILocation(line: 41, column: 41, scope: !1872)
!1876 = !DILocation(line: 43, column: 13, scope: !1872)
!1877 = !DILocation(line: 44, column: 1, scope: !1872)
!1878 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !169, file: !169, line: 78, type: !1142, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !1879)
!1879 = !{!1880}
!1880 = !DILocalVariable(name: "ignore", arg: 1, scope: !1878, file: !169, line: 78, type: !57)
!1881 = !DILocation(line: 78, column: 37, scope: !1878)
!1882 = !DILocation(line: 80, column: 16, scope: !1878)
!1883 = !{!1884, !1884, i64 0}
!1884 = !{!"_Bool", !674, i64 0}
!1885 = !DILocation(line: 81, column: 1, scope: !1878)
!1886 = distinct !DISubprogram(name: "close_stdout", scope: !169, file: !169, line: 107, type: !681, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !1887)
!1887 = !{!1888}
!1888 = !DILocalVariable(name: "write_error", scope: !1889, file: !169, line: 112, type: !66)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !169, line: 111, column: 5)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !169, line: 109, column: 7)
!1891 = !DILocation(line: 109, column: 21, scope: !1890)
!1892 = !DILocation(line: 109, column: 7, scope: !1890)
!1893 = !DILocation(line: 109, column: 29, scope: !1890)
!1894 = !DILocation(line: 110, column: 7, scope: !1890)
!1895 = !DILocation(line: 110, column: 12, scope: !1890)
!1896 = !{i8 0, i8 2}
!1897 = !DILocation(line: 114, column: 19, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1889, file: !169, line: 113, column: 11)
!1899 = !DILocation(line: 110, column: 25, scope: !1890)
!1900 = !DILocation(line: 110, column: 28, scope: !1890)
!1901 = !DILocation(line: 110, column: 34, scope: !1890)
!1902 = !DILocation(line: 109, column: 7, scope: !1886)
!1903 = !DILocation(line: 112, column: 33, scope: !1889)
!1904 = !DILocation(line: 112, column: 19, scope: !1889)
!1905 = !DILocation(line: 113, column: 11, scope: !1898)
!1906 = !DILocation(line: 113, column: 11, scope: !1889)
!1907 = !DILocation(line: 114, column: 36, scope: !1898)
!1908 = !DILocation(line: 114, column: 9, scope: !1898)
!1909 = !DILocation(line: 117, column: 9, scope: !1898)
!1910 = !DILocation(line: 119, column: 14, scope: !1889)
!1911 = !DILocation(line: 119, column: 7, scope: !1889)
!1912 = !DILocation(line: 122, column: 22, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1886, file: !169, line: 122, column: 8)
!1914 = !DILocation(line: 122, column: 8, scope: !1913)
!1915 = !DILocation(line: 122, column: 30, scope: !1913)
!1916 = !DILocation(line: 122, column: 8, scope: !1886)
!1917 = !DILocation(line: 123, column: 13, scope: !1913)
!1918 = !DILocation(line: 123, column: 6, scope: !1913)
!1919 = !DILocation(line: 124, column: 1, scope: !1886)
!1920 = distinct !DISubprogram(name: "fdadvise", scope: !1921, file: !1921, line: 31, type: !1922, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !1927)
!1921 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !50, !1924, !1924, !1926}
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1925, line: 57, baseType: !757)
!1925 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1927 = !{!1928, !1929, !1930, !1931, !1932}
!1928 = !DILocalVariable(name: "fd", arg: 1, scope: !1920, file: !1921, line: 31, type: !50)
!1929 = !DILocalVariable(name: "offset", arg: 2, scope: !1920, file: !1921, line: 31, type: !1924)
!1930 = !DILocalVariable(name: "len", arg: 3, scope: !1920, file: !1921, line: 31, type: !1924)
!1931 = !DILocalVariable(name: "advice", arg: 4, scope: !1920, file: !1921, line: 31, type: !1926)
!1932 = !DILocalVariable(name: "__x", scope: !1933, file: !1921, line: 34, type: !50)
!1933 = distinct !DILexicalBlock(scope: !1920, file: !1921, line: 34, column: 3)
!1934 = !DILocation(line: 31, column: 15, scope: !1920)
!1935 = !DILocation(line: 31, column: 25, scope: !1920)
!1936 = !DILocation(line: 31, column: 39, scope: !1920)
!1937 = !DILocation(line: 31, column: 54, scope: !1920)
!1938 = !DILocation(line: 34, column: 3, scope: !1933)
!1939 = !DILocation(line: 36, column: 1, scope: !1920)
!1940 = distinct !DISubprogram(name: "fadvise", scope: !1921, file: !1921, line: 39, type: !1941, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !1983)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !1943, !1926}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !729, line: 7, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !731, line: 241, size: 1728, elements: !1946)
!1946 = !{!1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1945, file: !731, line: 242, baseType: !50, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1945, file: !731, line: 247, baseType: !45, size: 64, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1945, file: !731, line: 248, baseType: !45, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1945, file: !731, line: 249, baseType: !45, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1945, file: !731, line: 250, baseType: !45, size: 64, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1945, file: !731, line: 251, baseType: !45, size: 64, offset: 320)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1945, file: !731, line: 252, baseType: !45, size: 64, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1945, file: !731, line: 253, baseType: !45, size: 64, offset: 448)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1945, file: !731, line: 254, baseType: !45, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1945, file: !731, line: 256, baseType: !45, size: 64, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1945, file: !731, line: 257, baseType: !45, size: 64, offset: 640)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1945, file: !731, line: 258, baseType: !45, size: 64, offset: 704)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1945, file: !731, line: 260, baseType: !1960, size: 64, offset: 768)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !731, line: 156, size: 192, elements: !1962)
!1962 = !{!1963, !1964, !1966}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1961, file: !731, line: 157, baseType: !1960, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1961, file: !731, line: 158, baseType: !1965, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1961, file: !731, line: 162, baseType: !50, size: 32, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1945, file: !731, line: 262, baseType: !1965, size: 64, offset: 832)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1945, file: !731, line: 264, baseType: !50, size: 32, offset: 896)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1945, file: !731, line: 268, baseType: !50, size: 32, offset: 928)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1945, file: !731, line: 270, baseType: !757, size: 64, offset: 960)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1945, file: !731, line: 274, baseType: !51, size: 16, offset: 1024)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1945, file: !731, line: 275, baseType: !761, size: 8, offset: 1040)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1945, file: !731, line: 276, baseType: !763, size: 8, offset: 1048)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1945, file: !731, line: 280, baseType: !767, size: 64, offset: 1088)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1945, file: !731, line: 289, baseType: !770, size: 64, offset: 1152)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1945, file: !731, line: 297, baseType: !47, size: 64, offset: 1216)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1945, file: !731, line: 298, baseType: !47, size: 64, offset: 1280)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1945, file: !731, line: 299, baseType: !47, size: 64, offset: 1344)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1945, file: !731, line: 300, baseType: !47, size: 64, offset: 1408)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1945, file: !731, line: 302, baseType: !195, size: 64, offset: 1472)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1945, file: !731, line: 303, baseType: !50, size: 32, offset: 1536)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1945, file: !731, line: 305, baseType: !778, size: 160, offset: 1568)
!1983 = !{!1984, !1985}
!1984 = !DILocalVariable(name: "fp", arg: 1, scope: !1940, file: !1921, line: 39, type: !1943)
!1985 = !DILocalVariable(name: "advice", arg: 2, scope: !1940, file: !1921, line: 39, type: !1926)
!1986 = !DILocation(line: 39, column: 16, scope: !1940)
!1987 = !DILocation(line: 39, column: 30, scope: !1940)
!1988 = !DILocation(line: 41, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1940, file: !1921, line: 41, column: 7)
!1990 = !DILocation(line: 41, column: 7, scope: !1940)
!1991 = !DILocation(line: 42, column: 15, scope: !1989)
!1992 = !DILocation(line: 31, column: 15, scope: !1920, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 42, column: 5, scope: !1989)
!1994 = !DILocation(line: 31, column: 25, scope: !1920, inlinedAt: !1993)
!1995 = !DILocation(line: 31, column: 39, scope: !1920, inlinedAt: !1993)
!1996 = !DILocation(line: 31, column: 54, scope: !1920, inlinedAt: !1993)
!1997 = !DILocation(line: 34, column: 3, scope: !1933, inlinedAt: !1993)
!1998 = !DILocation(line: 42, column: 5, scope: !1989)
!1999 = !DILocation(line: 43, column: 1, scope: !1940)
!2000 = distinct !DISubprogram(name: "set_program_name", scope: !183, file: !183, line: 39, type: !80, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !2001)
!2001 = !{!2002, !2003, !2004}
!2002 = !DILocalVariable(name: "argv0", arg: 1, scope: !2000, file: !183, line: 39, type: !66)
!2003 = !DILocalVariable(name: "slash", scope: !2000, file: !183, line: 46, type: !66)
!2004 = !DILocalVariable(name: "base", scope: !2000, file: !183, line: 47, type: !66)
!2005 = !DILocation(line: 39, column: 31, scope: !2000)
!2006 = !DILocation(line: 51, column: 13, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2000, file: !183, line: 51, column: 7)
!2008 = !DILocation(line: 51, column: 7, scope: !2000)
!2009 = !DILocation(line: 55, column: 14, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !183, line: 52, column: 5)
!2011 = !DILocation(line: 54, column: 7, scope: !2010)
!2012 = !DILocation(line: 56, column: 7, scope: !2010)
!2013 = !DILocation(line: 59, column: 11, scope: !2000)
!2014 = !DILocation(line: 46, column: 15, scope: !2000)
!2015 = !DILocation(line: 60, column: 17, scope: !2000)
!2016 = !DILocation(line: 60, column: 33, scope: !2000)
!2017 = !DILocation(line: 60, column: 11, scope: !2000)
!2018 = !DILocation(line: 47, column: 15, scope: !2000)
!2019 = !DILocation(line: 61, column: 12, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2000, file: !183, line: 61, column: 7)
!2021 = !DILocation(line: 61, column: 20, scope: !2020)
!2022 = !DILocation(line: 61, column: 25, scope: !2020)
!2023 = !DILocation(line: 61, column: 42, scope: !2020)
!2024 = !DILocation(line: 61, column: 28, scope: !2020)
!2025 = !DILocation(line: 61, column: 61, scope: !2020)
!2026 = !DILocation(line: 61, column: 7, scope: !2000)
!2027 = !DILocation(line: 64, column: 11, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !183, line: 64, column: 11)
!2029 = distinct !DILexicalBlock(scope: !2020, file: !183, line: 62, column: 5)
!2030 = !DILocation(line: 64, column: 36, scope: !2028)
!2031 = !DILocation(line: 64, column: 11, scope: !2029)
!2032 = !DILocation(line: 66, column: 24, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !183, line: 65, column: 9)
!2034 = !DILocation(line: 70, column: 41, scope: !2033)
!2035 = !DILocation(line: 72, column: 9, scope: !2033)
!2036 = !DILocation(line: 84, column: 16, scope: !2000)
!2037 = !DILocation(line: 90, column: 27, scope: !2000)
!2038 = !DILocation(line: 92, column: 1, scope: !2000)
!2039 = distinct !DISubprogram(name: "clone_quoting_options", scope: !201, file: !201, line: 114, type: !2040, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2043)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!2042, !2042}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!2043 = !{!2044, !2045, !2046}
!2044 = !DILocalVariable(name: "o", arg: 1, scope: !2039, file: !201, line: 114, type: !2042)
!2045 = !DILocalVariable(name: "e", scope: !2039, file: !201, line: 116, type: !50)
!2046 = !DILocalVariable(name: "p", scope: !2039, file: !201, line: 117, type: !2042)
!2047 = !DILocation(line: 114, column: 48, scope: !2039)
!2048 = !DILocation(line: 116, column: 11, scope: !2039)
!2049 = !DILocation(line: 116, column: 7, scope: !2039)
!2050 = !DILocation(line: 117, column: 40, scope: !2039)
!2051 = !DILocation(line: 117, column: 31, scope: !2039)
!2052 = !DILocation(line: 117, column: 27, scope: !2039)
!2053 = !DILocation(line: 119, column: 9, scope: !2039)
!2054 = !DILocation(line: 120, column: 3, scope: !2039)
!2055 = distinct !DISubprogram(name: "get_quoting_style", scope: !201, file: !201, line: 125, type: !2056, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2060)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!5, !2058}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!2060 = !{!2061}
!2061 = !DILocalVariable(name: "o", arg: 1, scope: !2055, file: !201, line: 125, type: !2058)
!2062 = !DILocation(line: 125, column: 50, scope: !2055)
!2063 = !DILocation(line: 127, column: 11, scope: !2055)
!2064 = !DILocation(line: 127, column: 46, scope: !2055)
!2065 = !{!2066, !674, i64 0}
!2066 = !{!"quoting_options", !674, i64 0, !794, i64 4, !674, i64 8, !673, i64 40, !673, i64 48}
!2067 = !DILocation(line: 127, column: 3, scope: !2055)
!2068 = distinct !DISubprogram(name: "set_quoting_style", scope: !201, file: !201, line: 133, type: !2069, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2071)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !2042, !5}
!2071 = !{!2072, !2073}
!2072 = !DILocalVariable(name: "o", arg: 1, scope: !2068, file: !201, line: 133, type: !2042)
!2073 = !DILocalVariable(name: "s", arg: 2, scope: !2068, file: !201, line: 133, type: !5)
!2074 = !DILocation(line: 133, column: 44, scope: !2068)
!2075 = !DILocation(line: 133, column: 66, scope: !2068)
!2076 = !DILocation(line: 135, column: 4, scope: !2068)
!2077 = !DILocation(line: 135, column: 39, scope: !2068)
!2078 = !DILocation(line: 135, column: 45, scope: !2068)
!2079 = !DILocation(line: 136, column: 1, scope: !2068)
!2080 = distinct !DISubprogram(name: "set_char_quoting", scope: !201, file: !201, line: 144, type: !2081, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!50, !2042, !46, !50}
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2090, !2091}
!2084 = !DILocalVariable(name: "o", arg: 1, scope: !2080, file: !201, line: 144, type: !2042)
!2085 = !DILocalVariable(name: "c", arg: 2, scope: !2080, file: !201, line: 144, type: !46)
!2086 = !DILocalVariable(name: "i", arg: 3, scope: !2080, file: !201, line: 144, type: !50)
!2087 = !DILocalVariable(name: "uc", scope: !2080, file: !201, line: 146, type: !49)
!2088 = !DILocalVariable(name: "p", scope: !2080, file: !201, line: 147, type: !2089)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2090 = !DILocalVariable(name: "shift", scope: !2080, file: !201, line: 149, type: !50)
!2091 = !DILocalVariable(name: "r", scope: !2080, file: !201, line: 150, type: !50)
!2092 = !DILocation(line: 144, column: 43, scope: !2080)
!2093 = !DILocation(line: 144, column: 51, scope: !2080)
!2094 = !DILocation(line: 144, column: 58, scope: !2080)
!2095 = !DILocation(line: 146, column: 17, scope: !2080)
!2096 = !DILocation(line: 148, column: 6, scope: !2080)
!2097 = !DILocation(line: 148, column: 62, scope: !2080)
!2098 = !DILocation(line: 148, column: 57, scope: !2080)
!2099 = !DILocation(line: 147, column: 17, scope: !2080)
!2100 = !DILocation(line: 149, column: 18, scope: !2080)
!2101 = !DILocation(line: 149, column: 15, scope: !2080)
!2102 = !DILocation(line: 149, column: 7, scope: !2080)
!2103 = !DILocation(line: 150, column: 12, scope: !2080)
!2104 = !DILocation(line: 150, column: 15, scope: !2080)
!2105 = !DILocation(line: 150, column: 25, scope: !2080)
!2106 = !DILocation(line: 150, column: 7, scope: !2080)
!2107 = !DILocation(line: 151, column: 13, scope: !2080)
!2108 = !DILocation(line: 151, column: 18, scope: !2080)
!2109 = !DILocation(line: 151, column: 23, scope: !2080)
!2110 = !DILocation(line: 151, column: 6, scope: !2080)
!2111 = !DILocation(line: 152, column: 3, scope: !2080)
!2112 = distinct !DISubprogram(name: "set_quoting_flags", scope: !201, file: !201, line: 160, type: !2113, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!50, !2042, !50}
!2115 = !{!2116, !2117, !2118}
!2116 = !DILocalVariable(name: "o", arg: 1, scope: !2112, file: !201, line: 160, type: !2042)
!2117 = !DILocalVariable(name: "i", arg: 2, scope: !2112, file: !201, line: 160, type: !50)
!2118 = !DILocalVariable(name: "r", scope: !2112, file: !201, line: 162, type: !50)
!2119 = !DILocation(line: 160, column: 44, scope: !2112)
!2120 = !DILocation(line: 160, column: 51, scope: !2112)
!2121 = !DILocation(line: 163, column: 8, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2112, file: !201, line: 163, column: 7)
!2123 = !DILocation(line: 163, column: 7, scope: !2112)
!2124 = !DILocation(line: 165, column: 10, scope: !2112)
!2125 = !{!2066, !794, i64 4}
!2126 = !DILocation(line: 162, column: 7, scope: !2112)
!2127 = !DILocation(line: 166, column: 12, scope: !2112)
!2128 = !DILocation(line: 167, column: 3, scope: !2112)
!2129 = distinct !DISubprogram(name: "set_custom_quoting", scope: !201, file: !201, line: 171, type: !2130, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !2042, !66, !66}
!2132 = !{!2133, !2134, !2135}
!2133 = !DILocalVariable(name: "o", arg: 1, scope: !2129, file: !201, line: 171, type: !2042)
!2134 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2129, file: !201, line: 172, type: !66)
!2135 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2129, file: !201, line: 172, type: !66)
!2136 = !DILocation(line: 171, column: 45, scope: !2129)
!2137 = !DILocation(line: 172, column: 33, scope: !2129)
!2138 = !DILocation(line: 172, column: 57, scope: !2129)
!2139 = !DILocation(line: 174, column: 8, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2129, file: !201, line: 174, column: 7)
!2141 = !DILocation(line: 174, column: 7, scope: !2129)
!2142 = !DILocation(line: 176, column: 6, scope: !2129)
!2143 = !DILocation(line: 176, column: 12, scope: !2129)
!2144 = !DILocation(line: 177, column: 8, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2129, file: !201, line: 177, column: 7)
!2146 = !DILocation(line: 177, column: 23, scope: !2145)
!2147 = !DILocation(line: 177, column: 19, scope: !2145)
!2148 = !DILocation(line: 178, column: 5, scope: !2145)
!2149 = !DILocation(line: 179, column: 6, scope: !2129)
!2150 = !DILocation(line: 179, column: 17, scope: !2129)
!2151 = !{!2066, !673, i64 40}
!2152 = !DILocation(line: 180, column: 6, scope: !2129)
!2153 = !DILocation(line: 180, column: 18, scope: !2129)
!2154 = !{!2066, !673, i64 48}
!2155 = !DILocation(line: 181, column: 1, scope: !2129)
!2156 = distinct !DISubprogram(name: "quotearg_buffer", scope: !201, file: !201, line: 776, type: !2157, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!195, !45, !195, !66, !195, !2058}
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167}
!2160 = !DILocalVariable(name: "buffer", arg: 1, scope: !2156, file: !201, line: 776, type: !45)
!2161 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2156, file: !201, line: 776, type: !195)
!2162 = !DILocalVariable(name: "arg", arg: 3, scope: !2156, file: !201, line: 777, type: !66)
!2163 = !DILocalVariable(name: "argsize", arg: 4, scope: !2156, file: !201, line: 777, type: !195)
!2164 = !DILocalVariable(name: "o", arg: 5, scope: !2156, file: !201, line: 778, type: !2058)
!2165 = !DILocalVariable(name: "p", scope: !2156, file: !201, line: 780, type: !2058)
!2166 = !DILocalVariable(name: "e", scope: !2156, file: !201, line: 781, type: !50)
!2167 = !DILocalVariable(name: "r", scope: !2156, file: !201, line: 782, type: !195)
!2168 = !DILocation(line: 776, column: 24, scope: !2156)
!2169 = !DILocation(line: 776, column: 39, scope: !2156)
!2170 = !DILocation(line: 777, column: 30, scope: !2156)
!2171 = !DILocation(line: 777, column: 42, scope: !2156)
!2172 = !DILocation(line: 778, column: 48, scope: !2156)
!2173 = !DILocation(line: 780, column: 37, scope: !2156)
!2174 = !DILocation(line: 780, column: 33, scope: !2156)
!2175 = !DILocation(line: 781, column: 11, scope: !2156)
!2176 = !DILocation(line: 781, column: 7, scope: !2156)
!2177 = !DILocation(line: 783, column: 43, scope: !2156)
!2178 = !DILocation(line: 783, column: 53, scope: !2156)
!2179 = !DILocation(line: 783, column: 60, scope: !2156)
!2180 = !DILocation(line: 784, column: 43, scope: !2156)
!2181 = !DILocation(line: 784, column: 58, scope: !2156)
!2182 = !DILocation(line: 782, column: 14, scope: !2156)
!2183 = !DILocation(line: 782, column: 10, scope: !2156)
!2184 = !DILocation(line: 785, column: 9, scope: !2156)
!2185 = !DILocation(line: 786, column: 3, scope: !2156)
!2186 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !201, file: !201, line: 248, type: !2187, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2191)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!195, !45, !195, !66, !195, !5, !50, !2189, !66, !66}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2216, !2217, !2218, !2219, !2220, !2223, !2224, !2242, !2245, !2246, !2253}
!2192 = !DILocalVariable(name: "buffer", arg: 1, scope: !2186, file: !201, line: 248, type: !45)
!2193 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2186, file: !201, line: 248, type: !195)
!2194 = !DILocalVariable(name: "arg", arg: 3, scope: !2186, file: !201, line: 249, type: !66)
!2195 = !DILocalVariable(name: "argsize", arg: 4, scope: !2186, file: !201, line: 249, type: !195)
!2196 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2186, file: !201, line: 250, type: !5)
!2197 = !DILocalVariable(name: "flags", arg: 6, scope: !2186, file: !201, line: 250, type: !50)
!2198 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2186, file: !201, line: 251, type: !2189)
!2199 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2186, file: !201, line: 252, type: !66)
!2200 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2186, file: !201, line: 253, type: !66)
!2201 = !DILocalVariable(name: "i", scope: !2186, file: !201, line: 255, type: !195)
!2202 = !DILocalVariable(name: "len", scope: !2186, file: !201, line: 256, type: !195)
!2203 = !DILocalVariable(name: "orig_buffersize", scope: !2186, file: !201, line: 257, type: !195)
!2204 = !DILocalVariable(name: "quote_string", scope: !2186, file: !201, line: 258, type: !66)
!2205 = !DILocalVariable(name: "quote_string_len", scope: !2186, file: !201, line: 259, type: !195)
!2206 = !DILocalVariable(name: "backslash_escapes", scope: !2186, file: !201, line: 260, type: !57)
!2207 = !DILocalVariable(name: "unibyte_locale", scope: !2186, file: !201, line: 261, type: !57)
!2208 = !DILocalVariable(name: "elide_outer_quotes", scope: !2186, file: !201, line: 262, type: !57)
!2209 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2186, file: !201, line: 263, type: !57)
!2210 = !DILocalVariable(name: "encountered_single_quote", scope: !2186, file: !201, line: 264, type: !57)
!2211 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2186, file: !201, line: 265, type: !57)
!2212 = !DILocalVariable(name: "c", scope: !2213, file: !201, line: 394, type: !49)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !201, line: 393, column: 5)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !201, line: 392, column: 3)
!2215 = distinct !DILexicalBlock(scope: !2186, file: !201, line: 392, column: 3)
!2216 = !DILocalVariable(name: "esc", scope: !2213, file: !201, line: 395, type: !49)
!2217 = !DILocalVariable(name: "is_right_quote", scope: !2213, file: !201, line: 396, type: !57)
!2218 = !DILocalVariable(name: "escaping", scope: !2213, file: !201, line: 397, type: !57)
!2219 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2213, file: !201, line: 398, type: !57)
!2220 = !DILocalVariable(name: "m", scope: !2221, file: !201, line: 602, type: !195)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !201, line: 600, column: 11)
!2222 = distinct !DILexicalBlock(scope: !2213, file: !201, line: 418, column: 9)
!2223 = !DILocalVariable(name: "printable", scope: !2221, file: !201, line: 604, type: !57)
!2224 = !DILocalVariable(name: "mbstate", scope: !2225, file: !201, line: 613, type: !2227)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !201, line: 612, column: 15)
!2226 = distinct !DILexicalBlock(scope: !2221, file: !201, line: 606, column: 17)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2228, line: 6, baseType: !2229)
!2228 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2230, line: 21, baseType: !2231)
!2230 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2230, line: 13, size: 64, elements: !2232)
!2232 = !{!2233, !2234}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2231, file: !2230, line: 15, baseType: !50, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2231, file: !2230, line: 20, baseType: !2235, size: 32, offset: 32)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !2230, line: 16, size: 32, elements: !2236)
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2235, file: !2230, line: 18, baseType: !44, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2235, file: !2230, line: 19, baseType: !2239, size: 32)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !2240)
!2240 = !{!2241}
!2241 = !DISubrange(count: 4)
!2242 = !DILocalVariable(name: "w", scope: !2243, file: !201, line: 623, type: !2244)
!2243 = distinct !DILexicalBlock(scope: !2225, file: !201, line: 622, column: 19)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !196, line: 90, baseType: !50)
!2245 = !DILocalVariable(name: "bytes", scope: !2243, file: !201, line: 624, type: !195)
!2246 = !DILocalVariable(name: "j", scope: !2247, file: !201, line: 649, type: !195)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !201, line: 648, column: 27)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !201, line: 646, column: 29)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !201, line: 641, column: 23)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !201, line: 633, column: 30)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !201, line: 628, column: 30)
!2252 = distinct !DILexicalBlock(scope: !2243, file: !201, line: 626, column: 25)
!2253 = !DILocalVariable(name: "ilim", scope: !2254, file: !201, line: 676, type: !195)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !201, line: 673, column: 15)
!2255 = distinct !DILexicalBlock(scope: !2221, file: !201, line: 672, column: 17)
!2256 = !DILocation(line: 248, column: 33, scope: !2186)
!2257 = !DILocation(line: 248, column: 48, scope: !2186)
!2258 = !DILocation(line: 249, column: 39, scope: !2186)
!2259 = !DILocation(line: 249, column: 51, scope: !2186)
!2260 = !DILocation(line: 250, column: 46, scope: !2186)
!2261 = !DILocation(line: 250, column: 65, scope: !2186)
!2262 = !DILocation(line: 251, column: 47, scope: !2186)
!2263 = !DILocation(line: 252, column: 39, scope: !2186)
!2264 = !DILocation(line: 253, column: 39, scope: !2186)
!2265 = !DILocation(line: 256, column: 10, scope: !2186)
!2266 = !DILocation(line: 257, column: 10, scope: !2186)
!2267 = !DILocation(line: 258, column: 15, scope: !2186)
!2268 = !DILocation(line: 259, column: 10, scope: !2186)
!2269 = !DILocation(line: 260, column: 8, scope: !2186)
!2270 = !DILocation(line: 261, column: 25, scope: !2186)
!2271 = !DILocation(line: 261, column: 36, scope: !2186)
!2272 = !DILocation(line: 262, column: 8, scope: !2186)
!2273 = !DILocation(line: 263, column: 8, scope: !2186)
!2274 = !DILocation(line: 264, column: 8, scope: !2186)
!2275 = !DILocation(line: 265, column: 8, scope: !2186)
!2276 = !DILocation(line: 265, column: 3, scope: !2186)
!2277 = !DILocation(line: 308, column: 3, scope: !2186)
!2278 = !DILocation(line: 315, column: 11, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2186, file: !201, line: 309, column: 5)
!2280 = !DILocation(line: 315, column: 12, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2279, file: !201, line: 315, column: 11)
!2282 = !DILocation(line: 316, column: 9, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !201, line: 316, column: 9)
!2284 = distinct !DILexicalBlock(scope: !2281, file: !201, line: 316, column: 9)
!2285 = !DILocation(line: 316, column: 9, scope: !2284)
!2286 = !DILocation(line: 354, column: 26, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !201, line: 332, column: 11)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !201, line: 331, column: 13)
!2289 = distinct !DILexicalBlock(scope: !2279, file: !201, line: 330, column: 7)
!2290 = !DILocation(line: 355, column: 27, scope: !2287)
!2291 = !DILocation(line: 356, column: 11, scope: !2287)
!2292 = !DILocation(line: 357, column: 14, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !201, line: 357, column: 13)
!2294 = !DILocation(line: 357, column: 13, scope: !2289)
!2295 = !DILocation(line: 358, column: 43, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !201, line: 358, column: 11)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !201, line: 358, column: 11)
!2298 = !DILocation(line: 358, column: 11, scope: !2297)
!2299 = !DILocation(line: 359, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !201, line: 359, column: 13)
!2301 = distinct !DILexicalBlock(scope: !2296, file: !201, line: 359, column: 13)
!2302 = !DILocation(line: 359, column: 13, scope: !2301)
!2303 = !DILocation(line: 358, column: 70, scope: !2296)
!2304 = distinct !{!2304, !2298, !2305}
!2305 = !DILocation(line: 359, column: 13, scope: !2297)
!2306 = !DILocation(line: 362, column: 28, scope: !2289)
!2307 = !DILocation(line: 364, column: 7, scope: !2279)
!2308 = !DILocation(line: 367, column: 7, scope: !2279)
!2309 = !DILocation(line: 370, column: 7, scope: !2279)
!2310 = !DILocation(line: 373, column: 12, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2279, file: !201, line: 373, column: 11)
!2312 = !DILocation(line: 373, column: 11, scope: !2279)
!2313 = !DILocation(line: 378, column: 12, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2279, file: !201, line: 378, column: 11)
!2315 = !DILocation(line: 378, column: 11, scope: !2279)
!2316 = !DILocation(line: 379, column: 9, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !201, line: 379, column: 9)
!2318 = distinct !DILexicalBlock(scope: !2314, file: !201, line: 379, column: 9)
!2319 = !DILocation(line: 379, column: 9, scope: !2318)
!2320 = !DILocation(line: 386, column: 7, scope: !2279)
!2321 = !DILocation(line: 389, column: 7, scope: !2279)
!2322 = !DILocation(line: 255, column: 10, scope: !2186)
!2323 = !DILocation(line: 392, column: 8, scope: !2215)
!2324 = !DILocation(line: 392, column: 27, scope: !2214)
!2325 = !DILocation(line: 392, column: 19, scope: !2214)
!2326 = !DILocation(line: 392, column: 60, scope: !2214)
!2327 = !DILocation(line: 392, column: 3, scope: !2215)
!2328 = !DILocation(line: 392, column: 41, scope: !2214)
!2329 = !DILocation(line: 392, column: 48, scope: !2214)
!2330 = !DILocation(line: 396, column: 12, scope: !2213)
!2331 = !DILocation(line: 397, column: 12, scope: !2213)
!2332 = !DILocation(line: 398, column: 12, scope: !2213)
!2333 = !DILocation(line: 401, column: 11, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2213, file: !201, line: 400, column: 11)
!2335 = !DILocation(line: 403, column: 17, scope: !2334)
!2336 = !DILocation(line: 404, column: 39, scope: !2334)
!2337 = !DILocation(line: 408, column: 32, scope: !2334)
!2338 = !DILocation(line: 404, column: 19, scope: !2334)
!2339 = !DILocation(line: 404, column: 15, scope: !2334)
!2340 = !DILocation(line: 409, column: 11, scope: !2334)
!2341 = !DILocation(line: 409, column: 26, scope: !2334)
!2342 = !DILocation(line: 409, column: 14, scope: !2334)
!2343 = !DILocation(line: 409, column: 63, scope: !2334)
!2344 = !DILocation(line: 400, column: 11, scope: !2213)
!2345 = !DILocation(line: 416, column: 11, scope: !2213)
!2346 = !DILocation(line: 394, column: 21, scope: !2213)
!2347 = !DILocation(line: 417, column: 7, scope: !2213)
!2348 = !DILocation(line: 420, column: 15, scope: !2222)
!2349 = !DILocation(line: 422, column: 15, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !201, line: 422, column: 15)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !201, line: 421, column: 13)
!2352 = distinct !DILexicalBlock(scope: !2222, file: !201, line: 420, column: 15)
!2353 = !DILocation(line: 422, column: 15, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !201, line: 422, column: 15)
!2355 = !DILocation(line: 422, column: 15, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !201, line: 422, column: 15)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !201, line: 422, column: 15)
!2358 = distinct !DILexicalBlock(scope: !2354, file: !201, line: 422, column: 15)
!2359 = !DILocation(line: 422, column: 15, scope: !2357)
!2360 = !DILocation(line: 422, column: 15, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !201, line: 422, column: 15)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !201, line: 422, column: 15)
!2363 = !DILocation(line: 422, column: 15, scope: !2362)
!2364 = !DILocation(line: 422, column: 15, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !201, line: 422, column: 15)
!2366 = distinct !DILexicalBlock(scope: !2358, file: !201, line: 422, column: 15)
!2367 = !DILocation(line: 422, column: 15, scope: !2366)
!2368 = !DILocation(line: 422, column: 15, scope: !2358)
!2369 = !DILocation(line: 422, column: 15, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !201, line: 422, column: 15)
!2371 = distinct !DILexicalBlock(scope: !2350, file: !201, line: 422, column: 15)
!2372 = !DILocation(line: 422, column: 15, scope: !2371)
!2373 = !DILocation(line: 430, column: 19, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2351, file: !201, line: 429, column: 19)
!2375 = !DILocation(line: 430, column: 24, scope: !2374)
!2376 = !DILocation(line: 430, column: 28, scope: !2374)
!2377 = !DILocation(line: 430, column: 38, scope: !2374)
!2378 = !DILocation(line: 430, column: 48, scope: !2374)
!2379 = !DILocation(line: 430, column: 59, scope: !2374)
!2380 = !DILocation(line: 432, column: 19, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !201, line: 432, column: 19)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !201, line: 432, column: 19)
!2383 = distinct !DILexicalBlock(scope: !2374, file: !201, line: 431, column: 17)
!2384 = !DILocation(line: 432, column: 19, scope: !2382)
!2385 = !DILocation(line: 433, column: 19, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !201, line: 433, column: 19)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !201, line: 433, column: 19)
!2388 = !DILocation(line: 433, column: 19, scope: !2387)
!2389 = !DILocation(line: 434, column: 17, scope: !2383)
!2390 = !DILocation(line: 441, column: 20, scope: !2352)
!2391 = !DILocation(line: 446, column: 11, scope: !2222)
!2392 = !DILocation(line: 449, column: 19, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2222, file: !201, line: 447, column: 13)
!2394 = !DILocation(line: 455, column: 19, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2393, file: !201, line: 454, column: 19)
!2396 = !DILocation(line: 455, column: 24, scope: !2395)
!2397 = !DILocation(line: 455, column: 28, scope: !2395)
!2398 = !DILocation(line: 455, column: 38, scope: !2395)
!2399 = !DILocation(line: 455, column: 47, scope: !2395)
!2400 = !DILocation(line: 455, column: 41, scope: !2395)
!2401 = !DILocation(line: 455, column: 52, scope: !2395)
!2402 = !DILocation(line: 454, column: 19, scope: !2393)
!2403 = !DILocation(line: 456, column: 25, scope: !2395)
!2404 = !DILocation(line: 456, column: 17, scope: !2395)
!2405 = !DILocation(line: 463, column: 25, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2395, file: !201, line: 457, column: 19)
!2407 = !DILocation(line: 467, column: 21, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !201, line: 467, column: 21)
!2409 = distinct !DILexicalBlock(scope: !2406, file: !201, line: 467, column: 21)
!2410 = !DILocation(line: 467, column: 21, scope: !2409)
!2411 = !DILocation(line: 468, column: 21, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !201, line: 468, column: 21)
!2413 = distinct !DILexicalBlock(scope: !2406, file: !201, line: 468, column: 21)
!2414 = !DILocation(line: 468, column: 21, scope: !2413)
!2415 = !DILocation(line: 469, column: 21, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !201, line: 469, column: 21)
!2417 = distinct !DILexicalBlock(scope: !2406, file: !201, line: 469, column: 21)
!2418 = !DILocation(line: 469, column: 21, scope: !2417)
!2419 = !DILocation(line: 470, column: 21, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !201, line: 470, column: 21)
!2421 = distinct !DILexicalBlock(scope: !2406, file: !201, line: 470, column: 21)
!2422 = !DILocation(line: 470, column: 21, scope: !2421)
!2423 = !DILocation(line: 471, column: 21, scope: !2406)
!2424 = !DILocation(line: 395, column: 21, scope: !2213)
!2425 = !DILocation(line: 484, column: 31, scope: !2222)
!2426 = !DILocation(line: 485, column: 31, scope: !2222)
!2427 = !DILocation(line: 487, column: 31, scope: !2222)
!2428 = !DILocation(line: 488, column: 31, scope: !2222)
!2429 = !DILocation(line: 489, column: 31, scope: !2222)
!2430 = !DILocation(line: 492, column: 15, scope: !2222)
!2431 = !DILocation(line: 494, column: 19, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !201, line: 493, column: 13)
!2433 = distinct !DILexicalBlock(scope: !2222, file: !201, line: 492, column: 15)
!2434 = !DILocation(line: 501, column: 33, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2222, file: !201, line: 501, column: 15)
!2436 = !DILocation(line: 506, column: 15, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2222, file: !201, line: 505, column: 15)
!2438 = !DILocation(line: 510, column: 15, scope: !2222)
!2439 = !DILocation(line: 518, column: 26, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2222, file: !201, line: 518, column: 15)
!2441 = !DILocation(line: 518, column: 15, scope: !2222)
!2442 = !DILocation(line: 518, column: 40, scope: !2440)
!2443 = !DILocation(line: 518, column: 47, scope: !2440)
!2444 = !DILocation(line: 522, column: 17, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2222, file: !201, line: 522, column: 15)
!2446 = !DILocation(line: 518, column: 18, scope: !2440)
!2447 = !DILocation(line: 518, column: 65, scope: !2440)
!2448 = !DILocation(line: 522, column: 15, scope: !2222)
!2449 = !DILocation(line: 526, column: 11, scope: !2222)
!2450 = !DILocation(line: 541, column: 15, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2222, file: !201, line: 540, column: 15)
!2452 = !DILocation(line: 548, column: 15, scope: !2222)
!2453 = !DILocation(line: 550, column: 19, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !201, line: 549, column: 13)
!2455 = distinct !DILexicalBlock(scope: !2222, file: !201, line: 548, column: 15)
!2456 = !DILocation(line: 553, column: 19, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2454, file: !201, line: 553, column: 19)
!2458 = !DILocation(line: 553, column: 35, scope: !2457)
!2459 = !DILocation(line: 553, column: 30, scope: !2457)
!2460 = !DILocation(line: 562, column: 15, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !201, line: 562, column: 15)
!2462 = distinct !DILexicalBlock(scope: !2454, file: !201, line: 562, column: 15)
!2463 = !DILocation(line: 562, column: 15, scope: !2462)
!2464 = !DILocation(line: 563, column: 15, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !201, line: 563, column: 15)
!2466 = distinct !DILexicalBlock(scope: !2454, file: !201, line: 563, column: 15)
!2467 = !DILocation(line: 563, column: 15, scope: !2466)
!2468 = !DILocation(line: 564, column: 15, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !201, line: 564, column: 15)
!2470 = distinct !DILexicalBlock(scope: !2454, file: !201, line: 564, column: 15)
!2471 = !DILocation(line: 564, column: 15, scope: !2470)
!2472 = !DILocation(line: 566, column: 13, scope: !2454)
!2473 = !DILocation(line: 606, column: 17, scope: !2221)
!2474 = !DILocation(line: 602, column: 20, scope: !2221)
!2475 = !DILocation(line: 609, column: 29, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2226, file: !201, line: 607, column: 15)
!2477 = !DILocation(line: 609, column: 27, scope: !2476)
!2478 = !DILocation(line: 604, column: 18, scope: !2221)
!2479 = !DILocation(line: 610, column: 15, scope: !2476)
!2480 = !DILocation(line: 613, column: 17, scope: !2225)
!2481 = !DILocation(line: 614, column: 17, scope: !2225)
!2482 = !DILocation(line: 618, column: 29, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2225, file: !201, line: 618, column: 21)
!2484 = !DILocation(line: 618, column: 21, scope: !2225)
!2485 = !DILocation(line: 619, column: 29, scope: !2483)
!2486 = !DILocation(line: 619, column: 19, scope: !2483)
!2487 = !DILocation(line: 621, column: 17, scope: !2225)
!2488 = distinct !{!2488, !2487, !2489}
!2489 = !DILocation(line: 667, column: 44, scope: !2225)
!2490 = !DILocation(line: 623, column: 21, scope: !2243)
!2491 = !DILocation(line: 624, column: 56, scope: !2243)
!2492 = !DILocation(line: 624, column: 50, scope: !2243)
!2493 = !DILocation(line: 625, column: 53, scope: !2243)
!2494 = !DILocation(line: 613, column: 27, scope: !2225)
!2495 = !DILocation(line: 623, column: 29, scope: !2243)
!2496 = !DILocation(line: 624, column: 36, scope: !2243)
!2497 = !DILocation(line: 624, column: 28, scope: !2243)
!2498 = !DILocation(line: 626, column: 25, scope: !2243)
!2499 = !DILocation(line: 636, column: 38, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2250, file: !201, line: 634, column: 23)
!2501 = !DILocation(line: 636, column: 48, scope: !2500)
!2502 = !DILocation(line: 636, column: 51, scope: !2500)
!2503 = !DILocation(line: 636, column: 25, scope: !2500)
!2504 = !DILocation(line: 637, column: 28, scope: !2500)
!2505 = !DILocation(line: 636, column: 34, scope: !2500)
!2506 = distinct !{!2506, !2503, !2504}
!2507 = !DILocation(line: 650, column: 43, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !201, line: 650, column: 29)
!2509 = distinct !DILexicalBlock(scope: !2247, file: !201, line: 650, column: 29)
!2510 = !DILocation(line: 647, column: 29, scope: !2248)
!2511 = !DILocation(line: 649, column: 36, scope: !2247)
!2512 = !DILocation(line: 651, column: 49, scope: !2508)
!2513 = !DILocation(line: 651, column: 39, scope: !2508)
!2514 = !DILocation(line: 651, column: 31, scope: !2508)
!2515 = !DILocation(line: 650, column: 53, scope: !2508)
!2516 = !DILocation(line: 650, column: 29, scope: !2509)
!2517 = distinct !{!2517, !2516, !2518}
!2518 = !DILocation(line: 659, column: 33, scope: !2509)
!2519 = !DILocation(line: 666, column: 19, scope: !2225)
!2520 = !DILocation(line: 662, column: 41, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2249, file: !201, line: 662, column: 29)
!2522 = !DILocation(line: 662, column: 31, scope: !2521)
!2523 = !DILocation(line: 662, column: 29, scope: !2249)
!2524 = !DILocation(line: 664, column: 27, scope: !2249)
!2525 = !DILocation(line: 667, column: 26, scope: !2225)
!2526 = !DILocation(line: 667, column: 24, scope: !2225)
!2527 = !DILocation(line: 666, column: 19, scope: !2243)
!2528 = !DILocation(line: 668, column: 15, scope: !2226)
!2529 = !DILocation(line: 670, column: 40, scope: !2221)
!2530 = !DILocation(line: 672, column: 19, scope: !2255)
!2531 = !DILocation(line: 672, column: 45, scope: !2255)
!2532 = !DILocation(line: 672, column: 23, scope: !2255)
!2533 = !DILocation(line: 676, column: 33, scope: !2254)
!2534 = !DILocation(line: 676, column: 24, scope: !2254)
!2535 = !DILocation(line: 678, column: 17, scope: !2254)
!2536 = !DILocation(line: 680, column: 43, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !201, line: 680, column: 25)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !201, line: 679, column: 19)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !201, line: 678, column: 17)
!2540 = distinct !DILexicalBlock(scope: !2254, file: !201, line: 678, column: 17)
!2541 = !DILocation(line: 682, column: 25, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !201, line: 682, column: 25)
!2543 = distinct !DILexicalBlock(scope: !2537, file: !201, line: 681, column: 23)
!2544 = !DILocation(line: 682, column: 25, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2542, file: !201, line: 682, column: 25)
!2546 = !DILocation(line: 682, column: 25, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !201, line: 682, column: 25)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !201, line: 682, column: 25)
!2549 = distinct !DILexicalBlock(scope: !2545, file: !201, line: 682, column: 25)
!2550 = !DILocation(line: 682, column: 25, scope: !2548)
!2551 = !DILocation(line: 682, column: 25, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !201, line: 682, column: 25)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !201, line: 682, column: 25)
!2554 = !DILocation(line: 682, column: 25, scope: !2553)
!2555 = !DILocation(line: 682, column: 25, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !201, line: 682, column: 25)
!2557 = distinct !DILexicalBlock(scope: !2549, file: !201, line: 682, column: 25)
!2558 = !DILocation(line: 682, column: 25, scope: !2557)
!2559 = !DILocation(line: 682, column: 25, scope: !2549)
!2560 = !DILocation(line: 682, column: 25, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !201, line: 682, column: 25)
!2562 = distinct !DILexicalBlock(scope: !2542, file: !201, line: 682, column: 25)
!2563 = !DILocation(line: 682, column: 25, scope: !2562)
!2564 = !DILocation(line: 683, column: 25, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !201, line: 683, column: 25)
!2566 = distinct !DILexicalBlock(scope: !2543, file: !201, line: 683, column: 25)
!2567 = !DILocation(line: 683, column: 25, scope: !2566)
!2568 = !DILocation(line: 684, column: 25, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !201, line: 684, column: 25)
!2570 = distinct !DILexicalBlock(scope: !2543, file: !201, line: 684, column: 25)
!2571 = !DILocation(line: 684, column: 25, scope: !2570)
!2572 = !DILocation(line: 685, column: 38, scope: !2543)
!2573 = !DILocation(line: 685, column: 33, scope: !2543)
!2574 = !DILocation(line: 686, column: 23, scope: !2543)
!2575 = !DILocation(line: 687, column: 30, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2537, file: !201, line: 687, column: 30)
!2577 = !DILocation(line: 687, column: 30, scope: !2537)
!2578 = !DILocation(line: 689, column: 25, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !201, line: 689, column: 25)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !201, line: 689, column: 25)
!2581 = distinct !DILexicalBlock(scope: !2576, file: !201, line: 688, column: 23)
!2582 = !DILocation(line: 689, column: 25, scope: !2580)
!2583 = !DILocation(line: 691, column: 23, scope: !2581)
!2584 = !DILocation(line: 692, column: 35, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2538, file: !201, line: 692, column: 25)
!2586 = !DILocation(line: 692, column: 30, scope: !2585)
!2587 = !DILocation(line: 692, column: 25, scope: !2538)
!2588 = !DILocation(line: 694, column: 21, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !201, line: 694, column: 21)
!2590 = distinct !DILexicalBlock(scope: !2538, file: !201, line: 694, column: 21)
!2591 = !DILocation(line: 694, column: 21, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !201, line: 694, column: 21)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !201, line: 694, column: 21)
!2594 = distinct !DILexicalBlock(scope: !2589, file: !201, line: 694, column: 21)
!2595 = !DILocation(line: 694, column: 21, scope: !2593)
!2596 = !DILocation(line: 694, column: 21, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !201, line: 694, column: 21)
!2598 = distinct !DILexicalBlock(scope: !2594, file: !201, line: 694, column: 21)
!2599 = !DILocation(line: 694, column: 21, scope: !2598)
!2600 = !DILocation(line: 694, column: 21, scope: !2594)
!2601 = !DILocation(line: 695, column: 21, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !201, line: 695, column: 21)
!2603 = distinct !DILexicalBlock(scope: !2538, file: !201, line: 695, column: 21)
!2604 = !DILocation(line: 695, column: 21, scope: !2603)
!2605 = !DILocation(line: 696, column: 25, scope: !2538)
!2606 = !DILocation(line: 678, column: 17, scope: !2539)
!2607 = distinct !{!2607, !2608, !2609}
!2608 = !DILocation(line: 678, column: 17, scope: !2540)
!2609 = !DILocation(line: 697, column: 19, scope: !2540)
!2610 = !DILocation(line: 704, column: 34, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2213, file: !201, line: 704, column: 11)
!2612 = !DILocation(line: 706, column: 14, scope: !2611)
!2613 = !DILocation(line: 707, column: 14, scope: !2611)
!2614 = !DILocation(line: 707, column: 35, scope: !2611)
!2615 = !DILocation(line: 707, column: 17, scope: !2611)
!2616 = !DILocation(line: 707, column: 53, scope: !2611)
!2617 = !DILocation(line: 707, column: 47, scope: !2611)
!2618 = !DILocation(line: 707, column: 65, scope: !2611)
!2619 = !DILocation(line: 708, column: 15, scope: !2611)
!2620 = !DILocation(line: 708, column: 11, scope: !2611)
!2621 = !DILocation(line: 704, column: 11, scope: !2213)
!2622 = !DILocation(line: 712, column: 7, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2213, file: !201, line: 712, column: 7)
!2624 = !DILocation(line: 712, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2623, file: !201, line: 712, column: 7)
!2626 = !DILocation(line: 712, column: 7, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !201, line: 712, column: 7)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !201, line: 712, column: 7)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !201, line: 712, column: 7)
!2630 = !DILocation(line: 712, column: 7, scope: !2628)
!2631 = !DILocation(line: 712, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !201, line: 712, column: 7)
!2633 = distinct !DILexicalBlock(scope: !2629, file: !201, line: 712, column: 7)
!2634 = !DILocation(line: 712, column: 7, scope: !2633)
!2635 = !DILocation(line: 712, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !201, line: 712, column: 7)
!2637 = distinct !DILexicalBlock(scope: !2629, file: !201, line: 712, column: 7)
!2638 = !DILocation(line: 712, column: 7, scope: !2637)
!2639 = !DILocation(line: 712, column: 7, scope: !2629)
!2640 = !DILocation(line: 712, column: 7, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !201, line: 712, column: 7)
!2642 = distinct !DILexicalBlock(scope: !2623, file: !201, line: 712, column: 7)
!2643 = !DILocation(line: 712, column: 7, scope: !2642)
!2644 = !DILocation(line: 715, column: 7, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !201, line: 715, column: 7)
!2646 = distinct !DILexicalBlock(scope: !2213, file: !201, line: 715, column: 7)
!2647 = !DILocation(line: 715, column: 7, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !201, line: 715, column: 7)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !201, line: 715, column: 7)
!2650 = distinct !DILexicalBlock(scope: !2645, file: !201, line: 715, column: 7)
!2651 = !DILocation(line: 715, column: 7, scope: !2649)
!2652 = !DILocation(line: 715, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !201, line: 715, column: 7)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !201, line: 715, column: 7)
!2655 = !DILocation(line: 715, column: 7, scope: !2654)
!2656 = !DILocation(line: 715, column: 7, scope: !2650)
!2657 = !DILocation(line: 716, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !201, line: 716, column: 7)
!2659 = distinct !DILexicalBlock(scope: !2213, file: !201, line: 716, column: 7)
!2660 = !DILocation(line: 716, column: 7, scope: !2659)
!2661 = !DILocation(line: 718, column: 13, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2213, file: !201, line: 718, column: 11)
!2663 = !DILocation(line: 718, column: 11, scope: !2213)
!2664 = !DILocation(line: 720, column: 5, scope: !2214)
!2665 = !DILocation(line: 392, column: 75, scope: !2214)
!2666 = !DILocation(line: 392, column: 3, scope: !2214)
!2667 = distinct !{!2667, !2327, !2668}
!2668 = !DILocation(line: 720, column: 5, scope: !2215)
!2669 = !DILocation(line: 722, column: 11, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2186, file: !201, line: 722, column: 7)
!2671 = !DILocation(line: 722, column: 16, scope: !2670)
!2672 = !DILocation(line: 730, column: 51, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2186, file: !201, line: 730, column: 7)
!2674 = !DILocation(line: 731, column: 10, scope: !2673)
!2675 = !DILocation(line: 733, column: 11, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !201, line: 733, column: 11)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !201, line: 732, column: 5)
!2678 = !DILocation(line: 733, column: 11, scope: !2677)
!2679 = !DILocation(line: 734, column: 16, scope: !2676)
!2680 = !DILocation(line: 734, column: 9, scope: !2676)
!2681 = !DILocation(line: 738, column: 18, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2676, file: !201, line: 738, column: 16)
!2683 = !DILocation(line: 738, column: 32, scope: !2682)
!2684 = !DILocation(line: 738, column: 29, scope: !2682)
!2685 = !DILocation(line: 747, column: 7, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2186, file: !201, line: 747, column: 7)
!2687 = !DILocation(line: 747, column: 20, scope: !2686)
!2688 = !DILocation(line: 748, column: 12, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !201, line: 748, column: 5)
!2690 = distinct !DILexicalBlock(scope: !2686, file: !201, line: 748, column: 5)
!2691 = !DILocation(line: 748, column: 5, scope: !2690)
!2692 = !DILocation(line: 749, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !201, line: 749, column: 7)
!2694 = distinct !DILexicalBlock(scope: !2689, file: !201, line: 749, column: 7)
!2695 = !DILocation(line: 749, column: 7, scope: !2694)
!2696 = !DILocation(line: 748, column: 39, scope: !2689)
!2697 = distinct !{!2697, !2691, !2698}
!2698 = !DILocation(line: 749, column: 7, scope: !2690)
!2699 = !DILocation(line: 751, column: 11, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2186, file: !201, line: 751, column: 7)
!2701 = !DILocation(line: 751, column: 7, scope: !2186)
!2702 = !DILocation(line: 752, column: 5, scope: !2700)
!2703 = !DILocation(line: 752, column: 17, scope: !2700)
!2704 = !DILocation(line: 758, column: 21, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2186, file: !201, line: 758, column: 7)
!2706 = !DILocation(line: 758, column: 54, scope: !2705)
!2707 = !DILocation(line: 758, column: 51, scope: !2705)
!2708 = !DILocation(line: 762, column: 42, scope: !2186)
!2709 = !DILocation(line: 760, column: 10, scope: !2186)
!2710 = !DILocation(line: 760, column: 3, scope: !2186)
!2711 = !DILocation(line: 764, column: 1, scope: !2186)
!2712 = distinct !DISubprogram(name: "gettext_quote", scope: !201, file: !201, line: 199, type: !2713, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!66, !66, !5}
!2715 = !{!2716, !2717, !2718, !2719}
!2716 = !DILocalVariable(name: "msgid", arg: 1, scope: !2712, file: !201, line: 199, type: !66)
!2717 = !DILocalVariable(name: "s", arg: 2, scope: !2712, file: !201, line: 199, type: !5)
!2718 = !DILocalVariable(name: "translation", scope: !2712, file: !201, line: 201, type: !66)
!2719 = !DILocalVariable(name: "locale_code", scope: !2712, file: !201, line: 202, type: !66)
!2720 = !DILocation(line: 199, column: 28, scope: !2712)
!2721 = !DILocation(line: 199, column: 54, scope: !2712)
!2722 = !DILocation(line: 201, column: 29, scope: !2712)
!2723 = !DILocation(line: 201, column: 15, scope: !2712)
!2724 = !DILocation(line: 204, column: 19, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2712, file: !201, line: 204, column: 7)
!2726 = !DILocation(line: 204, column: 7, scope: !2712)
!2727 = !DILocation(line: 225, column: 17, scope: !2712)
!2728 = !DILocation(line: 202, column: 15, scope: !2712)
!2729 = !DILocalVariable(name: "s2", arg: 2, scope: !2730, file: !2731, line: 160, type: !66)
!2730 = distinct !DISubprogram(name: "strcaseeq0", scope: !2731, file: !2731, line: 160, type: !2732, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2734)
!2731 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!50, !66, !66, !46, !46, !46, !46, !46, !46, !46, !46, !46}
!2734 = !{!2735, !2729, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744}
!2735 = !DILocalVariable(name: "s1", arg: 1, scope: !2730, file: !2731, line: 160, type: !66)
!2736 = !DILocalVariable(name: "s20", arg: 3, scope: !2730, file: !2731, line: 160, type: !46)
!2737 = !DILocalVariable(name: "s21", arg: 4, scope: !2730, file: !2731, line: 160, type: !46)
!2738 = !DILocalVariable(name: "s22", arg: 5, scope: !2730, file: !2731, line: 160, type: !46)
!2739 = !DILocalVariable(name: "s23", arg: 6, scope: !2730, file: !2731, line: 160, type: !46)
!2740 = !DILocalVariable(name: "s24", arg: 7, scope: !2730, file: !2731, line: 160, type: !46)
!2741 = !DILocalVariable(name: "s25", arg: 8, scope: !2730, file: !2731, line: 160, type: !46)
!2742 = !DILocalVariable(name: "s26", arg: 9, scope: !2730, file: !2731, line: 160, type: !46)
!2743 = !DILocalVariable(name: "s27", arg: 10, scope: !2730, file: !2731, line: 160, type: !46)
!2744 = !DILocalVariable(name: "s28", arg: 11, scope: !2730, file: !2731, line: 160, type: !46)
!2745 = !DILocation(line: 160, column: 41, scope: !2730, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 226, column: 7, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2712, file: !201, line: 226, column: 7)
!2748 = !DILocation(line: 160, column: 120, scope: !2730, inlinedAt: !2746)
!2749 = !DILocation(line: 160, column: 130, scope: !2730, inlinedAt: !2746)
!2750 = !DILocation(line: 162, column: 7, scope: !2751, inlinedAt: !2746)
!2751 = distinct !DILexicalBlock(scope: !2730, file: !2731, line: 162, column: 7)
!2752 = !DILocalVariable(name: "s2", arg: 2, scope: !2753, file: !2731, line: 146, type: !66)
!2753 = distinct !DISubprogram(name: "strcaseeq1", scope: !2731, file: !2731, line: 146, type: !2754, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2756)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!50, !66, !66, !46, !46, !46, !46, !46, !46, !46, !46}
!2756 = !{!2757, !2752, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765}
!2757 = !DILocalVariable(name: "s1", arg: 1, scope: !2753, file: !2731, line: 146, type: !66)
!2758 = !DILocalVariable(name: "s21", arg: 3, scope: !2753, file: !2731, line: 146, type: !46)
!2759 = !DILocalVariable(name: "s22", arg: 4, scope: !2753, file: !2731, line: 146, type: !46)
!2760 = !DILocalVariable(name: "s23", arg: 5, scope: !2753, file: !2731, line: 146, type: !46)
!2761 = !DILocalVariable(name: "s24", arg: 6, scope: !2753, file: !2731, line: 146, type: !46)
!2762 = !DILocalVariable(name: "s25", arg: 7, scope: !2753, file: !2731, line: 146, type: !46)
!2763 = !DILocalVariable(name: "s26", arg: 8, scope: !2753, file: !2731, line: 146, type: !46)
!2764 = !DILocalVariable(name: "s27", arg: 9, scope: !2753, file: !2731, line: 146, type: !46)
!2765 = !DILocalVariable(name: "s28", arg: 10, scope: !2753, file: !2731, line: 146, type: !46)
!2766 = !DILocation(line: 146, column: 41, scope: !2753, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 167, column: 16, scope: !2768, inlinedAt: !2746)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !2731, line: 164, column: 11)
!2769 = distinct !DILexicalBlock(scope: !2751, file: !2731, line: 163, column: 5)
!2770 = !DILocation(line: 146, column: 110, scope: !2753, inlinedAt: !2767)
!2771 = !DILocation(line: 146, column: 120, scope: !2753, inlinedAt: !2767)
!2772 = !DILocation(line: 148, column: 7, scope: !2773, inlinedAt: !2767)
!2773 = distinct !DILexicalBlock(scope: !2753, file: !2731, line: 148, column: 7)
!2774 = !DILocalVariable(name: "s2", arg: 2, scope: !2775, file: !2731, line: 132, type: !66)
!2775 = distinct !DISubprogram(name: "strcaseeq2", scope: !2731, file: !2731, line: 132, type: !2776, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!50, !66, !66, !46, !46, !46, !46, !46, !46, !46}
!2778 = !{!2779, !2774, !2780, !2781, !2782, !2783, !2784, !2785, !2786}
!2779 = !DILocalVariable(name: "s1", arg: 1, scope: !2775, file: !2731, line: 132, type: !66)
!2780 = !DILocalVariable(name: "s22", arg: 3, scope: !2775, file: !2731, line: 132, type: !46)
!2781 = !DILocalVariable(name: "s23", arg: 4, scope: !2775, file: !2731, line: 132, type: !46)
!2782 = !DILocalVariable(name: "s24", arg: 5, scope: !2775, file: !2731, line: 132, type: !46)
!2783 = !DILocalVariable(name: "s25", arg: 6, scope: !2775, file: !2731, line: 132, type: !46)
!2784 = !DILocalVariable(name: "s26", arg: 7, scope: !2775, file: !2731, line: 132, type: !46)
!2785 = !DILocalVariable(name: "s27", arg: 8, scope: !2775, file: !2731, line: 132, type: !46)
!2786 = !DILocalVariable(name: "s28", arg: 9, scope: !2775, file: !2731, line: 132, type: !46)
!2787 = !DILocation(line: 132, column: 41, scope: !2775, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 153, column: 16, scope: !2789, inlinedAt: !2767)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !2731, line: 150, column: 11)
!2790 = distinct !DILexicalBlock(scope: !2773, file: !2731, line: 149, column: 5)
!2791 = !DILocation(line: 132, column: 100, scope: !2775, inlinedAt: !2788)
!2792 = !DILocation(line: 132, column: 110, scope: !2775, inlinedAt: !2788)
!2793 = !DILocation(line: 134, column: 7, scope: !2794, inlinedAt: !2788)
!2794 = distinct !DILexicalBlock(scope: !2775, file: !2731, line: 134, column: 7)
!2795 = !DILocalVariable(name: "s2", arg: 2, scope: !2796, file: !2731, line: 118, type: !66)
!2796 = distinct !DISubprogram(name: "strcaseeq3", scope: !2731, file: !2731, line: 118, type: !2797, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!50, !66, !66, !46, !46, !46, !46, !46, !46}
!2799 = !{!2800, !2795, !2801, !2802, !2803, !2804, !2805, !2806}
!2800 = !DILocalVariable(name: "s1", arg: 1, scope: !2796, file: !2731, line: 118, type: !66)
!2801 = !DILocalVariable(name: "s23", arg: 3, scope: !2796, file: !2731, line: 118, type: !46)
!2802 = !DILocalVariable(name: "s24", arg: 4, scope: !2796, file: !2731, line: 118, type: !46)
!2803 = !DILocalVariable(name: "s25", arg: 5, scope: !2796, file: !2731, line: 118, type: !46)
!2804 = !DILocalVariable(name: "s26", arg: 6, scope: !2796, file: !2731, line: 118, type: !46)
!2805 = !DILocalVariable(name: "s27", arg: 7, scope: !2796, file: !2731, line: 118, type: !46)
!2806 = !DILocalVariable(name: "s28", arg: 8, scope: !2796, file: !2731, line: 118, type: !46)
!2807 = !DILocation(line: 118, column: 41, scope: !2796, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 139, column: 16, scope: !2809, inlinedAt: !2788)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !2731, line: 136, column: 11)
!2810 = distinct !DILexicalBlock(scope: !2794, file: !2731, line: 135, column: 5)
!2811 = !DILocation(line: 118, column: 90, scope: !2796, inlinedAt: !2808)
!2812 = !DILocation(line: 118, column: 100, scope: !2796, inlinedAt: !2808)
!2813 = !DILocation(line: 120, column: 7, scope: !2814, inlinedAt: !2808)
!2814 = distinct !DILexicalBlock(scope: !2796, file: !2731, line: 120, column: 7)
!2815 = !DILocation(line: 120, column: 7, scope: !2796, inlinedAt: !2808)
!2816 = !DILocalVariable(name: "s2", arg: 2, scope: !2817, file: !2731, line: 104, type: !66)
!2817 = distinct !DISubprogram(name: "strcaseeq4", scope: !2731, file: !2731, line: 104, type: !2818, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2820)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!50, !66, !66, !46, !46, !46, !46, !46}
!2820 = !{!2821, !2816, !2822, !2823, !2824, !2825, !2826}
!2821 = !DILocalVariable(name: "s1", arg: 1, scope: !2817, file: !2731, line: 104, type: !66)
!2822 = !DILocalVariable(name: "s24", arg: 3, scope: !2817, file: !2731, line: 104, type: !46)
!2823 = !DILocalVariable(name: "s25", arg: 4, scope: !2817, file: !2731, line: 104, type: !46)
!2824 = !DILocalVariable(name: "s26", arg: 5, scope: !2817, file: !2731, line: 104, type: !46)
!2825 = !DILocalVariable(name: "s27", arg: 6, scope: !2817, file: !2731, line: 104, type: !46)
!2826 = !DILocalVariable(name: "s28", arg: 7, scope: !2817, file: !2731, line: 104, type: !46)
!2827 = !DILocation(line: 104, column: 41, scope: !2817, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 125, column: 16, scope: !2829, inlinedAt: !2808)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !2731, line: 122, column: 11)
!2830 = distinct !DILexicalBlock(scope: !2814, file: !2731, line: 121, column: 5)
!2831 = !DILocation(line: 104, column: 80, scope: !2817, inlinedAt: !2828)
!2832 = !DILocation(line: 104, column: 90, scope: !2817, inlinedAt: !2828)
!2833 = !DILocation(line: 106, column: 7, scope: !2834, inlinedAt: !2828)
!2834 = distinct !DILexicalBlock(scope: !2817, file: !2731, line: 106, column: 7)
!2835 = !DILocation(line: 106, column: 7, scope: !2817, inlinedAt: !2828)
!2836 = !DILocalVariable(name: "s2", arg: 2, scope: !2837, file: !2731, line: 90, type: !66)
!2837 = distinct !DISubprogram(name: "strcaseeq5", scope: !2731, file: !2731, line: 90, type: !2838, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!50, !66, !66, !46, !46, !46, !46}
!2840 = !{!2841, !2836, !2842, !2843, !2844, !2845}
!2841 = !DILocalVariable(name: "s1", arg: 1, scope: !2837, file: !2731, line: 90, type: !66)
!2842 = !DILocalVariable(name: "s25", arg: 3, scope: !2837, file: !2731, line: 90, type: !46)
!2843 = !DILocalVariable(name: "s26", arg: 4, scope: !2837, file: !2731, line: 90, type: !46)
!2844 = !DILocalVariable(name: "s27", arg: 5, scope: !2837, file: !2731, line: 90, type: !46)
!2845 = !DILocalVariable(name: "s28", arg: 6, scope: !2837, file: !2731, line: 90, type: !46)
!2846 = !DILocation(line: 90, column: 41, scope: !2837, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 111, column: 16, scope: !2848, inlinedAt: !2828)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !2731, line: 108, column: 11)
!2849 = distinct !DILexicalBlock(scope: !2834, file: !2731, line: 107, column: 5)
!2850 = !DILocation(line: 90, column: 70, scope: !2837, inlinedAt: !2847)
!2851 = !DILocation(line: 90, column: 80, scope: !2837, inlinedAt: !2847)
!2852 = !DILocation(line: 92, column: 7, scope: !2853, inlinedAt: !2847)
!2853 = distinct !DILexicalBlock(scope: !2837, file: !2731, line: 92, column: 7)
!2854 = !DILocation(line: 92, column: 7, scope: !2837, inlinedAt: !2847)
!2855 = !DILocation(line: 227, column: 12, scope: !2747)
!2856 = !DILocation(line: 227, column: 21, scope: !2747)
!2857 = !DILocation(line: 227, column: 5, scope: !2747)
!2858 = !DILocation(line: 146, column: 41, scope: !2753, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 167, column: 16, scope: !2768, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 228, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2712, file: !201, line: 228, column: 7)
!2862 = !DILocation(line: 146, column: 110, scope: !2753, inlinedAt: !2859)
!2863 = !DILocation(line: 146, column: 120, scope: !2753, inlinedAt: !2859)
!2864 = !DILocation(line: 148, column: 7, scope: !2773, inlinedAt: !2859)
!2865 = !DILocation(line: 132, column: 41, scope: !2775, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 153, column: 16, scope: !2789, inlinedAt: !2859)
!2867 = !DILocation(line: 132, column: 100, scope: !2775, inlinedAt: !2866)
!2868 = !DILocation(line: 132, column: 110, scope: !2775, inlinedAt: !2866)
!2869 = !DILocation(line: 134, column: 7, scope: !2794, inlinedAt: !2866)
!2870 = !DILocation(line: 134, column: 7, scope: !2775, inlinedAt: !2866)
!2871 = !DILocation(line: 118, column: 41, scope: !2796, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 139, column: 16, scope: !2809, inlinedAt: !2866)
!2873 = !DILocation(line: 118, column: 90, scope: !2796, inlinedAt: !2872)
!2874 = !DILocation(line: 118, column: 100, scope: !2796, inlinedAt: !2872)
!2875 = !DILocation(line: 120, column: 7, scope: !2814, inlinedAt: !2872)
!2876 = !DILocation(line: 120, column: 7, scope: !2796, inlinedAt: !2872)
!2877 = !DILocation(line: 104, column: 41, scope: !2817, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 125, column: 16, scope: !2829, inlinedAt: !2872)
!2879 = !DILocation(line: 104, column: 80, scope: !2817, inlinedAt: !2878)
!2880 = !DILocation(line: 104, column: 90, scope: !2817, inlinedAt: !2878)
!2881 = !DILocation(line: 106, column: 7, scope: !2834, inlinedAt: !2878)
!2882 = !DILocation(line: 106, column: 7, scope: !2817, inlinedAt: !2878)
!2883 = !DILocation(line: 90, column: 41, scope: !2837, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 111, column: 16, scope: !2848, inlinedAt: !2878)
!2885 = !DILocation(line: 90, column: 70, scope: !2837, inlinedAt: !2884)
!2886 = !DILocation(line: 90, column: 80, scope: !2837, inlinedAt: !2884)
!2887 = !DILocation(line: 92, column: 7, scope: !2853, inlinedAt: !2884)
!2888 = !DILocation(line: 92, column: 7, scope: !2837, inlinedAt: !2884)
!2889 = !DILocalVariable(name: "s2", arg: 2, scope: !2890, file: !2731, line: 76, type: !66)
!2890 = distinct !DISubprogram(name: "strcaseeq6", scope: !2731, file: !2731, line: 76, type: !2891, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!50, !66, !66, !46, !46, !46}
!2893 = !{!2894, !2889, !2895, !2896, !2897}
!2894 = !DILocalVariable(name: "s1", arg: 1, scope: !2890, file: !2731, line: 76, type: !66)
!2895 = !DILocalVariable(name: "s26", arg: 3, scope: !2890, file: !2731, line: 76, type: !46)
!2896 = !DILocalVariable(name: "s27", arg: 4, scope: !2890, file: !2731, line: 76, type: !46)
!2897 = !DILocalVariable(name: "s28", arg: 5, scope: !2890, file: !2731, line: 76, type: !46)
!2898 = !DILocation(line: 76, column: 41, scope: !2890, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 97, column: 16, scope: !2900, inlinedAt: !2884)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !2731, line: 94, column: 11)
!2901 = distinct !DILexicalBlock(scope: !2853, file: !2731, line: 93, column: 5)
!2902 = !DILocation(line: 76, column: 60, scope: !2890, inlinedAt: !2899)
!2903 = !DILocation(line: 76, column: 70, scope: !2890, inlinedAt: !2899)
!2904 = !DILocation(line: 78, column: 7, scope: !2905, inlinedAt: !2899)
!2905 = distinct !DILexicalBlock(scope: !2890, file: !2731, line: 78, column: 7)
!2906 = !DILocation(line: 78, column: 7, scope: !2890, inlinedAt: !2899)
!2907 = !DILocalVariable(name: "s2", arg: 2, scope: !2908, file: !2731, line: 62, type: !66)
!2908 = distinct !DISubprogram(name: "strcaseeq7", scope: !2731, file: !2731, line: 62, type: !2909, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!50, !66, !66, !46, !46}
!2911 = !{!2912, !2907, !2913, !2914}
!2912 = !DILocalVariable(name: "s1", arg: 1, scope: !2908, file: !2731, line: 62, type: !66)
!2913 = !DILocalVariable(name: "s27", arg: 3, scope: !2908, file: !2731, line: 62, type: !46)
!2914 = !DILocalVariable(name: "s28", arg: 4, scope: !2908, file: !2731, line: 62, type: !46)
!2915 = !DILocation(line: 62, column: 41, scope: !2908, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 83, column: 16, scope: !2917, inlinedAt: !2899)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !2731, line: 80, column: 11)
!2918 = distinct !DILexicalBlock(scope: !2905, file: !2731, line: 79, column: 5)
!2919 = !DILocation(line: 62, column: 50, scope: !2908, inlinedAt: !2916)
!2920 = !DILocation(line: 62, column: 60, scope: !2908, inlinedAt: !2916)
!2921 = !DILocation(line: 64, column: 7, scope: !2922, inlinedAt: !2916)
!2922 = distinct !DILexicalBlock(scope: !2908, file: !2731, line: 64, column: 7)
!2923 = !DILocation(line: 228, column: 7, scope: !2712)
!2924 = !DILocation(line: 229, column: 12, scope: !2861)
!2925 = !DILocation(line: 229, column: 21, scope: !2861)
!2926 = !DILocation(line: 229, column: 5, scope: !2861)
!2927 = !DILocation(line: 231, column: 13, scope: !2712)
!2928 = !DILocation(line: 231, column: 11, scope: !2712)
!2929 = !DILocation(line: 231, column: 3, scope: !2712)
!2930 = !DILocation(line: 232, column: 1, scope: !2712)
!2931 = distinct !DISubprogram(name: "quotearg_alloc", scope: !201, file: !201, line: 791, type: !2932, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!45, !66, !195, !2058}
!2934 = !{!2935, !2936, !2937}
!2935 = !DILocalVariable(name: "arg", arg: 1, scope: !2931, file: !201, line: 791, type: !66)
!2936 = !DILocalVariable(name: "argsize", arg: 2, scope: !2931, file: !201, line: 791, type: !195)
!2937 = !DILocalVariable(name: "o", arg: 3, scope: !2931, file: !201, line: 792, type: !2058)
!2938 = !DILocation(line: 791, column: 29, scope: !2931)
!2939 = !DILocation(line: 791, column: 41, scope: !2931)
!2940 = !DILocation(line: 792, column: 47, scope: !2931)
!2941 = !DILocalVariable(name: "arg", arg: 1, scope: !2942, file: !201, line: 804, type: !66)
!2942 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !201, file: !201, line: 804, type: !2943, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!45, !66, !195, !613, !2058}
!2945 = !{!2941, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953}
!2946 = !DILocalVariable(name: "argsize", arg: 2, scope: !2942, file: !201, line: 804, type: !195)
!2947 = !DILocalVariable(name: "size", arg: 3, scope: !2942, file: !201, line: 804, type: !613)
!2948 = !DILocalVariable(name: "o", arg: 4, scope: !2942, file: !201, line: 805, type: !2058)
!2949 = !DILocalVariable(name: "p", scope: !2942, file: !201, line: 807, type: !2058)
!2950 = !DILocalVariable(name: "e", scope: !2942, file: !201, line: 808, type: !50)
!2951 = !DILocalVariable(name: "flags", scope: !2942, file: !201, line: 810, type: !50)
!2952 = !DILocalVariable(name: "bufsize", scope: !2942, file: !201, line: 811, type: !195)
!2953 = !DILocalVariable(name: "buf", scope: !2942, file: !201, line: 815, type: !45)
!2954 = !DILocation(line: 804, column: 33, scope: !2942, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 794, column: 10, scope: !2931)
!2956 = !DILocation(line: 804, column: 45, scope: !2942, inlinedAt: !2955)
!2957 = !DILocation(line: 804, column: 62, scope: !2942, inlinedAt: !2955)
!2958 = !DILocation(line: 805, column: 51, scope: !2942, inlinedAt: !2955)
!2959 = !DILocation(line: 807, column: 37, scope: !2942, inlinedAt: !2955)
!2960 = !DILocation(line: 807, column: 33, scope: !2942, inlinedAt: !2955)
!2961 = !DILocation(line: 808, column: 11, scope: !2942, inlinedAt: !2955)
!2962 = !DILocation(line: 808, column: 7, scope: !2942, inlinedAt: !2955)
!2963 = !DILocation(line: 810, column: 18, scope: !2942, inlinedAt: !2955)
!2964 = !DILocation(line: 810, column: 24, scope: !2942, inlinedAt: !2955)
!2965 = !DILocation(line: 810, column: 7, scope: !2942, inlinedAt: !2955)
!2966 = !DILocation(line: 811, column: 69, scope: !2942, inlinedAt: !2955)
!2967 = !DILocation(line: 812, column: 53, scope: !2942, inlinedAt: !2955)
!2968 = !DILocation(line: 813, column: 49, scope: !2942, inlinedAt: !2955)
!2969 = !DILocation(line: 814, column: 49, scope: !2942, inlinedAt: !2955)
!2970 = !DILocation(line: 811, column: 20, scope: !2942, inlinedAt: !2955)
!2971 = !DILocation(line: 814, column: 62, scope: !2942, inlinedAt: !2955)
!2972 = !DILocation(line: 811, column: 10, scope: !2942, inlinedAt: !2955)
!2973 = !DILocalVariable(name: "n", arg: 1, scope: !2974, file: !609, line: 220, type: !195)
!2974 = distinct !DISubprogram(name: "xcharalloc", scope: !609, file: !609, line: 220, type: !2975, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!45, !195}
!2977 = !{!2973}
!2978 = !DILocation(line: 220, column: 20, scope: !2974, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 815, column: 15, scope: !2942, inlinedAt: !2955)
!2980 = !DILocation(line: 222, column: 10, scope: !2974, inlinedAt: !2979)
!2981 = !DILocation(line: 815, column: 9, scope: !2942, inlinedAt: !2955)
!2982 = !DILocation(line: 816, column: 60, scope: !2942, inlinedAt: !2955)
!2983 = !DILocation(line: 818, column: 32, scope: !2942, inlinedAt: !2955)
!2984 = !DILocation(line: 818, column: 47, scope: !2942, inlinedAt: !2955)
!2985 = !DILocation(line: 816, column: 3, scope: !2942, inlinedAt: !2955)
!2986 = !DILocation(line: 819, column: 9, scope: !2942, inlinedAt: !2955)
!2987 = !DILocation(line: 794, column: 3, scope: !2931)
!2988 = !DILocation(line: 804, column: 33, scope: !2942)
!2989 = !DILocation(line: 804, column: 45, scope: !2942)
!2990 = !DILocation(line: 804, column: 62, scope: !2942)
!2991 = !DILocation(line: 805, column: 51, scope: !2942)
!2992 = !DILocation(line: 807, column: 37, scope: !2942)
!2993 = !DILocation(line: 807, column: 33, scope: !2942)
!2994 = !DILocation(line: 808, column: 11, scope: !2942)
!2995 = !DILocation(line: 808, column: 7, scope: !2942)
!2996 = !DILocation(line: 810, column: 18, scope: !2942)
!2997 = !DILocation(line: 810, column: 27, scope: !2942)
!2998 = !DILocation(line: 810, column: 24, scope: !2942)
!2999 = !DILocation(line: 810, column: 7, scope: !2942)
!3000 = !DILocation(line: 811, column: 69, scope: !2942)
!3001 = !DILocation(line: 812, column: 53, scope: !2942)
!3002 = !DILocation(line: 813, column: 49, scope: !2942)
!3003 = !DILocation(line: 814, column: 49, scope: !2942)
!3004 = !DILocation(line: 811, column: 20, scope: !2942)
!3005 = !DILocation(line: 814, column: 62, scope: !2942)
!3006 = !DILocation(line: 811, column: 10, scope: !2942)
!3007 = !DILocation(line: 220, column: 20, scope: !2974, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 815, column: 15, scope: !2942)
!3009 = !DILocation(line: 222, column: 10, scope: !2974, inlinedAt: !3008)
!3010 = !DILocation(line: 815, column: 9, scope: !2942)
!3011 = !DILocation(line: 816, column: 60, scope: !2942)
!3012 = !DILocation(line: 818, column: 32, scope: !2942)
!3013 = !DILocation(line: 818, column: 47, scope: !2942)
!3014 = !DILocation(line: 816, column: 3, scope: !2942)
!3015 = !DILocation(line: 819, column: 9, scope: !2942)
!3016 = !DILocation(line: 820, column: 7, scope: !2942)
!3017 = !DILocation(line: 821, column: 11, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2942, file: !201, line: 820, column: 7)
!3019 = !{!1016, !1016, i64 0}
!3020 = !DILocation(line: 821, column: 5, scope: !3018)
!3021 = !DILocation(line: 822, column: 3, scope: !2942)
!3022 = distinct !DISubprogram(name: "quotearg_free", scope: !201, file: !201, line: 840, type: !681, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3023)
!3023 = !{!3024, !3025}
!3024 = !DILocalVariable(name: "sv", scope: !3022, file: !201, line: 842, type: !225)
!3025 = !DILocalVariable(name: "i", scope: !3022, file: !201, line: 843, type: !50)
!3026 = !DILocation(line: 842, column: 24, scope: !3022)
!3027 = !DILocation(line: 842, column: 19, scope: !3022)
!3028 = !DILocation(line: 843, column: 7, scope: !3022)
!3029 = !DILocation(line: 844, column: 19, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !201, line: 844, column: 3)
!3031 = distinct !DILexicalBlock(scope: !3022, file: !201, line: 844, column: 3)
!3032 = !DILocation(line: 844, column: 17, scope: !3030)
!3033 = !DILocation(line: 844, column: 3, scope: !3031)
!3034 = !DILocation(line: 845, column: 17, scope: !3030)
!3035 = !{!3036, !673, i64 8}
!3036 = !{!"slotvec", !1016, i64 0, !673, i64 8}
!3037 = !DILocation(line: 845, column: 5, scope: !3030)
!3038 = !DILocation(line: 844, column: 28, scope: !3030)
!3039 = distinct !{!3039, !3033, !3040}
!3040 = !DILocation(line: 845, column: 20, scope: !3031)
!3041 = !DILocation(line: 846, column: 13, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3022, file: !201, line: 846, column: 7)
!3043 = !DILocation(line: 846, column: 17, scope: !3042)
!3044 = !DILocation(line: 846, column: 7, scope: !3022)
!3045 = !DILocation(line: 848, column: 7, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !201, line: 847, column: 5)
!3047 = !DILocation(line: 849, column: 21, scope: !3046)
!3048 = !{!3036, !1016, i64 0}
!3049 = !DILocation(line: 850, column: 20, scope: !3046)
!3050 = !DILocation(line: 851, column: 5, scope: !3046)
!3051 = !DILocation(line: 852, column: 10, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3022, file: !201, line: 852, column: 7)
!3053 = !DILocation(line: 852, column: 7, scope: !3022)
!3054 = !DILocation(line: 854, column: 13, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3052, file: !201, line: 853, column: 5)
!3056 = !DILocation(line: 854, column: 7, scope: !3055)
!3057 = !DILocation(line: 855, column: 15, scope: !3055)
!3058 = !DILocation(line: 856, column: 5, scope: !3055)
!3059 = !DILocation(line: 857, column: 10, scope: !3022)
!3060 = !DILocation(line: 858, column: 1, scope: !3022)
!3061 = distinct !DISubprogram(name: "quotearg_n", scope: !201, file: !201, line: 922, type: !3062, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!45, !50, !66}
!3064 = !{!3065, !3066}
!3065 = !DILocalVariable(name: "n", arg: 1, scope: !3061, file: !201, line: 922, type: !50)
!3066 = !DILocalVariable(name: "arg", arg: 2, scope: !3061, file: !201, line: 922, type: !66)
!3067 = !DILocation(line: 922, column: 17, scope: !3061)
!3068 = !DILocation(line: 922, column: 32, scope: !3061)
!3069 = !DILocation(line: 924, column: 10, scope: !3061)
!3070 = !DILocation(line: 924, column: 3, scope: !3061)
!3071 = distinct !DISubprogram(name: "quotearg_n_options", scope: !201, file: !201, line: 869, type: !3072, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!45, !50, !66, !195, !2058}
!3074 = !{!3075, !3076, !3077, !3078, !3079, !3080, !3081, !3084, !3086, !3087, !3088}
!3075 = !DILocalVariable(name: "n", arg: 1, scope: !3071, file: !201, line: 869, type: !50)
!3076 = !DILocalVariable(name: "arg", arg: 2, scope: !3071, file: !201, line: 869, type: !66)
!3077 = !DILocalVariable(name: "argsize", arg: 3, scope: !3071, file: !201, line: 869, type: !195)
!3078 = !DILocalVariable(name: "options", arg: 4, scope: !3071, file: !201, line: 870, type: !2058)
!3079 = !DILocalVariable(name: "e", scope: !3071, file: !201, line: 872, type: !50)
!3080 = !DILocalVariable(name: "sv", scope: !3071, file: !201, line: 874, type: !225)
!3081 = !DILocalVariable(name: "preallocated", scope: !3082, file: !201, line: 881, type: !57)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !201, line: 880, column: 5)
!3083 = distinct !DILexicalBlock(scope: !3071, file: !201, line: 879, column: 7)
!3084 = !DILocalVariable(name: "size", scope: !3085, file: !201, line: 894, type: !195)
!3085 = distinct !DILexicalBlock(scope: !3071, file: !201, line: 893, column: 3)
!3086 = !DILocalVariable(name: "val", scope: !3085, file: !201, line: 895, type: !45)
!3087 = !DILocalVariable(name: "flags", scope: !3085, file: !201, line: 897, type: !50)
!3088 = !DILocalVariable(name: "qsize", scope: !3085, file: !201, line: 898, type: !195)
!3089 = !DILocation(line: 869, column: 25, scope: !3071)
!3090 = !DILocation(line: 869, column: 40, scope: !3071)
!3091 = !DILocation(line: 869, column: 52, scope: !3071)
!3092 = !DILocation(line: 870, column: 51, scope: !3071)
!3093 = !DILocation(line: 872, column: 11, scope: !3071)
!3094 = !DILocation(line: 872, column: 7, scope: !3071)
!3095 = !DILocation(line: 874, column: 24, scope: !3071)
!3096 = !DILocation(line: 874, column: 19, scope: !3071)
!3097 = !DILocation(line: 876, column: 9, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3071, file: !201, line: 876, column: 7)
!3099 = !DILocation(line: 876, column: 7, scope: !3071)
!3100 = !DILocation(line: 877, column: 5, scope: !3098)
!3101 = !DILocation(line: 879, column: 7, scope: !3083)
!3102 = !DILocation(line: 879, column: 14, scope: !3083)
!3103 = !DILocation(line: 879, column: 7, scope: !3071)
!3104 = !DILocation(line: 881, column: 31, scope: !3082)
!3105 = !DILocation(line: 883, column: 67, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3082, file: !201, line: 883, column: 11)
!3107 = !DILocation(line: 883, column: 11, scope: !3082)
!3108 = !DILocation(line: 884, column: 9, scope: !3106)
!3109 = !DILocation(line: 886, column: 32, scope: !3082)
!3110 = !DILocation(line: 886, column: 61, scope: !3082)
!3111 = !DILocation(line: 886, column: 58, scope: !3082)
!3112 = !DILocation(line: 886, column: 66, scope: !3082)
!3113 = !DILocation(line: 886, column: 22, scope: !3082)
!3114 = !DILocation(line: 886, column: 15, scope: !3082)
!3115 = !DILocation(line: 887, column: 11, scope: !3082)
!3116 = !DILocation(line: 888, column: 15, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3082, file: !201, line: 887, column: 11)
!3118 = !{i64 0, i64 8, !3019, i64 8, i64 8, !672}
!3119 = !DILocation(line: 888, column: 9, scope: !3117)
!3120 = !DILocation(line: 889, column: 20, scope: !3082)
!3121 = !DILocation(line: 889, column: 18, scope: !3082)
!3122 = !DILocation(line: 889, column: 7, scope: !3082)
!3123 = !DILocation(line: 889, column: 38, scope: !3082)
!3124 = !DILocation(line: 889, column: 31, scope: !3082)
!3125 = !DILocation(line: 889, column: 48, scope: !3082)
!3126 = !DILocation(line: 890, column: 14, scope: !3082)
!3127 = !DILocation(line: 891, column: 5, scope: !3082)
!3128 = !DILocation(line: 894, column: 19, scope: !3085)
!3129 = !DILocation(line: 894, column: 25, scope: !3085)
!3130 = !DILocation(line: 894, column: 12, scope: !3085)
!3131 = !DILocation(line: 895, column: 23, scope: !3085)
!3132 = !DILocation(line: 895, column: 11, scope: !3085)
!3133 = !DILocation(line: 897, column: 26, scope: !3085)
!3134 = !DILocation(line: 897, column: 32, scope: !3085)
!3135 = !DILocation(line: 897, column: 9, scope: !3085)
!3136 = !DILocation(line: 899, column: 55, scope: !3085)
!3137 = !DILocation(line: 900, column: 46, scope: !3085)
!3138 = !DILocation(line: 901, column: 55, scope: !3085)
!3139 = !DILocation(line: 902, column: 55, scope: !3085)
!3140 = !DILocation(line: 898, column: 20, scope: !3085)
!3141 = !DILocation(line: 898, column: 12, scope: !3085)
!3142 = !DILocation(line: 904, column: 14, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3085, file: !201, line: 904, column: 9)
!3144 = !DILocation(line: 904, column: 9, scope: !3085)
!3145 = !DILocation(line: 906, column: 35, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3143, file: !201, line: 905, column: 7)
!3147 = !DILocation(line: 906, column: 20, scope: !3146)
!3148 = !DILocation(line: 907, column: 17, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3146, file: !201, line: 907, column: 13)
!3150 = !DILocation(line: 907, column: 13, scope: !3146)
!3151 = !DILocation(line: 908, column: 11, scope: !3149)
!3152 = !DILocation(line: 220, column: 20, scope: !2974, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 909, column: 27, scope: !3146)
!3154 = !DILocation(line: 222, column: 10, scope: !2974, inlinedAt: !3153)
!3155 = !DILocation(line: 909, column: 19, scope: !3146)
!3156 = !DILocation(line: 910, column: 69, scope: !3146)
!3157 = !DILocation(line: 912, column: 44, scope: !3146)
!3158 = !DILocation(line: 913, column: 44, scope: !3146)
!3159 = !DILocation(line: 910, column: 9, scope: !3146)
!3160 = !DILocation(line: 914, column: 7, scope: !3146)
!3161 = !DILocation(line: 916, column: 11, scope: !3085)
!3162 = !DILocation(line: 917, column: 5, scope: !3085)
!3163 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !201, file: !201, line: 928, type: !3164, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!45, !50, !66, !195}
!3166 = !{!3167, !3168, !3169}
!3167 = !DILocalVariable(name: "n", arg: 1, scope: !3163, file: !201, line: 928, type: !50)
!3168 = !DILocalVariable(name: "arg", arg: 2, scope: !3163, file: !201, line: 928, type: !66)
!3169 = !DILocalVariable(name: "argsize", arg: 3, scope: !3163, file: !201, line: 928, type: !195)
!3170 = !DILocation(line: 928, column: 21, scope: !3163)
!3171 = !DILocation(line: 928, column: 36, scope: !3163)
!3172 = !DILocation(line: 928, column: 48, scope: !3163)
!3173 = !DILocation(line: 930, column: 10, scope: !3163)
!3174 = !DILocation(line: 930, column: 3, scope: !3163)
!3175 = distinct !DISubprogram(name: "quotearg", scope: !201, file: !201, line: 934, type: !3176, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!45, !66}
!3178 = !{!3179}
!3179 = !DILocalVariable(name: "arg", arg: 1, scope: !3175, file: !201, line: 934, type: !66)
!3180 = !DILocation(line: 934, column: 23, scope: !3175)
!3181 = !DILocation(line: 922, column: 17, scope: !3061, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 936, column: 10, scope: !3175)
!3183 = !DILocation(line: 922, column: 32, scope: !3061, inlinedAt: !3182)
!3184 = !DILocation(line: 924, column: 10, scope: !3061, inlinedAt: !3182)
!3185 = !DILocation(line: 936, column: 3, scope: !3175)
!3186 = distinct !DISubprogram(name: "quotearg_mem", scope: !201, file: !201, line: 940, type: !3187, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!45, !66, !195}
!3189 = !{!3190, !3191}
!3190 = !DILocalVariable(name: "arg", arg: 1, scope: !3186, file: !201, line: 940, type: !66)
!3191 = !DILocalVariable(name: "argsize", arg: 2, scope: !3186, file: !201, line: 940, type: !195)
!3192 = !DILocation(line: 940, column: 27, scope: !3186)
!3193 = !DILocation(line: 940, column: 39, scope: !3186)
!3194 = !DILocation(line: 928, column: 21, scope: !3163, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 942, column: 10, scope: !3186)
!3196 = !DILocation(line: 928, column: 36, scope: !3163, inlinedAt: !3195)
!3197 = !DILocation(line: 928, column: 48, scope: !3163, inlinedAt: !3195)
!3198 = !DILocation(line: 930, column: 10, scope: !3163, inlinedAt: !3195)
!3199 = !DILocation(line: 942, column: 3, scope: !3186)
!3200 = distinct !DISubprogram(name: "quotearg_n_style", scope: !201, file: !201, line: 946, type: !3201, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!45, !50, !5, !66}
!3203 = !{!3204, !3205, !3206, !3207}
!3204 = !DILocalVariable(name: "n", arg: 1, scope: !3200, file: !201, line: 946, type: !50)
!3205 = !DILocalVariable(name: "s", arg: 2, scope: !3200, file: !201, line: 946, type: !5)
!3206 = !DILocalVariable(name: "arg", arg: 3, scope: !3200, file: !201, line: 946, type: !66)
!3207 = !DILocalVariable(name: "o", scope: !3200, file: !201, line: 948, type: !2059)
!3208 = !DILocalVariable(name: "o", scope: !3209, file: !201, line: 187, type: !206)
!3209 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !201, file: !201, line: 185, type: !3210, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!206, !5}
!3212 = !{!3213, !3208}
!3213 = !DILocalVariable(name: "style", arg: 1, scope: !3209, file: !201, line: 185, type: !5)
!3214 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3215 = !DILocation(line: 187, column: 26, scope: !3209, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 948, column: 36, scope: !3200)
!3217 = !DILocation(line: 946, column: 23, scope: !3200)
!3218 = !DILocation(line: 946, column: 45, scope: !3200)
!3219 = !DILocation(line: 946, column: 60, scope: !3200)
!3220 = !DILocation(line: 948, column: 3, scope: !3200)
!3221 = !DILocation(line: 948, column: 32, scope: !3200)
!3222 = !DILocation(line: 185, column: 48, scope: !3209, inlinedAt: !3216)
!3223 = !DILocation(line: 187, column: 3, scope: !3209, inlinedAt: !3216)
!3224 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3225 = !DILocation(line: 188, column: 13, scope: !3226, inlinedAt: !3216)
!3226 = distinct !DILexicalBlock(scope: !3209, file: !201, line: 188, column: 7)
!3227 = !DILocation(line: 188, column: 7, scope: !3209, inlinedAt: !3216)
!3228 = !DILocation(line: 189, column: 5, scope: !3226, inlinedAt: !3216)
!3229 = !{!3230}
!3230 = distinct !{!3230, !3231, !"quoting_options_from_style: argument 0"}
!3231 = distinct !{!3231, !"quoting_options_from_style"}
!3232 = !DILocation(line: 191, column: 10, scope: !3209, inlinedAt: !3216)
!3233 = !DILocation(line: 192, column: 1, scope: !3209, inlinedAt: !3216)
!3234 = !DILocation(line: 949, column: 10, scope: !3200)
!3235 = !DILocation(line: 950, column: 1, scope: !3200)
!3236 = !DILocation(line: 949, column: 3, scope: !3200)
!3237 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !201, file: !201, line: 953, type: !3238, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!45, !50, !5, !66, !195}
!3240 = !{!3241, !3242, !3243, !3244, !3245}
!3241 = !DILocalVariable(name: "n", arg: 1, scope: !3237, file: !201, line: 953, type: !50)
!3242 = !DILocalVariable(name: "s", arg: 2, scope: !3237, file: !201, line: 953, type: !5)
!3243 = !DILocalVariable(name: "arg", arg: 3, scope: !3237, file: !201, line: 954, type: !66)
!3244 = !DILocalVariable(name: "argsize", arg: 4, scope: !3237, file: !201, line: 954, type: !195)
!3245 = !DILocalVariable(name: "o", scope: !3237, file: !201, line: 956, type: !2059)
!3246 = !DILocation(line: 187, column: 26, scope: !3209, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 956, column: 36, scope: !3237)
!3248 = !DILocation(line: 953, column: 27, scope: !3237)
!3249 = !DILocation(line: 953, column: 49, scope: !3237)
!3250 = !DILocation(line: 954, column: 35, scope: !3237)
!3251 = !DILocation(line: 954, column: 47, scope: !3237)
!3252 = !DILocation(line: 956, column: 3, scope: !3237)
!3253 = !DILocation(line: 956, column: 32, scope: !3237)
!3254 = !DILocation(line: 185, column: 48, scope: !3209, inlinedAt: !3247)
!3255 = !DILocation(line: 187, column: 3, scope: !3209, inlinedAt: !3247)
!3256 = !DILocation(line: 188, column: 13, scope: !3226, inlinedAt: !3247)
!3257 = !DILocation(line: 188, column: 7, scope: !3209, inlinedAt: !3247)
!3258 = !DILocation(line: 189, column: 5, scope: !3226, inlinedAt: !3247)
!3259 = !{!3260}
!3260 = distinct !{!3260, !3261, !"quoting_options_from_style: argument 0"}
!3261 = distinct !{!3261, !"quoting_options_from_style"}
!3262 = !DILocation(line: 191, column: 10, scope: !3209, inlinedAt: !3247)
!3263 = !DILocation(line: 192, column: 1, scope: !3209, inlinedAt: !3247)
!3264 = !DILocation(line: 957, column: 10, scope: !3237)
!3265 = !DILocation(line: 958, column: 1, scope: !3237)
!3266 = !DILocation(line: 957, column: 3, scope: !3237)
!3267 = distinct !DISubprogram(name: "quotearg_style", scope: !201, file: !201, line: 961, type: !3268, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!45, !5, !66}
!3270 = !{!3271, !3272}
!3271 = !DILocalVariable(name: "s", arg: 1, scope: !3267, file: !201, line: 961, type: !5)
!3272 = !DILocalVariable(name: "arg", arg: 2, scope: !3267, file: !201, line: 961, type: !66)
!3273 = !DILocation(line: 187, column: 26, scope: !3209, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 948, column: 36, scope: !3200, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 963, column: 10, scope: !3267)
!3276 = !DILocation(line: 961, column: 36, scope: !3267)
!3277 = !DILocation(line: 961, column: 51, scope: !3267)
!3278 = !DILocation(line: 946, column: 23, scope: !3200, inlinedAt: !3275)
!3279 = !DILocation(line: 946, column: 45, scope: !3200, inlinedAt: !3275)
!3280 = !DILocation(line: 946, column: 60, scope: !3200, inlinedAt: !3275)
!3281 = !DILocation(line: 948, column: 3, scope: !3200, inlinedAt: !3275)
!3282 = !DILocation(line: 948, column: 32, scope: !3200, inlinedAt: !3275)
!3283 = !DILocation(line: 185, column: 48, scope: !3209, inlinedAt: !3274)
!3284 = !DILocation(line: 187, column: 3, scope: !3209, inlinedAt: !3274)
!3285 = !DILocation(line: 188, column: 13, scope: !3226, inlinedAt: !3274)
!3286 = !DILocation(line: 188, column: 7, scope: !3209, inlinedAt: !3274)
!3287 = !DILocation(line: 189, column: 5, scope: !3226, inlinedAt: !3274)
!3288 = !{!3289}
!3289 = distinct !{!3289, !3290, !"quoting_options_from_style: argument 0"}
!3290 = distinct !{!3290, !"quoting_options_from_style"}
!3291 = !DILocation(line: 191, column: 10, scope: !3209, inlinedAt: !3274)
!3292 = !DILocation(line: 192, column: 1, scope: !3209, inlinedAt: !3274)
!3293 = !DILocation(line: 949, column: 10, scope: !3200, inlinedAt: !3275)
!3294 = !DILocation(line: 950, column: 1, scope: !3200, inlinedAt: !3275)
!3295 = !DILocation(line: 963, column: 3, scope: !3267)
!3296 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !201, file: !201, line: 967, type: !3297, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!45, !5, !66, !195}
!3299 = !{!3300, !3301, !3302}
!3300 = !DILocalVariable(name: "s", arg: 1, scope: !3296, file: !201, line: 967, type: !5)
!3301 = !DILocalVariable(name: "arg", arg: 2, scope: !3296, file: !201, line: 967, type: !66)
!3302 = !DILocalVariable(name: "argsize", arg: 3, scope: !3296, file: !201, line: 967, type: !195)
!3303 = !DILocation(line: 187, column: 26, scope: !3209, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 956, column: 36, scope: !3237, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 969, column: 10, scope: !3296)
!3306 = !DILocation(line: 967, column: 40, scope: !3296)
!3307 = !DILocation(line: 967, column: 55, scope: !3296)
!3308 = !DILocation(line: 967, column: 67, scope: !3296)
!3309 = !DILocation(line: 953, column: 27, scope: !3237, inlinedAt: !3305)
!3310 = !DILocation(line: 953, column: 49, scope: !3237, inlinedAt: !3305)
!3311 = !DILocation(line: 954, column: 35, scope: !3237, inlinedAt: !3305)
!3312 = !DILocation(line: 954, column: 47, scope: !3237, inlinedAt: !3305)
!3313 = !DILocation(line: 956, column: 3, scope: !3237, inlinedAt: !3305)
!3314 = !DILocation(line: 956, column: 32, scope: !3237, inlinedAt: !3305)
!3315 = !DILocation(line: 185, column: 48, scope: !3209, inlinedAt: !3304)
!3316 = !DILocation(line: 187, column: 3, scope: !3209, inlinedAt: !3304)
!3317 = !DILocation(line: 188, column: 13, scope: !3226, inlinedAt: !3304)
!3318 = !DILocation(line: 188, column: 7, scope: !3209, inlinedAt: !3304)
!3319 = !DILocation(line: 189, column: 5, scope: !3226, inlinedAt: !3304)
!3320 = !{!3321}
!3321 = distinct !{!3321, !3322, !"quoting_options_from_style: argument 0"}
!3322 = distinct !{!3322, !"quoting_options_from_style"}
!3323 = !DILocation(line: 191, column: 10, scope: !3209, inlinedAt: !3304)
!3324 = !DILocation(line: 192, column: 1, scope: !3209, inlinedAt: !3304)
!3325 = !DILocation(line: 957, column: 10, scope: !3237, inlinedAt: !3305)
!3326 = !DILocation(line: 958, column: 1, scope: !3237, inlinedAt: !3305)
!3327 = !DILocation(line: 969, column: 3, scope: !3296)
!3328 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !201, file: !201, line: 973, type: !3329, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3331)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!45, !66, !195, !46}
!3331 = !{!3332, !3333, !3334, !3335}
!3332 = !DILocalVariable(name: "arg", arg: 1, scope: !3328, file: !201, line: 973, type: !66)
!3333 = !DILocalVariable(name: "argsize", arg: 2, scope: !3328, file: !201, line: 973, type: !195)
!3334 = !DILocalVariable(name: "ch", arg: 3, scope: !3328, file: !201, line: 973, type: !46)
!3335 = !DILocalVariable(name: "options", scope: !3328, file: !201, line: 975, type: !206)
!3336 = !DILocation(line: 973, column: 32, scope: !3328)
!3337 = !DILocation(line: 973, column: 44, scope: !3328)
!3338 = !DILocation(line: 973, column: 58, scope: !3328)
!3339 = !DILocation(line: 975, column: 3, scope: !3328)
!3340 = !DILocation(line: 976, column: 13, scope: !3328)
!3341 = !{i64 0, i64 4, !803, i64 4, i64 4, !793, i64 8, i64 32, !803, i64 40, i64 8, !672, i64 48, i64 8, !672}
!3342 = !DILocation(line: 975, column: 26, scope: !3328)
!3343 = !DILocation(line: 144, column: 43, scope: !2080, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 977, column: 3, scope: !3328)
!3345 = !DILocation(line: 144, column: 51, scope: !2080, inlinedAt: !3344)
!3346 = !DILocation(line: 144, column: 58, scope: !2080, inlinedAt: !3344)
!3347 = !DILocation(line: 146, column: 17, scope: !2080, inlinedAt: !3344)
!3348 = !DILocation(line: 148, column: 62, scope: !2080, inlinedAt: !3344)
!3349 = !DILocation(line: 148, column: 57, scope: !2080, inlinedAt: !3344)
!3350 = !DILocation(line: 147, column: 17, scope: !2080, inlinedAt: !3344)
!3351 = !DILocation(line: 149, column: 18, scope: !2080, inlinedAt: !3344)
!3352 = !DILocation(line: 149, column: 15, scope: !2080, inlinedAt: !3344)
!3353 = !DILocation(line: 149, column: 7, scope: !2080, inlinedAt: !3344)
!3354 = !DILocation(line: 150, column: 12, scope: !2080, inlinedAt: !3344)
!3355 = !DILocation(line: 150, column: 15, scope: !2080, inlinedAt: !3344)
!3356 = !DILocation(line: 150, column: 25, scope: !2080, inlinedAt: !3344)
!3357 = !DILocation(line: 150, column: 7, scope: !2080, inlinedAt: !3344)
!3358 = !DILocation(line: 151, column: 18, scope: !2080, inlinedAt: !3344)
!3359 = !DILocation(line: 151, column: 23, scope: !2080, inlinedAt: !3344)
!3360 = !DILocation(line: 151, column: 6, scope: !2080, inlinedAt: !3344)
!3361 = !DILocation(line: 978, column: 10, scope: !3328)
!3362 = !DILocation(line: 979, column: 1, scope: !3328)
!3363 = !DILocation(line: 978, column: 3, scope: !3328)
!3364 = distinct !DISubprogram(name: "quotearg_char", scope: !201, file: !201, line: 982, type: !3365, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!45, !66, !46}
!3367 = !{!3368, !3369}
!3368 = !DILocalVariable(name: "arg", arg: 1, scope: !3364, file: !201, line: 982, type: !66)
!3369 = !DILocalVariable(name: "ch", arg: 2, scope: !3364, file: !201, line: 982, type: !46)
!3370 = !DILocation(line: 982, column: 28, scope: !3364)
!3371 = !DILocation(line: 982, column: 38, scope: !3364)
!3372 = !DILocation(line: 973, column: 32, scope: !3328, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 984, column: 10, scope: !3364)
!3374 = !DILocation(line: 973, column: 44, scope: !3328, inlinedAt: !3373)
!3375 = !DILocation(line: 973, column: 58, scope: !3328, inlinedAt: !3373)
!3376 = !DILocation(line: 975, column: 3, scope: !3328, inlinedAt: !3373)
!3377 = !DILocation(line: 976, column: 13, scope: !3328, inlinedAt: !3373)
!3378 = !DILocation(line: 975, column: 26, scope: !3328, inlinedAt: !3373)
!3379 = !DILocation(line: 144, column: 43, scope: !2080, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 977, column: 3, scope: !3328, inlinedAt: !3373)
!3381 = !DILocation(line: 144, column: 51, scope: !2080, inlinedAt: !3380)
!3382 = !DILocation(line: 144, column: 58, scope: !2080, inlinedAt: !3380)
!3383 = !DILocation(line: 146, column: 17, scope: !2080, inlinedAt: !3380)
!3384 = !DILocation(line: 148, column: 62, scope: !2080, inlinedAt: !3380)
!3385 = !DILocation(line: 148, column: 57, scope: !2080, inlinedAt: !3380)
!3386 = !DILocation(line: 147, column: 17, scope: !2080, inlinedAt: !3380)
!3387 = !DILocation(line: 149, column: 18, scope: !2080, inlinedAt: !3380)
!3388 = !DILocation(line: 149, column: 15, scope: !2080, inlinedAt: !3380)
!3389 = !DILocation(line: 149, column: 7, scope: !2080, inlinedAt: !3380)
!3390 = !DILocation(line: 150, column: 12, scope: !2080, inlinedAt: !3380)
!3391 = !DILocation(line: 150, column: 15, scope: !2080, inlinedAt: !3380)
!3392 = !DILocation(line: 150, column: 25, scope: !2080, inlinedAt: !3380)
!3393 = !DILocation(line: 150, column: 7, scope: !2080, inlinedAt: !3380)
!3394 = !DILocation(line: 151, column: 18, scope: !2080, inlinedAt: !3380)
!3395 = !DILocation(line: 151, column: 23, scope: !2080, inlinedAt: !3380)
!3396 = !DILocation(line: 151, column: 6, scope: !2080, inlinedAt: !3380)
!3397 = !DILocation(line: 978, column: 10, scope: !3328, inlinedAt: !3373)
!3398 = !DILocation(line: 979, column: 1, scope: !3328, inlinedAt: !3373)
!3399 = !DILocation(line: 984, column: 3, scope: !3364)
!3400 = distinct !DISubprogram(name: "quotearg_colon", scope: !201, file: !201, line: 988, type: !3176, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3401)
!3401 = !{!3402}
!3402 = !DILocalVariable(name: "arg", arg: 1, scope: !3400, file: !201, line: 988, type: !66)
!3403 = !DILocation(line: 988, column: 29, scope: !3400)
!3404 = !DILocation(line: 982, column: 28, scope: !3364, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 990, column: 10, scope: !3400)
!3406 = !DILocation(line: 982, column: 38, scope: !3364, inlinedAt: !3405)
!3407 = !DILocation(line: 973, column: 32, scope: !3328, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 984, column: 10, scope: !3364, inlinedAt: !3405)
!3409 = !DILocation(line: 973, column: 44, scope: !3328, inlinedAt: !3408)
!3410 = !DILocation(line: 973, column: 58, scope: !3328, inlinedAt: !3408)
!3411 = !DILocation(line: 975, column: 3, scope: !3328, inlinedAt: !3408)
!3412 = !DILocation(line: 976, column: 13, scope: !3328, inlinedAt: !3408)
!3413 = !DILocation(line: 975, column: 26, scope: !3328, inlinedAt: !3408)
!3414 = !DILocation(line: 144, column: 43, scope: !2080, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 977, column: 3, scope: !3328, inlinedAt: !3408)
!3416 = !DILocation(line: 144, column: 51, scope: !2080, inlinedAt: !3415)
!3417 = !DILocation(line: 144, column: 58, scope: !2080, inlinedAt: !3415)
!3418 = !DILocation(line: 146, column: 17, scope: !2080, inlinedAt: !3415)
!3419 = !DILocation(line: 148, column: 57, scope: !2080, inlinedAt: !3415)
!3420 = !DILocation(line: 147, column: 17, scope: !2080, inlinedAt: !3415)
!3421 = !DILocation(line: 149, column: 7, scope: !2080, inlinedAt: !3415)
!3422 = !DILocation(line: 150, column: 12, scope: !2080, inlinedAt: !3415)
!3423 = !DILocation(line: 151, column: 6, scope: !2080, inlinedAt: !3415)
!3424 = !DILocation(line: 978, column: 10, scope: !3328, inlinedAt: !3408)
!3425 = !DILocation(line: 979, column: 1, scope: !3328, inlinedAt: !3408)
!3426 = !DILocation(line: 990, column: 3, scope: !3400)
!3427 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !201, file: !201, line: 994, type: !3187, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3428)
!3428 = !{!3429, !3430}
!3429 = !DILocalVariable(name: "arg", arg: 1, scope: !3427, file: !201, line: 994, type: !66)
!3430 = !DILocalVariable(name: "argsize", arg: 2, scope: !3427, file: !201, line: 994, type: !195)
!3431 = !DILocation(line: 994, column: 33, scope: !3427)
!3432 = !DILocation(line: 994, column: 45, scope: !3427)
!3433 = !DILocation(line: 973, column: 32, scope: !3328, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 996, column: 10, scope: !3427)
!3435 = !DILocation(line: 973, column: 44, scope: !3328, inlinedAt: !3434)
!3436 = !DILocation(line: 973, column: 58, scope: !3328, inlinedAt: !3434)
!3437 = !DILocation(line: 975, column: 3, scope: !3328, inlinedAt: !3434)
!3438 = !DILocation(line: 976, column: 13, scope: !3328, inlinedAt: !3434)
!3439 = !DILocation(line: 975, column: 26, scope: !3328, inlinedAt: !3434)
!3440 = !DILocation(line: 144, column: 43, scope: !2080, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 977, column: 3, scope: !3328, inlinedAt: !3434)
!3442 = !DILocation(line: 144, column: 51, scope: !2080, inlinedAt: !3441)
!3443 = !DILocation(line: 144, column: 58, scope: !2080, inlinedAt: !3441)
!3444 = !DILocation(line: 146, column: 17, scope: !2080, inlinedAt: !3441)
!3445 = !DILocation(line: 148, column: 57, scope: !2080, inlinedAt: !3441)
!3446 = !DILocation(line: 147, column: 17, scope: !2080, inlinedAt: !3441)
!3447 = !DILocation(line: 149, column: 7, scope: !2080, inlinedAt: !3441)
!3448 = !DILocation(line: 150, column: 12, scope: !2080, inlinedAt: !3441)
!3449 = !DILocation(line: 151, column: 6, scope: !2080, inlinedAt: !3441)
!3450 = !DILocation(line: 978, column: 10, scope: !3328, inlinedAt: !3434)
!3451 = !DILocation(line: 979, column: 1, scope: !3328, inlinedAt: !3434)
!3452 = !DILocation(line: 996, column: 3, scope: !3427)
!3453 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !201, file: !201, line: 1000, type: !3201, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3454)
!3454 = !{!3455, !3456, !3457, !3458}
!3455 = !DILocalVariable(name: "n", arg: 1, scope: !3453, file: !201, line: 1000, type: !50)
!3456 = !DILocalVariable(name: "s", arg: 2, scope: !3453, file: !201, line: 1000, type: !5)
!3457 = !DILocalVariable(name: "arg", arg: 3, scope: !3453, file: !201, line: 1000, type: !66)
!3458 = !DILocalVariable(name: "options", scope: !3453, file: !201, line: 1002, type: !206)
!3459 = !DILocation(line: 187, column: 26, scope: !3209, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 1003, column: 13, scope: !3453)
!3461 = !DILocation(line: 1000, column: 29, scope: !3453)
!3462 = !DILocation(line: 1000, column: 51, scope: !3453)
!3463 = !DILocation(line: 1000, column: 66, scope: !3453)
!3464 = !DILocation(line: 1002, column: 3, scope: !3453)
!3465 = !DILocation(line: 185, column: 48, scope: !3209, inlinedAt: !3460)
!3466 = !DILocation(line: 187, column: 3, scope: !3209, inlinedAt: !3460)
!3467 = !DILocation(line: 188, column: 13, scope: !3226, inlinedAt: !3460)
!3468 = !DILocation(line: 188, column: 7, scope: !3209, inlinedAt: !3460)
!3469 = !DILocation(line: 189, column: 5, scope: !3226, inlinedAt: !3460)
!3470 = !{!3471}
!3471 = distinct !{!3471, !3472, !"quoting_options_from_style: argument 0"}
!3472 = distinct !{!3472, !"quoting_options_from_style"}
!3473 = !DILocation(line: 191, column: 10, scope: !3209, inlinedAt: !3460)
!3474 = !DILocation(line: 192, column: 1, scope: !3209, inlinedAt: !3460)
!3475 = !DILocation(line: 1003, column: 13, scope: !3453)
!3476 = !DILocation(line: 1002, column: 26, scope: !3453)
!3477 = !DILocation(line: 144, column: 43, scope: !2080, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 1004, column: 3, scope: !3453)
!3479 = !DILocation(line: 144, column: 51, scope: !2080, inlinedAt: !3478)
!3480 = !DILocation(line: 144, column: 58, scope: !2080, inlinedAt: !3478)
!3481 = !DILocation(line: 146, column: 17, scope: !2080, inlinedAt: !3478)
!3482 = !DILocation(line: 148, column: 57, scope: !2080, inlinedAt: !3478)
!3483 = !DILocation(line: 147, column: 17, scope: !2080, inlinedAt: !3478)
!3484 = !DILocation(line: 149, column: 7, scope: !2080, inlinedAt: !3478)
!3485 = !DILocation(line: 150, column: 12, scope: !2080, inlinedAt: !3478)
!3486 = !DILocation(line: 151, column: 6, scope: !2080, inlinedAt: !3478)
!3487 = !DILocation(line: 1005, column: 10, scope: !3453)
!3488 = !DILocation(line: 1006, column: 1, scope: !3453)
!3489 = !DILocation(line: 1005, column: 3, scope: !3453)
!3490 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !201, file: !201, line: 1009, type: !3491, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!45, !50, !66, !66, !66}
!3493 = !{!3494, !3495, !3496, !3497}
!3494 = !DILocalVariable(name: "n", arg: 1, scope: !3490, file: !201, line: 1009, type: !50)
!3495 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3490, file: !201, line: 1009, type: !66)
!3496 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3490, file: !201, line: 1010, type: !66)
!3497 = !DILocalVariable(name: "arg", arg: 4, scope: !3490, file: !201, line: 1010, type: !66)
!3498 = !DILocation(line: 1009, column: 24, scope: !3490)
!3499 = !DILocation(line: 1009, column: 39, scope: !3490)
!3500 = !DILocation(line: 1010, column: 32, scope: !3490)
!3501 = !DILocation(line: 1010, column: 57, scope: !3490)
!3502 = !DILocalVariable(name: "n", arg: 1, scope: !3503, file: !201, line: 1017, type: !50)
!3503 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !201, file: !201, line: 1017, type: !3504, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!45, !50, !66, !66, !66, !195}
!3506 = !{!3502, !3507, !3508, !3509, !3510, !3511}
!3507 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3503, file: !201, line: 1017, type: !66)
!3508 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3503, file: !201, line: 1018, type: !66)
!3509 = !DILocalVariable(name: "arg", arg: 4, scope: !3503, file: !201, line: 1019, type: !66)
!3510 = !DILocalVariable(name: "argsize", arg: 5, scope: !3503, file: !201, line: 1019, type: !195)
!3511 = !DILocalVariable(name: "o", scope: !3503, file: !201, line: 1021, type: !206)
!3512 = !DILocation(line: 1017, column: 28, scope: !3503, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 1012, column: 10, scope: !3490)
!3514 = !DILocation(line: 1017, column: 43, scope: !3503, inlinedAt: !3513)
!3515 = !DILocation(line: 1018, column: 36, scope: !3503, inlinedAt: !3513)
!3516 = !DILocation(line: 1019, column: 36, scope: !3503, inlinedAt: !3513)
!3517 = !DILocation(line: 1019, column: 48, scope: !3503, inlinedAt: !3513)
!3518 = !DILocation(line: 1021, column: 3, scope: !3503, inlinedAt: !3513)
!3519 = !DILocation(line: 1021, column: 30, scope: !3503, inlinedAt: !3513)
!3520 = !DILocation(line: 1021, column: 26, scope: !3503, inlinedAt: !3513)
!3521 = !DILocation(line: 171, column: 45, scope: !2129, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 1022, column: 3, scope: !3503, inlinedAt: !3513)
!3523 = !DILocation(line: 172, column: 33, scope: !2129, inlinedAt: !3522)
!3524 = !DILocation(line: 172, column: 57, scope: !2129, inlinedAt: !3522)
!3525 = !DILocation(line: 176, column: 6, scope: !2129, inlinedAt: !3522)
!3526 = !DILocation(line: 176, column: 12, scope: !2129, inlinedAt: !3522)
!3527 = !DILocation(line: 177, column: 8, scope: !2145, inlinedAt: !3522)
!3528 = !DILocation(line: 177, column: 23, scope: !2145, inlinedAt: !3522)
!3529 = !DILocation(line: 177, column: 19, scope: !2145, inlinedAt: !3522)
!3530 = !DILocation(line: 178, column: 5, scope: !2145, inlinedAt: !3522)
!3531 = !DILocation(line: 179, column: 6, scope: !2129, inlinedAt: !3522)
!3532 = !DILocation(line: 179, column: 17, scope: !2129, inlinedAt: !3522)
!3533 = !DILocation(line: 180, column: 6, scope: !2129, inlinedAt: !3522)
!3534 = !DILocation(line: 180, column: 18, scope: !2129, inlinedAt: !3522)
!3535 = !DILocation(line: 1023, column: 10, scope: !3503, inlinedAt: !3513)
!3536 = !DILocation(line: 1024, column: 1, scope: !3503, inlinedAt: !3513)
!3537 = !DILocation(line: 1012, column: 3, scope: !3490)
!3538 = !DILocation(line: 1017, column: 28, scope: !3503)
!3539 = !DILocation(line: 1017, column: 43, scope: !3503)
!3540 = !DILocation(line: 1018, column: 36, scope: !3503)
!3541 = !DILocation(line: 1019, column: 36, scope: !3503)
!3542 = !DILocation(line: 1019, column: 48, scope: !3503)
!3543 = !DILocation(line: 1021, column: 3, scope: !3503)
!3544 = !DILocation(line: 1021, column: 30, scope: !3503)
!3545 = !DILocation(line: 1021, column: 26, scope: !3503)
!3546 = !DILocation(line: 171, column: 45, scope: !2129, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 1022, column: 3, scope: !3503)
!3548 = !DILocation(line: 172, column: 33, scope: !2129, inlinedAt: !3547)
!3549 = !DILocation(line: 172, column: 57, scope: !2129, inlinedAt: !3547)
!3550 = !DILocation(line: 176, column: 6, scope: !2129, inlinedAt: !3547)
!3551 = !DILocation(line: 176, column: 12, scope: !2129, inlinedAt: !3547)
!3552 = !DILocation(line: 177, column: 8, scope: !2145, inlinedAt: !3547)
!3553 = !DILocation(line: 177, column: 23, scope: !2145, inlinedAt: !3547)
!3554 = !DILocation(line: 177, column: 19, scope: !2145, inlinedAt: !3547)
!3555 = !DILocation(line: 178, column: 5, scope: !2145, inlinedAt: !3547)
!3556 = !DILocation(line: 179, column: 6, scope: !2129, inlinedAt: !3547)
!3557 = !DILocation(line: 179, column: 17, scope: !2129, inlinedAt: !3547)
!3558 = !DILocation(line: 180, column: 6, scope: !2129, inlinedAt: !3547)
!3559 = !DILocation(line: 180, column: 18, scope: !2129, inlinedAt: !3547)
!3560 = !DILocation(line: 1023, column: 10, scope: !3503)
!3561 = !DILocation(line: 1024, column: 1, scope: !3503)
!3562 = !DILocation(line: 1023, column: 3, scope: !3503)
!3563 = distinct !DISubprogram(name: "quotearg_custom", scope: !201, file: !201, line: 1027, type: !3564, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3566)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!45, !66, !66, !66}
!3566 = !{!3567, !3568, !3569}
!3567 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3563, file: !201, line: 1027, type: !66)
!3568 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3563, file: !201, line: 1027, type: !66)
!3569 = !DILocalVariable(name: "arg", arg: 3, scope: !3563, file: !201, line: 1028, type: !66)
!3570 = !DILocation(line: 1027, column: 30, scope: !3563)
!3571 = !DILocation(line: 1027, column: 54, scope: !3563)
!3572 = !DILocation(line: 1028, column: 30, scope: !3563)
!3573 = !DILocation(line: 1009, column: 24, scope: !3490, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 1030, column: 10, scope: !3563)
!3575 = !DILocation(line: 1009, column: 39, scope: !3490, inlinedAt: !3574)
!3576 = !DILocation(line: 1010, column: 32, scope: !3490, inlinedAt: !3574)
!3577 = !DILocation(line: 1010, column: 57, scope: !3490, inlinedAt: !3574)
!3578 = !DILocation(line: 1017, column: 28, scope: !3503, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 1012, column: 10, scope: !3490, inlinedAt: !3574)
!3580 = !DILocation(line: 1017, column: 43, scope: !3503, inlinedAt: !3579)
!3581 = !DILocation(line: 1018, column: 36, scope: !3503, inlinedAt: !3579)
!3582 = !DILocation(line: 1019, column: 36, scope: !3503, inlinedAt: !3579)
!3583 = !DILocation(line: 1019, column: 48, scope: !3503, inlinedAt: !3579)
!3584 = !DILocation(line: 1021, column: 3, scope: !3503, inlinedAt: !3579)
!3585 = !DILocation(line: 1021, column: 30, scope: !3503, inlinedAt: !3579)
!3586 = !DILocation(line: 1021, column: 26, scope: !3503, inlinedAt: !3579)
!3587 = !DILocation(line: 171, column: 45, scope: !2129, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 1022, column: 3, scope: !3503, inlinedAt: !3579)
!3589 = !DILocation(line: 172, column: 33, scope: !2129, inlinedAt: !3588)
!3590 = !DILocation(line: 172, column: 57, scope: !2129, inlinedAt: !3588)
!3591 = !DILocation(line: 176, column: 6, scope: !2129, inlinedAt: !3588)
!3592 = !DILocation(line: 176, column: 12, scope: !2129, inlinedAt: !3588)
!3593 = !DILocation(line: 177, column: 8, scope: !2145, inlinedAt: !3588)
!3594 = !DILocation(line: 177, column: 23, scope: !2145, inlinedAt: !3588)
!3595 = !DILocation(line: 177, column: 19, scope: !2145, inlinedAt: !3588)
!3596 = !DILocation(line: 178, column: 5, scope: !2145, inlinedAt: !3588)
!3597 = !DILocation(line: 179, column: 6, scope: !2129, inlinedAt: !3588)
!3598 = !DILocation(line: 179, column: 17, scope: !2129, inlinedAt: !3588)
!3599 = !DILocation(line: 180, column: 6, scope: !2129, inlinedAt: !3588)
!3600 = !DILocation(line: 180, column: 18, scope: !2129, inlinedAt: !3588)
!3601 = !DILocation(line: 1023, column: 10, scope: !3503, inlinedAt: !3579)
!3602 = !DILocation(line: 1024, column: 1, scope: !3503, inlinedAt: !3579)
!3603 = !DILocation(line: 1030, column: 3, scope: !3563)
!3604 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !201, file: !201, line: 1034, type: !3605, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!45, !66, !66, !66, !195}
!3607 = !{!3608, !3609, !3610, !3611}
!3608 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3604, file: !201, line: 1034, type: !66)
!3609 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3604, file: !201, line: 1034, type: !66)
!3610 = !DILocalVariable(name: "arg", arg: 3, scope: !3604, file: !201, line: 1035, type: !66)
!3611 = !DILocalVariable(name: "argsize", arg: 4, scope: !3604, file: !201, line: 1035, type: !195)
!3612 = !DILocation(line: 1034, column: 34, scope: !3604)
!3613 = !DILocation(line: 1034, column: 58, scope: !3604)
!3614 = !DILocation(line: 1035, column: 34, scope: !3604)
!3615 = !DILocation(line: 1035, column: 46, scope: !3604)
!3616 = !DILocation(line: 1017, column: 28, scope: !3503, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 1037, column: 10, scope: !3604)
!3618 = !DILocation(line: 1017, column: 43, scope: !3503, inlinedAt: !3617)
!3619 = !DILocation(line: 1018, column: 36, scope: !3503, inlinedAt: !3617)
!3620 = !DILocation(line: 1019, column: 36, scope: !3503, inlinedAt: !3617)
!3621 = !DILocation(line: 1019, column: 48, scope: !3503, inlinedAt: !3617)
!3622 = !DILocation(line: 1021, column: 3, scope: !3503, inlinedAt: !3617)
!3623 = !DILocation(line: 1021, column: 30, scope: !3503, inlinedAt: !3617)
!3624 = !DILocation(line: 1021, column: 26, scope: !3503, inlinedAt: !3617)
!3625 = !DILocation(line: 171, column: 45, scope: !2129, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 1022, column: 3, scope: !3503, inlinedAt: !3617)
!3627 = !DILocation(line: 172, column: 33, scope: !2129, inlinedAt: !3626)
!3628 = !DILocation(line: 172, column: 57, scope: !2129, inlinedAt: !3626)
!3629 = !DILocation(line: 176, column: 6, scope: !2129, inlinedAt: !3626)
!3630 = !DILocation(line: 176, column: 12, scope: !2129, inlinedAt: !3626)
!3631 = !DILocation(line: 177, column: 8, scope: !2145, inlinedAt: !3626)
!3632 = !DILocation(line: 177, column: 23, scope: !2145, inlinedAt: !3626)
!3633 = !DILocation(line: 177, column: 19, scope: !2145, inlinedAt: !3626)
!3634 = !DILocation(line: 178, column: 5, scope: !2145, inlinedAt: !3626)
!3635 = !DILocation(line: 179, column: 6, scope: !2129, inlinedAt: !3626)
!3636 = !DILocation(line: 179, column: 17, scope: !2129, inlinedAt: !3626)
!3637 = !DILocation(line: 180, column: 6, scope: !2129, inlinedAt: !3626)
!3638 = !DILocation(line: 180, column: 18, scope: !2129, inlinedAt: !3626)
!3639 = !DILocation(line: 1023, column: 10, scope: !3503, inlinedAt: !3617)
!3640 = !DILocation(line: 1024, column: 1, scope: !3503, inlinedAt: !3617)
!3641 = !DILocation(line: 1037, column: 3, scope: !3604)
!3642 = distinct !DISubprogram(name: "quote_n_mem", scope: !201, file: !201, line: 1052, type: !3643, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!66, !50, !66, !195}
!3645 = !{!3646, !3647, !3648}
!3646 = !DILocalVariable(name: "n", arg: 1, scope: !3642, file: !201, line: 1052, type: !50)
!3647 = !DILocalVariable(name: "arg", arg: 2, scope: !3642, file: !201, line: 1052, type: !66)
!3648 = !DILocalVariable(name: "argsize", arg: 3, scope: !3642, file: !201, line: 1052, type: !195)
!3649 = !DILocation(line: 1052, column: 18, scope: !3642)
!3650 = !DILocation(line: 1052, column: 33, scope: !3642)
!3651 = !DILocation(line: 1052, column: 45, scope: !3642)
!3652 = !DILocation(line: 1054, column: 10, scope: !3642)
!3653 = !DILocation(line: 1054, column: 3, scope: !3642)
!3654 = distinct !DISubprogram(name: "quote_mem", scope: !201, file: !201, line: 1058, type: !3655, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!66, !66, !195}
!3657 = !{!3658, !3659}
!3658 = !DILocalVariable(name: "arg", arg: 1, scope: !3654, file: !201, line: 1058, type: !66)
!3659 = !DILocalVariable(name: "argsize", arg: 2, scope: !3654, file: !201, line: 1058, type: !195)
!3660 = !DILocation(line: 1058, column: 24, scope: !3654)
!3661 = !DILocation(line: 1058, column: 36, scope: !3654)
!3662 = !DILocation(line: 1052, column: 18, scope: !3642, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 1060, column: 10, scope: !3654)
!3664 = !DILocation(line: 1052, column: 33, scope: !3642, inlinedAt: !3663)
!3665 = !DILocation(line: 1052, column: 45, scope: !3642, inlinedAt: !3663)
!3666 = !DILocation(line: 1054, column: 10, scope: !3642, inlinedAt: !3663)
!3667 = !DILocation(line: 1060, column: 3, scope: !3654)
!3668 = distinct !DISubprogram(name: "quote_n", scope: !201, file: !201, line: 1064, type: !3669, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3671)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!66, !50, !66}
!3671 = !{!3672, !3673}
!3672 = !DILocalVariable(name: "n", arg: 1, scope: !3668, file: !201, line: 1064, type: !50)
!3673 = !DILocalVariable(name: "arg", arg: 2, scope: !3668, file: !201, line: 1064, type: !66)
!3674 = !DILocation(line: 1064, column: 14, scope: !3668)
!3675 = !DILocation(line: 1064, column: 29, scope: !3668)
!3676 = !DILocation(line: 1052, column: 18, scope: !3642, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 1066, column: 10, scope: !3668)
!3678 = !DILocation(line: 1052, column: 33, scope: !3642, inlinedAt: !3677)
!3679 = !DILocation(line: 1052, column: 45, scope: !3642, inlinedAt: !3677)
!3680 = !DILocation(line: 1054, column: 10, scope: !3642, inlinedAt: !3677)
!3681 = !DILocation(line: 1066, column: 3, scope: !3668)
!3682 = distinct !DISubprogram(name: "quote", scope: !201, file: !201, line: 1070, type: !3683, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!66, !66}
!3685 = !{!3686}
!3686 = !DILocalVariable(name: "arg", arg: 1, scope: !3682, file: !201, line: 1070, type: !66)
!3687 = !DILocation(line: 1070, column: 20, scope: !3682)
!3688 = !DILocation(line: 1064, column: 14, scope: !3668, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 1072, column: 10, scope: !3682)
!3690 = !DILocation(line: 1064, column: 29, scope: !3668, inlinedAt: !3689)
!3691 = !DILocation(line: 1052, column: 18, scope: !3642, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 1066, column: 10, scope: !3668, inlinedAt: !3689)
!3693 = !DILocation(line: 1052, column: 33, scope: !3642, inlinedAt: !3692)
!3694 = !DILocation(line: 1052, column: 45, scope: !3642, inlinedAt: !3692)
!3695 = !DILocation(line: 1054, column: 10, scope: !3642, inlinedAt: !3692)
!3696 = !DILocation(line: 1072, column: 3, scope: !3682)
!3697 = distinct !DISubprogram(name: "version_etc_arn", scope: !601, file: !601, line: 62, type: !3698, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3741)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !3700, !66, !66, !66, !3740, !195}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !729, line: 7, baseType: !3702)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !731, line: 241, size: 1728, elements: !3703)
!3703 = !{!3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3702, file: !731, line: 242, baseType: !50, size: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3702, file: !731, line: 247, baseType: !45, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3702, file: !731, line: 248, baseType: !45, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3702, file: !731, line: 249, baseType: !45, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3702, file: !731, line: 250, baseType: !45, size: 64, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3702, file: !731, line: 251, baseType: !45, size: 64, offset: 320)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3702, file: !731, line: 252, baseType: !45, size: 64, offset: 384)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3702, file: !731, line: 253, baseType: !45, size: 64, offset: 448)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3702, file: !731, line: 254, baseType: !45, size: 64, offset: 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3702, file: !731, line: 256, baseType: !45, size: 64, offset: 576)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3702, file: !731, line: 257, baseType: !45, size: 64, offset: 640)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3702, file: !731, line: 258, baseType: !45, size: 64, offset: 704)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3702, file: !731, line: 260, baseType: !3717, size: 64, offset: 768)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !731, line: 156, size: 192, elements: !3719)
!3719 = !{!3720, !3721, !3723}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3718, file: !731, line: 157, baseType: !3717, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3718, file: !731, line: 158, baseType: !3722, size: 64, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3718, file: !731, line: 162, baseType: !50, size: 32, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3702, file: !731, line: 262, baseType: !3722, size: 64, offset: 832)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3702, file: !731, line: 264, baseType: !50, size: 32, offset: 896)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3702, file: !731, line: 268, baseType: !50, size: 32, offset: 928)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3702, file: !731, line: 270, baseType: !757, size: 64, offset: 960)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3702, file: !731, line: 274, baseType: !51, size: 16, offset: 1024)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3702, file: !731, line: 275, baseType: !761, size: 8, offset: 1040)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3702, file: !731, line: 276, baseType: !763, size: 8, offset: 1048)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3702, file: !731, line: 280, baseType: !767, size: 64, offset: 1088)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3702, file: !731, line: 289, baseType: !770, size: 64, offset: 1152)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3702, file: !731, line: 297, baseType: !47, size: 64, offset: 1216)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3702, file: !731, line: 298, baseType: !47, size: 64, offset: 1280)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3702, file: !731, line: 299, baseType: !47, size: 64, offset: 1344)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3702, file: !731, line: 300, baseType: !47, size: 64, offset: 1408)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3702, file: !731, line: 302, baseType: !195, size: 64, offset: 1472)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3702, file: !731, line: 303, baseType: !50, size: 32, offset: 1536)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3702, file: !731, line: 305, baseType: !778, size: 160, offset: 1568)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747}
!3742 = !DILocalVariable(name: "stream", arg: 1, scope: !3697, file: !601, line: 62, type: !3700)
!3743 = !DILocalVariable(name: "command_name", arg: 2, scope: !3697, file: !601, line: 63, type: !66)
!3744 = !DILocalVariable(name: "package", arg: 3, scope: !3697, file: !601, line: 63, type: !66)
!3745 = !DILocalVariable(name: "version", arg: 4, scope: !3697, file: !601, line: 64, type: !66)
!3746 = !DILocalVariable(name: "authors", arg: 5, scope: !3697, file: !601, line: 65, type: !3740)
!3747 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3697, file: !601, line: 65, type: !195)
!3748 = !DILocation(line: 62, column: 24, scope: !3697)
!3749 = !DILocation(line: 63, column: 30, scope: !3697)
!3750 = !DILocation(line: 63, column: 56, scope: !3697)
!3751 = !DILocation(line: 64, column: 30, scope: !3697)
!3752 = !DILocation(line: 65, column: 39, scope: !3697)
!3753 = !DILocation(line: 65, column: 55, scope: !3697)
!3754 = !DILocation(line: 67, column: 7, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3697, file: !601, line: 67, column: 7)
!3756 = !DILocation(line: 67, column: 7, scope: !3697)
!3757 = !DILocation(line: 68, column: 5, scope: !3755)
!3758 = !DILocation(line: 70, column: 5, scope: !3755)
!3759 = !DILocation(line: 84, column: 3, scope: !3697)
!3760 = !DILocation(line: 86, column: 3, scope: !3697)
!3761 = !DILocation(line: 95, column: 3, scope: !3697)
!3762 = !DILocation(line: 99, column: 7, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3697, file: !601, line: 96, column: 5)
!3764 = !DILocation(line: 102, column: 7, scope: !3763)
!3765 = !DILocation(line: 103, column: 7, scope: !3763)
!3766 = !DILocation(line: 106, column: 7, scope: !3763)
!3767 = !DILocation(line: 107, column: 7, scope: !3763)
!3768 = !DILocation(line: 110, column: 7, scope: !3763)
!3769 = !DILocation(line: 112, column: 7, scope: !3763)
!3770 = !DILocation(line: 117, column: 7, scope: !3763)
!3771 = !DILocation(line: 119, column: 7, scope: !3763)
!3772 = !DILocation(line: 124, column: 7, scope: !3763)
!3773 = !DILocation(line: 126, column: 7, scope: !3763)
!3774 = !DILocation(line: 131, column: 7, scope: !3763)
!3775 = !DILocation(line: 134, column: 7, scope: !3763)
!3776 = !DILocation(line: 139, column: 7, scope: !3763)
!3777 = !DILocation(line: 142, column: 7, scope: !3763)
!3778 = !DILocation(line: 147, column: 7, scope: !3763)
!3779 = !DILocation(line: 151, column: 7, scope: !3763)
!3780 = !DILocation(line: 156, column: 7, scope: !3763)
!3781 = !DILocation(line: 160, column: 7, scope: !3763)
!3782 = !DILocation(line: 167, column: 7, scope: !3763)
!3783 = !DILocation(line: 171, column: 7, scope: !3763)
!3784 = !DILocation(line: 173, column: 1, scope: !3697)
!3785 = distinct !DISubprogram(name: "version_etc_ar", scope: !601, file: !601, line: 180, type: !3786, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{null, !3700, !66, !66, !66, !3740}
!3788 = !{!3789, !3790, !3791, !3792, !3793, !3794}
!3789 = !DILocalVariable(name: "stream", arg: 1, scope: !3785, file: !601, line: 180, type: !3700)
!3790 = !DILocalVariable(name: "command_name", arg: 2, scope: !3785, file: !601, line: 181, type: !66)
!3791 = !DILocalVariable(name: "package", arg: 3, scope: !3785, file: !601, line: 181, type: !66)
!3792 = !DILocalVariable(name: "version", arg: 4, scope: !3785, file: !601, line: 182, type: !66)
!3793 = !DILocalVariable(name: "authors", arg: 5, scope: !3785, file: !601, line: 182, type: !3740)
!3794 = !DILocalVariable(name: "n_authors", scope: !3785, file: !601, line: 184, type: !195)
!3795 = !DILocation(line: 180, column: 23, scope: !3785)
!3796 = !DILocation(line: 181, column: 29, scope: !3785)
!3797 = !DILocation(line: 181, column: 55, scope: !3785)
!3798 = !DILocation(line: 182, column: 29, scope: !3785)
!3799 = !DILocation(line: 182, column: 59, scope: !3785)
!3800 = !DILocation(line: 184, column: 10, scope: !3785)
!3801 = !DILocation(line: 186, column: 8, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3785, file: !601, line: 186, column: 3)
!3803 = !DILocation(line: 186, column: 23, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3802, file: !601, line: 186, column: 3)
!3805 = !DILocation(line: 186, column: 3, scope: !3802)
!3806 = !DILocation(line: 186, column: 52, scope: !3804)
!3807 = distinct !{!3807, !3805, !3808}
!3808 = !DILocation(line: 187, column: 5, scope: !3802)
!3809 = !DILocation(line: 188, column: 3, scope: !3785)
!3810 = !DILocation(line: 189, column: 1, scope: !3785)
!3811 = distinct !DISubprogram(name: "version_etc_va", scope: !601, file: !601, line: 196, type: !3812, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3821)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{null, !3700, !66, !66, !66, !3814}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !598, line: 189, size: 192, elements: !3816)
!3816 = !{!3817, !3818, !3819, !3820}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3815, file: !598, line: 189, baseType: !44, size: 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3815, file: !598, line: 189, baseType: !44, size: 32, offset: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3815, file: !598, line: 189, baseType: !47, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3815, file: !598, line: 189, baseType: !47, size: 64, offset: 128)
!3821 = !{!3822, !3823, !3824, !3825, !3826, !3827, !3828}
!3822 = !DILocalVariable(name: "stream", arg: 1, scope: !3811, file: !601, line: 196, type: !3700)
!3823 = !DILocalVariable(name: "command_name", arg: 2, scope: !3811, file: !601, line: 197, type: !66)
!3824 = !DILocalVariable(name: "package", arg: 3, scope: !3811, file: !601, line: 197, type: !66)
!3825 = !DILocalVariable(name: "version", arg: 4, scope: !3811, file: !601, line: 198, type: !66)
!3826 = !DILocalVariable(name: "authors", arg: 5, scope: !3811, file: !601, line: 198, type: !3814)
!3827 = !DILocalVariable(name: "n_authors", scope: !3811, file: !601, line: 200, type: !195)
!3828 = !DILocalVariable(name: "authtab", scope: !3811, file: !601, line: 201, type: !3829)
!3829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 640, elements: !108)
!3830 = !DILocation(line: 196, column: 23, scope: !3811)
!3831 = !DILocation(line: 197, column: 29, scope: !3811)
!3832 = !DILocation(line: 197, column: 55, scope: !3811)
!3833 = !DILocation(line: 198, column: 29, scope: !3811)
!3834 = !DILocation(line: 198, column: 46, scope: !3811)
!3835 = !DILocation(line: 201, column: 3, scope: !3811)
!3836 = !DILocation(line: 201, column: 15, scope: !3811)
!3837 = !DILocation(line: 200, column: 10, scope: !3811)
!3838 = !DILocation(line: 205, column: 35, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !601, line: 203, column: 3)
!3840 = distinct !DILexicalBlock(scope: !3811, file: !601, line: 203, column: 3)
!3841 = !DILocation(line: 205, column: 14, scope: !3839)
!3842 = !DILocation(line: 205, column: 33, scope: !3839)
!3843 = !DILocation(line: 205, column: 67, scope: !3839)
!3844 = !DILocation(line: 203, column: 3, scope: !3840)
!3845 = !DILocation(line: 208, column: 3, scope: !3811)
!3846 = !DILocation(line: 210, column: 1, scope: !3811)
!3847 = distinct !DISubprogram(name: "version_etc", scope: !601, file: !601, line: 227, type: !3848, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3850)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{null, !3700, !66, !66, !66, null}
!3850 = !{!3851, !3852, !3853, !3854, !3855}
!3851 = !DILocalVariable(name: "stream", arg: 1, scope: !3847, file: !601, line: 227, type: !3700)
!3852 = !DILocalVariable(name: "command_name", arg: 2, scope: !3847, file: !601, line: 228, type: !66)
!3853 = !DILocalVariable(name: "package", arg: 3, scope: !3847, file: !601, line: 228, type: !66)
!3854 = !DILocalVariable(name: "version", arg: 4, scope: !3847, file: !601, line: 229, type: !66)
!3855 = !DILocalVariable(name: "authors", scope: !3847, file: !601, line: 231, type: !3856)
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1925, line: 46, baseType: !3857)
!3857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3858, line: 48, baseType: !3859)
!3858 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !598, line: 231, baseType: !3860)
!3860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3815, size: 192, elements: !764)
!3861 = !DILocation(line: 227, column: 20, scope: !3847)
!3862 = !DILocation(line: 228, column: 26, scope: !3847)
!3863 = !DILocation(line: 228, column: 52, scope: !3847)
!3864 = !DILocation(line: 229, column: 26, scope: !3847)
!3865 = !DILocation(line: 231, column: 3, scope: !3847)
!3866 = !DILocation(line: 231, column: 11, scope: !3847)
!3867 = !DILocation(line: 233, column: 3, scope: !3847)
!3868 = !DILocation(line: 234, column: 3, scope: !3847)
!3869 = !DILocation(line: 235, column: 3, scope: !3847)
!3870 = !DILocation(line: 236, column: 1, scope: !3847)
!3871 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !601, file: !601, line: 239, type: !681, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !160)
!3872 = !DILocation(line: 245, column: 3, scope: !3871)
!3873 = !DILocation(line: 251, column: 3, scope: !3871)
!3874 = !DILocation(line: 256, column: 3, scope: !3871)
!3875 = !DILocation(line: 258, column: 1, scope: !3871)
!3876 = distinct !DISubprogram(name: "xnmalloc", scope: !609, file: !609, line: 105, type: !3877, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!47, !195, !195}
!3879 = !{!3880, !3881}
!3880 = !DILocalVariable(name: "n", arg: 1, scope: !3876, file: !609, line: 105, type: !195)
!3881 = !DILocalVariable(name: "s", arg: 2, scope: !3876, file: !609, line: 105, type: !195)
!3882 = !DILocation(line: 105, column: 18, scope: !3876)
!3883 = !DILocation(line: 105, column: 28, scope: !3876)
!3884 = !DILocation(line: 107, column: 7, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3876, file: !609, line: 107, column: 7)
!3886 = !DILocation(line: 107, column: 7, scope: !3876)
!3887 = !DILocation(line: 108, column: 5, scope: !3885)
!3888 = !DILocation(line: 109, column: 21, scope: !3876)
!3889 = !DILocalVariable(name: "n", arg: 1, scope: !3890, file: !3891, line: 39, type: !195)
!3890 = distinct !DISubprogram(name: "xmalloc", scope: !3891, file: !3891, line: 39, type: !3892, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !3894)
!3891 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!47, !195}
!3894 = !{!3889, !3895}
!3895 = !DILocalVariable(name: "p", scope: !3890, file: !3891, line: 41, type: !47)
!3896 = !DILocation(line: 39, column: 17, scope: !3890, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 109, column: 10, scope: !3876)
!3898 = !DILocation(line: 41, column: 13, scope: !3890, inlinedAt: !3897)
!3899 = !DILocation(line: 41, column: 9, scope: !3890, inlinedAt: !3897)
!3900 = !DILocation(line: 42, column: 8, scope: !3901, inlinedAt: !3897)
!3901 = distinct !DILexicalBlock(scope: !3890, file: !3891, line: 42, column: 7)
!3902 = !DILocation(line: 42, column: 15, scope: !3901, inlinedAt: !3897)
!3903 = !DILocation(line: 42, column: 10, scope: !3901, inlinedAt: !3897)
!3904 = !DILocation(line: 43, column: 5, scope: !3901, inlinedAt: !3897)
!3905 = !DILocation(line: 109, column: 3, scope: !3876)
!3906 = !DILocation(line: 39, column: 17, scope: !3890)
!3907 = !DILocation(line: 41, column: 13, scope: !3890)
!3908 = !DILocation(line: 41, column: 9, scope: !3890)
!3909 = !DILocation(line: 42, column: 8, scope: !3901)
!3910 = !DILocation(line: 42, column: 15, scope: !3901)
!3911 = !DILocation(line: 42, column: 10, scope: !3901)
!3912 = !DILocation(line: 43, column: 5, scope: !3901)
!3913 = !DILocation(line: 44, column: 3, scope: !3890)
!3914 = distinct !DISubprogram(name: "xnrealloc", scope: !609, file: !609, line: 118, type: !3915, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!47, !47, !195, !195}
!3917 = !{!3918, !3919, !3920}
!3918 = !DILocalVariable(name: "p", arg: 1, scope: !3914, file: !609, line: 118, type: !47)
!3919 = !DILocalVariable(name: "n", arg: 2, scope: !3914, file: !609, line: 118, type: !195)
!3920 = !DILocalVariable(name: "s", arg: 3, scope: !3914, file: !609, line: 118, type: !195)
!3921 = !DILocation(line: 118, column: 18, scope: !3914)
!3922 = !DILocation(line: 118, column: 28, scope: !3914)
!3923 = !DILocation(line: 118, column: 38, scope: !3914)
!3924 = !DILocation(line: 120, column: 7, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3914, file: !609, line: 120, column: 7)
!3926 = !DILocation(line: 120, column: 7, scope: !3914)
!3927 = !DILocation(line: 121, column: 5, scope: !3925)
!3928 = !DILocation(line: 122, column: 25, scope: !3914)
!3929 = !DILocalVariable(name: "p", arg: 1, scope: !3930, file: !3891, line: 51, type: !47)
!3930 = distinct !DISubprogram(name: "xrealloc", scope: !3891, file: !3891, line: 51, type: !3931, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !3933)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!47, !47, !195}
!3933 = !{!3929, !3934}
!3934 = !DILocalVariable(name: "n", arg: 2, scope: !3930, file: !3891, line: 51, type: !195)
!3935 = !DILocation(line: 51, column: 17, scope: !3930, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 122, column: 10, scope: !3914)
!3937 = !DILocation(line: 51, column: 27, scope: !3930, inlinedAt: !3936)
!3938 = !DILocation(line: 53, column: 8, scope: !3939, inlinedAt: !3936)
!3939 = distinct !DILexicalBlock(scope: !3930, file: !3891, line: 53, column: 7)
!3940 = !DILocation(line: 53, column: 13, scope: !3939, inlinedAt: !3936)
!3941 = !DILocation(line: 53, column: 10, scope: !3939, inlinedAt: !3936)
!3942 = !DILocation(line: 57, column: 7, scope: !3943, inlinedAt: !3936)
!3943 = distinct !DILexicalBlock(scope: !3939, file: !3891, line: 54, column: 5)
!3944 = !DILocation(line: 58, column: 7, scope: !3943, inlinedAt: !3936)
!3945 = !DILocation(line: 61, column: 7, scope: !3930, inlinedAt: !3936)
!3946 = !DILocation(line: 62, column: 8, scope: !3947, inlinedAt: !3936)
!3947 = distinct !DILexicalBlock(scope: !3930, file: !3891, line: 62, column: 7)
!3948 = !DILocation(line: 62, column: 13, scope: !3947, inlinedAt: !3936)
!3949 = !DILocation(line: 62, column: 10, scope: !3947, inlinedAt: !3936)
!3950 = !DILocation(line: 63, column: 5, scope: !3947, inlinedAt: !3936)
!3951 = !DILocation(line: 122, column: 3, scope: !3914)
!3952 = !DILocation(line: 51, column: 17, scope: !3930)
!3953 = !DILocation(line: 51, column: 27, scope: !3930)
!3954 = !DILocation(line: 53, column: 8, scope: !3939)
!3955 = !DILocation(line: 53, column: 13, scope: !3939)
!3956 = !DILocation(line: 53, column: 10, scope: !3939)
!3957 = !DILocation(line: 57, column: 7, scope: !3943)
!3958 = !DILocation(line: 58, column: 7, scope: !3943)
!3959 = !DILocation(line: 61, column: 7, scope: !3930)
!3960 = !DILocation(line: 62, column: 8, scope: !3947)
!3961 = !DILocation(line: 62, column: 13, scope: !3947)
!3962 = !DILocation(line: 62, column: 10, scope: !3947)
!3963 = !DILocation(line: 63, column: 5, scope: !3947)
!3964 = !DILocation(line: 65, column: 1, scope: !3930)
!3965 = !DILocation(line: 180, column: 19, scope: !610)
!3966 = !DILocation(line: 180, column: 30, scope: !610)
!3967 = !DILocation(line: 180, column: 41, scope: !610)
!3968 = !DILocation(line: 182, column: 14, scope: !610)
!3969 = !DILocation(line: 182, column: 10, scope: !610)
!3970 = !DILocation(line: 184, column: 9, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !610, file: !609, line: 184, column: 7)
!3972 = !DILocation(line: 184, column: 7, scope: !610)
!3973 = !DILocation(line: 186, column: 13, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !609, line: 186, column: 11)
!3975 = distinct !DILexicalBlock(scope: !3971, file: !609, line: 185, column: 5)
!3976 = !DILocation(line: 186, column: 11, scope: !3975)
!3977 = !DILocation(line: 194, column: 30, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3974, file: !609, line: 187, column: 9)
!3979 = !DILocation(line: 195, column: 16, scope: !3978)
!3980 = !DILocation(line: 195, column: 13, scope: !3978)
!3981 = !DILocation(line: 196, column: 9, scope: !3978)
!3982 = !DILocation(line: 204, column: 69, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !609, line: 204, column: 11)
!3984 = distinct !DILexicalBlock(scope: !3971, file: !609, line: 199, column: 5)
!3985 = !DILocation(line: 205, column: 11, scope: !3983)
!3986 = !DILocation(line: 204, column: 11, scope: !3984)
!3987 = !DILocation(line: 206, column: 9, scope: !3983)
!3988 = !DILocation(line: 210, column: 7, scope: !610)
!3989 = !DILocation(line: 211, column: 25, scope: !610)
!3990 = !DILocation(line: 51, column: 17, scope: !3930, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 211, column: 10, scope: !610)
!3992 = !DILocation(line: 51, column: 27, scope: !3930, inlinedAt: !3991)
!3993 = !DILocation(line: 53, column: 10, scope: !3939, inlinedAt: !3991)
!3994 = !DILocation(line: 207, column: 14, scope: !3984)
!3995 = !DILocation(line: 207, column: 18, scope: !3984)
!3996 = !DILocation(line: 207, column: 9, scope: !3984)
!3997 = !DILocation(line: 53, column: 8, scope: !3939, inlinedAt: !3991)
!3998 = !DILocation(line: 57, column: 7, scope: !3943, inlinedAt: !3991)
!3999 = !DILocation(line: 58, column: 7, scope: !3943, inlinedAt: !3991)
!4000 = !DILocation(line: 61, column: 7, scope: !3930, inlinedAt: !3991)
!4001 = !DILocation(line: 62, column: 8, scope: !3947, inlinedAt: !3991)
!4002 = !DILocation(line: 62, column: 13, scope: !3947, inlinedAt: !3991)
!4003 = !DILocation(line: 62, column: 10, scope: !3947, inlinedAt: !3991)
!4004 = !DILocation(line: 63, column: 5, scope: !3947, inlinedAt: !3991)
!4005 = !DILocation(line: 211, column: 3, scope: !610)
!4006 = distinct !DISubprogram(name: "xcharalloc", scope: !609, file: !609, line: 220, type: !2975, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !4007)
!4007 = !{!4008}
!4008 = !DILocalVariable(name: "n", arg: 1, scope: !4006, file: !609, line: 220, type: !195)
!4009 = !DILocation(line: 220, column: 20, scope: !4006)
!4010 = !DILocation(line: 39, column: 17, scope: !3890, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 222, column: 10, scope: !4006)
!4012 = !DILocation(line: 41, column: 13, scope: !3890, inlinedAt: !4011)
!4013 = !DILocation(line: 41, column: 9, scope: !3890, inlinedAt: !4011)
!4014 = !DILocation(line: 42, column: 8, scope: !3901, inlinedAt: !4011)
!4015 = !DILocation(line: 42, column: 15, scope: !3901, inlinedAt: !4011)
!4016 = !DILocation(line: 42, column: 10, scope: !3901, inlinedAt: !4011)
!4017 = !DILocation(line: 43, column: 5, scope: !3901, inlinedAt: !4011)
!4018 = !DILocation(line: 222, column: 3, scope: !4006)
!4019 = distinct !DISubprogram(name: "x2realloc", scope: !3891, file: !3891, line: 74, type: !4020, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !4022)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!47, !47, !613}
!4022 = !{!4023, !4024}
!4023 = !DILocalVariable(name: "p", arg: 1, scope: !4019, file: !3891, line: 74, type: !47)
!4024 = !DILocalVariable(name: "pn", arg: 2, scope: !4019, file: !3891, line: 74, type: !613)
!4025 = !DILocation(line: 74, column: 18, scope: !4019)
!4026 = !DILocation(line: 74, column: 29, scope: !4019)
!4027 = !DILocation(line: 180, column: 19, scope: !610, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 76, column: 10, scope: !4019)
!4029 = !DILocation(line: 180, column: 30, scope: !610, inlinedAt: !4028)
!4030 = !DILocation(line: 180, column: 41, scope: !610, inlinedAt: !4028)
!4031 = !DILocation(line: 182, column: 14, scope: !610, inlinedAt: !4028)
!4032 = !DILocation(line: 182, column: 10, scope: !610, inlinedAt: !4028)
!4033 = !DILocation(line: 184, column: 9, scope: !3971, inlinedAt: !4028)
!4034 = !DILocation(line: 184, column: 7, scope: !610, inlinedAt: !4028)
!4035 = !DILocation(line: 186, column: 13, scope: !3974, inlinedAt: !4028)
!4036 = !DILocation(line: 186, column: 11, scope: !3975, inlinedAt: !4028)
!4037 = !DILocation(line: 210, column: 7, scope: !610, inlinedAt: !4028)
!4038 = !DILocation(line: 51, column: 17, scope: !3930, inlinedAt: !4039)
!4039 = distinct !DILocation(line: 211, column: 10, scope: !610, inlinedAt: !4028)
!4040 = !DILocation(line: 51, column: 27, scope: !3930, inlinedAt: !4039)
!4041 = !DILocation(line: 53, column: 10, scope: !3939, inlinedAt: !4039)
!4042 = !DILocation(line: 205, column: 11, scope: !3983, inlinedAt: !4028)
!4043 = !DILocation(line: 204, column: 11, scope: !3984, inlinedAt: !4028)
!4044 = !DILocation(line: 206, column: 9, scope: !3983, inlinedAt: !4028)
!4045 = !DILocation(line: 207, column: 14, scope: !3984, inlinedAt: !4028)
!4046 = !DILocation(line: 207, column: 18, scope: !3984, inlinedAt: !4028)
!4047 = !DILocation(line: 207, column: 9, scope: !3984, inlinedAt: !4028)
!4048 = !DILocation(line: 53, column: 8, scope: !3939, inlinedAt: !4039)
!4049 = !DILocation(line: 57, column: 7, scope: !3943, inlinedAt: !4039)
!4050 = !DILocation(line: 58, column: 7, scope: !3943, inlinedAt: !4039)
!4051 = !DILocation(line: 61, column: 7, scope: !3930, inlinedAt: !4039)
!4052 = !DILocation(line: 62, column: 8, scope: !3947, inlinedAt: !4039)
!4053 = !DILocation(line: 62, column: 13, scope: !3947, inlinedAt: !4039)
!4054 = !DILocation(line: 62, column: 10, scope: !3947, inlinedAt: !4039)
!4055 = !DILocation(line: 63, column: 5, scope: !3947, inlinedAt: !4039)
!4056 = !DILocation(line: 76, column: 3, scope: !4019)
!4057 = distinct !DISubprogram(name: "xzalloc", scope: !3891, file: !3891, line: 84, type: !3892, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !4058)
!4058 = !{!4059}
!4059 = !DILocalVariable(name: "s", arg: 1, scope: !4057, file: !3891, line: 84, type: !195)
!4060 = !DILocation(line: 84, column: 17, scope: !4057)
!4061 = !DILocation(line: 39, column: 17, scope: !3890, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 86, column: 18, scope: !4057)
!4063 = !DILocation(line: 41, column: 13, scope: !3890, inlinedAt: !4062)
!4064 = !DILocation(line: 41, column: 9, scope: !3890, inlinedAt: !4062)
!4065 = !DILocation(line: 42, column: 8, scope: !3901, inlinedAt: !4062)
!4066 = !DILocation(line: 42, column: 15, scope: !3901, inlinedAt: !4062)
!4067 = !DILocation(line: 42, column: 10, scope: !3901, inlinedAt: !4062)
!4068 = !DILocation(line: 43, column: 5, scope: !3901, inlinedAt: !4062)
!4069 = !DILocation(line: 86, column: 10, scope: !4057)
!4070 = !DILocation(line: 86, column: 3, scope: !4057)
!4071 = distinct !DISubprogram(name: "xcalloc", scope: !3891, file: !3891, line: 93, type: !3877, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !4072)
!4072 = !{!4073, !4074, !4075}
!4073 = !DILocalVariable(name: "n", arg: 1, scope: !4071, file: !3891, line: 93, type: !195)
!4074 = !DILocalVariable(name: "s", arg: 2, scope: !4071, file: !3891, line: 93, type: !195)
!4075 = !DILocalVariable(name: "p", scope: !4071, file: !3891, line: 95, type: !47)
!4076 = !DILocation(line: 93, column: 17, scope: !4071)
!4077 = !DILocation(line: 93, column: 27, scope: !4071)
!4078 = !DILocation(line: 100, column: 7, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4071, file: !3891, line: 100, column: 7)
!4080 = !DILocation(line: 101, column: 7, scope: !4079)
!4081 = !DILocation(line: 101, column: 18, scope: !4079)
!4082 = !DILocation(line: 95, column: 9, scope: !4071)
!4083 = !DILocation(line: 101, column: 16, scope: !4079)
!4084 = !DILocation(line: 100, column: 7, scope: !4071)
!4085 = !DILocation(line: 102, column: 5, scope: !4079)
!4086 = !DILocation(line: 103, column: 3, scope: !4071)
!4087 = distinct !DISubprogram(name: "xmemdup", scope: !3891, file: !3891, line: 111, type: !4088, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !4092)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!47, !4090, !195}
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4092 = !{!4093, !4094}
!4093 = !DILocalVariable(name: "p", arg: 1, scope: !4087, file: !3891, line: 111, type: !4090)
!4094 = !DILocalVariable(name: "s", arg: 2, scope: !4087, file: !3891, line: 111, type: !195)
!4095 = !DILocation(line: 111, column: 22, scope: !4087)
!4096 = !DILocation(line: 111, column: 32, scope: !4087)
!4097 = !DILocation(line: 39, column: 17, scope: !3890, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 113, column: 18, scope: !4087)
!4099 = !DILocation(line: 41, column: 13, scope: !3890, inlinedAt: !4098)
!4100 = !DILocation(line: 41, column: 9, scope: !3890, inlinedAt: !4098)
!4101 = !DILocation(line: 42, column: 8, scope: !3901, inlinedAt: !4098)
!4102 = !DILocation(line: 42, column: 15, scope: !3901, inlinedAt: !4098)
!4103 = !DILocation(line: 42, column: 10, scope: !3901, inlinedAt: !4098)
!4104 = !DILocation(line: 43, column: 5, scope: !3901, inlinedAt: !4098)
!4105 = !DILocation(line: 113, column: 10, scope: !4087)
!4106 = !DILocation(line: 113, column: 3, scope: !4087)
!4107 = distinct !DISubprogram(name: "xstrdup", scope: !3891, file: !3891, line: 119, type: !3176, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !4108)
!4108 = !{!4109}
!4109 = !DILocalVariable(name: "string", arg: 1, scope: !4107, file: !3891, line: 119, type: !66)
!4110 = !DILocation(line: 119, column: 22, scope: !4107)
!4111 = !DILocation(line: 121, column: 27, scope: !4107)
!4112 = !DILocation(line: 121, column: 43, scope: !4107)
!4113 = !DILocation(line: 111, column: 22, scope: !4087, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 121, column: 10, scope: !4107)
!4115 = !DILocation(line: 111, column: 32, scope: !4087, inlinedAt: !4114)
!4116 = !DILocation(line: 39, column: 17, scope: !3890, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 113, column: 18, scope: !4087, inlinedAt: !4114)
!4118 = !DILocation(line: 41, column: 13, scope: !3890, inlinedAt: !4117)
!4119 = !DILocation(line: 41, column: 9, scope: !3890, inlinedAt: !4117)
!4120 = !DILocation(line: 42, column: 8, scope: !3901, inlinedAt: !4117)
!4121 = !DILocation(line: 42, column: 15, scope: !3901, inlinedAt: !4117)
!4122 = !DILocation(line: 42, column: 10, scope: !3901, inlinedAt: !4117)
!4123 = !DILocation(line: 43, column: 5, scope: !3901, inlinedAt: !4117)
!4124 = !DILocation(line: 113, column: 10, scope: !4087, inlinedAt: !4114)
!4125 = !DILocation(line: 121, column: 3, scope: !4107)
!4126 = distinct !DISubprogram(name: "xalloc_die", scope: !4127, file: !4127, line: 32, type: !681, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !622, variables: !160)
!4127 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4128 = !DILocation(line: 34, column: 10, scope: !4126)
!4129 = !DILocation(line: 34, column: 33, scope: !4126)
!4130 = !DILocation(line: 34, column: 3, scope: !4126)
!4131 = !DILocation(line: 40, column: 3, scope: !4126)
!4132 = distinct !DISubprogram(name: "xnumtoumax", scope: !4133, file: !4133, line: 36, type: !4134, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !624, variables: !4139)
!4133 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!4136, !66, !50, !4136, !4136, !66, !66, !50}
!4136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !4137, line: 112, baseType: !4138)
!4137 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !758, line: 62, baseType: !197)
!4139 = !{!4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4149}
!4140 = !DILocalVariable(name: "n_str", arg: 1, scope: !4132, file: !4133, line: 36, type: !66)
!4141 = !DILocalVariable(name: "base", arg: 2, scope: !4132, file: !4133, line: 36, type: !50)
!4142 = !DILocalVariable(name: "min", arg: 3, scope: !4132, file: !4133, line: 36, type: !4136)
!4143 = !DILocalVariable(name: "max", arg: 4, scope: !4132, file: !4133, line: 36, type: !4136)
!4144 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4132, file: !4133, line: 37, type: !66)
!4145 = !DILocalVariable(name: "err", arg: 6, scope: !4132, file: !4133, line: 37, type: !66)
!4146 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4132, file: !4133, line: 37, type: !50)
!4147 = !DILocalVariable(name: "s_err", scope: !4132, file: !4133, line: 39, type: !4148)
!4148 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !628, line: 39, baseType: !627)
!4149 = !DILocalVariable(name: "tnum", scope: !4132, file: !4133, line: 41, type: !4136)
!4150 = !DILocation(line: 36, column: 26, scope: !4132)
!4151 = !DILocation(line: 36, column: 37, scope: !4132)
!4152 = !DILocation(line: 36, column: 57, scope: !4132)
!4153 = !DILocation(line: 36, column: 76, scope: !4132)
!4154 = !DILocation(line: 37, column: 26, scope: !4132)
!4155 = !DILocation(line: 37, column: 48, scope: !4132)
!4156 = !DILocation(line: 37, column: 57, scope: !4132)
!4157 = !DILocation(line: 41, column: 3, scope: !4132)
!4158 = !DILocation(line: 41, column: 17, scope: !4132)
!4159 = !DILocation(line: 42, column: 11, scope: !4132)
!4160 = !DILocation(line: 39, column: 16, scope: !4132)
!4161 = !DILocation(line: 44, column: 7, scope: !4132)
!4162 = !DILocation(line: 69, column: 50, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !4133, line: 67, column: 5)
!4164 = distinct !DILexicalBlock(scope: !4132, file: !4133, line: 66, column: 7)
!4165 = !DILocation(line: 46, column: 11, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4167, file: !4133, line: 46, column: 11)
!4167 = distinct !DILexicalBlock(scope: !4168, file: !4133, line: 45, column: 5)
!4168 = distinct !DILexicalBlock(scope: !4132, file: !4133, line: 44, column: 7)
!4169 = !DILocation(line: 46, column: 16, scope: !4166)
!4170 = !DILocation(line: 46, column: 29, scope: !4166)
!4171 = !DILocation(line: 46, column: 22, scope: !4166)
!4172 = !DILocation(line: 51, column: 20, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !4133, line: 51, column: 15)
!4174 = distinct !DILexicalBlock(scope: !4166, file: !4133, line: 47, column: 9)
!4175 = !DILocation(line: 52, column: 13, scope: !4173)
!4176 = !DILocation(line: 51, column: 15, scope: !4174)
!4177 = !DILocation(line: 59, column: 9, scope: !4174)
!4178 = !DILocation(line: 62, column: 5, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4168, file: !4133, line: 61, column: 12)
!4180 = !DILocation(line: 62, column: 11, scope: !4179)
!4181 = !DILocation(line: 64, column: 5, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4179, file: !4133, line: 63, column: 12)
!4183 = !DILocation(line: 64, column: 11, scope: !4182)
!4184 = !DILocation(line: 69, column: 14, scope: !4163)
!4185 = !DILocation(line: 69, column: 56, scope: !4163)
!4186 = !DILocation(line: 70, column: 29, scope: !4163)
!4187 = !DILocation(line: 69, column: 7, scope: !4163)
!4188 = !DILocation(line: 73, column: 10, scope: !4132)
!4189 = !DILocation(line: 71, column: 5, scope: !4163)
!4190 = !DILocation(line: 74, column: 1, scope: !4132)
!4191 = !DILocation(line: 73, column: 3, scope: !4132)
!4192 = distinct !DISubprogram(name: "xdectoumax", scope: !4133, file: !4133, line: 82, type: !4193, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !624, variables: !4195)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!4136, !66, !4136, !4136, !66, !66, !50}
!4195 = !{!4196, !4197, !4198, !4199, !4200, !4201}
!4196 = !DILocalVariable(name: "n_str", arg: 1, scope: !4192, file: !4133, line: 82, type: !66)
!4197 = !DILocalVariable(name: "min", arg: 2, scope: !4192, file: !4133, line: 82, type: !4136)
!4198 = !DILocalVariable(name: "max", arg: 3, scope: !4192, file: !4133, line: 82, type: !4136)
!4199 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4192, file: !4133, line: 83, type: !66)
!4200 = !DILocalVariable(name: "err", arg: 5, scope: !4192, file: !4133, line: 83, type: !66)
!4201 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4192, file: !4133, line: 83, type: !50)
!4202 = !DILocation(line: 82, column: 26, scope: !4192)
!4203 = !DILocation(line: 82, column: 47, scope: !4192)
!4204 = !DILocation(line: 82, column: 66, scope: !4192)
!4205 = !DILocation(line: 83, column: 26, scope: !4192)
!4206 = !DILocation(line: 83, column: 48, scope: !4192)
!4207 = !DILocation(line: 83, column: 57, scope: !4192)
!4208 = !DILocation(line: 85, column: 10, scope: !4192)
!4209 = !DILocation(line: 85, column: 3, scope: !4192)
!4210 = distinct !DISubprogram(name: "xstrtoumax", scope: !4211, file: !4211, line: 88, type: !4212, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4215)
!4211 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!4148, !66, !710, !50, !4214, !66}
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4228, !4229, !4232, !4233}
!4216 = !DILocalVariable(name: "s", arg: 1, scope: !4210, file: !4211, line: 88, type: !66)
!4217 = !DILocalVariable(name: "ptr", arg: 2, scope: !4210, file: !4211, line: 88, type: !710)
!4218 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4210, file: !4211, line: 88, type: !50)
!4219 = !DILocalVariable(name: "val", arg: 4, scope: !4210, file: !4211, line: 89, type: !4214)
!4220 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4210, file: !4211, line: 89, type: !66)
!4221 = !DILocalVariable(name: "t_ptr", scope: !4210, file: !4211, line: 91, type: !45)
!4222 = !DILocalVariable(name: "p", scope: !4210, file: !4211, line: 92, type: !710)
!4223 = !DILocalVariable(name: "tmp", scope: !4210, file: !4211, line: 93, type: !4136)
!4224 = !DILocalVariable(name: "err", scope: !4210, file: !4211, line: 94, type: !4148)
!4225 = !DILocalVariable(name: "q", scope: !4226, file: !4211, line: 104, type: !66)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !4211, line: 103, column: 5)
!4227 = distinct !DILexicalBlock(scope: !4210, file: !4211, line: 102, column: 7)
!4228 = !DILocalVariable(name: "ch", scope: !4226, file: !4211, line: 105, type: !49)
!4229 = !DILocalVariable(name: "base", scope: !4230, file: !4211, line: 141, type: !50)
!4230 = distinct !DILexicalBlock(scope: !4231, file: !4211, line: 140, column: 5)
!4231 = distinct !DILexicalBlock(scope: !4210, file: !4211, line: 139, column: 7)
!4232 = !DILocalVariable(name: "suffixes", scope: !4230, file: !4211, line: 142, type: !50)
!4233 = !DILocalVariable(name: "overflow", scope: !4230, file: !4211, line: 143, type: !4148)
!4234 = !DILocation(line: 88, column: 24, scope: !4210)
!4235 = !DILocation(line: 88, column: 34, scope: !4210)
!4236 = !DILocation(line: 88, column: 43, scope: !4210)
!4237 = !DILocation(line: 89, column: 24, scope: !4210)
!4238 = !DILocation(line: 89, column: 41, scope: !4210)
!4239 = !DILocation(line: 91, column: 3, scope: !4210)
!4240 = !DILocation(line: 94, column: 16, scope: !4210)
!4241 = !DILocation(line: 96, column: 3, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !4211, line: 96, column: 3)
!4243 = distinct !DILexicalBlock(scope: !4210, file: !4211, line: 96, column: 3)
!4244 = !DILocation(line: 98, column: 8, scope: !4210)
!4245 = !DILocation(line: 92, column: 10, scope: !4210)
!4246 = !DILocation(line: 100, column: 3, scope: !4210)
!4247 = !DILocation(line: 100, column: 9, scope: !4210)
!4248 = !DILocation(line: 104, column: 19, scope: !4226)
!4249 = !DILocation(line: 105, column: 21, scope: !4226)
!4250 = !DILocation(line: 106, column: 14, scope: !4226)
!4251 = !DILocation(line: 106, column: 7, scope: !4226)
!4252 = !DILocation(line: 107, column: 15, scope: !4226)
!4253 = distinct !{!4253, !4251, !4254}
!4254 = !DILocation(line: 107, column: 17, scope: !4226)
!4255 = !DILocation(line: 108, column: 14, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4226, file: !4211, line: 108, column: 11)
!4257 = !DILocalVariable(name: "nptr", arg: 1, scope: !4258, file: !4259, line: 336, type: !4262)
!4258 = distinct !DISubprogram(name: "strtoumax", scope: !4259, file: !4259, line: 336, type: !4260, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4264)
!4259 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!4136, !4262, !4263, !50}
!4262 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!4263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !710)
!4264 = !{!4257, !4265, !4266}
!4265 = !DILocalVariable(name: "endptr", arg: 2, scope: !4258, file: !4259, line: 336, type: !4263)
!4266 = !DILocalVariable(name: "base", arg: 3, scope: !4258, file: !4259, line: 336, type: !50)
!4267 = !DILocation(line: 336, column: 1, scope: !4258, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 112, column: 9, scope: !4210)
!4269 = !DILocation(line: 339, column: 10, scope: !4258, inlinedAt: !4268)
!4270 = !DILocation(line: 93, column: 14, scope: !4210)
!4271 = !DILocation(line: 114, column: 7, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4210, file: !4211, line: 114, column: 7)
!4273 = !DILocation(line: 114, column: 10, scope: !4272)
!4274 = !DILocation(line: 114, column: 7, scope: !4210)
!4275 = !DILocation(line: 118, column: 11, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4277, file: !4211, line: 118, column: 11)
!4277 = distinct !DILexicalBlock(scope: !4272, file: !4211, line: 115, column: 5)
!4278 = !DILocation(line: 118, column: 26, scope: !4276)
!4279 = !DILocation(line: 118, column: 29, scope: !4276)
!4280 = !DILocation(line: 118, column: 33, scope: !4276)
!4281 = !DILocation(line: 118, column: 36, scope: !4276)
!4282 = !DILocation(line: 118, column: 11, scope: !4277)
!4283 = !DILocation(line: 123, column: 12, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4272, file: !4211, line: 123, column: 12)
!4285 = !DILocation(line: 123, column: 12, scope: !4272)
!4286 = !DILocation(line: 128, column: 5, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4284, file: !4211, line: 124, column: 5)
!4288 = !DILocation(line: 133, column: 8, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4210, file: !4211, line: 133, column: 7)
!4290 = !DILocation(line: 133, column: 7, scope: !4210)
!4291 = !DILocation(line: 135, column: 12, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4289, file: !4211, line: 134, column: 5)
!4293 = !DILocation(line: 136, column: 7, scope: !4292)
!4294 = !DILocation(line: 139, column: 7, scope: !4231)
!4295 = !DILocation(line: 139, column: 11, scope: !4231)
!4296 = !DILocation(line: 139, column: 7, scope: !4210)
!4297 = !DILocation(line: 141, column: 11, scope: !4230)
!4298 = !DILocation(line: 142, column: 11, scope: !4230)
!4299 = !DILocation(line: 145, column: 12, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4230, file: !4211, line: 145, column: 11)
!4301 = !DILocation(line: 145, column: 11, scope: !4230)
!4302 = !DILocation(line: 147, column: 16, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4300, file: !4211, line: 146, column: 9)
!4304 = !DILocation(line: 148, column: 22, scope: !4303)
!4305 = !DILocation(line: 148, column: 11, scope: !4303)
!4306 = !DILocation(line: 151, column: 7, scope: !4230)
!4307 = !DILocation(line: 163, column: 15, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !4211, line: 163, column: 15)
!4309 = distinct !DILexicalBlock(scope: !4230, file: !4211, line: 152, column: 9)
!4310 = !DILocation(line: 163, column: 15, scope: !4309)
!4311 = !DILocation(line: 164, column: 21, scope: !4308)
!4312 = !DILocation(line: 164, column: 13, scope: !4308)
!4313 = !DILocation(line: 167, column: 21, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4315, file: !4211, line: 167, column: 21)
!4315 = distinct !DILexicalBlock(scope: !4308, file: !4211, line: 165, column: 15)
!4316 = !DILocation(line: 167, column: 29, scope: !4314)
!4317 = !DILocation(line: 167, column: 21, scope: !4315)
!4318 = !DILocation(line: 175, column: 17, scope: !4315)
!4319 = !DILocation(line: 179, column: 7, scope: !4230)
!4320 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4321, file: !4211, line: 60, type: !50)
!4321 = distinct !DISubprogram(name: "bkm_scale", scope: !4211, file: !4211, line: 60, type: !4322, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4324)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!4148, !4214, !50}
!4324 = !{!4325, !4320}
!4325 = !DILocalVariable(name: "x", arg: 1, scope: !4321, file: !4211, line: 60, type: !4214)
!4326 = !DILocation(line: 60, column: 31, scope: !4321, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 182, column: 22, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4230, file: !4211, line: 180, column: 9)
!4329 = !DILocation(line: 67, column: 39, scope: !4330, inlinedAt: !4327)
!4330 = distinct !DILexicalBlock(scope: !4321, file: !4211, line: 67, column: 7)
!4331 = !DILocation(line: 72, column: 6, scope: !4321, inlinedAt: !4327)
!4332 = !DILocation(line: 67, column: 7, scope: !4321, inlinedAt: !4327)
!4333 = !DILocation(line: 143, column: 20, scope: !4230)
!4334 = !DILocation(line: 183, column: 11, scope: !4328)
!4335 = !DILocation(line: 60, column: 31, scope: !4321, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 189, column: 22, scope: !4328)
!4337 = !DILocation(line: 67, column: 39, scope: !4330, inlinedAt: !4336)
!4338 = !DILocation(line: 72, column: 6, scope: !4321, inlinedAt: !4336)
!4339 = !DILocation(line: 67, column: 7, scope: !4321, inlinedAt: !4336)
!4340 = !DILocation(line: 190, column: 11, scope: !4328)
!4341 = !DILocalVariable(name: "power", arg: 3, scope: !4342, file: !4211, line: 77, type: !50)
!4342 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4211, file: !4211, line: 77, type: !4343, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4345)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!4148, !4214, !50, !50}
!4345 = !{!4346, !4347, !4341, !4348}
!4346 = !DILocalVariable(name: "x", arg: 1, scope: !4342, file: !4211, line: 77, type: !4214)
!4347 = !DILocalVariable(name: "base", arg: 2, scope: !4342, file: !4211, line: 77, type: !50)
!4348 = !DILocalVariable(name: "err", scope: !4342, file: !4211, line: 79, type: !4148)
!4349 = !DILocation(line: 77, column: 50, scope: !4342, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 197, column: 22, scope: !4328)
!4351 = !DILocation(line: 79, column: 16, scope: !4342, inlinedAt: !4350)
!4352 = !DILocation(line: 67, column: 39, scope: !4330, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 81, column: 12, scope: !4342, inlinedAt: !4350)
!4354 = !DILocation(line: 72, column: 6, scope: !4321, inlinedAt: !4353)
!4355 = !DILocation(line: 67, column: 7, scope: !4321, inlinedAt: !4353)
!4356 = !DILocation(line: 81, column: 9, scope: !4342, inlinedAt: !4350)
!4357 = !DILocation(line: 241, column: 11, scope: !4230)
!4358 = !DILocation(line: 77, column: 50, scope: !4342, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 202, column: 22, scope: !4328)
!4360 = !DILocation(line: 79, column: 16, scope: !4342, inlinedAt: !4359)
!4361 = !DILocation(line: 67, column: 39, scope: !4330, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 81, column: 12, scope: !4342, inlinedAt: !4359)
!4363 = !DILocation(line: 72, column: 6, scope: !4321, inlinedAt: !4362)
!4364 = !DILocation(line: 67, column: 7, scope: !4321, inlinedAt: !4362)
!4365 = !DILocation(line: 81, column: 9, scope: !4342, inlinedAt: !4359)
!4366 = !DILocation(line: 77, column: 50, scope: !4342, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 207, column: 22, scope: !4328)
!4368 = !DILocation(line: 79, column: 16, scope: !4342, inlinedAt: !4367)
!4369 = !DILocation(line: 67, column: 39, scope: !4330, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 81, column: 12, scope: !4342, inlinedAt: !4367)
!4371 = !DILocation(line: 72, column: 6, scope: !4321, inlinedAt: !4370)
!4372 = !DILocation(line: 67, column: 7, scope: !4321, inlinedAt: !4370)
!4373 = !DILocation(line: 77, column: 50, scope: !4342, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 212, column: 22, scope: !4328)
!4375 = !DILocation(line: 79, column: 16, scope: !4342, inlinedAt: !4374)
!4376 = !DILocation(line: 67, column: 39, scope: !4330, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 81, column: 12, scope: !4342, inlinedAt: !4374)
!4378 = !DILocation(line: 72, column: 6, scope: !4321, inlinedAt: !4377)
!4379 = !DILocation(line: 67, column: 7, scope: !4321, inlinedAt: !4377)
!4380 = !DILocation(line: 81, column: 9, scope: !4342, inlinedAt: !4374)
!4381 = !DILocation(line: 77, column: 50, scope: !4342, inlinedAt: !4382)
!4382 = distinct !DILocation(line: 216, column: 22, scope: !4328)
!4383 = !DILocation(line: 79, column: 16, scope: !4342, inlinedAt: !4382)
!4384 = !DILocation(line: 67, column: 39, scope: !4330, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 81, column: 12, scope: !4342, inlinedAt: !4382)
!4386 = !DILocation(line: 72, column: 6, scope: !4321, inlinedAt: !4385)
!4387 = !DILocation(line: 67, column: 7, scope: !4321, inlinedAt: !4385)
!4388 = !DILocation(line: 81, column: 9, scope: !4342, inlinedAt: !4382)
!4389 = !DILocation(line: 77, column: 50, scope: !4342, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 221, column: 22, scope: !4328)
!4391 = !DILocation(line: 79, column: 16, scope: !4342, inlinedAt: !4390)
!4392 = !DILocation(line: 67, column: 39, scope: !4330, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 81, column: 12, scope: !4342, inlinedAt: !4390)
!4394 = !DILocation(line: 72, column: 6, scope: !4321, inlinedAt: !4393)
!4395 = !DILocation(line: 67, column: 7, scope: !4321, inlinedAt: !4393)
!4396 = !DILocation(line: 81, column: 9, scope: !4342, inlinedAt: !4390)
!4397 = !DILocation(line: 60, column: 31, scope: !4321, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 225, column: 22, scope: !4328)
!4399 = !DILocation(line: 67, column: 39, scope: !4330, inlinedAt: !4398)
!4400 = !DILocation(line: 72, column: 6, scope: !4321, inlinedAt: !4398)
!4401 = !DILocation(line: 67, column: 7, scope: !4321, inlinedAt: !4398)
!4402 = !DILocation(line: 226, column: 11, scope: !4328)
!4403 = !DILocation(line: 77, column: 50, scope: !4342, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 229, column: 22, scope: !4328)
!4405 = !DILocation(line: 79, column: 16, scope: !4342, inlinedAt: !4404)
!4406 = !DILocation(line: 67, column: 39, scope: !4330, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 81, column: 12, scope: !4342, inlinedAt: !4404)
!4408 = !DILocation(line: 72, column: 6, scope: !4321, inlinedAt: !4407)
!4409 = !DILocation(line: 67, column: 7, scope: !4321, inlinedAt: !4407)
!4410 = !DILocation(line: 81, column: 9, scope: !4342, inlinedAt: !4404)
!4411 = !DILocation(line: 77, column: 50, scope: !4342, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 233, column: 22, scope: !4328)
!4413 = !DILocation(line: 79, column: 16, scope: !4342, inlinedAt: !4412)
!4414 = !DILocation(line: 67, column: 39, scope: !4330, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 81, column: 12, scope: !4342, inlinedAt: !4412)
!4416 = !DILocation(line: 72, column: 6, scope: !4321, inlinedAt: !4415)
!4417 = !DILocation(line: 67, column: 7, scope: !4321, inlinedAt: !4415)
!4418 = !DILocation(line: 81, column: 9, scope: !4342, inlinedAt: !4412)
!4419 = !DILocation(line: 237, column: 16, scope: !4328)
!4420 = !DILocation(line: 238, column: 22, scope: !4328)
!4421 = !DILocation(line: 238, column: 11, scope: !4328)
!4422 = !DILocation(line: 242, column: 10, scope: !4230)
!4423 = !DILocation(line: 243, column: 11, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4230, file: !4211, line: 243, column: 11)
!4425 = !DILocation(line: 244, column: 13, scope: !4424)
!4426 = !DILocation(line: 243, column: 11, scope: !4230)
!4427 = !DILocation(line: 247, column: 8, scope: !4210)
!4428 = !DILocation(line: 248, column: 3, scope: !4210)
!4429 = !DILocation(line: 249, column: 1, scope: !4210)
!4430 = distinct !DISubprogram(name: "rpl_calloc", scope: !4431, file: !4431, line: 42, type: !3877, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !4432)
!4431 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4432 = !{!4433, !4434, !4435, !4436}
!4433 = !DILocalVariable(name: "n", arg: 1, scope: !4430, file: !4431, line: 42, type: !195)
!4434 = !DILocalVariable(name: "s", arg: 2, scope: !4430, file: !4431, line: 42, type: !195)
!4435 = !DILocalVariable(name: "result", scope: !4430, file: !4431, line: 44, type: !47)
!4436 = !DILocalVariable(name: "bytes", scope: !4437, file: !4431, line: 56, type: !195)
!4437 = distinct !DILexicalBlock(scope: !4438, file: !4431, line: 53, column: 5)
!4438 = distinct !DILexicalBlock(scope: !4430, file: !4431, line: 47, column: 7)
!4439 = !DILocation(line: 42, column: 20, scope: !4430)
!4440 = !DILocation(line: 42, column: 30, scope: !4430)
!4441 = !DILocation(line: 47, column: 9, scope: !4438)
!4442 = !DILocation(line: 47, column: 19, scope: !4438)
!4443 = !DILocation(line: 47, column: 14, scope: !4438)
!4444 = !DILocation(line: 56, column: 24, scope: !4437)
!4445 = !DILocation(line: 56, column: 14, scope: !4437)
!4446 = !DILocation(line: 57, column: 17, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4437, file: !4431, line: 57, column: 11)
!4448 = !DILocation(line: 57, column: 21, scope: !4447)
!4449 = !DILocation(line: 57, column: 11, scope: !4437)
!4450 = !DILocation(line: 59, column: 11, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4447, file: !4431, line: 58, column: 9)
!4452 = !DILocation(line: 59, column: 17, scope: !4451)
!4453 = !DILocation(line: 65, column: 12, scope: !4430)
!4454 = !DILocation(line: 44, column: 9, scope: !4430)
!4455 = !DILocation(line: 72, column: 3, scope: !4430)
!4456 = !DILocation(line: 73, column: 1, scope: !4430)
!4457 = distinct !DISubprogram(name: "rpl_fclose", scope: !4458, file: !4458, line: 56, type: !4459, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !641, variables: !4501)
!4458 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!50, !4461}
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !729, line: 7, baseType: !4463)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !731, line: 241, size: 1728, elements: !4464)
!4464 = !{!4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4463, file: !731, line: 242, baseType: !50, size: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4463, file: !731, line: 247, baseType: !45, size: 64, offset: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4463, file: !731, line: 248, baseType: !45, size: 64, offset: 128)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4463, file: !731, line: 249, baseType: !45, size: 64, offset: 192)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4463, file: !731, line: 250, baseType: !45, size: 64, offset: 256)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4463, file: !731, line: 251, baseType: !45, size: 64, offset: 320)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4463, file: !731, line: 252, baseType: !45, size: 64, offset: 384)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4463, file: !731, line: 253, baseType: !45, size: 64, offset: 448)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4463, file: !731, line: 254, baseType: !45, size: 64, offset: 512)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4463, file: !731, line: 256, baseType: !45, size: 64, offset: 576)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4463, file: !731, line: 257, baseType: !45, size: 64, offset: 640)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4463, file: !731, line: 258, baseType: !45, size: 64, offset: 704)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4463, file: !731, line: 260, baseType: !4478, size: 64, offset: 768)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !731, line: 156, size: 192, elements: !4480)
!4480 = !{!4481, !4482, !4484}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4479, file: !731, line: 157, baseType: !4478, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4479, file: !731, line: 158, baseType: !4483, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4479, file: !731, line: 162, baseType: !50, size: 32, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4463, file: !731, line: 262, baseType: !4483, size: 64, offset: 832)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4463, file: !731, line: 264, baseType: !50, size: 32, offset: 896)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4463, file: !731, line: 268, baseType: !50, size: 32, offset: 928)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4463, file: !731, line: 270, baseType: !757, size: 64, offset: 960)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4463, file: !731, line: 274, baseType: !51, size: 16, offset: 1024)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4463, file: !731, line: 275, baseType: !761, size: 8, offset: 1040)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4463, file: !731, line: 276, baseType: !763, size: 8, offset: 1048)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4463, file: !731, line: 280, baseType: !767, size: 64, offset: 1088)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4463, file: !731, line: 289, baseType: !770, size: 64, offset: 1152)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4463, file: !731, line: 297, baseType: !47, size: 64, offset: 1216)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4463, file: !731, line: 298, baseType: !47, size: 64, offset: 1280)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4463, file: !731, line: 299, baseType: !47, size: 64, offset: 1344)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4463, file: !731, line: 300, baseType: !47, size: 64, offset: 1408)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4463, file: !731, line: 302, baseType: !195, size: 64, offset: 1472)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4463, file: !731, line: 303, baseType: !50, size: 32, offset: 1536)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4463, file: !731, line: 305, baseType: !778, size: 160, offset: 1568)
!4501 = !{!4502, !4503, !4504, !4505}
!4502 = !DILocalVariable(name: "fp", arg: 1, scope: !4457, file: !4458, line: 56, type: !4461)
!4503 = !DILocalVariable(name: "saved_errno", scope: !4457, file: !4458, line: 58, type: !50)
!4504 = !DILocalVariable(name: "fd", scope: !4457, file: !4458, line: 59, type: !50)
!4505 = !DILocalVariable(name: "result", scope: !4457, file: !4458, line: 60, type: !50)
!4506 = !DILocation(line: 56, column: 19, scope: !4457)
!4507 = !DILocation(line: 58, column: 7, scope: !4457)
!4508 = !DILocation(line: 60, column: 7, scope: !4457)
!4509 = !DILocation(line: 63, column: 8, scope: !4457)
!4510 = !DILocation(line: 59, column: 7, scope: !4457)
!4511 = !DILocation(line: 64, column: 10, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4457, file: !4458, line: 64, column: 7)
!4513 = !DILocation(line: 64, column: 7, scope: !4457)
!4514 = !DILocation(line: 65, column: 12, scope: !4512)
!4515 = !DILocation(line: 65, column: 5, scope: !4512)
!4516 = !DILocation(line: 70, column: 9, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4457, file: !4458, line: 70, column: 7)
!4518 = !DILocation(line: 70, column: 23, scope: !4517)
!4519 = !DILocation(line: 70, column: 33, scope: !4517)
!4520 = !DILocation(line: 70, column: 26, scope: !4517)
!4521 = !DILocation(line: 70, column: 59, scope: !4517)
!4522 = !DILocation(line: 71, column: 7, scope: !4517)
!4523 = !DILocation(line: 71, column: 10, scope: !4517)
!4524 = !DILocation(line: 70, column: 7, scope: !4457)
!4525 = !DILocation(line: 98, column: 12, scope: !4457)
!4526 = !DILocation(line: 103, column: 7, scope: !4457)
!4527 = !DILocation(line: 72, column: 19, scope: !4517)
!4528 = !DILocation(line: 103, column: 19, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4457, file: !4458, line: 103, column: 7)
!4530 = !DILocation(line: 105, column: 13, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4529, file: !4458, line: 104, column: 5)
!4532 = !DILocation(line: 107, column: 5, scope: !4531)
!4533 = !DILocation(line: 110, column: 1, scope: !4457)
!4534 = distinct !DISubprogram(name: "rpl_fflush", scope: !4535, file: !4535, line: 127, type: !4536, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !4578)
!4535 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!50, !4538}
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !729, line: 7, baseType: !4540)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !731, line: 241, size: 1728, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4540, file: !731, line: 242, baseType: !50, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4540, file: !731, line: 247, baseType: !45, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4540, file: !731, line: 248, baseType: !45, size: 64, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4540, file: !731, line: 249, baseType: !45, size: 64, offset: 192)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4540, file: !731, line: 250, baseType: !45, size: 64, offset: 256)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4540, file: !731, line: 251, baseType: !45, size: 64, offset: 320)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4540, file: !731, line: 252, baseType: !45, size: 64, offset: 384)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4540, file: !731, line: 253, baseType: !45, size: 64, offset: 448)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4540, file: !731, line: 254, baseType: !45, size: 64, offset: 512)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4540, file: !731, line: 256, baseType: !45, size: 64, offset: 576)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4540, file: !731, line: 257, baseType: !45, size: 64, offset: 640)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4540, file: !731, line: 258, baseType: !45, size: 64, offset: 704)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4540, file: !731, line: 260, baseType: !4555, size: 64, offset: 768)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !731, line: 156, size: 192, elements: !4557)
!4557 = !{!4558, !4559, !4561}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4556, file: !731, line: 157, baseType: !4555, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4556, file: !731, line: 158, baseType: !4560, size: 64, offset: 64)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4556, file: !731, line: 162, baseType: !50, size: 32, offset: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4540, file: !731, line: 262, baseType: !4560, size: 64, offset: 832)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4540, file: !731, line: 264, baseType: !50, size: 32, offset: 896)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4540, file: !731, line: 268, baseType: !50, size: 32, offset: 928)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4540, file: !731, line: 270, baseType: !757, size: 64, offset: 960)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4540, file: !731, line: 274, baseType: !51, size: 16, offset: 1024)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4540, file: !731, line: 275, baseType: !761, size: 8, offset: 1040)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4540, file: !731, line: 276, baseType: !763, size: 8, offset: 1048)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4540, file: !731, line: 280, baseType: !767, size: 64, offset: 1088)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4540, file: !731, line: 289, baseType: !770, size: 64, offset: 1152)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4540, file: !731, line: 297, baseType: !47, size: 64, offset: 1216)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4540, file: !731, line: 298, baseType: !47, size: 64, offset: 1280)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4540, file: !731, line: 299, baseType: !47, size: 64, offset: 1344)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4540, file: !731, line: 300, baseType: !47, size: 64, offset: 1408)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4540, file: !731, line: 302, baseType: !195, size: 64, offset: 1472)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4540, file: !731, line: 303, baseType: !50, size: 32, offset: 1536)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4540, file: !731, line: 305, baseType: !778, size: 160, offset: 1568)
!4578 = !{!4579}
!4579 = !DILocalVariable(name: "stream", arg: 1, scope: !4534, file: !4535, line: 127, type: !4538)
!4580 = !DILocation(line: 127, column: 19, scope: !4534)
!4581 = !DILocation(line: 148, column: 14, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4534, file: !4535, line: 148, column: 7)
!4583 = !DILocation(line: 148, column: 22, scope: !4582)
!4584 = !DILocation(line: 148, column: 27, scope: !4582)
!4585 = !DILocation(line: 148, column: 7, scope: !4534)
!4586 = !DILocation(line: 149, column: 12, scope: !4582)
!4587 = !DILocation(line: 149, column: 5, scope: !4582)
!4588 = !DILocalVariable(name: "fp", arg: 1, scope: !4589, file: !4535, line: 40, type: !4538)
!4589 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4535, file: !4535, line: 40, type: !4590, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !4592)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{null, !4538}
!4592 = !{!4588}
!4593 = !DILocation(line: 40, column: 48, scope: !4589, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 153, column: 3, scope: !4534)
!4595 = !DILocation(line: 42, column: 11, scope: !4596, inlinedAt: !4594)
!4596 = distinct !DILexicalBlock(scope: !4589, file: !4535, line: 42, column: 7)
!4597 = !{!1015, !794, i64 0}
!4598 = !DILocation(line: 42, column: 18, scope: !4596, inlinedAt: !4594)
!4599 = !DILocation(line: 42, column: 7, scope: !4589, inlinedAt: !4594)
!4600 = !DILocation(line: 44, column: 5, scope: !4596, inlinedAt: !4594)
!4601 = !DILocation(line: 155, column: 10, scope: !4534)
!4602 = !DILocation(line: 155, column: 3, scope: !4534)
!4603 = !DILocation(line: 229, column: 1, scope: !4534)
!4604 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4605, file: !4605, line: 28, type: !4606, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !4648)
!4605 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!50, !4608, !1924, !50}
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !729, line: 7, baseType: !4610)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !731, line: 241, size: 1728, elements: !4611)
!4611 = !{!4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4610, file: !731, line: 242, baseType: !50, size: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4610, file: !731, line: 247, baseType: !45, size: 64, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4610, file: !731, line: 248, baseType: !45, size: 64, offset: 128)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4610, file: !731, line: 249, baseType: !45, size: 64, offset: 192)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4610, file: !731, line: 250, baseType: !45, size: 64, offset: 256)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4610, file: !731, line: 251, baseType: !45, size: 64, offset: 320)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4610, file: !731, line: 252, baseType: !45, size: 64, offset: 384)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4610, file: !731, line: 253, baseType: !45, size: 64, offset: 448)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4610, file: !731, line: 254, baseType: !45, size: 64, offset: 512)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4610, file: !731, line: 256, baseType: !45, size: 64, offset: 576)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4610, file: !731, line: 257, baseType: !45, size: 64, offset: 640)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4610, file: !731, line: 258, baseType: !45, size: 64, offset: 704)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4610, file: !731, line: 260, baseType: !4625, size: 64, offset: 768)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !731, line: 156, size: 192, elements: !4627)
!4627 = !{!4628, !4629, !4631}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4626, file: !731, line: 157, baseType: !4625, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4626, file: !731, line: 158, baseType: !4630, size: 64, offset: 64)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4626, file: !731, line: 162, baseType: !50, size: 32, offset: 128)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4610, file: !731, line: 262, baseType: !4630, size: 64, offset: 832)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4610, file: !731, line: 264, baseType: !50, size: 32, offset: 896)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4610, file: !731, line: 268, baseType: !50, size: 32, offset: 928)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4610, file: !731, line: 270, baseType: !757, size: 64, offset: 960)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4610, file: !731, line: 274, baseType: !51, size: 16, offset: 1024)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4610, file: !731, line: 275, baseType: !761, size: 8, offset: 1040)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4610, file: !731, line: 276, baseType: !763, size: 8, offset: 1048)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4610, file: !731, line: 280, baseType: !767, size: 64, offset: 1088)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4610, file: !731, line: 289, baseType: !770, size: 64, offset: 1152)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4610, file: !731, line: 297, baseType: !47, size: 64, offset: 1216)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4610, file: !731, line: 298, baseType: !47, size: 64, offset: 1280)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4610, file: !731, line: 299, baseType: !47, size: 64, offset: 1344)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4610, file: !731, line: 300, baseType: !47, size: 64, offset: 1408)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4610, file: !731, line: 302, baseType: !195, size: 64, offset: 1472)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4610, file: !731, line: 303, baseType: !50, size: 32, offset: 1536)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4610, file: !731, line: 305, baseType: !778, size: 160, offset: 1568)
!4648 = !{!4649, !4650, !4651, !4652}
!4649 = !DILocalVariable(name: "fp", arg: 1, scope: !4604, file: !4605, line: 28, type: !4608)
!4650 = !DILocalVariable(name: "offset", arg: 2, scope: !4604, file: !4605, line: 28, type: !1924)
!4651 = !DILocalVariable(name: "whence", arg: 3, scope: !4604, file: !4605, line: 28, type: !50)
!4652 = !DILocalVariable(name: "pos", scope: !4653, file: !4605, line: 116, type: !1924)
!4653 = distinct !DILexicalBlock(scope: !4654, file: !4605, line: 112, column: 5)
!4654 = distinct !DILexicalBlock(scope: !4604, file: !4605, line: 51, column: 7)
!4655 = !DILocation(line: 28, column: 15, scope: !4604)
!4656 = !DILocation(line: 28, column: 25, scope: !4604)
!4657 = !DILocation(line: 28, column: 37, scope: !4604)
!4658 = !DILocation(line: 51, column: 11, scope: !4654)
!4659 = !DILocation(line: 51, column: 31, scope: !4654)
!4660 = !DILocation(line: 51, column: 24, scope: !4654)
!4661 = !DILocation(line: 52, column: 7, scope: !4654)
!4662 = !DILocation(line: 52, column: 14, scope: !4654)
!4663 = !DILocation(line: 52, column: 35, scope: !4654)
!4664 = !{!1015, !673, i64 32}
!4665 = !DILocation(line: 52, column: 28, scope: !4654)
!4666 = !DILocation(line: 53, column: 7, scope: !4654)
!4667 = !DILocation(line: 53, column: 14, scope: !4654)
!4668 = !{!1015, !673, i64 72}
!4669 = !DILocation(line: 53, column: 28, scope: !4654)
!4670 = !DILocation(line: 51, column: 7, scope: !4604)
!4671 = !DILocation(line: 116, column: 26, scope: !4653)
!4672 = !DILocation(line: 116, column: 19, scope: !4653)
!4673 = !DILocation(line: 116, column: 13, scope: !4653)
!4674 = !DILocation(line: 117, column: 15, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4653, file: !4605, line: 117, column: 11)
!4676 = !DILocation(line: 117, column: 11, scope: !4653)
!4677 = !DILocation(line: 127, column: 11, scope: !4653)
!4678 = !DILocation(line: 127, column: 18, scope: !4653)
!4679 = !DILocation(line: 128, column: 11, scope: !4653)
!4680 = !DILocation(line: 128, column: 19, scope: !4653)
!4681 = !{!1015, !1016, i64 144}
!4682 = !DILocation(line: 159, column: 7, scope: !4653)
!4683 = !DILocation(line: 161, column: 10, scope: !4604)
!4684 = !DILocation(line: 161, column: 3, scope: !4604)
!4685 = !DILocation(line: 162, column: 1, scope: !4604)
!4686 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4687, file: !4687, line: 334, type: !4688, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !647, variables: !4702)
!4687 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!195, !4690, !66, !195, !4691}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2228, line: 6, baseType: !4693)
!4693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2230, line: 21, baseType: !4694)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2230, line: 13, size: 64, elements: !4695)
!4695 = !{!4696, !4697}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4694, file: !2230, line: 15, baseType: !50, size: 32)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4694, file: !2230, line: 20, baseType: !4698, size: 32, offset: 32)
!4698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4694, file: !2230, line: 16, size: 32, elements: !4699)
!4699 = !{!4700, !4701}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4698, file: !2230, line: 18, baseType: !44, size: 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4698, file: !2230, line: 19, baseType: !2239, size: 32)
!4702 = !{!4703, !4704, !4705, !4706, !4707, !4708, !4709}
!4703 = !DILocalVariable(name: "pwc", arg: 1, scope: !4686, file: !4687, line: 334, type: !4690)
!4704 = !DILocalVariable(name: "s", arg: 2, scope: !4686, file: !4687, line: 334, type: !66)
!4705 = !DILocalVariable(name: "n", arg: 3, scope: !4686, file: !4687, line: 334, type: !195)
!4706 = !DILocalVariable(name: "ps", arg: 4, scope: !4686, file: !4687, line: 334, type: !4691)
!4707 = !DILocalVariable(name: "ret", scope: !4686, file: !4687, line: 336, type: !195)
!4708 = !DILocalVariable(name: "wc", scope: !4686, file: !4687, line: 337, type: !2244)
!4709 = !DILocalVariable(name: "uc", scope: !4710, file: !4687, line: 398, type: !49)
!4710 = distinct !DILexicalBlock(scope: !4711, file: !4687, line: 397, column: 5)
!4711 = distinct !DILexicalBlock(scope: !4686, file: !4687, line: 396, column: 7)
!4712 = !DILocation(line: 334, column: 23, scope: !4686)
!4713 = !DILocation(line: 334, column: 40, scope: !4686)
!4714 = !DILocation(line: 334, column: 50, scope: !4686)
!4715 = !DILocation(line: 334, column: 64, scope: !4686)
!4716 = !DILocation(line: 337, column: 3, scope: !4686)
!4717 = !DILocation(line: 353, column: 9, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4686, file: !4687, line: 353, column: 7)
!4719 = !DILocation(line: 353, column: 7, scope: !4686)
!4720 = !DILocation(line: 388, column: 9, scope: !4686)
!4721 = !DILocation(line: 336, column: 10, scope: !4686)
!4722 = !DILocation(line: 396, column: 19, scope: !4711)
!4723 = !DILocation(line: 396, column: 31, scope: !4711)
!4724 = !DILocation(line: 396, column: 26, scope: !4711)
!4725 = !DILocation(line: 396, column: 41, scope: !4711)
!4726 = !DILocation(line: 396, column: 7, scope: !4686)
!4727 = !DILocation(line: 398, column: 26, scope: !4710)
!4728 = !DILocation(line: 398, column: 21, scope: !4710)
!4729 = !DILocation(line: 399, column: 14, scope: !4710)
!4730 = !DILocation(line: 399, column: 12, scope: !4710)
!4731 = !DILocation(line: 405, column: 1, scope: !4686)
!4732 = distinct !DISubprogram(name: "close_stream", scope: !4733, file: !4733, line: 56, type: !4734, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !4776)
!4733 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!50, !4736}
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !729, line: 7, baseType: !4738)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !731, line: 241, size: 1728, elements: !4739)
!4739 = !{!4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4738, file: !731, line: 242, baseType: !50, size: 32)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4738, file: !731, line: 247, baseType: !45, size: 64, offset: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4738, file: !731, line: 248, baseType: !45, size: 64, offset: 128)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4738, file: !731, line: 249, baseType: !45, size: 64, offset: 192)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4738, file: !731, line: 250, baseType: !45, size: 64, offset: 256)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4738, file: !731, line: 251, baseType: !45, size: 64, offset: 320)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4738, file: !731, line: 252, baseType: !45, size: 64, offset: 384)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4738, file: !731, line: 253, baseType: !45, size: 64, offset: 448)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4738, file: !731, line: 254, baseType: !45, size: 64, offset: 512)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4738, file: !731, line: 256, baseType: !45, size: 64, offset: 576)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4738, file: !731, line: 257, baseType: !45, size: 64, offset: 640)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4738, file: !731, line: 258, baseType: !45, size: 64, offset: 704)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4738, file: !731, line: 260, baseType: !4753, size: 64, offset: 768)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !731, line: 156, size: 192, elements: !4755)
!4755 = !{!4756, !4757, !4759}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4754, file: !731, line: 157, baseType: !4753, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4754, file: !731, line: 158, baseType: !4758, size: 64, offset: 64)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4754, file: !731, line: 162, baseType: !50, size: 32, offset: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4738, file: !731, line: 262, baseType: !4758, size: 64, offset: 832)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4738, file: !731, line: 264, baseType: !50, size: 32, offset: 896)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4738, file: !731, line: 268, baseType: !50, size: 32, offset: 928)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4738, file: !731, line: 270, baseType: !757, size: 64, offset: 960)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4738, file: !731, line: 274, baseType: !51, size: 16, offset: 1024)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4738, file: !731, line: 275, baseType: !761, size: 8, offset: 1040)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4738, file: !731, line: 276, baseType: !763, size: 8, offset: 1048)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4738, file: !731, line: 280, baseType: !767, size: 64, offset: 1088)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4738, file: !731, line: 289, baseType: !770, size: 64, offset: 1152)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4738, file: !731, line: 297, baseType: !47, size: 64, offset: 1216)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4738, file: !731, line: 298, baseType: !47, size: 64, offset: 1280)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4738, file: !731, line: 299, baseType: !47, size: 64, offset: 1344)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4738, file: !731, line: 300, baseType: !47, size: 64, offset: 1408)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4738, file: !731, line: 302, baseType: !195, size: 64, offset: 1472)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4738, file: !731, line: 303, baseType: !50, size: 32, offset: 1536)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4738, file: !731, line: 305, baseType: !778, size: 160, offset: 1568)
!4776 = !{!4777, !4778, !4780, !4781}
!4777 = !DILocalVariable(name: "stream", arg: 1, scope: !4732, file: !4733, line: 56, type: !4736)
!4778 = !DILocalVariable(name: "some_pending", scope: !4732, file: !4733, line: 58, type: !4779)
!4779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!4780 = !DILocalVariable(name: "prev_fail", scope: !4732, file: !4733, line: 59, type: !4779)
!4781 = !DILocalVariable(name: "fclose_fail", scope: !4732, file: !4733, line: 60, type: !4779)
!4782 = !DILocation(line: 56, column: 21, scope: !4732)
!4783 = !DILocation(line: 58, column: 30, scope: !4732)
!4784 = !DILocalVariable(name: "__stream", arg: 1, scope: !4785, file: !1006, line: 132, type: !4736)
!4785 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1006, file: !1006, line: 132, type: !4734, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !4786)
!4786 = !{!4784}
!4787 = !DILocation(line: 132, column: 1, scope: !4785, inlinedAt: !4788)
!4788 = distinct !DILocation(line: 59, column: 27, scope: !4732)
!4789 = !DILocation(line: 134, column: 10, scope: !4785, inlinedAt: !4788)
!4790 = !DILocation(line: 59, column: 43, scope: !4732)
!4791 = !DILocation(line: 60, column: 29, scope: !4732)
!4792 = !DILocation(line: 60, column: 45, scope: !4732)
!4793 = !DILocation(line: 70, column: 17, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4732, file: !4733, line: 70, column: 7)
!4795 = !DILocation(line: 58, column: 50, scope: !4732)
!4796 = !DILocation(line: 70, column: 33, scope: !4794)
!4797 = !DILocation(line: 70, column: 53, scope: !4794)
!4798 = !DILocation(line: 70, column: 59, scope: !4794)
!4799 = !DILocation(line: 70, column: 7, scope: !4732)
!4800 = !DILocation(line: 72, column: 11, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4794, file: !4733, line: 71, column: 5)
!4802 = !DILocation(line: 73, column: 9, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4801, file: !4733, line: 72, column: 11)
!4804 = !DILocation(line: 73, column: 15, scope: !4803)
!4805 = !DILocation(line: 78, column: 1, scope: !4732)
!4806 = distinct !DISubprogram(name: "hard_locale", scope: !4807, file: !4807, line: 38, type: !1124, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !652, variables: !4808)
!4807 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4808 = !{!4809, !4810, !4811}
!4809 = !DILocalVariable(name: "category", arg: 1, scope: !4806, file: !4807, line: 38, type: !50)
!4810 = !DILocalVariable(name: "hard", scope: !4806, file: !4807, line: 40, type: !57)
!4811 = !DILocalVariable(name: "p", scope: !4806, file: !4807, line: 41, type: !66)
!4812 = !DILocation(line: 38, column: 18, scope: !4806)
!4813 = !DILocation(line: 40, column: 8, scope: !4806)
!4814 = !DILocation(line: 41, column: 19, scope: !4806)
!4815 = !DILocation(line: 41, column: 15, scope: !4806)
!4816 = !DILocation(line: 43, column: 7, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4806, file: !4807, line: 43, column: 7)
!4818 = !DILocation(line: 43, column: 7, scope: !4806)
!4819 = !DILocation(line: 47, column: 15, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !4807, line: 47, column: 15)
!4821 = distinct !DILexicalBlock(scope: !4822, file: !4807, line: 46, column: 9)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !4807, line: 45, column: 11)
!4823 = distinct !DILexicalBlock(scope: !4817, file: !4807, line: 44, column: 5)
!4824 = !DILocation(line: 47, column: 31, scope: !4820)
!4825 = !DILocation(line: 47, column: 36, scope: !4820)
!4826 = !DILocation(line: 47, column: 39, scope: !4820)
!4827 = !DILocation(line: 47, column: 59, scope: !4820)
!4828 = !DILocation(line: 47, column: 15, scope: !4821)
!4829 = !DILocation(line: 48, column: 13, scope: !4820)
!4830 = !DILocation(line: 71, column: 3, scope: !4806)
!4831 = distinct !DISubprogram(name: "locale_charset", scope: !592, file: !592, line: 393, type: !4832, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !249, variables: !4834)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!66}
!4834 = !{!4835, !4836}
!4835 = !DILocalVariable(name: "codeset", scope: !4831, file: !592, line: 395, type: !66)
!4836 = !DILocalVariable(name: "aliases", scope: !4831, file: !592, line: 396, type: !66)
!4837 = !DILocalVariable(name: "buf1", scope: !4838, file: !592, line: 196, type: !4905)
!4838 = distinct !DILexicalBlock(scope: !4839, file: !592, line: 194, column: 21)
!4839 = distinct !DILexicalBlock(scope: !4840, file: !592, line: 193, column: 19)
!4840 = distinct !DILexicalBlock(scope: !4841, file: !592, line: 193, column: 19)
!4841 = distinct !DILexicalBlock(scope: !4842, file: !592, line: 188, column: 17)
!4842 = distinct !DILexicalBlock(scope: !4843, file: !592, line: 181, column: 19)
!4843 = distinct !DILexicalBlock(scope: !4844, file: !592, line: 177, column: 13)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !592, line: 173, column: 15)
!4845 = distinct !DILexicalBlock(scope: !4846, file: !592, line: 161, column: 9)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !592, line: 157, column: 11)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !592, line: 130, column: 5)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !592, line: 129, column: 7)
!4849 = distinct !DISubprogram(name: "get_charset_aliases", scope: !592, file: !592, line: 124, type: !4832, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !249, variables: !4850)
!4850 = !{!4851, !4852, !4853, !4854, !4855, !4857, !4858, !4859, !4860, !4901, !4902, !4903, !4837, !4904, !4908, !4909, !4910}
!4851 = !DILocalVariable(name: "cp", scope: !4849, file: !592, line: 126, type: !66)
!4852 = !DILocalVariable(name: "dir", scope: !4847, file: !592, line: 132, type: !66)
!4853 = !DILocalVariable(name: "base", scope: !4847, file: !592, line: 133, type: !66)
!4854 = !DILocalVariable(name: "file_name", scope: !4847, file: !592, line: 134, type: !45)
!4855 = !DILocalVariable(name: "dir_len", scope: !4856, file: !592, line: 144, type: !195)
!4856 = distinct !DILexicalBlock(scope: !4847, file: !592, line: 143, column: 7)
!4857 = !DILocalVariable(name: "base_len", scope: !4856, file: !592, line: 145, type: !195)
!4858 = !DILocalVariable(name: "add_slash", scope: !4856, file: !592, line: 146, type: !50)
!4859 = !DILocalVariable(name: "fd", scope: !4845, file: !592, line: 162, type: !50)
!4860 = !DILocalVariable(name: "fp", scope: !4843, file: !592, line: 178, type: !4861)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !729, line: 7, baseType: !4863)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !731, line: 241, size: 1728, elements: !4864)
!4864 = !{!4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4863, file: !731, line: 242, baseType: !50, size: 32)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4863, file: !731, line: 247, baseType: !45, size: 64, offset: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4863, file: !731, line: 248, baseType: !45, size: 64, offset: 128)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4863, file: !731, line: 249, baseType: !45, size: 64, offset: 192)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4863, file: !731, line: 250, baseType: !45, size: 64, offset: 256)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4863, file: !731, line: 251, baseType: !45, size: 64, offset: 320)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4863, file: !731, line: 252, baseType: !45, size: 64, offset: 384)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4863, file: !731, line: 253, baseType: !45, size: 64, offset: 448)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4863, file: !731, line: 254, baseType: !45, size: 64, offset: 512)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4863, file: !731, line: 256, baseType: !45, size: 64, offset: 576)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4863, file: !731, line: 257, baseType: !45, size: 64, offset: 640)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4863, file: !731, line: 258, baseType: !45, size: 64, offset: 704)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4863, file: !731, line: 260, baseType: !4878, size: 64, offset: 768)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !731, line: 156, size: 192, elements: !4880)
!4880 = !{!4881, !4882, !4884}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4879, file: !731, line: 157, baseType: !4878, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4879, file: !731, line: 158, baseType: !4883, size: 64, offset: 64)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4879, file: !731, line: 162, baseType: !50, size: 32, offset: 128)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4863, file: !731, line: 262, baseType: !4883, size: 64, offset: 832)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4863, file: !731, line: 264, baseType: !50, size: 32, offset: 896)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4863, file: !731, line: 268, baseType: !50, size: 32, offset: 928)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4863, file: !731, line: 270, baseType: !757, size: 64, offset: 960)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4863, file: !731, line: 274, baseType: !51, size: 16, offset: 1024)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4863, file: !731, line: 275, baseType: !761, size: 8, offset: 1040)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4863, file: !731, line: 276, baseType: !763, size: 8, offset: 1048)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4863, file: !731, line: 280, baseType: !767, size: 64, offset: 1088)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4863, file: !731, line: 289, baseType: !770, size: 64, offset: 1152)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4863, file: !731, line: 297, baseType: !47, size: 64, offset: 1216)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4863, file: !731, line: 298, baseType: !47, size: 64, offset: 1280)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4863, file: !731, line: 299, baseType: !47, size: 64, offset: 1344)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4863, file: !731, line: 300, baseType: !47, size: 64, offset: 1408)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4863, file: !731, line: 302, baseType: !195, size: 64, offset: 1472)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4863, file: !731, line: 303, baseType: !50, size: 32, offset: 1536)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4863, file: !731, line: 305, baseType: !778, size: 160, offset: 1568)
!4901 = !DILocalVariable(name: "res_ptr", scope: !4841, file: !592, line: 190, type: !45)
!4902 = !DILocalVariable(name: "res_size", scope: !4841, file: !592, line: 191, type: !195)
!4903 = !DILocalVariable(name: "c", scope: !4838, file: !592, line: 195, type: !50)
!4904 = !DILocalVariable(name: "buf2", scope: !4838, file: !592, line: 197, type: !4905)
!4905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 408, elements: !4906)
!4906 = !{!4907}
!4907 = !DISubrange(count: 51)
!4908 = !DILocalVariable(name: "l1", scope: !4838, file: !592, line: 198, type: !195)
!4909 = !DILocalVariable(name: "l2", scope: !4838, file: !592, line: 198, type: !195)
!4910 = !DILocalVariable(name: "old_res_ptr", scope: !4838, file: !592, line: 199, type: !45)
!4911 = !DILocation(line: 196, column: 28, scope: !4838, inlinedAt: !4912)
!4912 = distinct !DILocation(line: 589, column: 18, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4831, file: !592, line: 589, column: 3)
!4914 = !DILocation(line: 197, column: 28, scope: !4838, inlinedAt: !4912)
!4915 = !DILocation(line: 403, column: 13, scope: !4831)
!4916 = !DILocation(line: 395, column: 15, scope: !4831)
!4917 = !DILocation(line: 584, column: 15, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4831, file: !592, line: 584, column: 7)
!4919 = !DILocation(line: 584, column: 7, scope: !4831)
!4920 = !DILocation(line: 128, column: 8, scope: !4849, inlinedAt: !4912)
!4921 = !DILocation(line: 126, column: 15, scope: !4849, inlinedAt: !4912)
!4922 = !DILocation(line: 129, column: 10, scope: !4848, inlinedAt: !4912)
!4923 = !DILocation(line: 129, column: 7, scope: !4849, inlinedAt: !4912)
!4924 = !DILocation(line: 138, column: 13, scope: !4847, inlinedAt: !4912)
!4925 = !DILocation(line: 132, column: 19, scope: !4847, inlinedAt: !4912)
!4926 = !DILocation(line: 139, column: 15, scope: !4927, inlinedAt: !4912)
!4927 = distinct !DILexicalBlock(scope: !4847, file: !592, line: 139, column: 11)
!4928 = !DILocation(line: 139, column: 23, scope: !4927, inlinedAt: !4912)
!4929 = !DILocation(line: 139, column: 26, scope: !4927, inlinedAt: !4912)
!4930 = !DILocation(line: 139, column: 33, scope: !4927, inlinedAt: !4912)
!4931 = !DILocation(line: 139, column: 11, scope: !4847, inlinedAt: !4912)
!4932 = !DILocation(line: 140, column: 9, scope: !4927, inlinedAt: !4912)
!4933 = !DILocation(line: 144, column: 26, scope: !4856, inlinedAt: !4912)
!4934 = !DILocation(line: 144, column: 16, scope: !4856, inlinedAt: !4912)
!4935 = !DILocation(line: 145, column: 16, scope: !4856, inlinedAt: !4912)
!4936 = !DILocation(line: 146, column: 34, scope: !4856, inlinedAt: !4912)
!4937 = !DILocation(line: 146, column: 38, scope: !4856, inlinedAt: !4912)
!4938 = !DILocation(line: 146, column: 42, scope: !4856, inlinedAt: !4912)
!4939 = !DILocation(line: 147, column: 48, scope: !4856, inlinedAt: !4912)
!4940 = !DILocation(line: 147, column: 46, scope: !4856, inlinedAt: !4912)
!4941 = !DILocation(line: 147, column: 69, scope: !4856, inlinedAt: !4912)
!4942 = !DILocation(line: 147, column: 30, scope: !4856, inlinedAt: !4912)
!4943 = !DILocation(line: 134, column: 13, scope: !4847, inlinedAt: !4912)
!4944 = !DILocation(line: 148, column: 13, scope: !4856, inlinedAt: !4912)
!4945 = !DILocation(line: 150, column: 13, scope: !4946, inlinedAt: !4912)
!4946 = distinct !DILexicalBlock(scope: !4947, file: !592, line: 149, column: 11)
!4947 = distinct !DILexicalBlock(scope: !4856, file: !592, line: 148, column: 13)
!4948 = !DILocation(line: 151, column: 17, scope: !4946, inlinedAt: !4912)
!4949 = !DILocation(line: 152, column: 34, scope: !4950, inlinedAt: !4912)
!4950 = distinct !DILexicalBlock(scope: !4946, file: !592, line: 151, column: 17)
!4951 = !DILocation(line: 153, column: 41, scope: !4946, inlinedAt: !4912)
!4952 = !DILocation(line: 153, column: 13, scope: !4946, inlinedAt: !4912)
!4953 = !DILocation(line: 157, column: 11, scope: !4847, inlinedAt: !4912)
!4954 = !DILocation(line: 171, column: 16, scope: !4845, inlinedAt: !4912)
!4955 = !DILocation(line: 162, column: 15, scope: !4845, inlinedAt: !4912)
!4956 = !DILocation(line: 173, column: 18, scope: !4844, inlinedAt: !4912)
!4957 = !DILocation(line: 173, column: 15, scope: !4845, inlinedAt: !4912)
!4958 = !DILocation(line: 180, column: 20, scope: !4843, inlinedAt: !4912)
!4959 = !DILocation(line: 178, column: 21, scope: !4843, inlinedAt: !4912)
!4960 = !DILocation(line: 181, column: 22, scope: !4842, inlinedAt: !4912)
!4961 = !DILocation(line: 181, column: 19, scope: !4843, inlinedAt: !4912)
!4962 = !DILocation(line: 184, column: 19, scope: !4963, inlinedAt: !4912)
!4963 = distinct !DILexicalBlock(scope: !4842, file: !592, line: 182, column: 17)
!4964 = !DILocation(line: 186, column: 17, scope: !4963, inlinedAt: !4912)
!4965 = !DILocation(line: 190, column: 25, scope: !4841, inlinedAt: !4912)
!4966 = !DILocation(line: 191, column: 26, scope: !4841, inlinedAt: !4912)
!4967 = !DILocation(line: 193, column: 19, scope: !4841, inlinedAt: !4912)
!4968 = !DILocation(line: 196, column: 23, scope: !4838, inlinedAt: !4912)
!4969 = !DILocation(line: 197, column: 23, scope: !4838, inlinedAt: !4912)
!4970 = !DILocalVariable(name: "__fp", arg: 1, scope: !4971, file: !1006, line: 63, type: !4861)
!4971 = distinct !DISubprogram(name: "getc_unlocked", scope: !1006, file: !1006, line: 63, type: !4972, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !249, variables: !4974)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!50, !4861}
!4974 = !{!4970}
!4975 = !DILocation(line: 63, column: 22, scope: !4971, inlinedAt: !4976)
!4976 = distinct !DILocation(line: 201, column: 27, scope: !4838, inlinedAt: !4912)
!4977 = !DILocation(line: 65, column: 10, scope: !4971, inlinedAt: !4976)
!4978 = !DILocation(line: 195, column: 27, scope: !4838, inlinedAt: !4912)
!4979 = !DILocation(line: 202, column: 27, scope: !4838, inlinedAt: !4912)
!4980 = distinct !{!4980, !4981, !4984}
!4981 = !DILocation(line: 209, column: 27, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4983, file: !592, line: 207, column: 25)
!4983 = distinct !DILexicalBlock(scope: !4838, file: !592, line: 206, column: 27)
!4984 = !DILocation(line: 211, column: 58, scope: !4982)
!4985 = !DILocation(line: 65, column: 10, scope: !4971, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 210, column: 33, scope: !4982, inlinedAt: !4912)
!4987 = !DILocation(line: 63, column: 22, scope: !4971, inlinedAt: !4986)
!4988 = !DILocation(line: 210, column: 29, scope: !4982, inlinedAt: !4912)
!4989 = distinct !{!4989, !4990, !4991}
!4990 = !DILocation(line: 193, column: 19, scope: !4840)
!4991 = !DILocation(line: 241, column: 21, scope: !4840)
!4992 = !DILocation(line: 216, column: 23, scope: !4838, inlinedAt: !4912)
!4993 = !DILocation(line: 217, column: 27, scope: !4994, inlinedAt: !4912)
!4994 = distinct !DILexicalBlock(scope: !4838, file: !592, line: 217, column: 27)
!4995 = !DILocation(line: 217, column: 64, scope: !4994, inlinedAt: !4912)
!4996 = !DILocation(line: 217, column: 27, scope: !4838, inlinedAt: !4912)
!4997 = !DILocation(line: 219, column: 28, scope: !4838, inlinedAt: !4912)
!4998 = !DILocation(line: 198, column: 30, scope: !4838, inlinedAt: !4912)
!4999 = !DILocation(line: 220, column: 28, scope: !4838, inlinedAt: !4912)
!5000 = !DILocation(line: 198, column: 34, scope: !4838, inlinedAt: !4912)
!5001 = !DILocation(line: 199, column: 29, scope: !4838, inlinedAt: !4912)
!5002 = !DILocation(line: 222, column: 36, scope: !5003, inlinedAt: !4912)
!5003 = distinct !DILexicalBlock(scope: !4838, file: !592, line: 222, column: 27)
!5004 = !DILocation(line: 222, column: 27, scope: !4838, inlinedAt: !4912)
!5005 = !DILocation(line: 225, column: 63, scope: !5006, inlinedAt: !4912)
!5006 = distinct !DILexicalBlock(scope: !5003, file: !592, line: 223, column: 25)
!5007 = !DILocation(line: 225, column: 46, scope: !5006, inlinedAt: !4912)
!5008 = !DILocation(line: 226, column: 25, scope: !5006, inlinedAt: !4912)
!5009 = !DILocation(line: 229, column: 36, scope: !5010, inlinedAt: !4912)
!5010 = distinct !DILexicalBlock(scope: !5003, file: !592, line: 228, column: 25)
!5011 = !DILocation(line: 230, column: 73, scope: !5010, inlinedAt: !4912)
!5012 = !DILocation(line: 230, column: 46, scope: !5010, inlinedAt: !4912)
!5013 = !DILocation(line: 232, column: 35, scope: !5014, inlinedAt: !4912)
!5014 = distinct !DILexicalBlock(scope: !4838, file: !592, line: 232, column: 27)
!5015 = !DILocation(line: 232, column: 27, scope: !4838, inlinedAt: !4912)
!5016 = !DILocation(line: 236, column: 27, scope: !5017, inlinedAt: !4912)
!5017 = distinct !DILexicalBlock(scope: !5014, file: !592, line: 233, column: 25)
!5018 = !DILocation(line: 237, column: 27, scope: !5017, inlinedAt: !4912)
!5019 = !DILocation(line: 241, column: 21, scope: !4839, inlinedAt: !4912)
!5020 = !DILocation(line: 239, column: 39, scope: !4838, inlinedAt: !4912)
!5021 = !DILocation(line: 239, column: 50, scope: !4838, inlinedAt: !4912)
!5022 = !DILocation(line: 239, column: 61, scope: !4838, inlinedAt: !4912)
!5023 = !DILocalVariable(name: "__dest", arg: 1, scope: !5024, file: !5025, line: 88, type: !5028)
!5024 = distinct !DISubprogram(name: "strcpy", scope: !5025, file: !5025, line: 88, type: !5026, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !249, variables: !5029)
!5025 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!45, !5028, !4262}
!5028 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!5029 = !{!5023, !5030}
!5030 = !DILocalVariable(name: "__src", arg: 2, scope: !5024, file: !5025, line: 88, type: !4262)
!5031 = !DILocation(line: 88, column: 1, scope: !5024, inlinedAt: !5032)
!5032 = distinct !DILocation(line: 239, column: 23, scope: !4838, inlinedAt: !4912)
!5033 = !DILocation(line: 90, column: 49, scope: !5024, inlinedAt: !5032)
!5034 = !DILocation(line: 90, column: 10, scope: !5024, inlinedAt: !5032)
!5035 = !DILocation(line: 88, column: 1, scope: !5024, inlinedAt: !5036)
!5036 = distinct !DILocation(line: 240, column: 23, scope: !4838, inlinedAt: !4912)
!5037 = !DILocation(line: 90, column: 49, scope: !5024, inlinedAt: !5036)
!5038 = !DILocation(line: 90, column: 10, scope: !5024, inlinedAt: !5036)
!5039 = !DILocation(line: 193, column: 19, scope: !4839, inlinedAt: !4912)
!5040 = !DILocation(line: 242, column: 19, scope: !4841, inlinedAt: !4912)
!5041 = !DILocation(line: 243, column: 32, scope: !5042, inlinedAt: !4912)
!5042 = distinct !DILexicalBlock(scope: !4841, file: !592, line: 243, column: 23)
!5043 = !DILocation(line: 243, column: 23, scope: !4841, inlinedAt: !4912)
!5044 = !DILocation(line: 247, column: 33, scope: !5045, inlinedAt: !4912)
!5045 = distinct !DILexicalBlock(scope: !5042, file: !592, line: 246, column: 21)
!5046 = !DILocation(line: 247, column: 45, scope: !5045, inlinedAt: !4912)
!5047 = !DILocation(line: 253, column: 11, scope: !4845, inlinedAt: !4912)
!5048 = !DILocation(line: 377, column: 23, scope: !4847, inlinedAt: !4912)
!5049 = !DILocation(line: 378, column: 5, scope: !4847, inlinedAt: !4912)
!5050 = !DILocation(line: 396, column: 15, scope: !4831)
!5051 = !DILocation(line: 590, column: 8, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !4913, file: !592, line: 589, column: 3)
!5053 = !DILocation(line: 590, column: 17, scope: !5052)
!5054 = !DILocation(line: 589, column: 3, scope: !4913)
!5055 = !DILocation(line: 592, column: 9, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5052, file: !592, line: 592, column: 9)
!5057 = !DILocation(line: 592, column: 35, scope: !5056)
!5058 = !DILocation(line: 593, column: 9, scope: !5056)
!5059 = !DILocation(line: 593, column: 24, scope: !5056)
!5060 = !DILocation(line: 593, column: 31, scope: !5056)
!5061 = !DILocation(line: 593, column: 34, scope: !5056)
!5062 = !DILocation(line: 593, column: 45, scope: !5056)
!5063 = !DILocation(line: 592, column: 9, scope: !5052)
!5064 = !DILocation(line: 595, column: 29, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5056, file: !592, line: 594, column: 7)
!5066 = !DILocation(line: 595, column: 27, scope: !5065)
!5067 = !DILocation(line: 595, column: 46, scope: !5065)
!5068 = !DILocation(line: 596, column: 9, scope: !5065)
!5069 = !DILocation(line: 591, column: 19, scope: !5052)
!5070 = !DILocation(line: 591, column: 36, scope: !5052)
!5071 = !DILocation(line: 591, column: 16, scope: !5052)
!5072 = !DILocation(line: 591, column: 52, scope: !5052)
!5073 = !DILocation(line: 591, column: 69, scope: !5052)
!5074 = !DILocation(line: 591, column: 49, scope: !5052)
!5075 = distinct !{!5075, !5054, !5076}
!5076 = !DILocation(line: 597, column: 7, scope: !4913)
!5077 = !DILocation(line: 602, column: 7, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !4831, file: !592, line: 602, column: 7)
!5079 = !DILocation(line: 602, column: 18, scope: !5078)
!5080 = !DILocation(line: 602, column: 7, scope: !4831)
!5081 = !DILocation(line: 612, column: 3, scope: !4831)
