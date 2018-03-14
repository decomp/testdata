; ModuleID = 'coreutils-8.27/src/comm.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.linebuffer = type { i64, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... FILE1 FILE2\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Compare sorted files FILE1 and FILE2 line by line.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"\0AWhen FILE1 or FILE2 (not both) is -, read standard input.\0A\00", align 1
@.str.4 = private unnamed_addr constant [189 x i8] c"\0AWith no options, produce three-column output.  Column one contains\0Alines unique to FILE1, column two contains lines unique to FILE2,\0Aand column three contains lines common to both files.\0A\00", align 1
@.str.5 = private unnamed_addr constant [192 x i8] c"\0A  -1              suppress column 1 (lines unique to FILE1)\0A  -2              suppress column 2 (lines unique to FILE2)\0A  -3              suppress column 3 (lines that appear in both files)\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0A  --check-order     check that the input is correctly sorted, even\0A                      if all input lines are pairable\0A  --nocheck-order   do not check that the input is correctly sorted\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"  --output-delimiter=STR  separate columns with STR\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"  --total           output a summary\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"\0ANote, comparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1
@.str.13 = private unnamed_addr constant [156 x i8] c"\0AExamples:\0A  %s -12 file1 file2  Print only lines present in both file1 and file2.\0A  %s -3 file1 file2  Print lines in file1 not in file2, and vice versa.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.37 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 1, !dbg !0
@only_file_1 = internal unnamed_addr global i1 false, align 1
@only_file_2 = internal unnamed_addr global i1 false, align 1
@both = internal unnamed_addr global i1 false, align 1
@seen_unpairable = internal unnamed_addr global i1 false, align 1
@issued_disorder_warning = internal unnamed_addr global [2 x i8] zeroinitializer, align 1, !dbg !47
@check_input_order = internal unnamed_addr global i32 0, align 4, !dbg !54
@total_option = internal unnamed_addr global i1 false, align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"123z\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !78
@delim = internal unnamed_addr global i1 false, align 1
@col_sep_len = internal unnamed_addr global i64 0, align 8, !dbg !96
@optarg = external local_unnamed_addr global i8*, align 8
@col_sep = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), align 8, !dbg !101
@.str.19 = private unnamed_addr constant [37 x i8] c"multiple output delimiters specified\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.50 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"%s%s%s%s%s%s%s%c\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"file %d is not in sorted order\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"check-order\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"nocheck-order\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), align 8, !dbg !103
@.str.26 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !109
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !114
@.str.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.30 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !117
@.str.54 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.55 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !124
@.str.68 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.69 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.70 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.73, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.74, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.75, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.76, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.79, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.80, i32 0, i32 0), i8* null], align 16, !dbg !131
@.str.71 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.72 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.73 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.74 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.75 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.76 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.77 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.78 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.79 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.80 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !159
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !166
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !177
@.str.11.81 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.82 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.83 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.84 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.85 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.86 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.87 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !184
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !191
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !179
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !193
@.str.96 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.97 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.98 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.99 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.100 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.101 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.102 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.103 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.104 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.105 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.106 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.107 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.108 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.109 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.112 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.113 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.114 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.115 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.116 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.117 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !199
@.str.1.130 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.135 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.136 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !208
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !245
@.str.3.154 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.155 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.156 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.157 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.158 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.159 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !665 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !669, metadata !670), !dbg !671
  %2 = icmp eq i32 %0, 0, !dbg !672
  br i1 %2, label %8, label %3, !dbg !674

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !675, !tbaa !677
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !675
  %6 = load i8*, i8** @program_name, align 8, !dbg !675, !tbaa !677
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !675
  br label %63, !dbg !675

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !681
  %10 = load i8*, i8** @program_name, align 8, !dbg !681, !tbaa !677
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12, !dbg !681
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !683
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !683, !tbaa !677
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !683
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !684
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !677
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !684
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !685
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !677
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !685
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !686
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !677
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !686
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !687
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !677
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12, !dbg !687
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !688
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !677
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12, !dbg !688
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 5) #12, !dbg !689
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !677
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #12, !dbg !689
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 5) #12, !dbg !690
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !690, !tbaa !677
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #12, !dbg !690
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 5) #12, !dbg !691
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !691, !tbaa !677
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #12, !dbg !691
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 5) #12, !dbg !692
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !692, !tbaa !677
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #12, !dbg !692
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !693
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !693, !tbaa !677
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #12, !dbg !693
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.13, i64 0, i64 0), i32 5) #12, !dbg !694
  %46 = load i8*, i8** @program_name, align 8, !dbg !694, !tbaa !677
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* %46, i8* %46) #12, !dbg !694
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !66, metadata !670) #12, !dbg !695
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 0, metadata !66, metadata !670) #12, !dbg !695
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 5) #12, !dbg !697
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0)) #12, !dbg !697
  %50 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !698
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !74, metadata !670) #12, !dbg !699
  %51 = icmp eq i8* %50, null, !dbg !700
  br i1 %51, label %58, label %52, !dbg !702

; <label>:52:                                     ; preds = %8
  %53 = tail call i32 @strncmp(i8* nonnull %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i64 3) #14, !dbg !703
  %54 = icmp eq i32 %53, 0, !dbg !703
  br i1 %54, label %58, label %55, !dbg !704

; <label>:55:                                     ; preds = %52
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.37, i64 0, i64 0), i32 5) #12, !dbg !705
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !705
  br label %58, !dbg !707

; <label>:58:                                     ; preds = %8, %52, %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i32 5) #12, !dbg !708
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !708
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i64 0, i64 0), i32 5) #12, !dbg !709
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #12, !dbg !709
  br label %63

; <label>:63:                                     ; preds = %58, %3
  tail call void @exit(i32 %0) #15, !dbg !710
  unreachable, !dbg !710
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !711 {
  %3 = alloca [2 x [4 x %struct.linebuffer]], align 16
  tail call void @llvm.dbg.declare(metadata [2 x [4 x %struct.linebuffer]]* %3, metadata !719, metadata !670), !dbg !819
  %4 = alloca [2 x [4 x %struct.linebuffer*]], align 16
  tail call void @llvm.dbg.declare(metadata [2 x [4 x %struct.linebuffer*]]* %4, metadata !734, metadata !670), !dbg !821
  %5 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !810, metadata !670), !dbg !822
  %6 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %6, metadata !816, metadata !670), !dbg !823
  %7 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %7, metadata !817, metadata !670), !dbg !824
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !716, metadata !670), !dbg !825
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !717, metadata !670), !dbg !826
  %8 = load i8*, i8** %1, align 8, !dbg !827, !tbaa !677
  tail call void @set_program_name(i8* %8) #12, !dbg !828
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #12, !dbg !829
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !830
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #12, !dbg !831
  %12 = tail call zeroext i1 @hard_locale(i32 3) #12, !dbg !832
  %13 = zext i1 %12 to i8, !dbg !833
  store i8 %13, i8* @hard_LC_COLLATE, align 1, !dbg !833, !tbaa !834
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !836
  store i1 true, i1* @only_file_1, align 1
  store i1 true, i1* @only_file_2, align 1
  store i1 true, i1* @both, align 1
  store i1 false, i1* @seen_unpairable, align 1
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !837, !tbaa !834
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !838, !tbaa !834
  store i32 0, i32* @check_input_order, align 4, !dbg !839, !tbaa !840
  store i1 false, i1* @total_option, align 1
  br label %15, !dbg !841

; <label>:15:                                     ; preds = %46, %2
  %16 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !842
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !718, metadata !670), !dbg !843
  switch i32 %16, label %51 [
    i32 -1, label %52
    i32 49, label %17
    i32 50, label %18
    i32 51, label %19
    i32 122, label %20
    i32 129, label %21
    i32 128, label %22
    i32 130, label %23
    i32 131, label %45
    i32 -130, label %47
    i32 -131, label %48
  ], !dbg !841

; <label>:17:                                     ; preds = %15
  store i1 false, i1* @only_file_1, align 1
  br label %46, !dbg !844

; <label>:18:                                     ; preds = %15
  store i1 false, i1* @only_file_2, align 1
  br label %46, !dbg !846

; <label>:19:                                     ; preds = %15
  store i1 false, i1* @both, align 1
  br label %46, !dbg !847

; <label>:20:                                     ; preds = %15
  store i1 true, i1* @delim, align 1
  br label %46, !dbg !848

; <label>:21:                                     ; preds = %15
  store i32 2, i32* @check_input_order, align 4, !dbg !849, !tbaa !840
  br label %46, !dbg !850

; <label>:22:                                     ; preds = %15
  store i32 1, i32* @check_input_order, align 4, !dbg !851, !tbaa !840
  br label %46, !dbg !852

; <label>:23:                                     ; preds = %15
  %24 = load i64, i64* @col_sep_len, align 8, !dbg !853, !tbaa !855
  %25 = icmp eq i64 %24, 0, !dbg !853
  br i1 %25, label %26, label %28, !dbg !857

; <label>:26:                                     ; preds = %23
  %27 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !858, !tbaa !677
  br label %36, !dbg !857

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** @col_sep, align 8, !dbg !859, !tbaa !677
  %30 = load i8*, i8** @optarg, align 8, !dbg !859, !tbaa !677
  %31 = tail call i32 @strcmp(i8* %29, i8* %30) #14, !dbg !859
  %32 = icmp eq i32 %31, 0, !dbg !859
  %33 = ptrtoint i8* %30 to i64, !dbg !860
  br i1 %32, label %36, label %34, !dbg !860

; <label>:34:                                     ; preds = %28
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !861
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %35) #12, !dbg !861
  unreachable, !dbg !861

; <label>:36:                                     ; preds = %26, %28
  %37 = phi i64 [ %27, %26 ], [ %33, %28 ], !dbg !858
  store i64 %37, i64* bitcast (i8** @col_sep to i64*), align 8, !dbg !862, !tbaa !677
  %38 = inttoptr i64 %37 to i8*, !dbg !863
  %39 = load i8, i8* %38, align 1, !dbg !864, !tbaa !840
  %40 = icmp eq i8 %39, 0, !dbg !864
  br i1 %40, label %43, label %41, !dbg !864

; <label>:41:                                     ; preds = %36
  %42 = tail call i64 @strlen(i8* %38) #14, !dbg !865
  br label %43, !dbg !864

; <label>:43:                                     ; preds = %36, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %36 ], !dbg !864
  store i64 %44, i64* @col_sep_len, align 8, !dbg !866, !tbaa !855
  br label %46, !dbg !867

; <label>:45:                                     ; preds = %15
  store i1 true, i1* @total_option, align 1
  br label %46, !dbg !868

; <label>:46:                                     ; preds = %45, %43, %22, %21, %20, %19, %18, %17
  br label %15, !dbg !842, !llvm.loop !869

; <label>:47:                                     ; preds = %15
  tail call void @usage(i32 0) #16, !dbg !871
  unreachable, !dbg !871

; <label>:48:                                     ; preds = %15
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !872, !tbaa !677
  %50 = load i8*, i8** @Version, align 8, !dbg !872, !tbaa !677
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* null) #12, !dbg !872
  tail call void @exit(i32 0) #15, !dbg !872
  unreachable, !dbg !872

; <label>:51:                                     ; preds = %15
  tail call void @usage(i32 1) #16, !dbg !873
  unreachable, !dbg !873

; <label>:52:                                     ; preds = %15
  %53 = load i64, i64* @col_sep_len, align 8, !dbg !874, !tbaa !855
  %54 = icmp eq i64 %53, 0, !dbg !874
  br i1 %54, label %55, label %56, !dbg !876

; <label>:55:                                     ; preds = %52
  store i64 1, i64* @col_sep_len, align 8, !dbg !877, !tbaa !855
  br label %56, !dbg !878

; <label>:56:                                     ; preds = %52, %55
  %57 = load i32, i32* @optind, align 4, !dbg !879, !tbaa !881
  %58 = sub nsw i32 %0, %57, !dbg !883
  %59 = icmp slt i32 %58, 2, !dbg !884
  br i1 %59, label %60, label %72, !dbg !885

; <label>:60:                                     ; preds = %56
  %61 = icmp slt i32 %57, %0, !dbg !886
  br i1 %61, label %64, label %62, !dbg !889

; <label>:62:                                     ; preds = %60
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 5) #12, !dbg !890
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %63) #12, !dbg !891
  br label %71, !dbg !891

; <label>:64:                                     ; preds = %60
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !892
  %66 = add nsw i32 %0, -1, !dbg !893
  %67 = sext i32 %66 to i64, !dbg !894
  %68 = getelementptr inbounds i8*, i8** %1, i64 %67, !dbg !894
  %69 = load i8*, i8** %68, align 8, !dbg !894, !tbaa !677
  %70 = tail call i8* @quote(i8* %69) #12, !dbg !895
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65, i8* %70) #12, !dbg !896
  br label %71

; <label>:71:                                     ; preds = %64, %62
  tail call void @usage(i32 1) #16, !dbg !897
  unreachable, !dbg !897

; <label>:72:                                     ; preds = %56
  %73 = icmp eq i32 %58, 2, !dbg !898
  br i1 %73, label %82, label %74, !dbg !900

; <label>:74:                                     ; preds = %72
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !901
  %76 = load i32, i32* @optind, align 4, !dbg !903, !tbaa !881
  %77 = add nsw i32 %76, 2, !dbg !904
  %78 = sext i32 %77 to i64, !dbg !905
  %79 = getelementptr inbounds i8*, i8** %1, i64 %78, !dbg !905
  %80 = load i8*, i8** %79, align 8, !dbg !905, !tbaa !677
  %81 = tail call i8* @quote(i8* %80) #12, !dbg !906
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75, i8* %81) #12, !dbg !907
  tail call void @usage(i32 1) #16, !dbg !908
  unreachable, !dbg !908

; <label>:82:                                     ; preds = %72
  %83 = sext i32 %57 to i64, !dbg !909
  %84 = getelementptr inbounds i8*, i8** %1, i64 %83, !dbg !909
  tail call void @llvm.dbg.value(metadata i8** %84, i64 0, metadata !724, metadata !670) #12, !dbg !910
  %85 = bitcast [2 x [4 x %struct.linebuffer]]* %3 to i8*, !dbg !911
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %85) #12, !dbg !911
  %86 = bitcast [2 x [4 x %struct.linebuffer*]]* %4 to i8*, !dbg !912
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %86) #12, !dbg !912
  tail call void @llvm.dbg.declare(metadata [3 x i64]* undef, metadata !796, metadata !670) #12, !dbg !913
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !796, metadata !914) #12, !dbg !913
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !796, metadata !915) #12, !dbg !913
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !796, metadata !916) #12, !dbg !913
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !799, metadata !670) #12, !dbg !917
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !799, metadata !670) #12, !dbg !917
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !800, metadata !670) #12, !dbg !918
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !800, metadata !670) #12, !dbg !918
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !799, metadata !670) #12, !dbg !917
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !800, metadata !670) #12, !dbg !918
  %87 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 0, !dbg !919
  call void @initbuffer(%struct.linebuffer* nonnull %87) #12, !dbg !926
  %88 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 0, !dbg !927
  store %struct.linebuffer* %87, %struct.linebuffer** %88, align 16, !dbg !928, !tbaa !677
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !800, metadata !670) #12, !dbg !918
  %89 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 1, !dbg !919
  call void @initbuffer(%struct.linebuffer* %89) #12, !dbg !926
  %90 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 1, !dbg !927
  store %struct.linebuffer* %89, %struct.linebuffer** %90, align 8, !dbg !928, !tbaa !677
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !800, metadata !670) #12, !dbg !918
  %91 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 2, !dbg !919
  call void @initbuffer(%struct.linebuffer* %91) #12, !dbg !926
  %92 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 2, !dbg !927
  store %struct.linebuffer* %91, %struct.linebuffer** %92, align 16, !dbg !928, !tbaa !677
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !800, metadata !670) #12, !dbg !918
  %93 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 3, !dbg !919
  call void @initbuffer(%struct.linebuffer* %93) #12, !dbg !926
  %94 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 3, !dbg !927
  store %struct.linebuffer* %93, %struct.linebuffer** %94, align 8, !dbg !928, !tbaa !677
  %95 = load i8*, i8** %84, align 8, !dbg !929, !tbaa !677
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #14, !dbg !929
  %97 = icmp eq i32 %96, 0, !dbg !929
  br i1 %97, label %111, label %113, !dbg !929

; <label>:98:                                     ; preds = %124
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !800, metadata !670) #12, !dbg !918
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !800, metadata !670) #12, !dbg !918
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !799, metadata !670) #12, !dbg !917
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !800, metadata !670) #12, !dbg !918
  %99 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 0, !dbg !919
  call void @initbuffer(%struct.linebuffer* %99) #12, !dbg !926
  %100 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 0, !dbg !927
  store %struct.linebuffer* %99, %struct.linebuffer** %100, align 16, !dbg !928, !tbaa !677
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !800, metadata !670) #12, !dbg !918
  %101 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 1, !dbg !919
  call void @initbuffer(%struct.linebuffer* %101) #12, !dbg !926
  %102 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 1, !dbg !927
  store %struct.linebuffer* %101, %struct.linebuffer** %102, align 8, !dbg !928, !tbaa !677
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !800, metadata !670) #12, !dbg !918
  %103 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 2, !dbg !919
  call void @initbuffer(%struct.linebuffer* %103) #12, !dbg !926
  %104 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 2, !dbg !927
  store %struct.linebuffer* %103, %struct.linebuffer** %104, align 16, !dbg !928, !tbaa !677
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !800, metadata !670) #12, !dbg !918
  %105 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 3, !dbg !919
  call void @initbuffer(%struct.linebuffer* %105) #12, !dbg !926
  %106 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 3, !dbg !927
  store %struct.linebuffer* %105, %struct.linebuffer** %106, align 8, !dbg !928, !tbaa !677
  %107 = getelementptr inbounds i8*, i8** %84, i64 1, !dbg !929
  %108 = load i8*, i8** %107, align 8, !dbg !929, !tbaa !677
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #14, !dbg !929
  %110 = icmp eq i32 %109, 0, !dbg !929
  br i1 %110, label %364, label %362, !dbg !929

; <label>:111:                                    ; preds = %82
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !930, !tbaa !677
  br label %115, !dbg !929

; <label>:113:                                    ; preds = %82
  %114 = call %struct._IO_FILE* @fopen_safer(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #12, !dbg !931
  br label %115, !dbg !929

; <label>:115:                                    ; preds = %113, %111
  %116 = phi %struct._IO_FILE* [ %112, %111 ], [ %114, %113 ], !dbg !929
  %117 = icmp eq %struct._IO_FILE* %116, null, !dbg !932
  br i1 %117, label %118, label %124, !dbg !934

; <label>:118:                                    ; preds = %366, %115
  %119 = phi i8** [ %84, %115 ], [ %107, %366 ]
  %120 = tail call i32* @__errno_location() #17, !dbg !935
  %121 = load i32, i32* %120, align 4, !dbg !935, !tbaa !881
  %122 = load i8*, i8** %119, align 8, !dbg !935, !tbaa !677
  %123 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %122) #12, !dbg !935
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %123) #12, !dbg !935
  unreachable, !dbg !935

; <label>:124:                                    ; preds = %115
  call void @fadvise(%struct._IO_FILE* nonnull %116, i32 2) #12, !dbg !936
  %125 = load i1, i1* @delim, align 1
  %126 = select i1 %125, i8 0, i8 10
  %127 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %87, %struct._IO_FILE* nonnull %116, i8 signext %126) #12, !dbg !937
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %116, i64 0, metadata !938, metadata !670) #12, !dbg !944
  %128 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 0, !dbg !947
  %129 = load i32, i32* %128, align 8, !dbg !947, !tbaa !948
  %130 = and i32 %129, 32, !dbg !947
  %131 = icmp eq i32 %130, 0, !dbg !951
  br i1 %131, label %98, label %132, !dbg !952

; <label>:132:                                    ; preds = %369, %124
  %133 = phi i8** [ %84, %124 ], [ %107, %369 ]
  %134 = tail call i32* @__errno_location() #17, !dbg !953
  %135 = load i32, i32* %134, align 4, !dbg !953, !tbaa !881
  %136 = load i8*, i8** %133, align 8, !dbg !953, !tbaa !677
  %137 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %136) #12, !dbg !953
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %137) #12, !dbg !953
  unreachable, !dbg !953

; <label>:138:                                    ; preds = %381, %349
  %139 = phi i32 [ %357, %349 ], [ 0, %381 ]
  %140 = phi i32 [ %358, %349 ], [ 0, %381 ]
  %141 = phi i32 [ %351, %349 ], [ 0, %381 ]
  %142 = phi i32 [ %350, %349 ], [ 0, %381 ]
  %143 = phi %struct.linebuffer* [ %356, %349 ], [ %372, %381 ]
  %144 = phi %struct.linebuffer* [ %352, %349 ], [ %127, %381 ]
  %145 = phi i64 [ %355, %349 ], [ 0, %381 ]
  %146 = phi i64 [ %354, %349 ], [ 0, %381 ]
  %147 = phi i64 [ %353, %349 ], [ 0, %381 ]
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !796, metadata !915) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !796, metadata !914) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !796, metadata !916) #12, !dbg !913
  call void @llvm.dbg.declare(metadata [2 x i8]* undef, metadata !803, metadata !670) #12, !dbg !954
  %148 = icmp eq %struct.linebuffer* %144, null, !dbg !955
  br i1 %148, label %149, label %150, !dbg !956

; <label>:149:                                    ; preds = %138
  store i1 true, i1* @seen_unpairable, align 1
  br label %225, !dbg !957

; <label>:150:                                    ; preds = %138
  %151 = icmp eq %struct.linebuffer* %143, null, !dbg !960
  br i1 %151, label %211, label %152, !dbg !961

; <label>:152:                                    ; preds = %150
  %153 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !962, !tbaa !834, !range !963
  %154 = icmp eq i8 %153, 0, !dbg !962
  br i1 %154, label %167, label %155, !dbg !964

; <label>:155:                                    ; preds = %152
  %156 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %144, i64 0, i32 2, !dbg !965
  %157 = load i8*, i8** %156, align 8, !dbg !965, !tbaa !966
  %158 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %144, i64 0, i32 1, !dbg !968
  %159 = load i64, i64* %158, align 8, !dbg !968, !tbaa !969
  %160 = add i64 %159, -1, !dbg !970
  %161 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %143, i64 0, i32 2, !dbg !971
  %162 = load i8*, i8** %161, align 8, !dbg !971, !tbaa !966
  %163 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %143, i64 0, i32 1, !dbg !972
  %164 = load i64, i64* %163, align 8, !dbg !972, !tbaa !969
  %165 = add i64 %164, -1, !dbg !973
  %166 = call i32 @xmemcoll(i8* %157, i64 %160, i8* %162, i64 %165) #12, !dbg !974
  call void @llvm.dbg.value(metadata i32 %166, i64 0, metadata !801, metadata !670) #12, !dbg !975
  br label %186, !dbg !976

; <label>:167:                                    ; preds = %152
  %168 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %144, i64 0, i32 1, !dbg !977
  %169 = load i64, i64* %168, align 8, !dbg !977, !tbaa !969
  %170 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %143, i64 0, i32 1, !dbg !977
  %171 = load i64, i64* %170, align 8, !dbg !977, !tbaa !969
  %172 = icmp ult i64 %169, %171, !dbg !977
  %173 = select i1 %172, %struct.linebuffer* %144, %struct.linebuffer* %143, !dbg !977
  %174 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %173, i64 0, i32 1, !dbg !977
  %175 = load i64, i64* %174, align 8, !dbg !977, !tbaa !969
  %176 = add i64 %175, -1, !dbg !978
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !804, metadata !670) #12, !dbg !979
  %177 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %144, i64 0, i32 2, !dbg !980
  %178 = load i8*, i8** %177, align 8, !dbg !980, !tbaa !966
  %179 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %143, i64 0, i32 2, !dbg !981
  %180 = load i8*, i8** %179, align 8, !dbg !981, !tbaa !966
  %181 = call i32 @memcmp(i8* %178, i8* %180, i64 %176) #14, !dbg !982
  call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !801, metadata !670) #12, !dbg !975
  %182 = icmp eq i32 %181, 0, !dbg !983
  br i1 %182, label %183, label %212, !dbg !985

; <label>:183:                                    ; preds = %167
  %184 = icmp ne i64 %169, %171, !dbg !986
  %185 = zext i1 %184 to i32, !dbg !986
  br i1 %172, label %211, label %186

; <label>:186:                                    ; preds = %183, %155
  %187 = phi i32 [ %166, %155 ], [ %185, %183 ]
  call void @llvm.dbg.value(metadata i32 %187, i64 0, metadata !801, metadata !670) #12, !dbg !975
  %188 = icmp eq i32 %187, 0, !dbg !987
  br i1 %188, label %189, label %212, !dbg !988

; <label>:189:                                    ; preds = %186
  %190 = add i64 %145, 1, !dbg !989
  call void @llvm.dbg.value(metadata i64 %190, i64 0, metadata !796, metadata !916) #12, !dbg !913
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !991, !tbaa !677
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, i64 0, metadata !992, metadata !670) #12, !dbg !1001
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %191, i64 0, metadata !999, metadata !670) #12, !dbg !1003
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !1000, metadata !670) #12, !dbg !1004
  %192 = load i1, i1* @both, align 1
  br i1 %192, label %193, label %241, !dbg !1005

; <label>:193:                                    ; preds = %189
  %194 = load i1, i1* @only_file_1, align 1
  br i1 %194, label %195, label %199, !dbg !1007

; <label>:195:                                    ; preds = %193
  %196 = load i8*, i8** @col_sep, align 8, !dbg !1008, !tbaa !677
  %197 = load i64, i64* @col_sep_len, align 8, !dbg !1008, !tbaa !855
  %198 = call i64 @fwrite_unlocked(i8* %196, i64 1, i64 %197, %struct._IO_FILE* %191) #12, !dbg !1008
  br label %199, !dbg !1008

; <label>:199:                                    ; preds = %195, %193
  %200 = load i1, i1* @only_file_2, align 1
  br i1 %200, label %201, label %205, !dbg !1010

; <label>:201:                                    ; preds = %199
  %202 = load i8*, i8** @col_sep, align 8, !dbg !1011, !tbaa !677
  %203 = load i64, i64* @col_sep_len, align 8, !dbg !1011, !tbaa !855
  %204 = call i64 @fwrite_unlocked(i8* %202, i64 1, i64 %203, %struct._IO_FILE* %191) #12, !dbg !1011
  br label %205, !dbg !1011

; <label>:205:                                    ; preds = %201, %199
  %206 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %143, i64 0, i32 2, !dbg !1013
  %207 = load i8*, i8** %206, align 8, !dbg !1013, !tbaa !966
  %208 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %143, i64 0, i32 1, !dbg !1013
  %209 = load i64, i64* %208, align 8, !dbg !1013, !tbaa !969
  %210 = call i64 @fwrite_unlocked(i8* %207, i64 1, i64 %209, %struct._IO_FILE* %191) #12, !dbg !1013
  br label %241, !dbg !1014

; <label>:211:                                    ; preds = %183, %150
  store i1 true, i1* @seen_unpairable, align 1
  br label %215, !dbg !957

; <label>:212:                                    ; preds = %186, %167
  %213 = phi i32 [ %187, %186 ], [ %181, %167 ]
  store i1 true, i1* @seen_unpairable, align 1
  %214 = icmp slt i32 %213, 1, !dbg !1015
  br i1 %214, label %215, label %225, !dbg !957

; <label>:215:                                    ; preds = %212, %211
  %216 = add i64 %146, 1, !dbg !1017
  call void @llvm.dbg.value(metadata i64 %216, i64 0, metadata !796, metadata !914) #12, !dbg !913
  call void @llvm.dbg.value(metadata %struct.linebuffer* %144, i64 0, metadata !992, metadata !670) #12, !dbg !1019
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1000, metadata !670) #12, !dbg !1021
  %217 = load i1, i1* @only_file_1, align 1
  br i1 %217, label %218, label %241, !dbg !1022

; <label>:218:                                    ; preds = %215
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1023, !tbaa !677
  %220 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %144, i64 0, i32 2, !dbg !1024
  %221 = load i8*, i8** %220, align 8, !dbg !1024, !tbaa !966
  %222 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %144, i64 0, i32 1, !dbg !1024
  %223 = load i64, i64* %222, align 8, !dbg !1024, !tbaa !969
  %224 = call i64 @fwrite_unlocked(i8* %221, i64 1, i64 %223, %struct._IO_FILE* %219) #12, !dbg !1024
  br label %241, !dbg !1025

; <label>:225:                                    ; preds = %212, %149
  %226 = add i64 %147, 1, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %226, i64 0, metadata !796, metadata !915) #12, !dbg !913
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1028, !tbaa !677
  call void @llvm.dbg.value(metadata %struct.linebuffer* %143, i64 0, metadata !992, metadata !670) #12, !dbg !1029
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %227, i64 0, metadata !999, metadata !670) #12, !dbg !1031
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1000, metadata !670) #12, !dbg !1032
  %228 = load i1, i1* @only_file_2, align 1
  br i1 %228, label %229, label %314, !dbg !1033

; <label>:229:                                    ; preds = %225
  %230 = load i1, i1* @only_file_1, align 1
  br i1 %230, label %231, label %235, !dbg !1034

; <label>:231:                                    ; preds = %229
  %232 = load i8*, i8** @col_sep, align 8, !dbg !1035, !tbaa !677
  %233 = load i64, i64* @col_sep_len, align 8, !dbg !1035, !tbaa !855
  %234 = call i64 @fwrite_unlocked(i8* %232, i64 1, i64 %233, %struct._IO_FILE* %227) #12, !dbg !1035
  br label %235, !dbg !1035

; <label>:235:                                    ; preds = %231, %229
  %236 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %143, i64 0, i32 2, !dbg !1037
  %237 = load i8*, i8** %236, align 8, !dbg !1037, !tbaa !966
  %238 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %143, i64 0, i32 1, !dbg !1037
  %239 = load i64, i64* %238, align 8, !dbg !1037, !tbaa !969
  %240 = call i64 @fwrite_unlocked(i8* %237, i64 1, i64 %239, %struct._IO_FILE* %227) #12, !dbg !1037
  br label %314, !dbg !1038

; <label>:241:                                    ; preds = %218, %215, %205, %189
  %242 = phi i8 [ 1, %189 ], [ 1, %205 ], [ 0, %218 ], [ 0, %215 ]
  %243 = phi i64 [ %146, %189 ], [ %146, %205 ], [ %216, %218 ], [ %216, %215 ]
  %244 = phi i64 [ %190, %189 ], [ %190, %205 ], [ %145, %218 ], [ %145, %215 ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !799, metadata !670) #12, !dbg !917
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !799, metadata !670) #12, !dbg !917
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !799, metadata !670) #12, !dbg !917
  %245 = add nsw i32 %141, 1, !dbg !1039
  %246 = and i32 %245, 3, !dbg !1044
  %247 = zext i32 %246 to i64, !dbg !1045
  %248 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %247, !dbg !1045
  %249 = load %struct.linebuffer*, %struct.linebuffer** %248, align 8, !dbg !1045, !tbaa !677
  %250 = load i1, i1* @delim, align 1
  %251 = select i1 %250, i8 0, i8 10
  %252 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %249, %struct._IO_FILE* nonnull %116, i8 signext %251) #12, !dbg !1046
  %253 = icmp eq %struct.linebuffer* %252, null, !dbg !1047
  br i1 %253, label %258, label %254, !dbg !1049

; <label>:254:                                    ; preds = %241
  %255 = sext i32 %141 to i64, !dbg !1050
  %256 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %255, !dbg !1050
  %257 = load %struct.linebuffer*, %struct.linebuffer** %256, align 8, !dbg !1050, !tbaa !677
  call fastcc void @check_order(%struct.linebuffer* %257, %struct.linebuffer* nonnull %252, i32 1) #12, !dbg !1051
  br label %269, !dbg !1051

; <label>:258:                                    ; preds = %241
  %259 = sext i32 %142 to i64, !dbg !1052
  %260 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %259, !dbg !1052
  %261 = load %struct.linebuffer*, %struct.linebuffer** %260, align 8, !dbg !1052, !tbaa !677
  %262 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %261, i64 0, i32 2, !dbg !1054
  %263 = load i8*, i8** %262, align 8, !dbg !1054, !tbaa !966
  %264 = icmp eq i8* %263, null, !dbg !1052
  br i1 %264, label %269, label %265, !dbg !1055

; <label>:265:                                    ; preds = %258
  %266 = sext i32 %141 to i64, !dbg !1056
  %267 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %266, !dbg !1056
  %268 = load %struct.linebuffer*, %struct.linebuffer** %267, align 8, !dbg !1056, !tbaa !677
  call fastcc void @check_order(%struct.linebuffer* %261, %struct.linebuffer* %268, i32 1) #12, !dbg !1057
  br label %269, !dbg !1057

; <label>:269:                                    ; preds = %265, %258, %254
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %116, i64 0, metadata !938, metadata !670) #12, !dbg !1058
  %270 = load i32, i32* %128, align 8, !dbg !1061, !tbaa !948
  %271 = and i32 %270, 32, !dbg !1061
  %272 = icmp eq i32 %271, 0, !dbg !1062
  br i1 %272, label %280, label %273, !dbg !1063

; <label>:273:                                    ; preds = %345, %269
  %274 = phi i64 [ 0, %269 ], [ 1, %345 ]
  %275 = tail call i32* @__errno_location() #17, !dbg !1064
  %276 = load i32, i32* %275, align 4, !dbg !1064, !tbaa !881
  %277 = getelementptr inbounds i8*, i8** %84, i64 %274, !dbg !1064
  %278 = load i8*, i8** %277, align 8, !dbg !1064, !tbaa !677
  %279 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %278) #12, !dbg !1064
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %276, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %279) #12, !dbg !1064
  unreachable, !dbg !1064

; <label>:280:                                    ; preds = %269
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !799, metadata !670) #12, !dbg !917
  %281 = icmp eq i8 %242, 0, !dbg !1065
  br i1 %281, label %349, label %314, !dbg !1066

; <label>:282:                                    ; preds = %349, %377
  %283 = phi i64 [ 0, %377 ], [ %353, %349 ]
  %284 = phi i64 [ 0, %377 ], [ %354, %349 ]
  %285 = phi i64 [ 0, %377 ], [ %355, %349 ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !799, metadata !670) #12, !dbg !917
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !799, metadata !670) #12, !dbg !917
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !799, metadata !670) #12, !dbg !917
  %286 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %116) #12, !dbg !1067
  %287 = icmp eq i32 %286, 0, !dbg !1071
  br i1 %287, label %288, label %291, !dbg !1072

; <label>:288:                                    ; preds = %282
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !799, metadata !670) #12, !dbg !917
  %289 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %367) #12, !dbg !1067
  %290 = icmp eq i32 %289, 0, !dbg !1071
  br i1 %290, label %312, label %291, !dbg !1072

; <label>:291:                                    ; preds = %288, %282
  %292 = phi i64 [ 0, %282 ], [ 1, %288 ]
  %293 = tail call i32* @__errno_location() #17, !dbg !1073
  %294 = load i32, i32* %293, align 4, !dbg !1073, !tbaa !881
  %295 = getelementptr inbounds i8*, i8** %84, i64 %292, !dbg !1073
  %296 = load i8*, i8** %295, align 8, !dbg !1073, !tbaa !677
  %297 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %296) #12, !dbg !1073
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %294, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %297) #12, !dbg !1073
  unreachable, !dbg !1073

; <label>:298:                                    ; preds = %312
  %299 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1074
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %299) #12, !dbg !1074
  %300 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !1075
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %300) #12, !dbg !1075
  %301 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0, !dbg !1076
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %301) #12, !dbg !1076
  %302 = call i8* @umaxtostr(i64 %284, i8* nonnull %299) #12, !dbg !1077
  %303 = load i8*, i8** @col_sep, align 8, !dbg !1077, !tbaa !677
  %304 = call i8* @umaxtostr(i64 %283, i8* nonnull %300) #12, !dbg !1077
  %305 = load i8*, i8** @col_sep, align 8, !dbg !1077, !tbaa !677
  %306 = call i8* @umaxtostr(i64 %285, i8* nonnull %301) #12, !dbg !1077
  %307 = load i8*, i8** @col_sep, align 8, !dbg !1077, !tbaa !677
  %308 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i32 5) #12, !dbg !1077
  %309 = load i1, i1* @delim, align 1
  %310 = select i1 %309, i32 0, i32 10, !dbg !1077
  %311 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i8* %302, i8* %303, i8* %304, i8* %305, i8* %306, i8* %307, i8* %308, i32 %310) #12, !dbg !1077
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %301) #12, !dbg !1078
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %300) #12, !dbg !1078
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %299) #12, !dbg !1078
  br label %382, !dbg !1079

; <label>:312:                                    ; preds = %288
  %313 = load i1, i1* @total_option, align 1
  br i1 %313, label %298, label %382, !dbg !1080

; <label>:314:                                    ; preds = %280, %235, %225
  %315 = phi i32 [ %141, %280 ], [ %142, %235 ], [ %142, %225 ]
  %316 = phi i32 [ %246, %280 ], [ %141, %235 ], [ %141, %225 ]
  %317 = phi %struct.linebuffer* [ %252, %280 ], [ %144, %235 ], [ %144, %225 ]
  %318 = phi i64 [ %147, %280 ], [ %226, %235 ], [ %226, %225 ]
  %319 = phi i64 [ %243, %280 ], [ %146, %235 ], [ %146, %225 ]
  %320 = phi i64 [ %244, %280 ], [ %145, %235 ], [ %145, %225 ]
  %321 = add nsw i32 %139, 1, !dbg !1039
  %322 = and i32 %321, 3, !dbg !1044
  %323 = zext i32 %322 to i64, !dbg !1045
  %324 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %323, !dbg !1045
  %325 = load %struct.linebuffer*, %struct.linebuffer** %324, align 8, !dbg !1045, !tbaa !677
  %326 = load i1, i1* @delim, align 1
  %327 = select i1 %326, i8 0, i8 10
  %328 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %325, %struct._IO_FILE* nonnull %367, i8 signext %327) #12, !dbg !1046
  %329 = icmp eq %struct.linebuffer* %328, null, !dbg !1047
  br i1 %329, label %334, label %330, !dbg !1049

; <label>:330:                                    ; preds = %314
  %331 = sext i32 %139 to i64, !dbg !1050
  %332 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %331, !dbg !1050
  %333 = load %struct.linebuffer*, %struct.linebuffer** %332, align 8, !dbg !1050, !tbaa !677
  call fastcc void @check_order(%struct.linebuffer* %333, %struct.linebuffer* nonnull %328, i32 2) #12, !dbg !1051
  br label %345, !dbg !1051

; <label>:334:                                    ; preds = %314
  %335 = sext i32 %140 to i64, !dbg !1052
  %336 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %335, !dbg !1052
  %337 = load %struct.linebuffer*, %struct.linebuffer** %336, align 8, !dbg !1052, !tbaa !677
  %338 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %337, i64 0, i32 2, !dbg !1054
  %339 = load i8*, i8** %338, align 8, !dbg !1054, !tbaa !966
  %340 = icmp eq i8* %339, null, !dbg !1052
  br i1 %340, label %345, label %341, !dbg !1055

; <label>:341:                                    ; preds = %334
  %342 = sext i32 %139 to i64, !dbg !1056
  %343 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %342, !dbg !1056
  %344 = load %struct.linebuffer*, %struct.linebuffer** %343, align 8, !dbg !1056, !tbaa !677
  call fastcc void @check_order(%struct.linebuffer* %337, %struct.linebuffer* %344, i32 2) #12, !dbg !1057
  br label %345, !dbg !1057

; <label>:345:                                    ; preds = %341, %334, %330
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %116, i64 0, metadata !938, metadata !670) #12, !dbg !1058
  %346 = load i32, i32* %373, align 8, !dbg !1061, !tbaa !948
  %347 = and i32 %346, 32, !dbg !1061
  %348 = icmp eq i32 %347, 0, !dbg !1062
  br i1 %348, label %349, label %273, !dbg !1063

; <label>:349:                                    ; preds = %345, %280
  %350 = phi i32 [ %141, %280 ], [ %315, %345 ]
  %351 = phi i32 [ %246, %280 ], [ %316, %345 ]
  %352 = phi %struct.linebuffer* [ %252, %280 ], [ %317, %345 ]
  %353 = phi i64 [ %147, %280 ], [ %318, %345 ]
  %354 = phi i64 [ %243, %280 ], [ %319, %345 ]
  %355 = phi i64 [ %244, %280 ], [ %320, %345 ]
  %356 = phi %struct.linebuffer* [ %143, %280 ], [ %328, %345 ], !dbg !1081
  %357 = phi i32 [ %139, %280 ], [ %322, %345 ]
  %358 = phi i32 [ %140, %280 ], [ %139, %345 ]
  %359 = icmp ne %struct.linebuffer* %352, null, !dbg !1082
  %360 = icmp ne %struct.linebuffer* %356, null, !dbg !1083
  %361 = or i1 %359, %360, !dbg !1083
  br i1 %361, label %138, label %282, !dbg !1084, !llvm.loop !1085

; <label>:362:                                    ; preds = %98
  %363 = call %struct._IO_FILE* @fopen_safer(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #12, !dbg !931
  br label %366, !dbg !929

; <label>:364:                                    ; preds = %98
  %365 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !930, !tbaa !677
  br label %366, !dbg !929

; <label>:366:                                    ; preds = %364, %362
  %367 = phi %struct._IO_FILE* [ %365, %364 ], [ %363, %362 ], !dbg !929
  %368 = icmp eq %struct._IO_FILE* %367, null, !dbg !932
  br i1 %368, label %118, label %369, !dbg !934

; <label>:369:                                    ; preds = %366
  call void @fadvise(%struct._IO_FILE* nonnull %367, i32 2) #12, !dbg !936
  %370 = load i1, i1* @delim, align 1
  %371 = select i1 %370, i8 0, i8 10
  %372 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %99, %struct._IO_FILE* nonnull %367, i8 signext %371) #12, !dbg !937
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %116, i64 0, metadata !938, metadata !670) #12, !dbg !944
  %373 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %367, i64 0, i32 0, !dbg !947
  %374 = load i32, i32* %373, align 8, !dbg !947, !tbaa !948
  %375 = and i32 %374, 32, !dbg !947
  %376 = icmp eq i32 %375, 0, !dbg !951
  br i1 %376, label %377, label %132, !dbg !952

; <label>:377:                                    ; preds = %369
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !796, metadata !916) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !796, metadata !914) #12, !dbg !913
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !796, metadata !915) #12, !dbg !913
  %378 = icmp ne %struct.linebuffer* %127, null, !dbg !1082
  %379 = icmp ne %struct.linebuffer* %372, null, !dbg !1083
  %380 = or i1 %378, %379, !dbg !1083
  br i1 %380, label %381, label %282, !dbg !1084

; <label>:381:                                    ; preds = %377
  br label %138, !dbg !955

; <label>:382:                                    ; preds = %298, %312
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %86) #12, !dbg !1088
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %85) #12, !dbg !1088
  %383 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !1089, !tbaa !834, !range !963
  %384 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !1091
  %385 = or i8 %384, %383, !dbg !1092
  %386 = icmp ne i8 %385, 0, !dbg !1092
  %387 = zext i1 %386 to i32, !dbg !1092
  ret i32 %387, !dbg !1093
}

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

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @check_order(%struct.linebuffer* nocapture readonly, %struct.linebuffer* nocapture readonly, i32) unnamed_addr #6 !dbg !1094 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1098, metadata !670), !dbg !1106
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %1, i64 0, metadata !1099, metadata !670), !dbg !1107
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1100, metadata !670), !dbg !1108
  %4 = load i32, i32* @check_input_order, align 4, !dbg !1109, !tbaa !840
  switch i32 %4, label %5 [
    i32 2, label %38
    i32 1, label %7
  ], !dbg !1110

; <label>:5:                                      ; preds = %3
  %6 = load i1, i1* @seen_unpairable, align 1
  br i1 %6, label %7, label %38, !dbg !1111

; <label>:7:                                      ; preds = %3, %5
  %8 = add nsw i32 %2, -1, !dbg !1112
  %9 = sext i32 %8 to i64, !dbg !1113
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 %9, !dbg !1113
  %11 = load i8, i8* %10, align 1, !dbg !1113, !tbaa !834, !range !963
  %12 = icmp eq i8 %11, 0, !dbg !1113
  br i1 %12, label %13, label %38, !dbg !1114

; <label>:13:                                     ; preds = %7
  %14 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1115, !tbaa !834, !range !963
  %15 = icmp eq i8 %14, 0, !dbg !1115
  %16 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2
  %17 = load i8*, i8** %16, align 8, !tbaa !966
  %18 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1
  %19 = load i64, i64* %18, align 8, !tbaa !969
  %20 = add i64 %19, -1
  %21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i64 0, i32 2
  %22 = load i8*, i8** %21, align 8, !tbaa !966
  %23 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i64 0, i32 1
  %24 = load i64, i64* %23, align 8, !tbaa !969
  %25 = add i64 %24, -1
  br i1 %15, label %28, label %26, !dbg !1117

; <label>:26:                                     ; preds = %13
  %27 = tail call i32 @xmemcoll(i8* %17, i64 %20, i8* %22, i64 %25) #12, !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1101, metadata !670), !dbg !1119
  br label %30, !dbg !1120

; <label>:28:                                     ; preds = %13
  %29 = tail call i32 @memcmp2(i8* %17, i64 %20, i8* %22, i64 %25) #14, !dbg !1121
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1101, metadata !670), !dbg !1119
  br label %30

; <label>:30:                                     ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !1101, metadata !670), !dbg !1119
  %32 = icmp sgt i32 %31, 0, !dbg !1122
  br i1 %32, label %33, label %38, !dbg !1124

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* @check_input_order, align 4, !dbg !1125, !tbaa !840
  %35 = icmp eq i32 %34, 1, !dbg !1127
  %36 = zext i1 %35 to i32, !dbg !1125
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i64 0, i64 0), i32 5) #12, !dbg !1128
  tail call void (i32, i32, i8*, ...) @error(i32 %36, i32 0, i8* %37, i32 %2) #12, !dbg !1129
  store i8 1, i8* %10, align 1, !dbg !1130, !tbaa !834
  br label %38, !dbg !1131

; <label>:38:                                     ; preds = %30, %33, %3, %7, %5
  ret void, !dbg !1132
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1133 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1135, metadata !670), !dbg !1136
  store i8* %0, i8** @file_name, align 8, !dbg !1137, !tbaa !677
  ret void, !dbg !1138
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1139 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1143, metadata !670), !dbg !1144
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1145, !tbaa !834
  ret void, !dbg !1146
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1147 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1154, !tbaa !677
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1155
  %3 = icmp eq i32 %2, 0, !dbg !1156
  br i1 %3, label %21, label %4, !dbg !1157

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1158, !tbaa !834, !range !963
  %6 = icmp eq i8 %5, 0, !dbg !1158
  %7 = tail call i32* @__errno_location() #17, !dbg !1159
  br i1 %6, label %11, label %8, !dbg !1161

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1162, !tbaa !881
  %10 = icmp eq i32 %9, 32, !dbg !1163
  br i1 %10, label %21, label %11, !dbg !1164

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 5) #12, !dbg !1165
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1151, metadata !670), !dbg !1166
  %13 = load i8*, i8** @file_name, align 8, !dbg !1167, !tbaa !677
  %14 = icmp eq i8* %13, null, !dbg !1167
  %15 = load i32, i32* %7, align 4, !tbaa !881
  br i1 %14, label %18, label %16, !dbg !1168

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1169
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.30, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1170
  br label %19, !dbg !1170

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.31, i64 0, i64 0), i8* %12) #12, !dbg !1171
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1172, !tbaa !881
  tail call void @_exit(i32 %20) #15, !dbg !1173
  unreachable, !dbg !1173

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1174, !tbaa !677
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1176
  %24 = icmp eq i32 %23, 0, !dbg !1177
  br i1 %24, label %27, label %25, !dbg !1178

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1179, !tbaa !881
  tail call void @_exit(i32 %26) #15, !dbg !1180
  unreachable, !dbg !1180

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1181
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1182 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1190, metadata !670), !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1191, metadata !670), !dbg !1197
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1192, metadata !670), !dbg !1198
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1193, metadata !670), !dbg !1199
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #12, !dbg !1200
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1194, metadata !670), !dbg !1200
  ret void, !dbg !1201
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1202 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1246, metadata !670), !dbg !1248
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1247, metadata !670), !dbg !1249
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1250
  br i1 %3, label %7, label %4, !dbg !1252

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !1253
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1190, metadata !670) #12, !dbg !1254
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1191, metadata !670) #12, !dbg !1256
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1192, metadata !670) #12, !dbg !1257
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1193, metadata !670) #12, !dbg !1258
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #12, !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1194, metadata !670) #12, !dbg !1259
  br label %7, !dbg !1260

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1261
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !1262 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1307, metadata !670), !dbg !1322
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1308, metadata !670), !dbg !1323
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !1324
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !1309, metadata !670), !dbg !1325
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !1326
  br i1 %4, label %25, label %5, !dbg !1327

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #12, !dbg !1328
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1310, metadata !670), !dbg !1329
  %7 = icmp ult i32 %6, 3, !dbg !1330
  br i1 %7, label %8, label %25, !dbg !1330

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #12, !dbg !1331
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1313, metadata !670), !dbg !1332
  %10 = icmp slt i32 %9, 0, !dbg !1333
  br i1 %10, label %11, label %15, !dbg !1334

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #17, !dbg !1335
  %13 = load i32, i32* %12, align 4, !dbg !1335, !tbaa !881
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1316, metadata !670), !dbg !1336
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !1337
  store i32 %13, i32* %12, align 4, !dbg !1338, !tbaa !881
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12, !dbg !1339
  %17 = icmp eq i32 %16, 0, !dbg !1340
  br i1 %17, label %18, label %21, !dbg !1341

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #12, !dbg !1342
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !1309, metadata !670), !dbg !1325
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !1343
  br i1 %20, label %21, label %25, !dbg !1344

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #17, !dbg !1345
  %23 = load i32, i32* %22, align 4, !dbg !1345, !tbaa !881
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !1319, metadata !670), !dbg !1346
  %24 = tail call i32 @close(i32 %9) #12, !dbg !1347
  store i32 %23, i32* %22, align 4, !dbg !1348, !tbaa !881
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26, !dbg !1349
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !1350 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1355, metadata !670), !dbg !1358
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1356, metadata !670), !dbg !1359
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !1360
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1357, metadata !670), !dbg !1361
  %3 = icmp eq i8* %2, null, !dbg !1362
  br i1 %3, label %11, label %4, !dbg !1364

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #14, !dbg !1365
  %6 = icmp eq i32 %5, 0, !dbg !1370
  br i1 %6, label %10, label %7, !dbg !1371

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.55, i64 0, i64 0)) #14, !dbg !1372
  %9 = icmp eq i32 %8, 0, !dbg !1373
  br i1 %9, label %10, label %11, !dbg !1374

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1356, metadata !670), !dbg !1359
  br label %11, !dbg !1375

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !1376
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1377 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1382, metadata !670), !dbg !1385
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1383, metadata !670), !dbg !1386
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1387
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1384, metadata !670), !dbg !1388
  store i8 0, i8* %3, align 1, !dbg !1389, !tbaa !840
  br label %4, !dbg !1390, !llvm.loop !1393

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1384, metadata !670), !dbg !1388
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1382, metadata !670), !dbg !1385
  %7 = urem i64 %5, 10, !dbg !1395
  %8 = trunc i64 %7 to i8, !dbg !1396
  %9 = or i8 %8, 48, !dbg !1396
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1397
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1384, metadata !670), !dbg !1388
  store i8 %9, i8* %10, align 1, !dbg !1398, !tbaa !840
  %11 = udiv i64 %5, 10, !dbg !1399
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1382, metadata !670), !dbg !1385
  %12 = icmp ugt i64 %5, 9, !dbg !1400
  br i1 %12, label %4, label %13, !dbg !1401, !llvm.loop !1393

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1384, metadata !670), !dbg !1388
  ret i8* %10, !dbg !1402
}

; Function Attrs: nounwind sspstrong uwtable
define void @initbuffer(%struct.linebuffer* nocapture) local_unnamed_addr #6 !dbg !1403 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1414, metadata !670), !dbg !1415
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !1416
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false), !dbg !1416
  ret void, !dbg !1417
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1418 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1462, metadata !670), !dbg !1464
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1463, metadata !670), !dbg !1465
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1466, metadata !670) #12, !dbg !1481
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1471, metadata !670) #12, !dbg !1483
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !1472, metadata !670) #12, !dbg !1484
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1485
  %4 = load i8*, i8** %3, align 8, !dbg !1485, !tbaa !966
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1474, metadata !670) #12, !dbg !1486
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1475, metadata !670) #12, !dbg !1487
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1488
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1489, metadata !670) #12, !dbg !1494
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1497
  %7 = load i32, i32* %6, align 8, !dbg !1497, !tbaa !948
  %8 = and i32 %7, 16, !dbg !1497
  %9 = icmp eq i32 %8, 0, !dbg !1498
  br i1 %9, label %10, label %62, !dbg !1499

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !1488, !tbaa !1500
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !1501
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !1502, !llvm.loop !1503

; <label>:15:                                     ; preds = %48, %10
  %16 = phi i8* [ %4, %10 ], [ %49, %48 ]
  %17 = phi i8* [ %4, %10 ], [ %53, %48 ]
  %18 = phi i8* [ %12, %10 ], [ %51, %48 ]
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1476, metadata !670) #12, !dbg !1506
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1475, metadata !670) #12, !dbg !1487
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1474, metadata !670) #12, !dbg !1486
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1507, metadata !670) #12, !dbg !1510
  %19 = load i8*, i8** %13, align 8, !dbg !1512, !tbaa !1513
  %20 = load i8*, i8** %14, align 8, !dbg !1512, !tbaa !1514
  %21 = icmp ult i8* %19, %20, !dbg !1512
  br i1 %21, label %22, label %26, !dbg !1512, !prof !1515

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1512
  store i8* %23, i8** %13, align 8, !dbg !1512, !tbaa !1513
  %24 = load i8, i8* %19, align 1, !dbg !1512, !tbaa !840
  %25 = zext i8 %24 to i32, !dbg !1512
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1473, metadata !670) #12, !dbg !1516
  br label %39, !dbg !1517

; <label>:26:                                     ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #12, !dbg !1512
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1473, metadata !670) #12, !dbg !1516
  %28 = icmp eq i32 %27, -1, !dbg !1518
  br i1 %28, label %29, label %39, !dbg !1517

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !1520
  br i1 %30, label %62, label %31, !dbg !1523

; <label>:31:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1524, metadata !670) #12, !dbg !1527
  %32 = load i32, i32* %6, align 8, !dbg !1529, !tbaa !948
  %33 = and i32 %32, 32, !dbg !1529
  %34 = icmp eq i32 %33, 0, !dbg !1530
  br i1 %34, label %35, label %62, !dbg !1531

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1532
  %37 = load i8, i8* %36, align 1, !dbg !1532, !tbaa !840
  %38 = icmp eq i8 %37, 10, !dbg !1534
  br i1 %38, label %55, label %39, !dbg !1535

; <label>:39:                                     ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ]
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !1473, metadata !670) #12, !dbg !1516
  %41 = icmp eq i8* %17, %18, !dbg !1536
  br i1 %41, label %42, label %48, !dbg !1537

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !1538, !tbaa !1500
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1477, metadata !670) #12, !dbg !1539
  %44 = tail call i8* @x2realloc(i8* %16, i64* %5) #12, !dbg !1540
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !1474, metadata !670) #12, !dbg !1486
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !1541
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !1475, metadata !670) #12, !dbg !1487
  store i8* %44, i8** %3, align 8, !dbg !1542, !tbaa !966
  %46 = load i64, i64* %5, align 8, !dbg !1543, !tbaa !1500
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !1544
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1476, metadata !670) #12, !dbg !1506
  br label %48, !dbg !1545

; <label>:48:                                     ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ]
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ]
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ]
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1476, metadata !670) #12, !dbg !1506
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1475, metadata !670) #12, !dbg !1487
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1474, metadata !670) #12, !dbg !1486
  %52 = trunc i32 %40 to i8, !dbg !1546
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1547
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1475, metadata !670) #12, !dbg !1487
  store i8 %52, i8* %50, align 1, !dbg !1548, !tbaa !840
  %54 = icmp eq i32 %40, 10, !dbg !1549
  br i1 %54, label %55, label %15, !dbg !1550, !llvm.loop !1503

; <label>:55:                                     ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ]
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ]
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !1475, metadata !670) #12, !dbg !1487
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !1474, metadata !670) #12, !dbg !1486
  %58 = ptrtoint i8* %57 to i64, !dbg !1551
  %59 = ptrtoint i8* %56 to i64, !dbg !1551
  %60 = sub i64 %58, %59, !dbg !1551
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1552
  store i64 %60, i64* %61, align 8, !dbg !1553, !tbaa !969
  br label %62, !dbg !1554

; <label>:62:                                     ; preds = %29, %31, %2, %55
  %63 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %31 ], [ null, %29 ]
  ret %struct.linebuffer* %63, !dbg !1555
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) local_unnamed_addr #6 !dbg !1467 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1466, metadata !670), !dbg !1556
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1471, metadata !670), !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1472, metadata !670), !dbg !1558
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1559
  %5 = load i8*, i8** %4, align 8, !dbg !1559, !tbaa !966
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1474, metadata !670), !dbg !1560
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1475, metadata !670), !dbg !1561
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1562
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !1476, metadata !670), !dbg !1563
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1489, metadata !670), !dbg !1564
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1566
  %8 = load i32, i32* %7, align 8, !dbg !1566, !tbaa !948
  %9 = and i32 %8, 16, !dbg !1566
  %10 = icmp eq i32 %9, 0, !dbg !1567
  br i1 %10, label %11, label %64, !dbg !1568

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !1562, !tbaa !1500
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !1569
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = sext i8 %2 to i32
  br label %17, !dbg !1504, !llvm.loop !1503

; <label>:17:                                     ; preds = %50, %11
  %18 = phi i8* [ %5, %11 ], [ %51, %50 ]
  %19 = phi i8* [ %5, %11 ], [ %55, %50 ]
  %20 = phi i8* [ %13, %11 ], [ %53, %50 ]
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1476, metadata !670), !dbg !1563
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1475, metadata !670), !dbg !1561
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1474, metadata !670), !dbg !1560
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1507, metadata !670) #12, !dbg !1570
  %21 = load i8*, i8** %14, align 8, !dbg !1572, !tbaa !1513
  %22 = load i8*, i8** %15, align 8, !dbg !1572, !tbaa !1514
  %23 = icmp ult i8* %21, %22, !dbg !1572
  br i1 %23, label %24, label %28, !dbg !1572, !prof !1515

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1572
  store i8* %25, i8** %14, align 8, !dbg !1572, !tbaa !1513
  %26 = load i8, i8* %21, align 1, !dbg !1572, !tbaa !840
  %27 = zext i8 %26 to i32, !dbg !1572
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1473, metadata !670), !dbg !1573
  br label %41, !dbg !1574

; <label>:28:                                     ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #12, !dbg !1572
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1473, metadata !670), !dbg !1573
  %30 = icmp eq i32 %29, -1, !dbg !1575
  br i1 %30, label %31, label %41, !dbg !1574

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !1576
  br i1 %32, label %64, label %33, !dbg !1577

; <label>:33:                                     ; preds = %31
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1524, metadata !670), !dbg !1578
  %34 = load i32, i32* %7, align 8, !dbg !1580, !tbaa !948
  %35 = and i32 %34, 32, !dbg !1580
  %36 = icmp eq i32 %35, 0, !dbg !1581
  br i1 %36, label %37, label %64, !dbg !1582

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1583
  %39 = load i8, i8* %38, align 1, !dbg !1583, !tbaa !840
  %40 = icmp eq i8 %39, %2, !dbg !1584
  br i1 %40, label %57, label %41, !dbg !1585

; <label>:41:                                     ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ]
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1473, metadata !670), !dbg !1573
  %43 = icmp eq i8* %19, %20, !dbg !1586
  br i1 %43, label %44, label %50, !dbg !1587

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !1588, !tbaa !1500
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1477, metadata !670), !dbg !1589
  %46 = tail call i8* @x2realloc(i8* %18, i64* %6) #12, !dbg !1590
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !1474, metadata !670), !dbg !1560
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !1591
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1475, metadata !670), !dbg !1561
  store i8* %46, i8** %4, align 8, !dbg !1592, !tbaa !966
  %48 = load i64, i64* %6, align 8, !dbg !1593, !tbaa !1500
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !1594
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1476, metadata !670), !dbg !1563
  br label %50, !dbg !1595

; <label>:50:                                     ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ]
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ]
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ]
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1476, metadata !670), !dbg !1563
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1475, metadata !670), !dbg !1561
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1474, metadata !670), !dbg !1560
  %54 = trunc i32 %42 to i8, !dbg !1596
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1597
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !1475, metadata !670), !dbg !1561
  store i8 %54, i8* %52, align 1, !dbg !1598, !tbaa !840
  %56 = icmp eq i32 %42, %16, !dbg !1599
  br i1 %56, label %57, label %17, !dbg !1600, !llvm.loop !1503

; <label>:57:                                     ; preds = %50, %37
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ]
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ]
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1475, metadata !670), !dbg !1561
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1474, metadata !670), !dbg !1560
  %60 = ptrtoint i8* %59 to i64, !dbg !1601
  %61 = ptrtoint i8* %58 to i64, !dbg !1601
  %62 = sub i64 %60, %61, !dbg !1601
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1602
  store i64 %62, i64* %63, align 8, !dbg !1603, !tbaa !969
  br label %64, !dbg !1604

; <label>:64:                                     ; preds = %31, %33, %3, %57
  %65 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %33 ], [ null, %31 ]
  ret %struct.linebuffer* %65, !dbg !1605
}

; Function Attrs: nounwind sspstrong uwtable
define void @freebuffer(%struct.linebuffer* nocapture readonly) local_unnamed_addr #6 !dbg !1606 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1608, metadata !670), !dbg !1609
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1610
  %3 = load i8*, i8** %2, align 8, !dbg !1610, !tbaa !966
  tail call void @free(i8* %3) #12, !dbg !1611
  ret void, !dbg !1612
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @memcmp2(i8* nocapture readonly, i64, i8* nocapture readonly, i64) local_unnamed_addr #11 !dbg !1613 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1618, metadata !670), !dbg !1623
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1619, metadata !670), !dbg !1624
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1620, metadata !670), !dbg !1625
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1621, metadata !670), !dbg !1626
  %5 = icmp ugt i64 %1, %3, !dbg !1627
  %6 = select i1 %5, i64 %3, i64 %1, !dbg !1628
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %6) #14, !dbg !1629
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1622, metadata !670), !dbg !1630
  %8 = icmp eq i32 %7, 0, !dbg !1631
  br i1 %8, label %9, label %13, !dbg !1633

; <label>:9:                                      ; preds = %4
  %10 = icmp ult i64 %1, %3, !dbg !1634
  br i1 %10, label %13, label %11, !dbg !1637

; <label>:11:                                     ; preds = %9
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1622, metadata !670), !dbg !1630
  %12 = zext i1 %5 to i32, !dbg !1638
  ret i32 %12, !dbg !1638

; <label>:13:                                     ; preds = %9, %4
  %14 = phi i32 [ %7, %4 ], [ -1, %9 ]
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1622, metadata !670), !dbg !1630
  ret i32 %14, !dbg !1639
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1640 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1642, metadata !670), !dbg !1645
  %2 = icmp eq i8* %0, null, !dbg !1646
  br i1 %2, label %3, label %6, !dbg !1648

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1649, !tbaa !677
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.68, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1651
  tail call void @abort() #15, !dbg !1652
  unreachable, !dbg !1652

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1653
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1643, metadata !670), !dbg !1654
  %8 = icmp eq i8* %7, null, !dbg !1655
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1656
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1657
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1644, metadata !670), !dbg !1658
  %11 = ptrtoint i8* %10 to i64, !dbg !1659
  %12 = ptrtoint i8* %0 to i64, !dbg !1659
  %13 = sub i64 %11, %12, !dbg !1659
  %14 = icmp sgt i64 %13, 6, !dbg !1661
  br i1 %14, label %15, label %24, !dbg !1662

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1663
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.69, i64 0, i64 0), i64 7) #14, !dbg !1664
  %18 = icmp eq i32 %17, 0, !dbg !1665
  br i1 %18, label %19, label %24, !dbg !1666

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1642, metadata !670), !dbg !1645
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.70, i64 0, i64 0), i64 3) #14, !dbg !1667
  %21 = icmp eq i32 %20, 0, !dbg !1670
  br i1 %21, label %22, label %24, !dbg !1671

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1672
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1642, metadata !670), !dbg !1645
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1674, !tbaa !677
  br label %24, !dbg !1675

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1642, metadata !670), !dbg !1645
  store i8* %25, i8** @program_name, align 8, !dbg !1676, !tbaa !677
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1677, !tbaa !677
  ret void, !dbg !1678
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1679 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1684, metadata !670), !dbg !1687
  %2 = tail call i32* @__errno_location() #17, !dbg !1688
  %3 = load i32, i32* %2, align 4, !dbg !1688, !tbaa !881
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1685, metadata !670), !dbg !1689
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1690
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1690
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1690
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1691
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1691
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1686, metadata !670), !dbg !1692
  store i32 %3, i32* %2, align 4, !dbg !1693, !tbaa !881
  ret %struct.quoting_options* %8, !dbg !1694
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1695 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1701, metadata !670), !dbg !1702
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1703
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1703
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1704
  %5 = load i32, i32* %4, align 8, !dbg !1704, !tbaa !1705
  ret i32 %5, !dbg !1707
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1708 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1712, metadata !670), !dbg !1714
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1713, metadata !670), !dbg !1715
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1716
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1716
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1717
  store i32 %1, i32* %5, align 8, !dbg !1718, !tbaa !1705
  ret void, !dbg !1719
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1720 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1724, metadata !670), !dbg !1732
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1725, metadata !670), !dbg !1733
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1726, metadata !670), !dbg !1734
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1727, metadata !670), !dbg !1735
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1736
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1736
  %6 = lshr i8 %1, 5, !dbg !1737
  %7 = zext i8 %6 to i64, !dbg !1737
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1738
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1728, metadata !670), !dbg !1739
  %9 = and i8 %1, 31, !dbg !1740
  %10 = zext i8 %9 to i32, !dbg !1741
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1730, metadata !670), !dbg !1742
  %11 = load i32, i32* %8, align 4, !dbg !1743, !tbaa !881
  %12 = lshr i32 %11, %10, !dbg !1744
  %13 = and i32 %12, 1, !dbg !1745
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1731, metadata !670), !dbg !1746
  %14 = and i32 %2, 1, !dbg !1747
  %15 = xor i32 %13, %14, !dbg !1748
  %16 = shl i32 %15, %10, !dbg !1749
  %17 = xor i32 %16, %11, !dbg !1750
  store i32 %17, i32* %8, align 4, !dbg !1750, !tbaa !881
  ret i32 %13, !dbg !1751
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1752 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1756, metadata !670), !dbg !1759
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1757, metadata !670), !dbg !1760
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1756, metadata !670), !dbg !1759
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1763
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1756, metadata !670), !dbg !1759
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1764
  %6 = load i32, i32* %5, align 4, !dbg !1764, !tbaa !1765
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1758, metadata !670), !dbg !1766
  store i32 %1, i32* %5, align 4, !dbg !1767, !tbaa !1765
  ret i32 %6, !dbg !1768
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1769 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1773, metadata !670), !dbg !1776
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1774, metadata !670), !dbg !1777
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1775, metadata !670), !dbg !1778
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1779
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1773, metadata !670), !dbg !1776
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1781
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1773, metadata !670), !dbg !1776
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1782
  store i32 10, i32* %6, align 8, !dbg !1783, !tbaa !1705
  %7 = icmp ne i8* %1, null, !dbg !1784
  %8 = icmp ne i8* %2, null, !dbg !1786
  %9 = and i1 %7, %8, !dbg !1787
  br i1 %9, label %11, label %10, !dbg !1787

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1788
  unreachable, !dbg !1788

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1789
  store i8* %1, i8** %12, align 8, !dbg !1790, !tbaa !1791
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1792
  store i8* %2, i8** %13, align 8, !dbg !1793, !tbaa !1794
  ret void, !dbg !1795
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1796 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1800, metadata !670), !dbg !1808
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1801, metadata !670), !dbg !1809
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1802, metadata !670), !dbg !1810
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1803, metadata !670), !dbg !1811
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1804, metadata !670), !dbg !1812
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1813
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1813
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1805, metadata !670), !dbg !1814
  %8 = tail call i32* @__errno_location() #17, !dbg !1815
  %9 = load i32, i32* %8, align 4, !dbg !1815, !tbaa !881
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1806, metadata !670), !dbg !1816
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1817
  %11 = load i32, i32* %10, align 8, !dbg !1817, !tbaa !1705
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1818
  %13 = load i32, i32* %12, align 4, !dbg !1818, !tbaa !1765
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1819
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1820
  %16 = load i8*, i8** %15, align 8, !dbg !1820, !tbaa !1791
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1821
  %18 = load i8*, i8** %17, align 8, !dbg !1821, !tbaa !1794
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1822
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1807, metadata !670), !dbg !1823
  store i32 %9, i32* %8, align 4, !dbg !1824, !tbaa !881
  ret i64 %19, !dbg !1825
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1826 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1832, metadata !670), !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1833, metadata !670), !dbg !1896
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1834, metadata !670), !dbg !1897
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1835, metadata !670), !dbg !1898
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1836, metadata !670), !dbg !1899
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1837, metadata !670), !dbg !1900
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1838, metadata !670), !dbg !1901
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1839, metadata !670), !dbg !1902
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1840, metadata !670), !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1842, metadata !670), !dbg !1904
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1843, metadata !670), !dbg !1905
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1844, metadata !670), !dbg !1906
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1845, metadata !670), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1846, metadata !670), !dbg !1908
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1909
  %14 = icmp eq i64 %13, 1, !dbg !1910
  %15 = lshr i32 %5, 1, !dbg !1911
  %16 = trunc i32 %15 to i8, !dbg !1911
  %17 = and i8 %16, 1, !dbg !1911
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1848, metadata !670), !dbg !1911
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1849, metadata !670), !dbg !1912
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1850, metadata !670), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1851, metadata !670), !dbg !1914
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1915

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1833, metadata !670), !dbg !1896
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1851, metadata !670), !dbg !1914
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1850, metadata !670), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1848, metadata !670), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1835, metadata !670), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1846, metadata !670), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1845, metadata !670), !dbg !1907
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1844, metadata !670), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1843, metadata !670), !dbg !1905
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1840, metadata !670), !dbg !1903
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1839, metadata !670), !dbg !1902
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1836, metadata !670), !dbg !1899
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
  ], !dbg !1916

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1836, metadata !670), !dbg !1899
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1848, metadata !670), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1848, metadata !670), !dbg !1911
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1836, metadata !670), !dbg !1899
  br label %94, !dbg !1917

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1848, metadata !670), !dbg !1911
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1836, metadata !670), !dbg !1899
  %43 = and i8 %36, 1, !dbg !1919
  %44 = icmp eq i8 %43, 0, !dbg !1919
  br i1 %44, label %45, label %94, !dbg !1917

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1921
  br i1 %46, label %94, label %47, !dbg !1924

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1921, !tbaa !840
  br label %94, !dbg !1921

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.81, i64 0, i64 0), i32 %28), !dbg !1925
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1839, metadata !670), !dbg !1902
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.82, i64 0, i64 0), i32 %28), !dbg !1929
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1840, metadata !670), !dbg !1903
  br label %51, !dbg !1930

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1840, metadata !670), !dbg !1903
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1839, metadata !670), !dbg !1902
  %54 = and i8 %36, 1, !dbg !1931
  %55 = icmp eq i8 %54, 0, !dbg !1931
  br i1 %55, label %56, label %72, !dbg !1933

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1844, metadata !670), !dbg !1906
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1844, metadata !670), !dbg !1906
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1842, metadata !670), !dbg !1904
  %57 = load i8, i8* %52, align 1, !dbg !1934, !tbaa !840
  %58 = icmp eq i8 %57, 0, !dbg !1937
  br i1 %58, label %72, label %59, !dbg !1937

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1938

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1844, metadata !670), !dbg !1906
  %64 = icmp ult i64 %63, %40, !dbg !1938
  br i1 %64, label %65, label %67, !dbg !1941

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1938
  store i8 %61, i8* %66, align 1, !dbg !1938, !tbaa !840
  br label %67, !dbg !1938

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1842, metadata !670), !dbg !1904
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1942
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1844, metadata !670), !dbg !1906
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1844, metadata !670), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1842, metadata !670), !dbg !1904
  %70 = load i8, i8* %69, align 1, !dbg !1934, !tbaa !840
  %71 = icmp eq i8 %70, 0, !dbg !1937
  br i1 %71, label %72, label %60, !dbg !1937, !llvm.loop !1943

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1846, metadata !670), !dbg !1908
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1844, metadata !670), !dbg !1906
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1845, metadata !670), !dbg !1907
  br label %94, !dbg !1946

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1846, metadata !670), !dbg !1908
  br label %76, !dbg !1947

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1846, metadata !670), !dbg !1908
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1848, metadata !670), !dbg !1911
  br label %78, !dbg !1948

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1848, metadata !670), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1846, metadata !670), !dbg !1908
  %81 = and i8 %80, 1, !dbg !1949
  %82 = icmp eq i8 %81, 0, !dbg !1949
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1846, metadata !670), !dbg !1908
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1951
  br label %84, !dbg !1951

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1848, metadata !670), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1846, metadata !670), !dbg !1908
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1836, metadata !670), !dbg !1899
  %87 = and i8 %86, 1, !dbg !1952
  %88 = icmp eq i8 %87, 0, !dbg !1952
  br i1 %88, label %89, label %94, !dbg !1954

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1955
  br i1 %90, label %94, label %91, !dbg !1958

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1955, !tbaa !840
  br label %94, !dbg !1955

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1848, metadata !670), !dbg !1911
  br label %94, !dbg !1959

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1960
  unreachable, !dbg !1960

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.83, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.83, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.83, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.82, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.82, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.82, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.83, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1848, metadata !670), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1846, metadata !670), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1845, metadata !670), !dbg !1907
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1844, metadata !670), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1840, metadata !670), !dbg !1903
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1839, metadata !670), !dbg !1902
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1836, metadata !670), !dbg !1899
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1841, metadata !670), !dbg !1961
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
  br label %122, !dbg !1962

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1833, metadata !670), !dbg !1896
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1851, metadata !670), !dbg !1914
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1850, metadata !670), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1835, metadata !670), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1843, metadata !670), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1841, metadata !670), !dbg !1961
  %131 = icmp eq i64 %126, -1, !dbg !1963
  br i1 %131, label %134, label %132, !dbg !1964

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1965
  br i1 %133, label %590, label %138, !dbg !1966

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1967
  %136 = load i8, i8* %135, align 1, !dbg !1967, !tbaa !840
  %137 = icmp eq i8 %136, 0, !dbg !1968
  br i1 %137, label %590, label %138, !dbg !1966

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1857, metadata !670), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1858, metadata !670), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1859, metadata !670), !dbg !1971
  br i1 %108, label %139, label %154, !dbg !1972

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1974
  %141 = and i1 %109, %131, !dbg !1975
  br i1 %141, label %142, label %144, !dbg !1975

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1835, metadata !670), !dbg !1898
  br label %144, !dbg !1977

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1835, metadata !670), !dbg !1898
  %146 = icmp ugt i64 %140, %145, !dbg !1978
  br i1 %146, label %154, label %147, !dbg !1979

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1980
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1981
  %150 = icmp ne i32 %149, 0, !dbg !1982
  %151 = or i1 %150, %111, !dbg !1983
  %152 = xor i1 %150, true, !dbg !1983
  %153 = zext i1 %152 to i8, !dbg !1983
  br i1 %151, label %154, label %635, !dbg !1983

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1857, metadata !670), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1835, metadata !670), !dbg !1898
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1984
  %158 = load i8, i8* %157, align 1, !dbg !1984, !tbaa !840
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1852, metadata !670), !dbg !1985
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
  ], !dbg !1986

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1987

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1988

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1858, metadata !670), !dbg !1970
  %162 = and i8 %127, 1, !dbg !1992
  %163 = icmp eq i8 %162, 0, !dbg !1992
  %164 = and i1 %113, %163, !dbg !1992
  br i1 %164, label %165, label %181, !dbg !1992

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1994
  br i1 %166, label %167, label %169, !dbg !1998

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1994
  store i8 39, i8* %168, align 1, !dbg !1994, !tbaa !840
  br label %169, !dbg !1994

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1842, metadata !670), !dbg !1904
  %171 = icmp ult i64 %170, %130, !dbg !1999
  br i1 %171, label %172, label %174, !dbg !2002

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1999
  store i8 36, i8* %173, align 1, !dbg !1999, !tbaa !840
  br label %174, !dbg !1999

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1842, metadata !670), !dbg !1904
  %176 = icmp ult i64 %175, %130, !dbg !2003
  br i1 %176, label %177, label %179, !dbg !2006

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2003
  store i8 39, i8* %178, align 1, !dbg !2003, !tbaa !840
  br label %179, !dbg !2003

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1849, metadata !670), !dbg !1912
  br label %181, !dbg !2007

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1842, metadata !670), !dbg !1904
  %184 = icmp ult i64 %182, %130, !dbg !2008
  br i1 %184, label %185, label %187, !dbg !2011

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2008
  store i8 92, i8* %186, align 1, !dbg !2008, !tbaa !840
  br label %187, !dbg !2008

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1842, metadata !670), !dbg !1904
  br i1 %105, label %189, label %470, !dbg !2012

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2014
  %191 = icmp ult i64 %190, %155, !dbg !2015
  br i1 %191, label %192, label %470, !dbg !2016

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2017
  %194 = load i8, i8* %193, align 1, !dbg !2017, !tbaa !840
  %195 = add i8 %194, -48, !dbg !2018
  %196 = icmp ult i8 %195, 10, !dbg !2018
  br i1 %196, label %197, label %470, !dbg !2018

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2019
  br i1 %198, label %199, label %201, !dbg !2023

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2019
  store i8 48, i8* %200, align 1, !dbg !2019, !tbaa !840
  br label %201, !dbg !2019

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1842, metadata !670), !dbg !1904
  %203 = icmp ult i64 %202, %130, !dbg !2024
  br i1 %203, label %204, label %206, !dbg !2027

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2024
  store i8 48, i8* %205, align 1, !dbg !2024, !tbaa !840
  br label %206, !dbg !2024

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1842, metadata !670), !dbg !1904
  br label %470, !dbg !2028

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2029

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2030

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2031

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2033

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2035
  %214 = icmp ult i64 %213, %155, !dbg !2036
  br i1 %214, label %215, label %470, !dbg !2037

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2038
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2039
  %218 = load i8, i8* %217, align 1, !dbg !2039, !tbaa !840
  %219 = icmp eq i8 %218, 63, !dbg !2040
  br i1 %219, label %220, label %470, !dbg !2041

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2042
  %222 = load i8, i8* %221, align 1, !dbg !2042, !tbaa !840
  %223 = sext i8 %222 to i32, !dbg !2042
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
  ], !dbg !2043

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2044

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1852, metadata !670), !dbg !1985
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1841, metadata !670), !dbg !1961
  %226 = icmp ult i64 %124, %130, !dbg !2046
  br i1 %226, label %227, label %229, !dbg !2049

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2046
  store i8 63, i8* %228, align 1, !dbg !2046, !tbaa !840
  br label %229, !dbg !2046

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1842, metadata !670), !dbg !1904
  %231 = icmp ult i64 %230, %130, !dbg !2050
  br i1 %231, label %232, label %234, !dbg !2053

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2050
  store i8 34, i8* %233, align 1, !dbg !2050, !tbaa !840
  br label %234, !dbg !2050

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1842, metadata !670), !dbg !1904
  %236 = icmp ult i64 %235, %130, !dbg !2054
  br i1 %236, label %237, label %239, !dbg !2057

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2054
  store i8 34, i8* %238, align 1, !dbg !2054, !tbaa !840
  br label %239, !dbg !2054

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1842, metadata !670), !dbg !1904
  %241 = icmp ult i64 %240, %130, !dbg !2058
  br i1 %241, label %242, label %244, !dbg !2061

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2058
  store i8 63, i8* %243, align 1, !dbg !2058, !tbaa !840
  br label %244, !dbg !2058

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1842, metadata !670), !dbg !1904
  br label %470, !dbg !2062

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1856, metadata !670), !dbg !2063
  br label %256, !dbg !2064

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1856, metadata !670), !dbg !2063
  br label %256, !dbg !2065

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1856, metadata !670), !dbg !2063
  br label %254, !dbg !2066

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1856, metadata !670), !dbg !2063
  br label %254, !dbg !2067

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1856, metadata !670), !dbg !2063
  br label %256, !dbg !2068

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1856, metadata !670), !dbg !2063
  br i1 %113, label %252, label %253, !dbg !2069

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2070

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2073

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1856, metadata !670), !dbg !2063
  br i1 %117, label %256, label %635, !dbg !2075

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1856, metadata !670), !dbg !2063
  br i1 %104, label %497, label %470, !dbg !2077

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2078
  br i1 %259, label %260, label %265, !dbg !2080

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2081, !tbaa !840
  %262 = icmp ne i8 %261, 0, !dbg !2082
  %263 = icmp ne i64 %123, 0, !dbg !2083
  %264 = or i1 %263, %262, !dbg !2085
  br i1 %264, label %470, label %271, !dbg !2085

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2086
  %267 = icmp ne i64 %123, 0, !dbg !2083
  %268 = or i1 %267, %266, !dbg !2080
  br i1 %268, label %470, label %271, !dbg !2080

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2083
  br i1 %270, label %271, label %470, !dbg !2087

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1859, metadata !670), !dbg !1971
  br label %272, !dbg !2088

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1859, metadata !670), !dbg !1971
  br i1 %117, label %470, label %635, !dbg !2089

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1850, metadata !670), !dbg !1913
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1859, metadata !670), !dbg !1971
  br i1 %113, label %275, label %470, !dbg !2091

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2092

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2095
  %278 = icmp ne i64 %125, 0, !dbg !2097
  %279 = or i1 %278, %277, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1843, metadata !670), !dbg !1905
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1833, metadata !670), !dbg !1896
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2098
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1833, metadata !670), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1843, metadata !670), !dbg !1905
  %282 = icmp ult i64 %124, %281, !dbg !2099
  br i1 %282, label %283, label %285, !dbg !2102

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2099
  store i8 39, i8* %284, align 1, !dbg !2099, !tbaa !840
  br label %285, !dbg !2099

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1842, metadata !670), !dbg !1904
  %287 = icmp ult i64 %286, %281, !dbg !2103
  br i1 %287, label %288, label %290, !dbg !2106

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2103
  store i8 92, i8* %289, align 1, !dbg !2103, !tbaa !840
  br label %290, !dbg !2103

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1842, metadata !670), !dbg !1904
  %292 = icmp ult i64 %291, %281, !dbg !2107
  br i1 %292, label %293, label %295, !dbg !2110

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2107
  store i8 39, i8* %294, align 1, !dbg !2107, !tbaa !840
  br label %295, !dbg !2107

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1849, metadata !670), !dbg !1912
  br label %470, !dbg !2111

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2112

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1860, metadata !670), !dbg !2113
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2114
  %300 = load i16*, i16** %299, align 8, !dbg !2114, !tbaa !677
  %301 = zext i8 %158 to i64, !dbg !2114
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2114
  %303 = load i16, i16* %302, align 2, !dbg !2114, !tbaa !2116
  %304 = lshr i16 %303, 14, !dbg !2117
  %305 = trunc i16 %304 to i8, !dbg !2117
  %306 = and i8 %305, 1, !dbg !2117
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1863, metadata !670), !dbg !2118
  br label %362, !dbg !2119

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2120
  store i64 0, i64* %10, align 8, !dbg !2121
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1860, metadata !670), !dbg !2113
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1863, metadata !670), !dbg !2118
  %308 = icmp eq i64 %155, -1, !dbg !2122
  br i1 %308, label %309, label %311, !dbg !2124

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1835, metadata !670), !dbg !1898
  br label %311, !dbg !2126

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1835, metadata !670), !dbg !1898
  br label %313, !dbg !2127, !llvm.loop !2128

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1863, metadata !670), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1860, metadata !670), !dbg !2113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2130
  %316 = add i64 %314, %123, !dbg !2131
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2132
  %318 = sub i64 %312, %316, !dbg !2133
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1864, metadata !670), !dbg !2134
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1881, metadata !670), !dbg !2135
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #12, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1884, metadata !670), !dbg !2137
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2138

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1863, metadata !670), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1860, metadata !670), !dbg !2113
  %321 = icmp ugt i64 %312, %316, !dbg !2139
  br i1 %321, label %322, label %347, !dbg !2141

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2142

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1860, metadata !670), !dbg !2113
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2142
  %327 = load i8, i8* %326, align 1, !dbg !2142, !tbaa !840
  %328 = icmp eq i8 %327, 0, !dbg !2141
  br i1 %328, label %347, label %329, !dbg !2143

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1860, metadata !670), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1860, metadata !670), !dbg !2113
  %331 = add i64 %330, %123, !dbg !2145
  %332 = icmp ult i64 %331, %312, !dbg !2139
  br i1 %332, label %323, label %347, !dbg !2141, !llvm.loop !2146

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2147
  %335 = and i1 %115, %334, !dbg !2150
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1885, metadata !670), !dbg !2151
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1885, metadata !670), !dbg !2151
  br i1 %335, label %336, label %350, !dbg !2150

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2152

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1885, metadata !670), !dbg !2151
  %339 = add i64 %338, %316, !dbg !2152
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2153
  %341 = load i8, i8* %340, align 1, !dbg !2153, !tbaa !840
  %342 = sext i8 %341 to i32, !dbg !2153
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2154

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1885, metadata !670), !dbg !2151
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1885, metadata !670), !dbg !2151
  %345 = icmp ult i64 %344, %319, !dbg !2147
  br i1 %345, label %337, label %350, !dbg !2156, !llvm.loop !2157

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2159

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1863, metadata !670), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1860, metadata !670), !dbg !2113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2159
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2160, !tbaa !881
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1881, metadata !670), !dbg !2135
  %352 = call i32 @iswprint(i32 %351) #12, !dbg !2162
  %353 = icmp eq i32 %352, 0, !dbg !2162
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1863, metadata !670), !dbg !2118
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2163
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1863, metadata !670), !dbg !2118
  %355 = add i64 %319, %314, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1860, metadata !670), !dbg !2113
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1863, metadata !670), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1860, metadata !670), !dbg !2113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2159
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1864, metadata !670), !dbg !2134
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2165
  %357 = icmp eq i32 %356, 0, !dbg !2166
  br i1 %357, label %313, label %358, !dbg !2167, !llvm.loop !2128

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2168
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1863, metadata !670), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1860, metadata !670), !dbg !2113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2168
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1863, metadata !670), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1860, metadata !670), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1835, metadata !670), !dbg !1898
  %366 = and i8 %365, 1, !dbg !2169
  %367 = icmp ne i8 %366, 0, !dbg !2169
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1859, metadata !670), !dbg !1971
  %368 = icmp ult i64 %364, 2, !dbg !2170
  %369 = or i1 %367, %112, !dbg !2171
  %370 = and i1 %368, %369, !dbg !2172
  br i1 %370, label %470, label %371, !dbg !2172

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1892, metadata !670), !dbg !2174
  br label %373, !dbg !2175

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1858, metadata !670), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1857, metadata !670), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1852, metadata !670), !dbg !1985
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1841, metadata !670), !dbg !1961
  br i1 %369, label %426, label %380, !dbg !2176

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2181

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1858, metadata !670), !dbg !1970
  %382 = and i8 %376, 1, !dbg !2184
  %383 = icmp eq i8 %382, 0, !dbg !2184
  %384 = and i1 %113, %383, !dbg !2184
  br i1 %384, label %385, label %401, !dbg !2184

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2186
  br i1 %386, label %387, label %389, !dbg !2190

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2186
  store i8 39, i8* %388, align 1, !dbg !2186, !tbaa !840
  br label %389, !dbg !2186

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1842, metadata !670), !dbg !1904
  %391 = icmp ult i64 %390, %130, !dbg !2191
  br i1 %391, label %392, label %394, !dbg !2194

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2191
  store i8 36, i8* %393, align 1, !dbg !2191, !tbaa !840
  br label %394, !dbg !2191

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1842, metadata !670), !dbg !1904
  %396 = icmp ult i64 %395, %130, !dbg !2195
  br i1 %396, label %397, label %399, !dbg !2198

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2195
  store i8 39, i8* %398, align 1, !dbg !2195, !tbaa !840
  br label %399, !dbg !2195

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1849, metadata !670), !dbg !1912
  br label %401, !dbg !2199

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1842, metadata !670), !dbg !1904
  %404 = icmp ult i64 %402, %130, !dbg !2200
  br i1 %404, label %405, label %407, !dbg !2203

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2200
  store i8 92, i8* %406, align 1, !dbg !2200, !tbaa !840
  br label %407, !dbg !2200

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1842, metadata !670), !dbg !1904
  %409 = icmp ult i64 %408, %130, !dbg !2204
  br i1 %409, label %410, label %414, !dbg !2207

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2204
  %412 = or i8 %411, 48, !dbg !2204
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2204
  store i8 %412, i8* %413, align 1, !dbg !2204, !tbaa !840
  br label %414, !dbg !2204

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1842, metadata !670), !dbg !1904
  %416 = icmp ult i64 %415, %130, !dbg !2208
  br i1 %416, label %417, label %422, !dbg !2211

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2208
  %419 = and i8 %418, 7, !dbg !2208
  %420 = or i8 %419, 48, !dbg !2208
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2208
  store i8 %420, i8* %421, align 1, !dbg !2208, !tbaa !840
  br label %422, !dbg !2208

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1842, metadata !670), !dbg !1904
  %424 = and i8 %377, 7, !dbg !2212
  %425 = or i8 %424, 48, !dbg !2213
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1852, metadata !670), !dbg !1985
  br label %435, !dbg !2214

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2215
  %428 = icmp eq i8 %427, 0, !dbg !2215
  br i1 %428, label %435, label %429, !dbg !2217

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2218
  br i1 %430, label %431, label %433, !dbg !2222

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2218
  store i8 92, i8* %432, align 1, !dbg !2218, !tbaa !840
  br label %433, !dbg !2218

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1857, metadata !670), !dbg !1969
  br label %435, !dbg !2223

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1858, metadata !670), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1857, metadata !670), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1852, metadata !670), !dbg !1985
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1842, metadata !670), !dbg !1904
  %441 = add i64 %374, 1, !dbg !2224
  %442 = icmp ugt i64 %372, %441, !dbg !2226
  br i1 %442, label %443, label %535, !dbg !2227

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2228
  %445 = icmp ne i8 %444, 0, !dbg !2228
  %446 = and i8 %440, 1, !dbg !2228
  %447 = icmp eq i8 %446, 0, !dbg !2228
  %448 = and i1 %445, %447, !dbg !2228
  br i1 %448, label %449, label %460, !dbg !2228

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2231
  br i1 %450, label %451, label %453, !dbg !2235

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2231
  store i8 39, i8* %452, align 1, !dbg !2231, !tbaa !840
  br label %453, !dbg !2231

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1842, metadata !670), !dbg !1904
  %455 = icmp ult i64 %454, %130, !dbg !2236
  br i1 %455, label %456, label %458, !dbg !2239

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2236
  store i8 39, i8* %457, align 1, !dbg !2236, !tbaa !840
  br label %458, !dbg !2236

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1849, metadata !670), !dbg !1912
  br label %460, !dbg !2240

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1842, metadata !670), !dbg !1904
  %463 = icmp ult i64 %461, %130, !dbg !2241
  br i1 %463, label %464, label %466, !dbg !2244

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2241
  store i8 %438, i8* %465, align 1, !dbg !2241, !tbaa !840
  br label %466, !dbg !2241

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1841, metadata !670), !dbg !1961
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2245
  %469 = load i8, i8* %468, align 1, !dbg !2245, !tbaa !840
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1852, metadata !670), !dbg !1985
  br label %373, !dbg !2246, !llvm.loop !2247

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1833, metadata !670), !dbg !1896
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1859, metadata !670), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1858, metadata !670), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1857, metadata !670), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1852, metadata !670), !dbg !1985
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1850, metadata !670), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1835, metadata !670), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1843, metadata !670), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1841, metadata !670), !dbg !1961
  br i1 %106, label %482, label %481, !dbg !2250

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2252

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2253

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2254
  %485 = zext i8 %484 to i64, !dbg !2254
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2255
  %487 = load i32, i32* %486, align 4, !dbg !2255, !tbaa !881
  %488 = and i8 %477, 31, !dbg !2256
  %489 = zext i8 %488 to i32, !dbg !2257
  %490 = shl i32 1, %489, !dbg !2258
  %491 = and i32 %487, %490, !dbg !2258
  %492 = icmp eq i32 %491, 0, !dbg !2258
  %493 = icmp eq i8 %156, 0, !dbg !2259
  %494 = and i1 %493, %492, !dbg !2260
  br i1 %494, label %535, label %497, !dbg !2260

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2259
  br i1 %496, label %535, label %497, !dbg !2261

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1833, metadata !670), !dbg !1896
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1859, metadata !670), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1852, metadata !670), !dbg !1985
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1850, metadata !670), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1835, metadata !670), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1843, metadata !670), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1841, metadata !670), !dbg !1961
  br i1 %111, label %507, label %635, !dbg !2262

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1858, metadata !670), !dbg !1970
  %508 = and i8 %502, 1, !dbg !2264
  %509 = icmp eq i8 %508, 0, !dbg !2264
  %510 = and i1 %113, %509, !dbg !2264
  br i1 %510, label %511, label %527, !dbg !2264

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2266
  br i1 %512, label %513, label %515, !dbg !2270

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2266
  store i8 39, i8* %514, align 1, !dbg !2266, !tbaa !840
  br label %515, !dbg !2266

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1842, metadata !670), !dbg !1904
  %517 = icmp ult i64 %516, %506, !dbg !2271
  br i1 %517, label %518, label %520, !dbg !2274

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2271
  store i8 36, i8* %519, align 1, !dbg !2271, !tbaa !840
  br label %520, !dbg !2271

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1842, metadata !670), !dbg !1904
  %522 = icmp ult i64 %521, %506, !dbg !2275
  br i1 %522, label %523, label %525, !dbg !2278

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2275
  store i8 39, i8* %524, align 1, !dbg !2275, !tbaa !840
  br label %525, !dbg !2275

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2278
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1849, metadata !670), !dbg !1912
  br label %527, !dbg !2279

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1842, metadata !670), !dbg !1904
  %530 = icmp ult i64 %528, %506, !dbg !2280
  br i1 %530, label %531, label %533, !dbg !2283

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2280
  store i8 92, i8* %532, align 1, !dbg !2280, !tbaa !840
  br label %533, !dbg !2280

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1833, metadata !670), !dbg !1896
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1859, metadata !670), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1858, metadata !670), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1852, metadata !670), !dbg !1985
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1850, metadata !670), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1835, metadata !670), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1843, metadata !670), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1841, metadata !670), !dbg !1961
  br label %562, !dbg !2284

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1833, metadata !670), !dbg !1896
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1859, metadata !670), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1858, metadata !670), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1852, metadata !670), !dbg !1985
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1850, metadata !670), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1835, metadata !670), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1843, metadata !670), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1841, metadata !670), !dbg !1961
  %546 = and i8 %540, 1, !dbg !2284
  %547 = icmp ne i8 %546, 0, !dbg !2284
  %548 = and i8 %543, 1, !dbg !2284
  %549 = icmp eq i8 %548, 0, !dbg !2284
  %550 = and i1 %547, %549, !dbg !2284
  br i1 %550, label %551, label %562, !dbg !2284

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2287
  br i1 %552, label %553, label %555, !dbg !2291

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2287
  store i8 39, i8* %554, align 1, !dbg !2287, !tbaa !840
  br label %555, !dbg !2287

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1842, metadata !670), !dbg !1904
  %557 = icmp ult i64 %556, %545, !dbg !2292
  br i1 %557, label %558, label %560, !dbg !2295

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2292
  store i8 39, i8* %559, align 1, !dbg !2292, !tbaa !840
  br label %560, !dbg !2292

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1849, metadata !670), !dbg !1912
  br label %562, !dbg !2296

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1842, metadata !670), !dbg !1904
  %572 = icmp ult i64 %570, %563, !dbg !2297
  br i1 %572, label %573, label %575, !dbg !2300

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2297
  store i8 %565, i8* %574, align 1, !dbg !2297, !tbaa !840
  br label %575, !dbg !2297

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1842, metadata !670), !dbg !1904
  %577 = and i8 %564, 1, !dbg !2301
  %578 = icmp eq i8 %577, 0, !dbg !2301
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1851, metadata !670), !dbg !1914
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2303
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1851, metadata !670), !dbg !1914
  br label %580, !dbg !2304

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1833, metadata !670), !dbg !1896
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1851, metadata !670), !dbg !1914
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1850, metadata !670), !dbg !1913
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1849, metadata !670), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1835, metadata !670), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1843, metadata !670), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1841, metadata !670), !dbg !1961
  %589 = add i64 %581, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1841, metadata !670), !dbg !1961
  br label %122, !dbg !2306, !llvm.loop !2307

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2309
  %593 = and i1 %113, %592, !dbg !2311
  %594 = xor i1 %593, true, !dbg !2311
  %595 = or i1 %111, %594, !dbg !2311
  br i1 %595, label %596, label %635, !dbg !2311

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2312
  %598 = xor i1 %597, true, !dbg !2312
  %599 = and i8 %128, 1, !dbg !2314
  %600 = icmp eq i8 %599, 0, !dbg !2314
  %601 = or i1 %600, %598, !dbg !2312
  br i1 %601, label %611, label %602, !dbg !2312

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2315
  %604 = icmp eq i8 %603, 0, !dbg !2315
  br i1 %604, label %607, label %605, !dbg !2318

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2319
  br label %645, !dbg !2320

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2321
  %609 = icmp ne i64 %125, 0, !dbg !2323
  %610 = and i1 %609, %608, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1833, metadata !670), !dbg !1896
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1842, metadata !670), !dbg !1904
  br i1 %610, label %27, label %611, !dbg !2324

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2325
  %613 = and i1 %612, %111, !dbg !2327
  br i1 %613, label %614, label %630, !dbg !2327

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1844, metadata !670), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1842, metadata !670), !dbg !1904
  %615 = load i8, i8* %99, align 1, !dbg !2328, !tbaa !840
  %616 = icmp eq i8 %615, 0, !dbg !2331
  br i1 %616, label %630, label %617, !dbg !2331

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2332

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1842, metadata !670), !dbg !1904
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1844, metadata !670), !dbg !1906
  %622 = icmp ult i64 %621, %130, !dbg !2332
  br i1 %622, label %623, label %625, !dbg !2335

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2332
  store i8 %619, i8* %624, align 1, !dbg !2332, !tbaa !840
  br label %625, !dbg !2332

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1842, metadata !670), !dbg !1904
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2336
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1844, metadata !670), !dbg !1906
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1844, metadata !670), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1842, metadata !670), !dbg !1904
  %628 = load i8, i8* %627, align 1, !dbg !2328, !tbaa !840
  %629 = icmp eq i8 %628, 0, !dbg !2331
  br i1 %629, label %630, label %618, !dbg !2331, !llvm.loop !2337

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1842, metadata !670), !dbg !1904
  %632 = icmp ult i64 %631, %130, !dbg !2339
  br i1 %632, label %633, label %645, !dbg !2341

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2342
  store i8 0, i8* %634, align 1, !dbg !2343, !tbaa !840
  br label %645, !dbg !2342

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1833, metadata !670), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1835, metadata !670), !dbg !1898
  %639 = icmp ne i32 %636, 2, !dbg !2344
  %640 = icmp eq i8 %103, 0, !dbg !2346
  %641 = or i1 %639, %640, !dbg !2347
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1836, metadata !670), !dbg !1899
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1836, metadata !670), !dbg !1899
  %643 = and i32 %5, -3, !dbg !2348
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2349
  br label %645, !dbg !2350

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2351
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2352 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2356, metadata !670), !dbg !2360
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2357, metadata !670), !dbg !2361
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2362
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2358, metadata !670), !dbg !2363
  %4 = icmp eq i8* %3, %0, !dbg !2364
  br i1 %4, label %5, label %75, !dbg !2366

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2367
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2359, metadata !670), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2369, metadata !670), !dbg !2385
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2383, metadata !670), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2384, metadata !670), !dbg !2389
  %7 = load i8, i8* %6, align 1, !dbg !2390, !tbaa !840
  %8 = sext i8 %7 to i32, !dbg !2390
  %9 = and i32 %8, -33, !dbg !2390
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2390

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2392, metadata !670), !dbg !2406
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2404, metadata !670), !dbg !2410
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2405, metadata !670), !dbg !2411
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2412
  %12 = load i8, i8* %11, align 1, !dbg !2412, !tbaa !840
  %13 = sext i8 %12 to i32, !dbg !2412
  %14 = and i32 %13, -33, !dbg !2412
  %15 = icmp eq i32 %14, 84, !dbg !2412
  br i1 %15, label %16, label %72, !dbg !2412

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2414, metadata !670), !dbg !2427
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2425, metadata !670), !dbg !2431
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2426, metadata !670), !dbg !2432
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2433
  %18 = load i8, i8* %17, align 1, !dbg !2433, !tbaa !840
  %19 = sext i8 %18 to i32, !dbg !2433
  %20 = and i32 %19, -33, !dbg !2433
  %21 = icmp eq i32 %20, 70, !dbg !2433
  br i1 %21, label %22, label %72, !dbg !2433

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2435, metadata !670), !dbg !2447
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2445, metadata !670), !dbg !2451
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2446, metadata !670), !dbg !2452
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2453
  %24 = load i8, i8* %23, align 1, !dbg !2453, !tbaa !840
  %25 = icmp eq i8 %24, 45, !dbg !2453
  br i1 %25, label %26, label %72, !dbg !2455

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2456, metadata !670), !dbg !2467
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2465, metadata !670), !dbg !2471
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2466, metadata !670), !dbg !2472
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2473
  %28 = load i8, i8* %27, align 1, !dbg !2473, !tbaa !840
  %29 = icmp eq i8 %28, 56, !dbg !2473
  br i1 %29, label %30, label %72, !dbg !2475

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2476, metadata !670), !dbg !2486
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2484, metadata !670), !dbg !2490
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2485, metadata !670), !dbg !2491
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2492
  %32 = load i8, i8* %31, align 1, !dbg !2492, !tbaa !840
  %33 = icmp eq i8 %32, 0, !dbg !2492
  br i1 %33, label %34, label %72, !dbg !2494

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2495, !tbaa !840
  %36 = icmp eq i8 %35, 96, !dbg !2496
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.84, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.85, i64 0, i64 0), !dbg !2495
  br label %75, !dbg !2497

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2392, metadata !670), !dbg !2498
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2404, metadata !670), !dbg !2502
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2405, metadata !670), !dbg !2503
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2504
  %40 = load i8, i8* %39, align 1, !dbg !2504, !tbaa !840
  %41 = sext i8 %40 to i32, !dbg !2504
  %42 = and i32 %41, -33, !dbg !2504
  %43 = icmp eq i32 %42, 66, !dbg !2504
  br i1 %43, label %44, label %72, !dbg !2504

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2414, metadata !670), !dbg !2505
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2425, metadata !670), !dbg !2507
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2426, metadata !670), !dbg !2508
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2509
  %46 = load i8, i8* %45, align 1, !dbg !2509, !tbaa !840
  %47 = icmp eq i8 %46, 49, !dbg !2509
  br i1 %47, label %48, label %72, !dbg !2510

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2435, metadata !670), !dbg !2511
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2445, metadata !670), !dbg !2513
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2446, metadata !670), !dbg !2514
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2515
  %50 = load i8, i8* %49, align 1, !dbg !2515, !tbaa !840
  %51 = icmp eq i8 %50, 56, !dbg !2515
  br i1 %51, label %52, label %72, !dbg !2516

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2456, metadata !670), !dbg !2517
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2465, metadata !670), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2466, metadata !670), !dbg !2520
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2521
  %54 = load i8, i8* %53, align 1, !dbg !2521, !tbaa !840
  %55 = icmp eq i8 %54, 48, !dbg !2521
  br i1 %55, label %56, label %72, !dbg !2522

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2476, metadata !670), !dbg !2523
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2484, metadata !670), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2485, metadata !670), !dbg !2526
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2527
  %58 = load i8, i8* %57, align 1, !dbg !2527, !tbaa !840
  %59 = icmp eq i8 %58, 51, !dbg !2527
  br i1 %59, label %60, label %72, !dbg !2528

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2529, metadata !670), !dbg !2538
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2536, metadata !670), !dbg !2542
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2537, metadata !670), !dbg !2543
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2544
  %62 = load i8, i8* %61, align 1, !dbg !2544, !tbaa !840
  %63 = icmp eq i8 %62, 48, !dbg !2544
  br i1 %63, label %64, label %72, !dbg !2546

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2547, metadata !670), !dbg !2555
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2553, metadata !670), !dbg !2559
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2554, metadata !670), !dbg !2560
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2561
  %66 = load i8, i8* %65, align 1, !dbg !2561, !tbaa !840
  %67 = icmp eq i8 %66, 0, !dbg !2561
  br i1 %67, label %68, label %72, !dbg !2563

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2564, !tbaa !840
  %70 = icmp eq i8 %69, 96, !dbg !2565
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.86, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.87, i64 0, i64 0), !dbg !2564
  br label %75, !dbg !2566

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2567
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.83, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.82, i64 0, i64 0), !dbg !2568
  br label %75, !dbg !2569

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2570
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2571 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2575, metadata !670), !dbg !2578
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2576, metadata !670), !dbg !2579
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2577, metadata !670), !dbg !2580
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2581, metadata !670) #12, !dbg !2594
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2586, metadata !670) #12, !dbg !2596
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2587, metadata !670) #12, !dbg !2597
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2588, metadata !670) #12, !dbg !2598
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2599
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2589, metadata !670) #12, !dbg !2600
  %6 = tail call i32* @__errno_location() #17, !dbg !2601
  %7 = load i32, i32* %6, align 4, !dbg !2601, !tbaa !881
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2590, metadata !670) #12, !dbg !2602
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2603
  %9 = load i32, i32* %8, align 4, !dbg !2603, !tbaa !1765
  %10 = or i32 %9, 1, !dbg !2604
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2591, metadata !670) #12, !dbg !2605
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2606
  %12 = load i32, i32* %11, align 8, !dbg !2606, !tbaa !1705
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2607
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2608
  %15 = load i8*, i8** %14, align 8, !dbg !2608, !tbaa !1791
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2609
  %17 = load i8*, i8** %16, align 8, !dbg !2609, !tbaa !1794
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !2610
  %19 = add i64 %18, 1, !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2592, metadata !670) #12, !dbg !2612
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2613, metadata !670) #12, !dbg !2618
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2620
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2593, metadata !670) #12, !dbg !2621
  %21 = load i32, i32* %11, align 8, !dbg !2622, !tbaa !1705
  %22 = load i8*, i8** %14, align 8, !dbg !2623, !tbaa !1791
  %23 = load i8*, i8** %16, align 8, !dbg !2624, !tbaa !1794
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !2625
  store i32 %7, i32* %6, align 4, !dbg !2626, !tbaa !881
  ret i8* %20, !dbg !2627
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2582 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2581, metadata !670), !dbg !2628
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2586, metadata !670), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2587, metadata !670), !dbg !2630
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2588, metadata !670), !dbg !2631
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2632
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2589, metadata !670), !dbg !2633
  %7 = tail call i32* @__errno_location() #17, !dbg !2634
  %8 = load i32, i32* %7, align 4, !dbg !2634, !tbaa !881
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2590, metadata !670), !dbg !2635
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2636
  %10 = load i32, i32* %9, align 4, !dbg !2636, !tbaa !1765
  %11 = icmp ne i64* %2, null, !dbg !2637
  %12 = xor i1 %11, true, !dbg !2637
  %13 = zext i1 %12 to i32, !dbg !2637
  %14 = or i32 %10, %13, !dbg !2638
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2591, metadata !670), !dbg !2639
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2640
  %16 = load i32, i32* %15, align 8, !dbg !2640, !tbaa !1705
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2641
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2642
  %19 = load i8*, i8** %18, align 8, !dbg !2642, !tbaa !1791
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2643
  %21 = load i8*, i8** %20, align 8, !dbg !2643, !tbaa !1794
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2644
  %23 = add i64 %22, 1, !dbg !2645
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2592, metadata !670), !dbg !2646
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2613, metadata !670) #12, !dbg !2647
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2649
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2593, metadata !670), !dbg !2650
  %25 = load i32, i32* %15, align 8, !dbg !2651, !tbaa !1705
  %26 = load i8*, i8** %18, align 8, !dbg !2652, !tbaa !1791
  %27 = load i8*, i8** %20, align 8, !dbg !2653, !tbaa !1794
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2654
  store i32 %8, i32* %7, align 4, !dbg !2655, !tbaa !881
  br i1 %11, label %29, label %30, !dbg !2656

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2657, !tbaa !855
  br label %30, !dbg !2659

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2660
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2661 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2665, !tbaa !677
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2663, metadata !670), !dbg !2666
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2664, metadata !670), !dbg !2667
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2664, metadata !670), !dbg !2667
  %2 = load i32, i32* @nslots, align 4, !dbg !2668, !tbaa !881
  %3 = icmp sgt i32 %2, 1, !dbg !2671
  br i1 %3, label %4, label %13, !dbg !2672

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2673

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2664, metadata !670), !dbg !2667
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2673
  %8 = load i8*, i8** %7, align 8, !dbg !2673, !tbaa !2674
  tail call void @free(i8* %8) #12, !dbg !2676
  %9 = add nuw i64 %6, 1, !dbg !2677
  %10 = load i32, i32* @nslots, align 4, !dbg !2668, !tbaa !881
  %11 = sext i32 %10 to i64, !dbg !2671
  %12 = icmp slt i64 %9, %11, !dbg !2671
  br i1 %12, label %5, label %13, !dbg !2672, !llvm.loop !2678

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2680
  %15 = load i8*, i8** %14, align 8, !dbg !2680, !tbaa !2674
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2682
  br i1 %16, label %18, label %17, !dbg !2683

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #12, !dbg !2684
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2686, !tbaa !2687
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2688, !tbaa !2674
  br label %18, !dbg !2689

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2690
  br i1 %19, label %22, label %20, !dbg !2692

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2693
  tail call void @free(i8* %21) #12, !dbg !2695
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2696, !tbaa !677
  br label %22, !dbg !2697

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2698, !tbaa !881
  ret void, !dbg !2699
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2700 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2704, metadata !670), !dbg !2706
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2705, metadata !670), !dbg !2707
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2708
  ret i8* %3, !dbg !2709
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2710 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2714, metadata !670), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2715, metadata !670), !dbg !2729
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2716, metadata !670), !dbg !2730
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2717, metadata !670), !dbg !2731
  %5 = tail call i32* @__errno_location() #17, !dbg !2732
  %6 = load i32, i32* %5, align 4, !dbg !2732, !tbaa !881
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2718, metadata !670), !dbg !2733
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2734, !tbaa !677
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2719, metadata !670), !dbg !2735
  %8 = icmp slt i32 %0, 0, !dbg !2736
  br i1 %8, label %9, label %10, !dbg !2738

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2739
  unreachable, !dbg !2739

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2740, !tbaa !881
  %12 = icmp sgt i32 %11, %0, !dbg !2741
  br i1 %12, label %34, label %13, !dbg !2742

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2743
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2744
  br i1 %15, label %16, label %17, !dbg !2746

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2747
  unreachable, !dbg !2747

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2748
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2748
  %20 = add nsw i32 %0, 1, !dbg !2749
  %21 = sext i32 %20 to i64, !dbg !2750
  %22 = shl nsw i64 %21, 4, !dbg !2751
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2752
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2752
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2719, metadata !670), !dbg !2735
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2753, !tbaa !677
  br i1 %14, label %25, label %26, !dbg !2754

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2755, !tbaa.struct !2757
  br label %26, !dbg !2758

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2759, !tbaa !881
  %28 = sext i32 %27 to i64, !dbg !2760
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2760
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2761
  %31 = sub nsw i32 %20, %27, !dbg !2762
  %32 = sext i32 %31 to i64, !dbg !2763
  %33 = shl nsw i64 %32, 4, !dbg !2764
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2761
  store i32 %20, i32* @nslots, align 4, !dbg !2765, !tbaa !881
  br label %34, !dbg !2766

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2719, metadata !670), !dbg !2735
  %36 = sext i32 %0 to i64, !dbg !2767
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2768
  %38 = load i64, i64* %37, align 8, !dbg !2768, !tbaa !2687
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2723, metadata !670), !dbg !2769
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2770
  %40 = load i8*, i8** %39, align 8, !dbg !2770, !tbaa !2674
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2725, metadata !670), !dbg !2771
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2772
  %42 = load i32, i32* %41, align 4, !dbg !2772, !tbaa !1765
  %43 = or i32 %42, 1, !dbg !2773
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2726, metadata !670), !dbg !2774
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2775
  %45 = load i32, i32* %44, align 8, !dbg !2775, !tbaa !1705
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2776
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2777
  %48 = load i8*, i8** %47, align 8, !dbg !2777, !tbaa !1791
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2778
  %50 = load i8*, i8** %49, align 8, !dbg !2778, !tbaa !1794
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2779
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2727, metadata !670), !dbg !2780
  %52 = icmp ugt i64 %38, %51, !dbg !2781
  br i1 %52, label %63, label %53, !dbg !2783

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2723, metadata !670), !dbg !2769
  store i64 %54, i64* %37, align 8, !dbg !2786, !tbaa !2687
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2787
  br i1 %55, label %57, label %56, !dbg !2789

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2790
  br label %57, !dbg !2790

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2613, metadata !670) #12, !dbg !2791
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2793
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2725, metadata !670), !dbg !2771
  store i8* %58, i8** %39, align 8, !dbg !2794, !tbaa !2674
  %59 = load i32, i32* %44, align 8, !dbg !2795, !tbaa !1705
  %60 = load i8*, i8** %47, align 8, !dbg !2796, !tbaa !1791
  %61 = load i8*, i8** %49, align 8, !dbg !2797, !tbaa !1794
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2798
  br label %63, !dbg !2799

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2725, metadata !670), !dbg !2771
  store i32 %6, i32* %5, align 4, !dbg !2800, !tbaa !881
  ret i8* %64, !dbg !2801
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2802 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2806, metadata !670), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2807, metadata !670), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2808, metadata !670), !dbg !2811
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2812
  ret i8* %4, !dbg !2813
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2814 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2818, metadata !670), !dbg !2819
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2704, metadata !670) #12, !dbg !2820
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2705, metadata !670) #12, !dbg !2822
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2823
  ret i8* %2, !dbg !2824
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2825 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2829, metadata !670), !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2830, metadata !670), !dbg !2832
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2806, metadata !670) #12, !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2807, metadata !670) #12, !dbg !2835
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2808, metadata !670) #12, !dbg !2836
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2837
  ret i8* %3, !dbg !2838
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2839 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2847, metadata !2853), !dbg !2854
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2843, metadata !670), !dbg !2856
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2844, metadata !670), !dbg !2857
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2845, metadata !670), !dbg !2858
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2859
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2859
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2846, metadata !670), !dbg !2860
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2852, metadata !670) #12, !dbg !2861
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2862
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2862
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2847, metadata !670) #12, !dbg !2854
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2847, metadata !2863) #12, !dbg !2854
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2854
  %8 = icmp eq i32 %1, 10, !dbg !2864
  br i1 %8, label %9, label %10, !dbg !2866

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2867, !noalias !2868
  unreachable, !dbg !2867

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2847, metadata !2863) #12, !dbg !2854
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2871
  store i32 %1, i32* %11, align 8, !dbg !2871, !alias.scope !2868
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2871
  %13 = bitcast i32* %12 to i8*, !dbg !2871
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2871
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2872
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2846, metadata !670), !dbg !2860
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2873
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2874
  ret i8* %14, !dbg !2875
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2876 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2847, metadata !2853), !dbg !2885
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2880, metadata !670), !dbg !2887
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2881, metadata !670), !dbg !2888
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2882, metadata !670), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2883, metadata !670), !dbg !2890
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2891
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2891
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2884, metadata !670), !dbg !2892
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2852, metadata !670) #12, !dbg !2893
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2894
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2894
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2847, metadata !670) #12, !dbg !2885
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2847, metadata !2863) #12, !dbg !2885
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2885
  %9 = icmp eq i32 %1, 10, !dbg !2895
  br i1 %9, label %10, label %11, !dbg !2896

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2897, !noalias !2898
  unreachable, !dbg !2897

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2847, metadata !2863) #12, !dbg !2885
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2901
  store i32 %1, i32* %12, align 8, !dbg !2901, !alias.scope !2898
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2901
  %14 = bitcast i32* %13 to i8*, !dbg !2901
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !2901
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2884, metadata !670), !dbg !2892
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2903
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2904
  ret i8* %15, !dbg !2905
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2906 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2847, metadata !2853), !dbg !2912
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2910, metadata !670), !dbg !2915
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2911, metadata !670), !dbg !2916
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2843, metadata !670) #12, !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2844, metadata !670) #12, !dbg !2918
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2845, metadata !670) #12, !dbg !2919
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2920
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2920
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2846, metadata !670) #12, !dbg !2921
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2852, metadata !670) #12, !dbg !2922
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2923
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2923
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2847, metadata !670) #12, !dbg !2912
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2847, metadata !2863) #12, !dbg !2912
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2912
  %7 = icmp eq i32 %0, 10, !dbg !2924
  br i1 %7, label %8, label %9, !dbg !2925

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2926, !noalias !2927
  unreachable, !dbg !2926

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2847, metadata !2863) #12, !dbg !2912
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2930
  store i32 %0, i32* %10, align 8, !dbg !2930, !alias.scope !2927
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2930
  %12 = bitcast i32* %11 to i8*, !dbg !2930
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !2930
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2931
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2846, metadata !670) #12, !dbg !2921
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2932
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2933
  ret i8* %13, !dbg !2934
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2935 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2847, metadata !2853), !dbg !2942
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2939, metadata !670), !dbg !2945
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2940, metadata !670), !dbg !2946
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2941, metadata !670), !dbg !2947
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2880, metadata !670) #12, !dbg !2948
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2881, metadata !670) #12, !dbg !2949
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2882, metadata !670) #12, !dbg !2950
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2883, metadata !670) #12, !dbg !2951
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2952
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2952
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2884, metadata !670) #12, !dbg !2953
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2852, metadata !670) #12, !dbg !2954
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2955
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2955
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2847, metadata !670) #12, !dbg !2942
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2847, metadata !2863) #12, !dbg !2942
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2942
  %8 = icmp eq i32 %0, 10, !dbg !2956
  br i1 %8, label %9, label %10, !dbg !2957

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2958, !noalias !2959
  unreachable, !dbg !2958

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2847, metadata !2863) #12, !dbg !2942
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2962
  store i32 %0, i32* %11, align 8, !dbg !2962, !alias.scope !2959
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2962
  %13 = bitcast i32* %12 to i8*, !dbg !2962
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2962
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2963
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2884, metadata !670) #12, !dbg !2953
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !2964
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2965
  ret i8* %14, !dbg !2966
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2967 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2971, metadata !670), !dbg !2975
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2972, metadata !670), !dbg !2976
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2973, metadata !670), !dbg !2977
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2978
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2978
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2979, !tbaa.struct !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2974, metadata !670), !dbg !2981
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1724, metadata !670), !dbg !2982
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1725, metadata !670), !dbg !2984
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1726, metadata !670), !dbg !2985
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1727, metadata !670), !dbg !2986
  %6 = lshr i8 %2, 5, !dbg !2987
  %7 = zext i8 %6 to i64, !dbg !2987
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2988
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1728, metadata !670), !dbg !2989
  %9 = and i8 %2, 31, !dbg !2990
  %10 = zext i8 %9 to i32, !dbg !2991
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1730, metadata !670), !dbg !2992
  %11 = load i32, i32* %8, align 4, !dbg !2993, !tbaa !881
  %12 = lshr i32 %11, %10, !dbg !2994
  %13 = and i32 %12, 1, !dbg !2995
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1731, metadata !670), !dbg !2996
  %14 = xor i32 %13, 1, !dbg !2997
  %15 = shl i32 %14, %10, !dbg !2998
  %16 = xor i32 %15, %11, !dbg !2999
  store i32 %16, i32* %8, align 4, !dbg !2999, !tbaa !881
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2974, metadata !670), !dbg !2981
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3000
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3001
  ret i8* %17, !dbg !3002
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3003 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3007, metadata !670), !dbg !3009
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3008, metadata !670), !dbg !3010
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2971, metadata !670) #12, !dbg !3011
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2972, metadata !670) #12, !dbg !3013
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2973, metadata !670) #12, !dbg !3014
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3015
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3015
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3016, !tbaa.struct !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2974, metadata !670) #12, !dbg !3017
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1724, metadata !670) #12, !dbg !3018
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1725, metadata !670) #12, !dbg !3020
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1726, metadata !670) #12, !dbg !3021
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1727, metadata !670) #12, !dbg !3022
  %5 = lshr i8 %1, 5, !dbg !3023
  %6 = zext i8 %5 to i64, !dbg !3023
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3024
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1728, metadata !670) #12, !dbg !3025
  %8 = and i8 %1, 31, !dbg !3026
  %9 = zext i8 %8 to i32, !dbg !3027
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1730, metadata !670) #12, !dbg !3028
  %10 = load i32, i32* %7, align 4, !dbg !3029, !tbaa !881
  %11 = lshr i32 %10, %9, !dbg !3030
  %12 = and i32 %11, 1, !dbg !3031
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1731, metadata !670) #12, !dbg !3032
  %13 = xor i32 %12, 1, !dbg !3033
  %14 = shl i32 %13, %9, !dbg !3034
  %15 = xor i32 %14, %10, !dbg !3035
  store i32 %15, i32* %7, align 4, !dbg !3035, !tbaa !881
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2974, metadata !670) #12, !dbg !3017
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3036
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3037
  ret i8* %16, !dbg !3038
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3039 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3041, metadata !670), !dbg !3042
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3007, metadata !670) #12, !dbg !3043
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3008, metadata !670) #12, !dbg !3045
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2971, metadata !670) #12, !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2972, metadata !670) #12, !dbg !3048
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2973, metadata !670) #12, !dbg !3049
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3050
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3050
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3051, !tbaa.struct !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2974, metadata !670) #12, !dbg !3052
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1724, metadata !670) #12, !dbg !3053
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1725, metadata !670) #12, !dbg !3055
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1726, metadata !670) #12, !dbg !3056
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1727, metadata !670) #12, !dbg !3057
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3058
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1728, metadata !670) #12, !dbg !3059
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1730, metadata !670) #12, !dbg !3060
  %5 = load i32, i32* %4, align 4, !dbg !3061, !tbaa !881
  %6 = or i32 %5, 67108864, !dbg !3062
  store i32 %6, i32* %4, align 4, !dbg !3062, !tbaa !881
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2974, metadata !670) #12, !dbg !3052
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3063
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3064
  ret i8* %7, !dbg !3065
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3066 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3068, metadata !670), !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3069, metadata !670), !dbg !3071
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2971, metadata !670) #12, !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2972, metadata !670) #12, !dbg !3074
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2973, metadata !670) #12, !dbg !3075
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3076
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3076
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3077, !tbaa.struct !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2974, metadata !670) #12, !dbg !3078
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1724, metadata !670) #12, !dbg !3079
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1725, metadata !670) #12, !dbg !3081
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1726, metadata !670) #12, !dbg !3082
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1727, metadata !670) #12, !dbg !3083
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3084
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1728, metadata !670) #12, !dbg !3085
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1730, metadata !670) #12, !dbg !3086
  %6 = load i32, i32* %5, align 4, !dbg !3087, !tbaa !881
  %7 = or i32 %6, 67108864, !dbg !3088
  store i32 %7, i32* %5, align 4, !dbg !3088, !tbaa !881
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2974, metadata !670) #12, !dbg !3078
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3089
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3090
  ret i8* %8, !dbg !3091
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3092 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2847, metadata !2853), !dbg !3098
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3094, metadata !670), !dbg !3100
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3095, metadata !670), !dbg !3101
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3096, metadata !670), !dbg !3102
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3103
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3103
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2852, metadata !670) #12, !dbg !3104
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3105
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3105
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2847, metadata !670) #12, !dbg !3098
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2847, metadata !2863) #12, !dbg !3098
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3098
  %9 = icmp eq i32 %1, 10, !dbg !3106
  br i1 %9, label %10, label %11, !dbg !3107

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3108, !noalias !3109
  unreachable, !dbg !3108

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2847, metadata !2863) #12, !dbg !3098
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3112
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3113
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3114
  store i32 %1, i32* %13, align 8, !dbg !3114
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3114
  %15 = bitcast i32* %14 to i8*, !dbg !3114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3114
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3097, metadata !670), !dbg !3115
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1724, metadata !670), !dbg !3116
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1725, metadata !670), !dbg !3118
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1726, metadata !670), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1727, metadata !670), !dbg !3120
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3121
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1728, metadata !670), !dbg !3122
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1730, metadata !670), !dbg !3123
  %17 = load i32, i32* %16, align 4, !dbg !3124, !tbaa !881
  %18 = or i32 %17, 67108864, !dbg !3125
  store i32 %18, i32* %16, align 4, !dbg !3125, !tbaa !881
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3097, metadata !670), !dbg !3115
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3126
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3127
  ret i8* %19, !dbg !3128
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3129 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3133, metadata !670), !dbg !3137
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3134, metadata !670), !dbg !3138
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3135, metadata !670), !dbg !3139
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3136, metadata !670), !dbg !3140
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3141, metadata !670) #12, !dbg !3151
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3146, metadata !670) #12, !dbg !3153
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3147, metadata !670) #12, !dbg !3154
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3148, metadata !670) #12, !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3149, metadata !670) #12, !dbg !3156
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3157
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3158, !tbaa.struct !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3150, metadata !670) #12, !dbg !3159
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1773, metadata !670) #12, !dbg !3160
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1774, metadata !670) #12, !dbg !3162
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1775, metadata !670) #12, !dbg !3163
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1773, metadata !670) #12, !dbg !3160
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1773, metadata !670) #12, !dbg !3160
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3164
  store i32 10, i32* %7, align 8, !dbg !3165, !tbaa !1705
  %8 = icmp ne i8* %1, null, !dbg !3166
  %9 = icmp ne i8* %2, null, !dbg !3167
  %10 = and i1 %8, %9, !dbg !3168
  br i1 %10, label %12, label %11, !dbg !3168

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3169
  unreachable, !dbg !3169

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3170
  store i8* %1, i8** %13, align 8, !dbg !3171, !tbaa !1791
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3172
  store i8* %2, i8** %14, align 8, !dbg !3173, !tbaa !1794
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3150, metadata !670) #12, !dbg !3159
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3174
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3175
  ret i8* %15, !dbg !3176
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3142 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3141, metadata !670), !dbg !3177
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3146, metadata !670), !dbg !3178
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3147, metadata !670), !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3148, metadata !670), !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3149, metadata !670), !dbg !3181
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3182
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3182
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3183, !tbaa.struct !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3150, metadata !670), !dbg !3184
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1773, metadata !670) #12, !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1774, metadata !670) #12, !dbg !3187
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1775, metadata !670) #12, !dbg !3188
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1773, metadata !670) #12, !dbg !3185
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1773, metadata !670) #12, !dbg !3185
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3189
  store i32 10, i32* %8, align 8, !dbg !3190, !tbaa !1705
  %9 = icmp ne i8* %1, null, !dbg !3191
  %10 = icmp ne i8* %2, null, !dbg !3192
  %11 = and i1 %9, %10, !dbg !3193
  br i1 %11, label %13, label %12, !dbg !3193

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3194
  unreachable, !dbg !3194

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3195
  store i8* %1, i8** %14, align 8, !dbg !3196, !tbaa !1791
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3197
  store i8* %2, i8** %15, align 8, !dbg !3198, !tbaa !1794
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3150, metadata !670), !dbg !3184
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3199
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3200
  ret i8* %16, !dbg !3201
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3202 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3206, metadata !670), !dbg !3209
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3207, metadata !670), !dbg !3210
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3208, metadata !670), !dbg !3211
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3133, metadata !670) #12, !dbg !3212
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3134, metadata !670) #12, !dbg !3214
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3135, metadata !670) #12, !dbg !3215
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3136, metadata !670) #12, !dbg !3216
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3141, metadata !670) #12, !dbg !3217
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3146, metadata !670) #12, !dbg !3219
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3147, metadata !670) #12, !dbg !3220
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3148, metadata !670) #12, !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3149, metadata !670) #12, !dbg !3222
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3224, !tbaa.struct !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3150, metadata !670) #12, !dbg !3225
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1773, metadata !670) #12, !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1774, metadata !670) #12, !dbg !3228
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1775, metadata !670) #12, !dbg !3229
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1773, metadata !670) #12, !dbg !3226
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1773, metadata !670) #12, !dbg !3226
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3230
  store i32 10, i32* %6, align 8, !dbg !3231, !tbaa !1705
  %7 = icmp ne i8* %0, null, !dbg !3232
  %8 = icmp ne i8* %1, null, !dbg !3233
  %9 = and i1 %7, %8, !dbg !3234
  br i1 %9, label %11, label %10, !dbg !3234

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3235
  unreachable, !dbg !3235

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3236
  store i8* %0, i8** %12, align 8, !dbg !3237, !tbaa !1791
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3238
  store i8* %1, i8** %13, align 8, !dbg !3239, !tbaa !1794
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3150, metadata !670) #12, !dbg !3225
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3240
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3241
  ret i8* %14, !dbg !3242
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3243 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3247, metadata !670), !dbg !3251
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3248, metadata !670), !dbg !3252
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3249, metadata !670), !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3250, metadata !670), !dbg !3254
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3141, metadata !670) #12, !dbg !3255
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3146, metadata !670) #12, !dbg !3257
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3147, metadata !670) #12, !dbg !3258
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3148, metadata !670) #12, !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3149, metadata !670) #12, !dbg !3260
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3261
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3261
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3262, !tbaa.struct !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3150, metadata !670) #12, !dbg !3263
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1773, metadata !670) #12, !dbg !3264
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1774, metadata !670) #12, !dbg !3266
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1775, metadata !670) #12, !dbg !3267
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1773, metadata !670) #12, !dbg !3264
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1773, metadata !670) #12, !dbg !3264
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3268
  store i32 10, i32* %7, align 8, !dbg !3269, !tbaa !1705
  %8 = icmp ne i8* %0, null, !dbg !3270
  %9 = icmp ne i8* %1, null, !dbg !3271
  %10 = and i1 %8, %9, !dbg !3272
  br i1 %10, label %12, label %11, !dbg !3272

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3273
  unreachable, !dbg !3273

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3274
  store i8* %0, i8** %13, align 8, !dbg !3275, !tbaa !1791
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3276
  store i8* %1, i8** %14, align 8, !dbg !3277, !tbaa !1794
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3150, metadata !670) #12, !dbg !3263
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3278
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3279
  ret i8* %15, !dbg !3280
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3281 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3285, metadata !670), !dbg !3288
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3286, metadata !670), !dbg !3289
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3287, metadata !670), !dbg !3290
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3291
  ret i8* %4, !dbg !3292
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3293 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3297, metadata !670), !dbg !3299
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3298, metadata !670), !dbg !3300
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3285, metadata !670) #12, !dbg !3301
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3286, metadata !670) #12, !dbg !3303
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3287, metadata !670) #12, !dbg !3304
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3305
  ret i8* %3, !dbg !3306
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3307 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3311, metadata !670), !dbg !3313
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3312, metadata !670), !dbg !3314
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3285, metadata !670) #12, !dbg !3315
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3286, metadata !670) #12, !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3287, metadata !670) #12, !dbg !3318
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3319
  ret i8* %3, !dbg !3320
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3321 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3325, metadata !670), !dbg !3326
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3311, metadata !670) #12, !dbg !3327
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3312, metadata !670) #12, !dbg !3329
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3285, metadata !670) #12, !dbg !3330
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3286, metadata !670) #12, !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3287, metadata !670) #12, !dbg !3333
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3334
  ret i8* %2, !dbg !3335
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !3336 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3341, metadata !670), !dbg !3342
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #12, !dbg !3343
  ret i32 %2, !dbg !3344
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3345 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3390, metadata !670), !dbg !3396
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3391, metadata !670), !dbg !3397
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3392, metadata !670), !dbg !3398
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3393, metadata !670), !dbg !3399
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3394, metadata !670), !dbg !3400
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3395, metadata !670), !dbg !3401
  %7 = icmp eq i8* %1, null, !dbg !3402
  br i1 %7, label %10, label %8, !dbg !3404

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3405
  br label %12, !dbg !3405

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.97, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3406
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.98, i64 0, i64 0), i32 5) #12, !dbg !3407
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !3407
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.99, i64 0, i64 0), i32 5) #12, !dbg !3408
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !3408
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
  ], !dbg !3409

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3410
  unreachable, !dbg !3410

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.100, i64 0, i64 0), i32 5) #12, !dbg !3412
  %20 = load i8*, i8** %4, align 8, !dbg !3412, !tbaa !677
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3412
  br label %146, !dbg !3413

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.101, i64 0, i64 0), i32 5) #12, !dbg !3414
  %24 = load i8*, i8** %4, align 8, !dbg !3414, !tbaa !677
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3414
  %26 = load i8*, i8** %25, align 8, !dbg !3414, !tbaa !677
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3414
  br label %146, !dbg !3415

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.102, i64 0, i64 0), i32 5) #12, !dbg !3416
  %30 = load i8*, i8** %4, align 8, !dbg !3416, !tbaa !677
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3416
  %32 = load i8*, i8** %31, align 8, !dbg !3416, !tbaa !677
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3416
  %34 = load i8*, i8** %33, align 8, !dbg !3416, !tbaa !677
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3416
  br label %146, !dbg !3417

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.103, i64 0, i64 0), i32 5) #12, !dbg !3418
  %38 = load i8*, i8** %4, align 8, !dbg !3418, !tbaa !677
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3418
  %40 = load i8*, i8** %39, align 8, !dbg !3418, !tbaa !677
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3418
  %42 = load i8*, i8** %41, align 8, !dbg !3418, !tbaa !677
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3418
  %44 = load i8*, i8** %43, align 8, !dbg !3418, !tbaa !677
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3418
  br label %146, !dbg !3419

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.104, i64 0, i64 0), i32 5) #12, !dbg !3420
  %48 = load i8*, i8** %4, align 8, !dbg !3420, !tbaa !677
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3420
  %50 = load i8*, i8** %49, align 8, !dbg !3420, !tbaa !677
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3420
  %52 = load i8*, i8** %51, align 8, !dbg !3420, !tbaa !677
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3420
  %54 = load i8*, i8** %53, align 8, !dbg !3420, !tbaa !677
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3420
  %56 = load i8*, i8** %55, align 8, !dbg !3420, !tbaa !677
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3420
  br label %146, !dbg !3421

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.105, i64 0, i64 0), i32 5) #12, !dbg !3422
  %60 = load i8*, i8** %4, align 8, !dbg !3422, !tbaa !677
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3422
  %62 = load i8*, i8** %61, align 8, !dbg !3422, !tbaa !677
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3422
  %64 = load i8*, i8** %63, align 8, !dbg !3422, !tbaa !677
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3422
  %66 = load i8*, i8** %65, align 8, !dbg !3422, !tbaa !677
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3422
  %68 = load i8*, i8** %67, align 8, !dbg !3422, !tbaa !677
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3422
  %70 = load i8*, i8** %69, align 8, !dbg !3422, !tbaa !677
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3422
  br label %146, !dbg !3423

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.106, i64 0, i64 0), i32 5) #12, !dbg !3424
  %74 = load i8*, i8** %4, align 8, !dbg !3424, !tbaa !677
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3424
  %76 = load i8*, i8** %75, align 8, !dbg !3424, !tbaa !677
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3424
  %78 = load i8*, i8** %77, align 8, !dbg !3424, !tbaa !677
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3424
  %80 = load i8*, i8** %79, align 8, !dbg !3424, !tbaa !677
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3424
  %82 = load i8*, i8** %81, align 8, !dbg !3424, !tbaa !677
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3424
  %84 = load i8*, i8** %83, align 8, !dbg !3424, !tbaa !677
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3424
  %86 = load i8*, i8** %85, align 8, !dbg !3424, !tbaa !677
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3424
  br label %146, !dbg !3425

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.107, i64 0, i64 0), i32 5) #12, !dbg !3426
  %90 = load i8*, i8** %4, align 8, !dbg !3426, !tbaa !677
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3426
  %92 = load i8*, i8** %91, align 8, !dbg !3426, !tbaa !677
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3426
  %94 = load i8*, i8** %93, align 8, !dbg !3426, !tbaa !677
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3426
  %96 = load i8*, i8** %95, align 8, !dbg !3426, !tbaa !677
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3426
  %98 = load i8*, i8** %97, align 8, !dbg !3426, !tbaa !677
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3426
  %100 = load i8*, i8** %99, align 8, !dbg !3426, !tbaa !677
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3426
  %102 = load i8*, i8** %101, align 8, !dbg !3426, !tbaa !677
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3426
  %104 = load i8*, i8** %103, align 8, !dbg !3426, !tbaa !677
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3426
  br label %146, !dbg !3427

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.108, i64 0, i64 0), i32 5) #12, !dbg !3428
  %108 = load i8*, i8** %4, align 8, !dbg !3428, !tbaa !677
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3428
  %110 = load i8*, i8** %109, align 8, !dbg !3428, !tbaa !677
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3428
  %112 = load i8*, i8** %111, align 8, !dbg !3428, !tbaa !677
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3428
  %114 = load i8*, i8** %113, align 8, !dbg !3428, !tbaa !677
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3428
  %116 = load i8*, i8** %115, align 8, !dbg !3428, !tbaa !677
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3428
  %118 = load i8*, i8** %117, align 8, !dbg !3428, !tbaa !677
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3428
  %120 = load i8*, i8** %119, align 8, !dbg !3428, !tbaa !677
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3428
  %122 = load i8*, i8** %121, align 8, !dbg !3428, !tbaa !677
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3428
  %124 = load i8*, i8** %123, align 8, !dbg !3428, !tbaa !677
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3428
  br label %146, !dbg !3429

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.109, i64 0, i64 0), i32 5) #12, !dbg !3430
  %128 = load i8*, i8** %4, align 8, !dbg !3430, !tbaa !677
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3430
  %130 = load i8*, i8** %129, align 8, !dbg !3430, !tbaa !677
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3430
  %132 = load i8*, i8** %131, align 8, !dbg !3430, !tbaa !677
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3430
  %134 = load i8*, i8** %133, align 8, !dbg !3430, !tbaa !677
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3430
  %136 = load i8*, i8** %135, align 8, !dbg !3430, !tbaa !677
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3430
  %138 = load i8*, i8** %137, align 8, !dbg !3430, !tbaa !677
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3430
  %140 = load i8*, i8** %139, align 8, !dbg !3430, !tbaa !677
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3430
  %142 = load i8*, i8** %141, align 8, !dbg !3430, !tbaa !677
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3430
  %144 = load i8*, i8** %143, align 8, !dbg !3430, !tbaa !677
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3430
  br label %146, !dbg !3431

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3432
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3433 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3437, metadata !670), !dbg !3443
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3438, metadata !670), !dbg !3444
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3439, metadata !670), !dbg !3445
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3440, metadata !670), !dbg !3446
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3441, metadata !670), !dbg !3447
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3442, metadata !670), !dbg !3448
  br label %6, !dbg !3449

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3442, metadata !670), !dbg !3448
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3451
  %9 = load i8*, i8** %8, align 8, !dbg !3451, !tbaa !677
  %10 = icmp eq i8* %9, null, !dbg !3453
  %11 = add i64 %7, 1, !dbg !3454
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3442, metadata !670), !dbg !3448
  br i1 %10, label %12, label %6, !dbg !3453, !llvm.loop !3455

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3457
  ret void, !dbg !3458
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3459 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3470, metadata !670), !dbg !3478
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3471, metadata !670), !dbg !3479
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3472, metadata !670), !dbg !3480
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3473, metadata !670), !dbg !3481
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3474, metadata !670), !dbg !3482
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3483
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3483
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3476, metadata !670), !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3475, metadata !670), !dbg !3485
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3475, metadata !670), !dbg !3485
  %11 = load i32, i32* %8, align 8, !dbg !3486
  %12 = icmp ult i32 %11, 41, !dbg !3486
  br i1 %12, label %13, label %18, !dbg !3486

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3486
  %15 = sext i32 %11 to i64, !dbg !3486
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3486
  %17 = add i32 %11, 8, !dbg !3486
  store i32 %17, i32* %8, align 8, !dbg !3486
  br label %21, !dbg !3486

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3486
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3486
  store i8* %20, i8** %10, align 8, !dbg !3486
  br label %21, !dbg !3486

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3486
  %25 = load i8*, i8** %24, align 8, !dbg !3486
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3489
  store i8* %25, i8** %26, align 16, !dbg !3490, !tbaa !677
  %27 = icmp eq i8* %25, null, !dbg !3491
  br i1 %27, label %30, label %28, !dbg !3492

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3475, metadata !670), !dbg !3485
  %29 = icmp ult i32 %22, 41, !dbg !3486
  br i1 %29, label %35, label %32, !dbg !3486

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3494
  ret void, !dbg !3494

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3486
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3486
  store i8* %34, i8** %10, align 8, !dbg !3486
  br label %40, !dbg !3486

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3486
  %37 = sext i32 %22 to i64, !dbg !3486
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3486
  %39 = add i32 %22, 8, !dbg !3486
  store i32 %39, i32* %8, align 8, !dbg !3486
  br label %40, !dbg !3486

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3486
  %44 = load i8*, i8** %43, align 8, !dbg !3486
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3489
  store i8* %44, i8** %45, align 8, !dbg !3490, !tbaa !677
  %46 = icmp eq i8* %44, null, !dbg !3491
  br i1 %46, label %30, label %47, !dbg !3492

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3475, metadata !670), !dbg !3485
  %48 = icmp ult i32 %41, 41, !dbg !3486
  br i1 %48, label %52, label %49, !dbg !3486

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3486
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3486
  store i8* %51, i8** %10, align 8, !dbg !3486
  br label %57, !dbg !3486

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3486
  %54 = sext i32 %41 to i64, !dbg !3486
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3486
  %56 = add i32 %41, 8, !dbg !3486
  store i32 %56, i32* %8, align 8, !dbg !3486
  br label %57, !dbg !3486

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3486
  %61 = load i8*, i8** %60, align 8, !dbg !3486
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3489
  store i8* %61, i8** %62, align 16, !dbg !3490, !tbaa !677
  %63 = icmp eq i8* %61, null, !dbg !3491
  br i1 %63, label %30, label %64, !dbg !3492

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3475, metadata !670), !dbg !3485
  %65 = icmp ult i32 %58, 41, !dbg !3486
  br i1 %65, label %69, label %66, !dbg !3486

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3486
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3486
  store i8* %68, i8** %10, align 8, !dbg !3486
  br label %74, !dbg !3486

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3486
  %71 = sext i32 %58 to i64, !dbg !3486
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3486
  %73 = add i32 %58, 8, !dbg !3486
  store i32 %73, i32* %8, align 8, !dbg !3486
  br label %74, !dbg !3486

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3486
  %78 = load i8*, i8** %77, align 8, !dbg !3486
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3489
  store i8* %78, i8** %79, align 8, !dbg !3490, !tbaa !677
  %80 = icmp eq i8* %78, null, !dbg !3491
  br i1 %80, label %30, label %81, !dbg !3492

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3475, metadata !670), !dbg !3485
  %82 = icmp ult i32 %75, 41, !dbg !3486
  br i1 %82, label %86, label %83, !dbg !3486

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3486
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3486
  store i8* %85, i8** %10, align 8, !dbg !3486
  br label %91, !dbg !3486

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3486
  %88 = sext i32 %75 to i64, !dbg !3486
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3486
  %90 = add i32 %75, 8, !dbg !3486
  store i32 %90, i32* %8, align 8, !dbg !3486
  br label %91, !dbg !3486

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3486
  %95 = load i8*, i8** %94, align 8, !dbg !3486
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3489
  store i8* %95, i8** %96, align 16, !dbg !3490, !tbaa !677
  %97 = icmp eq i8* %95, null, !dbg !3491
  br i1 %97, label %30, label %98, !dbg !3492

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3475, metadata !670), !dbg !3485
  %99 = icmp ult i32 %92, 41, !dbg !3486
  br i1 %99, label %103, label %100, !dbg !3486

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3486
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3486
  store i8* %102, i8** %10, align 8, !dbg !3486
  br label %108, !dbg !3486

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3486
  %105 = sext i32 %92 to i64, !dbg !3486
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3486
  %107 = add i32 %92, 8, !dbg !3486
  store i32 %107, i32* %8, align 8, !dbg !3486
  br label %108, !dbg !3486

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3486
  %111 = load i8*, i8** %110, align 8, !dbg !3486
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3489
  store i8* %111, i8** %112, align 8, !dbg !3490, !tbaa !677
  %113 = icmp eq i8* %111, null, !dbg !3491
  br i1 %113, label %30, label %114, !dbg !3492

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3475, metadata !670), !dbg !3485
  %115 = load i8*, i8** %10, align 8, !dbg !3486
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3486
  store i8* %116, i8** %10, align 8, !dbg !3486
  %117 = bitcast i8* %115 to i8**, !dbg !3486
  %118 = load i8*, i8** %117, align 8, !dbg !3486
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3489
  store i8* %118, i8** %119, align 16, !dbg !3490, !tbaa !677
  %120 = icmp eq i8* %118, null, !dbg !3491
  br i1 %120, label %30, label %121, !dbg !3492

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3475, metadata !670), !dbg !3485
  %122 = load i8*, i8** %10, align 8, !dbg !3486
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3486
  store i8* %123, i8** %10, align 8, !dbg !3486
  %124 = bitcast i8* %122 to i8**, !dbg !3486
  %125 = load i8*, i8** %124, align 8, !dbg !3486
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3489
  store i8* %125, i8** %126, align 8, !dbg !3490, !tbaa !677
  %127 = icmp eq i8* %125, null, !dbg !3491
  br i1 %127, label %30, label %128, !dbg !3492

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3475, metadata !670), !dbg !3485
  %129 = load i8*, i8** %10, align 8, !dbg !3486
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3486
  store i8* %130, i8** %10, align 8, !dbg !3486
  %131 = bitcast i8* %129 to i8**, !dbg !3486
  %132 = load i8*, i8** %131, align 8, !dbg !3486
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3489
  store i8* %132, i8** %133, align 16, !dbg !3490, !tbaa !677
  %134 = icmp eq i8* %132, null, !dbg !3491
  br i1 %134, label %30, label %135, !dbg !3492

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3475, metadata !670), !dbg !3485
  %136 = load i8*, i8** %10, align 8, !dbg !3486
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3486
  store i8* %137, i8** %10, align 8, !dbg !3486
  %138 = bitcast i8* %136 to i8**, !dbg !3486
  %139 = load i8*, i8** %138, align 8, !dbg !3486
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3489
  store i8* %139, i8** %140, align 8, !dbg !3490, !tbaa !677
  %141 = icmp eq i8* %139, null, !dbg !3491
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3475, metadata !670), !dbg !3485
  %142 = select i1 %141, i64 9, i64 10, !dbg !3492
  br label %30, !dbg !3492
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3495 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3499, metadata !670), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3500, metadata !670), !dbg !3509
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3501, metadata !670), !dbg !3510
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3502, metadata !670), !dbg !3511
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3512
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3512
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3503, metadata !670), !dbg !3513
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3514
  call void @llvm.va_start(i8* nonnull %6), !dbg !3514
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3515
  call void @llvm.va_end(i8* nonnull %6), !dbg !3516
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3517
  ret void, !dbg !3517
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3518 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.112, i64 0, i64 0), i32 5) #12, !dbg !3519
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.113, i64 0, i64 0)) #12, !dbg !3519
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.114, i64 0, i64 0), i32 5) #12, !dbg !3520
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.115, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.116, i64 0, i64 0)) #12, !dbg !3520
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.117, i64 0, i64 0), i32 5) #12, !dbg !3521
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3521, !tbaa !677
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !3521
  ret void, !dbg !3522
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3523 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3527, metadata !670), !dbg !3529
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3528, metadata !670), !dbg !3530
  %3 = udiv i64 9223372036854775807, %1, !dbg !3531
  %4 = icmp ult i64 %3, %0, !dbg !3531
  br i1 %4, label %5, label %6, !dbg !3533

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3534
  unreachable, !dbg !3534

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3535
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3536, metadata !670) #12, !dbg !3543
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3545
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3542, metadata !670) #12, !dbg !3546
  %9 = icmp eq i8* %8, null, !dbg !3547
  %10 = icmp ne i64 %7, 0, !dbg !3549
  %11 = and i1 %10, %9, !dbg !3550
  br i1 %11, label %12, label %13, !dbg !3550

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3551
  unreachable, !dbg !3551

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3552
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3537 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3536, metadata !670), !dbg !3553
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3554
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3542, metadata !670), !dbg !3555
  %3 = icmp eq i8* %2, null, !dbg !3556
  %4 = icmp ne i64 %0, 0, !dbg !3557
  %5 = and i1 %4, %3, !dbg !3558
  br i1 %5, label %6, label %7, !dbg !3558

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3559
  unreachable, !dbg !3559

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3560
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3561 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3565, metadata !670), !dbg !3568
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3566, metadata !670), !dbg !3569
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3567, metadata !670), !dbg !3570
  %4 = udiv i64 9223372036854775807, %2, !dbg !3571
  %5 = icmp ult i64 %4, %1, !dbg !3571
  br i1 %5, label %6, label %7, !dbg !3573

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3574
  unreachable, !dbg !3574

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3575
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3576, metadata !670) #12, !dbg !3582
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3581, metadata !670) #12, !dbg !3584
  %9 = icmp eq i64 %8, 0, !dbg !3585
  %10 = icmp ne i8* %0, null, !dbg !3587
  %11 = and i1 %10, %9, !dbg !3588
  br i1 %11, label %12, label %13, !dbg !3588

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3589
  br label %19, !dbg !3591

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3592
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3576, metadata !670) #12, !dbg !3582
  %15 = icmp eq i8* %14, null, !dbg !3593
  %16 = icmp ne i64 %8, 0, !dbg !3595
  %17 = and i1 %16, %15, !dbg !3596
  br i1 %17, label %18, label %19, !dbg !3596

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3597
  unreachable, !dbg !3597

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3598
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3577 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3576, metadata !670), !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3581, metadata !670), !dbg !3600
  %3 = icmp eq i64 %1, 0, !dbg !3601
  %4 = icmp ne i8* %0, null, !dbg !3602
  %5 = and i1 %4, %3, !dbg !3603
  br i1 %5, label %6, label %7, !dbg !3603

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3604
  br label %13, !dbg !3605

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3606
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3576, metadata !670), !dbg !3599
  %9 = icmp eq i8* %8, null, !dbg !3607
  %10 = icmp ne i64 %1, 0, !dbg !3608
  %11 = and i1 %10, %9, !dbg !3609
  br i1 %11, label %12, label %13, !dbg !3609

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3610
  unreachable, !dbg !3610

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3611
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !627 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !632, metadata !670), !dbg !3612
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !633, metadata !670), !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !634, metadata !670), !dbg !3614
  %4 = load i64, i64* %1, align 8, !dbg !3615, !tbaa !855
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !635, metadata !670), !dbg !3616
  %5 = icmp eq i8* %0, null, !dbg !3617
  br i1 %5, label %6, label %13, !dbg !3619

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3620
  br i1 %7, label %8, label %17, !dbg !3623

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3624
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !635, metadata !670), !dbg !3616
  %10 = icmp ugt i64 %2, 128, !dbg !3626
  %11 = zext i1 %10 to i64, !dbg !3626
  %12 = add nuw nsw i64 %9, %11, !dbg !3627
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !635, metadata !670), !dbg !3616
  br label %17, !dbg !3628

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3629
  %15 = icmp ugt i64 %14, %4, !dbg !3632
  br i1 %15, label %20, label %16, !dbg !3633

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3634
  unreachable, !dbg !3634

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !635, metadata !670), !dbg !3616
  store i64 %18, i64* %1, align 8, !dbg !3635, !tbaa !855
  %19 = mul i64 %18, %2, !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3576, metadata !670) #12, !dbg !3637
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3581, metadata !670) #12, !dbg !3639
  br label %27, !dbg !3640

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3641
  %22 = add i64 %4, 1, !dbg !3642
  %23 = add i64 %22, %21, !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !635, metadata !670), !dbg !3616
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !635, metadata !670), !dbg !3616
  store i64 %23, i64* %1, align 8, !dbg !3635, !tbaa !855
  %24 = mul i64 %23, %2, !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3576, metadata !670) #12, !dbg !3637
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3581, metadata !670) #12, !dbg !3639
  %25 = icmp eq i64 %24, 0, !dbg !3644
  br i1 %25, label %26, label %27, !dbg !3640

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !3645
  br label %34, !dbg !3646

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !3647
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3576, metadata !670) #12, !dbg !3637
  %30 = icmp eq i8* %29, null, !dbg !3648
  %31 = icmp ne i64 %28, 0, !dbg !3649
  %32 = and i1 %31, %30, !dbg !3650
  br i1 %32, label %33, label %34, !dbg !3650

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3651
  unreachable, !dbg !3651

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3652
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3653 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3655, metadata !670), !dbg !3656
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3536, metadata !670) #12, !dbg !3657
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3659
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3542, metadata !670) #12, !dbg !3660
  %3 = icmp eq i8* %2, null, !dbg !3661
  %4 = icmp ne i64 %0, 0, !dbg !3662
  %5 = and i1 %4, %3, !dbg !3663
  br i1 %5, label %6, label %7, !dbg !3663

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3664
  unreachable, !dbg !3664

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3665
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3666 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3670, metadata !670), !dbg !3672
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3671, metadata !670), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !632, metadata !670) #12, !dbg !3674
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !633, metadata !670) #12, !dbg !3676
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !634, metadata !670) #12, !dbg !3677
  %3 = load i64, i64* %1, align 8, !dbg !3678, !tbaa !855
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !635, metadata !670) #12, !dbg !3679
  %4 = icmp eq i8* %0, null, !dbg !3680
  br i1 %4, label %5, label %8, !dbg !3681

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3682
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !635, metadata !670) #12, !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !635, metadata !670) #12, !dbg !3679
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3683
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !635, metadata !670) #12, !dbg !3679
  store i64 %7, i64* %1, align 8, !dbg !3684, !tbaa !855
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3576, metadata !670) #12, !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3581, metadata !670) #12, !dbg !3687
  br label %17, !dbg !3688

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3689
  br i1 %9, label %11, label %10, !dbg !3690

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3691
  unreachable, !dbg !3691

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3692
  %13 = add i64 %3, 1, !dbg !3693
  %14 = add i64 %13, %12, !dbg !3694
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !635, metadata !670) #12, !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !635, metadata !670) #12, !dbg !3679
  store i64 %14, i64* %1, align 8, !dbg !3684, !tbaa !855
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3576, metadata !670) #12, !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3581, metadata !670) #12, !dbg !3687
  %15 = icmp eq i64 %14, 0, !dbg !3695
  br i1 %15, label %16, label %17, !dbg !3688

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !3696
  br label %24, !dbg !3697

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !3698
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3576, metadata !670) #12, !dbg !3685
  %20 = icmp eq i8* %19, null, !dbg !3699
  %21 = icmp ne i64 %18, 0, !dbg !3700
  %22 = and i1 %21, %20, !dbg !3701
  br i1 %22, label %23, label %24, !dbg !3701

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3702
  unreachable, !dbg !3702

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3703
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3704 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3706, metadata !670), !dbg !3707
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3536, metadata !670) #12, !dbg !3708
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3710
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3542, metadata !670) #12, !dbg !3711
  %3 = icmp eq i8* %2, null, !dbg !3712
  %4 = icmp ne i64 %0, 0, !dbg !3713
  %5 = and i1 %4, %3, !dbg !3714
  br i1 %5, label %6, label %7, !dbg !3714

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3715
  unreachable, !dbg !3715

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3716
  ret i8* %2, !dbg !3717
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3718 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3720, metadata !670), !dbg !3723
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3721, metadata !670), !dbg !3724
  %3 = udiv i64 9223372036854775807, %1, !dbg !3725
  %4 = icmp ult i64 %3, %0, !dbg !3725
  br i1 %4, label %8, label %5, !dbg !3727

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3728
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3722, metadata !670), !dbg !3729
  %7 = icmp eq i8* %6, null, !dbg !3730
  br i1 %7, label %8, label %9, !dbg !3731

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3732
  unreachable, !dbg !3732

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3733
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3734 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3740, metadata !670), !dbg !3742
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3741, metadata !670), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3536, metadata !670) #12, !dbg !3744
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3746
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3542, metadata !670) #12, !dbg !3747
  %4 = icmp eq i8* %3, null, !dbg !3748
  %5 = icmp ne i64 %1, 0, !dbg !3749
  %6 = and i1 %5, %4, !dbg !3750
  br i1 %6, label %7, label %8, !dbg !3750

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3751
  unreachable, !dbg !3751

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3752
  ret i8* %3, !dbg !3753
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3754 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3756, metadata !670), !dbg !3757
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3758
  %3 = add i64 %2, 1, !dbg !3759
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3740, metadata !670) #12, !dbg !3760
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3741, metadata !670) #12, !dbg !3762
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3536, metadata !670) #12, !dbg !3763
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3765
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3542, metadata !670) #12, !dbg !3766
  %5 = icmp eq i8* %4, null, !dbg !3767
  %6 = icmp ne i64 %3, 0, !dbg !3768
  %7 = and i1 %6, %5, !dbg !3769
  br i1 %7, label %8, label %9, !dbg !3769

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3770
  unreachable, !dbg !3770

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !3771
  ret i8* %4, !dbg !3772
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3773 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3775, !tbaa !881
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.130, i64 0, i64 0), i32 5) #12, !dbg !3776
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i64 0, i64 0), i8* %2) #12, !dbg !3777
  tail call void @abort() #15, !dbg !3778
  unreachable, !dbg !3778
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmemcoll(i8*, i64, i8*, i64) local_unnamed_addr #6 !dbg !3779 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3784, metadata !670), !dbg !3790
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3785, metadata !670), !dbg !3791
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3786, metadata !670), !dbg !3792
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3787, metadata !670), !dbg !3793
  %5 = tail call i32 @memcoll(i8* %0, i64 %1, i8* %2, i64 %3) #12, !dbg !3794
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3788, metadata !670), !dbg !3795
  %6 = tail call i32* @__errno_location() #17, !dbg !3796
  %7 = load i32, i32* %6, align 4, !dbg !3796, !tbaa !881
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3789, metadata !670), !dbg !3797
  %8 = icmp eq i32 %7, 0, !dbg !3798
  br i1 %8, label %16, label %9, !dbg !3800

; <label>:9:                                      ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3801, metadata !670) #12, !dbg !3810
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3806, metadata !670) #12, !dbg !3812
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3807, metadata !670) #12, !dbg !3813
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3808, metadata !670) #12, !dbg !3814
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3809, metadata !670) #12, !dbg !3815
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.134, i64 0, i64 0), i32 5) #12, !dbg !3816
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %10) #12, !dbg !3817
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.135, i64 0, i64 0), i32 5) #12, !dbg !3818
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11) #12, !dbg !3819
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !3820, !tbaa !881
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.136, i64 0, i64 0), i32 5) #12, !dbg !3821
  %14 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %1) #12, !dbg !3822
  %15 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %3) #12, !dbg !3823
  tail call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* %13, i8* %14, i8* %15) #12, !dbg !3824
  br label %16, !dbg !3825

; <label>:16:                                     ; preds = %4, %9
  ret i32 %5, !dbg !3826
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmemcoll0(i8*, i64, i8*, i64) local_unnamed_addr #6 !dbg !3827 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3829, metadata !670), !dbg !3835
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3830, metadata !670), !dbg !3836
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3831, metadata !670), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3832, metadata !670), !dbg !3838
  %5 = tail call i32 @memcoll0(i8* %0, i64 %1, i8* %2, i64 %3) #12, !dbg !3839
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3833, metadata !670), !dbg !3840
  %6 = tail call i32* @__errno_location() #17, !dbg !3841
  %7 = load i32, i32* %6, align 4, !dbg !3841, !tbaa !881
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3834, metadata !670), !dbg !3842
  %8 = icmp eq i32 %7, 0, !dbg !3843
  br i1 %8, label %18, label %9, !dbg !3845

; <label>:9:                                      ; preds = %4
  %10 = add i64 %1, -1, !dbg !3846
  %11 = add i64 %3, -1, !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3801, metadata !670) #12, !dbg !3848
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3806, metadata !670) #12, !dbg !3850
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !3807, metadata !670) #12, !dbg !3851
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3808, metadata !670) #12, !dbg !3852
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3809, metadata !670) #12, !dbg !3853
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.134, i64 0, i64 0), i32 5) #12, !dbg !3854
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %12) #12, !dbg !3855
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.135, i64 0, i64 0), i32 5) #12, !dbg !3856
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #12, !dbg !3857
  %14 = load volatile i32, i32* @exit_failure, align 4, !dbg !3858, !tbaa !881
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.136, i64 0, i64 0), i32 5) #12, !dbg !3859
  %16 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %10) #12, !dbg !3860
  %17 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %11) #12, !dbg !3861
  tail call void (i32, i32, i8*, ...) @error(i32 %14, i32 0, i8* %15, i8* %16, i8* %17) #12, !dbg !3862
  br label %18, !dbg !3863

; <label>:18:                                     ; preds = %4, %9
  ret i32 %5, !dbg !3864
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3865 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3868, metadata !670), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3869, metadata !670), !dbg !3875
  %3 = icmp eq i64 %0, 0, !dbg !3876
  %4 = icmp eq i64 %1, 0, !dbg !3877
  %5 = or i1 %3, %4, !dbg !3878
  br i1 %5, label %12, label %6, !dbg !3878

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3871, metadata !670), !dbg !3880
  %8 = udiv i64 %7, %1, !dbg !3881
  %9 = icmp eq i64 %8, %0, !dbg !3883
  br i1 %9, label %12, label %10, !dbg !3884

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3885
  store i32 12, i32* %11, align 4, !dbg !3887, !tbaa !881
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3868, metadata !670), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3869, metadata !670), !dbg !3875
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3888
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3870, metadata !670), !dbg !3889
  br label %16, !dbg !3890

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3891
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3892 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3937, metadata !670), !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3938, metadata !670), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3940, metadata !670), !dbg !3943
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3944
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3939, metadata !670), !dbg !3945
  %3 = icmp slt i32 %2, 0, !dbg !3946
  br i1 %3, label %4, label %6, !dbg !3948

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3949
  br label %24, !dbg !3950

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3951
  %8 = icmp eq i32 %7, 0, !dbg !3951
  br i1 %8, label %13, label %9, !dbg !3953

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3954
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3955
  %12 = icmp eq i64 %11, -1, !dbg !3956
  br i1 %12, label %16, label %13, !dbg !3957

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3958
  %15 = icmp eq i32 %14, 0, !dbg !3958
  br i1 %15, label %16, label %18, !dbg !3959

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3938, metadata !670), !dbg !3942
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3960
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3940, metadata !670), !dbg !3943
  br label %24, !dbg !3961

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3962
  %20 = load i32, i32* %19, align 4, !dbg !3962, !tbaa !881
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3938, metadata !670), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3938, metadata !670), !dbg !3942
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3960
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3940, metadata !670), !dbg !3943
  %22 = icmp eq i32 %20, 0, !dbg !3963
  br i1 %22, label %24, label %23, !dbg !3961

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3965, !tbaa !881
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3940, metadata !670), !dbg !3943
  br label %24, !dbg !3967

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3968
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !210 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !218, metadata !670), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !219, metadata !670), !dbg !3970
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3971
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #12, !dbg !3971
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !220, metadata !670), !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !233, metadata !670), !dbg !3973
  call void @llvm.va_start(i8* nonnull %4), !dbg !3974
  %5 = icmp eq i32 %1, 1030, !dbg !3975
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !3975

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !3976

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3976
  %12 = load i8*, i8** %11, align 16, !dbg !3976
  %13 = sext i32 %7 to i64, !dbg !3976
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !3976
  %15 = add i32 %7, 8, !dbg !3976
  store i32 %15, i32* %6, align 16, !dbg !3976
  br label %20, !dbg !3976

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3976
  %18 = load i8*, i8** %17, align 8, !dbg !3976
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !3976
  store i8* %19, i8** %17, align 8, !dbg !3976
  br label %20, !dbg !3976

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !3976
  %23 = load i32, i32* %22, align 4, !dbg !3976
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !234, metadata !670), !dbg !3977
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3978, !tbaa !881
  %25 = icmp sgt i32 %24, -1, !dbg !3980
  br i1 %25, label %26, label %39, !dbg !3981

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #12, !dbg !3982
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !233, metadata !670), !dbg !3973
  %28 = icmp sgt i32 %27, -1, !dbg !3984
  br i1 %28, label %36, label %29, !dbg !3986

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !3987
  %31 = load i32, i32* %30, align 4, !dbg !3987, !tbaa !881
  %32 = icmp eq i32 %31, 22, !dbg !3988
  br i1 %32, label %33, label %36, !dbg !3989

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3990
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !233, metadata !670), !dbg !3973
  %35 = icmp slt i32 %34, 0, !dbg !3992
  br i1 %35, label %75, label %36, !dbg !3994

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !233, metadata !670), !dbg !3973
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !881
  br label %42, !dbg !3995

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3996
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !233, metadata !670), !dbg !3973
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3997
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !3997
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !233, metadata !670), !dbg !3973
  %45 = icmp sgt i32 %44, -1, !dbg !3998
  %46 = icmp eq i32 %43, -1, !dbg !3999
  %47 = and i1 %45, %46, !dbg !4000
  br i1 %47, label %48, label %75, !dbg !4000

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #12, !dbg !4001
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !237, metadata !670), !dbg !4002
  %50 = icmp slt i32 %49, 0, !dbg !4003
  br i1 %50, label %55, label %51, !dbg !4004

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !4005
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #12, !dbg !4006
  %54 = icmp eq i32 %53, -1, !dbg !4007
  br i1 %54, label %55, label %75, !dbg !4008

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #17, !dbg !4009
  %57 = load i32, i32* %56, align 4, !dbg !4009, !tbaa !881
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !240, metadata !670), !dbg !4010
  %58 = call i32 @close(i32 %44) #12, !dbg !4011
  store i32 %57, i32* %56, align 4, !dbg !4012, !tbaa !881
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !233, metadata !670), !dbg !3973
  br label %75, !dbg !4013

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !4014

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4014
  %62 = load i8*, i8** %61, align 16, !dbg !4014
  %63 = sext i32 %7 to i64, !dbg !4014
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !4014
  %65 = add i32 %7, 8, !dbg !4014
  store i32 %65, i32* %6, align 16, !dbg !4014
  br label %70, !dbg !4014

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4014
  %68 = load i8*, i8** %67, align 8, !dbg !4014
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !4014
  store i8* %69, i8** %67, align 8, !dbg !4014
  br label %70, !dbg !4014

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !4014
  %73 = load i8*, i8** %72, align 8, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !243, metadata !670), !dbg !4015
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #12, !dbg !4016
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !233, metadata !670), !dbg !3973
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !233, metadata !670), !dbg !3973
  call void @llvm.va_end(i8* nonnull %4), !dbg !4017
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #12, !dbg !4018
  ret i32 %76, !dbg !4019
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4020 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4065, metadata !670), !dbg !4066
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4067
  br i1 %2, label %6, label %3, !dbg !4069

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4070
  %5 = icmp eq i32 %4, 0, !dbg !4070
  br i1 %5, label %6, label %8, !dbg !4071

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4072
  br label %17, !dbg !4073

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4074, metadata !670) #12, !dbg !4079
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4081
  %10 = load i32, i32* %9, align 8, !dbg !4081, !tbaa !948
  %11 = and i32 %10, 256, !dbg !4083
  %12 = icmp eq i32 %11, 0, !dbg !4083
  br i1 %12, label %15, label %13, !dbg !4084

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4085
  br label %15, !dbg !4085

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4086
  br label %17, !dbg !4087

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4088
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4089 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4134, metadata !670), !dbg !4140
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4135, metadata !670), !dbg !4141
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4136, metadata !670), !dbg !4142
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4143
  %5 = load i8*, i8** %4, align 8, !dbg !4143, !tbaa !1514
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4144
  %7 = load i8*, i8** %6, align 8, !dbg !4144, !tbaa !1513
  %8 = icmp eq i8* %5, %7, !dbg !4145
  br i1 %8, label %9, label %28, !dbg !4146

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4147
  %11 = load i8*, i8** %10, align 8, !dbg !4147, !tbaa !4148
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4149
  %13 = load i8*, i8** %12, align 8, !dbg !4149, !tbaa !4150
  %14 = icmp eq i8* %11, %13, !dbg !4151
  br i1 %14, label %15, label %28, !dbg !4152

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4153
  %17 = load i8*, i8** %16, align 8, !dbg !4153, !tbaa !4154
  %18 = icmp eq i8* %17, null, !dbg !4155
  br i1 %18, label %19, label %28, !dbg !4156

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4157
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4137, metadata !670), !dbg !4159
  %22 = icmp eq i64 %21, -1, !dbg !4160
  br i1 %22, label %30, label %23, !dbg !4162

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4163
  %25 = load i32, i32* %24, align 8, !dbg !4164, !tbaa !948
  %26 = and i32 %25, -17, !dbg !4164
  store i32 %26, i32* %24, align 8, !dbg !4164, !tbaa !948
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4165
  store i64 %21, i64* %27, align 8, !dbg !4166, !tbaa !4167
  br label %30, !dbg !4168

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4169
  br label %30, !dbg !4170

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4171
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4172 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4189, metadata !670), !dbg !4198
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4190, metadata !670), !dbg !4199
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4191, metadata !670), !dbg !4200
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4192, metadata !670), !dbg !4201
  %6 = bitcast i32* %5 to i8*, !dbg !4202
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4202
  %7 = icmp eq i32* %0, null, !dbg !4203
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4189, metadata !670), !dbg !4198
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4189, metadata !670), !dbg !4198
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4206
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4193, metadata !670), !dbg !4207
  %10 = icmp ugt i64 %9, -3, !dbg !4208
  %11 = icmp ne i64 %2, 0, !dbg !4209
  %12 = and i1 %11, %10, !dbg !4210
  br i1 %12, label %13, label %18, !dbg !4210

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4211
  br i1 %14, label %18, label %15, !dbg !4212

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4213, !tbaa !840
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4195, metadata !670), !dbg !4214
  %17 = zext i8 %16 to i32, !dbg !4215
  store i32 %17, i32* %8, align 4, !dbg !4216, !tbaa !881
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4217
  ret i64 %19, !dbg !4217
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4218 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4263, metadata !670), !dbg !4268
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4269
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4270, metadata !670), !dbg !4273
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4275
  %4 = load i32, i32* %3, align 8, !dbg !4275, !tbaa !948
  %5 = and i32 %4, 32, !dbg !4275
  %6 = icmp eq i32 %5, 0, !dbg !4276
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4277
  %8 = icmp ne i32 %7, 0, !dbg !4278
  br i1 %6, label %9, label %19, !dbg !4279

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4281
  %11 = xor i1 %8, true, !dbg !4282
  %12 = or i1 %10, %11, !dbg !4282
  %13 = sext i1 %8 to i32, !dbg !4282
  br i1 %12, label %22, label %14, !dbg !4282

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4283
  %16 = load i32, i32* %15, align 4, !dbg !4283, !tbaa !881
  %17 = icmp ne i32 %16, 9, !dbg !4284
  %18 = sext i1 %17 to i32, !dbg !4285
  br label %22, !dbg !4285

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4286

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4288
  store i32 0, i32* %21, align 4, !dbg !4290, !tbaa !881
  br label %22, !dbg !4288

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4291
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4292 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4298, metadata !670), !dbg !4372
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4365, metadata !670), !dbg !4375
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4376
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4296, metadata !670), !dbg !4377
  %4 = icmp eq i8* %3, null, !dbg !4378
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), i8* %3, !dbg !4380
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4296, metadata !670), !dbg !4377
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4381, !tbaa !677
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4312, metadata !670) #12, !dbg !4382
  %7 = icmp eq i8* %6, null, !dbg !4383
  br i1 %7, label %8, label %123, !dbg !4384

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.154, i64 0, i64 0)) #12, !dbg !4385
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4313, metadata !670) #12, !dbg !4386
  %10 = icmp eq i8* %9, null, !dbg !4387
  br i1 %10, label %14, label %11, !dbg !4389

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4390, !tbaa !840
  %13 = icmp eq i8 %12, 0, !dbg !4391
  br i1 %13, label %14, label %15, !dbg !4392

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4393

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.155, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4313, metadata !670) #12, !dbg !4386
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !4394
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4316, metadata !670) #12, !dbg !4395
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4318, metadata !670) #12, !dbg !4396
  %18 = icmp eq i64 %17, 0, !dbg !4397
  br i1 %18, label %24, label %19, !dbg !4398

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4399
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4399
  %22 = load i8, i8* %21, align 1, !dbg !4399, !tbaa !840
  %23 = icmp ne i8 %22, 47, !dbg !4399
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4400
  %27 = add i64 %17, 14, !dbg !4401
  %28 = add i64 %27, %26, !dbg !4402
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !4403
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4315, metadata !670) #12, !dbg !4404
  %30 = icmp eq i8* %29, null, !dbg !4405
  br i1 %30, label %121, label %31, !dbg !4405

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !4406
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4409

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4410, !tbaa !840
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4412
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.156, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4413
  br label %37, !dbg !4414

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4412
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.156, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4413
  br label %37, !dbg !4414

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !4415
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4320, metadata !670) #12, !dbg !4416
  %39 = icmp slt i32 %38, 0, !dbg !4417
  br i1 %39, label %119, label %40, !dbg !4418

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.157, i64 0, i64 0)) #12, !dbg !4419
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4321, metadata !670) #12, !dbg !4420
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4421
  br i1 %42, label %43, label %45, !dbg !4422

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #12, !dbg !4423
  br label %119, !dbg !4425

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4362, metadata !670) #12, !dbg !4426
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4363, metadata !670) #12, !dbg !4427
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4428

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4429

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4362, metadata !670) #12, !dbg !4426
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4363, metadata !670) #12, !dbg !4427
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4429
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4430
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4431, metadata !670) #12, !dbg !4436
  %54 = load i8*, i8** %48, align 8, !dbg !4438, !tbaa !1513
  %55 = load i8*, i8** %49, align 8, !dbg !4438, !tbaa !1514
  %56 = icmp ult i8* %54, %55, !dbg !4438
  br i1 %56, label %59, label %57, !dbg !4438, !prof !1515

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4438
  br label %63, !dbg !4438

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4438
  store i8* %60, i8** %48, align 8, !dbg !4438, !tbaa !1513
  %61 = load i8, i8* %54, align 1, !dbg !4438, !tbaa !840
  %62 = zext i8 %61 to i32, !dbg !4438
  br label %63, !dbg !4438

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4438
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4364, metadata !670) #12, !dbg !4439
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4440, !llvm.loop !4441

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4446

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4431, metadata !670) #12, !dbg !4448
  %67 = load i8*, i8** %48, align 8, !dbg !4446, !tbaa !1513
  %68 = load i8*, i8** %49, align 8, !dbg !4446, !tbaa !1514
  %69 = icmp ult i8* %67, %68, !dbg !4446
  br i1 %69, label %72, label %70, !dbg !4446, !prof !1515

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4446
  br label %76, !dbg !4446

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4446
  store i8* %73, i8** %48, align 8, !dbg !4446, !tbaa !1513
  %74 = load i8, i8* %67, align 1, !dbg !4446, !tbaa !840
  %75 = zext i8 %74 to i32, !dbg !4446
  br label %76, !dbg !4446

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4446
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4364, metadata !670) #12, !dbg !4439
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4449, !llvm.loop !4450

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #12, !dbg !4453
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.158, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !4454
  %81 = icmp slt i32 %80, 2, !dbg !4456
  br i1 %81, label %112, label %82, !dbg !4457

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !4458
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4369, metadata !670) #12, !dbg !4459
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !4460
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4370, metadata !670) #12, !dbg !4461
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4371, metadata !670) #12, !dbg !4462
  %85 = icmp eq i64 %51, 0, !dbg !4463
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4465

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4363, metadata !670) #12, !dbg !4427
  %90 = add i64 %87, 2, !dbg !4466
  %91 = call noalias i8* @malloc(i64 %90) #12, !dbg !4468
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4362, metadata !670) #12, !dbg !4426
  br label %96, !dbg !4469

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4470
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4363, metadata !670) #12, !dbg !4427
  %94 = add i64 %93, 1, !dbg !4472
  %95 = call i8* @realloc(i8* %52, i64 %94) #12, !dbg !4473
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4362, metadata !670) #12, !dbg !4426
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4362, metadata !670) #12, !dbg !4426
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4363, metadata !670) #12, !dbg !4427
  %99 = icmp eq i8* %98, null, !dbg !4474
  br i1 %99, label %100, label %102, !dbg !4476

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4363, metadata !670) #12, !dbg !4427
  call void @free(i8* %52) #12, !dbg !4477
  br label %112, !dbg !4479

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4480
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4480
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4481
  %104 = xor i64 %84, -1, !dbg !4482
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4482
  %106 = xor i64 %83, -1, !dbg !4483
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4483
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4484, metadata !670) #12, !dbg !4493
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4492, metadata !670) #12, !dbg !4493
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #12, !dbg !4495
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #12, !dbg !4496
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4484, metadata !670) #12, !dbg !4497
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4492, metadata !670) #12, !dbg !4497
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #12, !dbg !4499
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #12, !dbg !4500
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4362, metadata !670) #12, !dbg !4426
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4363, metadata !670) #12, !dbg !4427
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4480
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4480
  br label %50, !dbg !4501, !llvm.loop !4450

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4480
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4480
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !4502
  %116 = icmp eq i64 %113, 0, !dbg !4503
  br i1 %116, label %119, label %117, !dbg !4505

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4506
  store i8 0, i8* %118, align 1, !dbg !4508, !tbaa !840
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4312, metadata !670) #12, !dbg !4382
  call void @free(i8* %29) #12, !dbg !4509
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4312, metadata !670) #12, !dbg !4382
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4510, !tbaa !677
  br label %123, !dbg !4511

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4312, metadata !670) #12, !dbg !4382
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4297, metadata !670), !dbg !4512
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4297, metadata !670), !dbg !4512
  %125 = load i8, i8* %124, align 1, !dbg !4513, !tbaa !840
  %126 = icmp eq i8 %125, 0, !dbg !4515
  br i1 %126, label %152, label %127, !dbg !4516

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4517

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4297, metadata !670), !dbg !4512
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !4517
  %132 = icmp eq i32 %131, 0, !dbg !4519
  br i1 %132, label %139, label %133, !dbg !4520

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4521
  br i1 %134, label %135, label %143, !dbg !4522

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4523
  %137 = load i8, i8* %136, align 1, !dbg !4523, !tbaa !840
  %138 = icmp eq i8 %137, 0, !dbg !4524
  br i1 %138, label %139, label %143, !dbg !4525

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !4526
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4528
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4529
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4296, metadata !670), !dbg !4377
  br label %152, !dbg !4530

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !4531
  %145 = add i64 %144, 1, !dbg !4532
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4533
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4297, metadata !670), !dbg !4512
  %147 = call i64 @strlen(i8* %146) #14, !dbg !4534
  %148 = add i64 %147, 1, !dbg !4535
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4536
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4297, metadata !670), !dbg !4512
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4297, metadata !670), !dbg !4512
  %150 = load i8, i8* %149, align 1, !dbg !4513, !tbaa !840
  %151 = icmp eq i8 %150, 0, !dbg !4515
  br i1 %151, label %152, label %128, !dbg !4516, !llvm.loop !4537

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4296, metadata !670), !dbg !4377
  %154 = load i8, i8* %153, align 1, !dbg !4539, !tbaa !840
  %155 = icmp eq i8 %154, 0, !dbg !4541
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), i8* %153, !dbg !4542
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4296, metadata !670), !dbg !4377
  ret i8* %156, !dbg !4543
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @memcoll(i8* nocapture, i64, i8* nocapture, i64) local_unnamed_addr #6 !dbg !4544 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4547, metadata !670), !dbg !4556
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4548, metadata !670), !dbg !4557
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4549, metadata !670), !dbg !4558
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4550, metadata !670), !dbg !4559
  %5 = icmp eq i64 %1, %3, !dbg !4560
  br i1 %5, label %6, label %11, !dbg !4561

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #14, !dbg !4562
  %8 = icmp eq i32 %7, 0, !dbg !4563
  br i1 %8, label %9, label %11, !dbg !4564

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !4565
  store i32 0, i32* %10, align 4, !dbg !4567, !tbaa !881
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4551, metadata !670), !dbg !4568
  br label %46, !dbg !4569

; <label>:11:                                     ; preds = %6, %4
  %12 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !4570
  %13 = load i8, i8* %12, align 1, !dbg !4570, !tbaa !840
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !4552, metadata !670), !dbg !4571
  %14 = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !4572
  %15 = load i8, i8* %14, align 1, !dbg !4572, !tbaa !840
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !4555, metadata !670), !dbg !4573
  store i8 0, i8* %12, align 1, !dbg !4574, !tbaa !840
  store i8 0, i8* %14, align 1, !dbg !4575, !tbaa !840
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4576, metadata !670) #12, !dbg !4586
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4579, metadata !670) #12, !dbg !4588
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4580, metadata !670) #12, !dbg !4589
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !4581, metadata !670) #12, !dbg !4590
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4576, metadata !670) #12, !dbg !4586
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4579, metadata !670) #12, !dbg !4588
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !4581, metadata !670) #12, !dbg !4590
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4580, metadata !670) #12, !dbg !4589
  %16 = tail call i32* @__errno_location() #17, !dbg !4591
  store i32 0, i32* %16, align 4, !dbg !4592, !tbaa !881
  %17 = tail call i32 @strcoll(i8* %0, i8* %2) #14, !dbg !4593
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !4582, metadata !670) #12, !dbg !4594
  %18 = icmp eq i32 %17, 0, !dbg !4595
  br i1 %18, label %19, label %44, !dbg !4596

; <label>:19:                                     ; preds = %11
  %20 = add i64 %3, 1, !dbg !4597
  %21 = add i64 %1, 1, !dbg !4598
  br label %25, !dbg !4596

; <label>:22:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !4576, metadata !670) #12, !dbg !4586
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !4579, metadata !670) #12, !dbg !4588
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !4581, metadata !670) #12, !dbg !4590
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !4580, metadata !670) #12, !dbg !4589
  store i32 0, i32* %16, align 4, !dbg !4592, !tbaa !881
  %23 = tail call i32 @strcoll(i8* %42, i8* %41) #14, !dbg !4593
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !4582, metadata !670) #12, !dbg !4594
  %24 = icmp eq i32 %23, 0, !dbg !4595
  br i1 %24, label %25, label %44, !dbg !4596, !llvm.loop !4599

; <label>:25:                                     ; preds = %22, %19
  %26 = phi i8* [ %0, %19 ], [ %42, %22 ]
  %27 = phi i64 [ %21, %19 ], [ %34, %22 ]
  %28 = phi i64 [ %20, %19 ], [ %35, %22 ]
  %29 = phi i8* [ %2, %19 ], [ %41, %22 ]
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4580, metadata !670) #12, !dbg !4589
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4581, metadata !670) #12, !dbg !4590
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !4579, metadata !670) #12, !dbg !4588
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !4576, metadata !670) #12, !dbg !4586
  %30 = tail call i64 @strlen(i8* %26) #14, !dbg !4602
  %31 = add i64 %30, 1, !dbg !4603
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !4583, metadata !670) #12, !dbg !4604
  %32 = tail call i64 @strlen(i8* %29) #14, !dbg !4605
  %33 = add i64 %32, 1, !dbg !4606
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !4585, metadata !670) #12, !dbg !4607
  %34 = sub i64 %27, %31, !dbg !4608
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !4579, metadata !670) #12, !dbg !4588
  %35 = sub i64 %28, %33, !dbg !4609
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !4581, metadata !670) #12, !dbg !4590
  %36 = icmp eq i64 %34, 0, !dbg !4610
  br i1 %36, label %37, label %40, !dbg !4612

; <label>:37:                                     ; preds = %25
  %38 = icmp ne i64 %35, 0, !dbg !4613
  %39 = sext i1 %38 to i32, !dbg !4614
  br label %44

; <label>:40:                                     ; preds = %25
  %41 = getelementptr inbounds i8, i8* %29, i64 %33, !dbg !4615
  %42 = getelementptr inbounds i8, i8* %26, i64 %31, !dbg !4616
  %43 = icmp eq i64 %35, 0, !dbg !4617
  br i1 %43, label %44, label %22

; <label>:44:                                     ; preds = %22, %40, %11, %37
  %45 = phi i32 [ %39, %37 ], [ %17, %11 ], [ 1, %40 ], [ %23, %22 ]
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !4551, metadata !670), !dbg !4568
  store i8 %13, i8* %12, align 1, !dbg !4619, !tbaa !840
  store i8 %15, i8* %14, align 1, !dbg !4620, !tbaa !840
  br label %46

; <label>:46:                                     ; preds = %44, %9
  %47 = phi i32 [ 0, %9 ], [ %45, %44 ]
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !4551, metadata !670), !dbg !4568
  ret i32 %47, !dbg !4621
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @memcoll0(i8* nocapture readonly, i64, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4622 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4624, metadata !670), !dbg !4628
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4625, metadata !670), !dbg !4629
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4626, metadata !670), !dbg !4630
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4627, metadata !670), !dbg !4631
  %5 = icmp eq i64 %1, %3, !dbg !4632
  br i1 %5, label %6, label %11, !dbg !4634

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #14, !dbg !4635
  %8 = icmp eq i32 %7, 0, !dbg !4636
  br i1 %8, label %9, label %11, !dbg !4637

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !4638
  store i32 0, i32* %10, align 4, !dbg !4640, !tbaa !881
  br label %38, !dbg !4641

; <label>:11:                                     ; preds = %6, %4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4576, metadata !670) #12, !dbg !4642
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4579, metadata !670) #12, !dbg !4644
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4580, metadata !670) #12, !dbg !4645
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4581, metadata !670) #12, !dbg !4646
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4576, metadata !670) #12, !dbg !4642
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4579, metadata !670) #12, !dbg !4644
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4581, metadata !670) #12, !dbg !4646
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4580, metadata !670) #12, !dbg !4645
  %12 = tail call i32* @__errno_location() #17, !dbg !4647
  store i32 0, i32* %12, align 4, !dbg !4648, !tbaa !881
  %13 = tail call i32 @strcoll(i8* %0, i8* %2) #14, !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !4582, metadata !670) #12, !dbg !4650
  %14 = icmp eq i32 %13, 0, !dbg !4651
  br i1 %14, label %15, label %38, !dbg !4652

; <label>:15:                                     ; preds = %11
  br label %19, !dbg !4653

; <label>:16:                                     ; preds = %34
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !4576, metadata !670) #12, !dbg !4642
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4579, metadata !670) #12, !dbg !4644
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !4581, metadata !670) #12, !dbg !4646
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !4580, metadata !670) #12, !dbg !4645
  store i32 0, i32* %12, align 4, !dbg !4648, !tbaa !881
  %17 = tail call i32 @strcoll(i8* %36, i8* %35) #14, !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !4582, metadata !670) #12, !dbg !4650
  %18 = icmp eq i32 %17, 0, !dbg !4651
  br i1 %18, label %19, label %38, !dbg !4652, !llvm.loop !4599

; <label>:19:                                     ; preds = %15, %16
  %20 = phi i8* [ %36, %16 ], [ %0, %15 ]
  %21 = phi i64 [ %28, %16 ], [ %1, %15 ]
  %22 = phi i64 [ %29, %16 ], [ %3, %15 ]
  %23 = phi i8* [ %35, %16 ], [ %2, %15 ]
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4580, metadata !670) #12, !dbg !4645
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !4581, metadata !670) #12, !dbg !4646
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4579, metadata !670) #12, !dbg !4644
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !4576, metadata !670) #12, !dbg !4642
  %24 = tail call i64 @strlen(i8* %20) #14, !dbg !4653
  %25 = add i64 %24, 1, !dbg !4654
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !4583, metadata !670) #12, !dbg !4655
  %26 = tail call i64 @strlen(i8* %23) #14, !dbg !4656
  %27 = add i64 %26, 1, !dbg !4657
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !4585, metadata !670) #12, !dbg !4658
  %28 = sub i64 %21, %25, !dbg !4659
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4579, metadata !670) #12, !dbg !4644
  %29 = sub i64 %22, %27, !dbg !4660
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !4581, metadata !670) #12, !dbg !4646
  %30 = icmp eq i64 %28, 0, !dbg !4661
  br i1 %30, label %31, label %34, !dbg !4662

; <label>:31:                                     ; preds = %19
  %32 = icmp ne i64 %29, 0, !dbg !4663
  %33 = sext i1 %32 to i32, !dbg !4664
  br label %38

; <label>:34:                                     ; preds = %19
  %35 = getelementptr inbounds i8, i8* %23, i64 %27, !dbg !4665
  %36 = getelementptr inbounds i8, i8* %20, i64 %25, !dbg !4666
  %37 = icmp eq i64 %29, 0, !dbg !4667
  br i1 %37, label %38, label %16

; <label>:38:                                     ; preds = %34, %16, %31, %11, %9
  %39 = phi i32 [ 0, %9 ], [ %33, %31 ], [ %13, %11 ], [ 1, %34 ], [ %17, %16 ]
  ret i32 %39, !dbg !4668
}

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
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !105, !111, !119, !593, !596, !598, !600, !607, !610, !126, !133, !612, !614, !201, !622, !639, !641, !644, !646, !214, !648, !650, !652, !655, !247, !657}
!llvm.ident = !{!659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659, !659}
!llvm.module.flags = !{!660, !661, !662, !663, !664}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !2, file: !3, line: 46, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !33, globals: !37)
!3 = !DIFile(filename: "src/comm.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10, !24}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 70, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "CHECK_ORDER_DEFAULT", value: 0)
!8 = !DIEnumerator(name: "CHECK_ORDER_ENABLED", value: 1)
!9 = !DIEnumerator(name: "CHECK_ORDER_DISABLED", value: 2)
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 45, size: 32, elements: !26)
!25 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!26 = !{!27, !28, !29, !30, !31, !32}
!27 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!28 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!29 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!30 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!31 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!32 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!33 = !{!34, !36}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !{!0, !38, !41, !43, !45, !47, !52, !54, !56, !78, !93, !96, !101}
!38 = !DIGlobalVariableExpression(var: !39)
!39 = distinct !DIGlobalVariable(name: "only_file_1", scope: !2, file: !3, line: 49, type: !40, isLocal: true, isDefinition: true)
!40 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!41 = !DIGlobalVariableExpression(var: !42)
!42 = distinct !DIGlobalVariable(name: "only_file_2", scope: !2, file: !3, line: 52, type: !40, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44)
!44 = distinct !DIGlobalVariable(name: "both", scope: !2, file: !3, line: 55, type: !40, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46)
!46 = distinct !DIGlobalVariable(name: "seen_unpairable", scope: !2, file: !3, line: 58, type: !40, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48)
!48 = distinct !DIGlobalVariable(name: "issued_disorder_warning", scope: !2, file: !3, line: 61, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 16, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 2)
!52 = !DIGlobalVariableExpression(var: !53)
!53 = distinct !DIGlobalVariable(name: "total_option", scope: !2, file: !3, line: 67, type: !40, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55)
!55 = distinct !DIGlobalVariable(name: "check_input_order", scope: !2, file: !3, line: 75, type: !5, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57)
!57 = distinct !DIGlobalVariable(name: "infomap", scope: !58, file: !59, line: 632, type: !75, isLocal: true, isDefinition: true)
!58 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !59, file: !59, line: 630, type: !60, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !64)
!59 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!64 = !{!65, !66, !67, !74}
!65 = !DILocalVariable(name: "program", arg: 1, scope: !58, file: !59, line: 630, type: !62)
!66 = !DILocalVariable(name: "node", scope: !58, file: !59, line: 642, type: !62)
!67 = !DILocalVariable(name: "map_prog", scope: !58, file: !59, line: 643, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !58, file: !59, line: 632, size: 128, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !70, file: !59, line: 632, baseType: !62, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !70, file: !59, line: 632, baseType: !62, size: 64, offset: 64)
!74 = !DILocalVariable(name: "lc_messages", scope: !58, file: !59, line: 655, type: !62)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 896, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 7)
!78 = !DIGlobalVariableExpression(var: !79)
!79 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 92, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 2048, elements: !91)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !83, line: 50, size: 256, elements: !84)
!83 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !{!85, !86, !88, !90}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !83, line: 52, baseType: !62, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !82, file: !83, line: 55, baseType: !87, size: 32, offset: 64)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !82, file: !83, line: 56, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !82, file: !83, line: 57, baseType: !87, size: 32, offset: 192)
!91 = !{!92}
!92 = !DISubrange(count: 8)
!93 = !DIGlobalVariableExpression(var: !94)
!94 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 64, type: !95, isLocal: true, isDefinition: true)
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIGlobalVariableExpression(var: !97)
!97 = distinct !DIGlobalVariable(name: "col_sep_len", scope: !2, file: !3, line: 80, type: !98, isLocal: true, isDefinition: true)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 62, baseType: !100)
!99 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!100 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!101 = !DIGlobalVariableExpression(var: !102)
!102 = distinct !DIGlobalVariable(name: "col_sep", scope: !2, file: !3, line: 79, type: !62, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104)
!104 = distinct !DIGlobalVariable(name: "Version", scope: !105, file: !106, line: 2, type: !62, isLocal: false, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, globals: !108)
!106 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !{}
!108 = !{!103}
!109 = !DIGlobalVariableExpression(var: !110)
!110 = distinct !DIGlobalVariable(name: "file_name", scope: !111, file: !116, line: 36, type: !62, isLocal: true, isDefinition: true)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, globals: !113)
!112 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!113 = !{!109, !114}
!114 = !DIGlobalVariableExpression(var: !115)
!115 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !111, file: !116, line: 46, type: !40, isLocal: true, isDefinition: true)
!116 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !DIGlobalVariableExpression(var: !118)
!118 = distinct !DIGlobalVariable(name: "exit_failure", scope: !119, file: !122, line: 24, type: !123, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, globals: !121)
!120 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !{!117}
!122 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!124 = !DIGlobalVariableExpression(var: !125)
!125 = distinct !DIGlobalVariable(name: "program_name", scope: !126, file: !130, line: 33, type: !62, isLocal: false, isDefinition: true)
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !128, globals: !129)
!127 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!128 = !{!36, !34}
!129 = !{!124}
!130 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !133, file: !161, line: 77, type: !195, isLocal: false, isDefinition: true)
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !135, retainedTypes: !156, globals: !158)
!134 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !{!10, !136, !141}
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !11, line: 242, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!139 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!140 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 46, size: 32, elements: !143)
!142 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!144 = !DIEnumerator(name: "_ISupper", value: 256)
!145 = !DIEnumerator(name: "_ISlower", value: 512)
!146 = !DIEnumerator(name: "_ISalpha", value: 1024)
!147 = !DIEnumerator(name: "_ISdigit", value: 2048)
!148 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!149 = !DIEnumerator(name: "_ISspace", value: 8192)
!150 = !DIEnumerator(name: "_ISprint", value: 16384)
!151 = !DIEnumerator(name: "_ISgraph", value: 32768)
!152 = !DIEnumerator(name: "_ISblank", value: 1)
!153 = !DIEnumerator(name: "_IScntrl", value: 2)
!154 = !DIEnumerator(name: "_ISpunct", value: 4)
!155 = !DIEnumerator(name: "_ISalnum", value: 8)
!156 = !{!87, !157, !98, !34}
!157 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!158 = !{!131, !159, !166, !177, !179, !184, !191, !193}
!159 = !DIGlobalVariableExpression(var: !160)
!160 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !133, file: !161, line: 93, type: !162, isLocal: false, isDefinition: true)
!161 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 320, elements: !164)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!164 = !{!165}
!165 = !DISubrange(count: 10)
!166 = !DIGlobalVariableExpression(var: !167)
!167 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !133, file: !161, line: 1043, type: !168, isLocal: false, isDefinition: true)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !161, line: 57, size: 448, elements: !169)
!169 = !{!170, !171, !172, !175, !176}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !168, file: !161, line: 60, baseType: !10, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !161, line: 63, baseType: !87, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !168, file: !161, line: 67, baseType: !173, size: 256, offset: 64)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 256, elements: !91)
!174 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !168, file: !161, line: 70, baseType: !62, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !168, file: !161, line: 73, baseType: !62, size: 64, offset: 384)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !133, file: !161, line: 108, type: !168, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "slot0", scope: !133, file: !161, line: 834, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 256)
!184 = !DIGlobalVariableExpression(var: !185)
!185 = distinct !DIGlobalVariable(name: "slotvec", scope: !133, file: !161, line: 837, type: !186, isLocal: true, isDefinition: true)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !161, line: 826, size: 128, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !187, file: !161, line: 828, baseType: !98, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !187, file: !161, line: 829, baseType: !34, size: 64, offset: 64)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "nslots", scope: !133, file: !161, line: 835, type: !87, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194)
!194 = distinct !DIGlobalVariable(name: "slotvec0", scope: !133, file: !161, line: 836, type: !187, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 704, elements: !197)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!197 = !{!198}
!198 = !DISubrange(count: 11)
!199 = !DIGlobalVariableExpression(var: !200)
!200 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !201, file: !204, line: 26, type: !205, isLocal: false, isDefinition: true)
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, globals: !203)
!202 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!203 = !{!199}
!204 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 376, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 47)
!208 = !DIGlobalVariableExpression(var: !209)
!209 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !210, file: !211, line: 335, type: !87, isLocal: true, isDefinition: true)
!210 = distinct !DISubprogram(name: "rpl_fcntl", scope: !211, file: !211, line: 272, type: !212, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !214, variables: !217)
!211 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!212 = !DISubroutineType(types: !213)
!213 = !{!87, !87, !87, null}
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, globals: !216)
!215 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!216 = !{!208}
!217 = !{!218, !219, !220, !233, !234, !237, !240, !243}
!218 = !DILocalVariable(name: "fd", arg: 1, scope: !210, file: !211, line: 272, type: !87)
!219 = !DILocalVariable(name: "action", arg: 2, scope: !210, file: !211, line: 272, type: !87)
!220 = !DILocalVariable(name: "arg", scope: !210, file: !211, line: 274, type: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !222, line: 30, baseType: !223)
!222 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !215, line: 274, baseType: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 192, elements: !231)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !215, line: 274, size: 192, elements: !226)
!226 = !{!227, !228, !229, !230}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !225, file: !215, line: 274, baseType: !174, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !225, file: !215, line: 274, baseType: !174, size: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !225, file: !215, line: 274, baseType: !36, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !225, file: !215, line: 274, baseType: !36, size: 64, offset: 128)
!231 = !{!232}
!232 = !DISubrange(count: 1)
!233 = !DILocalVariable(name: "result", scope: !210, file: !211, line: 275, type: !87)
!234 = !DILocalVariable(name: "target", scope: !235, file: !211, line: 322, type: !87)
!235 = distinct !DILexicalBlock(scope: !236, file: !211, line: 321, column: 7)
!236 = distinct !DILexicalBlock(scope: !210, file: !211, line: 278, column: 5)
!237 = !DILocalVariable(name: "flags", scope: !238, file: !211, line: 359, type: !87)
!238 = distinct !DILexicalBlock(scope: !239, file: !211, line: 358, column: 11)
!239 = distinct !DILexicalBlock(scope: !235, file: !211, line: 357, column: 13)
!240 = !DILocalVariable(name: "saved_errno", scope: !241, file: !211, line: 362, type: !87)
!241 = distinct !DILexicalBlock(scope: !242, file: !211, line: 361, column: 15)
!242 = distinct !DILexicalBlock(scope: !238, file: !211, line: 360, column: 17)
!243 = !DILocalVariable(name: "p", scope: !244, file: !211, line: 404, type: !36)
!244 = distinct !DILexicalBlock(scope: !236, file: !211, line: 402, column: 7)
!245 = !DIGlobalVariableExpression(var: !246)
!246 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !247, file: !591, line: 120, type: !592, isLocal: true, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !249, retainedTypes: !588, globals: !590)
!248 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!249 = !{!250}
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !251, line: 41, size: 32, elements: !252)
!251 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!253 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!254 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!255 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!256 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!257 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!258 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!259 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!260 = !DIEnumerator(name: "DAY_1", value: 131079)
!261 = !DIEnumerator(name: "DAY_2", value: 131080)
!262 = !DIEnumerator(name: "DAY_3", value: 131081)
!263 = !DIEnumerator(name: "DAY_4", value: 131082)
!264 = !DIEnumerator(name: "DAY_5", value: 131083)
!265 = !DIEnumerator(name: "DAY_6", value: 131084)
!266 = !DIEnumerator(name: "DAY_7", value: 131085)
!267 = !DIEnumerator(name: "ABMON_1", value: 131086)
!268 = !DIEnumerator(name: "ABMON_2", value: 131087)
!269 = !DIEnumerator(name: "ABMON_3", value: 131088)
!270 = !DIEnumerator(name: "ABMON_4", value: 131089)
!271 = !DIEnumerator(name: "ABMON_5", value: 131090)
!272 = !DIEnumerator(name: "ABMON_6", value: 131091)
!273 = !DIEnumerator(name: "ABMON_7", value: 131092)
!274 = !DIEnumerator(name: "ABMON_8", value: 131093)
!275 = !DIEnumerator(name: "ABMON_9", value: 131094)
!276 = !DIEnumerator(name: "ABMON_10", value: 131095)
!277 = !DIEnumerator(name: "ABMON_11", value: 131096)
!278 = !DIEnumerator(name: "ABMON_12", value: 131097)
!279 = !DIEnumerator(name: "MON_1", value: 131098)
!280 = !DIEnumerator(name: "MON_2", value: 131099)
!281 = !DIEnumerator(name: "MON_3", value: 131100)
!282 = !DIEnumerator(name: "MON_4", value: 131101)
!283 = !DIEnumerator(name: "MON_5", value: 131102)
!284 = !DIEnumerator(name: "MON_6", value: 131103)
!285 = !DIEnumerator(name: "MON_7", value: 131104)
!286 = !DIEnumerator(name: "MON_8", value: 131105)
!287 = !DIEnumerator(name: "MON_9", value: 131106)
!288 = !DIEnumerator(name: "MON_10", value: 131107)
!289 = !DIEnumerator(name: "MON_11", value: 131108)
!290 = !DIEnumerator(name: "MON_12", value: 131109)
!291 = !DIEnumerator(name: "AM_STR", value: 131110)
!292 = !DIEnumerator(name: "PM_STR", value: 131111)
!293 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!294 = !DIEnumerator(name: "D_FMT", value: 131113)
!295 = !DIEnumerator(name: "T_FMT", value: 131114)
!296 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!297 = !DIEnumerator(name: "ERA", value: 131116)
!298 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!299 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!300 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!301 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!302 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!303 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!304 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!305 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!306 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!307 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!308 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!309 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!310 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!311 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!312 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!313 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!314 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!315 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!316 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!317 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!318 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!319 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!320 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!321 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!322 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!323 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!324 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!325 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!326 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!327 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!328 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!329 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!330 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!331 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!332 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!333 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!334 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!335 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!336 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!337 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!338 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!339 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!340 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!341 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!342 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!343 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!344 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!345 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!346 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!347 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!348 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!349 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!350 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!351 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!352 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!353 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!354 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!355 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!356 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!357 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!358 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!359 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!360 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!361 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!362 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!363 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!364 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!365 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!366 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!367 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!368 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!369 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!370 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!371 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!372 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!373 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!374 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!375 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!376 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!377 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!378 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!379 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!380 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!381 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!382 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!383 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!384 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!385 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!386 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!387 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!388 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!389 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!390 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!391 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!392 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!393 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!394 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!395 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!396 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!397 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!398 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!399 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!400 = !DIEnumerator(name: "CODESET", value: 14)
!401 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!402 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!403 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!404 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!447 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!448 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!456 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!457 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!472 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!473 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!474 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!475 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!476 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!477 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!478 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!479 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!480 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!481 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!482 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!483 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!484 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!485 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!486 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!487 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!488 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!489 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!490 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!491 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!492 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!493 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!494 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!511 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!512 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!515 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!516 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!517 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!518 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!519 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!520 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!521 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!522 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!523 = !DIEnumerator(name: "THOUSEP", value: 65537)
!524 = !DIEnumerator(name: "__GROUPING", value: 65538)
!525 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!526 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!527 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!528 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!529 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!530 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!531 = !DIEnumerator(name: "__YESSTR", value: 327682)
!532 = !DIEnumerator(name: "__NOSTR", value: 327683)
!533 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!534 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!535 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!536 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!537 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!538 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!539 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!540 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!541 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!542 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!543 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!544 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!545 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!546 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!547 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!548 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!549 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!550 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!551 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!552 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!555 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!556 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!557 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!558 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!559 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!560 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!561 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!562 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!563 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!564 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!565 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!566 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!567 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!568 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!569 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!586 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!587 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!588 = !{!36, !34, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!590 = !{!245}
!591 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !595)
!594 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!595 = !{!24}
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107)
!597 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107)
!599 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !602)
!601 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !604, line: 112, baseType: !605)
!604 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !606, line: 62, baseType: !100)
!606 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !609)
!608 = !DIFile(filename: "./lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!609 = !{!589}
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107)
!611 = !DIFile(filename: "./lib/memcmp2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107)
!613 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !616, retainedTypes: !621)
!615 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = !{!617}
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !618, line: 41, size: 32, elements: !619)
!618 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!619 = !{!620}
!620 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!621 = !{!36}
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !624, retainedTypes: !638)
!623 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = !{!625}
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !627, file: !626, line: 192, size: 32, elements: !636)
!626 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!627 = distinct !DISubprogram(name: "x2nrealloc", scope: !626, file: !626, line: 180, type: !628, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !631)
!628 = !DISubroutineType(types: !629)
!629 = !{!36, !36, !630, !98}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!631 = !{!632, !633, !634, !635}
!632 = !DILocalVariable(name: "p", arg: 1, scope: !627, file: !626, line: 180, type: !36)
!633 = !DILocalVariable(name: "pn", arg: 2, scope: !627, file: !626, line: 180, type: !630)
!634 = !DILocalVariable(name: "s", arg: 3, scope: !627, file: !626, line: 180, type: !98)
!635 = !DILocalVariable(name: "n", scope: !627, file: !626, line: 182, type: !98)
!636 = !{!637}
!637 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!638 = !{!98, !34, !36}
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !640, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107)
!640 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!641 = distinct !DICompileUnit(language: DW_LANG_C99, file: !642, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !643)
!642 = !DIFile(filename: "./lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!643 = !{!10}
!644 = distinct !DICompileUnit(language: DW_LANG_C99, file: !645, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !621)
!645 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!646 = distinct !DICompileUnit(language: DW_LANG_C99, file: !647, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107)
!647 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!648 = distinct !DICompileUnit(language: DW_LANG_C99, file: !649, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !621)
!649 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!650 = distinct !DICompileUnit(language: DW_LANG_C99, file: !651, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !621)
!651 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !654)
!653 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!654 = !{!98}
!655 = distinct !DICompileUnit(language: DW_LANG_C99, file: !656, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107)
!656 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!657 = distinct !DICompileUnit(language: DW_LANG_C99, file: !658, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107)
!658 = !DIFile(filename: "./lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!659 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!660 = !{i32 2, !"Dwarf Version", i32 4}
!661 = !{i32 2, !"Debug Info Version", i32 3}
!662 = !{i32 1, !"wchar_size", i32 4}
!663 = !{i32 7, !"PIC Level", i32 2}
!664 = !{i32 7, !"PIE Level", i32 2}
!665 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 106, type: !666, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !668)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !87}
!668 = !{!669}
!669 = !DILocalVariable(name: "status", arg: 1, scope: !665, file: !3, line: 106, type: !87)
!670 = !DIExpression()
!671 = !DILocation(line: 106, column: 12, scope: !665)
!672 = !DILocation(line: 108, column: 14, scope: !673)
!673 = distinct !DILexicalBlock(scope: !665, file: !3, line: 108, column: 7)
!674 = !DILocation(line: 108, column: 7, scope: !665)
!675 = !DILocation(line: 109, column: 5, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !3, line: 109, column: 5)
!677 = !{!678, !678, i64 0}
!678 = !{!"any pointer", !679, i64 0}
!679 = !{!"omnipotent char", !680, i64 0}
!680 = !{!"Simple C/C++ TBAA"}
!681 = !DILocation(line: 112, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !673, file: !3, line: 111, column: 5)
!683 = !DILocation(line: 116, column: 7, scope: !682)
!684 = !DILocation(line: 119, column: 7, scope: !682)
!685 = !DILocation(line: 123, column: 7, scope: !682)
!686 = !DILocation(line: 129, column: 7, scope: !682)
!687 = !DILocation(line: 135, column: 7, scope: !682)
!688 = !DILocation(line: 141, column: 7, scope: !682)
!689 = !DILocation(line: 144, column: 7, scope: !682)
!690 = !DILocation(line: 147, column: 7, scope: !682)
!691 = !DILocation(line: 150, column: 7, scope: !682)
!692 = !DILocation(line: 151, column: 7, scope: !682)
!693 = !DILocation(line: 152, column: 7, scope: !682)
!694 = !DILocation(line: 156, column: 7, scope: !682)
!695 = !DILocation(line: 642, column: 15, scope: !58, inlinedAt: !696)
!696 = distinct !DILocation(line: 163, column: 7, scope: !682)
!697 = !DILocation(line: 651, column: 3, scope: !58, inlinedAt: !696)
!698 = !DILocation(line: 655, column: 29, scope: !58, inlinedAt: !696)
!699 = !DILocation(line: 655, column: 15, scope: !58, inlinedAt: !696)
!700 = !DILocation(line: 656, column: 7, scope: !701, inlinedAt: !696)
!701 = distinct !DILexicalBlock(scope: !58, file: !59, line: 656, column: 7)
!702 = !DILocation(line: 656, column: 19, scope: !701, inlinedAt: !696)
!703 = !DILocation(line: 656, column: 22, scope: !701, inlinedAt: !696)
!704 = !DILocation(line: 656, column: 7, scope: !58, inlinedAt: !696)
!705 = !DILocation(line: 662, column: 7, scope: !706, inlinedAt: !696)
!706 = distinct !DILexicalBlock(scope: !701, file: !59, line: 657, column: 5)
!707 = !DILocation(line: 664, column: 5, scope: !706, inlinedAt: !696)
!708 = !DILocation(line: 665, column: 3, scope: !58, inlinedAt: !696)
!709 = !DILocation(line: 667, column: 3, scope: !58, inlinedAt: !696)
!710 = !DILocation(line: 165, column: 3, scope: !665)
!711 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 407, type: !712, isLocal: false, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !715)
!712 = !DISubroutineType(types: !713)
!713 = !{!87, !87, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!715 = !{!716, !717, !718}
!716 = !DILocalVariable(name: "argc", arg: 1, scope: !711, file: !3, line: 407, type: !87)
!717 = !DILocalVariable(name: "argv", arg: 2, scope: !711, file: !3, line: 407, type: !714)
!718 = !DILocalVariable(name: "c", scope: !711, file: !3, line: 409, type: !87)
!719 = !DILocalVariable(name: "lba", scope: !720, file: !3, line: 257, type: !818)
!720 = distinct !DISubprogram(name: "compare_files", scope: !3, file: !3, line: 254, type: !721, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !714}
!723 = !{!724, !719, !725, !734, !738, !742, !796, !799, !800, !801, !803, !804, !810, !816, !817}
!724 = !DILocalVariable(name: "infiles", arg: 1, scope: !720, file: !3, line: 254, type: !714)
!725 = !DILocalVariable(name: "thisline", scope: !720, file: !3, line: 261, type: !726)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 128, elements: !50)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !729, line: 26, size: 192, elements: !730)
!729 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!730 = !{!731, !732, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !728, file: !729, line: 28, baseType: !98, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !728, file: !729, line: 29, baseType: !98, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !728, file: !729, line: 30, baseType: !34, size: 64, offset: 128)
!734 = !DILocalVariable(name: "all_line", scope: !720, file: !3, line: 266, type: !735)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 512, elements: !736)
!736 = !{!51, !737}
!737 = !DISubrange(count: 4)
!738 = !DILocalVariable(name: "alt", scope: !720, file: !3, line: 269, type: !739)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 192, elements: !740)
!740 = !{!51, !741}
!741 = !DISubrange(count: 3)
!742 = !DILocalVariable(name: "streams", scope: !720, file: !3, line: 272, type: !743)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 128, elements: !50)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !746, line: 7, baseType: !747)
!746 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !748, line: 241, size: 1728, elements: !749)
!748 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !770, !771, !772, !773, !776, !777, !779, !781, !784, !786, !787, !788, !789, !790, !791, !792}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !747, file: !748, line: 242, baseType: !87, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !747, file: !748, line: 247, baseType: !34, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !747, file: !748, line: 248, baseType: !34, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !747, file: !748, line: 249, baseType: !34, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !747, file: !748, line: 250, baseType: !34, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !747, file: !748, line: 251, baseType: !34, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !747, file: !748, line: 252, baseType: !34, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !747, file: !748, line: 253, baseType: !34, size: 64, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !747, file: !748, line: 254, baseType: !34, size: 64, offset: 512)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !747, file: !748, line: 256, baseType: !34, size: 64, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !747, file: !748, line: 257, baseType: !34, size: 64, offset: 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !747, file: !748, line: 258, baseType: !34, size: 64, offset: 704)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !747, file: !748, line: 260, baseType: !763, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !748, line: 156, size: 192, elements: !765)
!765 = !{!766, !767, !769}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !764, file: !748, line: 157, baseType: !763, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !764, file: !748, line: 158, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !764, file: !748, line: 162, baseType: !87, size: 32, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !747, file: !748, line: 262, baseType: !768, size: 64, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !747, file: !748, line: 264, baseType: !87, size: 32, offset: 896)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !747, file: !748, line: 268, baseType: !87, size: 32, offset: 928)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !747, file: !748, line: 270, baseType: !774, size: 64, offset: 960)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !606, line: 140, baseType: !775)
!775 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !747, file: !748, line: 274, baseType: !157, size: 16, offset: 1024)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !747, file: !748, line: 275, baseType: !778, size: 8, offset: 1040)
!778 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !747, file: !748, line: 276, baseType: !780, size: 8, offset: 1048)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, elements: !231)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !747, file: !748, line: 280, baseType: !782, size: 64, offset: 1088)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !748, line: 150, baseType: null)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !747, file: !748, line: 289, baseType: !785, size: 64, offset: 1152)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !606, line: 141, baseType: !775)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !747, file: !748, line: 297, baseType: !36, size: 64, offset: 1216)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !747, file: !748, line: 298, baseType: !36, size: 64, offset: 1280)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !747, file: !748, line: 299, baseType: !36, size: 64, offset: 1344)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !747, file: !748, line: 300, baseType: !36, size: 64, offset: 1408)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !747, file: !748, line: 302, baseType: !98, size: 64, offset: 1472)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !747, file: !748, line: 303, baseType: !87, size: 32, offset: 1536)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !747, file: !748, line: 305, baseType: !793, size: 160, offset: 1568)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 20)
!796 = !DILocalVariable(name: "total", scope: !720, file: !3, line: 275, type: !797)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 192, elements: !798)
!798 = !{!741}
!799 = !DILocalVariable(name: "i", scope: !720, file: !3, line: 277, type: !87)
!800 = !DILocalVariable(name: "j", scope: !720, file: !3, line: 277, type: !87)
!801 = !DILocalVariable(name: "order", scope: !802, file: !3, line: 304, type: !87)
!802 = distinct !DILexicalBlock(scope: !720, file: !3, line: 303, column: 5)
!803 = !DILocalVariable(name: "fill_up", scope: !802, file: !3, line: 305, type: !49)
!804 = !DILocalVariable(name: "len", scope: !805, file: !3, line: 320, type: !98)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 319, column: 13)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 315, column: 15)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 314, column: 9)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 311, column: 16)
!809 = distinct !DILexicalBlock(scope: !802, file: !3, line: 309, column: 11)
!810 = !DILocalVariable(name: "buf1", scope: !811, file: !3, line: 395, type: !813)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 393, column: 5)
!812 = distinct !DILexicalBlock(scope: !720, file: !3, line: 392, column: 7)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 168, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 21)
!816 = !DILocalVariable(name: "buf2", scope: !811, file: !3, line: 396, type: !813)
!817 = !DILocalVariable(name: "buf3", scope: !811, file: !3, line: 397, type: !813)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 1536, elements: !736)
!819 = !DILocation(line: 257, column: 21, scope: !720, inlinedAt: !820)
!820 = distinct !DILocation(line: 493, column: 3, scope: !711)
!821 = !DILocation(line: 266, column: 22, scope: !720, inlinedAt: !820)
!822 = !DILocation(line: 395, column: 12, scope: !811, inlinedAt: !820)
!823 = !DILocation(line: 396, column: 12, scope: !811, inlinedAt: !820)
!824 = !DILocation(line: 397, column: 12, scope: !811, inlinedAt: !820)
!825 = !DILocation(line: 407, column: 11, scope: !711)
!826 = !DILocation(line: 407, column: 24, scope: !711)
!827 = !DILocation(line: 412, column: 21, scope: !711)
!828 = !DILocation(line: 412, column: 3, scope: !711)
!829 = !DILocation(line: 413, column: 3, scope: !711)
!830 = !DILocation(line: 414, column: 3, scope: !711)
!831 = !DILocation(line: 415, column: 3, scope: !711)
!832 = !DILocation(line: 416, column: 21, scope: !711)
!833 = !DILocation(line: 416, column: 19, scope: !711)
!834 = !{!835, !835, i64 0}
!835 = !{!"_Bool", !679, i64 0}
!836 = !DILocation(line: 418, column: 3, scope: !711)
!837 = !DILocation(line: 425, column: 59, scope: !711)
!838 = !DILocation(line: 425, column: 30, scope: !711)
!839 = !DILocation(line: 426, column: 21, scope: !711)
!840 = !{!679, !679, i64 0}
!841 = !DILocation(line: 429, column: 3, scope: !711)
!842 = !DILocation(line: 429, column: 15, scope: !711)
!843 = !DILocation(line: 409, column: 7, scope: !711)
!844 = !DILocation(line: 434, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !711, file: !3, line: 431, column: 7)
!846 = !DILocation(line: 438, column: 9, scope: !845)
!847 = !DILocation(line: 442, column: 9, scope: !845)
!848 = !DILocation(line: 446, column: 9, scope: !845)
!849 = !DILocation(line: 449, column: 27, scope: !845)
!850 = !DILocation(line: 450, column: 9, scope: !845)
!851 = !DILocation(line: 453, column: 27, scope: !845)
!852 = !DILocation(line: 454, column: 9, scope: !845)
!853 = !DILocation(line: 457, column: 13, scope: !854)
!854 = distinct !DILexicalBlock(scope: !845, file: !3, line: 457, column: 13)
!855 = !{!856, !856, i64 0}
!856 = !{!"long", !679, i64 0}
!857 = !DILocation(line: 457, column: 25, scope: !854)
!858 = !DILocation(line: 459, column: 19, scope: !845)
!859 = !DILocation(line: 457, column: 29, scope: !854)
!860 = !DILocation(line: 457, column: 13, scope: !845)
!861 = !DILocation(line: 458, column: 11, scope: !854)
!862 = !DILocation(line: 459, column: 17, scope: !845)
!863 = !DILocation(line: 460, column: 24, scope: !845)
!864 = !DILocation(line: 460, column: 23, scope: !845)
!865 = !DILocation(line: 460, column: 33, scope: !845)
!866 = !DILocation(line: 460, column: 21, scope: !845)
!867 = !DILocation(line: 461, column: 9, scope: !845)
!868 = !DILocation(line: 465, column: 9, scope: !845)
!869 = distinct !{!869, !841, !870}
!870 = !DILocation(line: 473, column: 7, scope: !711)
!871 = !DILocation(line: 467, column: 7, scope: !845)
!872 = !DILocation(line: 469, column: 7, scope: !845)
!873 = !DILocation(line: 472, column: 9, scope: !845)
!874 = !DILocation(line: 475, column: 9, scope: !875)
!875 = distinct !DILexicalBlock(scope: !711, file: !3, line: 475, column: 7)
!876 = !DILocation(line: 475, column: 7, scope: !711)
!877 = !DILocation(line: 476, column: 17, scope: !875)
!878 = !DILocation(line: 476, column: 5, scope: !875)
!879 = !DILocation(line: 478, column: 14, scope: !880)
!880 = distinct !DILexicalBlock(scope: !711, file: !3, line: 478, column: 7)
!881 = !{!882, !882, i64 0}
!882 = !{!"int", !679, i64 0}
!883 = !DILocation(line: 478, column: 12, scope: !880)
!884 = !DILocation(line: 478, column: 21, scope: !880)
!885 = !DILocation(line: 478, column: 7, scope: !711)
!886 = !DILocation(line: 480, column: 16, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 480, column: 11)
!888 = distinct !DILexicalBlock(scope: !880, file: !3, line: 479, column: 5)
!889 = !DILocation(line: 480, column: 11, scope: !888)
!890 = !DILocation(line: 481, column: 22, scope: !887)
!891 = !DILocation(line: 481, column: 9, scope: !887)
!892 = !DILocation(line: 483, column: 22, scope: !887)
!893 = !DILocation(line: 483, column: 70, scope: !887)
!894 = !DILocation(line: 483, column: 60, scope: !887)
!895 = !DILocation(line: 483, column: 53, scope: !887)
!896 = !DILocation(line: 483, column: 9, scope: !887)
!897 = !DILocation(line: 484, column: 7, scope: !888)
!898 = !DILocation(line: 487, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !711, file: !3, line: 487, column: 7)
!900 = !DILocation(line: 487, column: 7, scope: !711)
!901 = !DILocation(line: 489, column: 20, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !3, line: 488, column: 5)
!903 = !DILocation(line: 489, column: 55, scope: !902)
!904 = !DILocation(line: 489, column: 62, scope: !902)
!905 = !DILocation(line: 489, column: 50, scope: !902)
!906 = !DILocation(line: 489, column: 43, scope: !902)
!907 = !DILocation(line: 489, column: 7, scope: !902)
!908 = !DILocation(line: 490, column: 7, scope: !902)
!909 = !DILocation(line: 493, column: 23, scope: !711)
!910 = !DILocation(line: 254, column: 23, scope: !720, inlinedAt: !820)
!911 = !DILocation(line: 257, column: 3, scope: !720, inlinedAt: !820)
!912 = !DILocation(line: 266, column: 3, scope: !720, inlinedAt: !820)
!913 = !DILocation(line: 275, column: 13, scope: !720, inlinedAt: !820)
!914 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!915 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!916 = !DIExpression(DW_OP_LLVM_fragment, 128, 64)
!917 = !DILocation(line: 277, column: 7, scope: !720, inlinedAt: !820)
!918 = !DILocation(line: 277, column: 10, scope: !720, inlinedAt: !820)
!919 = !DILocation(line: 284, column: 24, scope: !920, inlinedAt: !820)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 283, column: 9)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 282, column: 7)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 282, column: 7)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 281, column: 5)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 280, column: 3)
!925 = distinct !DILexicalBlock(scope: !720, file: !3, line: 280, column: 3)
!926 = !DILocation(line: 284, column: 11, scope: !920, inlinedAt: !820)
!927 = !DILocation(line: 285, column: 11, scope: !920, inlinedAt: !820)
!928 = !DILocation(line: 285, column: 26, scope: !920, inlinedAt: !820)
!929 = !DILocation(line: 290, column: 21, scope: !923, inlinedAt: !820)
!930 = !DILocation(line: 290, column: 47, scope: !923, inlinedAt: !820)
!931 = !DILocation(line: 290, column: 55, scope: !923, inlinedAt: !820)
!932 = !DILocation(line: 291, column: 12, scope: !933, inlinedAt: !820)
!933 = distinct !DILexicalBlock(scope: !923, file: !3, line: 291, column: 11)
!934 = !DILocation(line: 291, column: 11, scope: !923, inlinedAt: !820)
!935 = !DILocation(line: 292, column: 9, scope: !933, inlinedAt: !820)
!936 = !DILocation(line: 294, column: 7, scope: !923, inlinedAt: !820)
!937 = !DILocation(line: 296, column: 21, scope: !923, inlinedAt: !820)
!938 = !DILocalVariable(name: "__stream", arg: 1, scope: !939, file: !940, line: 132, type: !744)
!939 = distinct !DISubprogram(name: "ferror_unlocked", scope: !940, file: !940, line: 132, type: !941, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !943)
!940 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!941 = !DISubroutineType(types: !942)
!942 = !{!87, !744}
!943 = !{!938}
!944 = !DILocation(line: 132, column: 1, scope: !939, inlinedAt: !945)
!945 = distinct !DILocation(line: 298, column: 11, scope: !946, inlinedAt: !820)
!946 = distinct !DILexicalBlock(scope: !923, file: !3, line: 298, column: 11)
!947 = !DILocation(line: 134, column: 10, scope: !939, inlinedAt: !945)
!948 = !{!949, !882, i64 0}
!949 = !{!"_IO_FILE", !882, i64 0, !678, i64 8, !678, i64 16, !678, i64 24, !678, i64 32, !678, i64 40, !678, i64 48, !678, i64 56, !678, i64 64, !678, i64 72, !678, i64 80, !678, i64 88, !678, i64 96, !678, i64 104, !882, i64 112, !882, i64 116, !856, i64 120, !950, i64 128, !679, i64 130, !679, i64 131, !678, i64 136, !856, i64 144, !678, i64 152, !678, i64 160, !678, i64 168, !678, i64 176, !856, i64 184, !882, i64 192, !679, i64 196}
!950 = !{!"short", !679, i64 0}
!951 = !DILocation(line: 298, column: 11, scope: !946, inlinedAt: !820)
!952 = !DILocation(line: 298, column: 11, scope: !923, inlinedAt: !820)
!953 = !DILocation(line: 299, column: 9, scope: !946, inlinedAt: !820)
!954 = !DILocation(line: 305, column: 12, scope: !802, inlinedAt: !820)
!955 = !DILocation(line: 309, column: 12, scope: !809, inlinedAt: !820)
!956 = !DILocation(line: 309, column: 11, scope: !802, inlinedAt: !820)
!957 = !DILocation(line: 339, column: 15, scope: !958, inlinedAt: !820)
!958 = distinct !DILexicalBlock(scope: !959, file: !3, line: 337, column: 9)
!959 = distinct !DILexicalBlock(scope: !802, file: !3, line: 330, column: 11)
!960 = !DILocation(line: 311, column: 17, scope: !808, inlinedAt: !820)
!961 = !DILocation(line: 311, column: 16, scope: !809, inlinedAt: !820)
!962 = !DILocation(line: 315, column: 15, scope: !806, inlinedAt: !820)
!963 = !{i8 0, i8 2}
!964 = !DILocation(line: 315, column: 15, scope: !807, inlinedAt: !820)
!965 = !DILocation(line: 316, column: 44, scope: !806, inlinedAt: !820)
!966 = !{!967, !678, i64 16}
!967 = !{!"linebuffer", !856, i64 0, !856, i64 8, !678, i64 16}
!968 = !DILocation(line: 316, column: 65, scope: !806, inlinedAt: !820)
!969 = !{!967, !856, i64 8}
!970 = !DILocation(line: 316, column: 72, scope: !806, inlinedAt: !820)
!971 = !DILocation(line: 317, column: 44, scope: !806, inlinedAt: !820)
!972 = !DILocation(line: 317, column: 65, scope: !806, inlinedAt: !820)
!973 = !DILocation(line: 317, column: 72, scope: !806, inlinedAt: !820)
!974 = !DILocation(line: 316, column: 21, scope: !806, inlinedAt: !820)
!975 = !DILocation(line: 304, column: 11, scope: !802, inlinedAt: !820)
!976 = !DILocation(line: 316, column: 13, scope: !806, inlinedAt: !820)
!977 = !DILocation(line: 320, column: 28, scope: !805, inlinedAt: !820)
!978 = !DILocation(line: 320, column: 75, scope: !805, inlinedAt: !820)
!979 = !DILocation(line: 320, column: 22, scope: !805, inlinedAt: !820)
!980 = !DILocation(line: 321, column: 44, scope: !805, inlinedAt: !820)
!981 = !DILocation(line: 321, column: 65, scope: !805, inlinedAt: !820)
!982 = !DILocation(line: 321, column: 23, scope: !805, inlinedAt: !820)
!983 = !DILocation(line: 322, column: 25, scope: !984, inlinedAt: !820)
!984 = distinct !DILexicalBlock(scope: !805, file: !3, line: 322, column: 19)
!985 = !DILocation(line: 322, column: 19, scope: !805, inlinedAt: !820)
!986 = !DILocation(line: 325, column: 48, scope: !984, inlinedAt: !820)
!987 = !DILocation(line: 330, column: 17, scope: !959, inlinedAt: !820)
!988 = !DILocation(line: 330, column: 11, scope: !802, inlinedAt: !820)
!989 = !DILocation(line: 333, column: 19, scope: !990, inlinedAt: !820)
!990 = distinct !DILexicalBlock(scope: !959, file: !3, line: 331, column: 9)
!991 = !DILocation(line: 334, column: 35, scope: !990, inlinedAt: !820)
!992 = !DILocalVariable(name: "line", arg: 1, scope: !993, file: !3, line: 174, type: !996)
!993 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 174, type: !994, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !998)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !996, !744, !87}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!998 = !{!992, !999, !1000}
!999 = !DILocalVariable(name: "stream", arg: 2, scope: !993, file: !3, line: 174, type: !744)
!1000 = !DILocalVariable(name: "class", arg: 3, scope: !993, file: !3, line: 174, type: !87)
!1001 = !DILocation(line: 174, column: 37, scope: !993, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 334, column: 11, scope: !990, inlinedAt: !820)
!1003 = !DILocation(line: 174, column: 49, scope: !993, inlinedAt: !1002)
!1004 = !DILocation(line: 174, column: 61, scope: !993, inlinedAt: !1002)
!1005 = !DILocation(line: 191, column: 11, scope: !1006, inlinedAt: !1002)
!1006 = distinct !DILexicalBlock(scope: !993, file: !3, line: 177, column: 5)
!1007 = !DILocation(line: 193, column: 11, scope: !1006, inlinedAt: !1002)
!1008 = !DILocation(line: 194, column: 9, scope: !1009, inlinedAt: !1002)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 193, column: 11)
!1010 = !DILocation(line: 195, column: 11, scope: !1006, inlinedAt: !1002)
!1011 = !DILocation(line: 196, column: 9, scope: !1012, inlinedAt: !1002)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 195, column: 11)
!1013 = !DILocation(line: 200, column: 3, scope: !993, inlinedAt: !1002)
!1014 = !DILocation(line: 201, column: 1, scope: !993, inlinedAt: !1002)
!1015 = !DILocation(line: 339, column: 21, scope: !1016, inlinedAt: !820)
!1016 = distinct !DILexicalBlock(scope: !958, file: !3, line: 339, column: 15)
!1017 = !DILocation(line: 342, column: 23, scope: !1018, inlinedAt: !820)
!1018 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 340, column: 13)
!1019 = !DILocation(line: 174, column: 37, scope: !993, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 343, column: 15, scope: !1018, inlinedAt: !820)
!1021 = !DILocation(line: 174, column: 61, scope: !993, inlinedAt: !1020)
!1022 = !DILocation(line: 179, column: 11, scope: !1006, inlinedAt: !1020)
!1023 = !DILocation(line: 343, column: 39, scope: !1018, inlinedAt: !820)
!1024 = !DILocation(line: 200, column: 3, scope: !993, inlinedAt: !1020)
!1025 = !DILocation(line: 201, column: 1, scope: !993, inlinedAt: !1020)
!1026 = !DILocation(line: 348, column: 23, scope: !1027, inlinedAt: !820)
!1027 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 346, column: 13)
!1028 = !DILocation(line: 349, column: 39, scope: !1027, inlinedAt: !820)
!1029 = !DILocation(line: 174, column: 37, scope: !993, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 349, column: 15, scope: !1027, inlinedAt: !820)
!1031 = !DILocation(line: 174, column: 49, scope: !993, inlinedAt: !1030)
!1032 = !DILocation(line: 174, column: 61, scope: !993, inlinedAt: !1030)
!1033 = !DILocation(line: 184, column: 11, scope: !1006, inlinedAt: !1030)
!1034 = !DILocation(line: 186, column: 11, scope: !1006, inlinedAt: !1030)
!1035 = !DILocation(line: 187, column: 9, scope: !1036, inlinedAt: !1030)
!1036 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 186, column: 11)
!1037 = !DILocation(line: 200, column: 3, scope: !993, inlinedAt: !1030)
!1038 = !DILocation(line: 201, column: 1, scope: !993, inlinedAt: !1030)
!1039 = !DILocation(line: 366, column: 36, scope: !1040, inlinedAt: !820)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 362, column: 11)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 361, column: 13)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 360, column: 7)
!1043 = distinct !DILexicalBlock(scope: !802, file: !3, line: 360, column: 7)
!1044 = !DILocation(line: 366, column: 41, scope: !1040, inlinedAt: !820)
!1045 = !DILocation(line: 368, column: 49, scope: !1040, inlinedAt: !820)
!1046 = !DILocation(line: 368, column: 27, scope: !1040, inlinedAt: !820)
!1047 = !DILocation(line: 371, column: 17, scope: !1048, inlinedAt: !820)
!1048 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 371, column: 17)
!1049 = !DILocation(line: 371, column: 17, scope: !1040, inlinedAt: !820)
!1050 = !DILocation(line: 372, column: 28, scope: !1048, inlinedAt: !820)
!1051 = !DILocation(line: 372, column: 15, scope: !1048, inlinedAt: !820)
!1052 = !DILocation(line: 377, column: 22, scope: !1053, inlinedAt: !820)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 377, column: 22)
!1054 = !DILocation(line: 377, column: 46, scope: !1053, inlinedAt: !820)
!1055 = !DILocation(line: 377, column: 22, scope: !1048, inlinedAt: !820)
!1056 = !DILocation(line: 379, column: 28, scope: !1053, inlinedAt: !820)
!1057 = !DILocation(line: 378, column: 15, scope: !1053, inlinedAt: !820)
!1058 = !DILocation(line: 132, column: 1, scope: !939, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 381, column: 17, scope: !1060, inlinedAt: !820)
!1060 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 381, column: 17)
!1061 = !DILocation(line: 134, column: 10, scope: !939, inlinedAt: !1059)
!1062 = !DILocation(line: 381, column: 17, scope: !1060, inlinedAt: !820)
!1063 = !DILocation(line: 381, column: 17, scope: !1040, inlinedAt: !820)
!1064 = !DILocation(line: 382, column: 15, scope: !1060, inlinedAt: !820)
!1065 = !DILocation(line: 361, column: 13, scope: !1041, inlinedAt: !820)
!1066 = !DILocation(line: 361, column: 13, scope: !1042, inlinedAt: !820)
!1067 = !DILocation(line: 389, column: 9, scope: !1068, inlinedAt: !820)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 389, column: 9)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 388, column: 3)
!1070 = distinct !DILexicalBlock(scope: !720, file: !3, line: 388, column: 3)
!1071 = !DILocation(line: 389, column: 29, scope: !1068, inlinedAt: !820)
!1072 = !DILocation(line: 389, column: 9, scope: !1069, inlinedAt: !820)
!1073 = !DILocation(line: 390, column: 7, scope: !1068, inlinedAt: !820)
!1074 = !DILocation(line: 395, column: 7, scope: !811, inlinedAt: !820)
!1075 = !DILocation(line: 396, column: 7, scope: !811, inlinedAt: !820)
!1076 = !DILocation(line: 397, column: 7, scope: !811, inlinedAt: !820)
!1077 = !DILocation(line: 398, column: 7, scope: !811, inlinedAt: !820)
!1078 = !DILocation(line: 403, column: 5, scope: !812, inlinedAt: !820)
!1079 = !DILocation(line: 403, column: 5, scope: !811, inlinedAt: !820)
!1080 = !DILocation(line: 392, column: 7, scope: !720, inlinedAt: !820)
!1081 = !DILocation(line: 302, column: 25, scope: !720, inlinedAt: !820)
!1082 = !DILocation(line: 302, column: 10, scope: !720, inlinedAt: !820)
!1083 = !DILocation(line: 302, column: 22, scope: !720, inlinedAt: !820)
!1084 = !DILocation(line: 302, column: 3, scope: !720, inlinedAt: !820)
!1085 = distinct !{!1085, !1086, !1087}
!1086 = !DILocation(line: 302, column: 3, scope: !720)
!1087 = !DILocation(line: 386, column: 5, scope: !720)
!1088 = !DILocation(line: 404, column: 1, scope: !720, inlinedAt: !820)
!1089 = !DILocation(line: 495, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !711, file: !3, line: 495, column: 7)
!1091 = !DILocation(line: 495, column: 37, scope: !1090)
!1092 = !DILocation(line: 495, column: 34, scope: !1090)
!1093 = !DILocation(line: 499, column: 1, scope: !711)
!1094 = distinct !DISubprogram(name: "check_order", scope: !3, file: !3, line: 215, type: !1095, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1097)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !996, !996, !87}
!1097 = !{!1098, !1099, !1100, !1101}
!1098 = !DILocalVariable(name: "prev", arg: 1, scope: !1094, file: !3, line: 215, type: !996)
!1099 = !DILocalVariable(name: "current", arg: 2, scope: !1094, file: !3, line: 216, type: !996)
!1100 = !DILocalVariable(name: "whatfile", arg: 3, scope: !1094, file: !3, line: 217, type: !87)
!1101 = !DILocalVariable(name: "order", scope: !1102, file: !3, line: 225, type: !87)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 224, column: 9)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 223, column: 11)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 222, column: 5)
!1105 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 220, column: 7)
!1106 = !DILocation(line: 215, column: 39, scope: !1094)
!1107 = !DILocation(line: 216, column: 39, scope: !1094)
!1108 = !DILocation(line: 217, column: 18, scope: !1094)
!1109 = !DILocation(line: 220, column: 7, scope: !1105)
!1110 = !DILocation(line: 221, column: 7, scope: !1105)
!1111 = !DILocation(line: 220, column: 7, scope: !1094)
!1112 = !DILocation(line: 223, column: 45, scope: !1103)
!1113 = !DILocation(line: 223, column: 12, scope: !1103)
!1114 = !DILocation(line: 223, column: 11, scope: !1104)
!1115 = !DILocation(line: 227, column: 15, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 227, column: 15)
!1117 = !DILocation(line: 227, column: 15, scope: !1102)
!1118 = !DILocation(line: 228, column: 21, scope: !1116)
!1119 = !DILocation(line: 225, column: 15, scope: !1102)
!1120 = !DILocation(line: 228, column: 13, scope: !1116)
!1121 = !DILocation(line: 231, column: 21, scope: !1116)
!1122 = !DILocation(line: 234, column: 17, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 234, column: 15)
!1124 = !DILocation(line: 234, column: 15, scope: !1102)
!1125 = !DILocation(line: 236, column: 23, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 235, column: 13)
!1127 = !DILocation(line: 236, column: 41, scope: !1126)
!1128 = !DILocation(line: 238, column: 25, scope: !1126)
!1129 = !DILocation(line: 236, column: 15, scope: !1126)
!1130 = !DILocation(line: 242, column: 53, scope: !1126)
!1131 = !DILocation(line: 243, column: 13, scope: !1126)
!1132 = !DILocation(line: 246, column: 1, scope: !1094)
!1133 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !116, file: !116, line: 41, type: !60, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1134)
!1134 = !{!1135}
!1135 = !DILocalVariable(name: "file", arg: 1, scope: !1133, file: !116, line: 41, type: !62)
!1136 = !DILocation(line: 41, column: 41, scope: !1133)
!1137 = !DILocation(line: 43, column: 13, scope: !1133)
!1138 = !DILocation(line: 44, column: 1, scope: !1133)
!1139 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !116, file: !116, line: 78, type: !1140, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !40}
!1142 = !{!1143}
!1143 = !DILocalVariable(name: "ignore", arg: 1, scope: !1139, file: !116, line: 78, type: !40)
!1144 = !DILocation(line: 78, column: 37, scope: !1139)
!1145 = !DILocation(line: 80, column: 16, scope: !1139)
!1146 = !DILocation(line: 81, column: 1, scope: !1139)
!1147 = distinct !DISubprogram(name: "close_stdout", scope: !116, file: !116, line: 107, type: !1148, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null}
!1150 = !{!1151}
!1151 = !DILocalVariable(name: "write_error", scope: !1152, file: !116, line: 112, type: !62)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !116, line: 111, column: 5)
!1153 = distinct !DILexicalBlock(scope: !1147, file: !116, line: 109, column: 7)
!1154 = !DILocation(line: 109, column: 21, scope: !1153)
!1155 = !DILocation(line: 109, column: 7, scope: !1153)
!1156 = !DILocation(line: 109, column: 29, scope: !1153)
!1157 = !DILocation(line: 110, column: 7, scope: !1153)
!1158 = !DILocation(line: 110, column: 12, scope: !1153)
!1159 = !DILocation(line: 114, column: 19, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1152, file: !116, line: 113, column: 11)
!1161 = !DILocation(line: 110, column: 25, scope: !1153)
!1162 = !DILocation(line: 110, column: 28, scope: !1153)
!1163 = !DILocation(line: 110, column: 34, scope: !1153)
!1164 = !DILocation(line: 109, column: 7, scope: !1147)
!1165 = !DILocation(line: 112, column: 33, scope: !1152)
!1166 = !DILocation(line: 112, column: 19, scope: !1152)
!1167 = !DILocation(line: 113, column: 11, scope: !1160)
!1168 = !DILocation(line: 113, column: 11, scope: !1152)
!1169 = !DILocation(line: 114, column: 36, scope: !1160)
!1170 = !DILocation(line: 114, column: 9, scope: !1160)
!1171 = !DILocation(line: 117, column: 9, scope: !1160)
!1172 = !DILocation(line: 119, column: 14, scope: !1152)
!1173 = !DILocation(line: 119, column: 7, scope: !1152)
!1174 = !DILocation(line: 122, column: 22, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1147, file: !116, line: 122, column: 8)
!1176 = !DILocation(line: 122, column: 8, scope: !1175)
!1177 = !DILocation(line: 122, column: 30, scope: !1175)
!1178 = !DILocation(line: 122, column: 8, scope: !1147)
!1179 = !DILocation(line: 123, column: 13, scope: !1175)
!1180 = !DILocation(line: 123, column: 6, scope: !1175)
!1181 = !DILocation(line: 124, column: 1, scope: !1147)
!1182 = distinct !DISubprogram(name: "fdadvise", scope: !1183, file: !1183, line: 31, type: !1184, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !1189)
!1183 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !87, !1186, !1186, !1188}
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1187, line: 57, baseType: !774)
!1187 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !25, line: 52, baseType: !24)
!1189 = !{!1190, !1191, !1192, !1193, !1194}
!1190 = !DILocalVariable(name: "fd", arg: 1, scope: !1182, file: !1183, line: 31, type: !87)
!1191 = !DILocalVariable(name: "offset", arg: 2, scope: !1182, file: !1183, line: 31, type: !1186)
!1192 = !DILocalVariable(name: "len", arg: 3, scope: !1182, file: !1183, line: 31, type: !1186)
!1193 = !DILocalVariable(name: "advice", arg: 4, scope: !1182, file: !1183, line: 31, type: !1188)
!1194 = !DILocalVariable(name: "__x", scope: !1195, file: !1183, line: 34, type: !87)
!1195 = distinct !DILexicalBlock(scope: !1182, file: !1183, line: 34, column: 3)
!1196 = !DILocation(line: 31, column: 15, scope: !1182)
!1197 = !DILocation(line: 31, column: 25, scope: !1182)
!1198 = !DILocation(line: 31, column: 39, scope: !1182)
!1199 = !DILocation(line: 31, column: 54, scope: !1182)
!1200 = !DILocation(line: 34, column: 3, scope: !1195)
!1201 = !DILocation(line: 36, column: 1, scope: !1182)
!1202 = distinct !DISubprogram(name: "fadvise", scope: !1183, file: !1183, line: 39, type: !1203, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !1245)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !1205, !1188}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !746, line: 7, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !748, line: 241, size: 1728, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1207, file: !748, line: 242, baseType: !87, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1207, file: !748, line: 247, baseType: !34, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1207, file: !748, line: 248, baseType: !34, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1207, file: !748, line: 249, baseType: !34, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1207, file: !748, line: 250, baseType: !34, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1207, file: !748, line: 251, baseType: !34, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1207, file: !748, line: 252, baseType: !34, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1207, file: !748, line: 253, baseType: !34, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1207, file: !748, line: 254, baseType: !34, size: 64, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1207, file: !748, line: 256, baseType: !34, size: 64, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1207, file: !748, line: 257, baseType: !34, size: 64, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1207, file: !748, line: 258, baseType: !34, size: 64, offset: 704)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1207, file: !748, line: 260, baseType: !1222, size: 64, offset: 768)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !748, line: 156, size: 192, elements: !1224)
!1224 = !{!1225, !1226, !1228}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1223, file: !748, line: 157, baseType: !1222, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1223, file: !748, line: 158, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1223, file: !748, line: 162, baseType: !87, size: 32, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1207, file: !748, line: 262, baseType: !1227, size: 64, offset: 832)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1207, file: !748, line: 264, baseType: !87, size: 32, offset: 896)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1207, file: !748, line: 268, baseType: !87, size: 32, offset: 928)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1207, file: !748, line: 270, baseType: !774, size: 64, offset: 960)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1207, file: !748, line: 274, baseType: !157, size: 16, offset: 1024)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1207, file: !748, line: 275, baseType: !778, size: 8, offset: 1040)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1207, file: !748, line: 276, baseType: !780, size: 8, offset: 1048)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1207, file: !748, line: 280, baseType: !782, size: 64, offset: 1088)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1207, file: !748, line: 289, baseType: !785, size: 64, offset: 1152)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1207, file: !748, line: 297, baseType: !36, size: 64, offset: 1216)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1207, file: !748, line: 298, baseType: !36, size: 64, offset: 1280)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1207, file: !748, line: 299, baseType: !36, size: 64, offset: 1344)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1207, file: !748, line: 300, baseType: !36, size: 64, offset: 1408)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1207, file: !748, line: 302, baseType: !98, size: 64, offset: 1472)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1207, file: !748, line: 303, baseType: !87, size: 32, offset: 1536)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1207, file: !748, line: 305, baseType: !793, size: 160, offset: 1568)
!1245 = !{!1246, !1247}
!1246 = !DILocalVariable(name: "fp", arg: 1, scope: !1202, file: !1183, line: 39, type: !1205)
!1247 = !DILocalVariable(name: "advice", arg: 2, scope: !1202, file: !1183, line: 39, type: !1188)
!1248 = !DILocation(line: 39, column: 16, scope: !1202)
!1249 = !DILocation(line: 39, column: 30, scope: !1202)
!1250 = !DILocation(line: 41, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1202, file: !1183, line: 41, column: 7)
!1252 = !DILocation(line: 41, column: 7, scope: !1202)
!1253 = !DILocation(line: 42, column: 15, scope: !1251)
!1254 = !DILocation(line: 31, column: 15, scope: !1182, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 42, column: 5, scope: !1251)
!1256 = !DILocation(line: 31, column: 25, scope: !1182, inlinedAt: !1255)
!1257 = !DILocation(line: 31, column: 39, scope: !1182, inlinedAt: !1255)
!1258 = !DILocation(line: 31, column: 54, scope: !1182, inlinedAt: !1255)
!1259 = !DILocation(line: 34, column: 3, scope: !1195, inlinedAt: !1255)
!1260 = !DILocation(line: 42, column: 5, scope: !1251)
!1261 = !DILocation(line: 43, column: 1, scope: !1202)
!1262 = distinct !DISubprogram(name: "fopen_safer", scope: !1263, file: !1263, line: 31, type: !1264, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !1306)
!1263 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!1266, !62, !62}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !746, line: 7, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !748, line: 241, size: 1728, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1268, file: !748, line: 242, baseType: !87, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1268, file: !748, line: 247, baseType: !34, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1268, file: !748, line: 248, baseType: !34, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1268, file: !748, line: 249, baseType: !34, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1268, file: !748, line: 250, baseType: !34, size: 64, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1268, file: !748, line: 251, baseType: !34, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1268, file: !748, line: 252, baseType: !34, size: 64, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1268, file: !748, line: 253, baseType: !34, size: 64, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1268, file: !748, line: 254, baseType: !34, size: 64, offset: 512)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1268, file: !748, line: 256, baseType: !34, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1268, file: !748, line: 257, baseType: !34, size: 64, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1268, file: !748, line: 258, baseType: !34, size: 64, offset: 704)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1268, file: !748, line: 260, baseType: !1283, size: 64, offset: 768)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !748, line: 156, size: 192, elements: !1285)
!1285 = !{!1286, !1287, !1289}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1284, file: !748, line: 157, baseType: !1283, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1284, file: !748, line: 158, baseType: !1288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1284, file: !748, line: 162, baseType: !87, size: 32, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1268, file: !748, line: 262, baseType: !1288, size: 64, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1268, file: !748, line: 264, baseType: !87, size: 32, offset: 896)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1268, file: !748, line: 268, baseType: !87, size: 32, offset: 928)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1268, file: !748, line: 270, baseType: !774, size: 64, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1268, file: !748, line: 274, baseType: !157, size: 16, offset: 1024)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1268, file: !748, line: 275, baseType: !778, size: 8, offset: 1040)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1268, file: !748, line: 276, baseType: !780, size: 8, offset: 1048)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1268, file: !748, line: 280, baseType: !782, size: 64, offset: 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1268, file: !748, line: 289, baseType: !785, size: 64, offset: 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1268, file: !748, line: 297, baseType: !36, size: 64, offset: 1216)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1268, file: !748, line: 298, baseType: !36, size: 64, offset: 1280)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1268, file: !748, line: 299, baseType: !36, size: 64, offset: 1344)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1268, file: !748, line: 300, baseType: !36, size: 64, offset: 1408)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1268, file: !748, line: 302, baseType: !98, size: 64, offset: 1472)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1268, file: !748, line: 303, baseType: !87, size: 32, offset: 1536)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1268, file: !748, line: 305, baseType: !793, size: 160, offset: 1568)
!1306 = !{!1307, !1308, !1309, !1310, !1313, !1316, !1319}
!1307 = !DILocalVariable(name: "file", arg: 1, scope: !1262, file: !1263, line: 31, type: !62)
!1308 = !DILocalVariable(name: "mode", arg: 2, scope: !1262, file: !1263, line: 31, type: !62)
!1309 = !DILocalVariable(name: "fp", scope: !1262, file: !1263, line: 33, type: !1266)
!1310 = !DILocalVariable(name: "fd", scope: !1311, file: !1263, line: 37, type: !87)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !1263, line: 36, column: 5)
!1312 = distinct !DILexicalBlock(scope: !1262, file: !1263, line: 35, column: 7)
!1313 = !DILocalVariable(name: "f", scope: !1314, file: !1263, line: 41, type: !87)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !1263, line: 40, column: 9)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !1263, line: 39, column: 11)
!1316 = !DILocalVariable(name: "e", scope: !1317, file: !1263, line: 45, type: !87)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !1263, line: 44, column: 13)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !1263, line: 43, column: 15)
!1319 = !DILocalVariable(name: "e", scope: !1320, file: !1263, line: 54, type: !87)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !1263, line: 53, column: 13)
!1321 = distinct !DILexicalBlock(scope: !1314, file: !1263, line: 51, column: 15)
!1322 = !DILocation(line: 31, column: 26, scope: !1262)
!1323 = !DILocation(line: 31, column: 44, scope: !1262)
!1324 = !DILocation(line: 33, column: 14, scope: !1262)
!1325 = !DILocation(line: 33, column: 9, scope: !1262)
!1326 = !DILocation(line: 35, column: 7, scope: !1312)
!1327 = !DILocation(line: 35, column: 7, scope: !1262)
!1328 = !DILocation(line: 37, column: 16, scope: !1311)
!1329 = !DILocation(line: 37, column: 11, scope: !1311)
!1330 = !DILocation(line: 39, column: 19, scope: !1315)
!1331 = !DILocation(line: 41, column: 19, scope: !1314)
!1332 = !DILocation(line: 41, column: 15, scope: !1314)
!1333 = !DILocation(line: 43, column: 17, scope: !1318)
!1334 = !DILocation(line: 43, column: 15, scope: !1314)
!1335 = !DILocation(line: 45, column: 23, scope: !1317)
!1336 = !DILocation(line: 45, column: 19, scope: !1317)
!1337 = !DILocation(line: 46, column: 15, scope: !1317)
!1338 = !DILocation(line: 47, column: 21, scope: !1317)
!1339 = !DILocation(line: 51, column: 15, scope: !1321)
!1340 = !DILocation(line: 51, column: 27, scope: !1321)
!1341 = !DILocation(line: 52, column: 15, scope: !1321)
!1342 = !DILocation(line: 52, column: 26, scope: !1321)
!1343 = !DILocation(line: 52, column: 24, scope: !1321)
!1344 = !DILocation(line: 51, column: 15, scope: !1314)
!1345 = !DILocation(line: 54, column: 23, scope: !1320)
!1346 = !DILocation(line: 54, column: 19, scope: !1320)
!1347 = !DILocation(line: 55, column: 15, scope: !1320)
!1348 = !DILocation(line: 56, column: 21, scope: !1320)
!1349 = !DILocation(line: 63, column: 1, scope: !1262)
!1350 = distinct !DISubprogram(name: "hard_locale", scope: !1351, file: !1351, line: 38, type: !1352, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !1354)
!1351 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!40, !87}
!1354 = !{!1355, !1356, !1357}
!1355 = !DILocalVariable(name: "category", arg: 1, scope: !1350, file: !1351, line: 38, type: !87)
!1356 = !DILocalVariable(name: "hard", scope: !1350, file: !1351, line: 40, type: !40)
!1357 = !DILocalVariable(name: "p", scope: !1350, file: !1351, line: 41, type: !62)
!1358 = !DILocation(line: 38, column: 18, scope: !1350)
!1359 = !DILocation(line: 40, column: 8, scope: !1350)
!1360 = !DILocation(line: 41, column: 19, scope: !1350)
!1361 = !DILocation(line: 41, column: 15, scope: !1350)
!1362 = !DILocation(line: 43, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1350, file: !1351, line: 43, column: 7)
!1364 = !DILocation(line: 43, column: 7, scope: !1350)
!1365 = !DILocation(line: 47, column: 15, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !1351, line: 47, column: 15)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !1351, line: 46, column: 9)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !1351, line: 45, column: 11)
!1369 = distinct !DILexicalBlock(scope: !1363, file: !1351, line: 44, column: 5)
!1370 = !DILocation(line: 47, column: 31, scope: !1366)
!1371 = !DILocation(line: 47, column: 36, scope: !1366)
!1372 = !DILocation(line: 47, column: 39, scope: !1366)
!1373 = !DILocation(line: 47, column: 59, scope: !1366)
!1374 = !DILocation(line: 47, column: 15, scope: !1367)
!1375 = !DILocation(line: 48, column: 13, scope: !1366)
!1376 = !DILocation(line: 71, column: 3, scope: !1350)
!1377 = distinct !DISubprogram(name: "umaxtostr", scope: !1378, file: !1378, line: 36, type: !1379, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !1381)
!1378 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!34, !603, !34}
!1381 = !{!1382, !1383, !1384}
!1382 = !DILocalVariable(name: "i", arg: 1, scope: !1377, file: !1378, line: 36, type: !603)
!1383 = !DILocalVariable(name: "buf", arg: 2, scope: !1377, file: !1378, line: 36, type: !34)
!1384 = !DILocalVariable(name: "p", scope: !1377, file: !1378, line: 38, type: !34)
!1385 = !DILocation(line: 36, column: 19, scope: !1377)
!1386 = !DILocation(line: 36, column: 28, scope: !1377)
!1387 = !DILocation(line: 38, column: 17, scope: !1377)
!1388 = !DILocation(line: 38, column: 9, scope: !1377)
!1389 = !DILocation(line: 39, column: 6, scope: !1377)
!1390 = !DILocation(line: 51, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !1378, line: 50, column: 5)
!1392 = distinct !DILexicalBlock(scope: !1377, file: !1378, line: 41, column: 7)
!1393 = distinct !{!1393, !1390, !1394}
!1394 = !DILocation(line: 53, column: 28, scope: !1391)
!1395 = !DILocation(line: 52, column: 24, scope: !1391)
!1396 = !DILocation(line: 52, column: 16, scope: !1391)
!1397 = !DILocation(line: 52, column: 10, scope: !1391)
!1398 = !DILocation(line: 52, column: 14, scope: !1391)
!1399 = !DILocation(line: 53, column: 17, scope: !1391)
!1400 = !DILocation(line: 53, column: 24, scope: !1391)
!1401 = !DILocation(line: 52, column: 9, scope: !1391)
!1402 = !DILocation(line: 56, column: 3, scope: !1377)
!1403 = distinct !DISubprogram(name: "initbuffer", scope: !1404, file: !1404, line: 37, type: !1405, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1413)
!1404 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !1407}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !729, line: 26, size: 192, elements: !1409)
!1409 = !{!1410, !1411, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1408, file: !729, line: 28, baseType: !98, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1408, file: !729, line: 29, baseType: !98, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1408, file: !729, line: 30, baseType: !34, size: 64, offset: 128)
!1413 = !{!1414}
!1414 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1403, file: !1404, line: 37, type: !1407)
!1415 = !DILocation(line: 37, column: 32, scope: !1403)
!1416 = !DILocation(line: 39, column: 3, scope: !1403)
!1417 = !DILocation(line: 40, column: 1, scope: !1403)
!1418 = distinct !DISubprogram(name: "readlinebuffer", scope: !1404, file: !1404, line: 43, type: !1419, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1461)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!1407, !1407, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !746, line: 7, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !748, line: 241, size: 1728, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1423, file: !748, line: 242, baseType: !87, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1423, file: !748, line: 247, baseType: !34, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1423, file: !748, line: 248, baseType: !34, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1423, file: !748, line: 249, baseType: !34, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1423, file: !748, line: 250, baseType: !34, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1423, file: !748, line: 251, baseType: !34, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1423, file: !748, line: 252, baseType: !34, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1423, file: !748, line: 253, baseType: !34, size: 64, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1423, file: !748, line: 254, baseType: !34, size: 64, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1423, file: !748, line: 256, baseType: !34, size: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1423, file: !748, line: 257, baseType: !34, size: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1423, file: !748, line: 258, baseType: !34, size: 64, offset: 704)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1423, file: !748, line: 260, baseType: !1438, size: 64, offset: 768)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !748, line: 156, size: 192, elements: !1440)
!1440 = !{!1441, !1442, !1444}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1439, file: !748, line: 157, baseType: !1438, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1439, file: !748, line: 158, baseType: !1443, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1439, file: !748, line: 162, baseType: !87, size: 32, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1423, file: !748, line: 262, baseType: !1443, size: 64, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1423, file: !748, line: 264, baseType: !87, size: 32, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1423, file: !748, line: 268, baseType: !87, size: 32, offset: 928)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1423, file: !748, line: 270, baseType: !774, size: 64, offset: 960)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1423, file: !748, line: 274, baseType: !157, size: 16, offset: 1024)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1423, file: !748, line: 275, baseType: !778, size: 8, offset: 1040)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1423, file: !748, line: 276, baseType: !780, size: 8, offset: 1048)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1423, file: !748, line: 280, baseType: !782, size: 64, offset: 1088)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1423, file: !748, line: 289, baseType: !785, size: 64, offset: 1152)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1423, file: !748, line: 297, baseType: !36, size: 64, offset: 1216)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1423, file: !748, line: 298, baseType: !36, size: 64, offset: 1280)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1423, file: !748, line: 299, baseType: !36, size: 64, offset: 1344)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1423, file: !748, line: 300, baseType: !36, size: 64, offset: 1408)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1423, file: !748, line: 302, baseType: !98, size: 64, offset: 1472)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1423, file: !748, line: 303, baseType: !87, size: 32, offset: 1536)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1423, file: !748, line: 305, baseType: !793, size: 160, offset: 1568)
!1461 = !{!1462, !1463}
!1462 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1418, file: !1404, line: 43, type: !1407)
!1463 = !DILocalVariable(name: "stream", arg: 2, scope: !1418, file: !1404, line: 43, type: !1421)
!1464 = !DILocation(line: 43, column: 36, scope: !1418)
!1465 = !DILocation(line: 43, column: 54, scope: !1418)
!1466 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1467, file: !1404, line: 59, type: !1407)
!1467 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !1404, file: !1404, line: 59, type: !1468, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!1407, !1407, !1421, !35}
!1470 = !{!1466, !1471, !1472, !1473, !1474, !1475, !1476, !1477}
!1471 = !DILocalVariable(name: "stream", arg: 2, scope: !1467, file: !1404, line: 59, type: !1421)
!1472 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1467, file: !1404, line: 60, type: !35)
!1473 = !DILocalVariable(name: "c", scope: !1467, file: !1404, line: 62, type: !87)
!1474 = !DILocalVariable(name: "buffer", scope: !1467, file: !1404, line: 63, type: !34)
!1475 = !DILocalVariable(name: "p", scope: !1467, file: !1404, line: 64, type: !34)
!1476 = !DILocalVariable(name: "end", scope: !1467, file: !1404, line: 65, type: !34)
!1477 = !DILocalVariable(name: "oldsize", scope: !1478, file: !1404, line: 83, type: !98)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !1404, line: 82, column: 9)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !1404, line: 81, column: 11)
!1480 = distinct !DILexicalBlock(scope: !1467, file: !1404, line: 71, column: 5)
!1481 = !DILocation(line: 59, column: 42, scope: !1467, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 45, column: 10, scope: !1418)
!1483 = !DILocation(line: 59, column: 60, scope: !1467, inlinedAt: !1482)
!1484 = !DILocation(line: 60, column: 28, scope: !1467, inlinedAt: !1482)
!1485 = !DILocation(line: 63, column: 30, scope: !1467, inlinedAt: !1482)
!1486 = !DILocation(line: 63, column: 9, scope: !1467, inlinedAt: !1482)
!1487 = !DILocation(line: 64, column: 9, scope: !1467, inlinedAt: !1482)
!1488 = !DILocation(line: 65, column: 36, scope: !1467, inlinedAt: !1482)
!1489 = !DILocalVariable(name: "__stream", arg: 1, scope: !1490, file: !940, line: 125, type: !1421)
!1490 = distinct !DISubprogram(name: "feof_unlocked", scope: !940, file: !940, line: 125, type: !1491, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!87, !1421}
!1493 = !{!1489}
!1494 = !DILocation(line: 125, column: 1, scope: !1490, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 67, column: 7, scope: !1496, inlinedAt: !1482)
!1496 = distinct !DILexicalBlock(scope: !1467, file: !1404, line: 67, column: 7)
!1497 = !DILocation(line: 127, column: 10, scope: !1490, inlinedAt: !1495)
!1498 = !DILocation(line: 67, column: 7, scope: !1496, inlinedAt: !1482)
!1499 = !DILocation(line: 67, column: 7, scope: !1467, inlinedAt: !1482)
!1500 = !{!967, !856, i64 0}
!1501 = !DILocation(line: 65, column: 22, scope: !1467, inlinedAt: !1482)
!1502 = !DILocation(line: 70, column: 3, scope: !1467, inlinedAt: !1482)
!1503 = distinct !{!1503, !1504, !1505}
!1504 = !DILocation(line: 70, column: 3, scope: !1467)
!1505 = !DILocation(line: 91, column: 24, scope: !1467)
!1506 = !DILocation(line: 65, column: 9, scope: !1467, inlinedAt: !1482)
!1507 = !DILocalVariable(name: "__fp", arg: 1, scope: !1508, file: !940, line: 63, type: !1421)
!1508 = distinct !DISubprogram(name: "getc_unlocked", scope: !940, file: !940, line: 63, type: !1491, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1509)
!1509 = !{!1507}
!1510 = !DILocation(line: 63, column: 22, scope: !1508, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 72, column: 11, scope: !1480, inlinedAt: !1482)
!1512 = !DILocation(line: 65, column: 10, scope: !1508, inlinedAt: !1511)
!1513 = !{!949, !678, i64 8}
!1514 = !{!949, !678, i64 16}
!1515 = !{!"branch_weights", i32 2000, i32 1}
!1516 = !DILocation(line: 62, column: 7, scope: !1467, inlinedAt: !1482)
!1517 = !DILocation(line: 73, column: 11, scope: !1480, inlinedAt: !1482)
!1518 = !DILocation(line: 73, column: 13, scope: !1519, inlinedAt: !1482)
!1519 = distinct !DILexicalBlock(scope: !1480, file: !1404, line: 73, column: 11)
!1520 = !DILocation(line: 75, column: 17, scope: !1521, inlinedAt: !1482)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !1404, line: 75, column: 15)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !1404, line: 74, column: 9)
!1523 = !DILocation(line: 75, column: 27, scope: !1521, inlinedAt: !1482)
!1524 = !DILocalVariable(name: "__stream", arg: 1, scope: !1525, file: !940, line: 132, type: !1421)
!1525 = distinct !DISubprogram(name: "ferror_unlocked", scope: !940, file: !940, line: 132, type: !1491, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1526)
!1526 = !{!1524}
!1527 = !DILocation(line: 132, column: 1, scope: !1525, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 75, column: 30, scope: !1521, inlinedAt: !1482)
!1529 = !DILocation(line: 134, column: 10, scope: !1525, inlinedAt: !1528)
!1530 = !DILocation(line: 75, column: 30, scope: !1521, inlinedAt: !1482)
!1531 = !DILocation(line: 75, column: 15, scope: !1522, inlinedAt: !1482)
!1532 = !DILocation(line: 77, column: 15, scope: !1533, inlinedAt: !1482)
!1533 = distinct !DILexicalBlock(scope: !1522, file: !1404, line: 77, column: 15)
!1534 = !DILocation(line: 77, column: 21, scope: !1533, inlinedAt: !1482)
!1535 = !DILocation(line: 77, column: 15, scope: !1522, inlinedAt: !1482)
!1536 = !DILocation(line: 81, column: 13, scope: !1479, inlinedAt: !1482)
!1537 = !DILocation(line: 81, column: 11, scope: !1480, inlinedAt: !1482)
!1538 = !DILocation(line: 83, column: 40, scope: !1478, inlinedAt: !1482)
!1539 = !DILocation(line: 83, column: 18, scope: !1478, inlinedAt: !1482)
!1540 = !DILocation(line: 84, column: 20, scope: !1478, inlinedAt: !1482)
!1541 = !DILocation(line: 85, column: 22, scope: !1478, inlinedAt: !1482)
!1542 = !DILocation(line: 86, column: 30, scope: !1478, inlinedAt: !1482)
!1543 = !DILocation(line: 87, column: 38, scope: !1478, inlinedAt: !1482)
!1544 = !DILocation(line: 87, column: 24, scope: !1478, inlinedAt: !1482)
!1545 = !DILocation(line: 88, column: 9, scope: !1478, inlinedAt: !1482)
!1546 = !DILocation(line: 89, column: 14, scope: !1480, inlinedAt: !1482)
!1547 = !DILocation(line: 89, column: 9, scope: !1480, inlinedAt: !1482)
!1548 = !DILocation(line: 89, column: 12, scope: !1480, inlinedAt: !1482)
!1549 = !DILocation(line: 91, column: 12, scope: !1467, inlinedAt: !1482)
!1550 = !DILocation(line: 90, column: 5, scope: !1480, inlinedAt: !1482)
!1551 = !DILocation(line: 93, column: 26, scope: !1467, inlinedAt: !1482)
!1552 = !DILocation(line: 93, column: 15, scope: !1467, inlinedAt: !1482)
!1553 = !DILocation(line: 93, column: 22, scope: !1467, inlinedAt: !1482)
!1554 = !DILocation(line: 94, column: 3, scope: !1467, inlinedAt: !1482)
!1555 = !DILocation(line: 45, column: 3, scope: !1418)
!1556 = !DILocation(line: 59, column: 42, scope: !1467)
!1557 = !DILocation(line: 59, column: 60, scope: !1467)
!1558 = !DILocation(line: 60, column: 28, scope: !1467)
!1559 = !DILocation(line: 63, column: 30, scope: !1467)
!1560 = !DILocation(line: 63, column: 9, scope: !1467)
!1561 = !DILocation(line: 64, column: 9, scope: !1467)
!1562 = !DILocation(line: 65, column: 36, scope: !1467)
!1563 = !DILocation(line: 65, column: 9, scope: !1467)
!1564 = !DILocation(line: 125, column: 1, scope: !1490, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 67, column: 7, scope: !1496)
!1566 = !DILocation(line: 127, column: 10, scope: !1490, inlinedAt: !1565)
!1567 = !DILocation(line: 67, column: 7, scope: !1496)
!1568 = !DILocation(line: 67, column: 7, scope: !1467)
!1569 = !DILocation(line: 65, column: 22, scope: !1467)
!1570 = !DILocation(line: 63, column: 22, scope: !1508, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 72, column: 11, scope: !1480)
!1572 = !DILocation(line: 65, column: 10, scope: !1508, inlinedAt: !1571)
!1573 = !DILocation(line: 62, column: 7, scope: !1467)
!1574 = !DILocation(line: 73, column: 11, scope: !1480)
!1575 = !DILocation(line: 73, column: 13, scope: !1519)
!1576 = !DILocation(line: 75, column: 17, scope: !1521)
!1577 = !DILocation(line: 75, column: 27, scope: !1521)
!1578 = !DILocation(line: 132, column: 1, scope: !1525, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 75, column: 30, scope: !1521)
!1580 = !DILocation(line: 134, column: 10, scope: !1525, inlinedAt: !1579)
!1581 = !DILocation(line: 75, column: 30, scope: !1521)
!1582 = !DILocation(line: 75, column: 15, scope: !1522)
!1583 = !DILocation(line: 77, column: 15, scope: !1533)
!1584 = !DILocation(line: 77, column: 21, scope: !1533)
!1585 = !DILocation(line: 77, column: 15, scope: !1522)
!1586 = !DILocation(line: 81, column: 13, scope: !1479)
!1587 = !DILocation(line: 81, column: 11, scope: !1480)
!1588 = !DILocation(line: 83, column: 40, scope: !1478)
!1589 = !DILocation(line: 83, column: 18, scope: !1478)
!1590 = !DILocation(line: 84, column: 20, scope: !1478)
!1591 = !DILocation(line: 85, column: 22, scope: !1478)
!1592 = !DILocation(line: 86, column: 30, scope: !1478)
!1593 = !DILocation(line: 87, column: 38, scope: !1478)
!1594 = !DILocation(line: 87, column: 24, scope: !1478)
!1595 = !DILocation(line: 88, column: 9, scope: !1478)
!1596 = !DILocation(line: 89, column: 14, scope: !1480)
!1597 = !DILocation(line: 89, column: 9, scope: !1480)
!1598 = !DILocation(line: 89, column: 12, scope: !1480)
!1599 = !DILocation(line: 91, column: 12, scope: !1467)
!1600 = !DILocation(line: 90, column: 5, scope: !1480)
!1601 = !DILocation(line: 93, column: 26, scope: !1467)
!1602 = !DILocation(line: 93, column: 15, scope: !1467)
!1603 = !DILocation(line: 93, column: 22, scope: !1467)
!1604 = !DILocation(line: 94, column: 3, scope: !1467)
!1605 = !DILocation(line: 95, column: 1, scope: !1467)
!1606 = distinct !DISubprogram(name: "freebuffer", scope: !1404, file: !1404, line: 100, type: !1405, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1607)
!1607 = !{!1608}
!1608 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1606, file: !1404, line: 100, type: !1407)
!1609 = !DILocation(line: 100, column: 32, scope: !1606)
!1610 = !DILocation(line: 102, column: 21, scope: !1606)
!1611 = !DILocation(line: 102, column: 3, scope: !1606)
!1612 = !DILocation(line: 103, column: 1, scope: !1606)
!1613 = distinct !DISubprogram(name: "memcmp2", scope: !1614, file: !1614, line: 25, type: !1615, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !1617)
!1614 = !DIFile(filename: "lib/memcmp2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!87, !62, !98, !62, !98}
!1617 = !{!1618, !1619, !1620, !1621, !1622}
!1618 = !DILocalVariable(name: "s1", arg: 1, scope: !1613, file: !1614, line: 25, type: !62)
!1619 = !DILocalVariable(name: "n1", arg: 2, scope: !1613, file: !1614, line: 25, type: !98)
!1620 = !DILocalVariable(name: "s2", arg: 3, scope: !1613, file: !1614, line: 25, type: !62)
!1621 = !DILocalVariable(name: "n2", arg: 4, scope: !1613, file: !1614, line: 25, type: !98)
!1622 = !DILocalVariable(name: "cmp", scope: !1613, file: !1614, line: 27, type: !87)
!1623 = !DILocation(line: 25, column: 22, scope: !1613)
!1624 = !DILocation(line: 25, column: 33, scope: !1613)
!1625 = !DILocation(line: 25, column: 49, scope: !1613)
!1626 = !DILocation(line: 25, column: 60, scope: !1613)
!1627 = !DILocation(line: 27, column: 32, scope: !1613)
!1628 = !DILocation(line: 27, column: 29, scope: !1613)
!1629 = !DILocation(line: 27, column: 13, scope: !1613)
!1630 = !DILocation(line: 27, column: 7, scope: !1613)
!1631 = !DILocation(line: 28, column: 11, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1613, file: !1614, line: 28, column: 7)
!1633 = !DILocation(line: 28, column: 7, scope: !1613)
!1634 = !DILocation(line: 30, column: 14, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !1614, line: 30, column: 11)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !1614, line: 29, column: 5)
!1637 = !DILocation(line: 30, column: 11, scope: !1636)
!1638 = !DILocation(line: 32, column: 16, scope: !1635)
!1639 = !DILocation(line: 35, column: 3, scope: !1613)
!1640 = distinct !DISubprogram(name: "set_program_name", scope: !130, file: !130, line: 39, type: !60, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1641)
!1641 = !{!1642, !1643, !1644}
!1642 = !DILocalVariable(name: "argv0", arg: 1, scope: !1640, file: !130, line: 39, type: !62)
!1643 = !DILocalVariable(name: "slash", scope: !1640, file: !130, line: 46, type: !62)
!1644 = !DILocalVariable(name: "base", scope: !1640, file: !130, line: 47, type: !62)
!1645 = !DILocation(line: 39, column: 31, scope: !1640)
!1646 = !DILocation(line: 51, column: 13, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1640, file: !130, line: 51, column: 7)
!1648 = !DILocation(line: 51, column: 7, scope: !1640)
!1649 = !DILocation(line: 55, column: 14, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !130, line: 52, column: 5)
!1651 = !DILocation(line: 54, column: 7, scope: !1650)
!1652 = !DILocation(line: 56, column: 7, scope: !1650)
!1653 = !DILocation(line: 59, column: 11, scope: !1640)
!1654 = !DILocation(line: 46, column: 15, scope: !1640)
!1655 = !DILocation(line: 60, column: 17, scope: !1640)
!1656 = !DILocation(line: 60, column: 33, scope: !1640)
!1657 = !DILocation(line: 60, column: 11, scope: !1640)
!1658 = !DILocation(line: 47, column: 15, scope: !1640)
!1659 = !DILocation(line: 61, column: 12, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1640, file: !130, line: 61, column: 7)
!1661 = !DILocation(line: 61, column: 20, scope: !1660)
!1662 = !DILocation(line: 61, column: 25, scope: !1660)
!1663 = !DILocation(line: 61, column: 42, scope: !1660)
!1664 = !DILocation(line: 61, column: 28, scope: !1660)
!1665 = !DILocation(line: 61, column: 61, scope: !1660)
!1666 = !DILocation(line: 61, column: 7, scope: !1640)
!1667 = !DILocation(line: 64, column: 11, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !130, line: 64, column: 11)
!1669 = distinct !DILexicalBlock(scope: !1660, file: !130, line: 62, column: 5)
!1670 = !DILocation(line: 64, column: 36, scope: !1668)
!1671 = !DILocation(line: 64, column: 11, scope: !1669)
!1672 = !DILocation(line: 66, column: 24, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !130, line: 65, column: 9)
!1674 = !DILocation(line: 70, column: 41, scope: !1673)
!1675 = !DILocation(line: 72, column: 9, scope: !1673)
!1676 = !DILocation(line: 84, column: 16, scope: !1640)
!1677 = !DILocation(line: 90, column: 27, scope: !1640)
!1678 = !DILocation(line: 92, column: 1, scope: !1640)
!1679 = distinct !DISubprogram(name: "clone_quoting_options", scope: !161, file: !161, line: 114, type: !1680, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1683)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!1682, !1682}
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!1683 = !{!1684, !1685, !1686}
!1684 = !DILocalVariable(name: "o", arg: 1, scope: !1679, file: !161, line: 114, type: !1682)
!1685 = !DILocalVariable(name: "e", scope: !1679, file: !161, line: 116, type: !87)
!1686 = !DILocalVariable(name: "p", scope: !1679, file: !161, line: 117, type: !1682)
!1687 = !DILocation(line: 114, column: 48, scope: !1679)
!1688 = !DILocation(line: 116, column: 11, scope: !1679)
!1689 = !DILocation(line: 116, column: 7, scope: !1679)
!1690 = !DILocation(line: 117, column: 40, scope: !1679)
!1691 = !DILocation(line: 117, column: 31, scope: !1679)
!1692 = !DILocation(line: 117, column: 27, scope: !1679)
!1693 = !DILocation(line: 119, column: 9, scope: !1679)
!1694 = !DILocation(line: 120, column: 3, scope: !1679)
!1695 = distinct !DISubprogram(name: "get_quoting_style", scope: !161, file: !161, line: 125, type: !1696, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1700)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!10, !1698}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!1700 = !{!1701}
!1701 = !DILocalVariable(name: "o", arg: 1, scope: !1695, file: !161, line: 125, type: !1698)
!1702 = !DILocation(line: 125, column: 50, scope: !1695)
!1703 = !DILocation(line: 127, column: 11, scope: !1695)
!1704 = !DILocation(line: 127, column: 46, scope: !1695)
!1705 = !{!1706, !679, i64 0}
!1706 = !{!"quoting_options", !679, i64 0, !882, i64 4, !679, i64 8, !678, i64 40, !678, i64 48}
!1707 = !DILocation(line: 127, column: 3, scope: !1695)
!1708 = distinct !DISubprogram(name: "set_quoting_style", scope: !161, file: !161, line: 133, type: !1709, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1711)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{null, !1682, !10}
!1711 = !{!1712, !1713}
!1712 = !DILocalVariable(name: "o", arg: 1, scope: !1708, file: !161, line: 133, type: !1682)
!1713 = !DILocalVariable(name: "s", arg: 2, scope: !1708, file: !161, line: 133, type: !10)
!1714 = !DILocation(line: 133, column: 44, scope: !1708)
!1715 = !DILocation(line: 133, column: 66, scope: !1708)
!1716 = !DILocation(line: 135, column: 4, scope: !1708)
!1717 = !DILocation(line: 135, column: 39, scope: !1708)
!1718 = !DILocation(line: 135, column: 45, scope: !1708)
!1719 = !DILocation(line: 136, column: 1, scope: !1708)
!1720 = distinct !DISubprogram(name: "set_char_quoting", scope: !161, file: !161, line: 144, type: !1721, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1723)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!87, !1682, !35, !87}
!1723 = !{!1724, !1725, !1726, !1727, !1728, !1730, !1731}
!1724 = !DILocalVariable(name: "o", arg: 1, scope: !1720, file: !161, line: 144, type: !1682)
!1725 = !DILocalVariable(name: "c", arg: 2, scope: !1720, file: !161, line: 144, type: !35)
!1726 = !DILocalVariable(name: "i", arg: 3, scope: !1720, file: !161, line: 144, type: !87)
!1727 = !DILocalVariable(name: "uc", scope: !1720, file: !161, line: 146, type: !95)
!1728 = !DILocalVariable(name: "p", scope: !1720, file: !161, line: 147, type: !1729)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1730 = !DILocalVariable(name: "shift", scope: !1720, file: !161, line: 149, type: !87)
!1731 = !DILocalVariable(name: "r", scope: !1720, file: !161, line: 150, type: !87)
!1732 = !DILocation(line: 144, column: 43, scope: !1720)
!1733 = !DILocation(line: 144, column: 51, scope: !1720)
!1734 = !DILocation(line: 144, column: 58, scope: !1720)
!1735 = !DILocation(line: 146, column: 17, scope: !1720)
!1736 = !DILocation(line: 148, column: 6, scope: !1720)
!1737 = !DILocation(line: 148, column: 62, scope: !1720)
!1738 = !DILocation(line: 148, column: 57, scope: !1720)
!1739 = !DILocation(line: 147, column: 17, scope: !1720)
!1740 = !DILocation(line: 149, column: 18, scope: !1720)
!1741 = !DILocation(line: 149, column: 15, scope: !1720)
!1742 = !DILocation(line: 149, column: 7, scope: !1720)
!1743 = !DILocation(line: 150, column: 12, scope: !1720)
!1744 = !DILocation(line: 150, column: 15, scope: !1720)
!1745 = !DILocation(line: 150, column: 25, scope: !1720)
!1746 = !DILocation(line: 150, column: 7, scope: !1720)
!1747 = !DILocation(line: 151, column: 13, scope: !1720)
!1748 = !DILocation(line: 151, column: 18, scope: !1720)
!1749 = !DILocation(line: 151, column: 23, scope: !1720)
!1750 = !DILocation(line: 151, column: 6, scope: !1720)
!1751 = !DILocation(line: 152, column: 3, scope: !1720)
!1752 = distinct !DISubprogram(name: "set_quoting_flags", scope: !161, file: !161, line: 160, type: !1753, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1755)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!87, !1682, !87}
!1755 = !{!1756, !1757, !1758}
!1756 = !DILocalVariable(name: "o", arg: 1, scope: !1752, file: !161, line: 160, type: !1682)
!1757 = !DILocalVariable(name: "i", arg: 2, scope: !1752, file: !161, line: 160, type: !87)
!1758 = !DILocalVariable(name: "r", scope: !1752, file: !161, line: 162, type: !87)
!1759 = !DILocation(line: 160, column: 44, scope: !1752)
!1760 = !DILocation(line: 160, column: 51, scope: !1752)
!1761 = !DILocation(line: 163, column: 8, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1752, file: !161, line: 163, column: 7)
!1763 = !DILocation(line: 163, column: 7, scope: !1752)
!1764 = !DILocation(line: 165, column: 10, scope: !1752)
!1765 = !{!1706, !882, i64 4}
!1766 = !DILocation(line: 162, column: 7, scope: !1752)
!1767 = !DILocation(line: 166, column: 12, scope: !1752)
!1768 = !DILocation(line: 167, column: 3, scope: !1752)
!1769 = distinct !DISubprogram(name: "set_custom_quoting", scope: !161, file: !161, line: 171, type: !1770, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !1682, !62, !62}
!1772 = !{!1773, !1774, !1775}
!1773 = !DILocalVariable(name: "o", arg: 1, scope: !1769, file: !161, line: 171, type: !1682)
!1774 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1769, file: !161, line: 172, type: !62)
!1775 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1769, file: !161, line: 172, type: !62)
!1776 = !DILocation(line: 171, column: 45, scope: !1769)
!1777 = !DILocation(line: 172, column: 33, scope: !1769)
!1778 = !DILocation(line: 172, column: 57, scope: !1769)
!1779 = !DILocation(line: 174, column: 8, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1769, file: !161, line: 174, column: 7)
!1781 = !DILocation(line: 174, column: 7, scope: !1769)
!1782 = !DILocation(line: 176, column: 6, scope: !1769)
!1783 = !DILocation(line: 176, column: 12, scope: !1769)
!1784 = !DILocation(line: 177, column: 8, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1769, file: !161, line: 177, column: 7)
!1786 = !DILocation(line: 177, column: 23, scope: !1785)
!1787 = !DILocation(line: 177, column: 19, scope: !1785)
!1788 = !DILocation(line: 178, column: 5, scope: !1785)
!1789 = !DILocation(line: 179, column: 6, scope: !1769)
!1790 = !DILocation(line: 179, column: 17, scope: !1769)
!1791 = !{!1706, !678, i64 40}
!1792 = !DILocation(line: 180, column: 6, scope: !1769)
!1793 = !DILocation(line: 180, column: 18, scope: !1769)
!1794 = !{!1706, !678, i64 48}
!1795 = !DILocation(line: 181, column: 1, scope: !1769)
!1796 = distinct !DISubprogram(name: "quotearg_buffer", scope: !161, file: !161, line: 776, type: !1797, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!98, !34, !98, !62, !98, !1698}
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807}
!1800 = !DILocalVariable(name: "buffer", arg: 1, scope: !1796, file: !161, line: 776, type: !34)
!1801 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1796, file: !161, line: 776, type: !98)
!1802 = !DILocalVariable(name: "arg", arg: 3, scope: !1796, file: !161, line: 777, type: !62)
!1803 = !DILocalVariable(name: "argsize", arg: 4, scope: !1796, file: !161, line: 777, type: !98)
!1804 = !DILocalVariable(name: "o", arg: 5, scope: !1796, file: !161, line: 778, type: !1698)
!1805 = !DILocalVariable(name: "p", scope: !1796, file: !161, line: 780, type: !1698)
!1806 = !DILocalVariable(name: "e", scope: !1796, file: !161, line: 781, type: !87)
!1807 = !DILocalVariable(name: "r", scope: !1796, file: !161, line: 782, type: !98)
!1808 = !DILocation(line: 776, column: 24, scope: !1796)
!1809 = !DILocation(line: 776, column: 39, scope: !1796)
!1810 = !DILocation(line: 777, column: 30, scope: !1796)
!1811 = !DILocation(line: 777, column: 42, scope: !1796)
!1812 = !DILocation(line: 778, column: 48, scope: !1796)
!1813 = !DILocation(line: 780, column: 37, scope: !1796)
!1814 = !DILocation(line: 780, column: 33, scope: !1796)
!1815 = !DILocation(line: 781, column: 11, scope: !1796)
!1816 = !DILocation(line: 781, column: 7, scope: !1796)
!1817 = !DILocation(line: 783, column: 43, scope: !1796)
!1818 = !DILocation(line: 783, column: 53, scope: !1796)
!1819 = !DILocation(line: 783, column: 60, scope: !1796)
!1820 = !DILocation(line: 784, column: 43, scope: !1796)
!1821 = !DILocation(line: 784, column: 58, scope: !1796)
!1822 = !DILocation(line: 782, column: 14, scope: !1796)
!1823 = !DILocation(line: 782, column: 10, scope: !1796)
!1824 = !DILocation(line: 785, column: 9, scope: !1796)
!1825 = !DILocation(line: 786, column: 3, scope: !1796)
!1826 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !161, file: !161, line: 248, type: !1827, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1831)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!98, !34, !98, !62, !98, !10, !87, !1829, !62, !62}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1856, !1857, !1858, !1859, !1860, !1863, !1864, !1881, !1884, !1885, !1892}
!1832 = !DILocalVariable(name: "buffer", arg: 1, scope: !1826, file: !161, line: 248, type: !34)
!1833 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1826, file: !161, line: 248, type: !98)
!1834 = !DILocalVariable(name: "arg", arg: 3, scope: !1826, file: !161, line: 249, type: !62)
!1835 = !DILocalVariable(name: "argsize", arg: 4, scope: !1826, file: !161, line: 249, type: !98)
!1836 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1826, file: !161, line: 250, type: !10)
!1837 = !DILocalVariable(name: "flags", arg: 6, scope: !1826, file: !161, line: 250, type: !87)
!1838 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1826, file: !161, line: 251, type: !1829)
!1839 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1826, file: !161, line: 252, type: !62)
!1840 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1826, file: !161, line: 253, type: !62)
!1841 = !DILocalVariable(name: "i", scope: !1826, file: !161, line: 255, type: !98)
!1842 = !DILocalVariable(name: "len", scope: !1826, file: !161, line: 256, type: !98)
!1843 = !DILocalVariable(name: "orig_buffersize", scope: !1826, file: !161, line: 257, type: !98)
!1844 = !DILocalVariable(name: "quote_string", scope: !1826, file: !161, line: 258, type: !62)
!1845 = !DILocalVariable(name: "quote_string_len", scope: !1826, file: !161, line: 259, type: !98)
!1846 = !DILocalVariable(name: "backslash_escapes", scope: !1826, file: !161, line: 260, type: !40)
!1847 = !DILocalVariable(name: "unibyte_locale", scope: !1826, file: !161, line: 261, type: !40)
!1848 = !DILocalVariable(name: "elide_outer_quotes", scope: !1826, file: !161, line: 262, type: !40)
!1849 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1826, file: !161, line: 263, type: !40)
!1850 = !DILocalVariable(name: "encountered_single_quote", scope: !1826, file: !161, line: 264, type: !40)
!1851 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1826, file: !161, line: 265, type: !40)
!1852 = !DILocalVariable(name: "c", scope: !1853, file: !161, line: 394, type: !95)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !161, line: 393, column: 5)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !161, line: 392, column: 3)
!1855 = distinct !DILexicalBlock(scope: !1826, file: !161, line: 392, column: 3)
!1856 = !DILocalVariable(name: "esc", scope: !1853, file: !161, line: 395, type: !95)
!1857 = !DILocalVariable(name: "is_right_quote", scope: !1853, file: !161, line: 396, type: !40)
!1858 = !DILocalVariable(name: "escaping", scope: !1853, file: !161, line: 397, type: !40)
!1859 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1853, file: !161, line: 398, type: !40)
!1860 = !DILocalVariable(name: "m", scope: !1861, file: !161, line: 602, type: !98)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !161, line: 600, column: 11)
!1862 = distinct !DILexicalBlock(scope: !1853, file: !161, line: 418, column: 9)
!1863 = !DILocalVariable(name: "printable", scope: !1861, file: !161, line: 604, type: !40)
!1864 = !DILocalVariable(name: "mbstate", scope: !1865, file: !161, line: 613, type: !1867)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !161, line: 612, column: 15)
!1866 = distinct !DILexicalBlock(scope: !1861, file: !161, line: 606, column: 17)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1868, line: 6, baseType: !1869)
!1868 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1870, line: 21, baseType: !1871)
!1870 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1870, line: 13, size: 64, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1871, file: !1870, line: 15, baseType: !87, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1871, file: !1870, line: 20, baseType: !1875, size: 32, offset: 32)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !1870, line: 16, size: 32, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1875, file: !1870, line: 18, baseType: !174, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1875, file: !1870, line: 19, baseType: !1879, size: 32)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !1880)
!1880 = !{!737}
!1881 = !DILocalVariable(name: "w", scope: !1882, file: !161, line: 623, type: !1883)
!1882 = distinct !DILexicalBlock(scope: !1865, file: !161, line: 622, column: 19)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !99, line: 90, baseType: !87)
!1884 = !DILocalVariable(name: "bytes", scope: !1882, file: !161, line: 624, type: !98)
!1885 = !DILocalVariable(name: "j", scope: !1886, file: !161, line: 649, type: !98)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !161, line: 648, column: 27)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !161, line: 646, column: 29)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !161, line: 641, column: 23)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !161, line: 633, column: 30)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !161, line: 628, column: 30)
!1891 = distinct !DILexicalBlock(scope: !1882, file: !161, line: 626, column: 25)
!1892 = !DILocalVariable(name: "ilim", scope: !1893, file: !161, line: 676, type: !98)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !161, line: 673, column: 15)
!1894 = distinct !DILexicalBlock(scope: !1861, file: !161, line: 672, column: 17)
!1895 = !DILocation(line: 248, column: 33, scope: !1826)
!1896 = !DILocation(line: 248, column: 48, scope: !1826)
!1897 = !DILocation(line: 249, column: 39, scope: !1826)
!1898 = !DILocation(line: 249, column: 51, scope: !1826)
!1899 = !DILocation(line: 250, column: 46, scope: !1826)
!1900 = !DILocation(line: 250, column: 65, scope: !1826)
!1901 = !DILocation(line: 251, column: 47, scope: !1826)
!1902 = !DILocation(line: 252, column: 39, scope: !1826)
!1903 = !DILocation(line: 253, column: 39, scope: !1826)
!1904 = !DILocation(line: 256, column: 10, scope: !1826)
!1905 = !DILocation(line: 257, column: 10, scope: !1826)
!1906 = !DILocation(line: 258, column: 15, scope: !1826)
!1907 = !DILocation(line: 259, column: 10, scope: !1826)
!1908 = !DILocation(line: 260, column: 8, scope: !1826)
!1909 = !DILocation(line: 261, column: 25, scope: !1826)
!1910 = !DILocation(line: 261, column: 36, scope: !1826)
!1911 = !DILocation(line: 262, column: 8, scope: !1826)
!1912 = !DILocation(line: 263, column: 8, scope: !1826)
!1913 = !DILocation(line: 264, column: 8, scope: !1826)
!1914 = !DILocation(line: 265, column: 8, scope: !1826)
!1915 = !DILocation(line: 265, column: 3, scope: !1826)
!1916 = !DILocation(line: 308, column: 3, scope: !1826)
!1917 = !DILocation(line: 315, column: 11, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1826, file: !161, line: 309, column: 5)
!1919 = !DILocation(line: 315, column: 12, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1918, file: !161, line: 315, column: 11)
!1921 = !DILocation(line: 316, column: 9, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !161, line: 316, column: 9)
!1923 = distinct !DILexicalBlock(scope: !1920, file: !161, line: 316, column: 9)
!1924 = !DILocation(line: 316, column: 9, scope: !1923)
!1925 = !DILocation(line: 354, column: 26, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !161, line: 332, column: 11)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !161, line: 331, column: 13)
!1928 = distinct !DILexicalBlock(scope: !1918, file: !161, line: 330, column: 7)
!1929 = !DILocation(line: 355, column: 27, scope: !1926)
!1930 = !DILocation(line: 356, column: 11, scope: !1926)
!1931 = !DILocation(line: 357, column: 14, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !161, line: 357, column: 13)
!1933 = !DILocation(line: 357, column: 13, scope: !1928)
!1934 = !DILocation(line: 358, column: 43, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !161, line: 358, column: 11)
!1936 = distinct !DILexicalBlock(scope: !1932, file: !161, line: 358, column: 11)
!1937 = !DILocation(line: 358, column: 11, scope: !1936)
!1938 = !DILocation(line: 359, column: 13, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !161, line: 359, column: 13)
!1940 = distinct !DILexicalBlock(scope: !1935, file: !161, line: 359, column: 13)
!1941 = !DILocation(line: 359, column: 13, scope: !1940)
!1942 = !DILocation(line: 358, column: 70, scope: !1935)
!1943 = distinct !{!1943, !1937, !1944}
!1944 = !DILocation(line: 359, column: 13, scope: !1936)
!1945 = !DILocation(line: 362, column: 28, scope: !1928)
!1946 = !DILocation(line: 364, column: 7, scope: !1918)
!1947 = !DILocation(line: 367, column: 7, scope: !1918)
!1948 = !DILocation(line: 370, column: 7, scope: !1918)
!1949 = !DILocation(line: 373, column: 12, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1918, file: !161, line: 373, column: 11)
!1951 = !DILocation(line: 373, column: 11, scope: !1918)
!1952 = !DILocation(line: 378, column: 12, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1918, file: !161, line: 378, column: 11)
!1954 = !DILocation(line: 378, column: 11, scope: !1918)
!1955 = !DILocation(line: 379, column: 9, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !161, line: 379, column: 9)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !161, line: 379, column: 9)
!1958 = !DILocation(line: 379, column: 9, scope: !1957)
!1959 = !DILocation(line: 386, column: 7, scope: !1918)
!1960 = !DILocation(line: 389, column: 7, scope: !1918)
!1961 = !DILocation(line: 255, column: 10, scope: !1826)
!1962 = !DILocation(line: 392, column: 8, scope: !1855)
!1963 = !DILocation(line: 392, column: 27, scope: !1854)
!1964 = !DILocation(line: 392, column: 19, scope: !1854)
!1965 = !DILocation(line: 392, column: 60, scope: !1854)
!1966 = !DILocation(line: 392, column: 3, scope: !1855)
!1967 = !DILocation(line: 392, column: 41, scope: !1854)
!1968 = !DILocation(line: 392, column: 48, scope: !1854)
!1969 = !DILocation(line: 396, column: 12, scope: !1853)
!1970 = !DILocation(line: 397, column: 12, scope: !1853)
!1971 = !DILocation(line: 398, column: 12, scope: !1853)
!1972 = !DILocation(line: 401, column: 11, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1853, file: !161, line: 400, column: 11)
!1974 = !DILocation(line: 403, column: 17, scope: !1973)
!1975 = !DILocation(line: 404, column: 39, scope: !1973)
!1976 = !DILocation(line: 408, column: 32, scope: !1973)
!1977 = !DILocation(line: 404, column: 19, scope: !1973)
!1978 = !DILocation(line: 404, column: 15, scope: !1973)
!1979 = !DILocation(line: 409, column: 11, scope: !1973)
!1980 = !DILocation(line: 409, column: 26, scope: !1973)
!1981 = !DILocation(line: 409, column: 14, scope: !1973)
!1982 = !DILocation(line: 409, column: 63, scope: !1973)
!1983 = !DILocation(line: 400, column: 11, scope: !1853)
!1984 = !DILocation(line: 416, column: 11, scope: !1853)
!1985 = !DILocation(line: 394, column: 21, scope: !1853)
!1986 = !DILocation(line: 417, column: 7, scope: !1853)
!1987 = !DILocation(line: 420, column: 15, scope: !1862)
!1988 = !DILocation(line: 422, column: 15, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !161, line: 422, column: 15)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !161, line: 421, column: 13)
!1991 = distinct !DILexicalBlock(scope: !1862, file: !161, line: 420, column: 15)
!1992 = !DILocation(line: 422, column: 15, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !161, line: 422, column: 15)
!1994 = !DILocation(line: 422, column: 15, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !161, line: 422, column: 15)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !161, line: 422, column: 15)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !161, line: 422, column: 15)
!1998 = !DILocation(line: 422, column: 15, scope: !1996)
!1999 = !DILocation(line: 422, column: 15, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !161, line: 422, column: 15)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !161, line: 422, column: 15)
!2002 = !DILocation(line: 422, column: 15, scope: !2001)
!2003 = !DILocation(line: 422, column: 15, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !161, line: 422, column: 15)
!2005 = distinct !DILexicalBlock(scope: !1997, file: !161, line: 422, column: 15)
!2006 = !DILocation(line: 422, column: 15, scope: !2005)
!2007 = !DILocation(line: 422, column: 15, scope: !1997)
!2008 = !DILocation(line: 422, column: 15, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !161, line: 422, column: 15)
!2010 = distinct !DILexicalBlock(scope: !1989, file: !161, line: 422, column: 15)
!2011 = !DILocation(line: 422, column: 15, scope: !2010)
!2012 = !DILocation(line: 430, column: 19, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1990, file: !161, line: 429, column: 19)
!2014 = !DILocation(line: 430, column: 24, scope: !2013)
!2015 = !DILocation(line: 430, column: 28, scope: !2013)
!2016 = !DILocation(line: 430, column: 38, scope: !2013)
!2017 = !DILocation(line: 430, column: 48, scope: !2013)
!2018 = !DILocation(line: 430, column: 59, scope: !2013)
!2019 = !DILocation(line: 432, column: 19, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !161, line: 432, column: 19)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !161, line: 432, column: 19)
!2022 = distinct !DILexicalBlock(scope: !2013, file: !161, line: 431, column: 17)
!2023 = !DILocation(line: 432, column: 19, scope: !2021)
!2024 = !DILocation(line: 433, column: 19, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !161, line: 433, column: 19)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !161, line: 433, column: 19)
!2027 = !DILocation(line: 433, column: 19, scope: !2026)
!2028 = !DILocation(line: 434, column: 17, scope: !2022)
!2029 = !DILocation(line: 441, column: 20, scope: !1991)
!2030 = !DILocation(line: 446, column: 11, scope: !1862)
!2031 = !DILocation(line: 449, column: 19, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1862, file: !161, line: 447, column: 13)
!2033 = !DILocation(line: 455, column: 19, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2032, file: !161, line: 454, column: 19)
!2035 = !DILocation(line: 455, column: 24, scope: !2034)
!2036 = !DILocation(line: 455, column: 28, scope: !2034)
!2037 = !DILocation(line: 455, column: 38, scope: !2034)
!2038 = !DILocation(line: 455, column: 47, scope: !2034)
!2039 = !DILocation(line: 455, column: 41, scope: !2034)
!2040 = !DILocation(line: 455, column: 52, scope: !2034)
!2041 = !DILocation(line: 454, column: 19, scope: !2032)
!2042 = !DILocation(line: 456, column: 25, scope: !2034)
!2043 = !DILocation(line: 456, column: 17, scope: !2034)
!2044 = !DILocation(line: 463, column: 25, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2034, file: !161, line: 457, column: 19)
!2046 = !DILocation(line: 467, column: 21, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !161, line: 467, column: 21)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !161, line: 467, column: 21)
!2049 = !DILocation(line: 467, column: 21, scope: !2048)
!2050 = !DILocation(line: 468, column: 21, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !161, line: 468, column: 21)
!2052 = distinct !DILexicalBlock(scope: !2045, file: !161, line: 468, column: 21)
!2053 = !DILocation(line: 468, column: 21, scope: !2052)
!2054 = !DILocation(line: 469, column: 21, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !161, line: 469, column: 21)
!2056 = distinct !DILexicalBlock(scope: !2045, file: !161, line: 469, column: 21)
!2057 = !DILocation(line: 469, column: 21, scope: !2056)
!2058 = !DILocation(line: 470, column: 21, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !161, line: 470, column: 21)
!2060 = distinct !DILexicalBlock(scope: !2045, file: !161, line: 470, column: 21)
!2061 = !DILocation(line: 470, column: 21, scope: !2060)
!2062 = !DILocation(line: 471, column: 21, scope: !2045)
!2063 = !DILocation(line: 395, column: 21, scope: !1853)
!2064 = !DILocation(line: 484, column: 31, scope: !1862)
!2065 = !DILocation(line: 485, column: 31, scope: !1862)
!2066 = !DILocation(line: 487, column: 31, scope: !1862)
!2067 = !DILocation(line: 488, column: 31, scope: !1862)
!2068 = !DILocation(line: 489, column: 31, scope: !1862)
!2069 = !DILocation(line: 492, column: 15, scope: !1862)
!2070 = !DILocation(line: 494, column: 19, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !161, line: 493, column: 13)
!2072 = distinct !DILexicalBlock(scope: !1862, file: !161, line: 492, column: 15)
!2073 = !DILocation(line: 501, column: 33, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1862, file: !161, line: 501, column: 15)
!2075 = !DILocation(line: 506, column: 15, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1862, file: !161, line: 505, column: 15)
!2077 = !DILocation(line: 510, column: 15, scope: !1862)
!2078 = !DILocation(line: 518, column: 26, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1862, file: !161, line: 518, column: 15)
!2080 = !DILocation(line: 518, column: 15, scope: !1862)
!2081 = !DILocation(line: 518, column: 40, scope: !2079)
!2082 = !DILocation(line: 518, column: 47, scope: !2079)
!2083 = !DILocation(line: 522, column: 17, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1862, file: !161, line: 522, column: 15)
!2085 = !DILocation(line: 518, column: 18, scope: !2079)
!2086 = !DILocation(line: 518, column: 65, scope: !2079)
!2087 = !DILocation(line: 522, column: 15, scope: !1862)
!2088 = !DILocation(line: 526, column: 11, scope: !1862)
!2089 = !DILocation(line: 541, column: 15, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1862, file: !161, line: 540, column: 15)
!2091 = !DILocation(line: 548, column: 15, scope: !1862)
!2092 = !DILocation(line: 550, column: 19, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !161, line: 549, column: 13)
!2094 = distinct !DILexicalBlock(scope: !1862, file: !161, line: 548, column: 15)
!2095 = !DILocation(line: 553, column: 19, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !161, line: 553, column: 19)
!2097 = !DILocation(line: 553, column: 35, scope: !2096)
!2098 = !DILocation(line: 553, column: 30, scope: !2096)
!2099 = !DILocation(line: 562, column: 15, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !161, line: 562, column: 15)
!2101 = distinct !DILexicalBlock(scope: !2093, file: !161, line: 562, column: 15)
!2102 = !DILocation(line: 562, column: 15, scope: !2101)
!2103 = !DILocation(line: 563, column: 15, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !161, line: 563, column: 15)
!2105 = distinct !DILexicalBlock(scope: !2093, file: !161, line: 563, column: 15)
!2106 = !DILocation(line: 563, column: 15, scope: !2105)
!2107 = !DILocation(line: 564, column: 15, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !161, line: 564, column: 15)
!2109 = distinct !DILexicalBlock(scope: !2093, file: !161, line: 564, column: 15)
!2110 = !DILocation(line: 564, column: 15, scope: !2109)
!2111 = !DILocation(line: 566, column: 13, scope: !2093)
!2112 = !DILocation(line: 606, column: 17, scope: !1861)
!2113 = !DILocation(line: 602, column: 20, scope: !1861)
!2114 = !DILocation(line: 609, column: 29, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1866, file: !161, line: 607, column: 15)
!2116 = !{!950, !950, i64 0}
!2117 = !DILocation(line: 609, column: 27, scope: !2115)
!2118 = !DILocation(line: 604, column: 18, scope: !1861)
!2119 = !DILocation(line: 610, column: 15, scope: !2115)
!2120 = !DILocation(line: 613, column: 17, scope: !1865)
!2121 = !DILocation(line: 614, column: 17, scope: !1865)
!2122 = !DILocation(line: 618, column: 29, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1865, file: !161, line: 618, column: 21)
!2124 = !DILocation(line: 618, column: 21, scope: !1865)
!2125 = !DILocation(line: 619, column: 29, scope: !2123)
!2126 = !DILocation(line: 619, column: 19, scope: !2123)
!2127 = !DILocation(line: 621, column: 17, scope: !1865)
!2128 = distinct !{!2128, !2127, !2129}
!2129 = !DILocation(line: 667, column: 44, scope: !1865)
!2130 = !DILocation(line: 623, column: 21, scope: !1882)
!2131 = !DILocation(line: 624, column: 56, scope: !1882)
!2132 = !DILocation(line: 624, column: 50, scope: !1882)
!2133 = !DILocation(line: 625, column: 53, scope: !1882)
!2134 = !DILocation(line: 613, column: 27, scope: !1865)
!2135 = !DILocation(line: 623, column: 29, scope: !1882)
!2136 = !DILocation(line: 624, column: 36, scope: !1882)
!2137 = !DILocation(line: 624, column: 28, scope: !1882)
!2138 = !DILocation(line: 626, column: 25, scope: !1882)
!2139 = !DILocation(line: 636, column: 38, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1889, file: !161, line: 634, column: 23)
!2141 = !DILocation(line: 636, column: 48, scope: !2140)
!2142 = !DILocation(line: 636, column: 51, scope: !2140)
!2143 = !DILocation(line: 636, column: 25, scope: !2140)
!2144 = !DILocation(line: 637, column: 28, scope: !2140)
!2145 = !DILocation(line: 636, column: 34, scope: !2140)
!2146 = distinct !{!2146, !2143, !2144}
!2147 = !DILocation(line: 650, column: 43, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !161, line: 650, column: 29)
!2149 = distinct !DILexicalBlock(scope: !1886, file: !161, line: 650, column: 29)
!2150 = !DILocation(line: 647, column: 29, scope: !1887)
!2151 = !DILocation(line: 649, column: 36, scope: !1886)
!2152 = !DILocation(line: 651, column: 49, scope: !2148)
!2153 = !DILocation(line: 651, column: 39, scope: !2148)
!2154 = !DILocation(line: 651, column: 31, scope: !2148)
!2155 = !DILocation(line: 650, column: 53, scope: !2148)
!2156 = !DILocation(line: 650, column: 29, scope: !2149)
!2157 = distinct !{!2157, !2156, !2158}
!2158 = !DILocation(line: 659, column: 33, scope: !2149)
!2159 = !DILocation(line: 666, column: 19, scope: !1865)
!2160 = !DILocation(line: 662, column: 41, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1888, file: !161, line: 662, column: 29)
!2162 = !DILocation(line: 662, column: 31, scope: !2161)
!2163 = !DILocation(line: 662, column: 29, scope: !1888)
!2164 = !DILocation(line: 664, column: 27, scope: !1888)
!2165 = !DILocation(line: 667, column: 26, scope: !1865)
!2166 = !DILocation(line: 667, column: 24, scope: !1865)
!2167 = !DILocation(line: 666, column: 19, scope: !1882)
!2168 = !DILocation(line: 668, column: 15, scope: !1866)
!2169 = !DILocation(line: 670, column: 40, scope: !1861)
!2170 = !DILocation(line: 672, column: 19, scope: !1894)
!2171 = !DILocation(line: 672, column: 45, scope: !1894)
!2172 = !DILocation(line: 672, column: 23, scope: !1894)
!2173 = !DILocation(line: 676, column: 33, scope: !1893)
!2174 = !DILocation(line: 676, column: 24, scope: !1893)
!2175 = !DILocation(line: 678, column: 17, scope: !1893)
!2176 = !DILocation(line: 680, column: 43, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !161, line: 680, column: 25)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !161, line: 679, column: 19)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !161, line: 678, column: 17)
!2180 = distinct !DILexicalBlock(scope: !1893, file: !161, line: 678, column: 17)
!2181 = !DILocation(line: 682, column: 25, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !161, line: 682, column: 25)
!2183 = distinct !DILexicalBlock(scope: !2177, file: !161, line: 681, column: 23)
!2184 = !DILocation(line: 682, column: 25, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2182, file: !161, line: 682, column: 25)
!2186 = !DILocation(line: 682, column: 25, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !161, line: 682, column: 25)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !161, line: 682, column: 25)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !161, line: 682, column: 25)
!2190 = !DILocation(line: 682, column: 25, scope: !2188)
!2191 = !DILocation(line: 682, column: 25, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !161, line: 682, column: 25)
!2193 = distinct !DILexicalBlock(scope: !2189, file: !161, line: 682, column: 25)
!2194 = !DILocation(line: 682, column: 25, scope: !2193)
!2195 = !DILocation(line: 682, column: 25, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !161, line: 682, column: 25)
!2197 = distinct !DILexicalBlock(scope: !2189, file: !161, line: 682, column: 25)
!2198 = !DILocation(line: 682, column: 25, scope: !2197)
!2199 = !DILocation(line: 682, column: 25, scope: !2189)
!2200 = !DILocation(line: 682, column: 25, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !161, line: 682, column: 25)
!2202 = distinct !DILexicalBlock(scope: !2182, file: !161, line: 682, column: 25)
!2203 = !DILocation(line: 682, column: 25, scope: !2202)
!2204 = !DILocation(line: 683, column: 25, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !161, line: 683, column: 25)
!2206 = distinct !DILexicalBlock(scope: !2183, file: !161, line: 683, column: 25)
!2207 = !DILocation(line: 683, column: 25, scope: !2206)
!2208 = !DILocation(line: 684, column: 25, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !161, line: 684, column: 25)
!2210 = distinct !DILexicalBlock(scope: !2183, file: !161, line: 684, column: 25)
!2211 = !DILocation(line: 684, column: 25, scope: !2210)
!2212 = !DILocation(line: 685, column: 38, scope: !2183)
!2213 = !DILocation(line: 685, column: 33, scope: !2183)
!2214 = !DILocation(line: 686, column: 23, scope: !2183)
!2215 = !DILocation(line: 687, column: 30, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2177, file: !161, line: 687, column: 30)
!2217 = !DILocation(line: 687, column: 30, scope: !2177)
!2218 = !DILocation(line: 689, column: 25, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !161, line: 689, column: 25)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !161, line: 689, column: 25)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !161, line: 688, column: 23)
!2222 = !DILocation(line: 689, column: 25, scope: !2220)
!2223 = !DILocation(line: 691, column: 23, scope: !2221)
!2224 = !DILocation(line: 692, column: 35, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2178, file: !161, line: 692, column: 25)
!2226 = !DILocation(line: 692, column: 30, scope: !2225)
!2227 = !DILocation(line: 692, column: 25, scope: !2178)
!2228 = !DILocation(line: 694, column: 21, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !161, line: 694, column: 21)
!2230 = distinct !DILexicalBlock(scope: !2178, file: !161, line: 694, column: 21)
!2231 = !DILocation(line: 694, column: 21, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !161, line: 694, column: 21)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !161, line: 694, column: 21)
!2234 = distinct !DILexicalBlock(scope: !2229, file: !161, line: 694, column: 21)
!2235 = !DILocation(line: 694, column: 21, scope: !2233)
!2236 = !DILocation(line: 694, column: 21, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !161, line: 694, column: 21)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !161, line: 694, column: 21)
!2239 = !DILocation(line: 694, column: 21, scope: !2238)
!2240 = !DILocation(line: 694, column: 21, scope: !2234)
!2241 = !DILocation(line: 695, column: 21, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !161, line: 695, column: 21)
!2243 = distinct !DILexicalBlock(scope: !2178, file: !161, line: 695, column: 21)
!2244 = !DILocation(line: 695, column: 21, scope: !2243)
!2245 = !DILocation(line: 696, column: 25, scope: !2178)
!2246 = !DILocation(line: 678, column: 17, scope: !2179)
!2247 = distinct !{!2247, !2248, !2249}
!2248 = !DILocation(line: 678, column: 17, scope: !2180)
!2249 = !DILocation(line: 697, column: 19, scope: !2180)
!2250 = !DILocation(line: 704, column: 34, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !1853, file: !161, line: 704, column: 11)
!2252 = !DILocation(line: 706, column: 14, scope: !2251)
!2253 = !DILocation(line: 707, column: 14, scope: !2251)
!2254 = !DILocation(line: 707, column: 35, scope: !2251)
!2255 = !DILocation(line: 707, column: 17, scope: !2251)
!2256 = !DILocation(line: 707, column: 53, scope: !2251)
!2257 = !DILocation(line: 707, column: 47, scope: !2251)
!2258 = !DILocation(line: 707, column: 65, scope: !2251)
!2259 = !DILocation(line: 708, column: 15, scope: !2251)
!2260 = !DILocation(line: 708, column: 11, scope: !2251)
!2261 = !DILocation(line: 704, column: 11, scope: !1853)
!2262 = !DILocation(line: 712, column: 7, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !1853, file: !161, line: 712, column: 7)
!2264 = !DILocation(line: 712, column: 7, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2263, file: !161, line: 712, column: 7)
!2266 = !DILocation(line: 712, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !161, line: 712, column: 7)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !161, line: 712, column: 7)
!2269 = distinct !DILexicalBlock(scope: !2265, file: !161, line: 712, column: 7)
!2270 = !DILocation(line: 712, column: 7, scope: !2268)
!2271 = !DILocation(line: 712, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !161, line: 712, column: 7)
!2273 = distinct !DILexicalBlock(scope: !2269, file: !161, line: 712, column: 7)
!2274 = !DILocation(line: 712, column: 7, scope: !2273)
!2275 = !DILocation(line: 712, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !161, line: 712, column: 7)
!2277 = distinct !DILexicalBlock(scope: !2269, file: !161, line: 712, column: 7)
!2278 = !DILocation(line: 712, column: 7, scope: !2277)
!2279 = !DILocation(line: 712, column: 7, scope: !2269)
!2280 = !DILocation(line: 712, column: 7, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !161, line: 712, column: 7)
!2282 = distinct !DILexicalBlock(scope: !2263, file: !161, line: 712, column: 7)
!2283 = !DILocation(line: 712, column: 7, scope: !2282)
!2284 = !DILocation(line: 715, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !161, line: 715, column: 7)
!2286 = distinct !DILexicalBlock(scope: !1853, file: !161, line: 715, column: 7)
!2287 = !DILocation(line: 715, column: 7, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !161, line: 715, column: 7)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !161, line: 715, column: 7)
!2290 = distinct !DILexicalBlock(scope: !2285, file: !161, line: 715, column: 7)
!2291 = !DILocation(line: 715, column: 7, scope: !2289)
!2292 = !DILocation(line: 715, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !161, line: 715, column: 7)
!2294 = distinct !DILexicalBlock(scope: !2290, file: !161, line: 715, column: 7)
!2295 = !DILocation(line: 715, column: 7, scope: !2294)
!2296 = !DILocation(line: 715, column: 7, scope: !2290)
!2297 = !DILocation(line: 716, column: 7, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !161, line: 716, column: 7)
!2299 = distinct !DILexicalBlock(scope: !1853, file: !161, line: 716, column: 7)
!2300 = !DILocation(line: 716, column: 7, scope: !2299)
!2301 = !DILocation(line: 718, column: 13, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !1853, file: !161, line: 718, column: 11)
!2303 = !DILocation(line: 718, column: 11, scope: !1853)
!2304 = !DILocation(line: 720, column: 5, scope: !1854)
!2305 = !DILocation(line: 392, column: 75, scope: !1854)
!2306 = !DILocation(line: 392, column: 3, scope: !1854)
!2307 = distinct !{!2307, !1966, !2308}
!2308 = !DILocation(line: 720, column: 5, scope: !1855)
!2309 = !DILocation(line: 722, column: 11, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !1826, file: !161, line: 722, column: 7)
!2311 = !DILocation(line: 722, column: 16, scope: !2310)
!2312 = !DILocation(line: 730, column: 51, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !1826, file: !161, line: 730, column: 7)
!2314 = !DILocation(line: 731, column: 10, scope: !2313)
!2315 = !DILocation(line: 733, column: 11, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !161, line: 733, column: 11)
!2317 = distinct !DILexicalBlock(scope: !2313, file: !161, line: 732, column: 5)
!2318 = !DILocation(line: 733, column: 11, scope: !2317)
!2319 = !DILocation(line: 734, column: 16, scope: !2316)
!2320 = !DILocation(line: 734, column: 9, scope: !2316)
!2321 = !DILocation(line: 738, column: 18, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2316, file: !161, line: 738, column: 16)
!2323 = !DILocation(line: 738, column: 32, scope: !2322)
!2324 = !DILocation(line: 738, column: 29, scope: !2322)
!2325 = !DILocation(line: 747, column: 7, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !1826, file: !161, line: 747, column: 7)
!2327 = !DILocation(line: 747, column: 20, scope: !2326)
!2328 = !DILocation(line: 748, column: 12, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !161, line: 748, column: 5)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !161, line: 748, column: 5)
!2331 = !DILocation(line: 748, column: 5, scope: !2330)
!2332 = !DILocation(line: 749, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !161, line: 749, column: 7)
!2334 = distinct !DILexicalBlock(scope: !2329, file: !161, line: 749, column: 7)
!2335 = !DILocation(line: 749, column: 7, scope: !2334)
!2336 = !DILocation(line: 748, column: 39, scope: !2329)
!2337 = distinct !{!2337, !2331, !2338}
!2338 = !DILocation(line: 749, column: 7, scope: !2330)
!2339 = !DILocation(line: 751, column: 11, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !1826, file: !161, line: 751, column: 7)
!2341 = !DILocation(line: 751, column: 7, scope: !1826)
!2342 = !DILocation(line: 752, column: 5, scope: !2340)
!2343 = !DILocation(line: 752, column: 17, scope: !2340)
!2344 = !DILocation(line: 758, column: 21, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !1826, file: !161, line: 758, column: 7)
!2346 = !DILocation(line: 758, column: 54, scope: !2345)
!2347 = !DILocation(line: 758, column: 51, scope: !2345)
!2348 = !DILocation(line: 762, column: 42, scope: !1826)
!2349 = !DILocation(line: 760, column: 10, scope: !1826)
!2350 = !DILocation(line: 760, column: 3, scope: !1826)
!2351 = !DILocation(line: 764, column: 1, scope: !1826)
!2352 = distinct !DISubprogram(name: "gettext_quote", scope: !161, file: !161, line: 199, type: !2353, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!62, !62, !10}
!2355 = !{!2356, !2357, !2358, !2359}
!2356 = !DILocalVariable(name: "msgid", arg: 1, scope: !2352, file: !161, line: 199, type: !62)
!2357 = !DILocalVariable(name: "s", arg: 2, scope: !2352, file: !161, line: 199, type: !10)
!2358 = !DILocalVariable(name: "translation", scope: !2352, file: !161, line: 201, type: !62)
!2359 = !DILocalVariable(name: "locale_code", scope: !2352, file: !161, line: 202, type: !62)
!2360 = !DILocation(line: 199, column: 28, scope: !2352)
!2361 = !DILocation(line: 199, column: 54, scope: !2352)
!2362 = !DILocation(line: 201, column: 29, scope: !2352)
!2363 = !DILocation(line: 201, column: 15, scope: !2352)
!2364 = !DILocation(line: 204, column: 19, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2352, file: !161, line: 204, column: 7)
!2366 = !DILocation(line: 204, column: 7, scope: !2352)
!2367 = !DILocation(line: 225, column: 17, scope: !2352)
!2368 = !DILocation(line: 202, column: 15, scope: !2352)
!2369 = !DILocalVariable(name: "s2", arg: 2, scope: !2370, file: !2371, line: 160, type: !62)
!2370 = distinct !DISubprogram(name: "strcaseeq0", scope: !2371, file: !2371, line: 160, type: !2372, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2374)
!2371 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!87, !62, !62, !35, !35, !35, !35, !35, !35, !35, !35, !35}
!2374 = !{!2375, !2369, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2375 = !DILocalVariable(name: "s1", arg: 1, scope: !2370, file: !2371, line: 160, type: !62)
!2376 = !DILocalVariable(name: "s20", arg: 3, scope: !2370, file: !2371, line: 160, type: !35)
!2377 = !DILocalVariable(name: "s21", arg: 4, scope: !2370, file: !2371, line: 160, type: !35)
!2378 = !DILocalVariable(name: "s22", arg: 5, scope: !2370, file: !2371, line: 160, type: !35)
!2379 = !DILocalVariable(name: "s23", arg: 6, scope: !2370, file: !2371, line: 160, type: !35)
!2380 = !DILocalVariable(name: "s24", arg: 7, scope: !2370, file: !2371, line: 160, type: !35)
!2381 = !DILocalVariable(name: "s25", arg: 8, scope: !2370, file: !2371, line: 160, type: !35)
!2382 = !DILocalVariable(name: "s26", arg: 9, scope: !2370, file: !2371, line: 160, type: !35)
!2383 = !DILocalVariable(name: "s27", arg: 10, scope: !2370, file: !2371, line: 160, type: !35)
!2384 = !DILocalVariable(name: "s28", arg: 11, scope: !2370, file: !2371, line: 160, type: !35)
!2385 = !DILocation(line: 160, column: 41, scope: !2370, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 226, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2352, file: !161, line: 226, column: 7)
!2388 = !DILocation(line: 160, column: 120, scope: !2370, inlinedAt: !2386)
!2389 = !DILocation(line: 160, column: 130, scope: !2370, inlinedAt: !2386)
!2390 = !DILocation(line: 162, column: 7, scope: !2391, inlinedAt: !2386)
!2391 = distinct !DILexicalBlock(scope: !2370, file: !2371, line: 162, column: 7)
!2392 = !DILocalVariable(name: "s2", arg: 2, scope: !2393, file: !2371, line: 146, type: !62)
!2393 = distinct !DISubprogram(name: "strcaseeq1", scope: !2371, file: !2371, line: 146, type: !2394, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!87, !62, !62, !35, !35, !35, !35, !35, !35, !35, !35}
!2396 = !{!2397, !2392, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405}
!2397 = !DILocalVariable(name: "s1", arg: 1, scope: !2393, file: !2371, line: 146, type: !62)
!2398 = !DILocalVariable(name: "s21", arg: 3, scope: !2393, file: !2371, line: 146, type: !35)
!2399 = !DILocalVariable(name: "s22", arg: 4, scope: !2393, file: !2371, line: 146, type: !35)
!2400 = !DILocalVariable(name: "s23", arg: 5, scope: !2393, file: !2371, line: 146, type: !35)
!2401 = !DILocalVariable(name: "s24", arg: 6, scope: !2393, file: !2371, line: 146, type: !35)
!2402 = !DILocalVariable(name: "s25", arg: 7, scope: !2393, file: !2371, line: 146, type: !35)
!2403 = !DILocalVariable(name: "s26", arg: 8, scope: !2393, file: !2371, line: 146, type: !35)
!2404 = !DILocalVariable(name: "s27", arg: 9, scope: !2393, file: !2371, line: 146, type: !35)
!2405 = !DILocalVariable(name: "s28", arg: 10, scope: !2393, file: !2371, line: 146, type: !35)
!2406 = !DILocation(line: 146, column: 41, scope: !2393, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 167, column: 16, scope: !2408, inlinedAt: !2386)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !2371, line: 164, column: 11)
!2409 = distinct !DILexicalBlock(scope: !2391, file: !2371, line: 163, column: 5)
!2410 = !DILocation(line: 146, column: 110, scope: !2393, inlinedAt: !2407)
!2411 = !DILocation(line: 146, column: 120, scope: !2393, inlinedAt: !2407)
!2412 = !DILocation(line: 148, column: 7, scope: !2413, inlinedAt: !2407)
!2413 = distinct !DILexicalBlock(scope: !2393, file: !2371, line: 148, column: 7)
!2414 = !DILocalVariable(name: "s2", arg: 2, scope: !2415, file: !2371, line: 132, type: !62)
!2415 = distinct !DISubprogram(name: "strcaseeq2", scope: !2371, file: !2371, line: 132, type: !2416, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2418)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!87, !62, !62, !35, !35, !35, !35, !35, !35, !35}
!2418 = !{!2419, !2414, !2420, !2421, !2422, !2423, !2424, !2425, !2426}
!2419 = !DILocalVariable(name: "s1", arg: 1, scope: !2415, file: !2371, line: 132, type: !62)
!2420 = !DILocalVariable(name: "s22", arg: 3, scope: !2415, file: !2371, line: 132, type: !35)
!2421 = !DILocalVariable(name: "s23", arg: 4, scope: !2415, file: !2371, line: 132, type: !35)
!2422 = !DILocalVariable(name: "s24", arg: 5, scope: !2415, file: !2371, line: 132, type: !35)
!2423 = !DILocalVariable(name: "s25", arg: 6, scope: !2415, file: !2371, line: 132, type: !35)
!2424 = !DILocalVariable(name: "s26", arg: 7, scope: !2415, file: !2371, line: 132, type: !35)
!2425 = !DILocalVariable(name: "s27", arg: 8, scope: !2415, file: !2371, line: 132, type: !35)
!2426 = !DILocalVariable(name: "s28", arg: 9, scope: !2415, file: !2371, line: 132, type: !35)
!2427 = !DILocation(line: 132, column: 41, scope: !2415, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 153, column: 16, scope: !2429, inlinedAt: !2407)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !2371, line: 150, column: 11)
!2430 = distinct !DILexicalBlock(scope: !2413, file: !2371, line: 149, column: 5)
!2431 = !DILocation(line: 132, column: 100, scope: !2415, inlinedAt: !2428)
!2432 = !DILocation(line: 132, column: 110, scope: !2415, inlinedAt: !2428)
!2433 = !DILocation(line: 134, column: 7, scope: !2434, inlinedAt: !2428)
!2434 = distinct !DILexicalBlock(scope: !2415, file: !2371, line: 134, column: 7)
!2435 = !DILocalVariable(name: "s2", arg: 2, scope: !2436, file: !2371, line: 118, type: !62)
!2436 = distinct !DISubprogram(name: "strcaseeq3", scope: !2371, file: !2371, line: 118, type: !2437, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!87, !62, !62, !35, !35, !35, !35, !35, !35}
!2439 = !{!2440, !2435, !2441, !2442, !2443, !2444, !2445, !2446}
!2440 = !DILocalVariable(name: "s1", arg: 1, scope: !2436, file: !2371, line: 118, type: !62)
!2441 = !DILocalVariable(name: "s23", arg: 3, scope: !2436, file: !2371, line: 118, type: !35)
!2442 = !DILocalVariable(name: "s24", arg: 4, scope: !2436, file: !2371, line: 118, type: !35)
!2443 = !DILocalVariable(name: "s25", arg: 5, scope: !2436, file: !2371, line: 118, type: !35)
!2444 = !DILocalVariable(name: "s26", arg: 6, scope: !2436, file: !2371, line: 118, type: !35)
!2445 = !DILocalVariable(name: "s27", arg: 7, scope: !2436, file: !2371, line: 118, type: !35)
!2446 = !DILocalVariable(name: "s28", arg: 8, scope: !2436, file: !2371, line: 118, type: !35)
!2447 = !DILocation(line: 118, column: 41, scope: !2436, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 139, column: 16, scope: !2449, inlinedAt: !2428)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !2371, line: 136, column: 11)
!2450 = distinct !DILexicalBlock(scope: !2434, file: !2371, line: 135, column: 5)
!2451 = !DILocation(line: 118, column: 90, scope: !2436, inlinedAt: !2448)
!2452 = !DILocation(line: 118, column: 100, scope: !2436, inlinedAt: !2448)
!2453 = !DILocation(line: 120, column: 7, scope: !2454, inlinedAt: !2448)
!2454 = distinct !DILexicalBlock(scope: !2436, file: !2371, line: 120, column: 7)
!2455 = !DILocation(line: 120, column: 7, scope: !2436, inlinedAt: !2448)
!2456 = !DILocalVariable(name: "s2", arg: 2, scope: !2457, file: !2371, line: 104, type: !62)
!2457 = distinct !DISubprogram(name: "strcaseeq4", scope: !2371, file: !2371, line: 104, type: !2458, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2460)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!87, !62, !62, !35, !35, !35, !35, !35}
!2460 = !{!2461, !2456, !2462, !2463, !2464, !2465, !2466}
!2461 = !DILocalVariable(name: "s1", arg: 1, scope: !2457, file: !2371, line: 104, type: !62)
!2462 = !DILocalVariable(name: "s24", arg: 3, scope: !2457, file: !2371, line: 104, type: !35)
!2463 = !DILocalVariable(name: "s25", arg: 4, scope: !2457, file: !2371, line: 104, type: !35)
!2464 = !DILocalVariable(name: "s26", arg: 5, scope: !2457, file: !2371, line: 104, type: !35)
!2465 = !DILocalVariable(name: "s27", arg: 6, scope: !2457, file: !2371, line: 104, type: !35)
!2466 = !DILocalVariable(name: "s28", arg: 7, scope: !2457, file: !2371, line: 104, type: !35)
!2467 = !DILocation(line: 104, column: 41, scope: !2457, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 125, column: 16, scope: !2469, inlinedAt: !2448)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !2371, line: 122, column: 11)
!2470 = distinct !DILexicalBlock(scope: !2454, file: !2371, line: 121, column: 5)
!2471 = !DILocation(line: 104, column: 80, scope: !2457, inlinedAt: !2468)
!2472 = !DILocation(line: 104, column: 90, scope: !2457, inlinedAt: !2468)
!2473 = !DILocation(line: 106, column: 7, scope: !2474, inlinedAt: !2468)
!2474 = distinct !DILexicalBlock(scope: !2457, file: !2371, line: 106, column: 7)
!2475 = !DILocation(line: 106, column: 7, scope: !2457, inlinedAt: !2468)
!2476 = !DILocalVariable(name: "s2", arg: 2, scope: !2477, file: !2371, line: 90, type: !62)
!2477 = distinct !DISubprogram(name: "strcaseeq5", scope: !2371, file: !2371, line: 90, type: !2478, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!87, !62, !62, !35, !35, !35, !35}
!2480 = !{!2481, !2476, !2482, !2483, !2484, !2485}
!2481 = !DILocalVariable(name: "s1", arg: 1, scope: !2477, file: !2371, line: 90, type: !62)
!2482 = !DILocalVariable(name: "s25", arg: 3, scope: !2477, file: !2371, line: 90, type: !35)
!2483 = !DILocalVariable(name: "s26", arg: 4, scope: !2477, file: !2371, line: 90, type: !35)
!2484 = !DILocalVariable(name: "s27", arg: 5, scope: !2477, file: !2371, line: 90, type: !35)
!2485 = !DILocalVariable(name: "s28", arg: 6, scope: !2477, file: !2371, line: 90, type: !35)
!2486 = !DILocation(line: 90, column: 41, scope: !2477, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 111, column: 16, scope: !2488, inlinedAt: !2468)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !2371, line: 108, column: 11)
!2489 = distinct !DILexicalBlock(scope: !2474, file: !2371, line: 107, column: 5)
!2490 = !DILocation(line: 90, column: 70, scope: !2477, inlinedAt: !2487)
!2491 = !DILocation(line: 90, column: 80, scope: !2477, inlinedAt: !2487)
!2492 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !2487)
!2493 = distinct !DILexicalBlock(scope: !2477, file: !2371, line: 92, column: 7)
!2494 = !DILocation(line: 92, column: 7, scope: !2477, inlinedAt: !2487)
!2495 = !DILocation(line: 227, column: 12, scope: !2387)
!2496 = !DILocation(line: 227, column: 21, scope: !2387)
!2497 = !DILocation(line: 227, column: 5, scope: !2387)
!2498 = !DILocation(line: 146, column: 41, scope: !2393, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 167, column: 16, scope: !2408, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 228, column: 7, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2352, file: !161, line: 228, column: 7)
!2502 = !DILocation(line: 146, column: 110, scope: !2393, inlinedAt: !2499)
!2503 = !DILocation(line: 146, column: 120, scope: !2393, inlinedAt: !2499)
!2504 = !DILocation(line: 148, column: 7, scope: !2413, inlinedAt: !2499)
!2505 = !DILocation(line: 132, column: 41, scope: !2415, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 153, column: 16, scope: !2429, inlinedAt: !2499)
!2507 = !DILocation(line: 132, column: 100, scope: !2415, inlinedAt: !2506)
!2508 = !DILocation(line: 132, column: 110, scope: !2415, inlinedAt: !2506)
!2509 = !DILocation(line: 134, column: 7, scope: !2434, inlinedAt: !2506)
!2510 = !DILocation(line: 134, column: 7, scope: !2415, inlinedAt: !2506)
!2511 = !DILocation(line: 118, column: 41, scope: !2436, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 139, column: 16, scope: !2449, inlinedAt: !2506)
!2513 = !DILocation(line: 118, column: 90, scope: !2436, inlinedAt: !2512)
!2514 = !DILocation(line: 118, column: 100, scope: !2436, inlinedAt: !2512)
!2515 = !DILocation(line: 120, column: 7, scope: !2454, inlinedAt: !2512)
!2516 = !DILocation(line: 120, column: 7, scope: !2436, inlinedAt: !2512)
!2517 = !DILocation(line: 104, column: 41, scope: !2457, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 125, column: 16, scope: !2469, inlinedAt: !2512)
!2519 = !DILocation(line: 104, column: 80, scope: !2457, inlinedAt: !2518)
!2520 = !DILocation(line: 104, column: 90, scope: !2457, inlinedAt: !2518)
!2521 = !DILocation(line: 106, column: 7, scope: !2474, inlinedAt: !2518)
!2522 = !DILocation(line: 106, column: 7, scope: !2457, inlinedAt: !2518)
!2523 = !DILocation(line: 90, column: 41, scope: !2477, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 111, column: 16, scope: !2488, inlinedAt: !2518)
!2525 = !DILocation(line: 90, column: 70, scope: !2477, inlinedAt: !2524)
!2526 = !DILocation(line: 90, column: 80, scope: !2477, inlinedAt: !2524)
!2527 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !2524)
!2528 = !DILocation(line: 92, column: 7, scope: !2477, inlinedAt: !2524)
!2529 = !DILocalVariable(name: "s2", arg: 2, scope: !2530, file: !2371, line: 76, type: !62)
!2530 = distinct !DISubprogram(name: "strcaseeq6", scope: !2371, file: !2371, line: 76, type: !2531, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!87, !62, !62, !35, !35, !35}
!2533 = !{!2534, !2529, !2535, !2536, !2537}
!2534 = !DILocalVariable(name: "s1", arg: 1, scope: !2530, file: !2371, line: 76, type: !62)
!2535 = !DILocalVariable(name: "s26", arg: 3, scope: !2530, file: !2371, line: 76, type: !35)
!2536 = !DILocalVariable(name: "s27", arg: 4, scope: !2530, file: !2371, line: 76, type: !35)
!2537 = !DILocalVariable(name: "s28", arg: 5, scope: !2530, file: !2371, line: 76, type: !35)
!2538 = !DILocation(line: 76, column: 41, scope: !2530, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 97, column: 16, scope: !2540, inlinedAt: !2524)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !2371, line: 94, column: 11)
!2541 = distinct !DILexicalBlock(scope: !2493, file: !2371, line: 93, column: 5)
!2542 = !DILocation(line: 76, column: 60, scope: !2530, inlinedAt: !2539)
!2543 = !DILocation(line: 76, column: 70, scope: !2530, inlinedAt: !2539)
!2544 = !DILocation(line: 78, column: 7, scope: !2545, inlinedAt: !2539)
!2545 = distinct !DILexicalBlock(scope: !2530, file: !2371, line: 78, column: 7)
!2546 = !DILocation(line: 78, column: 7, scope: !2530, inlinedAt: !2539)
!2547 = !DILocalVariable(name: "s2", arg: 2, scope: !2548, file: !2371, line: 62, type: !62)
!2548 = distinct !DISubprogram(name: "strcaseeq7", scope: !2371, file: !2371, line: 62, type: !2549, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!87, !62, !62, !35, !35}
!2551 = !{!2552, !2547, !2553, !2554}
!2552 = !DILocalVariable(name: "s1", arg: 1, scope: !2548, file: !2371, line: 62, type: !62)
!2553 = !DILocalVariable(name: "s27", arg: 3, scope: !2548, file: !2371, line: 62, type: !35)
!2554 = !DILocalVariable(name: "s28", arg: 4, scope: !2548, file: !2371, line: 62, type: !35)
!2555 = !DILocation(line: 62, column: 41, scope: !2548, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 83, column: 16, scope: !2557, inlinedAt: !2539)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !2371, line: 80, column: 11)
!2558 = distinct !DILexicalBlock(scope: !2545, file: !2371, line: 79, column: 5)
!2559 = !DILocation(line: 62, column: 50, scope: !2548, inlinedAt: !2556)
!2560 = !DILocation(line: 62, column: 60, scope: !2548, inlinedAt: !2556)
!2561 = !DILocation(line: 64, column: 7, scope: !2562, inlinedAt: !2556)
!2562 = distinct !DILexicalBlock(scope: !2548, file: !2371, line: 64, column: 7)
!2563 = !DILocation(line: 228, column: 7, scope: !2352)
!2564 = !DILocation(line: 229, column: 12, scope: !2501)
!2565 = !DILocation(line: 229, column: 21, scope: !2501)
!2566 = !DILocation(line: 229, column: 5, scope: !2501)
!2567 = !DILocation(line: 231, column: 13, scope: !2352)
!2568 = !DILocation(line: 231, column: 11, scope: !2352)
!2569 = !DILocation(line: 231, column: 3, scope: !2352)
!2570 = !DILocation(line: 232, column: 1, scope: !2352)
!2571 = distinct !DISubprogram(name: "quotearg_alloc", scope: !161, file: !161, line: 791, type: !2572, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!34, !62, !98, !1698}
!2574 = !{!2575, !2576, !2577}
!2575 = !DILocalVariable(name: "arg", arg: 1, scope: !2571, file: !161, line: 791, type: !62)
!2576 = !DILocalVariable(name: "argsize", arg: 2, scope: !2571, file: !161, line: 791, type: !98)
!2577 = !DILocalVariable(name: "o", arg: 3, scope: !2571, file: !161, line: 792, type: !1698)
!2578 = !DILocation(line: 791, column: 29, scope: !2571)
!2579 = !DILocation(line: 791, column: 41, scope: !2571)
!2580 = !DILocation(line: 792, column: 47, scope: !2571)
!2581 = !DILocalVariable(name: "arg", arg: 1, scope: !2582, file: !161, line: 804, type: !62)
!2582 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !161, file: !161, line: 804, type: !2583, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!34, !62, !98, !630, !1698}
!2585 = !{!2581, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593}
!2586 = !DILocalVariable(name: "argsize", arg: 2, scope: !2582, file: !161, line: 804, type: !98)
!2587 = !DILocalVariable(name: "size", arg: 3, scope: !2582, file: !161, line: 804, type: !630)
!2588 = !DILocalVariable(name: "o", arg: 4, scope: !2582, file: !161, line: 805, type: !1698)
!2589 = !DILocalVariable(name: "p", scope: !2582, file: !161, line: 807, type: !1698)
!2590 = !DILocalVariable(name: "e", scope: !2582, file: !161, line: 808, type: !87)
!2591 = !DILocalVariable(name: "flags", scope: !2582, file: !161, line: 810, type: !87)
!2592 = !DILocalVariable(name: "bufsize", scope: !2582, file: !161, line: 811, type: !98)
!2593 = !DILocalVariable(name: "buf", scope: !2582, file: !161, line: 815, type: !34)
!2594 = !DILocation(line: 804, column: 33, scope: !2582, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 794, column: 10, scope: !2571)
!2596 = !DILocation(line: 804, column: 45, scope: !2582, inlinedAt: !2595)
!2597 = !DILocation(line: 804, column: 62, scope: !2582, inlinedAt: !2595)
!2598 = !DILocation(line: 805, column: 51, scope: !2582, inlinedAt: !2595)
!2599 = !DILocation(line: 807, column: 37, scope: !2582, inlinedAt: !2595)
!2600 = !DILocation(line: 807, column: 33, scope: !2582, inlinedAt: !2595)
!2601 = !DILocation(line: 808, column: 11, scope: !2582, inlinedAt: !2595)
!2602 = !DILocation(line: 808, column: 7, scope: !2582, inlinedAt: !2595)
!2603 = !DILocation(line: 810, column: 18, scope: !2582, inlinedAt: !2595)
!2604 = !DILocation(line: 810, column: 24, scope: !2582, inlinedAt: !2595)
!2605 = !DILocation(line: 810, column: 7, scope: !2582, inlinedAt: !2595)
!2606 = !DILocation(line: 811, column: 69, scope: !2582, inlinedAt: !2595)
!2607 = !DILocation(line: 812, column: 53, scope: !2582, inlinedAt: !2595)
!2608 = !DILocation(line: 813, column: 49, scope: !2582, inlinedAt: !2595)
!2609 = !DILocation(line: 814, column: 49, scope: !2582, inlinedAt: !2595)
!2610 = !DILocation(line: 811, column: 20, scope: !2582, inlinedAt: !2595)
!2611 = !DILocation(line: 814, column: 62, scope: !2582, inlinedAt: !2595)
!2612 = !DILocation(line: 811, column: 10, scope: !2582, inlinedAt: !2595)
!2613 = !DILocalVariable(name: "n", arg: 1, scope: !2614, file: !626, line: 220, type: !98)
!2614 = distinct !DISubprogram(name: "xcharalloc", scope: !626, file: !626, line: 220, type: !2615, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!34, !98}
!2617 = !{!2613}
!2618 = !DILocation(line: 220, column: 20, scope: !2614, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 815, column: 15, scope: !2582, inlinedAt: !2595)
!2620 = !DILocation(line: 222, column: 10, scope: !2614, inlinedAt: !2619)
!2621 = !DILocation(line: 815, column: 9, scope: !2582, inlinedAt: !2595)
!2622 = !DILocation(line: 816, column: 60, scope: !2582, inlinedAt: !2595)
!2623 = !DILocation(line: 818, column: 32, scope: !2582, inlinedAt: !2595)
!2624 = !DILocation(line: 818, column: 47, scope: !2582, inlinedAt: !2595)
!2625 = !DILocation(line: 816, column: 3, scope: !2582, inlinedAt: !2595)
!2626 = !DILocation(line: 819, column: 9, scope: !2582, inlinedAt: !2595)
!2627 = !DILocation(line: 794, column: 3, scope: !2571)
!2628 = !DILocation(line: 804, column: 33, scope: !2582)
!2629 = !DILocation(line: 804, column: 45, scope: !2582)
!2630 = !DILocation(line: 804, column: 62, scope: !2582)
!2631 = !DILocation(line: 805, column: 51, scope: !2582)
!2632 = !DILocation(line: 807, column: 37, scope: !2582)
!2633 = !DILocation(line: 807, column: 33, scope: !2582)
!2634 = !DILocation(line: 808, column: 11, scope: !2582)
!2635 = !DILocation(line: 808, column: 7, scope: !2582)
!2636 = !DILocation(line: 810, column: 18, scope: !2582)
!2637 = !DILocation(line: 810, column: 27, scope: !2582)
!2638 = !DILocation(line: 810, column: 24, scope: !2582)
!2639 = !DILocation(line: 810, column: 7, scope: !2582)
!2640 = !DILocation(line: 811, column: 69, scope: !2582)
!2641 = !DILocation(line: 812, column: 53, scope: !2582)
!2642 = !DILocation(line: 813, column: 49, scope: !2582)
!2643 = !DILocation(line: 814, column: 49, scope: !2582)
!2644 = !DILocation(line: 811, column: 20, scope: !2582)
!2645 = !DILocation(line: 814, column: 62, scope: !2582)
!2646 = !DILocation(line: 811, column: 10, scope: !2582)
!2647 = !DILocation(line: 220, column: 20, scope: !2614, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 815, column: 15, scope: !2582)
!2649 = !DILocation(line: 222, column: 10, scope: !2614, inlinedAt: !2648)
!2650 = !DILocation(line: 815, column: 9, scope: !2582)
!2651 = !DILocation(line: 816, column: 60, scope: !2582)
!2652 = !DILocation(line: 818, column: 32, scope: !2582)
!2653 = !DILocation(line: 818, column: 47, scope: !2582)
!2654 = !DILocation(line: 816, column: 3, scope: !2582)
!2655 = !DILocation(line: 819, column: 9, scope: !2582)
!2656 = !DILocation(line: 820, column: 7, scope: !2582)
!2657 = !DILocation(line: 821, column: 11, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2582, file: !161, line: 820, column: 7)
!2659 = !DILocation(line: 821, column: 5, scope: !2658)
!2660 = !DILocation(line: 822, column: 3, scope: !2582)
!2661 = distinct !DISubprogram(name: "quotearg_free", scope: !161, file: !161, line: 840, type: !1148, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2662)
!2662 = !{!2663, !2664}
!2663 = !DILocalVariable(name: "sv", scope: !2661, file: !161, line: 842, type: !186)
!2664 = !DILocalVariable(name: "i", scope: !2661, file: !161, line: 843, type: !87)
!2665 = !DILocation(line: 842, column: 24, scope: !2661)
!2666 = !DILocation(line: 842, column: 19, scope: !2661)
!2667 = !DILocation(line: 843, column: 7, scope: !2661)
!2668 = !DILocation(line: 844, column: 19, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !161, line: 844, column: 3)
!2670 = distinct !DILexicalBlock(scope: !2661, file: !161, line: 844, column: 3)
!2671 = !DILocation(line: 844, column: 17, scope: !2669)
!2672 = !DILocation(line: 844, column: 3, scope: !2670)
!2673 = !DILocation(line: 845, column: 17, scope: !2669)
!2674 = !{!2675, !678, i64 8}
!2675 = !{!"slotvec", !856, i64 0, !678, i64 8}
!2676 = !DILocation(line: 845, column: 5, scope: !2669)
!2677 = !DILocation(line: 844, column: 28, scope: !2669)
!2678 = distinct !{!2678, !2672, !2679}
!2679 = !DILocation(line: 845, column: 20, scope: !2670)
!2680 = !DILocation(line: 846, column: 13, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2661, file: !161, line: 846, column: 7)
!2682 = !DILocation(line: 846, column: 17, scope: !2681)
!2683 = !DILocation(line: 846, column: 7, scope: !2661)
!2684 = !DILocation(line: 848, column: 7, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !161, line: 847, column: 5)
!2686 = !DILocation(line: 849, column: 21, scope: !2685)
!2687 = !{!2675, !856, i64 0}
!2688 = !DILocation(line: 850, column: 20, scope: !2685)
!2689 = !DILocation(line: 851, column: 5, scope: !2685)
!2690 = !DILocation(line: 852, column: 10, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2661, file: !161, line: 852, column: 7)
!2692 = !DILocation(line: 852, column: 7, scope: !2661)
!2693 = !DILocation(line: 854, column: 13, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2691, file: !161, line: 853, column: 5)
!2695 = !DILocation(line: 854, column: 7, scope: !2694)
!2696 = !DILocation(line: 855, column: 15, scope: !2694)
!2697 = !DILocation(line: 856, column: 5, scope: !2694)
!2698 = !DILocation(line: 857, column: 10, scope: !2661)
!2699 = !DILocation(line: 858, column: 1, scope: !2661)
!2700 = distinct !DISubprogram(name: "quotearg_n", scope: !161, file: !161, line: 922, type: !2701, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!34, !87, !62}
!2703 = !{!2704, !2705}
!2704 = !DILocalVariable(name: "n", arg: 1, scope: !2700, file: !161, line: 922, type: !87)
!2705 = !DILocalVariable(name: "arg", arg: 2, scope: !2700, file: !161, line: 922, type: !62)
!2706 = !DILocation(line: 922, column: 17, scope: !2700)
!2707 = !DILocation(line: 922, column: 32, scope: !2700)
!2708 = !DILocation(line: 924, column: 10, scope: !2700)
!2709 = !DILocation(line: 924, column: 3, scope: !2700)
!2710 = distinct !DISubprogram(name: "quotearg_n_options", scope: !161, file: !161, line: 869, type: !2711, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!34, !87, !62, !98, !1698}
!2713 = !{!2714, !2715, !2716, !2717, !2718, !2719, !2720, !2723, !2725, !2726, !2727}
!2714 = !DILocalVariable(name: "n", arg: 1, scope: !2710, file: !161, line: 869, type: !87)
!2715 = !DILocalVariable(name: "arg", arg: 2, scope: !2710, file: !161, line: 869, type: !62)
!2716 = !DILocalVariable(name: "argsize", arg: 3, scope: !2710, file: !161, line: 869, type: !98)
!2717 = !DILocalVariable(name: "options", arg: 4, scope: !2710, file: !161, line: 870, type: !1698)
!2718 = !DILocalVariable(name: "e", scope: !2710, file: !161, line: 872, type: !87)
!2719 = !DILocalVariable(name: "sv", scope: !2710, file: !161, line: 874, type: !186)
!2720 = !DILocalVariable(name: "preallocated", scope: !2721, file: !161, line: 881, type: !40)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !161, line: 880, column: 5)
!2722 = distinct !DILexicalBlock(scope: !2710, file: !161, line: 879, column: 7)
!2723 = !DILocalVariable(name: "size", scope: !2724, file: !161, line: 894, type: !98)
!2724 = distinct !DILexicalBlock(scope: !2710, file: !161, line: 893, column: 3)
!2725 = !DILocalVariable(name: "val", scope: !2724, file: !161, line: 895, type: !34)
!2726 = !DILocalVariable(name: "flags", scope: !2724, file: !161, line: 897, type: !87)
!2727 = !DILocalVariable(name: "qsize", scope: !2724, file: !161, line: 898, type: !98)
!2728 = !DILocation(line: 869, column: 25, scope: !2710)
!2729 = !DILocation(line: 869, column: 40, scope: !2710)
!2730 = !DILocation(line: 869, column: 52, scope: !2710)
!2731 = !DILocation(line: 870, column: 51, scope: !2710)
!2732 = !DILocation(line: 872, column: 11, scope: !2710)
!2733 = !DILocation(line: 872, column: 7, scope: !2710)
!2734 = !DILocation(line: 874, column: 24, scope: !2710)
!2735 = !DILocation(line: 874, column: 19, scope: !2710)
!2736 = !DILocation(line: 876, column: 9, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2710, file: !161, line: 876, column: 7)
!2738 = !DILocation(line: 876, column: 7, scope: !2710)
!2739 = !DILocation(line: 877, column: 5, scope: !2737)
!2740 = !DILocation(line: 879, column: 7, scope: !2722)
!2741 = !DILocation(line: 879, column: 14, scope: !2722)
!2742 = !DILocation(line: 879, column: 7, scope: !2710)
!2743 = !DILocation(line: 881, column: 31, scope: !2721)
!2744 = !DILocation(line: 883, column: 67, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2721, file: !161, line: 883, column: 11)
!2746 = !DILocation(line: 883, column: 11, scope: !2721)
!2747 = !DILocation(line: 884, column: 9, scope: !2745)
!2748 = !DILocation(line: 886, column: 32, scope: !2721)
!2749 = !DILocation(line: 886, column: 61, scope: !2721)
!2750 = !DILocation(line: 886, column: 58, scope: !2721)
!2751 = !DILocation(line: 886, column: 66, scope: !2721)
!2752 = !DILocation(line: 886, column: 22, scope: !2721)
!2753 = !DILocation(line: 886, column: 15, scope: !2721)
!2754 = !DILocation(line: 887, column: 11, scope: !2721)
!2755 = !DILocation(line: 888, column: 15, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2721, file: !161, line: 887, column: 11)
!2757 = !{i64 0, i64 8, !855, i64 8, i64 8, !677}
!2758 = !DILocation(line: 888, column: 9, scope: !2756)
!2759 = !DILocation(line: 889, column: 20, scope: !2721)
!2760 = !DILocation(line: 889, column: 18, scope: !2721)
!2761 = !DILocation(line: 889, column: 7, scope: !2721)
!2762 = !DILocation(line: 889, column: 38, scope: !2721)
!2763 = !DILocation(line: 889, column: 31, scope: !2721)
!2764 = !DILocation(line: 889, column: 48, scope: !2721)
!2765 = !DILocation(line: 890, column: 14, scope: !2721)
!2766 = !DILocation(line: 891, column: 5, scope: !2721)
!2767 = !DILocation(line: 894, column: 19, scope: !2724)
!2768 = !DILocation(line: 894, column: 25, scope: !2724)
!2769 = !DILocation(line: 894, column: 12, scope: !2724)
!2770 = !DILocation(line: 895, column: 23, scope: !2724)
!2771 = !DILocation(line: 895, column: 11, scope: !2724)
!2772 = !DILocation(line: 897, column: 26, scope: !2724)
!2773 = !DILocation(line: 897, column: 32, scope: !2724)
!2774 = !DILocation(line: 897, column: 9, scope: !2724)
!2775 = !DILocation(line: 899, column: 55, scope: !2724)
!2776 = !DILocation(line: 900, column: 46, scope: !2724)
!2777 = !DILocation(line: 901, column: 55, scope: !2724)
!2778 = !DILocation(line: 902, column: 55, scope: !2724)
!2779 = !DILocation(line: 898, column: 20, scope: !2724)
!2780 = !DILocation(line: 898, column: 12, scope: !2724)
!2781 = !DILocation(line: 904, column: 14, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2724, file: !161, line: 904, column: 9)
!2783 = !DILocation(line: 904, column: 9, scope: !2724)
!2784 = !DILocation(line: 906, column: 35, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2782, file: !161, line: 905, column: 7)
!2786 = !DILocation(line: 906, column: 20, scope: !2785)
!2787 = !DILocation(line: 907, column: 17, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2785, file: !161, line: 907, column: 13)
!2789 = !DILocation(line: 907, column: 13, scope: !2785)
!2790 = !DILocation(line: 908, column: 11, scope: !2788)
!2791 = !DILocation(line: 220, column: 20, scope: !2614, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 909, column: 27, scope: !2785)
!2793 = !DILocation(line: 222, column: 10, scope: !2614, inlinedAt: !2792)
!2794 = !DILocation(line: 909, column: 19, scope: !2785)
!2795 = !DILocation(line: 910, column: 69, scope: !2785)
!2796 = !DILocation(line: 912, column: 44, scope: !2785)
!2797 = !DILocation(line: 913, column: 44, scope: !2785)
!2798 = !DILocation(line: 910, column: 9, scope: !2785)
!2799 = !DILocation(line: 914, column: 7, scope: !2785)
!2800 = !DILocation(line: 916, column: 11, scope: !2724)
!2801 = !DILocation(line: 917, column: 5, scope: !2724)
!2802 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !161, file: !161, line: 928, type: !2803, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!34, !87, !62, !98}
!2805 = !{!2806, !2807, !2808}
!2806 = !DILocalVariable(name: "n", arg: 1, scope: !2802, file: !161, line: 928, type: !87)
!2807 = !DILocalVariable(name: "arg", arg: 2, scope: !2802, file: !161, line: 928, type: !62)
!2808 = !DILocalVariable(name: "argsize", arg: 3, scope: !2802, file: !161, line: 928, type: !98)
!2809 = !DILocation(line: 928, column: 21, scope: !2802)
!2810 = !DILocation(line: 928, column: 36, scope: !2802)
!2811 = !DILocation(line: 928, column: 48, scope: !2802)
!2812 = !DILocation(line: 930, column: 10, scope: !2802)
!2813 = !DILocation(line: 930, column: 3, scope: !2802)
!2814 = distinct !DISubprogram(name: "quotearg", scope: !161, file: !161, line: 934, type: !2815, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!34, !62}
!2817 = !{!2818}
!2818 = !DILocalVariable(name: "arg", arg: 1, scope: !2814, file: !161, line: 934, type: !62)
!2819 = !DILocation(line: 934, column: 23, scope: !2814)
!2820 = !DILocation(line: 922, column: 17, scope: !2700, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 936, column: 10, scope: !2814)
!2822 = !DILocation(line: 922, column: 32, scope: !2700, inlinedAt: !2821)
!2823 = !DILocation(line: 924, column: 10, scope: !2700, inlinedAt: !2821)
!2824 = !DILocation(line: 936, column: 3, scope: !2814)
!2825 = distinct !DISubprogram(name: "quotearg_mem", scope: !161, file: !161, line: 940, type: !2826, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!34, !62, !98}
!2828 = !{!2829, !2830}
!2829 = !DILocalVariable(name: "arg", arg: 1, scope: !2825, file: !161, line: 940, type: !62)
!2830 = !DILocalVariable(name: "argsize", arg: 2, scope: !2825, file: !161, line: 940, type: !98)
!2831 = !DILocation(line: 940, column: 27, scope: !2825)
!2832 = !DILocation(line: 940, column: 39, scope: !2825)
!2833 = !DILocation(line: 928, column: 21, scope: !2802, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 942, column: 10, scope: !2825)
!2835 = !DILocation(line: 928, column: 36, scope: !2802, inlinedAt: !2834)
!2836 = !DILocation(line: 928, column: 48, scope: !2802, inlinedAt: !2834)
!2837 = !DILocation(line: 930, column: 10, scope: !2802, inlinedAt: !2834)
!2838 = !DILocation(line: 942, column: 3, scope: !2825)
!2839 = distinct !DISubprogram(name: "quotearg_n_style", scope: !161, file: !161, line: 946, type: !2840, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!34, !87, !10, !62}
!2842 = !{!2843, !2844, !2845, !2846}
!2843 = !DILocalVariable(name: "n", arg: 1, scope: !2839, file: !161, line: 946, type: !87)
!2844 = !DILocalVariable(name: "s", arg: 2, scope: !2839, file: !161, line: 946, type: !10)
!2845 = !DILocalVariable(name: "arg", arg: 3, scope: !2839, file: !161, line: 946, type: !62)
!2846 = !DILocalVariable(name: "o", scope: !2839, file: !161, line: 948, type: !1699)
!2847 = !DILocalVariable(name: "o", scope: !2848, file: !161, line: 187, type: !168)
!2848 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !161, file: !161, line: 185, type: !2849, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!168, !10}
!2851 = !{!2852, !2847}
!2852 = !DILocalVariable(name: "style", arg: 1, scope: !2848, file: !161, line: 185, type: !10)
!2853 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2854 = !DILocation(line: 187, column: 26, scope: !2848, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 948, column: 36, scope: !2839)
!2856 = !DILocation(line: 946, column: 23, scope: !2839)
!2857 = !DILocation(line: 946, column: 45, scope: !2839)
!2858 = !DILocation(line: 946, column: 60, scope: !2839)
!2859 = !DILocation(line: 948, column: 3, scope: !2839)
!2860 = !DILocation(line: 948, column: 32, scope: !2839)
!2861 = !DILocation(line: 185, column: 48, scope: !2848, inlinedAt: !2855)
!2862 = !DILocation(line: 187, column: 3, scope: !2848, inlinedAt: !2855)
!2863 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2864 = !DILocation(line: 188, column: 13, scope: !2865, inlinedAt: !2855)
!2865 = distinct !DILexicalBlock(scope: !2848, file: !161, line: 188, column: 7)
!2866 = !DILocation(line: 188, column: 7, scope: !2848, inlinedAt: !2855)
!2867 = !DILocation(line: 189, column: 5, scope: !2865, inlinedAt: !2855)
!2868 = !{!2869}
!2869 = distinct !{!2869, !2870, !"quoting_options_from_style: argument 0"}
!2870 = distinct !{!2870, !"quoting_options_from_style"}
!2871 = !DILocation(line: 191, column: 10, scope: !2848, inlinedAt: !2855)
!2872 = !DILocation(line: 192, column: 1, scope: !2848, inlinedAt: !2855)
!2873 = !DILocation(line: 949, column: 10, scope: !2839)
!2874 = !DILocation(line: 950, column: 1, scope: !2839)
!2875 = !DILocation(line: 949, column: 3, scope: !2839)
!2876 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !161, file: !161, line: 953, type: !2877, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!34, !87, !10, !62, !98}
!2879 = !{!2880, !2881, !2882, !2883, !2884}
!2880 = !DILocalVariable(name: "n", arg: 1, scope: !2876, file: !161, line: 953, type: !87)
!2881 = !DILocalVariable(name: "s", arg: 2, scope: !2876, file: !161, line: 953, type: !10)
!2882 = !DILocalVariable(name: "arg", arg: 3, scope: !2876, file: !161, line: 954, type: !62)
!2883 = !DILocalVariable(name: "argsize", arg: 4, scope: !2876, file: !161, line: 954, type: !98)
!2884 = !DILocalVariable(name: "o", scope: !2876, file: !161, line: 956, type: !1699)
!2885 = !DILocation(line: 187, column: 26, scope: !2848, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 956, column: 36, scope: !2876)
!2887 = !DILocation(line: 953, column: 27, scope: !2876)
!2888 = !DILocation(line: 953, column: 49, scope: !2876)
!2889 = !DILocation(line: 954, column: 35, scope: !2876)
!2890 = !DILocation(line: 954, column: 47, scope: !2876)
!2891 = !DILocation(line: 956, column: 3, scope: !2876)
!2892 = !DILocation(line: 956, column: 32, scope: !2876)
!2893 = !DILocation(line: 185, column: 48, scope: !2848, inlinedAt: !2886)
!2894 = !DILocation(line: 187, column: 3, scope: !2848, inlinedAt: !2886)
!2895 = !DILocation(line: 188, column: 13, scope: !2865, inlinedAt: !2886)
!2896 = !DILocation(line: 188, column: 7, scope: !2848, inlinedAt: !2886)
!2897 = !DILocation(line: 189, column: 5, scope: !2865, inlinedAt: !2886)
!2898 = !{!2899}
!2899 = distinct !{!2899, !2900, !"quoting_options_from_style: argument 0"}
!2900 = distinct !{!2900, !"quoting_options_from_style"}
!2901 = !DILocation(line: 191, column: 10, scope: !2848, inlinedAt: !2886)
!2902 = !DILocation(line: 192, column: 1, scope: !2848, inlinedAt: !2886)
!2903 = !DILocation(line: 957, column: 10, scope: !2876)
!2904 = !DILocation(line: 958, column: 1, scope: !2876)
!2905 = !DILocation(line: 957, column: 3, scope: !2876)
!2906 = distinct !DISubprogram(name: "quotearg_style", scope: !161, file: !161, line: 961, type: !2907, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2909)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!34, !10, !62}
!2909 = !{!2910, !2911}
!2910 = !DILocalVariable(name: "s", arg: 1, scope: !2906, file: !161, line: 961, type: !10)
!2911 = !DILocalVariable(name: "arg", arg: 2, scope: !2906, file: !161, line: 961, type: !62)
!2912 = !DILocation(line: 187, column: 26, scope: !2848, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 948, column: 36, scope: !2839, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 963, column: 10, scope: !2906)
!2915 = !DILocation(line: 961, column: 36, scope: !2906)
!2916 = !DILocation(line: 961, column: 51, scope: !2906)
!2917 = !DILocation(line: 946, column: 23, scope: !2839, inlinedAt: !2914)
!2918 = !DILocation(line: 946, column: 45, scope: !2839, inlinedAt: !2914)
!2919 = !DILocation(line: 946, column: 60, scope: !2839, inlinedAt: !2914)
!2920 = !DILocation(line: 948, column: 3, scope: !2839, inlinedAt: !2914)
!2921 = !DILocation(line: 948, column: 32, scope: !2839, inlinedAt: !2914)
!2922 = !DILocation(line: 185, column: 48, scope: !2848, inlinedAt: !2913)
!2923 = !DILocation(line: 187, column: 3, scope: !2848, inlinedAt: !2913)
!2924 = !DILocation(line: 188, column: 13, scope: !2865, inlinedAt: !2913)
!2925 = !DILocation(line: 188, column: 7, scope: !2848, inlinedAt: !2913)
!2926 = !DILocation(line: 189, column: 5, scope: !2865, inlinedAt: !2913)
!2927 = !{!2928}
!2928 = distinct !{!2928, !2929, !"quoting_options_from_style: argument 0"}
!2929 = distinct !{!2929, !"quoting_options_from_style"}
!2930 = !DILocation(line: 191, column: 10, scope: !2848, inlinedAt: !2913)
!2931 = !DILocation(line: 192, column: 1, scope: !2848, inlinedAt: !2913)
!2932 = !DILocation(line: 949, column: 10, scope: !2839, inlinedAt: !2914)
!2933 = !DILocation(line: 950, column: 1, scope: !2839, inlinedAt: !2914)
!2934 = !DILocation(line: 963, column: 3, scope: !2906)
!2935 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !161, file: !161, line: 967, type: !2936, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!34, !10, !62, !98}
!2938 = !{!2939, !2940, !2941}
!2939 = !DILocalVariable(name: "s", arg: 1, scope: !2935, file: !161, line: 967, type: !10)
!2940 = !DILocalVariable(name: "arg", arg: 2, scope: !2935, file: !161, line: 967, type: !62)
!2941 = !DILocalVariable(name: "argsize", arg: 3, scope: !2935, file: !161, line: 967, type: !98)
!2942 = !DILocation(line: 187, column: 26, scope: !2848, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 956, column: 36, scope: !2876, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 969, column: 10, scope: !2935)
!2945 = !DILocation(line: 967, column: 40, scope: !2935)
!2946 = !DILocation(line: 967, column: 55, scope: !2935)
!2947 = !DILocation(line: 967, column: 67, scope: !2935)
!2948 = !DILocation(line: 953, column: 27, scope: !2876, inlinedAt: !2944)
!2949 = !DILocation(line: 953, column: 49, scope: !2876, inlinedAt: !2944)
!2950 = !DILocation(line: 954, column: 35, scope: !2876, inlinedAt: !2944)
!2951 = !DILocation(line: 954, column: 47, scope: !2876, inlinedAt: !2944)
!2952 = !DILocation(line: 956, column: 3, scope: !2876, inlinedAt: !2944)
!2953 = !DILocation(line: 956, column: 32, scope: !2876, inlinedAt: !2944)
!2954 = !DILocation(line: 185, column: 48, scope: !2848, inlinedAt: !2943)
!2955 = !DILocation(line: 187, column: 3, scope: !2848, inlinedAt: !2943)
!2956 = !DILocation(line: 188, column: 13, scope: !2865, inlinedAt: !2943)
!2957 = !DILocation(line: 188, column: 7, scope: !2848, inlinedAt: !2943)
!2958 = !DILocation(line: 189, column: 5, scope: !2865, inlinedAt: !2943)
!2959 = !{!2960}
!2960 = distinct !{!2960, !2961, !"quoting_options_from_style: argument 0"}
!2961 = distinct !{!2961, !"quoting_options_from_style"}
!2962 = !DILocation(line: 191, column: 10, scope: !2848, inlinedAt: !2943)
!2963 = !DILocation(line: 192, column: 1, scope: !2848, inlinedAt: !2943)
!2964 = !DILocation(line: 957, column: 10, scope: !2876, inlinedAt: !2944)
!2965 = !DILocation(line: 958, column: 1, scope: !2876, inlinedAt: !2944)
!2966 = !DILocation(line: 969, column: 3, scope: !2935)
!2967 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !161, file: !161, line: 973, type: !2968, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!34, !62, !98, !35}
!2970 = !{!2971, !2972, !2973, !2974}
!2971 = !DILocalVariable(name: "arg", arg: 1, scope: !2967, file: !161, line: 973, type: !62)
!2972 = !DILocalVariable(name: "argsize", arg: 2, scope: !2967, file: !161, line: 973, type: !98)
!2973 = !DILocalVariable(name: "ch", arg: 3, scope: !2967, file: !161, line: 973, type: !35)
!2974 = !DILocalVariable(name: "options", scope: !2967, file: !161, line: 975, type: !168)
!2975 = !DILocation(line: 973, column: 32, scope: !2967)
!2976 = !DILocation(line: 973, column: 44, scope: !2967)
!2977 = !DILocation(line: 973, column: 58, scope: !2967)
!2978 = !DILocation(line: 975, column: 3, scope: !2967)
!2979 = !DILocation(line: 976, column: 13, scope: !2967)
!2980 = !{i64 0, i64 4, !840, i64 4, i64 4, !881, i64 8, i64 32, !840, i64 40, i64 8, !677, i64 48, i64 8, !677}
!2981 = !DILocation(line: 975, column: 26, scope: !2967)
!2982 = !DILocation(line: 144, column: 43, scope: !1720, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 977, column: 3, scope: !2967)
!2984 = !DILocation(line: 144, column: 51, scope: !1720, inlinedAt: !2983)
!2985 = !DILocation(line: 144, column: 58, scope: !1720, inlinedAt: !2983)
!2986 = !DILocation(line: 146, column: 17, scope: !1720, inlinedAt: !2983)
!2987 = !DILocation(line: 148, column: 62, scope: !1720, inlinedAt: !2983)
!2988 = !DILocation(line: 148, column: 57, scope: !1720, inlinedAt: !2983)
!2989 = !DILocation(line: 147, column: 17, scope: !1720, inlinedAt: !2983)
!2990 = !DILocation(line: 149, column: 18, scope: !1720, inlinedAt: !2983)
!2991 = !DILocation(line: 149, column: 15, scope: !1720, inlinedAt: !2983)
!2992 = !DILocation(line: 149, column: 7, scope: !1720, inlinedAt: !2983)
!2993 = !DILocation(line: 150, column: 12, scope: !1720, inlinedAt: !2983)
!2994 = !DILocation(line: 150, column: 15, scope: !1720, inlinedAt: !2983)
!2995 = !DILocation(line: 150, column: 25, scope: !1720, inlinedAt: !2983)
!2996 = !DILocation(line: 150, column: 7, scope: !1720, inlinedAt: !2983)
!2997 = !DILocation(line: 151, column: 18, scope: !1720, inlinedAt: !2983)
!2998 = !DILocation(line: 151, column: 23, scope: !1720, inlinedAt: !2983)
!2999 = !DILocation(line: 151, column: 6, scope: !1720, inlinedAt: !2983)
!3000 = !DILocation(line: 978, column: 10, scope: !2967)
!3001 = !DILocation(line: 979, column: 1, scope: !2967)
!3002 = !DILocation(line: 978, column: 3, scope: !2967)
!3003 = distinct !DISubprogram(name: "quotearg_char", scope: !161, file: !161, line: 982, type: !3004, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!34, !62, !35}
!3006 = !{!3007, !3008}
!3007 = !DILocalVariable(name: "arg", arg: 1, scope: !3003, file: !161, line: 982, type: !62)
!3008 = !DILocalVariable(name: "ch", arg: 2, scope: !3003, file: !161, line: 982, type: !35)
!3009 = !DILocation(line: 982, column: 28, scope: !3003)
!3010 = !DILocation(line: 982, column: 38, scope: !3003)
!3011 = !DILocation(line: 973, column: 32, scope: !2967, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 984, column: 10, scope: !3003)
!3013 = !DILocation(line: 973, column: 44, scope: !2967, inlinedAt: !3012)
!3014 = !DILocation(line: 973, column: 58, scope: !2967, inlinedAt: !3012)
!3015 = !DILocation(line: 975, column: 3, scope: !2967, inlinedAt: !3012)
!3016 = !DILocation(line: 976, column: 13, scope: !2967, inlinedAt: !3012)
!3017 = !DILocation(line: 975, column: 26, scope: !2967, inlinedAt: !3012)
!3018 = !DILocation(line: 144, column: 43, scope: !1720, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 977, column: 3, scope: !2967, inlinedAt: !3012)
!3020 = !DILocation(line: 144, column: 51, scope: !1720, inlinedAt: !3019)
!3021 = !DILocation(line: 144, column: 58, scope: !1720, inlinedAt: !3019)
!3022 = !DILocation(line: 146, column: 17, scope: !1720, inlinedAt: !3019)
!3023 = !DILocation(line: 148, column: 62, scope: !1720, inlinedAt: !3019)
!3024 = !DILocation(line: 148, column: 57, scope: !1720, inlinedAt: !3019)
!3025 = !DILocation(line: 147, column: 17, scope: !1720, inlinedAt: !3019)
!3026 = !DILocation(line: 149, column: 18, scope: !1720, inlinedAt: !3019)
!3027 = !DILocation(line: 149, column: 15, scope: !1720, inlinedAt: !3019)
!3028 = !DILocation(line: 149, column: 7, scope: !1720, inlinedAt: !3019)
!3029 = !DILocation(line: 150, column: 12, scope: !1720, inlinedAt: !3019)
!3030 = !DILocation(line: 150, column: 15, scope: !1720, inlinedAt: !3019)
!3031 = !DILocation(line: 150, column: 25, scope: !1720, inlinedAt: !3019)
!3032 = !DILocation(line: 150, column: 7, scope: !1720, inlinedAt: !3019)
!3033 = !DILocation(line: 151, column: 18, scope: !1720, inlinedAt: !3019)
!3034 = !DILocation(line: 151, column: 23, scope: !1720, inlinedAt: !3019)
!3035 = !DILocation(line: 151, column: 6, scope: !1720, inlinedAt: !3019)
!3036 = !DILocation(line: 978, column: 10, scope: !2967, inlinedAt: !3012)
!3037 = !DILocation(line: 979, column: 1, scope: !2967, inlinedAt: !3012)
!3038 = !DILocation(line: 984, column: 3, scope: !3003)
!3039 = distinct !DISubprogram(name: "quotearg_colon", scope: !161, file: !161, line: 988, type: !2815, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3040)
!3040 = !{!3041}
!3041 = !DILocalVariable(name: "arg", arg: 1, scope: !3039, file: !161, line: 988, type: !62)
!3042 = !DILocation(line: 988, column: 29, scope: !3039)
!3043 = !DILocation(line: 982, column: 28, scope: !3003, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 990, column: 10, scope: !3039)
!3045 = !DILocation(line: 982, column: 38, scope: !3003, inlinedAt: !3044)
!3046 = !DILocation(line: 973, column: 32, scope: !2967, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 984, column: 10, scope: !3003, inlinedAt: !3044)
!3048 = !DILocation(line: 973, column: 44, scope: !2967, inlinedAt: !3047)
!3049 = !DILocation(line: 973, column: 58, scope: !2967, inlinedAt: !3047)
!3050 = !DILocation(line: 975, column: 3, scope: !2967, inlinedAt: !3047)
!3051 = !DILocation(line: 976, column: 13, scope: !2967, inlinedAt: !3047)
!3052 = !DILocation(line: 975, column: 26, scope: !2967, inlinedAt: !3047)
!3053 = !DILocation(line: 144, column: 43, scope: !1720, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 977, column: 3, scope: !2967, inlinedAt: !3047)
!3055 = !DILocation(line: 144, column: 51, scope: !1720, inlinedAt: !3054)
!3056 = !DILocation(line: 144, column: 58, scope: !1720, inlinedAt: !3054)
!3057 = !DILocation(line: 146, column: 17, scope: !1720, inlinedAt: !3054)
!3058 = !DILocation(line: 148, column: 57, scope: !1720, inlinedAt: !3054)
!3059 = !DILocation(line: 147, column: 17, scope: !1720, inlinedAt: !3054)
!3060 = !DILocation(line: 149, column: 7, scope: !1720, inlinedAt: !3054)
!3061 = !DILocation(line: 150, column: 12, scope: !1720, inlinedAt: !3054)
!3062 = !DILocation(line: 151, column: 6, scope: !1720, inlinedAt: !3054)
!3063 = !DILocation(line: 978, column: 10, scope: !2967, inlinedAt: !3047)
!3064 = !DILocation(line: 979, column: 1, scope: !2967, inlinedAt: !3047)
!3065 = !DILocation(line: 990, column: 3, scope: !3039)
!3066 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !161, file: !161, line: 994, type: !2826, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3067)
!3067 = !{!3068, !3069}
!3068 = !DILocalVariable(name: "arg", arg: 1, scope: !3066, file: !161, line: 994, type: !62)
!3069 = !DILocalVariable(name: "argsize", arg: 2, scope: !3066, file: !161, line: 994, type: !98)
!3070 = !DILocation(line: 994, column: 33, scope: !3066)
!3071 = !DILocation(line: 994, column: 45, scope: !3066)
!3072 = !DILocation(line: 973, column: 32, scope: !2967, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 996, column: 10, scope: !3066)
!3074 = !DILocation(line: 973, column: 44, scope: !2967, inlinedAt: !3073)
!3075 = !DILocation(line: 973, column: 58, scope: !2967, inlinedAt: !3073)
!3076 = !DILocation(line: 975, column: 3, scope: !2967, inlinedAt: !3073)
!3077 = !DILocation(line: 976, column: 13, scope: !2967, inlinedAt: !3073)
!3078 = !DILocation(line: 975, column: 26, scope: !2967, inlinedAt: !3073)
!3079 = !DILocation(line: 144, column: 43, scope: !1720, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 977, column: 3, scope: !2967, inlinedAt: !3073)
!3081 = !DILocation(line: 144, column: 51, scope: !1720, inlinedAt: !3080)
!3082 = !DILocation(line: 144, column: 58, scope: !1720, inlinedAt: !3080)
!3083 = !DILocation(line: 146, column: 17, scope: !1720, inlinedAt: !3080)
!3084 = !DILocation(line: 148, column: 57, scope: !1720, inlinedAt: !3080)
!3085 = !DILocation(line: 147, column: 17, scope: !1720, inlinedAt: !3080)
!3086 = !DILocation(line: 149, column: 7, scope: !1720, inlinedAt: !3080)
!3087 = !DILocation(line: 150, column: 12, scope: !1720, inlinedAt: !3080)
!3088 = !DILocation(line: 151, column: 6, scope: !1720, inlinedAt: !3080)
!3089 = !DILocation(line: 978, column: 10, scope: !2967, inlinedAt: !3073)
!3090 = !DILocation(line: 979, column: 1, scope: !2967, inlinedAt: !3073)
!3091 = !DILocation(line: 996, column: 3, scope: !3066)
!3092 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !161, file: !161, line: 1000, type: !2840, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3093)
!3093 = !{!3094, !3095, !3096, !3097}
!3094 = !DILocalVariable(name: "n", arg: 1, scope: !3092, file: !161, line: 1000, type: !87)
!3095 = !DILocalVariable(name: "s", arg: 2, scope: !3092, file: !161, line: 1000, type: !10)
!3096 = !DILocalVariable(name: "arg", arg: 3, scope: !3092, file: !161, line: 1000, type: !62)
!3097 = !DILocalVariable(name: "options", scope: !3092, file: !161, line: 1002, type: !168)
!3098 = !DILocation(line: 187, column: 26, scope: !2848, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 1003, column: 13, scope: !3092)
!3100 = !DILocation(line: 1000, column: 29, scope: !3092)
!3101 = !DILocation(line: 1000, column: 51, scope: !3092)
!3102 = !DILocation(line: 1000, column: 66, scope: !3092)
!3103 = !DILocation(line: 1002, column: 3, scope: !3092)
!3104 = !DILocation(line: 185, column: 48, scope: !2848, inlinedAt: !3099)
!3105 = !DILocation(line: 187, column: 3, scope: !2848, inlinedAt: !3099)
!3106 = !DILocation(line: 188, column: 13, scope: !2865, inlinedAt: !3099)
!3107 = !DILocation(line: 188, column: 7, scope: !2848, inlinedAt: !3099)
!3108 = !DILocation(line: 189, column: 5, scope: !2865, inlinedAt: !3099)
!3109 = !{!3110}
!3110 = distinct !{!3110, !3111, !"quoting_options_from_style: argument 0"}
!3111 = distinct !{!3111, !"quoting_options_from_style"}
!3112 = !DILocation(line: 191, column: 10, scope: !2848, inlinedAt: !3099)
!3113 = !DILocation(line: 192, column: 1, scope: !2848, inlinedAt: !3099)
!3114 = !DILocation(line: 1003, column: 13, scope: !3092)
!3115 = !DILocation(line: 1002, column: 26, scope: !3092)
!3116 = !DILocation(line: 144, column: 43, scope: !1720, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 1004, column: 3, scope: !3092)
!3118 = !DILocation(line: 144, column: 51, scope: !1720, inlinedAt: !3117)
!3119 = !DILocation(line: 144, column: 58, scope: !1720, inlinedAt: !3117)
!3120 = !DILocation(line: 146, column: 17, scope: !1720, inlinedAt: !3117)
!3121 = !DILocation(line: 148, column: 57, scope: !1720, inlinedAt: !3117)
!3122 = !DILocation(line: 147, column: 17, scope: !1720, inlinedAt: !3117)
!3123 = !DILocation(line: 149, column: 7, scope: !1720, inlinedAt: !3117)
!3124 = !DILocation(line: 150, column: 12, scope: !1720, inlinedAt: !3117)
!3125 = !DILocation(line: 151, column: 6, scope: !1720, inlinedAt: !3117)
!3126 = !DILocation(line: 1005, column: 10, scope: !3092)
!3127 = !DILocation(line: 1006, column: 1, scope: !3092)
!3128 = !DILocation(line: 1005, column: 3, scope: !3092)
!3129 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !161, file: !161, line: 1009, type: !3130, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!34, !87, !62, !62, !62}
!3132 = !{!3133, !3134, !3135, !3136}
!3133 = !DILocalVariable(name: "n", arg: 1, scope: !3129, file: !161, line: 1009, type: !87)
!3134 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3129, file: !161, line: 1009, type: !62)
!3135 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3129, file: !161, line: 1010, type: !62)
!3136 = !DILocalVariable(name: "arg", arg: 4, scope: !3129, file: !161, line: 1010, type: !62)
!3137 = !DILocation(line: 1009, column: 24, scope: !3129)
!3138 = !DILocation(line: 1009, column: 39, scope: !3129)
!3139 = !DILocation(line: 1010, column: 32, scope: !3129)
!3140 = !DILocation(line: 1010, column: 57, scope: !3129)
!3141 = !DILocalVariable(name: "n", arg: 1, scope: !3142, file: !161, line: 1017, type: !87)
!3142 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !161, file: !161, line: 1017, type: !3143, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!34, !87, !62, !62, !62, !98}
!3145 = !{!3141, !3146, !3147, !3148, !3149, !3150}
!3146 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3142, file: !161, line: 1017, type: !62)
!3147 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3142, file: !161, line: 1018, type: !62)
!3148 = !DILocalVariable(name: "arg", arg: 4, scope: !3142, file: !161, line: 1019, type: !62)
!3149 = !DILocalVariable(name: "argsize", arg: 5, scope: !3142, file: !161, line: 1019, type: !98)
!3150 = !DILocalVariable(name: "o", scope: !3142, file: !161, line: 1021, type: !168)
!3151 = !DILocation(line: 1017, column: 28, scope: !3142, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 1012, column: 10, scope: !3129)
!3153 = !DILocation(line: 1017, column: 43, scope: !3142, inlinedAt: !3152)
!3154 = !DILocation(line: 1018, column: 36, scope: !3142, inlinedAt: !3152)
!3155 = !DILocation(line: 1019, column: 36, scope: !3142, inlinedAt: !3152)
!3156 = !DILocation(line: 1019, column: 48, scope: !3142, inlinedAt: !3152)
!3157 = !DILocation(line: 1021, column: 3, scope: !3142, inlinedAt: !3152)
!3158 = !DILocation(line: 1021, column: 30, scope: !3142, inlinedAt: !3152)
!3159 = !DILocation(line: 1021, column: 26, scope: !3142, inlinedAt: !3152)
!3160 = !DILocation(line: 171, column: 45, scope: !1769, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 1022, column: 3, scope: !3142, inlinedAt: !3152)
!3162 = !DILocation(line: 172, column: 33, scope: !1769, inlinedAt: !3161)
!3163 = !DILocation(line: 172, column: 57, scope: !1769, inlinedAt: !3161)
!3164 = !DILocation(line: 176, column: 6, scope: !1769, inlinedAt: !3161)
!3165 = !DILocation(line: 176, column: 12, scope: !1769, inlinedAt: !3161)
!3166 = !DILocation(line: 177, column: 8, scope: !1785, inlinedAt: !3161)
!3167 = !DILocation(line: 177, column: 23, scope: !1785, inlinedAt: !3161)
!3168 = !DILocation(line: 177, column: 19, scope: !1785, inlinedAt: !3161)
!3169 = !DILocation(line: 178, column: 5, scope: !1785, inlinedAt: !3161)
!3170 = !DILocation(line: 179, column: 6, scope: !1769, inlinedAt: !3161)
!3171 = !DILocation(line: 179, column: 17, scope: !1769, inlinedAt: !3161)
!3172 = !DILocation(line: 180, column: 6, scope: !1769, inlinedAt: !3161)
!3173 = !DILocation(line: 180, column: 18, scope: !1769, inlinedAt: !3161)
!3174 = !DILocation(line: 1023, column: 10, scope: !3142, inlinedAt: !3152)
!3175 = !DILocation(line: 1024, column: 1, scope: !3142, inlinedAt: !3152)
!3176 = !DILocation(line: 1012, column: 3, scope: !3129)
!3177 = !DILocation(line: 1017, column: 28, scope: !3142)
!3178 = !DILocation(line: 1017, column: 43, scope: !3142)
!3179 = !DILocation(line: 1018, column: 36, scope: !3142)
!3180 = !DILocation(line: 1019, column: 36, scope: !3142)
!3181 = !DILocation(line: 1019, column: 48, scope: !3142)
!3182 = !DILocation(line: 1021, column: 3, scope: !3142)
!3183 = !DILocation(line: 1021, column: 30, scope: !3142)
!3184 = !DILocation(line: 1021, column: 26, scope: !3142)
!3185 = !DILocation(line: 171, column: 45, scope: !1769, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 1022, column: 3, scope: !3142)
!3187 = !DILocation(line: 172, column: 33, scope: !1769, inlinedAt: !3186)
!3188 = !DILocation(line: 172, column: 57, scope: !1769, inlinedAt: !3186)
!3189 = !DILocation(line: 176, column: 6, scope: !1769, inlinedAt: !3186)
!3190 = !DILocation(line: 176, column: 12, scope: !1769, inlinedAt: !3186)
!3191 = !DILocation(line: 177, column: 8, scope: !1785, inlinedAt: !3186)
!3192 = !DILocation(line: 177, column: 23, scope: !1785, inlinedAt: !3186)
!3193 = !DILocation(line: 177, column: 19, scope: !1785, inlinedAt: !3186)
!3194 = !DILocation(line: 178, column: 5, scope: !1785, inlinedAt: !3186)
!3195 = !DILocation(line: 179, column: 6, scope: !1769, inlinedAt: !3186)
!3196 = !DILocation(line: 179, column: 17, scope: !1769, inlinedAt: !3186)
!3197 = !DILocation(line: 180, column: 6, scope: !1769, inlinedAt: !3186)
!3198 = !DILocation(line: 180, column: 18, scope: !1769, inlinedAt: !3186)
!3199 = !DILocation(line: 1023, column: 10, scope: !3142)
!3200 = !DILocation(line: 1024, column: 1, scope: !3142)
!3201 = !DILocation(line: 1023, column: 3, scope: !3142)
!3202 = distinct !DISubprogram(name: "quotearg_custom", scope: !161, file: !161, line: 1027, type: !3203, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3205)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!34, !62, !62, !62}
!3205 = !{!3206, !3207, !3208}
!3206 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3202, file: !161, line: 1027, type: !62)
!3207 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3202, file: !161, line: 1027, type: !62)
!3208 = !DILocalVariable(name: "arg", arg: 3, scope: !3202, file: !161, line: 1028, type: !62)
!3209 = !DILocation(line: 1027, column: 30, scope: !3202)
!3210 = !DILocation(line: 1027, column: 54, scope: !3202)
!3211 = !DILocation(line: 1028, column: 30, scope: !3202)
!3212 = !DILocation(line: 1009, column: 24, scope: !3129, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 1030, column: 10, scope: !3202)
!3214 = !DILocation(line: 1009, column: 39, scope: !3129, inlinedAt: !3213)
!3215 = !DILocation(line: 1010, column: 32, scope: !3129, inlinedAt: !3213)
!3216 = !DILocation(line: 1010, column: 57, scope: !3129, inlinedAt: !3213)
!3217 = !DILocation(line: 1017, column: 28, scope: !3142, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 1012, column: 10, scope: !3129, inlinedAt: !3213)
!3219 = !DILocation(line: 1017, column: 43, scope: !3142, inlinedAt: !3218)
!3220 = !DILocation(line: 1018, column: 36, scope: !3142, inlinedAt: !3218)
!3221 = !DILocation(line: 1019, column: 36, scope: !3142, inlinedAt: !3218)
!3222 = !DILocation(line: 1019, column: 48, scope: !3142, inlinedAt: !3218)
!3223 = !DILocation(line: 1021, column: 3, scope: !3142, inlinedAt: !3218)
!3224 = !DILocation(line: 1021, column: 30, scope: !3142, inlinedAt: !3218)
!3225 = !DILocation(line: 1021, column: 26, scope: !3142, inlinedAt: !3218)
!3226 = !DILocation(line: 171, column: 45, scope: !1769, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 1022, column: 3, scope: !3142, inlinedAt: !3218)
!3228 = !DILocation(line: 172, column: 33, scope: !1769, inlinedAt: !3227)
!3229 = !DILocation(line: 172, column: 57, scope: !1769, inlinedAt: !3227)
!3230 = !DILocation(line: 176, column: 6, scope: !1769, inlinedAt: !3227)
!3231 = !DILocation(line: 176, column: 12, scope: !1769, inlinedAt: !3227)
!3232 = !DILocation(line: 177, column: 8, scope: !1785, inlinedAt: !3227)
!3233 = !DILocation(line: 177, column: 23, scope: !1785, inlinedAt: !3227)
!3234 = !DILocation(line: 177, column: 19, scope: !1785, inlinedAt: !3227)
!3235 = !DILocation(line: 178, column: 5, scope: !1785, inlinedAt: !3227)
!3236 = !DILocation(line: 179, column: 6, scope: !1769, inlinedAt: !3227)
!3237 = !DILocation(line: 179, column: 17, scope: !1769, inlinedAt: !3227)
!3238 = !DILocation(line: 180, column: 6, scope: !1769, inlinedAt: !3227)
!3239 = !DILocation(line: 180, column: 18, scope: !1769, inlinedAt: !3227)
!3240 = !DILocation(line: 1023, column: 10, scope: !3142, inlinedAt: !3218)
!3241 = !DILocation(line: 1024, column: 1, scope: !3142, inlinedAt: !3218)
!3242 = !DILocation(line: 1030, column: 3, scope: !3202)
!3243 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !161, file: !161, line: 1034, type: !3244, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!34, !62, !62, !62, !98}
!3246 = !{!3247, !3248, !3249, !3250}
!3247 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3243, file: !161, line: 1034, type: !62)
!3248 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3243, file: !161, line: 1034, type: !62)
!3249 = !DILocalVariable(name: "arg", arg: 3, scope: !3243, file: !161, line: 1035, type: !62)
!3250 = !DILocalVariable(name: "argsize", arg: 4, scope: !3243, file: !161, line: 1035, type: !98)
!3251 = !DILocation(line: 1034, column: 34, scope: !3243)
!3252 = !DILocation(line: 1034, column: 58, scope: !3243)
!3253 = !DILocation(line: 1035, column: 34, scope: !3243)
!3254 = !DILocation(line: 1035, column: 46, scope: !3243)
!3255 = !DILocation(line: 1017, column: 28, scope: !3142, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 1037, column: 10, scope: !3243)
!3257 = !DILocation(line: 1017, column: 43, scope: !3142, inlinedAt: !3256)
!3258 = !DILocation(line: 1018, column: 36, scope: !3142, inlinedAt: !3256)
!3259 = !DILocation(line: 1019, column: 36, scope: !3142, inlinedAt: !3256)
!3260 = !DILocation(line: 1019, column: 48, scope: !3142, inlinedAt: !3256)
!3261 = !DILocation(line: 1021, column: 3, scope: !3142, inlinedAt: !3256)
!3262 = !DILocation(line: 1021, column: 30, scope: !3142, inlinedAt: !3256)
!3263 = !DILocation(line: 1021, column: 26, scope: !3142, inlinedAt: !3256)
!3264 = !DILocation(line: 171, column: 45, scope: !1769, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 1022, column: 3, scope: !3142, inlinedAt: !3256)
!3266 = !DILocation(line: 172, column: 33, scope: !1769, inlinedAt: !3265)
!3267 = !DILocation(line: 172, column: 57, scope: !1769, inlinedAt: !3265)
!3268 = !DILocation(line: 176, column: 6, scope: !1769, inlinedAt: !3265)
!3269 = !DILocation(line: 176, column: 12, scope: !1769, inlinedAt: !3265)
!3270 = !DILocation(line: 177, column: 8, scope: !1785, inlinedAt: !3265)
!3271 = !DILocation(line: 177, column: 23, scope: !1785, inlinedAt: !3265)
!3272 = !DILocation(line: 177, column: 19, scope: !1785, inlinedAt: !3265)
!3273 = !DILocation(line: 178, column: 5, scope: !1785, inlinedAt: !3265)
!3274 = !DILocation(line: 179, column: 6, scope: !1769, inlinedAt: !3265)
!3275 = !DILocation(line: 179, column: 17, scope: !1769, inlinedAt: !3265)
!3276 = !DILocation(line: 180, column: 6, scope: !1769, inlinedAt: !3265)
!3277 = !DILocation(line: 180, column: 18, scope: !1769, inlinedAt: !3265)
!3278 = !DILocation(line: 1023, column: 10, scope: !3142, inlinedAt: !3256)
!3279 = !DILocation(line: 1024, column: 1, scope: !3142, inlinedAt: !3256)
!3280 = !DILocation(line: 1037, column: 3, scope: !3243)
!3281 = distinct !DISubprogram(name: "quote_n_mem", scope: !161, file: !161, line: 1052, type: !3282, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!62, !87, !62, !98}
!3284 = !{!3285, !3286, !3287}
!3285 = !DILocalVariable(name: "n", arg: 1, scope: !3281, file: !161, line: 1052, type: !87)
!3286 = !DILocalVariable(name: "arg", arg: 2, scope: !3281, file: !161, line: 1052, type: !62)
!3287 = !DILocalVariable(name: "argsize", arg: 3, scope: !3281, file: !161, line: 1052, type: !98)
!3288 = !DILocation(line: 1052, column: 18, scope: !3281)
!3289 = !DILocation(line: 1052, column: 33, scope: !3281)
!3290 = !DILocation(line: 1052, column: 45, scope: !3281)
!3291 = !DILocation(line: 1054, column: 10, scope: !3281)
!3292 = !DILocation(line: 1054, column: 3, scope: !3281)
!3293 = distinct !DISubprogram(name: "quote_mem", scope: !161, file: !161, line: 1058, type: !3294, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!62, !62, !98}
!3296 = !{!3297, !3298}
!3297 = !DILocalVariable(name: "arg", arg: 1, scope: !3293, file: !161, line: 1058, type: !62)
!3298 = !DILocalVariable(name: "argsize", arg: 2, scope: !3293, file: !161, line: 1058, type: !98)
!3299 = !DILocation(line: 1058, column: 24, scope: !3293)
!3300 = !DILocation(line: 1058, column: 36, scope: !3293)
!3301 = !DILocation(line: 1052, column: 18, scope: !3281, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 1060, column: 10, scope: !3293)
!3303 = !DILocation(line: 1052, column: 33, scope: !3281, inlinedAt: !3302)
!3304 = !DILocation(line: 1052, column: 45, scope: !3281, inlinedAt: !3302)
!3305 = !DILocation(line: 1054, column: 10, scope: !3281, inlinedAt: !3302)
!3306 = !DILocation(line: 1060, column: 3, scope: !3293)
!3307 = distinct !DISubprogram(name: "quote_n", scope: !161, file: !161, line: 1064, type: !3308, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!62, !87, !62}
!3310 = !{!3311, !3312}
!3311 = !DILocalVariable(name: "n", arg: 1, scope: !3307, file: !161, line: 1064, type: !87)
!3312 = !DILocalVariable(name: "arg", arg: 2, scope: !3307, file: !161, line: 1064, type: !62)
!3313 = !DILocation(line: 1064, column: 14, scope: !3307)
!3314 = !DILocation(line: 1064, column: 29, scope: !3307)
!3315 = !DILocation(line: 1052, column: 18, scope: !3281, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 1066, column: 10, scope: !3307)
!3317 = !DILocation(line: 1052, column: 33, scope: !3281, inlinedAt: !3316)
!3318 = !DILocation(line: 1052, column: 45, scope: !3281, inlinedAt: !3316)
!3319 = !DILocation(line: 1054, column: 10, scope: !3281, inlinedAt: !3316)
!3320 = !DILocation(line: 1066, column: 3, scope: !3307)
!3321 = distinct !DISubprogram(name: "quote", scope: !161, file: !161, line: 1070, type: !3322, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!62, !62}
!3324 = !{!3325}
!3325 = !DILocalVariable(name: "arg", arg: 1, scope: !3321, file: !161, line: 1070, type: !62)
!3326 = !DILocation(line: 1070, column: 20, scope: !3321)
!3327 = !DILocation(line: 1064, column: 14, scope: !3307, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 1072, column: 10, scope: !3321)
!3329 = !DILocation(line: 1064, column: 29, scope: !3307, inlinedAt: !3328)
!3330 = !DILocation(line: 1052, column: 18, scope: !3281, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 1066, column: 10, scope: !3307, inlinedAt: !3328)
!3332 = !DILocation(line: 1052, column: 33, scope: !3281, inlinedAt: !3331)
!3333 = !DILocation(line: 1052, column: 45, scope: !3281, inlinedAt: !3331)
!3334 = !DILocation(line: 1054, column: 10, scope: !3281, inlinedAt: !3331)
!3335 = !DILocation(line: 1072, column: 3, scope: !3321)
!3336 = distinct !DISubprogram(name: "dup_safer", scope: !3337, file: !3337, line: 31, type: !3338, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3340)
!3337 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!87, !87}
!3340 = !{!3341}
!3341 = !DILocalVariable(name: "fd", arg: 1, scope: !3336, file: !3337, line: 31, type: !87)
!3342 = !DILocation(line: 31, column: 16, scope: !3336)
!3343 = !DILocation(line: 33, column: 10, scope: !3336)
!3344 = !DILocation(line: 33, column: 3, scope: !3336)
!3345 = distinct !DISubprogram(name: "version_etc_arn", scope: !618, file: !618, line: 62, type: !3346, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3389)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !3348, !62, !62, !62, !3388, !98}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !746, line: 7, baseType: !3350)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !748, line: 241, size: 1728, elements: !3351)
!3351 = !{!3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3350, file: !748, line: 242, baseType: !87, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3350, file: !748, line: 247, baseType: !34, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3350, file: !748, line: 248, baseType: !34, size: 64, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3350, file: !748, line: 249, baseType: !34, size: 64, offset: 192)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3350, file: !748, line: 250, baseType: !34, size: 64, offset: 256)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3350, file: !748, line: 251, baseType: !34, size: 64, offset: 320)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3350, file: !748, line: 252, baseType: !34, size: 64, offset: 384)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3350, file: !748, line: 253, baseType: !34, size: 64, offset: 448)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3350, file: !748, line: 254, baseType: !34, size: 64, offset: 512)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3350, file: !748, line: 256, baseType: !34, size: 64, offset: 576)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3350, file: !748, line: 257, baseType: !34, size: 64, offset: 640)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3350, file: !748, line: 258, baseType: !34, size: 64, offset: 704)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3350, file: !748, line: 260, baseType: !3365, size: 64, offset: 768)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !748, line: 156, size: 192, elements: !3367)
!3367 = !{!3368, !3369, !3371}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3366, file: !748, line: 157, baseType: !3365, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3366, file: !748, line: 158, baseType: !3370, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3366, file: !748, line: 162, baseType: !87, size: 32, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3350, file: !748, line: 262, baseType: !3370, size: 64, offset: 832)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3350, file: !748, line: 264, baseType: !87, size: 32, offset: 896)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3350, file: !748, line: 268, baseType: !87, size: 32, offset: 928)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3350, file: !748, line: 270, baseType: !774, size: 64, offset: 960)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3350, file: !748, line: 274, baseType: !157, size: 16, offset: 1024)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3350, file: !748, line: 275, baseType: !778, size: 8, offset: 1040)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3350, file: !748, line: 276, baseType: !780, size: 8, offset: 1048)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3350, file: !748, line: 280, baseType: !782, size: 64, offset: 1088)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3350, file: !748, line: 289, baseType: !785, size: 64, offset: 1152)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3350, file: !748, line: 297, baseType: !36, size: 64, offset: 1216)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3350, file: !748, line: 298, baseType: !36, size: 64, offset: 1280)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3350, file: !748, line: 299, baseType: !36, size: 64, offset: 1344)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3350, file: !748, line: 300, baseType: !36, size: 64, offset: 1408)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3350, file: !748, line: 302, baseType: !98, size: 64, offset: 1472)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3350, file: !748, line: 303, baseType: !87, size: 32, offset: 1536)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3350, file: !748, line: 305, baseType: !793, size: 160, offset: 1568)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395}
!3390 = !DILocalVariable(name: "stream", arg: 1, scope: !3345, file: !618, line: 62, type: !3348)
!3391 = !DILocalVariable(name: "command_name", arg: 2, scope: !3345, file: !618, line: 63, type: !62)
!3392 = !DILocalVariable(name: "package", arg: 3, scope: !3345, file: !618, line: 63, type: !62)
!3393 = !DILocalVariable(name: "version", arg: 4, scope: !3345, file: !618, line: 64, type: !62)
!3394 = !DILocalVariable(name: "authors", arg: 5, scope: !3345, file: !618, line: 65, type: !3388)
!3395 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3345, file: !618, line: 65, type: !98)
!3396 = !DILocation(line: 62, column: 24, scope: !3345)
!3397 = !DILocation(line: 63, column: 30, scope: !3345)
!3398 = !DILocation(line: 63, column: 56, scope: !3345)
!3399 = !DILocation(line: 64, column: 30, scope: !3345)
!3400 = !DILocation(line: 65, column: 39, scope: !3345)
!3401 = !DILocation(line: 65, column: 55, scope: !3345)
!3402 = !DILocation(line: 67, column: 7, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3345, file: !618, line: 67, column: 7)
!3404 = !DILocation(line: 67, column: 7, scope: !3345)
!3405 = !DILocation(line: 68, column: 5, scope: !3403)
!3406 = !DILocation(line: 70, column: 5, scope: !3403)
!3407 = !DILocation(line: 84, column: 3, scope: !3345)
!3408 = !DILocation(line: 86, column: 3, scope: !3345)
!3409 = !DILocation(line: 95, column: 3, scope: !3345)
!3410 = !DILocation(line: 99, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3345, file: !618, line: 96, column: 5)
!3412 = !DILocation(line: 102, column: 7, scope: !3411)
!3413 = !DILocation(line: 103, column: 7, scope: !3411)
!3414 = !DILocation(line: 106, column: 7, scope: !3411)
!3415 = !DILocation(line: 107, column: 7, scope: !3411)
!3416 = !DILocation(line: 110, column: 7, scope: !3411)
!3417 = !DILocation(line: 112, column: 7, scope: !3411)
!3418 = !DILocation(line: 117, column: 7, scope: !3411)
!3419 = !DILocation(line: 119, column: 7, scope: !3411)
!3420 = !DILocation(line: 124, column: 7, scope: !3411)
!3421 = !DILocation(line: 126, column: 7, scope: !3411)
!3422 = !DILocation(line: 131, column: 7, scope: !3411)
!3423 = !DILocation(line: 134, column: 7, scope: !3411)
!3424 = !DILocation(line: 139, column: 7, scope: !3411)
!3425 = !DILocation(line: 142, column: 7, scope: !3411)
!3426 = !DILocation(line: 147, column: 7, scope: !3411)
!3427 = !DILocation(line: 151, column: 7, scope: !3411)
!3428 = !DILocation(line: 156, column: 7, scope: !3411)
!3429 = !DILocation(line: 160, column: 7, scope: !3411)
!3430 = !DILocation(line: 167, column: 7, scope: !3411)
!3431 = !DILocation(line: 171, column: 7, scope: !3411)
!3432 = !DILocation(line: 173, column: 1, scope: !3345)
!3433 = distinct !DISubprogram(name: "version_etc_ar", scope: !618, file: !618, line: 180, type: !3434, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3436)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !3348, !62, !62, !62, !3388}
!3436 = !{!3437, !3438, !3439, !3440, !3441, !3442}
!3437 = !DILocalVariable(name: "stream", arg: 1, scope: !3433, file: !618, line: 180, type: !3348)
!3438 = !DILocalVariable(name: "command_name", arg: 2, scope: !3433, file: !618, line: 181, type: !62)
!3439 = !DILocalVariable(name: "package", arg: 3, scope: !3433, file: !618, line: 181, type: !62)
!3440 = !DILocalVariable(name: "version", arg: 4, scope: !3433, file: !618, line: 182, type: !62)
!3441 = !DILocalVariable(name: "authors", arg: 5, scope: !3433, file: !618, line: 182, type: !3388)
!3442 = !DILocalVariable(name: "n_authors", scope: !3433, file: !618, line: 184, type: !98)
!3443 = !DILocation(line: 180, column: 23, scope: !3433)
!3444 = !DILocation(line: 181, column: 29, scope: !3433)
!3445 = !DILocation(line: 181, column: 55, scope: !3433)
!3446 = !DILocation(line: 182, column: 29, scope: !3433)
!3447 = !DILocation(line: 182, column: 59, scope: !3433)
!3448 = !DILocation(line: 184, column: 10, scope: !3433)
!3449 = !DILocation(line: 186, column: 8, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3433, file: !618, line: 186, column: 3)
!3451 = !DILocation(line: 186, column: 23, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3450, file: !618, line: 186, column: 3)
!3453 = !DILocation(line: 186, column: 3, scope: !3450)
!3454 = !DILocation(line: 186, column: 52, scope: !3452)
!3455 = distinct !{!3455, !3453, !3456}
!3456 = !DILocation(line: 187, column: 5, scope: !3450)
!3457 = !DILocation(line: 188, column: 3, scope: !3433)
!3458 = !DILocation(line: 189, column: 1, scope: !3433)
!3459 = distinct !DISubprogram(name: "version_etc_va", scope: !618, file: !618, line: 196, type: !3460, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3469)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{null, !3348, !62, !62, !62, !3462}
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !615, line: 189, size: 192, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3463, file: !615, line: 189, baseType: !174, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3463, file: !615, line: 189, baseType: !174, size: 32, offset: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3463, file: !615, line: 189, baseType: !36, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3463, file: !615, line: 189, baseType: !36, size: 64, offset: 128)
!3469 = !{!3470, !3471, !3472, !3473, !3474, !3475, !3476}
!3470 = !DILocalVariable(name: "stream", arg: 1, scope: !3459, file: !618, line: 196, type: !3348)
!3471 = !DILocalVariable(name: "command_name", arg: 2, scope: !3459, file: !618, line: 197, type: !62)
!3472 = !DILocalVariable(name: "package", arg: 3, scope: !3459, file: !618, line: 197, type: !62)
!3473 = !DILocalVariable(name: "version", arg: 4, scope: !3459, file: !618, line: 198, type: !62)
!3474 = !DILocalVariable(name: "authors", arg: 5, scope: !3459, file: !618, line: 198, type: !3462)
!3475 = !DILocalVariable(name: "n_authors", scope: !3459, file: !618, line: 200, type: !98)
!3476 = !DILocalVariable(name: "authtab", scope: !3459, file: !618, line: 201, type: !3477)
!3477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 640, elements: !164)
!3478 = !DILocation(line: 196, column: 23, scope: !3459)
!3479 = !DILocation(line: 197, column: 29, scope: !3459)
!3480 = !DILocation(line: 197, column: 55, scope: !3459)
!3481 = !DILocation(line: 198, column: 29, scope: !3459)
!3482 = !DILocation(line: 198, column: 46, scope: !3459)
!3483 = !DILocation(line: 201, column: 3, scope: !3459)
!3484 = !DILocation(line: 201, column: 15, scope: !3459)
!3485 = !DILocation(line: 200, column: 10, scope: !3459)
!3486 = !DILocation(line: 205, column: 35, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !618, line: 203, column: 3)
!3488 = distinct !DILexicalBlock(scope: !3459, file: !618, line: 203, column: 3)
!3489 = !DILocation(line: 205, column: 14, scope: !3487)
!3490 = !DILocation(line: 205, column: 33, scope: !3487)
!3491 = !DILocation(line: 205, column: 67, scope: !3487)
!3492 = !DILocation(line: 203, column: 3, scope: !3488)
!3493 = !DILocation(line: 208, column: 3, scope: !3459)
!3494 = !DILocation(line: 210, column: 1, scope: !3459)
!3495 = distinct !DISubprogram(name: "version_etc", scope: !618, file: !618, line: 227, type: !3496, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{null, !3348, !62, !62, !62, null}
!3498 = !{!3499, !3500, !3501, !3502, !3503}
!3499 = !DILocalVariable(name: "stream", arg: 1, scope: !3495, file: !618, line: 227, type: !3348)
!3500 = !DILocalVariable(name: "command_name", arg: 2, scope: !3495, file: !618, line: 228, type: !62)
!3501 = !DILocalVariable(name: "package", arg: 3, scope: !3495, file: !618, line: 228, type: !62)
!3502 = !DILocalVariable(name: "version", arg: 4, scope: !3495, file: !618, line: 229, type: !62)
!3503 = !DILocalVariable(name: "authors", scope: !3495, file: !618, line: 231, type: !3504)
!3504 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1187, line: 46, baseType: !3505)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !222, line: 48, baseType: !3506)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !615, line: 231, baseType: !3507)
!3507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3463, size: 192, elements: !231)
!3508 = !DILocation(line: 227, column: 20, scope: !3495)
!3509 = !DILocation(line: 228, column: 26, scope: !3495)
!3510 = !DILocation(line: 228, column: 52, scope: !3495)
!3511 = !DILocation(line: 229, column: 26, scope: !3495)
!3512 = !DILocation(line: 231, column: 3, scope: !3495)
!3513 = !DILocation(line: 231, column: 11, scope: !3495)
!3514 = !DILocation(line: 233, column: 3, scope: !3495)
!3515 = !DILocation(line: 234, column: 3, scope: !3495)
!3516 = !DILocation(line: 235, column: 3, scope: !3495)
!3517 = !DILocation(line: 236, column: 1, scope: !3495)
!3518 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !618, file: !618, line: 239, type: !1148, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !107)
!3519 = !DILocation(line: 245, column: 3, scope: !3518)
!3520 = !DILocation(line: 251, column: 3, scope: !3518)
!3521 = !DILocation(line: 256, column: 3, scope: !3518)
!3522 = !DILocation(line: 258, column: 1, scope: !3518)
!3523 = distinct !DISubprogram(name: "xnmalloc", scope: !626, file: !626, line: 105, type: !3524, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!36, !98, !98}
!3526 = !{!3527, !3528}
!3527 = !DILocalVariable(name: "n", arg: 1, scope: !3523, file: !626, line: 105, type: !98)
!3528 = !DILocalVariable(name: "s", arg: 2, scope: !3523, file: !626, line: 105, type: !98)
!3529 = !DILocation(line: 105, column: 18, scope: !3523)
!3530 = !DILocation(line: 105, column: 28, scope: !3523)
!3531 = !DILocation(line: 107, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3523, file: !626, line: 107, column: 7)
!3533 = !DILocation(line: 107, column: 7, scope: !3523)
!3534 = !DILocation(line: 108, column: 5, scope: !3532)
!3535 = !DILocation(line: 109, column: 21, scope: !3523)
!3536 = !DILocalVariable(name: "n", arg: 1, scope: !3537, file: !3538, line: 39, type: !98)
!3537 = distinct !DISubprogram(name: "xmalloc", scope: !3538, file: !3538, line: 39, type: !3539, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3541)
!3538 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!36, !98}
!3541 = !{!3536, !3542}
!3542 = !DILocalVariable(name: "p", scope: !3537, file: !3538, line: 41, type: !36)
!3543 = !DILocation(line: 39, column: 17, scope: !3537, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 109, column: 10, scope: !3523)
!3545 = !DILocation(line: 41, column: 13, scope: !3537, inlinedAt: !3544)
!3546 = !DILocation(line: 41, column: 9, scope: !3537, inlinedAt: !3544)
!3547 = !DILocation(line: 42, column: 8, scope: !3548, inlinedAt: !3544)
!3548 = distinct !DILexicalBlock(scope: !3537, file: !3538, line: 42, column: 7)
!3549 = !DILocation(line: 42, column: 15, scope: !3548, inlinedAt: !3544)
!3550 = !DILocation(line: 42, column: 10, scope: !3548, inlinedAt: !3544)
!3551 = !DILocation(line: 43, column: 5, scope: !3548, inlinedAt: !3544)
!3552 = !DILocation(line: 109, column: 3, scope: !3523)
!3553 = !DILocation(line: 39, column: 17, scope: !3537)
!3554 = !DILocation(line: 41, column: 13, scope: !3537)
!3555 = !DILocation(line: 41, column: 9, scope: !3537)
!3556 = !DILocation(line: 42, column: 8, scope: !3548)
!3557 = !DILocation(line: 42, column: 15, scope: !3548)
!3558 = !DILocation(line: 42, column: 10, scope: !3548)
!3559 = !DILocation(line: 43, column: 5, scope: !3548)
!3560 = !DILocation(line: 44, column: 3, scope: !3537)
!3561 = distinct !DISubprogram(name: "xnrealloc", scope: !626, file: !626, line: 118, type: !3562, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!36, !36, !98, !98}
!3564 = !{!3565, !3566, !3567}
!3565 = !DILocalVariable(name: "p", arg: 1, scope: !3561, file: !626, line: 118, type: !36)
!3566 = !DILocalVariable(name: "n", arg: 2, scope: !3561, file: !626, line: 118, type: !98)
!3567 = !DILocalVariable(name: "s", arg: 3, scope: !3561, file: !626, line: 118, type: !98)
!3568 = !DILocation(line: 118, column: 18, scope: !3561)
!3569 = !DILocation(line: 118, column: 28, scope: !3561)
!3570 = !DILocation(line: 118, column: 38, scope: !3561)
!3571 = !DILocation(line: 120, column: 7, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3561, file: !626, line: 120, column: 7)
!3573 = !DILocation(line: 120, column: 7, scope: !3561)
!3574 = !DILocation(line: 121, column: 5, scope: !3572)
!3575 = !DILocation(line: 122, column: 25, scope: !3561)
!3576 = !DILocalVariable(name: "p", arg: 1, scope: !3577, file: !3538, line: 51, type: !36)
!3577 = distinct !DISubprogram(name: "xrealloc", scope: !3538, file: !3538, line: 51, type: !3578, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3580)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!36, !36, !98}
!3580 = !{!3576, !3581}
!3581 = !DILocalVariable(name: "n", arg: 2, scope: !3577, file: !3538, line: 51, type: !98)
!3582 = !DILocation(line: 51, column: 17, scope: !3577, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 122, column: 10, scope: !3561)
!3584 = !DILocation(line: 51, column: 27, scope: !3577, inlinedAt: !3583)
!3585 = !DILocation(line: 53, column: 8, scope: !3586, inlinedAt: !3583)
!3586 = distinct !DILexicalBlock(scope: !3577, file: !3538, line: 53, column: 7)
!3587 = !DILocation(line: 53, column: 13, scope: !3586, inlinedAt: !3583)
!3588 = !DILocation(line: 53, column: 10, scope: !3586, inlinedAt: !3583)
!3589 = !DILocation(line: 57, column: 7, scope: !3590, inlinedAt: !3583)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !3538, line: 54, column: 5)
!3591 = !DILocation(line: 58, column: 7, scope: !3590, inlinedAt: !3583)
!3592 = !DILocation(line: 61, column: 7, scope: !3577, inlinedAt: !3583)
!3593 = !DILocation(line: 62, column: 8, scope: !3594, inlinedAt: !3583)
!3594 = distinct !DILexicalBlock(scope: !3577, file: !3538, line: 62, column: 7)
!3595 = !DILocation(line: 62, column: 13, scope: !3594, inlinedAt: !3583)
!3596 = !DILocation(line: 62, column: 10, scope: !3594, inlinedAt: !3583)
!3597 = !DILocation(line: 63, column: 5, scope: !3594, inlinedAt: !3583)
!3598 = !DILocation(line: 122, column: 3, scope: !3561)
!3599 = !DILocation(line: 51, column: 17, scope: !3577)
!3600 = !DILocation(line: 51, column: 27, scope: !3577)
!3601 = !DILocation(line: 53, column: 8, scope: !3586)
!3602 = !DILocation(line: 53, column: 13, scope: !3586)
!3603 = !DILocation(line: 53, column: 10, scope: !3586)
!3604 = !DILocation(line: 57, column: 7, scope: !3590)
!3605 = !DILocation(line: 58, column: 7, scope: !3590)
!3606 = !DILocation(line: 61, column: 7, scope: !3577)
!3607 = !DILocation(line: 62, column: 8, scope: !3594)
!3608 = !DILocation(line: 62, column: 13, scope: !3594)
!3609 = !DILocation(line: 62, column: 10, scope: !3594)
!3610 = !DILocation(line: 63, column: 5, scope: !3594)
!3611 = !DILocation(line: 65, column: 1, scope: !3577)
!3612 = !DILocation(line: 180, column: 19, scope: !627)
!3613 = !DILocation(line: 180, column: 30, scope: !627)
!3614 = !DILocation(line: 180, column: 41, scope: !627)
!3615 = !DILocation(line: 182, column: 14, scope: !627)
!3616 = !DILocation(line: 182, column: 10, scope: !627)
!3617 = !DILocation(line: 184, column: 9, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !627, file: !626, line: 184, column: 7)
!3619 = !DILocation(line: 184, column: 7, scope: !627)
!3620 = !DILocation(line: 186, column: 13, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !626, line: 186, column: 11)
!3622 = distinct !DILexicalBlock(scope: !3618, file: !626, line: 185, column: 5)
!3623 = !DILocation(line: 186, column: 11, scope: !3622)
!3624 = !DILocation(line: 194, column: 30, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3621, file: !626, line: 187, column: 9)
!3626 = !DILocation(line: 195, column: 16, scope: !3625)
!3627 = !DILocation(line: 195, column: 13, scope: !3625)
!3628 = !DILocation(line: 196, column: 9, scope: !3625)
!3629 = !DILocation(line: 204, column: 69, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !626, line: 204, column: 11)
!3631 = distinct !DILexicalBlock(scope: !3618, file: !626, line: 199, column: 5)
!3632 = !DILocation(line: 205, column: 11, scope: !3630)
!3633 = !DILocation(line: 204, column: 11, scope: !3631)
!3634 = !DILocation(line: 206, column: 9, scope: !3630)
!3635 = !DILocation(line: 210, column: 7, scope: !627)
!3636 = !DILocation(line: 211, column: 25, scope: !627)
!3637 = !DILocation(line: 51, column: 17, scope: !3577, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 211, column: 10, scope: !627)
!3639 = !DILocation(line: 51, column: 27, scope: !3577, inlinedAt: !3638)
!3640 = !DILocation(line: 53, column: 10, scope: !3586, inlinedAt: !3638)
!3641 = !DILocation(line: 207, column: 14, scope: !3631)
!3642 = !DILocation(line: 207, column: 18, scope: !3631)
!3643 = !DILocation(line: 207, column: 9, scope: !3631)
!3644 = !DILocation(line: 53, column: 8, scope: !3586, inlinedAt: !3638)
!3645 = !DILocation(line: 57, column: 7, scope: !3590, inlinedAt: !3638)
!3646 = !DILocation(line: 58, column: 7, scope: !3590, inlinedAt: !3638)
!3647 = !DILocation(line: 61, column: 7, scope: !3577, inlinedAt: !3638)
!3648 = !DILocation(line: 62, column: 8, scope: !3594, inlinedAt: !3638)
!3649 = !DILocation(line: 62, column: 13, scope: !3594, inlinedAt: !3638)
!3650 = !DILocation(line: 62, column: 10, scope: !3594, inlinedAt: !3638)
!3651 = !DILocation(line: 63, column: 5, scope: !3594, inlinedAt: !3638)
!3652 = !DILocation(line: 211, column: 3, scope: !627)
!3653 = distinct !DISubprogram(name: "xcharalloc", scope: !626, file: !626, line: 220, type: !2615, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3654)
!3654 = !{!3655}
!3655 = !DILocalVariable(name: "n", arg: 1, scope: !3653, file: !626, line: 220, type: !98)
!3656 = !DILocation(line: 220, column: 20, scope: !3653)
!3657 = !DILocation(line: 39, column: 17, scope: !3537, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 222, column: 10, scope: !3653)
!3659 = !DILocation(line: 41, column: 13, scope: !3537, inlinedAt: !3658)
!3660 = !DILocation(line: 41, column: 9, scope: !3537, inlinedAt: !3658)
!3661 = !DILocation(line: 42, column: 8, scope: !3548, inlinedAt: !3658)
!3662 = !DILocation(line: 42, column: 15, scope: !3548, inlinedAt: !3658)
!3663 = !DILocation(line: 42, column: 10, scope: !3548, inlinedAt: !3658)
!3664 = !DILocation(line: 43, column: 5, scope: !3548, inlinedAt: !3658)
!3665 = !DILocation(line: 222, column: 3, scope: !3653)
!3666 = distinct !DISubprogram(name: "x2realloc", scope: !3538, file: !3538, line: 74, type: !3667, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!36, !36, !630}
!3669 = !{!3670, !3671}
!3670 = !DILocalVariable(name: "p", arg: 1, scope: !3666, file: !3538, line: 74, type: !36)
!3671 = !DILocalVariable(name: "pn", arg: 2, scope: !3666, file: !3538, line: 74, type: !630)
!3672 = !DILocation(line: 74, column: 18, scope: !3666)
!3673 = !DILocation(line: 74, column: 29, scope: !3666)
!3674 = !DILocation(line: 180, column: 19, scope: !627, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 76, column: 10, scope: !3666)
!3676 = !DILocation(line: 180, column: 30, scope: !627, inlinedAt: !3675)
!3677 = !DILocation(line: 180, column: 41, scope: !627, inlinedAt: !3675)
!3678 = !DILocation(line: 182, column: 14, scope: !627, inlinedAt: !3675)
!3679 = !DILocation(line: 182, column: 10, scope: !627, inlinedAt: !3675)
!3680 = !DILocation(line: 184, column: 9, scope: !3618, inlinedAt: !3675)
!3681 = !DILocation(line: 184, column: 7, scope: !627, inlinedAt: !3675)
!3682 = !DILocation(line: 186, column: 13, scope: !3621, inlinedAt: !3675)
!3683 = !DILocation(line: 186, column: 11, scope: !3622, inlinedAt: !3675)
!3684 = !DILocation(line: 210, column: 7, scope: !627, inlinedAt: !3675)
!3685 = !DILocation(line: 51, column: 17, scope: !3577, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 211, column: 10, scope: !627, inlinedAt: !3675)
!3687 = !DILocation(line: 51, column: 27, scope: !3577, inlinedAt: !3686)
!3688 = !DILocation(line: 53, column: 10, scope: !3586, inlinedAt: !3686)
!3689 = !DILocation(line: 205, column: 11, scope: !3630, inlinedAt: !3675)
!3690 = !DILocation(line: 204, column: 11, scope: !3631, inlinedAt: !3675)
!3691 = !DILocation(line: 206, column: 9, scope: !3630, inlinedAt: !3675)
!3692 = !DILocation(line: 207, column: 14, scope: !3631, inlinedAt: !3675)
!3693 = !DILocation(line: 207, column: 18, scope: !3631, inlinedAt: !3675)
!3694 = !DILocation(line: 207, column: 9, scope: !3631, inlinedAt: !3675)
!3695 = !DILocation(line: 53, column: 8, scope: !3586, inlinedAt: !3686)
!3696 = !DILocation(line: 57, column: 7, scope: !3590, inlinedAt: !3686)
!3697 = !DILocation(line: 58, column: 7, scope: !3590, inlinedAt: !3686)
!3698 = !DILocation(line: 61, column: 7, scope: !3577, inlinedAt: !3686)
!3699 = !DILocation(line: 62, column: 8, scope: !3594, inlinedAt: !3686)
!3700 = !DILocation(line: 62, column: 13, scope: !3594, inlinedAt: !3686)
!3701 = !DILocation(line: 62, column: 10, scope: !3594, inlinedAt: !3686)
!3702 = !DILocation(line: 63, column: 5, scope: !3594, inlinedAt: !3686)
!3703 = !DILocation(line: 76, column: 3, scope: !3666)
!3704 = distinct !DISubprogram(name: "xzalloc", scope: !3538, file: !3538, line: 84, type: !3539, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3705)
!3705 = !{!3706}
!3706 = !DILocalVariable(name: "s", arg: 1, scope: !3704, file: !3538, line: 84, type: !98)
!3707 = !DILocation(line: 84, column: 17, scope: !3704)
!3708 = !DILocation(line: 39, column: 17, scope: !3537, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 86, column: 18, scope: !3704)
!3710 = !DILocation(line: 41, column: 13, scope: !3537, inlinedAt: !3709)
!3711 = !DILocation(line: 41, column: 9, scope: !3537, inlinedAt: !3709)
!3712 = !DILocation(line: 42, column: 8, scope: !3548, inlinedAt: !3709)
!3713 = !DILocation(line: 42, column: 15, scope: !3548, inlinedAt: !3709)
!3714 = !DILocation(line: 42, column: 10, scope: !3548, inlinedAt: !3709)
!3715 = !DILocation(line: 43, column: 5, scope: !3548, inlinedAt: !3709)
!3716 = !DILocation(line: 86, column: 10, scope: !3704)
!3717 = !DILocation(line: 86, column: 3, scope: !3704)
!3718 = distinct !DISubprogram(name: "xcalloc", scope: !3538, file: !3538, line: 93, type: !3524, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3719)
!3719 = !{!3720, !3721, !3722}
!3720 = !DILocalVariable(name: "n", arg: 1, scope: !3718, file: !3538, line: 93, type: !98)
!3721 = !DILocalVariable(name: "s", arg: 2, scope: !3718, file: !3538, line: 93, type: !98)
!3722 = !DILocalVariable(name: "p", scope: !3718, file: !3538, line: 95, type: !36)
!3723 = !DILocation(line: 93, column: 17, scope: !3718)
!3724 = !DILocation(line: 93, column: 27, scope: !3718)
!3725 = !DILocation(line: 100, column: 7, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3718, file: !3538, line: 100, column: 7)
!3727 = !DILocation(line: 101, column: 7, scope: !3726)
!3728 = !DILocation(line: 101, column: 18, scope: !3726)
!3729 = !DILocation(line: 95, column: 9, scope: !3718)
!3730 = !DILocation(line: 101, column: 16, scope: !3726)
!3731 = !DILocation(line: 100, column: 7, scope: !3718)
!3732 = !DILocation(line: 102, column: 5, scope: !3726)
!3733 = !DILocation(line: 103, column: 3, scope: !3718)
!3734 = distinct !DISubprogram(name: "xmemdup", scope: !3538, file: !3538, line: 111, type: !3735, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3739)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!36, !3737, !98}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3739 = !{!3740, !3741}
!3740 = !DILocalVariable(name: "p", arg: 1, scope: !3734, file: !3538, line: 111, type: !3737)
!3741 = !DILocalVariable(name: "s", arg: 2, scope: !3734, file: !3538, line: 111, type: !98)
!3742 = !DILocation(line: 111, column: 22, scope: !3734)
!3743 = !DILocation(line: 111, column: 32, scope: !3734)
!3744 = !DILocation(line: 39, column: 17, scope: !3537, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 113, column: 18, scope: !3734)
!3746 = !DILocation(line: 41, column: 13, scope: !3537, inlinedAt: !3745)
!3747 = !DILocation(line: 41, column: 9, scope: !3537, inlinedAt: !3745)
!3748 = !DILocation(line: 42, column: 8, scope: !3548, inlinedAt: !3745)
!3749 = !DILocation(line: 42, column: 15, scope: !3548, inlinedAt: !3745)
!3750 = !DILocation(line: 42, column: 10, scope: !3548, inlinedAt: !3745)
!3751 = !DILocation(line: 43, column: 5, scope: !3548, inlinedAt: !3745)
!3752 = !DILocation(line: 113, column: 10, scope: !3734)
!3753 = !DILocation(line: 113, column: 3, scope: !3734)
!3754 = distinct !DISubprogram(name: "xstrdup", scope: !3538, file: !3538, line: 119, type: !2815, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3755)
!3755 = !{!3756}
!3756 = !DILocalVariable(name: "string", arg: 1, scope: !3754, file: !3538, line: 119, type: !62)
!3757 = !DILocation(line: 119, column: 22, scope: !3754)
!3758 = !DILocation(line: 121, column: 27, scope: !3754)
!3759 = !DILocation(line: 121, column: 43, scope: !3754)
!3760 = !DILocation(line: 111, column: 22, scope: !3734, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 121, column: 10, scope: !3754)
!3762 = !DILocation(line: 111, column: 32, scope: !3734, inlinedAt: !3761)
!3763 = !DILocation(line: 39, column: 17, scope: !3537, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 113, column: 18, scope: !3734, inlinedAt: !3761)
!3765 = !DILocation(line: 41, column: 13, scope: !3537, inlinedAt: !3764)
!3766 = !DILocation(line: 41, column: 9, scope: !3537, inlinedAt: !3764)
!3767 = !DILocation(line: 42, column: 8, scope: !3548, inlinedAt: !3764)
!3768 = !DILocation(line: 42, column: 15, scope: !3548, inlinedAt: !3764)
!3769 = !DILocation(line: 42, column: 10, scope: !3548, inlinedAt: !3764)
!3770 = !DILocation(line: 43, column: 5, scope: !3548, inlinedAt: !3764)
!3771 = !DILocation(line: 113, column: 10, scope: !3734, inlinedAt: !3761)
!3772 = !DILocation(line: 121, column: 3, scope: !3754)
!3773 = distinct !DISubprogram(name: "xalloc_die", scope: !3774, file: !3774, line: 32, type: !1148, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !639, variables: !107)
!3774 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3775 = !DILocation(line: 34, column: 10, scope: !3773)
!3776 = !DILocation(line: 34, column: 33, scope: !3773)
!3777 = !DILocation(line: 34, column: 3, scope: !3773)
!3778 = !DILocation(line: 40, column: 3, scope: !3773)
!3779 = distinct !DISubprogram(name: "xmemcoll", scope: !3780, file: !3780, line: 54, type: !3781, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !641, variables: !3783)
!3780 = !DIFile(filename: "lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!87, !34, !98, !34, !98}
!3783 = !{!3784, !3785, !3786, !3787, !3788, !3789}
!3784 = !DILocalVariable(name: "s1", arg: 1, scope: !3779, file: !3780, line: 54, type: !34)
!3785 = !DILocalVariable(name: "s1len", arg: 2, scope: !3779, file: !3780, line: 54, type: !98)
!3786 = !DILocalVariable(name: "s2", arg: 3, scope: !3779, file: !3780, line: 54, type: !34)
!3787 = !DILocalVariable(name: "s2len", arg: 4, scope: !3779, file: !3780, line: 54, type: !98)
!3788 = !DILocalVariable(name: "diff", scope: !3779, file: !3780, line: 56, type: !87)
!3789 = !DILocalVariable(name: "collation_errno", scope: !3779, file: !3780, line: 57, type: !87)
!3790 = !DILocation(line: 54, column: 17, scope: !3779)
!3791 = !DILocation(line: 54, column: 28, scope: !3779)
!3792 = !DILocation(line: 54, column: 41, scope: !3779)
!3793 = !DILocation(line: 54, column: 52, scope: !3779)
!3794 = !DILocation(line: 56, column: 14, scope: !3779)
!3795 = !DILocation(line: 56, column: 7, scope: !3779)
!3796 = !DILocation(line: 57, column: 25, scope: !3779)
!3797 = !DILocation(line: 57, column: 7, scope: !3779)
!3798 = !DILocation(line: 58, column: 7, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3779, file: !3780, line: 58, column: 7)
!3800 = !DILocation(line: 58, column: 7, scope: !3779)
!3801 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !3802, file: !3780, line: 35, type: !87)
!3802 = distinct !DISubprogram(name: "collate_error", scope: !3780, file: !3780, line: 35, type: !3803, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !641, variables: !3805)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !87, !62, !98, !62, !98}
!3805 = !{!3801, !3806, !3807, !3808, !3809}
!3806 = !DILocalVariable(name: "s1", arg: 2, scope: !3802, file: !3780, line: 36, type: !62)
!3807 = !DILocalVariable(name: "s1len", arg: 3, scope: !3802, file: !3780, line: 36, type: !98)
!3808 = !DILocalVariable(name: "s2", arg: 4, scope: !3802, file: !3780, line: 37, type: !62)
!3809 = !DILocalVariable(name: "s2len", arg: 5, scope: !3802, file: !3780, line: 37, type: !98)
!3810 = !DILocation(line: 35, column: 20, scope: !3802, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 59, column: 5, scope: !3799)
!3812 = !DILocation(line: 36, column: 28, scope: !3802, inlinedAt: !3811)
!3813 = !DILocation(line: 36, column: 39, scope: !3802, inlinedAt: !3811)
!3814 = !DILocation(line: 37, column: 28, scope: !3802, inlinedAt: !3811)
!3815 = !DILocation(line: 37, column: 39, scope: !3802, inlinedAt: !3811)
!3816 = !DILocation(line: 39, column: 30, scope: !3802, inlinedAt: !3811)
!3817 = !DILocation(line: 39, column: 3, scope: !3802, inlinedAt: !3811)
!3818 = !DILocation(line: 40, column: 16, scope: !3802, inlinedAt: !3811)
!3819 = !DILocation(line: 40, column: 3, scope: !3802, inlinedAt: !3811)
!3820 = !DILocation(line: 41, column: 10, scope: !3802, inlinedAt: !3811)
!3821 = !DILocation(line: 42, column: 10, scope: !3802, inlinedAt: !3811)
!3822 = !DILocation(line: 43, column: 10, scope: !3802, inlinedAt: !3811)
!3823 = !DILocation(line: 44, column: 10, scope: !3802, inlinedAt: !3811)
!3824 = !DILocation(line: 41, column: 3, scope: !3802, inlinedAt: !3811)
!3825 = !DILocation(line: 59, column: 5, scope: !3799)
!3826 = !DILocation(line: 60, column: 3, scope: !3779)
!3827 = distinct !DISubprogram(name: "xmemcoll0", scope: !3780, file: !3780, line: 69, type: !1615, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !641, variables: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834}
!3829 = !DILocalVariable(name: "s1", arg: 1, scope: !3827, file: !3780, line: 69, type: !62)
!3830 = !DILocalVariable(name: "s1size", arg: 2, scope: !3827, file: !3780, line: 69, type: !98)
!3831 = !DILocalVariable(name: "s2", arg: 3, scope: !3827, file: !3780, line: 69, type: !62)
!3832 = !DILocalVariable(name: "s2size", arg: 4, scope: !3827, file: !3780, line: 69, type: !98)
!3833 = !DILocalVariable(name: "diff", scope: !3827, file: !3780, line: 71, type: !87)
!3834 = !DILocalVariable(name: "collation_errno", scope: !3827, file: !3780, line: 72, type: !87)
!3835 = !DILocation(line: 69, column: 24, scope: !3827)
!3836 = !DILocation(line: 69, column: 35, scope: !3827)
!3837 = !DILocation(line: 69, column: 55, scope: !3827)
!3838 = !DILocation(line: 69, column: 66, scope: !3827)
!3839 = !DILocation(line: 71, column: 14, scope: !3827)
!3840 = !DILocation(line: 71, column: 7, scope: !3827)
!3841 = !DILocation(line: 72, column: 25, scope: !3827)
!3842 = !DILocation(line: 72, column: 7, scope: !3827)
!3843 = !DILocation(line: 73, column: 7, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3827, file: !3780, line: 73, column: 7)
!3845 = !DILocation(line: 73, column: 7, scope: !3827)
!3846 = !DILocation(line: 74, column: 48, scope: !3844)
!3847 = !DILocation(line: 74, column: 64, scope: !3844)
!3848 = !DILocation(line: 35, column: 20, scope: !3802, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 74, column: 5, scope: !3844)
!3850 = !DILocation(line: 36, column: 28, scope: !3802, inlinedAt: !3849)
!3851 = !DILocation(line: 36, column: 39, scope: !3802, inlinedAt: !3849)
!3852 = !DILocation(line: 37, column: 28, scope: !3802, inlinedAt: !3849)
!3853 = !DILocation(line: 37, column: 39, scope: !3802, inlinedAt: !3849)
!3854 = !DILocation(line: 39, column: 30, scope: !3802, inlinedAt: !3849)
!3855 = !DILocation(line: 39, column: 3, scope: !3802, inlinedAt: !3849)
!3856 = !DILocation(line: 40, column: 16, scope: !3802, inlinedAt: !3849)
!3857 = !DILocation(line: 40, column: 3, scope: !3802, inlinedAt: !3849)
!3858 = !DILocation(line: 41, column: 10, scope: !3802, inlinedAt: !3849)
!3859 = !DILocation(line: 42, column: 10, scope: !3802, inlinedAt: !3849)
!3860 = !DILocation(line: 43, column: 10, scope: !3802, inlinedAt: !3849)
!3861 = !DILocation(line: 44, column: 10, scope: !3802, inlinedAt: !3849)
!3862 = !DILocation(line: 41, column: 3, scope: !3802, inlinedAt: !3849)
!3863 = !DILocation(line: 74, column: 5, scope: !3844)
!3864 = !DILocation(line: 75, column: 3, scope: !3827)
!3865 = distinct !DISubprogram(name: "rpl_calloc", scope: !3866, file: !3866, line: 42, type: !3524, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !644, variables: !3867)
!3866 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3867 = !{!3868, !3869, !3870, !3871}
!3868 = !DILocalVariable(name: "n", arg: 1, scope: !3865, file: !3866, line: 42, type: !98)
!3869 = !DILocalVariable(name: "s", arg: 2, scope: !3865, file: !3866, line: 42, type: !98)
!3870 = !DILocalVariable(name: "result", scope: !3865, file: !3866, line: 44, type: !36)
!3871 = !DILocalVariable(name: "bytes", scope: !3872, file: !3866, line: 56, type: !98)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !3866, line: 53, column: 5)
!3873 = distinct !DILexicalBlock(scope: !3865, file: !3866, line: 47, column: 7)
!3874 = !DILocation(line: 42, column: 20, scope: !3865)
!3875 = !DILocation(line: 42, column: 30, scope: !3865)
!3876 = !DILocation(line: 47, column: 9, scope: !3873)
!3877 = !DILocation(line: 47, column: 19, scope: !3873)
!3878 = !DILocation(line: 47, column: 14, scope: !3873)
!3879 = !DILocation(line: 56, column: 24, scope: !3872)
!3880 = !DILocation(line: 56, column: 14, scope: !3872)
!3881 = !DILocation(line: 57, column: 17, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3872, file: !3866, line: 57, column: 11)
!3883 = !DILocation(line: 57, column: 21, scope: !3882)
!3884 = !DILocation(line: 57, column: 11, scope: !3872)
!3885 = !DILocation(line: 59, column: 11, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3882, file: !3866, line: 58, column: 9)
!3887 = !DILocation(line: 59, column: 17, scope: !3886)
!3888 = !DILocation(line: 65, column: 12, scope: !3865)
!3889 = !DILocation(line: 44, column: 9, scope: !3865)
!3890 = !DILocation(line: 72, column: 3, scope: !3865)
!3891 = !DILocation(line: 73, column: 1, scope: !3865)
!3892 = distinct !DISubprogram(name: "rpl_fclose", scope: !3893, file: !3893, line: 56, type: !3894, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !3936)
!3893 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!87, !3896}
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !746, line: 7, baseType: !3898)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !748, line: 241, size: 1728, elements: !3899)
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3898, file: !748, line: 242, baseType: !87, size: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3898, file: !748, line: 247, baseType: !34, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3898, file: !748, line: 248, baseType: !34, size: 64, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3898, file: !748, line: 249, baseType: !34, size: 64, offset: 192)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3898, file: !748, line: 250, baseType: !34, size: 64, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3898, file: !748, line: 251, baseType: !34, size: 64, offset: 320)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3898, file: !748, line: 252, baseType: !34, size: 64, offset: 384)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3898, file: !748, line: 253, baseType: !34, size: 64, offset: 448)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3898, file: !748, line: 254, baseType: !34, size: 64, offset: 512)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3898, file: !748, line: 256, baseType: !34, size: 64, offset: 576)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3898, file: !748, line: 257, baseType: !34, size: 64, offset: 640)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3898, file: !748, line: 258, baseType: !34, size: 64, offset: 704)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3898, file: !748, line: 260, baseType: !3913, size: 64, offset: 768)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !748, line: 156, size: 192, elements: !3915)
!3915 = !{!3916, !3917, !3919}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3914, file: !748, line: 157, baseType: !3913, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3914, file: !748, line: 158, baseType: !3918, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3914, file: !748, line: 162, baseType: !87, size: 32, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3898, file: !748, line: 262, baseType: !3918, size: 64, offset: 832)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3898, file: !748, line: 264, baseType: !87, size: 32, offset: 896)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3898, file: !748, line: 268, baseType: !87, size: 32, offset: 928)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3898, file: !748, line: 270, baseType: !774, size: 64, offset: 960)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3898, file: !748, line: 274, baseType: !157, size: 16, offset: 1024)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3898, file: !748, line: 275, baseType: !778, size: 8, offset: 1040)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3898, file: !748, line: 276, baseType: !780, size: 8, offset: 1048)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3898, file: !748, line: 280, baseType: !782, size: 64, offset: 1088)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3898, file: !748, line: 289, baseType: !785, size: 64, offset: 1152)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3898, file: !748, line: 297, baseType: !36, size: 64, offset: 1216)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3898, file: !748, line: 298, baseType: !36, size: 64, offset: 1280)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3898, file: !748, line: 299, baseType: !36, size: 64, offset: 1344)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3898, file: !748, line: 300, baseType: !36, size: 64, offset: 1408)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3898, file: !748, line: 302, baseType: !98, size: 64, offset: 1472)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3898, file: !748, line: 303, baseType: !87, size: 32, offset: 1536)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3898, file: !748, line: 305, baseType: !793, size: 160, offset: 1568)
!3936 = !{!3937, !3938, !3939, !3940}
!3937 = !DILocalVariable(name: "fp", arg: 1, scope: !3892, file: !3893, line: 56, type: !3896)
!3938 = !DILocalVariable(name: "saved_errno", scope: !3892, file: !3893, line: 58, type: !87)
!3939 = !DILocalVariable(name: "fd", scope: !3892, file: !3893, line: 59, type: !87)
!3940 = !DILocalVariable(name: "result", scope: !3892, file: !3893, line: 60, type: !87)
!3941 = !DILocation(line: 56, column: 19, scope: !3892)
!3942 = !DILocation(line: 58, column: 7, scope: !3892)
!3943 = !DILocation(line: 60, column: 7, scope: !3892)
!3944 = !DILocation(line: 63, column: 8, scope: !3892)
!3945 = !DILocation(line: 59, column: 7, scope: !3892)
!3946 = !DILocation(line: 64, column: 10, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3892, file: !3893, line: 64, column: 7)
!3948 = !DILocation(line: 64, column: 7, scope: !3892)
!3949 = !DILocation(line: 65, column: 12, scope: !3947)
!3950 = !DILocation(line: 65, column: 5, scope: !3947)
!3951 = !DILocation(line: 70, column: 9, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3892, file: !3893, line: 70, column: 7)
!3953 = !DILocation(line: 70, column: 23, scope: !3952)
!3954 = !DILocation(line: 70, column: 33, scope: !3952)
!3955 = !DILocation(line: 70, column: 26, scope: !3952)
!3956 = !DILocation(line: 70, column: 59, scope: !3952)
!3957 = !DILocation(line: 71, column: 7, scope: !3952)
!3958 = !DILocation(line: 71, column: 10, scope: !3952)
!3959 = !DILocation(line: 70, column: 7, scope: !3892)
!3960 = !DILocation(line: 98, column: 12, scope: !3892)
!3961 = !DILocation(line: 103, column: 7, scope: !3892)
!3962 = !DILocation(line: 72, column: 19, scope: !3952)
!3963 = !DILocation(line: 103, column: 19, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3892, file: !3893, line: 103, column: 7)
!3965 = !DILocation(line: 105, column: 13, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3964, file: !3893, line: 104, column: 5)
!3967 = !DILocation(line: 107, column: 5, scope: !3966)
!3968 = !DILocation(line: 110, column: 1, scope: !3892)
!3969 = !DILocation(line: 272, column: 16, scope: !210)
!3970 = !DILocation(line: 272, column: 24, scope: !210)
!3971 = !DILocation(line: 274, column: 3, scope: !210)
!3972 = !DILocation(line: 274, column: 11, scope: !210)
!3973 = !DILocation(line: 275, column: 7, scope: !210)
!3974 = !DILocation(line: 276, column: 3, scope: !210)
!3975 = !DILocation(line: 277, column: 3, scope: !210)
!3976 = !DILocation(line: 322, column: 22, scope: !235)
!3977 = !DILocation(line: 322, column: 13, scope: !235)
!3978 = !DILocation(line: 336, column: 18, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !235, file: !211, line: 336, column: 13)
!3980 = !DILocation(line: 336, column: 15, scope: !3979)
!3981 = !DILocation(line: 336, column: 13, scope: !235)
!3982 = !DILocation(line: 338, column: 22, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3979, file: !211, line: 337, column: 11)
!3984 = !DILocation(line: 339, column: 19, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3983, file: !211, line: 339, column: 17)
!3986 = !DILocation(line: 339, column: 29, scope: !3985)
!3987 = !DILocation(line: 339, column: 32, scope: !3985)
!3988 = !DILocation(line: 339, column: 38, scope: !3985)
!3989 = !DILocation(line: 339, column: 17, scope: !3983)
!3990 = !DILocation(line: 349, column: 26, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3985, file: !211, line: 348, column: 15)
!3992 = !DILocation(line: 350, column: 28, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3991, file: !211, line: 350, column: 21)
!3994 = !DILocation(line: 350, column: 21, scope: !3991)
!3995 = !DILocation(line: 354, column: 11, scope: !3983)
!3996 = !DILocation(line: 356, column: 20, scope: !3979)
!3997 = !DILocation(line: 357, column: 28, scope: !239)
!3998 = !DILocation(line: 357, column: 15, scope: !239)
!3999 = !DILocation(line: 357, column: 47, scope: !239)
!4000 = !DILocation(line: 357, column: 25, scope: !239)
!4001 = !DILocation(line: 359, column: 25, scope: !238)
!4002 = !DILocation(line: 359, column: 17, scope: !238)
!4003 = !DILocation(line: 360, column: 23, scope: !242)
!4004 = !DILocation(line: 360, column: 27, scope: !242)
!4005 = !DILocation(line: 360, column: 60, scope: !242)
!4006 = !DILocation(line: 360, column: 30, scope: !242)
!4007 = !DILocation(line: 360, column: 74, scope: !242)
!4008 = !DILocation(line: 360, column: 17, scope: !238)
!4009 = !DILocation(line: 362, column: 35, scope: !241)
!4010 = !DILocation(line: 362, column: 21, scope: !241)
!4011 = !DILocation(line: 363, column: 17, scope: !241)
!4012 = !DILocation(line: 364, column: 23, scope: !241)
!4013 = !DILocation(line: 366, column: 15, scope: !241)
!4014 = !DILocation(line: 404, column: 19, scope: !244)
!4015 = !DILocation(line: 404, column: 15, scope: !244)
!4016 = !DILocation(line: 405, column: 18, scope: !244)
!4017 = !DILocation(line: 412, column: 3, scope: !210)
!4018 = !DILocation(line: 414, column: 1, scope: !210)
!4019 = !DILocation(line: 413, column: 3, scope: !210)
!4020 = distinct !DISubprogram(name: "rpl_fflush", scope: !4021, file: !4021, line: 127, type: !4022, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !648, variables: !4064)
!4021 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!87, !4024}
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !746, line: 7, baseType: !4026)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !748, line: 241, size: 1728, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4026, file: !748, line: 242, baseType: !87, size: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4026, file: !748, line: 247, baseType: !34, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4026, file: !748, line: 248, baseType: !34, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4026, file: !748, line: 249, baseType: !34, size: 64, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4026, file: !748, line: 250, baseType: !34, size: 64, offset: 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4026, file: !748, line: 251, baseType: !34, size: 64, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4026, file: !748, line: 252, baseType: !34, size: 64, offset: 384)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4026, file: !748, line: 253, baseType: !34, size: 64, offset: 448)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4026, file: !748, line: 254, baseType: !34, size: 64, offset: 512)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4026, file: !748, line: 256, baseType: !34, size: 64, offset: 576)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4026, file: !748, line: 257, baseType: !34, size: 64, offset: 640)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4026, file: !748, line: 258, baseType: !34, size: 64, offset: 704)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4026, file: !748, line: 260, baseType: !4041, size: 64, offset: 768)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !748, line: 156, size: 192, elements: !4043)
!4043 = !{!4044, !4045, !4047}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4042, file: !748, line: 157, baseType: !4041, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4042, file: !748, line: 158, baseType: !4046, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4042, file: !748, line: 162, baseType: !87, size: 32, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4026, file: !748, line: 262, baseType: !4046, size: 64, offset: 832)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4026, file: !748, line: 264, baseType: !87, size: 32, offset: 896)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4026, file: !748, line: 268, baseType: !87, size: 32, offset: 928)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4026, file: !748, line: 270, baseType: !774, size: 64, offset: 960)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4026, file: !748, line: 274, baseType: !157, size: 16, offset: 1024)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4026, file: !748, line: 275, baseType: !778, size: 8, offset: 1040)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4026, file: !748, line: 276, baseType: !780, size: 8, offset: 1048)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4026, file: !748, line: 280, baseType: !782, size: 64, offset: 1088)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4026, file: !748, line: 289, baseType: !785, size: 64, offset: 1152)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4026, file: !748, line: 297, baseType: !36, size: 64, offset: 1216)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4026, file: !748, line: 298, baseType: !36, size: 64, offset: 1280)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4026, file: !748, line: 299, baseType: !36, size: 64, offset: 1344)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4026, file: !748, line: 300, baseType: !36, size: 64, offset: 1408)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4026, file: !748, line: 302, baseType: !98, size: 64, offset: 1472)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4026, file: !748, line: 303, baseType: !87, size: 32, offset: 1536)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4026, file: !748, line: 305, baseType: !793, size: 160, offset: 1568)
!4064 = !{!4065}
!4065 = !DILocalVariable(name: "stream", arg: 1, scope: !4020, file: !4021, line: 127, type: !4024)
!4066 = !DILocation(line: 127, column: 19, scope: !4020)
!4067 = !DILocation(line: 148, column: 14, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4020, file: !4021, line: 148, column: 7)
!4069 = !DILocation(line: 148, column: 22, scope: !4068)
!4070 = !DILocation(line: 148, column: 27, scope: !4068)
!4071 = !DILocation(line: 148, column: 7, scope: !4020)
!4072 = !DILocation(line: 149, column: 12, scope: !4068)
!4073 = !DILocation(line: 149, column: 5, scope: !4068)
!4074 = !DILocalVariable(name: "fp", arg: 1, scope: !4075, file: !4021, line: 40, type: !4024)
!4075 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4021, file: !4021, line: 40, type: !4076, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !648, variables: !4078)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{null, !4024}
!4078 = !{!4074}
!4079 = !DILocation(line: 40, column: 48, scope: !4075, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 153, column: 3, scope: !4020)
!4081 = !DILocation(line: 42, column: 11, scope: !4082, inlinedAt: !4080)
!4082 = distinct !DILexicalBlock(scope: !4075, file: !4021, line: 42, column: 7)
!4083 = !DILocation(line: 42, column: 18, scope: !4082, inlinedAt: !4080)
!4084 = !DILocation(line: 42, column: 7, scope: !4075, inlinedAt: !4080)
!4085 = !DILocation(line: 44, column: 5, scope: !4082, inlinedAt: !4080)
!4086 = !DILocation(line: 155, column: 10, scope: !4020)
!4087 = !DILocation(line: 155, column: 3, scope: !4020)
!4088 = !DILocation(line: 229, column: 1, scope: !4020)
!4089 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4090, file: !4090, line: 28, type: !4091, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !4133)
!4090 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!87, !4093, !1186, !87}
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !746, line: 7, baseType: !4095)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !748, line: 241, size: 1728, elements: !4096)
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4095, file: !748, line: 242, baseType: !87, size: 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4095, file: !748, line: 247, baseType: !34, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4095, file: !748, line: 248, baseType: !34, size: 64, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4095, file: !748, line: 249, baseType: !34, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4095, file: !748, line: 250, baseType: !34, size: 64, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4095, file: !748, line: 251, baseType: !34, size: 64, offset: 320)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4095, file: !748, line: 252, baseType: !34, size: 64, offset: 384)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4095, file: !748, line: 253, baseType: !34, size: 64, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4095, file: !748, line: 254, baseType: !34, size: 64, offset: 512)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4095, file: !748, line: 256, baseType: !34, size: 64, offset: 576)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4095, file: !748, line: 257, baseType: !34, size: 64, offset: 640)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4095, file: !748, line: 258, baseType: !34, size: 64, offset: 704)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4095, file: !748, line: 260, baseType: !4110, size: 64, offset: 768)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !748, line: 156, size: 192, elements: !4112)
!4112 = !{!4113, !4114, !4116}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4111, file: !748, line: 157, baseType: !4110, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4111, file: !748, line: 158, baseType: !4115, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4111, file: !748, line: 162, baseType: !87, size: 32, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4095, file: !748, line: 262, baseType: !4115, size: 64, offset: 832)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4095, file: !748, line: 264, baseType: !87, size: 32, offset: 896)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4095, file: !748, line: 268, baseType: !87, size: 32, offset: 928)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4095, file: !748, line: 270, baseType: !774, size: 64, offset: 960)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4095, file: !748, line: 274, baseType: !157, size: 16, offset: 1024)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4095, file: !748, line: 275, baseType: !778, size: 8, offset: 1040)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4095, file: !748, line: 276, baseType: !780, size: 8, offset: 1048)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4095, file: !748, line: 280, baseType: !782, size: 64, offset: 1088)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4095, file: !748, line: 289, baseType: !785, size: 64, offset: 1152)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4095, file: !748, line: 297, baseType: !36, size: 64, offset: 1216)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4095, file: !748, line: 298, baseType: !36, size: 64, offset: 1280)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4095, file: !748, line: 299, baseType: !36, size: 64, offset: 1344)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4095, file: !748, line: 300, baseType: !36, size: 64, offset: 1408)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4095, file: !748, line: 302, baseType: !98, size: 64, offset: 1472)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4095, file: !748, line: 303, baseType: !87, size: 32, offset: 1536)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4095, file: !748, line: 305, baseType: !793, size: 160, offset: 1568)
!4133 = !{!4134, !4135, !4136, !4137}
!4134 = !DILocalVariable(name: "fp", arg: 1, scope: !4089, file: !4090, line: 28, type: !4093)
!4135 = !DILocalVariable(name: "offset", arg: 2, scope: !4089, file: !4090, line: 28, type: !1186)
!4136 = !DILocalVariable(name: "whence", arg: 3, scope: !4089, file: !4090, line: 28, type: !87)
!4137 = !DILocalVariable(name: "pos", scope: !4138, file: !4090, line: 116, type: !1186)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !4090, line: 112, column: 5)
!4139 = distinct !DILexicalBlock(scope: !4089, file: !4090, line: 51, column: 7)
!4140 = !DILocation(line: 28, column: 15, scope: !4089)
!4141 = !DILocation(line: 28, column: 25, scope: !4089)
!4142 = !DILocation(line: 28, column: 37, scope: !4089)
!4143 = !DILocation(line: 51, column: 11, scope: !4139)
!4144 = !DILocation(line: 51, column: 31, scope: !4139)
!4145 = !DILocation(line: 51, column: 24, scope: !4139)
!4146 = !DILocation(line: 52, column: 7, scope: !4139)
!4147 = !DILocation(line: 52, column: 14, scope: !4139)
!4148 = !{!949, !678, i64 40}
!4149 = !DILocation(line: 52, column: 35, scope: !4139)
!4150 = !{!949, !678, i64 32}
!4151 = !DILocation(line: 52, column: 28, scope: !4139)
!4152 = !DILocation(line: 53, column: 7, scope: !4139)
!4153 = !DILocation(line: 53, column: 14, scope: !4139)
!4154 = !{!949, !678, i64 72}
!4155 = !DILocation(line: 53, column: 28, scope: !4139)
!4156 = !DILocation(line: 51, column: 7, scope: !4089)
!4157 = !DILocation(line: 116, column: 26, scope: !4138)
!4158 = !DILocation(line: 116, column: 19, scope: !4138)
!4159 = !DILocation(line: 116, column: 13, scope: !4138)
!4160 = !DILocation(line: 117, column: 15, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4138, file: !4090, line: 117, column: 11)
!4162 = !DILocation(line: 117, column: 11, scope: !4138)
!4163 = !DILocation(line: 127, column: 11, scope: !4138)
!4164 = !DILocation(line: 127, column: 18, scope: !4138)
!4165 = !DILocation(line: 128, column: 11, scope: !4138)
!4166 = !DILocation(line: 128, column: 19, scope: !4138)
!4167 = !{!949, !856, i64 144}
!4168 = !DILocation(line: 159, column: 7, scope: !4138)
!4169 = !DILocation(line: 161, column: 10, scope: !4089)
!4170 = !DILocation(line: 161, column: 3, scope: !4089)
!4171 = !DILocation(line: 162, column: 1, scope: !4089)
!4172 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4173, file: !4173, line: 334, type: !4174, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !652, variables: !4188)
!4173 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!98, !4176, !62, !98, !4177}
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1868, line: 6, baseType: !4179)
!4179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1870, line: 21, baseType: !4180)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1870, line: 13, size: 64, elements: !4181)
!4181 = !{!4182, !4183}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4180, file: !1870, line: 15, baseType: !87, size: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4180, file: !1870, line: 20, baseType: !4184, size: 32, offset: 32)
!4184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4180, file: !1870, line: 16, size: 32, elements: !4185)
!4185 = !{!4186, !4187}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4184, file: !1870, line: 18, baseType: !174, size: 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4184, file: !1870, line: 19, baseType: !1879, size: 32)
!4188 = !{!4189, !4190, !4191, !4192, !4193, !4194, !4195}
!4189 = !DILocalVariable(name: "pwc", arg: 1, scope: !4172, file: !4173, line: 334, type: !4176)
!4190 = !DILocalVariable(name: "s", arg: 2, scope: !4172, file: !4173, line: 334, type: !62)
!4191 = !DILocalVariable(name: "n", arg: 3, scope: !4172, file: !4173, line: 334, type: !98)
!4192 = !DILocalVariable(name: "ps", arg: 4, scope: !4172, file: !4173, line: 334, type: !4177)
!4193 = !DILocalVariable(name: "ret", scope: !4172, file: !4173, line: 336, type: !98)
!4194 = !DILocalVariable(name: "wc", scope: !4172, file: !4173, line: 337, type: !1883)
!4195 = !DILocalVariable(name: "uc", scope: !4196, file: !4173, line: 398, type: !95)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !4173, line: 397, column: 5)
!4197 = distinct !DILexicalBlock(scope: !4172, file: !4173, line: 396, column: 7)
!4198 = !DILocation(line: 334, column: 23, scope: !4172)
!4199 = !DILocation(line: 334, column: 40, scope: !4172)
!4200 = !DILocation(line: 334, column: 50, scope: !4172)
!4201 = !DILocation(line: 334, column: 64, scope: !4172)
!4202 = !DILocation(line: 337, column: 3, scope: !4172)
!4203 = !DILocation(line: 353, column: 9, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4172, file: !4173, line: 353, column: 7)
!4205 = !DILocation(line: 353, column: 7, scope: !4172)
!4206 = !DILocation(line: 388, column: 9, scope: !4172)
!4207 = !DILocation(line: 336, column: 10, scope: !4172)
!4208 = !DILocation(line: 396, column: 19, scope: !4197)
!4209 = !DILocation(line: 396, column: 31, scope: !4197)
!4210 = !DILocation(line: 396, column: 26, scope: !4197)
!4211 = !DILocation(line: 396, column: 41, scope: !4197)
!4212 = !DILocation(line: 396, column: 7, scope: !4172)
!4213 = !DILocation(line: 398, column: 26, scope: !4196)
!4214 = !DILocation(line: 398, column: 21, scope: !4196)
!4215 = !DILocation(line: 399, column: 14, scope: !4196)
!4216 = !DILocation(line: 399, column: 12, scope: !4196)
!4217 = !DILocation(line: 405, column: 1, scope: !4172)
!4218 = distinct !DISubprogram(name: "close_stream", scope: !4219, file: !4219, line: 56, type: !4220, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !4262)
!4219 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!87, !4222}
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !746, line: 7, baseType: !4224)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !748, line: 241, size: 1728, elements: !4225)
!4225 = !{!4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4224, file: !748, line: 242, baseType: !87, size: 32)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4224, file: !748, line: 247, baseType: !34, size: 64, offset: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4224, file: !748, line: 248, baseType: !34, size: 64, offset: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4224, file: !748, line: 249, baseType: !34, size: 64, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4224, file: !748, line: 250, baseType: !34, size: 64, offset: 256)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4224, file: !748, line: 251, baseType: !34, size: 64, offset: 320)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4224, file: !748, line: 252, baseType: !34, size: 64, offset: 384)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4224, file: !748, line: 253, baseType: !34, size: 64, offset: 448)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4224, file: !748, line: 254, baseType: !34, size: 64, offset: 512)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4224, file: !748, line: 256, baseType: !34, size: 64, offset: 576)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4224, file: !748, line: 257, baseType: !34, size: 64, offset: 640)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4224, file: !748, line: 258, baseType: !34, size: 64, offset: 704)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4224, file: !748, line: 260, baseType: !4239, size: 64, offset: 768)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !748, line: 156, size: 192, elements: !4241)
!4241 = !{!4242, !4243, !4245}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4240, file: !748, line: 157, baseType: !4239, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4240, file: !748, line: 158, baseType: !4244, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4240, file: !748, line: 162, baseType: !87, size: 32, offset: 128)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4224, file: !748, line: 262, baseType: !4244, size: 64, offset: 832)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4224, file: !748, line: 264, baseType: !87, size: 32, offset: 896)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4224, file: !748, line: 268, baseType: !87, size: 32, offset: 928)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4224, file: !748, line: 270, baseType: !774, size: 64, offset: 960)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4224, file: !748, line: 274, baseType: !157, size: 16, offset: 1024)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4224, file: !748, line: 275, baseType: !778, size: 8, offset: 1040)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4224, file: !748, line: 276, baseType: !780, size: 8, offset: 1048)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4224, file: !748, line: 280, baseType: !782, size: 64, offset: 1088)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4224, file: !748, line: 289, baseType: !785, size: 64, offset: 1152)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4224, file: !748, line: 297, baseType: !36, size: 64, offset: 1216)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4224, file: !748, line: 298, baseType: !36, size: 64, offset: 1280)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4224, file: !748, line: 299, baseType: !36, size: 64, offset: 1344)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4224, file: !748, line: 300, baseType: !36, size: 64, offset: 1408)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4224, file: !748, line: 302, baseType: !98, size: 64, offset: 1472)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4224, file: !748, line: 303, baseType: !87, size: 32, offset: 1536)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4224, file: !748, line: 305, baseType: !793, size: 160, offset: 1568)
!4262 = !{!4263, !4264, !4266, !4267}
!4263 = !DILocalVariable(name: "stream", arg: 1, scope: !4218, file: !4219, line: 56, type: !4222)
!4264 = !DILocalVariable(name: "some_pending", scope: !4218, file: !4219, line: 58, type: !4265)
!4265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!4266 = !DILocalVariable(name: "prev_fail", scope: !4218, file: !4219, line: 59, type: !4265)
!4267 = !DILocalVariable(name: "fclose_fail", scope: !4218, file: !4219, line: 60, type: !4265)
!4268 = !DILocation(line: 56, column: 21, scope: !4218)
!4269 = !DILocation(line: 58, column: 30, scope: !4218)
!4270 = !DILocalVariable(name: "__stream", arg: 1, scope: !4271, file: !940, line: 132, type: !4222)
!4271 = distinct !DISubprogram(name: "ferror_unlocked", scope: !940, file: !940, line: 132, type: !4220, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !4272)
!4272 = !{!4270}
!4273 = !DILocation(line: 132, column: 1, scope: !4271, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 59, column: 27, scope: !4218)
!4275 = !DILocation(line: 134, column: 10, scope: !4271, inlinedAt: !4274)
!4276 = !DILocation(line: 59, column: 43, scope: !4218)
!4277 = !DILocation(line: 60, column: 29, scope: !4218)
!4278 = !DILocation(line: 60, column: 45, scope: !4218)
!4279 = !DILocation(line: 70, column: 17, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4218, file: !4219, line: 70, column: 7)
!4281 = !DILocation(line: 58, column: 50, scope: !4218)
!4282 = !DILocation(line: 70, column: 33, scope: !4280)
!4283 = !DILocation(line: 70, column: 53, scope: !4280)
!4284 = !DILocation(line: 70, column: 59, scope: !4280)
!4285 = !DILocation(line: 70, column: 7, scope: !4218)
!4286 = !DILocation(line: 72, column: 11, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4280, file: !4219, line: 71, column: 5)
!4288 = !DILocation(line: 73, column: 9, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4287, file: !4219, line: 72, column: 11)
!4290 = !DILocation(line: 73, column: 15, scope: !4289)
!4291 = !DILocation(line: 78, column: 1, scope: !4218)
!4292 = distinct !DISubprogram(name: "locale_charset", scope: !591, file: !591, line: 393, type: !4293, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4295)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!62}
!4295 = !{!4296, !4297}
!4296 = !DILocalVariable(name: "codeset", scope: !4292, file: !591, line: 395, type: !62)
!4297 = !DILocalVariable(name: "aliases", scope: !4292, file: !591, line: 396, type: !62)
!4298 = !DILocalVariable(name: "buf1", scope: !4299, file: !591, line: 196, type: !4366)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !591, line: 194, column: 21)
!4300 = distinct !DILexicalBlock(scope: !4301, file: !591, line: 193, column: 19)
!4301 = distinct !DILexicalBlock(scope: !4302, file: !591, line: 193, column: 19)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !591, line: 188, column: 17)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !591, line: 181, column: 19)
!4304 = distinct !DILexicalBlock(scope: !4305, file: !591, line: 177, column: 13)
!4305 = distinct !DILexicalBlock(scope: !4306, file: !591, line: 173, column: 15)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !591, line: 161, column: 9)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !591, line: 157, column: 11)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !591, line: 130, column: 5)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !591, line: 129, column: 7)
!4310 = distinct !DISubprogram(name: "get_charset_aliases", scope: !591, file: !591, line: 124, type: !4293, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4311)
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4318, !4319, !4320, !4321, !4362, !4363, !4364, !4298, !4365, !4369, !4370, !4371}
!4312 = !DILocalVariable(name: "cp", scope: !4310, file: !591, line: 126, type: !62)
!4313 = !DILocalVariable(name: "dir", scope: !4308, file: !591, line: 132, type: !62)
!4314 = !DILocalVariable(name: "base", scope: !4308, file: !591, line: 133, type: !62)
!4315 = !DILocalVariable(name: "file_name", scope: !4308, file: !591, line: 134, type: !34)
!4316 = !DILocalVariable(name: "dir_len", scope: !4317, file: !591, line: 144, type: !98)
!4317 = distinct !DILexicalBlock(scope: !4308, file: !591, line: 143, column: 7)
!4318 = !DILocalVariable(name: "base_len", scope: !4317, file: !591, line: 145, type: !98)
!4319 = !DILocalVariable(name: "add_slash", scope: !4317, file: !591, line: 146, type: !87)
!4320 = !DILocalVariable(name: "fd", scope: !4306, file: !591, line: 162, type: !87)
!4321 = !DILocalVariable(name: "fp", scope: !4304, file: !591, line: 178, type: !4322)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !746, line: 7, baseType: !4324)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !748, line: 241, size: 1728, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4324, file: !748, line: 242, baseType: !87, size: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4324, file: !748, line: 247, baseType: !34, size: 64, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4324, file: !748, line: 248, baseType: !34, size: 64, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4324, file: !748, line: 249, baseType: !34, size: 64, offset: 192)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4324, file: !748, line: 250, baseType: !34, size: 64, offset: 256)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4324, file: !748, line: 251, baseType: !34, size: 64, offset: 320)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4324, file: !748, line: 252, baseType: !34, size: 64, offset: 384)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4324, file: !748, line: 253, baseType: !34, size: 64, offset: 448)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4324, file: !748, line: 254, baseType: !34, size: 64, offset: 512)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4324, file: !748, line: 256, baseType: !34, size: 64, offset: 576)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4324, file: !748, line: 257, baseType: !34, size: 64, offset: 640)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4324, file: !748, line: 258, baseType: !34, size: 64, offset: 704)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4324, file: !748, line: 260, baseType: !4339, size: 64, offset: 768)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !748, line: 156, size: 192, elements: !4341)
!4341 = !{!4342, !4343, !4345}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4340, file: !748, line: 157, baseType: !4339, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4340, file: !748, line: 158, baseType: !4344, size: 64, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4340, file: !748, line: 162, baseType: !87, size: 32, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4324, file: !748, line: 262, baseType: !4344, size: 64, offset: 832)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4324, file: !748, line: 264, baseType: !87, size: 32, offset: 896)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4324, file: !748, line: 268, baseType: !87, size: 32, offset: 928)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4324, file: !748, line: 270, baseType: !774, size: 64, offset: 960)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4324, file: !748, line: 274, baseType: !157, size: 16, offset: 1024)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4324, file: !748, line: 275, baseType: !778, size: 8, offset: 1040)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4324, file: !748, line: 276, baseType: !780, size: 8, offset: 1048)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4324, file: !748, line: 280, baseType: !782, size: 64, offset: 1088)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4324, file: !748, line: 289, baseType: !785, size: 64, offset: 1152)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4324, file: !748, line: 297, baseType: !36, size: 64, offset: 1216)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4324, file: !748, line: 298, baseType: !36, size: 64, offset: 1280)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4324, file: !748, line: 299, baseType: !36, size: 64, offset: 1344)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4324, file: !748, line: 300, baseType: !36, size: 64, offset: 1408)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4324, file: !748, line: 302, baseType: !98, size: 64, offset: 1472)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4324, file: !748, line: 303, baseType: !87, size: 32, offset: 1536)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4324, file: !748, line: 305, baseType: !793, size: 160, offset: 1568)
!4362 = !DILocalVariable(name: "res_ptr", scope: !4302, file: !591, line: 190, type: !34)
!4363 = !DILocalVariable(name: "res_size", scope: !4302, file: !591, line: 191, type: !98)
!4364 = !DILocalVariable(name: "c", scope: !4299, file: !591, line: 195, type: !87)
!4365 = !DILocalVariable(name: "buf2", scope: !4299, file: !591, line: 197, type: !4366)
!4366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 408, elements: !4367)
!4367 = !{!4368}
!4368 = !DISubrange(count: 51)
!4369 = !DILocalVariable(name: "l1", scope: !4299, file: !591, line: 198, type: !98)
!4370 = !DILocalVariable(name: "l2", scope: !4299, file: !591, line: 198, type: !98)
!4371 = !DILocalVariable(name: "old_res_ptr", scope: !4299, file: !591, line: 199, type: !34)
!4372 = !DILocation(line: 196, column: 28, scope: !4299, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 589, column: 18, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4292, file: !591, line: 589, column: 3)
!4375 = !DILocation(line: 197, column: 28, scope: !4299, inlinedAt: !4373)
!4376 = !DILocation(line: 403, column: 13, scope: !4292)
!4377 = !DILocation(line: 395, column: 15, scope: !4292)
!4378 = !DILocation(line: 584, column: 15, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4292, file: !591, line: 584, column: 7)
!4380 = !DILocation(line: 584, column: 7, scope: !4292)
!4381 = !DILocation(line: 128, column: 8, scope: !4310, inlinedAt: !4373)
!4382 = !DILocation(line: 126, column: 15, scope: !4310, inlinedAt: !4373)
!4383 = !DILocation(line: 129, column: 10, scope: !4309, inlinedAt: !4373)
!4384 = !DILocation(line: 129, column: 7, scope: !4310, inlinedAt: !4373)
!4385 = !DILocation(line: 138, column: 13, scope: !4308, inlinedAt: !4373)
!4386 = !DILocation(line: 132, column: 19, scope: !4308, inlinedAt: !4373)
!4387 = !DILocation(line: 139, column: 15, scope: !4388, inlinedAt: !4373)
!4388 = distinct !DILexicalBlock(scope: !4308, file: !591, line: 139, column: 11)
!4389 = !DILocation(line: 139, column: 23, scope: !4388, inlinedAt: !4373)
!4390 = !DILocation(line: 139, column: 26, scope: !4388, inlinedAt: !4373)
!4391 = !DILocation(line: 139, column: 33, scope: !4388, inlinedAt: !4373)
!4392 = !DILocation(line: 139, column: 11, scope: !4308, inlinedAt: !4373)
!4393 = !DILocation(line: 140, column: 9, scope: !4388, inlinedAt: !4373)
!4394 = !DILocation(line: 144, column: 26, scope: !4317, inlinedAt: !4373)
!4395 = !DILocation(line: 144, column: 16, scope: !4317, inlinedAt: !4373)
!4396 = !DILocation(line: 145, column: 16, scope: !4317, inlinedAt: !4373)
!4397 = !DILocation(line: 146, column: 34, scope: !4317, inlinedAt: !4373)
!4398 = !DILocation(line: 146, column: 38, scope: !4317, inlinedAt: !4373)
!4399 = !DILocation(line: 146, column: 42, scope: !4317, inlinedAt: !4373)
!4400 = !DILocation(line: 147, column: 48, scope: !4317, inlinedAt: !4373)
!4401 = !DILocation(line: 147, column: 46, scope: !4317, inlinedAt: !4373)
!4402 = !DILocation(line: 147, column: 69, scope: !4317, inlinedAt: !4373)
!4403 = !DILocation(line: 147, column: 30, scope: !4317, inlinedAt: !4373)
!4404 = !DILocation(line: 134, column: 13, scope: !4308, inlinedAt: !4373)
!4405 = !DILocation(line: 148, column: 13, scope: !4317, inlinedAt: !4373)
!4406 = !DILocation(line: 150, column: 13, scope: !4407, inlinedAt: !4373)
!4407 = distinct !DILexicalBlock(scope: !4408, file: !591, line: 149, column: 11)
!4408 = distinct !DILexicalBlock(scope: !4317, file: !591, line: 148, column: 13)
!4409 = !DILocation(line: 151, column: 17, scope: !4407, inlinedAt: !4373)
!4410 = !DILocation(line: 152, column: 34, scope: !4411, inlinedAt: !4373)
!4411 = distinct !DILexicalBlock(scope: !4407, file: !591, line: 151, column: 17)
!4412 = !DILocation(line: 153, column: 41, scope: !4407, inlinedAt: !4373)
!4413 = !DILocation(line: 153, column: 13, scope: !4407, inlinedAt: !4373)
!4414 = !DILocation(line: 157, column: 11, scope: !4308, inlinedAt: !4373)
!4415 = !DILocation(line: 171, column: 16, scope: !4306, inlinedAt: !4373)
!4416 = !DILocation(line: 162, column: 15, scope: !4306, inlinedAt: !4373)
!4417 = !DILocation(line: 173, column: 18, scope: !4305, inlinedAt: !4373)
!4418 = !DILocation(line: 173, column: 15, scope: !4306, inlinedAt: !4373)
!4419 = !DILocation(line: 180, column: 20, scope: !4304, inlinedAt: !4373)
!4420 = !DILocation(line: 178, column: 21, scope: !4304, inlinedAt: !4373)
!4421 = !DILocation(line: 181, column: 22, scope: !4303, inlinedAt: !4373)
!4422 = !DILocation(line: 181, column: 19, scope: !4304, inlinedAt: !4373)
!4423 = !DILocation(line: 184, column: 19, scope: !4424, inlinedAt: !4373)
!4424 = distinct !DILexicalBlock(scope: !4303, file: !591, line: 182, column: 17)
!4425 = !DILocation(line: 186, column: 17, scope: !4424, inlinedAt: !4373)
!4426 = !DILocation(line: 190, column: 25, scope: !4302, inlinedAt: !4373)
!4427 = !DILocation(line: 191, column: 26, scope: !4302, inlinedAt: !4373)
!4428 = !DILocation(line: 193, column: 19, scope: !4302, inlinedAt: !4373)
!4429 = !DILocation(line: 196, column: 23, scope: !4299, inlinedAt: !4373)
!4430 = !DILocation(line: 197, column: 23, scope: !4299, inlinedAt: !4373)
!4431 = !DILocalVariable(name: "__fp", arg: 1, scope: !4432, file: !940, line: 63, type: !4322)
!4432 = distinct !DISubprogram(name: "getc_unlocked", scope: !940, file: !940, line: 63, type: !4433, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!87, !4322}
!4435 = !{!4431}
!4436 = !DILocation(line: 63, column: 22, scope: !4432, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 201, column: 27, scope: !4299, inlinedAt: !4373)
!4438 = !DILocation(line: 65, column: 10, scope: !4432, inlinedAt: !4437)
!4439 = !DILocation(line: 195, column: 27, scope: !4299, inlinedAt: !4373)
!4440 = !DILocation(line: 202, column: 27, scope: !4299, inlinedAt: !4373)
!4441 = distinct !{!4441, !4442, !4445}
!4442 = !DILocation(line: 209, column: 27, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4444, file: !591, line: 207, column: 25)
!4444 = distinct !DILexicalBlock(scope: !4299, file: !591, line: 206, column: 27)
!4445 = !DILocation(line: 211, column: 58, scope: !4443)
!4446 = !DILocation(line: 65, column: 10, scope: !4432, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 210, column: 33, scope: !4443, inlinedAt: !4373)
!4448 = !DILocation(line: 63, column: 22, scope: !4432, inlinedAt: !4447)
!4449 = !DILocation(line: 210, column: 29, scope: !4443, inlinedAt: !4373)
!4450 = distinct !{!4450, !4451, !4452}
!4451 = !DILocation(line: 193, column: 19, scope: !4301)
!4452 = !DILocation(line: 241, column: 21, scope: !4301)
!4453 = !DILocation(line: 216, column: 23, scope: !4299, inlinedAt: !4373)
!4454 = !DILocation(line: 217, column: 27, scope: !4455, inlinedAt: !4373)
!4455 = distinct !DILexicalBlock(scope: !4299, file: !591, line: 217, column: 27)
!4456 = !DILocation(line: 217, column: 64, scope: !4455, inlinedAt: !4373)
!4457 = !DILocation(line: 217, column: 27, scope: !4299, inlinedAt: !4373)
!4458 = !DILocation(line: 219, column: 28, scope: !4299, inlinedAt: !4373)
!4459 = !DILocation(line: 198, column: 30, scope: !4299, inlinedAt: !4373)
!4460 = !DILocation(line: 220, column: 28, scope: !4299, inlinedAt: !4373)
!4461 = !DILocation(line: 198, column: 34, scope: !4299, inlinedAt: !4373)
!4462 = !DILocation(line: 199, column: 29, scope: !4299, inlinedAt: !4373)
!4463 = !DILocation(line: 222, column: 36, scope: !4464, inlinedAt: !4373)
!4464 = distinct !DILexicalBlock(scope: !4299, file: !591, line: 222, column: 27)
!4465 = !DILocation(line: 222, column: 27, scope: !4299, inlinedAt: !4373)
!4466 = !DILocation(line: 225, column: 63, scope: !4467, inlinedAt: !4373)
!4467 = distinct !DILexicalBlock(scope: !4464, file: !591, line: 223, column: 25)
!4468 = !DILocation(line: 225, column: 46, scope: !4467, inlinedAt: !4373)
!4469 = !DILocation(line: 226, column: 25, scope: !4467, inlinedAt: !4373)
!4470 = !DILocation(line: 229, column: 36, scope: !4471, inlinedAt: !4373)
!4471 = distinct !DILexicalBlock(scope: !4464, file: !591, line: 228, column: 25)
!4472 = !DILocation(line: 230, column: 73, scope: !4471, inlinedAt: !4373)
!4473 = !DILocation(line: 230, column: 46, scope: !4471, inlinedAt: !4373)
!4474 = !DILocation(line: 232, column: 35, scope: !4475, inlinedAt: !4373)
!4475 = distinct !DILexicalBlock(scope: !4299, file: !591, line: 232, column: 27)
!4476 = !DILocation(line: 232, column: 27, scope: !4299, inlinedAt: !4373)
!4477 = !DILocation(line: 236, column: 27, scope: !4478, inlinedAt: !4373)
!4478 = distinct !DILexicalBlock(scope: !4475, file: !591, line: 233, column: 25)
!4479 = !DILocation(line: 237, column: 27, scope: !4478, inlinedAt: !4373)
!4480 = !DILocation(line: 241, column: 21, scope: !4300, inlinedAt: !4373)
!4481 = !DILocation(line: 239, column: 39, scope: !4299, inlinedAt: !4373)
!4482 = !DILocation(line: 239, column: 50, scope: !4299, inlinedAt: !4373)
!4483 = !DILocation(line: 239, column: 61, scope: !4299, inlinedAt: !4373)
!4484 = !DILocalVariable(name: "__dest", arg: 1, scope: !4485, file: !4486, line: 88, type: !4489)
!4485 = distinct !DISubprogram(name: "strcpy", scope: !4486, file: !4486, line: 88, type: !4487, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !247, variables: !4491)
!4486 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!34, !4489, !4490}
!4489 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!4490 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!4491 = !{!4484, !4492}
!4492 = !DILocalVariable(name: "__src", arg: 2, scope: !4485, file: !4486, line: 88, type: !4490)
!4493 = !DILocation(line: 88, column: 1, scope: !4485, inlinedAt: !4494)
!4494 = distinct !DILocation(line: 239, column: 23, scope: !4299, inlinedAt: !4373)
!4495 = !DILocation(line: 90, column: 49, scope: !4485, inlinedAt: !4494)
!4496 = !DILocation(line: 90, column: 10, scope: !4485, inlinedAt: !4494)
!4497 = !DILocation(line: 88, column: 1, scope: !4485, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 240, column: 23, scope: !4299, inlinedAt: !4373)
!4499 = !DILocation(line: 90, column: 49, scope: !4485, inlinedAt: !4498)
!4500 = !DILocation(line: 90, column: 10, scope: !4485, inlinedAt: !4498)
!4501 = !DILocation(line: 193, column: 19, scope: !4300, inlinedAt: !4373)
!4502 = !DILocation(line: 242, column: 19, scope: !4302, inlinedAt: !4373)
!4503 = !DILocation(line: 243, column: 32, scope: !4504, inlinedAt: !4373)
!4504 = distinct !DILexicalBlock(scope: !4302, file: !591, line: 243, column: 23)
!4505 = !DILocation(line: 243, column: 23, scope: !4302, inlinedAt: !4373)
!4506 = !DILocation(line: 247, column: 33, scope: !4507, inlinedAt: !4373)
!4507 = distinct !DILexicalBlock(scope: !4504, file: !591, line: 246, column: 21)
!4508 = !DILocation(line: 247, column: 45, scope: !4507, inlinedAt: !4373)
!4509 = !DILocation(line: 253, column: 11, scope: !4306, inlinedAt: !4373)
!4510 = !DILocation(line: 377, column: 23, scope: !4308, inlinedAt: !4373)
!4511 = !DILocation(line: 378, column: 5, scope: !4308, inlinedAt: !4373)
!4512 = !DILocation(line: 396, column: 15, scope: !4292)
!4513 = !DILocation(line: 590, column: 8, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4374, file: !591, line: 589, column: 3)
!4515 = !DILocation(line: 590, column: 17, scope: !4514)
!4516 = !DILocation(line: 589, column: 3, scope: !4374)
!4517 = !DILocation(line: 592, column: 9, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4514, file: !591, line: 592, column: 9)
!4519 = !DILocation(line: 592, column: 35, scope: !4518)
!4520 = !DILocation(line: 593, column: 9, scope: !4518)
!4521 = !DILocation(line: 593, column: 24, scope: !4518)
!4522 = !DILocation(line: 593, column: 31, scope: !4518)
!4523 = !DILocation(line: 593, column: 34, scope: !4518)
!4524 = !DILocation(line: 593, column: 45, scope: !4518)
!4525 = !DILocation(line: 592, column: 9, scope: !4514)
!4526 = !DILocation(line: 595, column: 29, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4518, file: !591, line: 594, column: 7)
!4528 = !DILocation(line: 595, column: 27, scope: !4527)
!4529 = !DILocation(line: 595, column: 46, scope: !4527)
!4530 = !DILocation(line: 596, column: 9, scope: !4527)
!4531 = !DILocation(line: 591, column: 19, scope: !4514)
!4532 = !DILocation(line: 591, column: 36, scope: !4514)
!4533 = !DILocation(line: 591, column: 16, scope: !4514)
!4534 = !DILocation(line: 591, column: 52, scope: !4514)
!4535 = !DILocation(line: 591, column: 69, scope: !4514)
!4536 = !DILocation(line: 591, column: 49, scope: !4514)
!4537 = distinct !{!4537, !4516, !4538}
!4538 = !DILocation(line: 597, column: 7, scope: !4374)
!4539 = !DILocation(line: 602, column: 7, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4292, file: !591, line: 602, column: 7)
!4541 = !DILocation(line: 602, column: 18, scope: !4540)
!4542 = !DILocation(line: 602, column: 7, scope: !4292)
!4543 = !DILocation(line: 612, column: 3, scope: !4292)
!4544 = distinct !DISubprogram(name: "memcoll", scope: !4545, file: !4545, line: 66, type: !3781, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !4546)
!4545 = !DIFile(filename: "lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4546 = !{!4547, !4548, !4549, !4550, !4551, !4552, !4555}
!4547 = !DILocalVariable(name: "s1", arg: 1, scope: !4544, file: !4545, line: 66, type: !34)
!4548 = !DILocalVariable(name: "s1len", arg: 2, scope: !4544, file: !4545, line: 66, type: !98)
!4549 = !DILocalVariable(name: "s2", arg: 3, scope: !4544, file: !4545, line: 66, type: !34)
!4550 = !DILocalVariable(name: "s2len", arg: 4, scope: !4544, file: !4545, line: 66, type: !98)
!4551 = !DILocalVariable(name: "diff", scope: !4544, file: !4545, line: 68, type: !87)
!4552 = !DILocalVariable(name: "n1", scope: !4553, file: !4545, line: 81, type: !35)
!4553 = distinct !DILexicalBlock(scope: !4554, file: !4545, line: 80, column: 5)
!4554 = distinct !DILexicalBlock(scope: !4544, file: !4545, line: 74, column: 7)
!4555 = !DILocalVariable(name: "n2", scope: !4553, file: !4545, line: 82, type: !35)
!4556 = !DILocation(line: 66, column: 16, scope: !4544)
!4557 = !DILocation(line: 66, column: 27, scope: !4544)
!4558 = !DILocation(line: 66, column: 40, scope: !4544)
!4559 = !DILocation(line: 66, column: 51, scope: !4544)
!4560 = !DILocation(line: 74, column: 13, scope: !4554)
!4561 = !DILocation(line: 74, column: 22, scope: !4554)
!4562 = !DILocation(line: 74, column: 25, scope: !4554)
!4563 = !DILocation(line: 74, column: 48, scope: !4554)
!4564 = !DILocation(line: 74, column: 7, scope: !4544)
!4565 = !DILocation(line: 76, column: 7, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4554, file: !4545, line: 75, column: 5)
!4567 = !DILocation(line: 76, column: 13, scope: !4566)
!4568 = !DILocation(line: 68, column: 7, scope: !4544)
!4569 = !DILocation(line: 78, column: 5, scope: !4566)
!4570 = !DILocation(line: 81, column: 17, scope: !4553)
!4571 = !DILocation(line: 81, column: 12, scope: !4553)
!4572 = !DILocation(line: 82, column: 17, scope: !4553)
!4573 = !DILocation(line: 82, column: 12, scope: !4553)
!4574 = !DILocation(line: 84, column: 17, scope: !4553)
!4575 = !DILocation(line: 85, column: 17, scope: !4553)
!4576 = !DILocalVariable(name: "s1", arg: 1, scope: !4577, file: !4545, line: 35, type: !62)
!4577 = distinct !DISubprogram(name: "strcoll_loop", scope: !4545, file: !4545, line: 35, type: !1615, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !4578)
!4578 = !{!4576, !4579, !4580, !4581, !4582, !4583, !4585}
!4579 = !DILocalVariable(name: "s1size", arg: 2, scope: !4577, file: !4545, line: 35, type: !98)
!4580 = !DILocalVariable(name: "s2", arg: 3, scope: !4577, file: !4545, line: 35, type: !62)
!4581 = !DILocalVariable(name: "s2size", arg: 4, scope: !4577, file: !4545, line: 35, type: !98)
!4582 = !DILocalVariable(name: "diff", scope: !4577, file: !4545, line: 37, type: !87)
!4583 = !DILocalVariable(name: "size1", scope: !4584, file: !4545, line: 44, type: !98)
!4584 = distinct !DILexicalBlock(scope: !4577, file: !4545, line: 40, column: 5)
!4585 = !DILocalVariable(name: "size2", scope: !4584, file: !4545, line: 45, type: !98)
!4586 = !DILocation(line: 35, column: 27, scope: !4577, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 87, column: 14, scope: !4553)
!4588 = !DILocation(line: 35, column: 38, scope: !4577, inlinedAt: !4587)
!4589 = !DILocation(line: 35, column: 58, scope: !4577, inlinedAt: !4587)
!4590 = !DILocation(line: 35, column: 69, scope: !4577, inlinedAt: !4587)
!4591 = !DILocation(line: 39, column: 13, scope: !4577, inlinedAt: !4587)
!4592 = !DILocation(line: 39, column: 19, scope: !4577, inlinedAt: !4587)
!4593 = !DILocation(line: 39, column: 32, scope: !4577, inlinedAt: !4587)
!4594 = !DILocation(line: 37, column: 7, scope: !4577, inlinedAt: !4587)
!4595 = !DILocation(line: 39, column: 30, scope: !4577, inlinedAt: !4587)
!4596 = !DILocation(line: 39, column: 3, scope: !4577, inlinedAt: !4587)
!4597 = !DILocation(line: 87, column: 53, scope: !4553)
!4598 = !DILocation(line: 87, column: 38, scope: !4553)
!4599 = distinct !{!4599, !4600, !4601}
!4600 = !DILocation(line: 39, column: 3, scope: !4577)
!4601 = !DILocation(line: 55, column: 5, scope: !4577)
!4602 = !DILocation(line: 44, column: 22, scope: !4584, inlinedAt: !4587)
!4603 = !DILocation(line: 44, column: 34, scope: !4584, inlinedAt: !4587)
!4604 = !DILocation(line: 44, column: 14, scope: !4584, inlinedAt: !4587)
!4605 = !DILocation(line: 45, column: 22, scope: !4584, inlinedAt: !4587)
!4606 = !DILocation(line: 45, column: 34, scope: !4584, inlinedAt: !4587)
!4607 = !DILocation(line: 45, column: 14, scope: !4584, inlinedAt: !4587)
!4608 = !DILocation(line: 48, column: 14, scope: !4584, inlinedAt: !4587)
!4609 = !DILocation(line: 49, column: 14, scope: !4584, inlinedAt: !4587)
!4610 = !DILocation(line: 51, column: 18, scope: !4611, inlinedAt: !4587)
!4611 = distinct !DILexicalBlock(scope: !4584, file: !4545, line: 51, column: 11)
!4612 = !DILocation(line: 51, column: 11, scope: !4584, inlinedAt: !4587)
!4613 = !DILocation(line: 52, column: 26, scope: !4611, inlinedAt: !4587)
!4614 = !DILocation(line: 52, column: 16, scope: !4611, inlinedAt: !4587)
!4615 = !DILocation(line: 47, column: 10, scope: !4584, inlinedAt: !4587)
!4616 = !DILocation(line: 46, column: 10, scope: !4584, inlinedAt: !4587)
!4617 = !DILocation(line: 53, column: 18, scope: !4618, inlinedAt: !4587)
!4618 = distinct !DILexicalBlock(scope: !4584, file: !4545, line: 53, column: 11)
!4619 = !DILocation(line: 89, column: 17, scope: !4553)
!4620 = !DILocation(line: 90, column: 17, scope: !4553)
!4621 = !DILocation(line: 93, column: 3, scope: !4544)
!4622 = distinct !DISubprogram(name: "memcoll0", scope: !4545, file: !4545, line: 102, type: !1615, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !4623)
!4623 = !{!4624, !4625, !4626, !4627}
!4624 = !DILocalVariable(name: "s1", arg: 1, scope: !4622, file: !4545, line: 102, type: !62)
!4625 = !DILocalVariable(name: "s1size", arg: 2, scope: !4622, file: !4545, line: 102, type: !98)
!4626 = !DILocalVariable(name: "s2", arg: 3, scope: !4622, file: !4545, line: 102, type: !62)
!4627 = !DILocalVariable(name: "s2size", arg: 4, scope: !4622, file: !4545, line: 102, type: !98)
!4628 = !DILocation(line: 102, column: 23, scope: !4622)
!4629 = !DILocation(line: 102, column: 34, scope: !4622)
!4630 = !DILocation(line: 102, column: 54, scope: !4622)
!4631 = !DILocation(line: 102, column: 65, scope: !4622)
!4632 = !DILocation(line: 104, column: 14, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4622, file: !4545, line: 104, column: 7)
!4634 = !DILocation(line: 104, column: 24, scope: !4633)
!4635 = !DILocation(line: 104, column: 27, scope: !4633)
!4636 = !DILocation(line: 104, column: 51, scope: !4633)
!4637 = !DILocation(line: 104, column: 7, scope: !4622)
!4638 = !DILocation(line: 106, column: 7, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4633, file: !4545, line: 105, column: 5)
!4640 = !DILocation(line: 106, column: 13, scope: !4639)
!4641 = !DILocation(line: 107, column: 7, scope: !4639)
!4642 = !DILocation(line: 35, column: 27, scope: !4577, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 110, column: 12, scope: !4633)
!4644 = !DILocation(line: 35, column: 38, scope: !4577, inlinedAt: !4643)
!4645 = !DILocation(line: 35, column: 58, scope: !4577, inlinedAt: !4643)
!4646 = !DILocation(line: 35, column: 69, scope: !4577, inlinedAt: !4643)
!4647 = !DILocation(line: 39, column: 13, scope: !4577, inlinedAt: !4643)
!4648 = !DILocation(line: 39, column: 19, scope: !4577, inlinedAt: !4643)
!4649 = !DILocation(line: 39, column: 32, scope: !4577, inlinedAt: !4643)
!4650 = !DILocation(line: 37, column: 7, scope: !4577, inlinedAt: !4643)
!4651 = !DILocation(line: 39, column: 30, scope: !4577, inlinedAt: !4643)
!4652 = !DILocation(line: 39, column: 3, scope: !4577, inlinedAt: !4643)
!4653 = !DILocation(line: 44, column: 22, scope: !4584, inlinedAt: !4643)
!4654 = !DILocation(line: 44, column: 34, scope: !4584, inlinedAt: !4643)
!4655 = !DILocation(line: 44, column: 14, scope: !4584, inlinedAt: !4643)
!4656 = !DILocation(line: 45, column: 22, scope: !4584, inlinedAt: !4643)
!4657 = !DILocation(line: 45, column: 34, scope: !4584, inlinedAt: !4643)
!4658 = !DILocation(line: 45, column: 14, scope: !4584, inlinedAt: !4643)
!4659 = !DILocation(line: 48, column: 14, scope: !4584, inlinedAt: !4643)
!4660 = !DILocation(line: 49, column: 14, scope: !4584, inlinedAt: !4643)
!4661 = !DILocation(line: 51, column: 18, scope: !4611, inlinedAt: !4643)
!4662 = !DILocation(line: 51, column: 11, scope: !4584, inlinedAt: !4643)
!4663 = !DILocation(line: 52, column: 26, scope: !4611, inlinedAt: !4643)
!4664 = !DILocation(line: 52, column: 16, scope: !4611, inlinedAt: !4643)
!4665 = !DILocation(line: 47, column: 10, scope: !4584, inlinedAt: !4643)
!4666 = !DILocation(line: 46, column: 10, scope: !4584, inlinedAt: !4643)
!4667 = !DILocation(line: 53, column: 18, scope: !4618, inlinedAt: !4643)
!4668 = !DILocation(line: 111, column: 1, scope: !4622)
