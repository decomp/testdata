; ModuleID = 'coreutils-8.27/src/seq.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.operand = type { x86_fp80, i64, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.layout = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"Usage: %s [OPTION]... LAST\0A  or:  %s [OPTION]... FIRST LAST\0A  or:  %s [OPTION]... FIRST INCREMENT LAST\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Print numbers from FIRST to LAST, in steps of INCREMENT.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [212 x i8] c"  -f, --format=FORMAT      use printf style floating-point FORMAT\0A  -s, --separator=STRING   use STRING to separate numbers (default: \5Cn)\0A  -w, --equal-width        equalize width by padding with leading zeroes\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [513 x i8] c"\0AIf FIRST or INCREMENT is omitted, it defaults to 1.  That is, an\0Aomitted INCREMENT defaults to 1 even when LAST is smaller than FIRST.\0AThe sequence of numbers ends when the sum of the current number and\0AINCREMENT would become greater than LAST.\0AFIRST, INCREMENT, and LAST are interpreted as floating point values.\0AINCREMENT is usually positive if FIRST is smaller than LAST, and\0AINCREMENT is usually negative if FIRST is greater than LAST.\0AINCREMENT must not be 0; none of FIRST, INCREMENT and LAST may be NaN.\0A\00", align 1
@.str.7 = private unnamed_addr constant [208 x i8] c"FORMAT must be suitable for printing one argument of type 'double';\0Ait defaults to %.PRECf if FIRST, INCREMENT, and LAST are all fixed point\0Adecimal numbers with maximum precision PREC, and to %g otherwise.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.35 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@main.step = private unnamed_addr constant %struct.operand { x86_fp80 0xK3FFF8000000000000000, i64 1, i32 0 }, align 16
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@equal_width = internal unnamed_addr global i1 false, align 1
@.str.12 = private constant [2 x i8] c"\0A\00", align 1, !dbg !0
@separator = internal unnamed_addr global i8* null, align 8, !dbg !31
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"+f:s:w\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !55
@optarg = external local_unnamed_addr global i8*, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"Ulrich Drepper\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"format %s has no %% directive\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"-+#0 '\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"format %s ends in %%\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"efgaEFGA\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"format %s has unknown %%%c directive\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"format %s has too many %% directives\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"format string may not be specified when printing equal width strings\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"invalid Zero increment value: %s\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%0.Lf\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@get_default_format.format_buf = internal global [28 x i8] zeroinitializer, align 16, !dbg !69
@.str.57 = private unnamed_addr constant [11 x i8] c"%%0%d.%dLf\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"%%.%dLf\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"%Lg\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"invalid floating point argument: %s\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"invalid %s argument: %s\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"not-a-number\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"equal-width\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), align 8, !dbg !105
@.str.24 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !111
@.str.27 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !141
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !146
@.str.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !149
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !156
@.str.61 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 16, !dbg !163
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !189
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !196
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !208
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.77 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.78 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.79 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.80 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !215
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !222
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !210
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !224
@.str.87 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.90 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.91 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.92 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.93 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.94 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.95 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.96 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.97 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.98 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.99 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.100 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.103 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.107 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.108 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !230
@.str.1.121 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.134 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !239
@.str.3.138 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.139 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.140 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.141 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.142 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !638 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !642, metadata !643), !dbg !644
  %2 = icmp eq i32 %0, 0, !dbg !645
  br i1 %2, label %8, label %3, !dbg !647

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !648, !tbaa !650
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !648
  %6 = load i8*, i8** @program_name, align 8, !dbg !648, !tbaa !650
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !648
  br label %48, !dbg !648

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !654
  %10 = load i8*, i8** @program_name, align 8, !dbg !654, !tbaa !650
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10, i8* %10) #12, !dbg !654
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !656
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !656, !tbaa !650
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !656
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23, i64 0, i64 0), i32 5) #12, !dbg !657
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !657, !tbaa !650
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !657
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !662
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !650
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !662
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !663
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !650
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !663
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !664
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !650
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12, !dbg !664
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([513 x i8], [513 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !665
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !665, !tbaa !650
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12, !dbg !665
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !666
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !666, !tbaa !650
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #12, !dbg !666
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !43, metadata !643) #12, !dbg !667
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !43, metadata !643) #12, !dbg !667
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #12, !dbg !669
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0)) #12, !dbg !669
  %35 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !670
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !51, metadata !643) #12, !dbg !671
  %36 = icmp eq i8* %35, null, !dbg !672
  br i1 %36, label %43, label %37, !dbg !674

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i64 3) #8, !dbg !675
  %39 = icmp eq i32 %38, 0, !dbg !675
  br i1 %39, label %43, label %40, !dbg !676

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.35, i64 0, i64 0), i32 5) #12, !dbg !677
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !677
  br label %43, !dbg !679

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i32 5) #12, !dbg !680
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !680
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i64 0, i64 0), i32 5) #12, !dbg !681
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0)) #12, !dbg !681
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #15, !dbg !682
  unreachable, !dbg !682
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !683 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  tail call void @llvm.dbg.declare(metadata %struct.operand* undef, metadata !87, metadata !643), !dbg !709
  %6 = alloca %struct.operand, align 16
  %7 = alloca %struct.operand, align 16
  %8 = alloca [6 x i8], align 2
  %9 = alloca [6 x i8], align 2
  %10 = alloca [6 x i8], align 2
  %11 = alloca %struct.operand, align 16
  %12 = alloca %struct.operand, align 16
  %13 = alloca %struct.operand, align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !688, metadata !643), !dbg !712
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !689, metadata !643), !dbg !713
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0, !dbg !714
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %16), !dbg !714
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %16, i8* getelementptr inbounds (i8, i8* bitcast (%struct.operand* @main.step to i8*), i64 10), i64 6, i32 2, i1 false), !dbg !715
  %17 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0, !dbg !716
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %17), !dbg !716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %17, i8* getelementptr inbounds (i8, i8* bitcast (%struct.operand* @main.step to i8*), i64 10), i64 6, i32 2, i1 false), !dbg !717
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0, !dbg !718
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %18), !dbg !718
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !699, metadata !643), !dbg !719
  %19 = load i8*, i8** %1, align 8, !dbg !720, !tbaa !650
  tail call void @set_program_name(i8* %19) #12, !dbg !721
  %20 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !722
  %21 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !723
  %22 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !724
  %23 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !725
  store i1 false, i1* @equal_width, align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** @separator, align 8, !dbg !726, !tbaa !650
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !699, metadata !643), !dbg !719
  %24 = load i32, i32* @optind, align 4, !dbg !727, !tbaa !728
  %25 = icmp slt i32 %24, %0, !dbg !730
  br i1 %25, label %26, label %61, !dbg !731

; <label>:26:                                     ; preds = %2
  br label %27, !dbg !732

; <label>:27:                                     ; preds = %26, %57
  %28 = phi i32 [ %59, %57 ], [ %24, %26 ]
  %29 = phi i8* [ %58, %57 ], [ null, %26 ]
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !699, metadata !643), !dbg !719
  %30 = sext i32 %28 to i64, !dbg !732
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30, !dbg !732
  %32 = load i8*, i8** %31, align 8, !dbg !732, !tbaa !650
  %33 = load i8, i8* %32, align 1, !dbg !732, !tbaa !735
  %34 = icmp eq i8 %33, 45, !dbg !736
  br i1 %34, label %35, label %43, !dbg !737

; <label>:35:                                     ; preds = %27
  %36 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !738
  %37 = load i8, i8* %36, align 1, !dbg !738, !tbaa !735
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !690, metadata !643), !dbg !739
  %38 = icmp eq i8 %37, 46, !dbg !740
  br i1 %38, label %61, label %39, !dbg !741

; <label>:39:                                     ; preds = %35
  %40 = sext i8 %37 to i32, !dbg !738
  %41 = add nsw i32 %40, -48, !dbg !742
  %42 = icmp ult i32 %41, 10, !dbg !742
  br i1 %42, label %61, label %43, !dbg !743

; <label>:43:                                     ; preds = %39, %27
  %44 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !744
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !690, metadata !643), !dbg !739
  switch i32 %44, label %56 [
    i32 -1, label %45
    i32 102, label %47
    i32 115, label %49
    i32 119, label %51
    i32 -130, label %52
    i32 -131, label %53
  ], !dbg !745

; <label>:45:                                     ; preds = %43
  %46 = load i32, i32* @optind, align 4, !dbg !746, !tbaa !728
  br label %61, !dbg !745

; <label>:47:                                     ; preds = %43
  %48 = load i8*, i8** @optarg, align 8, !dbg !747, !tbaa !650
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !699, metadata !643), !dbg !719
  br label %57, !dbg !749

; <label>:49:                                     ; preds = %43
  %50 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !750, !tbaa !650
  store i64 %50, i64* bitcast (i8** @separator to i64*), align 8, !dbg !751, !tbaa !650
  br label %57, !dbg !752

; <label>:51:                                     ; preds = %43
  store i1 true, i1* @equal_width, align 1
  br label %57, !dbg !753

; <label>:52:                                     ; preds = %43
  tail call void @usage(i32 0) #16, !dbg !754
  unreachable, !dbg !754

; <label>:53:                                     ; preds = %43
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !755, !tbaa !650
  %55 = load i8*, i8** @Version, align 8, !dbg !755, !tbaa !650
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* null) #12, !dbg !755
  tail call void @exit(i32 0) #15, !dbg !755
  unreachable, !dbg !755

; <label>:56:                                     ; preds = %43
  tail call void @usage(i32 1) #16, !dbg !756
  unreachable, !dbg !756

; <label>:57:                                     ; preds = %51, %49, %47
  %58 = phi i8* [ %29, %51 ], [ %29, %49 ], [ %48, %47 ]
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !699, metadata !643), !dbg !719
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !699, metadata !643), !dbg !719
  %59 = load i32, i32* @optind, align 4, !dbg !727, !tbaa !728
  %60 = icmp slt i32 %59, %0, !dbg !730
  br i1 %60, label %27, label %61, !dbg !731, !llvm.loop !757

; <label>:61:                                     ; preds = %57, %39, %35, %45, %2
  %62 = phi i32 [ %24, %2 ], [ %46, %45 ], [ %28, %35 ], [ %28, %39 ], [ %59, %57 ], !dbg !746
  %63 = phi i8* [ null, %2 ], [ %29, %45 ], [ %29, %35 ], [ %29, %39 ], [ %58, %57 ]
  %64 = sub nsw i32 %0, %62, !dbg !759
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !700, metadata !643), !dbg !760
  %65 = icmp eq i32 %64, 0, !dbg !761
  br i1 %65, label %66, label %68, !dbg !763

; <label>:66:                                     ; preds = %61
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #12, !dbg !764
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #12, !dbg !766
  tail call void @usage(i32 1) #16, !dbg !767
  unreachable, !dbg !767

; <label>:68:                                     ; preds = %61
  %69 = icmp ugt i32 %64, 3, !dbg !768
  br i1 %69, label %70, label %78, !dbg !770

; <label>:70:                                     ; preds = %68
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !771
  %72 = load i32, i32* @optind, align 4, !dbg !773, !tbaa !728
  %73 = add nsw i32 %72, 3, !dbg !774
  %74 = sext i32 %73 to i64, !dbg !775
  %75 = getelementptr inbounds i8*, i8** %1, i64 %74, !dbg !775
  %76 = load i8*, i8** %75, align 8, !dbg !775, !tbaa !650
  %77 = tail call i8* @quote(i8* %76) #12, !dbg !776
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %71, i8* %77) #12, !dbg !777
  tail call void @usage(i32 1) #16, !dbg !778
  unreachable, !dbg !778

; <label>:78:                                     ; preds = %68
  %79 = icmp eq i8* %63, null, !dbg !779
  br i1 %79, label %174, label %80, !dbg !781

; <label>:80:                                     ; preds = %78
  br label %81, !dbg !782

; <label>:81:                                     ; preds = %80, %97
  %82 = phi i64 [ %98, %97 ], [ 0, %80 ]
  %83 = phi i64 [ %100, %97 ], [ 0, %80 ]
  tail call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !792, metadata !643) #12, !dbg !805
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !793, metadata !643) #12, !dbg !806
  %84 = getelementptr inbounds i8, i8* %63, i64 %83, !dbg !782
  %85 = load i8, i8* %84, align 1, !dbg !782, !tbaa !735
  %86 = icmp eq i8 %85, 37, !dbg !807
  br i1 %86, label %87, label %92, !dbg !808

; <label>:87:                                     ; preds = %81
  %88 = add i64 %83, 1, !dbg !809
  %89 = getelementptr inbounds i8, i8* %63, i64 %88, !dbg !810
  %90 = load i8, i8* %89, align 1, !dbg !810, !tbaa !735
  %91 = icmp eq i8 %90, 37, !dbg !811
  br i1 %91, label %97, label %101, !dbg !812

; <label>:92:                                     ; preds = %81
  %93 = icmp eq i8 %85, 0, !dbg !813
  br i1 %93, label %94, label %97, !dbg !816

; <label>:94:                                     ; preds = %92
  %95 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0), i32 5) #12, !dbg !817
  %96 = tail call i8* @quote(i8* nonnull %63) #12, !dbg !817
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %95, i8* %96) #12, !dbg !817
  unreachable, !dbg !817

; <label>:97:                                     ; preds = %92, %87
  %98 = add i64 %82, 1, !dbg !818
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !793, metadata !643) #12, !dbg !806
  %99 = select i1 %86, i64 2, i64 1, !dbg !819
  %100 = add i64 %99, %83, !dbg !820
  tail call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !792, metadata !643) #12, !dbg !805
  br label %81, !dbg !821, !llvm.loop !822

; <label>:101:                                    ; preds = %87
  tail call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !792, metadata !643) #12, !dbg !805
  %102 = tail call i64 @strspn(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !825
  %103 = add i64 %102, %88, !dbg !826
  tail call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !792, metadata !643) #12, !dbg !805
  %104 = getelementptr inbounds i8, i8* %63, i64 %103, !dbg !827
  %105 = tail call i64 @strspn(i8* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !828
  %106 = add i64 %103, %105, !dbg !829
  tail call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !792, metadata !643) #12, !dbg !805
  %107 = getelementptr inbounds i8, i8* %63, i64 %106, !dbg !830
  %108 = load i8, i8* %107, align 1, !dbg !830, !tbaa !735
  %109 = icmp eq i8 %108, 46, !dbg !832
  br i1 %109, label %110, label %117, !dbg !833

; <label>:110:                                    ; preds = %101
  %111 = add i64 %106, 1, !dbg !834
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !792, metadata !643) #12, !dbg !805
  %112 = getelementptr inbounds i8, i8* %63, i64 %111, !dbg !836
  %113 = tail call i64 @strspn(i8* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !837
  %114 = add i64 %113, %111, !dbg !838
  tail call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !792, metadata !643) #12, !dbg !805
  %115 = getelementptr inbounds i8, i8* %63, i64 %114
  %116 = load i8, i8* %115, align 1, !dbg !839, !tbaa !735
  br label %117, !dbg !840

; <label>:117:                                    ; preds = %110, %101
  %118 = phi i8 [ %116, %110 ], [ %108, %101 ], !dbg !839
  %119 = phi i64 [ %114, %110 ], [ %106, %101 ]
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !792, metadata !643) #12, !dbg !805
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !795, metadata !643) #12, !dbg !841
  %120 = getelementptr inbounds i8, i8* %63, i64 %119, !dbg !839
  %121 = icmp eq i8 %118, 76, !dbg !842
  %122 = zext i1 %121 to i64, !dbg !843
  %123 = add i64 %119, %122, !dbg !844
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !792, metadata !643) #12, !dbg !805
  %124 = getelementptr inbounds i8, i8* %63, i64 %123, !dbg !845
  %125 = load i8, i8* %124, align 1, !dbg !845, !tbaa !735
  %126 = icmp eq i8 %125, 0, !dbg !847
  br i1 %126, label %127, label %130, !dbg !848

; <label>:127:                                    ; preds = %117
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 5) #12, !dbg !849
  %129 = tail call i8* @quote(i8* nonnull %63) #12, !dbg !849
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %128, i8* %129) #12, !dbg !849
  unreachable, !dbg !849

; <label>:130:                                    ; preds = %117
  %131 = sext i8 %125 to i32, !dbg !845
  %132 = tail call i8* @memchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i32 %131, i64 9) #12, !dbg !850
  %133 = icmp eq i8* %132, null, !dbg !850
  br i1 %133, label %134, label %139, !dbg !852

; <label>:134:                                    ; preds = %130
  %135 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0), i32 5) #12, !dbg !853
  %136 = tail call i8* @quote(i8* nonnull %63) #12, !dbg !853
  %137 = load i8, i8* %124, align 1, !dbg !853, !tbaa !735
  %138 = sext i8 %137 to i32, !dbg !853
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %135, i8* %136, i32 %138) #12, !dbg !853
  unreachable, !dbg !853

; <label>:139:                                    ; preds = %130
  %140 = add i64 %123, 1, !dbg !854
  tail call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !792, metadata !643) #12, !dbg !805
  br label %141, !dbg !855

; <label>:141:                                    ; preds = %157, %139
  %142 = phi i64 [ 0, %139 ], [ %158, %157 ]
  %143 = phi i64 [ %140, %139 ], [ %160, %157 ]
  tail call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !792, metadata !643) #12, !dbg !805
  tail call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !794, metadata !643) #12, !dbg !856
  %144 = getelementptr inbounds i8, i8* %63, i64 %143, !dbg !857
  %145 = load i8, i8* %144, align 1, !dbg !857, !tbaa !735
  %146 = icmp eq i8 %145, 37, !dbg !858
  br i1 %146, label %147, label %155, !dbg !859

; <label>:147:                                    ; preds = %141
  %148 = add i64 %143, 1, !dbg !860
  %149 = getelementptr inbounds i8, i8* %63, i64 %148, !dbg !861
  %150 = load i8, i8* %149, align 1, !dbg !861, !tbaa !735
  %151 = icmp eq i8 %150, 37, !dbg !862
  br i1 %151, label %157, label %152, !dbg !863

; <label>:152:                                    ; preds = %147
  %153 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i64 0, i64 0), i32 5) #12, !dbg !864
  %154 = tail call i8* @quote(i8* nonnull %63) #12, !dbg !864
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %153, i8* %154) #12, !dbg !864
  unreachable, !dbg !864

; <label>:155:                                    ; preds = %141
  %156 = icmp eq i8 %145, 0, !dbg !865
  br i1 %156, label %161, label %157, !dbg !866

; <label>:157:                                    ; preds = %155, %147
  %158 = add i64 %142, 1, !dbg !867
  tail call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !794, metadata !643) #12, !dbg !856
  %159 = select i1 %146, i64 2, i64 1, !dbg !868
  %160 = add i64 %159, %143, !dbg !869
  tail call void @llvm.dbg.value(metadata i64 %160, i64 0, metadata !792, metadata !643) #12, !dbg !805
  br label %141, !dbg !870, !llvm.loop !871

; <label>:161:                                    ; preds = %155
  %162 = add i64 %143, 2, !dbg !874
  %163 = tail call noalias i8* @xmalloc(i64 %162) #12, !dbg !875
  tail call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !803, metadata !643) #12, !dbg !876
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %163, i8* nonnull %63, i64 %119, i32 1, i1 false) #12, !dbg !877
  %164 = getelementptr inbounds i8, i8* %163, i64 %119, !dbg !878
  store i8 76, i8* %164, align 1, !dbg !879, !tbaa !735
  %165 = getelementptr inbounds i8, i8* %164, i64 1, !dbg !880
  %166 = getelementptr inbounds i8, i8* %120, i64 %122, !dbg !881
  tail call void @llvm.dbg.value(metadata i8* %165, i64 0, metadata !882, metadata !643) #12, !dbg !891
  tail call void @llvm.dbg.value(metadata i8* %166, i64 0, metadata !890, metadata !643) #12, !dbg !891
  %167 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %165, i1 false, i1 true) #12, !dbg !893
  %168 = tail call i8* @__strcpy_chk(i8* nonnull %165, i8* nonnull %166, i64 %167) #12, !dbg !894
  tail call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !699, metadata !643), !dbg !719
  tail call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !699, metadata !643), !dbg !719
  %169 = icmp eq i8* %163, null, !dbg !895
  br i1 %169, label %174, label %170, !dbg !897

; <label>:170:                                    ; preds = %161
  %171 = load i1, i1* @equal_width, align 1
  br i1 %171, label %172, label %174, !dbg !898

; <label>:172:                                    ; preds = %170
  %173 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.18, i64 0, i64 0), i32 5) #12, !dbg !899
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %173) #12, !dbg !901
  tail call void @usage(i32 1) #16, !dbg !902
  unreachable, !dbg !902

; <label>:174:                                    ; preds = %161, %78, %170
  %175 = phi i1 [ true, %170 ], [ false, %161 ], [ false, %78 ]
  %176 = phi i8* [ %163, %170 ], [ null, %161 ], [ null, %78 ]
  %177 = phi i64 [ %82, %170 ], [ %82, %161 ], [ 0, %78 ]
  %178 = phi i64 [ %142, %170 ], [ %142, %161 ], [ 0, %78 ]
  %179 = load i32, i32* @optind, align 4, !dbg !903, !tbaa !728
  %180 = sext i32 %179 to i64, !dbg !904
  %181 = getelementptr inbounds i8*, i8** %1, i64 %180, !dbg !904
  %182 = load i8*, i8** %181, align 8, !dbg !904, !tbaa !650
  tail call void @llvm.dbg.value(metadata i8* %182, i64 0, metadata !905, metadata !643) #12, !dbg !911
  %183 = load i8, i8* %182, align 1, !dbg !913, !tbaa !735
  %184 = sext i8 %183 to i32, !dbg !913
  %185 = add nsw i32 %184, -48, !dbg !913
  %186 = icmp ult i32 %185, 10, !dbg !913
  br i1 %186, label %187, label %247, !dbg !914

; <label>:187:                                    ; preds = %174
  %188 = tail call i64 @strlen(i8* nonnull %182) #8, !dbg !915
  %189 = tail call i64 @strspn(i8* nonnull %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !916
  %190 = icmp eq i64 %188, %189, !dbg !917
  br i1 %190, label %191, label %247, !dbg !918

; <label>:191:                                    ; preds = %187
  %192 = icmp eq i32 %64, 1, !dbg !919
  br i1 %192, label %227, label %193, !dbg !920

; <label>:193:                                    ; preds = %191
  %194 = add nsw i32 %179, 1, !dbg !921
  %195 = sext i32 %194 to i64, !dbg !922
  %196 = getelementptr inbounds i8*, i8** %1, i64 %195, !dbg !922
  %197 = load i8*, i8** %196, align 8, !dbg !922, !tbaa !650
  tail call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !905, metadata !643) #12, !dbg !923
  %198 = load i8, i8* %197, align 1, !dbg !925, !tbaa !735
  %199 = sext i8 %198 to i32, !dbg !925
  %200 = add nsw i32 %199, -48, !dbg !925
  %201 = icmp ult i32 %200, 10, !dbg !925
  br i1 %201, label %202, label %247, !dbg !926

; <label>:202:                                    ; preds = %193
  %203 = tail call i64 @strlen(i8* nonnull %197) #8, !dbg !927
  %204 = tail call i64 @strspn(i8* nonnull %197, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !928
  %205 = icmp eq i64 %203, %204, !dbg !929
  br i1 %205, label %206, label %247, !dbg !930

; <label>:206:                                    ; preds = %202
  %207 = icmp ult i32 %64, 3, !dbg !931
  br i1 %207, label %227, label %208, !dbg !932

; <label>:208:                                    ; preds = %206
  %209 = tail call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* %197) #8, !dbg !933
  %210 = icmp eq i32 %209, 0, !dbg !933
  br i1 %210, label %211, label %247, !dbg !934

; <label>:211:                                    ; preds = %208
  %212 = add nsw i32 %179, 2, !dbg !935
  %213 = sext i32 %212 to i64, !dbg !936
  %214 = getelementptr inbounds i8*, i8** %1, i64 %213, !dbg !936
  %215 = load i8*, i8** %214, align 8, !dbg !936, !tbaa !650
  tail call void @llvm.dbg.value(metadata i8* %215, i64 0, metadata !905, metadata !643) #12, !dbg !937
  %216 = load i8, i8* %215, align 1, !dbg !939, !tbaa !735
  %217 = sext i8 %216 to i32, !dbg !939
  %218 = add nsw i32 %217, -48, !dbg !939
  %219 = icmp ult i32 %218, 10, !dbg !939
  br i1 %219, label %220, label %247, !dbg !940

; <label>:220:                                    ; preds = %211
  %221 = tail call i64 @strlen(i8* nonnull %215) #8, !dbg !941
  %222 = tail call i64 @strspn(i8* nonnull %215, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !942
  %223 = icmp ne i64 %221, %222, !dbg !943
  %224 = load i1, i1* @equal_width, align 1
  %225 = or i1 %175, %224, !dbg !944
  %226 = or i1 %223, %225, !dbg !945
  br i1 %226, label %247, label %230, !dbg !945

; <label>:227:                                    ; preds = %191, %206
  %228 = load i1, i1* @equal_width, align 1
  %229 = or i1 %175, %228, !dbg !944
  br i1 %229, label %247, label %230, !dbg !944

; <label>:230:                                    ; preds = %220, %227
  %231 = load i8*, i8** @separator, align 8, !dbg !946, !tbaa !650
  %232 = tail call i64 @strlen(i8* %231) #8, !dbg !947
  %233 = icmp eq i64 %232, 1, !dbg !948
  br i1 %233, label %234, label %247, !dbg !949

; <label>:234:                                    ; preds = %230
  %235 = select i1 %192, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* %182, !dbg !950
  tail call void @llvm.dbg.value(metadata i8* %235, i64 0, metadata !701, metadata !643), !dbg !951
  %236 = add i32 %64, -1, !dbg !952
  %237 = add i32 %236, %179, !dbg !953
  %238 = zext i32 %237 to i64, !dbg !954
  %239 = getelementptr inbounds i8*, i8** %1, i64 %238, !dbg !954
  %240 = load i8*, i8** %239, align 8, !dbg !954, !tbaa !650
  tail call void @llvm.dbg.value(metadata i8* %240, i64 0, metadata !704, metadata !643), !dbg !955
  %241 = tail call fastcc zeroext i1 @seq_fast(i8* %235, i8* %240), !dbg !956
  br i1 %241, label %497, label %242

; <label>:242:                                    ; preds = %234
  %243 = load i32, i32* @optind, align 4, !dbg !958, !tbaa !728
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %1, i64 %244
  %246 = load i8*, i8** %245, align 8, !dbg !959, !tbaa !650
  br label %247

; <label>:247:                                    ; preds = %242, %211, %193, %174, %220, %230, %227, %208, %202, %187
  %248 = phi i8* [ %246, %242 ], [ %182, %211 ], [ %182, %193 ], [ %182, %174 ], [ %182, %220 ], [ %182, %230 ], [ %182, %227 ], [ %182, %208 ], [ %182, %202 ], [ %182, %187 ], !dbg !959
  %249 = phi i32 [ %243, %242 ], [ %179, %211 ], [ %179, %193 ], [ %179, %174 ], [ %179, %220 ], [ %179, %230 ], [ %179, %227 ], [ %179, %208 ], [ %179, %202 ], [ %179, %187 ], !dbg !958
  %250 = add nsw i32 %249, 1, !dbg !958
  store i32 %250, i32* @optind, align 4, !dbg !958, !tbaa !728
  call fastcc void @scan_arg(%struct.operand* nonnull sret %11, i8* %248), !dbg !960
  %251 = bitcast %struct.operand* %11 to i8*, !dbg !960
  %252 = getelementptr inbounds %struct.operand, %struct.operand* %11, i64 0, i32 0, !dbg !960
  %253 = load x86_fp80, x86_fp80* %252, align 16, !dbg !960
  %254 = getelementptr inbounds i8, i8* %251, i64 10, !dbg !960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %18, i8* %254, i64 6, i32 2, i1 false), !dbg !960
  %255 = getelementptr inbounds %struct.operand, %struct.operand* %11, i64 0, i32 1, !dbg !960
  %256 = load i64, i64* %255, align 16, !dbg !960
  %257 = getelementptr inbounds %struct.operand, %struct.operand* %11, i64 0, i32 2, !dbg !960
  %258 = load i32, i32* %257, align 8, !dbg !960
  %259 = getelementptr inbounds i8, i8* %251, i64 28, !dbg !960
  %260 = bitcast i8* %259 to i32*, !dbg !960
  %261 = load i32, i32* %260, align 4, !dbg !960
  %262 = load i32, i32* @optind, align 4, !dbg !961, !tbaa !728
  %263 = icmp slt i32 %262, %0, !dbg !963
  br i1 %263, label %264, label %305, !dbg !964

; <label>:264:                                    ; preds = %247
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %16, i8* nonnull %18, i64 6, i32 2, i1 false), !dbg !965
  %265 = add nsw i32 %262, 1, !dbg !967
  store i32 %265, i32* @optind, align 4, !dbg !967, !tbaa !728
  %266 = sext i32 %262 to i64, !dbg !968
  %267 = getelementptr inbounds i8*, i8** %1, i64 %266, !dbg !968
  %268 = load i8*, i8** %267, align 8, !dbg !968, !tbaa !650
  call fastcc void @scan_arg(%struct.operand* nonnull sret %12, i8* %268), !dbg !969
  %269 = bitcast %struct.operand* %12 to i8*, !dbg !969
  %270 = getelementptr inbounds %struct.operand, %struct.operand* %12, i64 0, i32 0, !dbg !969
  %271 = load x86_fp80, x86_fp80* %270, align 16, !dbg !969
  %272 = getelementptr inbounds i8, i8* %269, i64 10, !dbg !969
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %18, i8* %272, i64 6, i32 2, i1 false), !dbg !969
  %273 = getelementptr inbounds %struct.operand, %struct.operand* %12, i64 0, i32 1, !dbg !969
  %274 = load i64, i64* %273, align 16, !dbg !969
  %275 = getelementptr inbounds %struct.operand, %struct.operand* %12, i64 0, i32 2, !dbg !969
  %276 = load i32, i32* %275, align 8, !dbg !969
  %277 = getelementptr inbounds i8, i8* %269, i64 28, !dbg !969
  %278 = bitcast i8* %277 to i32*, !dbg !969
  %279 = load i32, i32* %278, align 4, !dbg !969
  %280 = load i32, i32* @optind, align 4, !dbg !970, !tbaa !728
  %281 = icmp slt i32 %280, %0, !dbg !972
  br i1 %281, label %282, label %305, !dbg !973

; <label>:282:                                    ; preds = %264
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %17, i8* nonnull %18, i64 6, i32 2, i1 false), !dbg !974
  %283 = fcmp oeq x86_fp80 %271, 0xK00000000000000000000, !dbg !976
  br i1 %283, label %284, label %292, !dbg !978

; <label>:284:                                    ; preds = %282
  %285 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #12, !dbg !979
  %286 = load i32, i32* @optind, align 4, !dbg !981, !tbaa !728
  %287 = add nsw i32 %286, -1, !dbg !982
  %288 = sext i32 %287 to i64, !dbg !983
  %289 = getelementptr inbounds i8*, i8** %1, i64 %288, !dbg !983
  %290 = load i8*, i8** %289, align 8, !dbg !983, !tbaa !650
  %291 = tail call i8* @quote(i8* %290) #12, !dbg !984
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %285, i8* %291) #12, !dbg !985
  tail call void @usage(i32 1) #16, !dbg !986
  unreachable, !dbg !986

; <label>:292:                                    ; preds = %282
  %293 = add nsw i32 %280, 1, !dbg !987
  store i32 %293, i32* @optind, align 4, !dbg !987, !tbaa !728
  %294 = sext i32 %280 to i64, !dbg !988
  %295 = getelementptr inbounds i8*, i8** %1, i64 %294, !dbg !988
  %296 = load i8*, i8** %295, align 8, !dbg !988, !tbaa !650
  call fastcc void @scan_arg(%struct.operand* nonnull sret %13, i8* %296), !dbg !989
  %297 = bitcast %struct.operand* %13 to i8*, !dbg !989
  %298 = getelementptr inbounds %struct.operand, %struct.operand* %13, i64 0, i32 0, !dbg !989
  %299 = load x86_fp80, x86_fp80* %298, align 16, !dbg !989
  %300 = getelementptr inbounds i8, i8* %297, i64 10, !dbg !989
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %18, i8* %300, i64 6, i32 2, i1 false), !dbg !989
  %301 = getelementptr inbounds %struct.operand, %struct.operand* %13, i64 0, i32 1, !dbg !989
  %302 = load i64, i64* %301, align 16, !dbg !989
  %303 = getelementptr inbounds %struct.operand, %struct.operand* %13, i64 0, i32 2, !dbg !989
  %304 = load i32, i32* %303, align 8, !dbg !989
  br label %305, !dbg !990

; <label>:305:                                    ; preds = %264, %292, %247
  %306 = phi i64 [ %302, %292 ], [ %274, %264 ], [ %256, %247 ]
  %307 = phi i64 [ %256, %292 ], [ %256, %264 ], [ 1, %247 ]
  %308 = phi i64 [ %274, %292 ], [ 1, %264 ], [ 1, %247 ]
  %309 = phi i32 [ %261, %292 ], [ %261, %264 ], [ 0, %247 ]
  %310 = phi i32 [ %258, %292 ], [ %258, %264 ], [ 0, %247 ]
  %311 = phi x86_fp80 [ %253, %292 ], [ %253, %264 ], [ 0xK3FFF8000000000000000, %247 ]
  %312 = phi i32 [ %279, %292 ], [ 0, %264 ], [ 0, %247 ]
  %313 = phi i32 [ %276, %292 ], [ 0, %264 ], [ 0, %247 ]
  %314 = phi x86_fp80 [ %271, %292 ], [ 0xK3FFF8000000000000000, %264 ], [ 0xK3FFF8000000000000000, %247 ]
  %315 = phi i32 [ %304, %292 ], [ %276, %264 ], [ %258, %247 ]
  %316 = phi x86_fp80 [ %299, %292 ], [ %271, %264 ], [ %253, %247 ]
  %317 = fmul x86_fp80 %311, 0xK00000000000000000000, !dbg !991
  %318 = fcmp oeq x86_fp80 %317, 0xK00000000000000000000, !dbg !991
  %319 = or i32 %313, %310, !dbg !992
  %320 = icmp eq i32 %319, 0, !dbg !992
  %321 = and i1 %318, %320, !dbg !992
  br i1 %321, label %322, label %368, !dbg !992

; <label>:322:                                    ; preds = %305
  %323 = icmp eq i32 %315, 0, !dbg !993
  %324 = fcmp oge x86_fp80 %311, 0xK00000000000000000000, !dbg !994
  %325 = and i1 %324, %323, !dbg !995
  %326 = fcmp oeq x86_fp80 %314, 0xK3FFF8000000000000000, !dbg !996
  %327 = and i1 %326, %325, !dbg !995
  br i1 %327, label %328, label %368, !dbg !995

; <label>:328:                                    ; preds = %322
  %329 = fcmp ult x86_fp80 %316, 0xK00000000000000000000, !dbg !997
  %330 = load i1, i1* @equal_width, align 1
  %331 = or i1 %175, %330, !dbg !998
  %332 = or i1 %329, %331, !dbg !999
  br i1 %332, label %368, label %333, !dbg !999

; <label>:333:                                    ; preds = %328
  %334 = load i8*, i8** @separator, align 8, !dbg !1000, !tbaa !650
  %335 = tail call i64 @strlen(i8* %334) #8, !dbg !1001
  %336 = icmp eq i64 %335, 1, !dbg !1002
  br i1 %336, label %337, label %368, !dbg !1003

; <label>:337:                                    ; preds = %333
  %338 = bitcast i8** %14 to i8*, !dbg !1004
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %338) #12, !dbg !1004
  %339 = bitcast i8** %15 to i8*, !dbg !1005
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %339) #12, !dbg !1005
  tail call void @llvm.dbg.value(metadata i8** %14, i64 0, metadata !705, metadata !643), !dbg !1006
  %340 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %14, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), x86_fp80 %311) #12, !dbg !1007
  %341 = icmp slt i32 %340, 0, !dbg !1009
  br i1 %341, label %342, label %343, !dbg !1010

; <label>:342:                                    ; preds = %337
  call void @xalloc_die() #15, !dbg !1011
  unreachable, !dbg !1011

; <label>:343:                                    ; preds = %337
  %344 = fmul x86_fp80 %316, 0xK00000000000000000000, !dbg !1012
  %345 = fcmp oeq x86_fp80 %344, 0xK00000000000000000000, !dbg !1012
  br i1 %345, label %348, label %346, !dbg !1014

; <label>:346:                                    ; preds = %343
  %347 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #12, !dbg !1015
  call void @llvm.dbg.value(metadata i8* %347, i64 0, metadata !708, metadata !643), !dbg !1016
  store i8* %347, i8** %15, align 8, !dbg !1017, !tbaa !650
  br label %352, !dbg !1018

; <label>:348:                                    ; preds = %343
  call void @llvm.dbg.value(metadata i8** %15, i64 0, metadata !708, metadata !643), !dbg !1016
  %349 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %15, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), x86_fp80 %316) #12, !dbg !1019
  %350 = icmp slt i32 %349, 0, !dbg !1021
  br i1 %350, label %351, label %352, !dbg !1022

; <label>:351:                                    ; preds = %348
  call void @xalloc_die() #15, !dbg !1023
  unreachable, !dbg !1023

; <label>:352:                                    ; preds = %348, %346
  %353 = load i8*, i8** %14, align 8, !dbg !1024, !tbaa !650
  call void @llvm.dbg.value(metadata i8* %353, i64 0, metadata !705, metadata !643), !dbg !1006
  %354 = load i8, i8* %353, align 1, !dbg !1026, !tbaa !735
  %355 = icmp eq i8 %354, 45, !dbg !1027
  br i1 %355, label %364, label %356, !dbg !1028

; <label>:356:                                    ; preds = %352
  %357 = load i8*, i8** %15, align 8, !dbg !1029, !tbaa !650
  call void @llvm.dbg.value(metadata i8* %357, i64 0, metadata !708, metadata !643), !dbg !1016
  %358 = load i8, i8* %357, align 1, !dbg !1030, !tbaa !735
  %359 = icmp eq i8 %358, 45, !dbg !1031
  br i1 %359, label %364, label %360, !dbg !1032

; <label>:360:                                    ; preds = %356
  %361 = call fastcc zeroext i1 @seq_fast(i8* %353, i8* %357), !dbg !1033
  br i1 %361, label %367, label %362, !dbg !1034

; <label>:362:                                    ; preds = %360
  %363 = load i8*, i8** %14, align 8, !dbg !1035, !tbaa !650
  br label %364, !dbg !1034

; <label>:364:                                    ; preds = %362, %356, %352
  %365 = phi i8* [ %363, %362 ], [ %353, %356 ], [ %353, %352 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8* %365, i64 0, metadata !705, metadata !643), !dbg !1006
  call void @free(i8* %365) #12, !dbg !1036
  %366 = load i8*, i8** %15, align 8, !dbg !1037, !tbaa !650
  call void @llvm.dbg.value(metadata i8* %366, i64 0, metadata !708, metadata !643), !dbg !1016
  call void @free(i8* %366) #12, !dbg !1038
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %339) #12, !dbg !1039
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %338) #12, !dbg !1039
  br label %368

; <label>:367:                                    ; preds = %360
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %339) #12, !dbg !1039
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %338) #12, !dbg !1039
  br label %497

; <label>:368:                                    ; preds = %322, %364, %328, %333, %305
  %369 = icmp eq i8* %176, null, !dbg !1040
  br i1 %369, label %370, label %425, !dbg !1041

; <label>:370:                                    ; preds = %368
  call void @llvm.dbg.value(metadata %struct.operand* undef, i64 0, metadata !691, metadata !643), !dbg !715
  call void @llvm.dbg.value(metadata %struct.operand* undef, i64 0, metadata !692, metadata !643), !dbg !717
  call void @llvm.dbg.value(metadata %struct.operand* undef, i64 0, metadata !693, metadata !643), !dbg !1042
  %371 = bitcast %struct.operand* %7 to i8*, !dbg !1043
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %371), !dbg !1043
  %372 = bitcast %struct.operand* %6 to i8*, !dbg !1043
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %372), !dbg !1043
  call void @llvm.dbg.value(metadata x86_fp80 %316, i64 0, metadata !87, metadata !1044), !dbg !709
  call void @llvm.dbg.value(metadata i64 %306, i64 0, metadata !87, metadata !1045), !dbg !709
  call void @llvm.dbg.value(metadata i32 %315, i64 0, metadata !87, metadata !1046), !dbg !709
  %373 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 0, !dbg !1043
  store x86_fp80 %314, x86_fp80* %373, align 16, !dbg !1043
  %374 = getelementptr inbounds i8, i8* %372, i64 10, !dbg !1043
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %374, i8* nonnull %17, i64 6, i32 2, i1 false), !dbg !1043
  %375 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 1, !dbg !1043
  store i64 %308, i64* %375, align 16, !dbg !1043
  %376 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 2, !dbg !1043
  store i32 %313, i32* %376, align 8, !dbg !1043
  %377 = getelementptr inbounds i8, i8* %372, i64 28, !dbg !1043
  %378 = bitcast i8* %377 to i32*, !dbg !1043
  store i32 %312, i32* %378, align 4, !dbg !1043
  %379 = getelementptr inbounds %struct.operand, %struct.operand* %7, i64 0, i32 0, !dbg !1043
  store x86_fp80 %311, x86_fp80* %379, align 16, !dbg !1043
  %380 = getelementptr inbounds i8, i8* %371, i64 10, !dbg !1043
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %380, i8* nonnull %16, i64 6, i32 2, i1 false), !dbg !1043
  %381 = getelementptr inbounds %struct.operand, %struct.operand* %7, i64 0, i32 1, !dbg !1043
  store i64 %307, i64* %381, align 16, !dbg !1043
  %382 = getelementptr inbounds %struct.operand, %struct.operand* %7, i64 0, i32 2, !dbg !1043
  store i32 %310, i32* %382, align 8, !dbg !1043
  %383 = getelementptr inbounds i8, i8* %371, i64 28, !dbg !1043
  %384 = bitcast i8* %383 to i32*, !dbg !1043
  store i32 %309, i32* %384, align 4, !dbg !1043
  %385 = icmp sgt i32 %310, %313, !dbg !1047
  %386 = select i1 %385, %struct.operand* %7, %struct.operand* %6, !dbg !1047
  %387 = getelementptr inbounds %struct.operand, %struct.operand* %386, i64 0, i32 2, !dbg !1047
  %388 = load i32, i32* %387, align 8, !dbg !1047, !tbaa !1048
  call void @llvm.dbg.value(metadata i32 %388, i64 0, metadata !88, metadata !643) #12, !dbg !1052
  %389 = icmp eq i32 %388, 2147483647, !dbg !1053
  %390 = icmp eq i32 %315, 2147483647, !dbg !1054
  %391 = or i1 %390, %389, !dbg !1055
  br i1 %391, label %423, label %392, !dbg !1055

; <label>:392:                                    ; preds = %370
  %393 = load i1, i1* @equal_width, align 1
  br i1 %393, label %394, label %421, !dbg !1056

; <label>:394:                                    ; preds = %392
  %395 = sub nsw i32 %388, %310, !dbg !1057
  %396 = sext i32 %395 to i64, !dbg !1058
  %397 = sub nsw i32 %388, %315, !dbg !1059
  %398 = sext i32 %397 to i64, !dbg !1060
  %399 = icmp ne i32 %315, 0, !dbg !1061
  %400 = icmp eq i32 %388, 0, !dbg !1063
  %401 = and i1 %399, %400, !dbg !1064
  %402 = sext i1 %401 to i64, !dbg !1064
  %403 = icmp eq i32 %315, 0, !dbg !1065
  %404 = icmp ne i32 %388, 0, !dbg !1067
  %405 = and i1 %403, %404, !dbg !1068
  %406 = zext i1 %405 to i64, !dbg !1068
  %407 = add i64 %306, %398, !dbg !1069
  %408 = add i64 %407, %402, !dbg !1064
  %409 = add i64 %408, %406, !dbg !1068
  call void @llvm.dbg.value(metadata i64 %409, i64 0, metadata !94, metadata !643) #12, !dbg !1070
  %410 = icmp eq i32 %310, 0, !dbg !1071
  %411 = and i1 %410, %404, !dbg !1073
  %412 = zext i1 %411 to i64, !dbg !1073
  %413 = add i64 %307, %396, !dbg !1074
  %414 = add i64 %413, %412, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !89, metadata !643) #12, !dbg !1075
  %415 = icmp ugt i64 %414, %409, !dbg !1076
  %416 = select i1 %415, i64 %414, i64 %409, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %416, i64 0, metadata !95, metadata !643) #12, !dbg !1077
  %417 = icmp ult i64 %416, 2147483648, !dbg !1078
  br i1 %417, label %418, label %423, !dbg !1079

; <label>:418:                                    ; preds = %394
  %419 = trunc i64 %416 to i32, !dbg !1080
  call void @llvm.dbg.value(metadata i32 %419, i64 0, metadata !96, metadata !643) #12, !dbg !1081
  %420 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), i32 1, i64 28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i32 %419, i32 %388) #12, !dbg !1082
  br label %423

; <label>:421:                                    ; preds = %392
  %422 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), i32 1, i64 28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i32 %388) #12, !dbg !1083
  br label %423, !dbg !1085

; <label>:423:                                    ; preds = %370, %394, %418, %421
  %424 = phi i8* [ getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), %421 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), %418 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), %394 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), %370 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %371), !dbg !1086
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %372), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %424, i64 0, metadata !699, metadata !643), !dbg !719
  br label %425, !dbg !1087

; <label>:425:                                    ; preds = %423, %368
  %426 = phi i8* [ %424, %423 ], [ %176, %368 ]
  call void @llvm.dbg.value(metadata i8* %426, i64 0, metadata !699, metadata !643), !dbg !719
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !1088, metadata !1115) #12, !dbg !1116
  call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1088, metadata !1118) #12, !dbg !1116
  call void @llvm.dbg.value(metadata i8* %426, i64 0, metadata !1093, metadata !643) #12, !dbg !1119
  call void @llvm.dbg.declare(metadata %struct.layout* undef, metadata !1088, metadata !643) #12, !dbg !1116
  call void @llvm.dbg.value(metadata x86_fp80 %311, i64 0, metadata !1094, metadata !643) #12, !dbg !1120
  call void @llvm.dbg.value(metadata x86_fp80 %314, i64 0, metadata !1095, metadata !643) #12, !dbg !1121
  call void @llvm.dbg.value(metadata x86_fp80 %316, i64 0, metadata !1096, metadata !643) #12, !dbg !1122
  %427 = fcmp olt x86_fp80 %314, 0xK00000000000000000000, !dbg !1123
  %428 = fcmp olt x86_fp80 %316, %311, !dbg !1124
  %429 = fcmp olt x86_fp80 %311, %316, !dbg !1125
  %430 = select i1 %427, i1 %429, i1 %428, !dbg !1126
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1097, metadata !643) #12, !dbg !1127
  br i1 %430, label %497, label %431, !dbg !1128

; <label>:431:                                    ; preds = %425
  call void @llvm.dbg.value(metadata x86_fp80 %311, i64 0, metadata !1098, metadata !643) #12, !dbg !1129
  call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1101, metadata !643) #12, !dbg !1130
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1097, metadata !643) #12, !dbg !1127
  call void @llvm.dbg.value(metadata x86_fp80 %311, i64 0, metadata !1098, metadata !643) #12, !dbg !1129
  call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1101, metadata !643) #12, !dbg !1130
  call void @llvm.dbg.value(metadata x86_fp80 %311, i64 0, metadata !1102, metadata !643) #12, !dbg !1131
  %432 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %426, x86_fp80 %311) #12, !dbg !1132
  %433 = icmp slt i32 %432, 0, !dbg !1134
  br i1 %433, label %438, label %434, !dbg !1135

; <label>:434:                                    ; preds = %431
  %435 = bitcast x86_fp80* %3 to i8*
  %436 = bitcast i8** %4 to i8*
  %437 = bitcast i8** %5 to i8*
  br label %439, !dbg !1135

; <label>:438:                                    ; preds = %488, %431
  call fastcc void @io_error() #15, !dbg !1136
  unreachable, !dbg !1136

; <label>:439:                                    ; preds = %488, %434
  %440 = phi i8 [ 0, %434 ], [ %450, %488 ]
  %441 = phi x86_fp80 [ %311, %434 ], [ %446, %488 ]
  %442 = phi x86_fp80 [ 0xK3FFF8000000000000000, %434 ], [ %489, %488 ]
  call void @llvm.dbg.value(metadata x86_fp80 %442, i64 0, metadata !1101, metadata !643) #12, !dbg !1130
  call void @llvm.dbg.value(metadata x86_fp80 %441, i64 0, metadata !1098, metadata !643) #12, !dbg !1129
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1097, metadata !643) #12, !dbg !1127
  %443 = icmp eq i8 %440, 0, !dbg !1137
  br i1 %443, label %444, label %492, !dbg !1139

; <label>:444:                                    ; preds = %439
  %445 = fmul x86_fp80 %314, %442, !dbg !1140
  %446 = fadd x86_fp80 %311, %445, !dbg !1141
  call void @llvm.dbg.value(metadata x86_fp80 %446, i64 0, metadata !1098, metadata !643) #12, !dbg !1129
  %447 = fcmp ogt x86_fp80 %446, %316, !dbg !1142
  %448 = fcmp olt x86_fp80 %446, %316, !dbg !1143
  %449 = select i1 %427, i1 %448, i1 %447, !dbg !1144
  %450 = zext i1 %449 to i8, !dbg !1145
  call void @llvm.dbg.value(metadata i8 %450, i64 0, metadata !1097, metadata !643) #12, !dbg !1127
  br i1 %449, label %451, label %482, !dbg !1146

; <label>:451:                                    ; preds = %444
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1106, metadata !643) #12, !dbg !1147
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %435) #12, !dbg !1148
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %436) #12, !dbg !1149
  %452 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12, !dbg !1150
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1110, metadata !643) #12, !dbg !1151
  %453 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %4, i32 1, i8* %426, x86_fp80 %446) #12, !dbg !1152
  call void @llvm.dbg.value(metadata i32 %453, i64 0, metadata !1111, metadata !643) #12, !dbg !1153
  %454 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !1154
  %455 = icmp slt i32 %453, 0, !dbg !1155
  br i1 %455, label %456, label %457, !dbg !1157

; <label>:456:                                    ; preds = %451
  call void @xalloc_die() #15, !dbg !1158
  unreachable, !dbg !1158

; <label>:457:                                    ; preds = %451
  %458 = load i8*, i8** %4, align 8, !dbg !1159, !tbaa !650
  call void @llvm.dbg.value(metadata i8* %458, i64 0, metadata !1110, metadata !643) #12, !dbg !1151
  %459 = sext i32 %453 to i64, !dbg !1160
  %460 = sub i64 %459, %178, !dbg !1161
  %461 = getelementptr inbounds i8, i8* %458, i64 %460, !dbg !1159
  store i8 0, i8* %461, align 1, !dbg !1162, !tbaa !735
  %462 = load i8*, i8** %4, align 8, !dbg !1163, !tbaa !650
  call void @llvm.dbg.value(metadata i8* %462, i64 0, metadata !1110, metadata !643) #12, !dbg !1151
  %463 = getelementptr inbounds i8, i8* %462, i64 %177, !dbg !1164
  call void @llvm.dbg.value(metadata x86_fp80* %3, i64 0, metadata !1109, metadata !643) #12, !dbg !1165
  %464 = call zeroext i1 @xstrtold(i8* %463, i8** null, x86_fp80* nonnull %3, x86_fp80 (i8*, i8**)* nonnull @c_strtold) #12, !dbg !1166
  %465 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1167
  %466 = fcmp oeq x86_fp80 %465, %316, !dbg !1168
  %467 = and i1 %464, %466, !dbg !1169
  br i1 %467, label %470, label %468, !dbg !1169

; <label>:468:                                    ; preds = %457
  %469 = load i8*, i8** %4, align 8, !dbg !1170, !tbaa !650
  call void @free(i8* %469) #12, !dbg !1171
  br label %480, !dbg !1172

; <label>:470:                                    ; preds = %457
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %437) #12, !dbg !1173
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1112, metadata !643) #12, !dbg !1174
  store i8* null, i8** %5, align 8, !dbg !1174, !tbaa !650
  call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !1112, metadata !643) #12, !dbg !1174
  %471 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* %426, x86_fp80 %441) #12, !dbg !1175
  %472 = icmp slt i32 %471, 0, !dbg !1177
  br i1 %472, label %473, label %474, !dbg !1178

; <label>:473:                                    ; preds = %470
  call void @xalloc_die() #15, !dbg !1179
  unreachable, !dbg !1179

; <label>:474:                                    ; preds = %470
  %475 = load i8*, i8** %5, align 8, !dbg !1180, !tbaa !650
  call void @llvm.dbg.value(metadata i8* %475, i64 0, metadata !1112, metadata !643) #12, !dbg !1174
  %476 = load i8*, i8** %4, align 8, !dbg !1180, !tbaa !650
  call void @llvm.dbg.value(metadata i8* %476, i64 0, metadata !1110, metadata !643) #12, !dbg !1151
  %477 = call i32 @strcmp(i8* %475, i8* %476) #8, !dbg !1180
  %478 = icmp eq i32 %477, 0, !dbg !1180
  call void @free(i8* %475) #12, !dbg !1181
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %437) #12, !dbg !1182
  %479 = load i8*, i8** %4, align 8, !dbg !1170, !tbaa !650
  call void @llvm.dbg.value(metadata i8* %479, i64 0, metadata !1110, metadata !643) #12, !dbg !1151
  call void @free(i8* %479) #12, !dbg !1171
  br i1 %478, label %480, label %481, !dbg !1172

; <label>:480:                                    ; preds = %474, %468
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %436) #12, !dbg !1172
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %435) #12, !dbg !1172
  br label %492

; <label>:481:                                    ; preds = %474
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %436) #12, !dbg !1172
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %435) #12, !dbg !1172
  br label %482

; <label>:482:                                    ; preds = %481, %444
  %483 = load i8*, i8** @separator, align 8, !dbg !1183, !tbaa !650
  %484 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1183, !tbaa !650
  %485 = call i32 @fputs_unlocked(i8* %483, %struct._IO_FILE* %484) #12, !dbg !1183
  %486 = icmp eq i32 %485, -1, !dbg !1185
  br i1 %486, label %487, label %488, !dbg !1186

; <label>:487:                                    ; preds = %482
  call fastcc void @io_error() #15, !dbg !1187
  unreachable, !dbg !1187

; <label>:488:                                    ; preds = %482
  call void @llvm.dbg.value(metadata i8 %450, i64 0, metadata !1097, metadata !643) #12, !dbg !1127
  call void @llvm.dbg.value(metadata x86_fp80 %446, i64 0, metadata !1098, metadata !643) #12, !dbg !1129
  %489 = fadd x86_fp80 %442, 0xK3FFF8000000000000000, !dbg !1188
  call void @llvm.dbg.value(metadata x86_fp80 %489, i64 0, metadata !1101, metadata !643) #12, !dbg !1130
  call void @llvm.dbg.value(metadata i8 %450, i64 0, metadata !1097, metadata !643) #12, !dbg !1127
  call void @llvm.dbg.value(metadata x86_fp80 %446, i64 0, metadata !1098, metadata !643) #12, !dbg !1129
  call void @llvm.dbg.value(metadata x86_fp80 %489, i64 0, metadata !1101, metadata !643) #12, !dbg !1130
  call void @llvm.dbg.value(metadata x86_fp80 %446, i64 0, metadata !1102, metadata !643) #12, !dbg !1131
  %490 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %426, x86_fp80 %446) #12, !dbg !1132
  %491 = icmp slt i32 %490, 0, !dbg !1134
  br i1 %491, label %438, label %439, !dbg !1135, !llvm.loop !1189

; <label>:492:                                    ; preds = %439, %480
  %493 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1192, !tbaa !650
  %494 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* %493) #12, !dbg !1192
  %495 = icmp eq i32 %494, -1, !dbg !1194
  br i1 %495, label %496, label %497, !dbg !1195

; <label>:496:                                    ; preds = %492
  call fastcc void @io_error() #15, !dbg !1196
  unreachable, !dbg !1196

; <label>:497:                                    ; preds = %234, %492, %425, %367
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %18), !dbg !1197
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %17), !dbg !1197
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %16), !dbg !1197
  ret i32 0, !dbg !1197
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #8

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @seq_fast(i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1198 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1202, metadata !643), !dbg !1225
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1203, metadata !643), !dbg !1226
  %3 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !1227
  %4 = icmp eq i32 %3, 0, !dbg !1227
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1228, metadata !643), !dbg !1234
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1233, metadata !643), !dbg !1236
  br label %5, !dbg !1237

; <label>:5:                                      ; preds = %8, %2
  %6 = phi i8* [ %0, %2 ], [ %9, %8 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1228, metadata !643), !dbg !1234
  %7 = load i8, i8* %6, align 1, !dbg !1238, !tbaa !735
  switch i8 %7, label %14 [
    i8 48, label %8
    i8 0, label %10
  ], !dbg !1237

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1239
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1228, metadata !643), !dbg !1234
  br label %5, !dbg !1237, !llvm.loop !1240

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8* %6, %0, !dbg !1243
  %12 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1245
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1228, metadata !643), !dbg !1234
  %13 = select i1 %11, i8* %6, i8* %12, !dbg !1246
  br label %14, !dbg !1246

; <label>:14:                                     ; preds = %5, %10
  %15 = phi i8* [ %13, %10 ], [ %6, %5 ]
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1202, metadata !643), !dbg !1225
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1228, metadata !643), !dbg !1247
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1233, metadata !643), !dbg !1249
  br label %16, !dbg !1250

; <label>:16:                                     ; preds = %19, %14
  %17 = phi i8* [ %1, %14 ], [ %20, %19 ]
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1228, metadata !643), !dbg !1247
  %18 = load i8, i8* %17, align 1, !dbg !1251, !tbaa !735
  switch i8 %18, label %25 [
    i8 48, label %19
    i8 0, label %21
  ], !dbg !1250

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1252
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1228, metadata !643), !dbg !1247
  br label %16, !dbg !1250, !llvm.loop !1240

; <label>:21:                                     ; preds = %16
  %22 = icmp eq i8* %17, %1, !dbg !1253
  %23 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1254
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1228, metadata !643), !dbg !1247
  %24 = select i1 %22, i8* %17, i8* %23, !dbg !1255
  br label %25, !dbg !1255

; <label>:25:                                     ; preds = %16, %21
  %26 = phi i8* [ %24, %21 ], [ %17, %16 ]
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1203, metadata !643), !dbg !1226
  %27 = tail call i64 @strlen(i8* %15) #8, !dbg !1256
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1205, metadata !643), !dbg !1257
  br i1 %4, label %30, label %28, !dbg !1258

; <label>:28:                                     ; preds = %25
  %29 = tail call i64 @strlen(i8* %26) #8, !dbg !1259
  br label %30, !dbg !1258

; <label>:30:                                     ; preds = %25, %28
  %31 = phi i64 [ %29, %28 ], [ 0, %25 ], !dbg !1258
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1206, metadata !643), !dbg !1260
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1205, metadata !643), !dbg !1257
  %32 = add i64 %27, 1, !dbg !1261
  %33 = icmp ugt i64 %32, %31, !dbg !1261
  %34 = select i1 %33, i64 %32, i64 %31, !dbg !1261
  %35 = icmp ugt i64 %34, 31, !dbg !1261
  %36 = select i1 %35, i64 %34, i64 31, !dbg !1261
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1207, metadata !643), !dbg !1262
  %37 = add i64 %36, 1, !dbg !1263
  %38 = tail call noalias i8* @xmalloc(i64 %37) #12, !dbg !1264
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !1208, metadata !643), !dbg !1265
  %39 = getelementptr inbounds i8, i8* %38, i64 %36, !dbg !1266
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1205, metadata !643), !dbg !1257
  %40 = sub i64 0, %27, !dbg !1267
  %41 = getelementptr inbounds i8, i8* %39, i64 %40, !dbg !1267
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %15, i64 %32, i32 1, i1 false), !dbg !1268
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1209, metadata !643), !dbg !1269
  br i1 %4, label %54, label %42, !dbg !1270

; <label>:42:                                     ; preds = %30
  %43 = tail call noalias i8* @xmalloc(i64 %37) #12, !dbg !1271
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1211, metadata !643), !dbg !1274
  %44 = getelementptr inbounds i8, i8* %43, i64 %36, !dbg !1275
  %45 = sub i64 0, %31, !dbg !1276
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !1276
  %47 = add i64 %31, 1, !dbg !1277
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %26, i64 %47, i32 1, i1 false), !dbg !1278
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !1210, metadata !643), !dbg !1279
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1211, metadata !643), !dbg !1274
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !1210, metadata !643), !dbg !1279
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1209, metadata !643), !dbg !1269
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1205, metadata !643), !dbg !1257
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1280, metadata !643) #12, !dbg !1288
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1285, metadata !643) #12, !dbg !1290
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !1286, metadata !643) #12, !dbg !1291
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1287, metadata !643) #12, !dbg !1292
  %48 = icmp ult i64 %27, %31, !dbg !1293
  br i1 %48, label %54, label %49, !dbg !1295

; <label>:49:                                     ; preds = %42
  %50 = icmp ult i64 %31, %27, !dbg !1296
  br i1 %50, label %148, label %51, !dbg !1298

; <label>:51:                                     ; preds = %49
  %52 = tail call i32 @strcmp(i8* %41, i8* %46) #8, !dbg !1299
  %53 = icmp slt i32 %52, 1, !dbg !1300
  br i1 %53, label %54, label %148, !dbg !1301

; <label>:54:                                     ; preds = %42, %30, %51
  %55 = phi i8* [ %46, %51 ], [ null, %30 ], [ %46, %42 ]
  %56 = phi i8* [ %43, %51 ], [ null, %30 ], [ %43, %42 ]
  %57 = shl i64 %37, 1, !dbg !1302
  %58 = icmp ugt i64 %57, 8192, !dbg !1302
  %59 = select i1 %58, i64 %57, i64 8192, !dbg !1302
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !1213, metadata !643), !dbg !1303
  %60 = tail call noalias i8* @xmalloc(i64 %59) #12, !dbg !1304
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !1216, metadata !643), !dbg !1305
  %61 = getelementptr inbounds i8, i8* %60, i64 %59, !dbg !1306
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !1217, metadata !643), !dbg !1307
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !1218, metadata !643), !dbg !1308
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1209, metadata !643), !dbg !1269
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1205, metadata !643), !dbg !1257
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !1309, metadata !643) #12, !dbg !1320
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1318, metadata !643) #12, !dbg !1320
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1319, metadata !643) #12, !dbg !1320
  %62 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %60, i1 false, i1 true) #12, !dbg !1322
  %63 = tail call i8* @__mempcpy_chk(i8* nonnull %60, i8* nonnull %41, i64 %27, i64 %62) #12, !dbg !1323
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !1218, metadata !643), !dbg !1308
  br label %64, !dbg !1324

; <label>:64:                                     ; preds = %136, %54
  %65 = phi i64 [ %27, %54 ], [ %98, %136 ]
  %66 = phi i8* [ %41, %54 ], [ %117, %136 ]
  %67 = phi i64 [ %36, %54 ], [ %118, %136 ]
  %68 = phi i8* [ %38, %54 ], [ %119, %136 ]
  %69 = phi i64 [ %59, %54 ], [ %120, %136 ]
  %70 = phi i8* [ %60, %54 ], [ %121, %136 ]
  %71 = phi i8* [ %61, %54 ], [ %122, %136 ]
  %72 = phi i8* [ %63, %54 ], [ %137, %136 ]
  tail call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !1218, metadata !643), !dbg !1308
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !1217, metadata !643), !dbg !1307
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1216, metadata !643), !dbg !1305
  tail call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !1213, metadata !643), !dbg !1303
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !1208, metadata !643), !dbg !1265
  tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !1207, metadata !643), !dbg !1262
  %73 = icmp ult i64 %65, %31, !dbg !1325
  %74 = or i1 %4, %73, !dbg !1327
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1209, metadata !643), !dbg !1269
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !1205, metadata !643), !dbg !1257
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1280, metadata !643) #12, !dbg !1328
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !1285, metadata !643) #12, !dbg !1329
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !1286, metadata !643) #12, !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1287, metadata !643) #12, !dbg !1331
  br i1 %74, label %80, label %75, !dbg !1327

; <label>:75:                                     ; preds = %64
  %76 = icmp ult i64 %31, %65, !dbg !1332
  br i1 %76, label %139, label %77, !dbg !1333

; <label>:77:                                     ; preds = %75
  %78 = tail call i32 @strcmp(i8* %66, i8* %55) #8, !dbg !1334
  %79 = icmp slt i32 %78, 0, !dbg !1335
  br i1 %79, label %80, label %139, !dbg !1324

; <label>:80:                                     ; preds = %64, %77
  %81 = load i8*, i8** @separator, align 8, !dbg !1336, !tbaa !650
  %82 = load i8, i8* %81, align 1, !dbg !1337, !tbaa !735
  %83 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1338
  tail call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !1218, metadata !643), !dbg !1308
  store i8 %82, i8* %72, align 1, !dbg !1339, !tbaa !735
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1340, metadata !643), !dbg !1348
  %84 = getelementptr inbounds i8, i8* %66, i64 %65, !dbg !1350
  %85 = getelementptr inbounds i8, i8* %84, i64 -1, !dbg !1351
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1347, metadata !643), !dbg !1352
  br label %86, !dbg !1353, !llvm.loop !1354

; <label>:86:                                     ; preds = %91, %80
  %87 = phi i8* [ %85, %80 ], [ %92, %91 ]
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !1347, metadata !643), !dbg !1352
  %88 = load i8, i8* %87, align 1, !dbg !1357, !tbaa !735
  %89 = add i8 %88, 1, !dbg !1357
  store i8 %89, i8* %87, align 1, !dbg !1357, !tbaa !735
  %90 = icmp slt i8 %88, 57, !dbg !1360
  br i1 %90, label %97, label %91, !dbg !1361

; <label>:91:                                     ; preds = %86
  %92 = getelementptr inbounds i8, i8* %87, i64 -1, !dbg !1362
  tail call void @llvm.dbg.value(metadata i8* %92, i64 0, metadata !1347, metadata !643), !dbg !1352
  store i8 48, i8* %87, align 1, !dbg !1363, !tbaa !735
  %93 = icmp ult i8* %92, %66, !dbg !1364
  br i1 %93, label %94, label %86, !dbg !1365, !llvm.loop !1354

; <label>:94:                                     ; preds = %91
  %95 = getelementptr inbounds i8, i8* %66, i64 -1, !dbg !1366
  store i8 49, i8* %95, align 1, !dbg !1367, !tbaa !735
  %96 = add i64 %65, 1, !dbg !1368
  br label %97, !dbg !1369

; <label>:97:                                     ; preds = %86, %94
  %98 = phi i64 [ %96, %94 ], [ %65, %86 ]
  %99 = phi i8* [ %95, %94 ], [ %66, %86 ]
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1205, metadata !643), !dbg !1257
  %100 = icmp eq i64 %98, %67, !dbg !1370
  br i1 %100, label %101, label %116, !dbg !1371

; <label>:101:                                    ; preds = %97
  %102 = shl i64 %67, 1, !dbg !1372
  tail call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !1207, metadata !643), !dbg !1262
  %103 = or i64 %102, 1, !dbg !1373
  %104 = tail call i8* @xrealloc(i8* %68, i64 %103) #12, !dbg !1374
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !1208, metadata !643), !dbg !1265
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1205, metadata !643), !dbg !1257
  %105 = getelementptr inbounds i8, i8* %104, i64 %67, !dbg !1375
  %106 = add i64 %67, 1, !dbg !1376
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %105, i8* %104, i64 %106, i32 1, i1 false), !dbg !1377
  tail call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !1209, metadata !643), !dbg !1269
  %107 = shl i64 %103, 1, !dbg !1378
  %108 = icmp ult i64 %69, %107, !dbg !1379
  br i1 %108, label %109, label %116, !dbg !1380

; <label>:109:                                    ; preds = %101
  %110 = ptrtoint i8* %83 to i64, !dbg !1381
  %111 = ptrtoint i8* %70 to i64, !dbg !1381
  %112 = sub i64 %110, %111, !dbg !1381
  tail call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !1219, metadata !643), !dbg !1382
  tail call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !1213, metadata !643), !dbg !1303
  %113 = tail call i8* @xrealloc(i8* %70, i64 %107) #12, !dbg !1383
  tail call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !1216, metadata !643), !dbg !1305
  %114 = getelementptr inbounds i8, i8* %113, i64 %107, !dbg !1384
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !1217, metadata !643), !dbg !1307
  %115 = getelementptr inbounds i8, i8* %113, i64 %112, !dbg !1385
  tail call void @llvm.dbg.value(metadata i8* %115, i64 0, metadata !1218, metadata !643), !dbg !1308
  br label %116, !dbg !1386

; <label>:116:                                    ; preds = %101, %109, %97
  %117 = phi i8* [ %105, %109 ], [ %105, %101 ], [ %99, %97 ]
  %118 = phi i64 [ %102, %109 ], [ %102, %101 ], [ %67, %97 ]
  %119 = phi i8* [ %104, %109 ], [ %104, %101 ], [ %68, %97 ]
  %120 = phi i64 [ %107, %109 ], [ %69, %101 ], [ %69, %97 ]
  %121 = phi i8* [ %113, %109 ], [ %70, %101 ], [ %70, %97 ]
  %122 = phi i8* [ %114, %109 ], [ %71, %101 ], [ %71, %97 ]
  %123 = phi i8* [ %115, %109 ], [ %83, %101 ], [ %83, %97 ]
  tail call void @llvm.dbg.value(metadata i8* %123, i64 0, metadata !1218, metadata !643), !dbg !1308
  tail call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !1217, metadata !643), !dbg !1307
  tail call void @llvm.dbg.value(metadata i8* %121, i64 0, metadata !1216, metadata !643), !dbg !1305
  tail call void @llvm.dbg.value(metadata i64 %120, i64 0, metadata !1213, metadata !643), !dbg !1303
  tail call void @llvm.dbg.value(metadata i8* %119, i64 0, metadata !1208, metadata !643), !dbg !1265
  tail call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !1207, metadata !643), !dbg !1262
  tail call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !1209, metadata !643), !dbg !1269
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1205, metadata !643), !dbg !1257
  tail call void @llvm.dbg.value(metadata i8* %123, i64 0, metadata !1309, metadata !643) #12, !dbg !1387
  tail call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !1318, metadata !643) #12, !dbg !1387
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1319, metadata !643) #12, !dbg !1387
  %124 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %123, i1 false, i1 true) #12, !dbg !1389
  %125 = tail call i8* @__mempcpy_chk(i8* nonnull %123, i8* nonnull %117, i64 %98, i64 %124) #12, !dbg !1390
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !1218, metadata !643), !dbg !1308
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1205, metadata !643), !dbg !1257
  %126 = xor i64 %98, -1, !dbg !1391
  %127 = getelementptr inbounds i8, i8* %122, i64 %126, !dbg !1391
  %128 = icmp ult i8* %127, %125, !dbg !1393
  br i1 %128, label %129, label %136, !dbg !1394

; <label>:129:                                    ; preds = %116
  %130 = ptrtoint i8* %125 to i64, !dbg !1395
  %131 = ptrtoint i8* %121 to i64, !dbg !1395
  %132 = sub i64 %130, %131, !dbg !1395
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1395, !tbaa !650
  %134 = tail call i64 @fwrite_unlocked(i8* %121, i64 %132, i64 1, %struct._IO_FILE* %133) #12, !dbg !1395
  %135 = icmp eq i64 %134, 1, !dbg !1398
  br i1 %135, label %136, label %138, !dbg !1399

; <label>:136:                                    ; preds = %129, %116
  %137 = phi i8* [ %121, %129 ], [ %125, %116 ]
  br label %64, !dbg !1308, !llvm.loop !1400

; <label>:138:                                    ; preds = %129
  tail call fastcc void @io_error() #16, !dbg !1402
  unreachable, !dbg !1402

; <label>:139:                                    ; preds = %75, %77
  %140 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1403
  tail call void @llvm.dbg.value(metadata i8* %140, i64 0, metadata !1218, metadata !643), !dbg !1308
  store i8 10, i8* %72, align 1, !dbg !1404, !tbaa !735
  %141 = ptrtoint i8* %140 to i64, !dbg !1405
  %142 = ptrtoint i8* %70 to i64, !dbg !1405
  %143 = sub i64 %141, %142, !dbg !1405
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1405, !tbaa !650
  %145 = tail call i64 @fwrite_unlocked(i8* %70, i64 %143, i64 1, %struct._IO_FILE* %144) #12, !dbg !1405
  %146 = icmp eq i64 %145, 1, !dbg !1407
  br i1 %146, label %148, label %147, !dbg !1408

; <label>:147:                                    ; preds = %139
  tail call fastcc void @io_error() #16, !dbg !1409
  unreachable, !dbg !1409

; <label>:148:                                    ; preds = %49, %139, %51
  %149 = phi i1 [ false, %51 ], [ true, %139 ], [ false, %49 ]
  %150 = phi i8* [ %43, %51 ], [ %56, %139 ], [ %43, %49 ]
  %151 = phi i8* [ %38, %51 ], [ %68, %139 ], [ %38, %49 ]
  tail call void @llvm.dbg.value(metadata i8* %151, i64 0, metadata !1208, metadata !643), !dbg !1265
  tail call void @free(i8* %151) #12, !dbg !1410
  tail call void @free(i8* %150) #12, !dbg !1411
  ret i1 %149, !dbg !1412
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @scan_arg(%struct.operand* noalias nocapture sret, i8*) unnamed_addr #6 !dbg !1413 {
  %3 = alloca %struct.operand, align 16
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1417, metadata !643), !dbg !1428
  %4 = bitcast %struct.operand* %3 to i8*, !dbg !1429
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #12, !dbg !1429
  %5 = getelementptr inbounds %struct.operand, %struct.operand* %3, i64 0, i32 0, !dbg !1430
  %6 = call zeroext i1 @xstrtold(i8* %1, i8** null, x86_fp80* nonnull %5, x86_fp80 (i8*, i8**)* nonnull @c_strtold) #12, !dbg !1432
  br i1 %6, label %10, label %7, !dbg !1433

; <label>:7:                                      ; preds = %2
  %8 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), i32 5) #12, !dbg !1434
  %9 = call i8* @quote(i8* %1) #12, !dbg !1436
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %8, i8* %9) #12, !dbg !1437
  call void @usage(i32 1) #16, !dbg !1438
  unreachable, !dbg !1438

; <label>:10:                                     ; preds = %2
  %11 = load x86_fp80, x86_fp80* %5, align 16, !dbg !1439, !tbaa !1441
  %12 = fcmp uno x86_fp80 %11, 0xK00000000000000000000, !dbg !1439
  br i1 %12, label %13, label %17, !dbg !1442

; <label>:13:                                     ; preds = %10
  %14 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0), i32 5) #12, !dbg !1443
  %15 = call i8* @quote_n(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0)) #12, !dbg !1445
  %16 = call i8* @quote_n(i32 1, i8* %1) #12, !dbg !1446
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %14, i8* %15, i8* %16) #12, !dbg !1447
  call void @usage(i32 1) #16, !dbg !1448
  unreachable, !dbg !1448

; <label>:17:                                     ; preds = %10
  %18 = tail call i16** @__ctype_b_loc() #17, !dbg !1449
  %19 = load i16*, i16** %18, align 8, !tbaa !650
  br label %20, !dbg !1450

; <label>:20:                                     ; preds = %20, %17
  %21 = phi i8* [ %1, %17 ], [ %30, %20 ]
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1417, metadata !643), !dbg !1428
  %22 = load i8, i8* %21, align 1, !dbg !1449, !tbaa !735
  %23 = zext i8 %22 to i64, !dbg !1449
  %24 = getelementptr inbounds i16, i16* %19, i64 %23, !dbg !1449
  %25 = load i16, i16* %24, align 2, !dbg !1449, !tbaa !1451
  %26 = and i16 %25, 8192, !dbg !1449
  %27 = icmp ne i16 %26, 0, !dbg !1449
  %28 = icmp eq i8 %22, 43, !dbg !1453
  %29 = or i1 %28, %27, !dbg !1454
  %30 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1455
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1417, metadata !643), !dbg !1428
  br i1 %29, label %20, label %31, !dbg !1454, !llvm.loop !1456

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds %struct.operand, %struct.operand* %3, i64 0, i32 1, !dbg !1457
  store i64 0, i64* %32, align 16, !dbg !1458, !tbaa !1459
  %33 = getelementptr inbounds %struct.operand, %struct.operand* %3, i64 0, i32 2, !dbg !1460
  store i32 2147483647, i32* %33, align 8, !dbg !1461, !tbaa !1048
  %34 = call i8* @strchr(i8* %21, i32 46) #8, !dbg !1462
  call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1419, metadata !643), !dbg !1463
  %35 = icmp ne i8* %34, null, !dbg !1464
  br i1 %35, label %40, label %36, !dbg !1466

; <label>:36:                                     ; preds = %31
  %37 = call i8* @strchr(i8* %21, i32 112) #8, !dbg !1467
  %38 = icmp eq i8* %37, null, !dbg !1467
  br i1 %38, label %39, label %40, !dbg !1468

; <label>:39:                                     ; preds = %36
  store i32 0, i32* %33, align 8, !dbg !1469, !tbaa !1048
  br label %40, !dbg !1470

; <label>:40:                                     ; preds = %36, %39, %31
  %41 = call i64 @strcspn(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !1471
  %42 = getelementptr inbounds i8, i8* %21, i64 %41, !dbg !1472
  %43 = load i8, i8* %42, align 1, !dbg !1472, !tbaa !735
  %44 = icmp eq i8 %43, 0, !dbg !1472
  %45 = fmul x86_fp80 %11, 0xK00000000000000000000, !dbg !1473
  %46 = fcmp oeq x86_fp80 %45, 0xK00000000000000000000, !dbg !1473
  %47 = and i1 %46, %44, !dbg !1474
  br i1 %47, label %48, label %122, !dbg !1474

; <label>:48:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1420, metadata !643), !dbg !1475
  %49 = call i64 @strlen(i8* nonnull %21) #8, !dbg !1476
  store i64 %49, i64* %32, align 16, !dbg !1477, !tbaa !1459
  br i1 %35, label %50, label %69, !dbg !1478

; <label>:50:                                     ; preds = %48
  %51 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1479
  %52 = call i64 @strcspn(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #8, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1420, metadata !643), !dbg !1475
  %53 = icmp ult i64 %52, 2147483648, !dbg !1483
  br i1 %53, label %54, label %57, !dbg !1485

; <label>:54:                                     ; preds = %50
  %55 = trunc i64 %52 to i32, !dbg !1486
  store i32 %55, i32* %33, align 8, !dbg !1487, !tbaa !1048
  %56 = icmp eq i64 %52, 0, !dbg !1488
  br i1 %56, label %66, label %57, !dbg !1489

; <label>:57:                                     ; preds = %50, %54
  %58 = icmp eq i8* %34, %21, !dbg !1490
  br i1 %58, label %66, label %59, !dbg !1491

; <label>:59:                                     ; preds = %57
  %60 = getelementptr inbounds i8, i8* %34, i64 -1, !dbg !1492
  %61 = load i8, i8* %60, align 1, !dbg !1492, !tbaa !735
  %62 = sext i8 %61 to i32, !dbg !1492
  %63 = add nsw i32 %62, -48, !dbg !1492
  %64 = icmp ugt i32 %63, 9, !dbg !1492
  %65 = zext i1 %64 to i64, !dbg !1491
  br label %66, !dbg !1491

; <label>:66:                                     ; preds = %57, %59, %54
  %67 = phi i64 [ -1, %54 ], [ 1, %57 ], [ %65, %59 ], !dbg !1489
  %68 = add i64 %67, %49, !dbg !1493
  store i64 %68, i64* %32, align 16, !dbg !1493, !tbaa !1459
  br label %69, !dbg !1494

; <label>:69:                                     ; preds = %66, %48
  %70 = phi i64 [ %52, %66 ], [ 0, %48 ]
  call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !1420, metadata !643), !dbg !1475
  %71 = call i8* @strchr(i8* nonnull %21, i32 101) #8, !dbg !1495
  call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !1423, metadata !643), !dbg !1496
  %72 = icmp eq i8* %71, null, !dbg !1497
  br i1 %72, label %73, label %76, !dbg !1499

; <label>:73:                                     ; preds = %69
  %74 = call i8* @strchr(i8* nonnull %21, i32 69) #8, !dbg !1500
  call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !1423, metadata !643), !dbg !1496
  call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !1423, metadata !643), !dbg !1496
  %75 = icmp eq i8* %74, null, !dbg !1501
  br i1 %75, label %122, label %76, !dbg !1502

; <label>:76:                                     ; preds = %69, %73
  %77 = phi i8* [ %74, %73 ], [ %71, %69 ]
  %78 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1503
  %79 = call i64 @strtol(i8* nocapture %78, i8** null, i32 10) #12, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %79, i64 0, metadata !1424, metadata !643), !dbg !1505
  %80 = icmp slt i64 %79, 0, !dbg !1506
  %81 = load i32, i32* %33, align 8, !tbaa !1048
  %82 = sext i32 %81 to i64, !dbg !1507
  %83 = icmp sgt i64 %79, %82, !dbg !1507
  %84 = select i1 %83, i64 %82, i64 %79, !dbg !1507
  %85 = select i1 %80, i64 %79, i64 %84, !dbg !1508
  %86 = zext i32 %81 to i64, !dbg !1509
  %87 = sub i64 %86, %85, !dbg !1509
  %88 = trunc i64 %87 to i32, !dbg !1509
  store i32 %88, i32* %33, align 8, !dbg !1509, !tbaa !1048
  %89 = call i64 @strlen(i8* nonnull %21) #8, !dbg !1510
  %90 = ptrtoint i8* %77 to i64, !dbg !1511
  %91 = ptrtoint i8* %21 to i64, !dbg !1511
  %92 = load i64, i64* %32, align 16, !dbg !1512, !tbaa !1459
  %93 = sub i64 %90, %91, !dbg !1513
  %94 = sub i64 %93, %89, !dbg !1513
  %95 = add i64 %94, %92, !dbg !1512
  store i64 %95, i64* %32, align 16, !dbg !1512, !tbaa !1459
  br i1 %80, label %96, label %106, !dbg !1514

; <label>:96:                                     ; preds = %76
  %97 = xor i1 %35, true, !dbg !1515
  %98 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1518
  %99 = icmp eq i8* %77, %98, !dbg !1522
  %100 = or i1 %99, %97, !dbg !1515
  br i1 %100, label %101, label %103, !dbg !1515

; <label>:101:                                    ; preds = %96
  %102 = add i64 %95, 1
  store i64 %102, i64* %32, align 16, !tbaa !1459
  br label %103, !dbg !1523

; <label>:103:                                    ; preds = %96, %101
  %104 = phi i64 [ %95, %96 ], [ %102, %101 ]
  %105 = sub nsw i64 0, %79, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %105, i64 0, metadata !1424, metadata !643), !dbg !1505
  br label %118, !dbg !1525

; <label>:106:                                    ; preds = %76
  br i1 %35, label %107, label %113, !dbg !1526

; <label>:107:                                    ; preds = %106
  %108 = icmp eq i32 %88, 0, !dbg !1529
  %109 = icmp ne i64 %70, 0, !dbg !1530
  %110 = and i1 %109, %108, !dbg !1531
  br i1 %110, label %111, label %113, !dbg !1531

; <label>:111:                                    ; preds = %107
  %112 = add i64 %95, -1, !dbg !1532
  store i64 %112, i64* %32, align 16, !dbg !1532, !tbaa !1459
  br label %113, !dbg !1533

; <label>:113:                                    ; preds = %111, %107, %106
  %114 = phi i64 [ %112, %111 ], [ %95, %107 ], [ %95, %106 ]
  %115 = icmp ult i64 %70, %79, !dbg !1534
  %116 = select i1 %115, i64 %70, i64 %79, !dbg !1534
  %117 = sub i64 %79, %116, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %117, i64 0, metadata !1424, metadata !643), !dbg !1505
  br label %118

; <label>:118:                                    ; preds = %113, %103
  %119 = phi i64 [ %104, %103 ], [ %114, %113 ], !dbg !1536
  %120 = phi i64 [ %105, %103 ], [ %117, %113 ]
  call void @llvm.dbg.value(metadata i64 %120, i64 0, metadata !1424, metadata !643), !dbg !1505
  %121 = add i64 %119, %120, !dbg !1536
  store i64 %121, i64* %32, align 16, !dbg !1536, !tbaa !1459
  br label %122, !dbg !1537

; <label>:122:                                    ; preds = %118, %73, %40
  %123 = bitcast %struct.operand* %0 to i8*, !dbg !1538
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* nonnull %4, i64 32, i32 16, i1 false), !dbg !1538, !tbaa.struct !1539
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #12, !dbg !1542
  ret void, !dbg !1542
}

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @io_error() unnamed_addr #0 !dbg !1543 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1544, !tbaa !650
  tail call void @clearerr_unlocked(%struct._IO_FILE* %1) #12, !dbg !1544
  %2 = tail call i32* @__errno_location() #17, !dbg !1545
  %3 = load i32, i32* %2, align 4, !dbg !1545, !tbaa !728
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 5) #12, !dbg !1545
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %3, i8* %4) #12, !dbg !1545
  unreachable, !dbg !1545
}

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define x86_fp80 @c_strtold(i8*, i8**) #6 !dbg !1546 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1550, metadata !643), !dbg !1554
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1551, metadata !643), !dbg !1555
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1556, !tbaa !650
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !1556
  br i1 %4, label %5, label %7, !dbg !1562

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %struct.__locale_struct* null) #12, !dbg !1563
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1564, !tbaa !650
  br label %7, !dbg !1565

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1566, !tbaa !650
  tail call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, i64 0, metadata !1553, metadata !643), !dbg !1567
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !1568
  br i1 %9, label %10, label %13, !dbg !1570

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !1571
  br i1 %11, label %15, label %12, !dbg !1574

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !1575, !tbaa !650
  br label %15, !dbg !1576

; <label>:13:                                     ; preds = %7
  %14 = tail call x86_fp80 @strtold_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #12, !dbg !1577
  tail call void @llvm.dbg.value(metadata x86_fp80 %14, i64 0, metadata !1552, metadata !643), !dbg !1578
  br label %15, !dbg !1579

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi x86_fp80 [ %14, %13 ], [ 0xK00000000000000000000, %10 ], [ 0xK00000000000000000000, %12 ]
  ret x86_fp80 %16, !dbg !1580
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare x86_fp80 @strtold_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1581 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1583, metadata !643), !dbg !1584
  store i8* %0, i8** @file_name, align 8, !dbg !1585, !tbaa !650
  ret void, !dbg !1586
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1587 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1591, metadata !643), !dbg !1592
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1593, !tbaa !1594
  ret void, !dbg !1596
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1597 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1602, !tbaa !650
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1603
  %3 = icmp eq i32 %2, 0, !dbg !1604
  br i1 %3, label %21, label %4, !dbg !1605

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1606, !tbaa !1594, !range !1607
  %6 = icmp eq i8 %5, 0, !dbg !1606
  %7 = tail call i32* @__errno_location() #17, !dbg !1608
  br i1 %6, label %11, label %8, !dbg !1610

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1611, !tbaa !728
  %10 = icmp eq i32 %9, 32, !dbg !1612
  br i1 %10, label %21, label %11, !dbg !1613

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !1614
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1599, metadata !643), !dbg !1615
  %13 = load i8*, i8** @file_name, align 8, !dbg !1616, !tbaa !650
  %14 = icmp eq i8* %13, null, !dbg !1616
  %15 = load i32, i32* %7, align 4, !tbaa !728
  br i1 %14, label %18, label %16, !dbg !1617

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1618
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.31, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1619
  br label %19, !dbg !1619

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.32, i64 0, i64 0), i8* %12) #12, !dbg !1620
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1621, !tbaa !728
  tail call void @_exit(i32 %20) #15, !dbg !1622
  unreachable, !dbg !1622

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1623, !tbaa !650
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1625
  %24 = icmp eq i32 %23, 0, !dbg !1626
  br i1 %24, label %27, label %25, !dbg !1627

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1628, !tbaa !728
  tail call void @_exit(i32 %26) #15, !dbg !1629
  unreachable, !dbg !1629

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1630
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1631 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1633, metadata !643), !dbg !1636
  %2 = icmp eq i8* %0, null, !dbg !1637
  br i1 %2, label %3, label %6, !dbg !1639

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1640, !tbaa !650
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.61, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1642
  tail call void @abort() #15, !dbg !1643
  unreachable, !dbg !1643

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #8, !dbg !1644
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1634, metadata !643), !dbg !1645
  %8 = icmp eq i8* %7, null, !dbg !1646
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1647
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1648
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1635, metadata !643), !dbg !1649
  %11 = ptrtoint i8* %10 to i64, !dbg !1650
  %12 = ptrtoint i8* %0 to i64, !dbg !1650
  %13 = sub i64 %11, %12, !dbg !1650
  %14 = icmp sgt i64 %13, 6, !dbg !1652
  br i1 %14, label %15, label %24, !dbg !1653

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1654
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.62, i64 0, i64 0), i64 7) #8, !dbg !1655
  %18 = icmp eq i32 %17, 0, !dbg !1656
  br i1 %18, label %19, label %24, !dbg !1657

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1633, metadata !643), !dbg !1636
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.63, i64 0, i64 0), i64 3) #8, !dbg !1658
  %21 = icmp eq i32 %20, 0, !dbg !1661
  br i1 %21, label %22, label %24, !dbg !1662

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1663
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1633, metadata !643), !dbg !1636
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1665, !tbaa !650
  br label %24, !dbg !1666

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1633, metadata !643), !dbg !1636
  store i8* %25, i8** @program_name, align 8, !dbg !1667, !tbaa !650
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1668, !tbaa !650
  ret void, !dbg !1669
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1670 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1675, metadata !643), !dbg !1678
  %2 = tail call i32* @__errno_location() #17, !dbg !1679
  %3 = load i32, i32* %2, align 4, !dbg !1679, !tbaa !728
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1676, metadata !643), !dbg !1680
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1681
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1681
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1681
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1682
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1682
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1677, metadata !643), !dbg !1683
  store i32 %3, i32* %2, align 4, !dbg !1684, !tbaa !728
  ret %struct.quoting_options* %8, !dbg !1685
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #13 !dbg !1686 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1692, metadata !643), !dbg !1693
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1694
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1694
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1695
  %5 = load i32, i32* %4, align 8, !dbg !1695, !tbaa !1696
  ret i32 %5, !dbg !1698
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1699 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1703, metadata !643), !dbg !1705
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1704, metadata !643), !dbg !1706
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1707
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1707
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1708
  store i32 %1, i32* %5, align 8, !dbg !1709, !tbaa !1696
  ret void, !dbg !1710
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1711 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1715, metadata !643), !dbg !1723
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1716, metadata !643), !dbg !1724
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1717, metadata !643), !dbg !1725
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1718, metadata !643), !dbg !1726
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1727
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1727
  %6 = lshr i8 %1, 5, !dbg !1728
  %7 = zext i8 %6 to i64, !dbg !1728
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1729
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1719, metadata !643), !dbg !1730
  %9 = and i8 %1, 31, !dbg !1731
  %10 = zext i8 %9 to i32, !dbg !1732
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1721, metadata !643), !dbg !1733
  %11 = load i32, i32* %8, align 4, !dbg !1734, !tbaa !728
  %12 = lshr i32 %11, %10, !dbg !1735
  %13 = and i32 %12, 1, !dbg !1736
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1722, metadata !643), !dbg !1737
  %14 = and i32 %2, 1, !dbg !1738
  %15 = xor i32 %13, %14, !dbg !1739
  %16 = shl i32 %15, %10, !dbg !1740
  %17 = xor i32 %16, %11, !dbg !1741
  store i32 %17, i32* %8, align 4, !dbg !1741, !tbaa !728
  ret i32 %13, !dbg !1742
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1743 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1747, metadata !643), !dbg !1750
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1748, metadata !643), !dbg !1751
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1752
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1747, metadata !643), !dbg !1750
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1754
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1747, metadata !643), !dbg !1750
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1755
  %6 = load i32, i32* %5, align 4, !dbg !1755, !tbaa !1756
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1749, metadata !643), !dbg !1757
  store i32 %1, i32* %5, align 4, !dbg !1758, !tbaa !1756
  ret i32 %6, !dbg !1759
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1760 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1764, metadata !643), !dbg !1767
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1765, metadata !643), !dbg !1768
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1766, metadata !643), !dbg !1769
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1770
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1764, metadata !643), !dbg !1767
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1772
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1764, metadata !643), !dbg !1767
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1773
  store i32 10, i32* %6, align 8, !dbg !1774, !tbaa !1696
  %7 = icmp ne i8* %1, null, !dbg !1775
  %8 = icmp ne i8* %2, null, !dbg !1777
  %9 = and i1 %7, %8, !dbg !1778
  br i1 %9, label %11, label %10, !dbg !1778

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1779
  unreachable, !dbg !1779

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1780
  store i8* %1, i8** %12, align 8, !dbg !1781, !tbaa !1782
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1783
  store i8* %2, i8** %13, align 8, !dbg !1784, !tbaa !1785
  ret void, !dbg !1786
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1787 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1791, metadata !643), !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1792, metadata !643), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1793, metadata !643), !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1794, metadata !643), !dbg !1802
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1795, metadata !643), !dbg !1803
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1804
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1804
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1796, metadata !643), !dbg !1805
  %8 = tail call i32* @__errno_location() #17, !dbg !1806
  %9 = load i32, i32* %8, align 4, !dbg !1806, !tbaa !728
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1797, metadata !643), !dbg !1807
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1808
  %11 = load i32, i32* %10, align 8, !dbg !1808, !tbaa !1696
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1809
  %13 = load i32, i32* %12, align 4, !dbg !1809, !tbaa !1756
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1810
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1811
  %16 = load i8*, i8** %15, align 8, !dbg !1811, !tbaa !1782
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1812
  %18 = load i8*, i8** %17, align 8, !dbg !1812, !tbaa !1785
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1813
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1798, metadata !643), !dbg !1814
  store i32 %9, i32* %8, align 4, !dbg !1815, !tbaa !728
  ret i64 %19, !dbg !1816
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1817 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1823, metadata !643), !dbg !1887
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1824, metadata !643), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1825, metadata !643), !dbg !1889
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1826, metadata !643), !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1827, metadata !643), !dbg !1891
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1828, metadata !643), !dbg !1892
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1829, metadata !643), !dbg !1893
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1830, metadata !643), !dbg !1894
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1831, metadata !643), !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1833, metadata !643), !dbg !1896
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1834, metadata !643), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1835, metadata !643), !dbg !1898
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1836, metadata !643), !dbg !1899
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1837, metadata !643), !dbg !1900
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1901
  %14 = icmp eq i64 %13, 1, !dbg !1902
  %15 = lshr i32 %5, 1, !dbg !1903
  %16 = trunc i32 %15 to i8, !dbg !1903
  %17 = and i8 %16, 1, !dbg !1903
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1839, metadata !643), !dbg !1903
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1840, metadata !643), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1841, metadata !643), !dbg !1905
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1842, metadata !643), !dbg !1906
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1907

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1824, metadata !643), !dbg !1888
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1842, metadata !643), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1841, metadata !643), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1839, metadata !643), !dbg !1903
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1826, metadata !643), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1837, metadata !643), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1836, metadata !643), !dbg !1899
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1835, metadata !643), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1834, metadata !643), !dbg !1897
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1831, metadata !643), !dbg !1895
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1830, metadata !643), !dbg !1894
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1827, metadata !643), !dbg !1891
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
  ], !dbg !1908

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1827, metadata !643), !dbg !1891
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1839, metadata !643), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1839, metadata !643), !dbg !1903
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1827, metadata !643), !dbg !1891
  br label %94, !dbg !1909

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1839, metadata !643), !dbg !1903
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1827, metadata !643), !dbg !1891
  %43 = and i8 %36, 1, !dbg !1911
  %44 = icmp eq i8 %43, 0, !dbg !1911
  br i1 %44, label %45, label %94, !dbg !1909

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1913
  br i1 %46, label %94, label %47, !dbg !1916

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1913, !tbaa !735
  br label %94, !dbg !1913

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 %28), !dbg !1917
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1830, metadata !643), !dbg !1894
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 %28), !dbg !1921
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1831, metadata !643), !dbg !1895
  br label %51, !dbg !1922

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1831, metadata !643), !dbg !1895
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1830, metadata !643), !dbg !1894
  %54 = and i8 %36, 1, !dbg !1923
  %55 = icmp eq i8 %54, 0, !dbg !1923
  br i1 %55, label %56, label %72, !dbg !1925

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1835, metadata !643), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1835, metadata !643), !dbg !1898
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1833, metadata !643), !dbg !1896
  %57 = load i8, i8* %52, align 1, !dbg !1926, !tbaa !735
  %58 = icmp eq i8 %57, 0, !dbg !1929
  br i1 %58, label %72, label %59, !dbg !1929

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1930

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1835, metadata !643), !dbg !1898
  %64 = icmp ult i64 %63, %40, !dbg !1930
  br i1 %64, label %65, label %67, !dbg !1933

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1930
  store i8 %61, i8* %66, align 1, !dbg !1930, !tbaa !735
  br label %67, !dbg !1930

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1833, metadata !643), !dbg !1896
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1934
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1835, metadata !643), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1835, metadata !643), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1833, metadata !643), !dbg !1896
  %70 = load i8, i8* %69, align 1, !dbg !1926, !tbaa !735
  %71 = icmp eq i8 %70, 0, !dbg !1929
  br i1 %71, label %72, label %60, !dbg !1929, !llvm.loop !1935

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1837, metadata !643), !dbg !1900
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1835, metadata !643), !dbg !1898
  %74 = call i64 @strlen(i8* %53) #8, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1836, metadata !643), !dbg !1899
  br label %94, !dbg !1938

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1837, metadata !643), !dbg !1900
  br label %76, !dbg !1939

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1837, metadata !643), !dbg !1900
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1839, metadata !643), !dbg !1903
  br label %78, !dbg !1940

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1839, metadata !643), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1837, metadata !643), !dbg !1900
  %81 = and i8 %80, 1, !dbg !1941
  %82 = icmp eq i8 %81, 0, !dbg !1941
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1837, metadata !643), !dbg !1900
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1943
  br label %84, !dbg !1943

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1839, metadata !643), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1837, metadata !643), !dbg !1900
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1827, metadata !643), !dbg !1891
  %87 = and i8 %86, 1, !dbg !1944
  %88 = icmp eq i8 %87, 0, !dbg !1944
  br i1 %88, label %89, label %94, !dbg !1946

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1947
  br i1 %90, label %94, label %91, !dbg !1950

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1947, !tbaa !735
  br label %94, !dbg !1947

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1839, metadata !643), !dbg !1903
  br label %94, !dbg !1951

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1952
  unreachable, !dbg !1952

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1839, metadata !643), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1837, metadata !643), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1836, metadata !643), !dbg !1899
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1835, metadata !643), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1831, metadata !643), !dbg !1895
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1830, metadata !643), !dbg !1894
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1827, metadata !643), !dbg !1891
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1832, metadata !643), !dbg !1953
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
  br label %122, !dbg !1954

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1824, metadata !643), !dbg !1888
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1842, metadata !643), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1841, metadata !643), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1826, metadata !643), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1834, metadata !643), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1832, metadata !643), !dbg !1953
  %131 = icmp eq i64 %126, -1, !dbg !1955
  br i1 %131, label %134, label %132, !dbg !1956

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1957
  br i1 %133, label %590, label %138, !dbg !1958

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1959
  %136 = load i8, i8* %135, align 1, !dbg !1959, !tbaa !735
  %137 = icmp eq i8 %136, 0, !dbg !1960
  br i1 %137, label %590, label %138, !dbg !1958

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1848, metadata !643), !dbg !1961
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1849, metadata !643), !dbg !1962
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1850, metadata !643), !dbg !1963
  br i1 %108, label %139, label %154, !dbg !1964

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1966
  %141 = and i1 %109, %131, !dbg !1967
  br i1 %141, label %142, label %144, !dbg !1967

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #8, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1826, metadata !643), !dbg !1890
  br label %144, !dbg !1969

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1826, metadata !643), !dbg !1890
  %146 = icmp ugt i64 %140, %145, !dbg !1970
  br i1 %146, label %154, label %147, !dbg !1971

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1972
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #8, !dbg !1973
  %150 = icmp ne i32 %149, 0, !dbg !1974
  %151 = or i1 %150, %111, !dbg !1975
  %152 = xor i1 %150, true, !dbg !1975
  %153 = zext i1 %152 to i8, !dbg !1975
  br i1 %151, label %154, label %635, !dbg !1975

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1848, metadata !643), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1826, metadata !643), !dbg !1890
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1976
  %158 = load i8, i8* %157, align 1, !dbg !1976, !tbaa !735
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1843, metadata !643), !dbg !1977
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
  ], !dbg !1978

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1979

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1980

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1849, metadata !643), !dbg !1962
  %162 = and i8 %127, 1, !dbg !1984
  %163 = icmp eq i8 %162, 0, !dbg !1984
  %164 = and i1 %113, %163, !dbg !1984
  br i1 %164, label %165, label %181, !dbg !1984

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1986
  br i1 %166, label %167, label %169, !dbg !1990

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1986
  store i8 39, i8* %168, align 1, !dbg !1986, !tbaa !735
  br label %169, !dbg !1986

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1833, metadata !643), !dbg !1896
  %171 = icmp ult i64 %170, %130, !dbg !1991
  br i1 %171, label %172, label %174, !dbg !1994

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1991
  store i8 36, i8* %173, align 1, !dbg !1991, !tbaa !735
  br label %174, !dbg !1991

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1833, metadata !643), !dbg !1896
  %176 = icmp ult i64 %175, %130, !dbg !1995
  br i1 %176, label %177, label %179, !dbg !1998

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1995
  store i8 39, i8* %178, align 1, !dbg !1995, !tbaa !735
  br label %179, !dbg !1995

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1840, metadata !643), !dbg !1904
  br label %181, !dbg !1999

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1833, metadata !643), !dbg !1896
  %184 = icmp ult i64 %182, %130, !dbg !2000
  br i1 %184, label %185, label %187, !dbg !2003

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2000
  store i8 92, i8* %186, align 1, !dbg !2000, !tbaa !735
  br label %187, !dbg !2000

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1833, metadata !643), !dbg !1896
  br i1 %105, label %189, label %470, !dbg !2004

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2006
  %191 = icmp ult i64 %190, %155, !dbg !2007
  br i1 %191, label %192, label %470, !dbg !2008

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2009
  %194 = load i8, i8* %193, align 1, !dbg !2009, !tbaa !735
  %195 = add i8 %194, -48, !dbg !2010
  %196 = icmp ult i8 %195, 10, !dbg !2010
  br i1 %196, label %197, label %470, !dbg !2010

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2011
  br i1 %198, label %199, label %201, !dbg !2015

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2011
  store i8 48, i8* %200, align 1, !dbg !2011, !tbaa !735
  br label %201, !dbg !2011

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1833, metadata !643), !dbg !1896
  %203 = icmp ult i64 %202, %130, !dbg !2016
  br i1 %203, label %204, label %206, !dbg !2019

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2016
  store i8 48, i8* %205, align 1, !dbg !2016, !tbaa !735
  br label %206, !dbg !2016

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1833, metadata !643), !dbg !1896
  br label %470, !dbg !2020

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2021

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2022

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2023

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2025

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2027
  %214 = icmp ult i64 %213, %155, !dbg !2028
  br i1 %214, label %215, label %470, !dbg !2029

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2030
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2031
  %218 = load i8, i8* %217, align 1, !dbg !2031, !tbaa !735
  %219 = icmp eq i8 %218, 63, !dbg !2032
  br i1 %219, label %220, label %470, !dbg !2033

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2034
  %222 = load i8, i8* %221, align 1, !dbg !2034, !tbaa !735
  %223 = sext i8 %222 to i32, !dbg !2034
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
  ], !dbg !2035

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2036

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1843, metadata !643), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1832, metadata !643), !dbg !1953
  %226 = icmp ult i64 %124, %130, !dbg !2038
  br i1 %226, label %227, label %229, !dbg !2041

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2038
  store i8 63, i8* %228, align 1, !dbg !2038, !tbaa !735
  br label %229, !dbg !2038

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1833, metadata !643), !dbg !1896
  %231 = icmp ult i64 %230, %130, !dbg !2042
  br i1 %231, label %232, label %234, !dbg !2045

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2042
  store i8 34, i8* %233, align 1, !dbg !2042, !tbaa !735
  br label %234, !dbg !2042

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1833, metadata !643), !dbg !1896
  %236 = icmp ult i64 %235, %130, !dbg !2046
  br i1 %236, label %237, label %239, !dbg !2049

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2046
  store i8 34, i8* %238, align 1, !dbg !2046, !tbaa !735
  br label %239, !dbg !2046

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1833, metadata !643), !dbg !1896
  %241 = icmp ult i64 %240, %130, !dbg !2050
  br i1 %241, label %242, label %244, !dbg !2053

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2050
  store i8 63, i8* %243, align 1, !dbg !2050, !tbaa !735
  br label %244, !dbg !2050

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1833, metadata !643), !dbg !1896
  br label %470, !dbg !2054

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1847, metadata !643), !dbg !2055
  br label %256, !dbg !2056

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1847, metadata !643), !dbg !2055
  br label %256, !dbg !2057

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1847, metadata !643), !dbg !2055
  br label %254, !dbg !2058

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1847, metadata !643), !dbg !2055
  br label %254, !dbg !2059

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1847, metadata !643), !dbg !2055
  br label %256, !dbg !2060

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1847, metadata !643), !dbg !2055
  br i1 %113, label %252, label %253, !dbg !2061

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2062

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2065

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1847, metadata !643), !dbg !2055
  br i1 %117, label %256, label %635, !dbg !2067

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1847, metadata !643), !dbg !2055
  br i1 %104, label %497, label %470, !dbg !2069

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2070
  br i1 %259, label %260, label %265, !dbg !2072

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2073, !tbaa !735
  %262 = icmp ne i8 %261, 0, !dbg !2074
  %263 = icmp ne i64 %123, 0, !dbg !2075
  %264 = or i1 %263, %262, !dbg !2077
  br i1 %264, label %470, label %271, !dbg !2077

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2078
  %267 = icmp ne i64 %123, 0, !dbg !2075
  %268 = or i1 %267, %266, !dbg !2072
  br i1 %268, label %470, label %271, !dbg !2072

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2075
  br i1 %270, label %271, label %470, !dbg !2079

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1850, metadata !643), !dbg !1963
  br label %272, !dbg !2080

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1850, metadata !643), !dbg !1963
  br i1 %117, label %470, label %635, !dbg !2081

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1841, metadata !643), !dbg !1905
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1850, metadata !643), !dbg !1963
  br i1 %113, label %275, label %470, !dbg !2083

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2084

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2087
  %278 = icmp ne i64 %125, 0, !dbg !2089
  %279 = or i1 %278, %277, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1834, metadata !643), !dbg !1897
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1824, metadata !643), !dbg !1888
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2090
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1824, metadata !643), !dbg !1888
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1834, metadata !643), !dbg !1897
  %282 = icmp ult i64 %124, %281, !dbg !2091
  br i1 %282, label %283, label %285, !dbg !2094

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2091
  store i8 39, i8* %284, align 1, !dbg !2091, !tbaa !735
  br label %285, !dbg !2091

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1833, metadata !643), !dbg !1896
  %287 = icmp ult i64 %286, %281, !dbg !2095
  br i1 %287, label %288, label %290, !dbg !2098

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2095
  store i8 92, i8* %289, align 1, !dbg !2095, !tbaa !735
  br label %290, !dbg !2095

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1833, metadata !643), !dbg !1896
  %292 = icmp ult i64 %291, %281, !dbg !2099
  br i1 %292, label %293, label %295, !dbg !2102

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2099
  store i8 39, i8* %294, align 1, !dbg !2099, !tbaa !735
  br label %295, !dbg !2099

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1840, metadata !643), !dbg !1904
  br label %470, !dbg !2103

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2104

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1851, metadata !643), !dbg !2105
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2106
  %300 = load i16*, i16** %299, align 8, !dbg !2106, !tbaa !650
  %301 = zext i8 %158 to i64, !dbg !2106
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2106
  %303 = load i16, i16* %302, align 2, !dbg !2106, !tbaa !1451
  %304 = lshr i16 %303, 14, !dbg !2108
  %305 = trunc i16 %304 to i8, !dbg !2108
  %306 = and i8 %305, 1, !dbg !2108
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1854, metadata !643), !dbg !2109
  br label %362, !dbg !2110

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2111
  store i64 0, i64* %10, align 8, !dbg !2112
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1851, metadata !643), !dbg !2105
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1854, metadata !643), !dbg !2109
  %308 = icmp eq i64 %155, -1, !dbg !2113
  br i1 %308, label %309, label %311, !dbg !2115

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #8, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1826, metadata !643), !dbg !1890
  br label %311, !dbg !2117

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1826, metadata !643), !dbg !1890
  br label %313, !dbg !2118, !llvm.loop !2119

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1854, metadata !643), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1851, metadata !643), !dbg !2105
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2121
  %316 = add i64 %314, %123, !dbg !2122
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2123
  %318 = sub i64 %312, %316, !dbg !2124
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1855, metadata !643), !dbg !2125
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1873, metadata !643), !dbg !2126
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #12, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1876, metadata !643), !dbg !2128
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2129

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1854, metadata !643), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1851, metadata !643), !dbg !2105
  %321 = icmp ugt i64 %312, %316, !dbg !2130
  br i1 %321, label %322, label %347, !dbg !2132

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2133

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1851, metadata !643), !dbg !2105
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2133
  %327 = load i8, i8* %326, align 1, !dbg !2133, !tbaa !735
  %328 = icmp eq i8 %327, 0, !dbg !2132
  br i1 %328, label %347, label %329, !dbg !2134

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1851, metadata !643), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1851, metadata !643), !dbg !2105
  %331 = add i64 %330, %123, !dbg !2136
  %332 = icmp ult i64 %331, %312, !dbg !2130
  br i1 %332, label %323, label %347, !dbg !2132, !llvm.loop !2137

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2138
  %335 = and i1 %115, %334, !dbg !2141
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1877, metadata !643), !dbg !2142
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1877, metadata !643), !dbg !2142
  br i1 %335, label %336, label %350, !dbg !2141

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2143

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1877, metadata !643), !dbg !2142
  %339 = add i64 %338, %316, !dbg !2143
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2144
  %341 = load i8, i8* %340, align 1, !dbg !2144, !tbaa !735
  %342 = sext i8 %341 to i32, !dbg !2144
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2145

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1877, metadata !643), !dbg !2142
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1877, metadata !643), !dbg !2142
  %345 = icmp ult i64 %344, %319, !dbg !2138
  br i1 %345, label %337, label %350, !dbg !2147, !llvm.loop !2148

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2150

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1854, metadata !643), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1851, metadata !643), !dbg !2105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2150
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2151, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1873, metadata !643), !dbg !2126
  %352 = call i32 @iswprint(i32 %351) #12, !dbg !2153
  %353 = icmp eq i32 %352, 0, !dbg !2153
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1854, metadata !643), !dbg !2109
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2154
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1854, metadata !643), !dbg !2109
  %355 = add i64 %319, %314, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1851, metadata !643), !dbg !2105
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1854, metadata !643), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1851, metadata !643), !dbg !2105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2150
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1855, metadata !643), !dbg !2125
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #8, !dbg !2156
  %357 = icmp eq i32 %356, 0, !dbg !2157
  br i1 %357, label %313, label %358, !dbg !2158, !llvm.loop !2119

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2159
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1854, metadata !643), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1851, metadata !643), !dbg !2105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !2150
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !2159
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1854, metadata !643), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1851, metadata !643), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1826, metadata !643), !dbg !1890
  %366 = and i8 %365, 1, !dbg !2160
  %367 = icmp ne i8 %366, 0, !dbg !2160
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1850, metadata !643), !dbg !1963
  %368 = icmp ult i64 %364, 2, !dbg !2161
  %369 = or i1 %367, %112, !dbg !2162
  %370 = and i1 %368, %369, !dbg !2163
  br i1 %370, label %470, label %371, !dbg !2163

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1884, metadata !643), !dbg !2165
  br label %373, !dbg !2166

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1849, metadata !643), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1848, metadata !643), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1843, metadata !643), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1832, metadata !643), !dbg !1953
  br i1 %369, label %426, label %380, !dbg !2167

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2172

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1849, metadata !643), !dbg !1962
  %382 = and i8 %376, 1, !dbg !2175
  %383 = icmp eq i8 %382, 0, !dbg !2175
  %384 = and i1 %113, %383, !dbg !2175
  br i1 %384, label %385, label %401, !dbg !2175

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2177
  br i1 %386, label %387, label %389, !dbg !2181

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2177
  store i8 39, i8* %388, align 1, !dbg !2177, !tbaa !735
  br label %389, !dbg !2177

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1833, metadata !643), !dbg !1896
  %391 = icmp ult i64 %390, %130, !dbg !2182
  br i1 %391, label %392, label %394, !dbg !2185

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2182
  store i8 36, i8* %393, align 1, !dbg !2182, !tbaa !735
  br label %394, !dbg !2182

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1833, metadata !643), !dbg !1896
  %396 = icmp ult i64 %395, %130, !dbg !2186
  br i1 %396, label %397, label %399, !dbg !2189

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2186
  store i8 39, i8* %398, align 1, !dbg !2186, !tbaa !735
  br label %399, !dbg !2186

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1840, metadata !643), !dbg !1904
  br label %401, !dbg !2190

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1833, metadata !643), !dbg !1896
  %404 = icmp ult i64 %402, %130, !dbg !2191
  br i1 %404, label %405, label %407, !dbg !2194

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2191
  store i8 92, i8* %406, align 1, !dbg !2191, !tbaa !735
  br label %407, !dbg !2191

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1833, metadata !643), !dbg !1896
  %409 = icmp ult i64 %408, %130, !dbg !2195
  br i1 %409, label %410, label %414, !dbg !2198

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2195
  %412 = or i8 %411, 48, !dbg !2195
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2195
  store i8 %412, i8* %413, align 1, !dbg !2195, !tbaa !735
  br label %414, !dbg !2195

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1833, metadata !643), !dbg !1896
  %416 = icmp ult i64 %415, %130, !dbg !2199
  br i1 %416, label %417, label %422, !dbg !2202

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2199
  %419 = and i8 %418, 7, !dbg !2199
  %420 = or i8 %419, 48, !dbg !2199
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2199
  store i8 %420, i8* %421, align 1, !dbg !2199, !tbaa !735
  br label %422, !dbg !2199

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1833, metadata !643), !dbg !1896
  %424 = and i8 %377, 7, !dbg !2203
  %425 = or i8 %424, 48, !dbg !2204
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1843, metadata !643), !dbg !1977
  br label %435, !dbg !2205

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2206
  %428 = icmp eq i8 %427, 0, !dbg !2206
  br i1 %428, label %435, label %429, !dbg !2208

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2209
  br i1 %430, label %431, label %433, !dbg !2213

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2209
  store i8 92, i8* %432, align 1, !dbg !2209, !tbaa !735
  br label %433, !dbg !2209

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1848, metadata !643), !dbg !1961
  br label %435, !dbg !2214

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1849, metadata !643), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1848, metadata !643), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1843, metadata !643), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1833, metadata !643), !dbg !1896
  %441 = add i64 %374, 1, !dbg !2215
  %442 = icmp ugt i64 %372, %441, !dbg !2217
  br i1 %442, label %443, label %535, !dbg !2218

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2219
  %445 = icmp ne i8 %444, 0, !dbg !2219
  %446 = and i8 %440, 1, !dbg !2219
  %447 = icmp eq i8 %446, 0, !dbg !2219
  %448 = and i1 %445, %447, !dbg !2219
  br i1 %448, label %449, label %460, !dbg !2219

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2222
  br i1 %450, label %451, label %453, !dbg !2226

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2222
  store i8 39, i8* %452, align 1, !dbg !2222, !tbaa !735
  br label %453, !dbg !2222

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1833, metadata !643), !dbg !1896
  %455 = icmp ult i64 %454, %130, !dbg !2227
  br i1 %455, label %456, label %458, !dbg !2230

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2227
  store i8 39, i8* %457, align 1, !dbg !2227, !tbaa !735
  br label %458, !dbg !2227

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1840, metadata !643), !dbg !1904
  br label %460, !dbg !2231

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1833, metadata !643), !dbg !1896
  %463 = icmp ult i64 %461, %130, !dbg !2232
  br i1 %463, label %464, label %466, !dbg !2235

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2232
  store i8 %438, i8* %465, align 1, !dbg !2232, !tbaa !735
  br label %466, !dbg !2232

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1832, metadata !643), !dbg !1953
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2236
  %469 = load i8, i8* %468, align 1, !dbg !2236, !tbaa !735
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1843, metadata !643), !dbg !1977
  br label %373, !dbg !2237, !llvm.loop !2238

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1824, metadata !643), !dbg !1888
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1850, metadata !643), !dbg !1963
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1849, metadata !643), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1848, metadata !643), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1843, metadata !643), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1841, metadata !643), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1826, metadata !643), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1834, metadata !643), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1832, metadata !643), !dbg !1953
  br i1 %106, label %482, label %481, !dbg !2241

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2243

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2244

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2245
  %485 = zext i8 %484 to i64, !dbg !2245
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2246
  %487 = load i32, i32* %486, align 4, !dbg !2246, !tbaa !728
  %488 = and i8 %477, 31, !dbg !2247
  %489 = zext i8 %488 to i32, !dbg !2248
  %490 = shl i32 1, %489, !dbg !2249
  %491 = and i32 %487, %490, !dbg !2249
  %492 = icmp eq i32 %491, 0, !dbg !2249
  %493 = icmp eq i8 %156, 0, !dbg !2250
  %494 = and i1 %493, %492, !dbg !2251
  br i1 %494, label %535, label %497, !dbg !2251

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2250
  br i1 %496, label %535, label %497, !dbg !2252

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1824, metadata !643), !dbg !1888
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1850, metadata !643), !dbg !1963
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1843, metadata !643), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1841, metadata !643), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1826, metadata !643), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1834, metadata !643), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1832, metadata !643), !dbg !1953
  br i1 %111, label %507, label %635, !dbg !2253

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1849, metadata !643), !dbg !1962
  %508 = and i8 %502, 1, !dbg !2255
  %509 = icmp eq i8 %508, 0, !dbg !2255
  %510 = and i1 %113, %509, !dbg !2255
  br i1 %510, label %511, label %527, !dbg !2255

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2257
  br i1 %512, label %513, label %515, !dbg !2261

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2257
  store i8 39, i8* %514, align 1, !dbg !2257, !tbaa !735
  br label %515, !dbg !2257

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1833, metadata !643), !dbg !1896
  %517 = icmp ult i64 %516, %506, !dbg !2262
  br i1 %517, label %518, label %520, !dbg !2265

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2262
  store i8 36, i8* %519, align 1, !dbg !2262, !tbaa !735
  br label %520, !dbg !2262

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1833, metadata !643), !dbg !1896
  %522 = icmp ult i64 %521, %506, !dbg !2266
  br i1 %522, label %523, label %525, !dbg !2269

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2266
  store i8 39, i8* %524, align 1, !dbg !2266, !tbaa !735
  br label %525, !dbg !2266

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1840, metadata !643), !dbg !1904
  br label %527, !dbg !2270

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1833, metadata !643), !dbg !1896
  %530 = icmp ult i64 %528, %506, !dbg !2271
  br i1 %530, label %531, label %533, !dbg !2274

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2271
  store i8 92, i8* %532, align 1, !dbg !2271, !tbaa !735
  br label %533, !dbg !2271

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1824, metadata !643), !dbg !1888
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1850, metadata !643), !dbg !1963
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1849, metadata !643), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1843, metadata !643), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1841, metadata !643), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1826, metadata !643), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1834, metadata !643), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1832, metadata !643), !dbg !1953
  br label %562, !dbg !2275

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1824, metadata !643), !dbg !1888
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1850, metadata !643), !dbg !1963
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1849, metadata !643), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1843, metadata !643), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1841, metadata !643), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1826, metadata !643), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1834, metadata !643), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1832, metadata !643), !dbg !1953
  %546 = and i8 %540, 1, !dbg !2275
  %547 = icmp ne i8 %546, 0, !dbg !2275
  %548 = and i8 %543, 1, !dbg !2275
  %549 = icmp eq i8 %548, 0, !dbg !2275
  %550 = and i1 %547, %549, !dbg !2275
  br i1 %550, label %551, label %562, !dbg !2275

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2278
  br i1 %552, label %553, label %555, !dbg !2282

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2278
  store i8 39, i8* %554, align 1, !dbg !2278, !tbaa !735
  br label %555, !dbg !2278

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1833, metadata !643), !dbg !1896
  %557 = icmp ult i64 %556, %545, !dbg !2283
  br i1 %557, label %558, label %560, !dbg !2286

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2283
  store i8 39, i8* %559, align 1, !dbg !2283, !tbaa !735
  br label %560, !dbg !2283

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1840, metadata !643), !dbg !1904
  br label %562, !dbg !2287

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1833, metadata !643), !dbg !1896
  %572 = icmp ult i64 %570, %563, !dbg !2288
  br i1 %572, label %573, label %575, !dbg !2291

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2288
  store i8 %565, i8* %574, align 1, !dbg !2288, !tbaa !735
  br label %575, !dbg !2288

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1833, metadata !643), !dbg !1896
  %577 = and i8 %564, 1, !dbg !2292
  %578 = icmp eq i8 %577, 0, !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1842, metadata !643), !dbg !1906
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2294
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1842, metadata !643), !dbg !1906
  br label %580, !dbg !2295

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1824, metadata !643), !dbg !1888
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1842, metadata !643), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1841, metadata !643), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1840, metadata !643), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1826, metadata !643), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1834, metadata !643), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1832, metadata !643), !dbg !1953
  %589 = add i64 %581, 1, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1832, metadata !643), !dbg !1953
  br label %122, !dbg !2297, !llvm.loop !2298

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2300
  %593 = and i1 %113, %592, !dbg !2302
  %594 = xor i1 %593, true, !dbg !2302
  %595 = or i1 %111, %594, !dbg !2302
  br i1 %595, label %596, label %635, !dbg !2302

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2303
  %598 = xor i1 %597, true, !dbg !2303
  %599 = and i8 %128, 1, !dbg !2305
  %600 = icmp eq i8 %599, 0, !dbg !2305
  %601 = or i1 %600, %598, !dbg !2303
  br i1 %601, label %611, label %602, !dbg !2303

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2306
  %604 = icmp eq i8 %603, 0, !dbg !2306
  br i1 %604, label %607, label %605, !dbg !2309

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2310
  br label %645, !dbg !2311

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2312
  %609 = icmp ne i64 %125, 0, !dbg !2314
  %610 = and i1 %609, %608, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1824, metadata !643), !dbg !1888
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1833, metadata !643), !dbg !1896
  br i1 %610, label %27, label %611, !dbg !2315

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2316
  %613 = and i1 %612, %111, !dbg !2318
  br i1 %613, label %614, label %630, !dbg !2318

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1835, metadata !643), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1833, metadata !643), !dbg !1896
  %615 = load i8, i8* %99, align 1, !dbg !2319, !tbaa !735
  %616 = icmp eq i8 %615, 0, !dbg !2322
  br i1 %616, label %630, label %617, !dbg !2322

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2323

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1833, metadata !643), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1835, metadata !643), !dbg !1898
  %622 = icmp ult i64 %621, %130, !dbg !2323
  br i1 %622, label %623, label %625, !dbg !2326

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2323
  store i8 %619, i8* %624, align 1, !dbg !2323, !tbaa !735
  br label %625, !dbg !2323

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1833, metadata !643), !dbg !1896
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2327
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1835, metadata !643), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1835, metadata !643), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1833, metadata !643), !dbg !1896
  %628 = load i8, i8* %627, align 1, !dbg !2319, !tbaa !735
  %629 = icmp eq i8 %628, 0, !dbg !2322
  br i1 %629, label %630, label %618, !dbg !2322, !llvm.loop !2328

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1833, metadata !643), !dbg !1896
  %632 = icmp ult i64 %631, %130, !dbg !2330
  br i1 %632, label %633, label %645, !dbg !2332

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2333
  store i8 0, i8* %634, align 1, !dbg !2334, !tbaa !735
  br label %645, !dbg !2333

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1824, metadata !643), !dbg !1888
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1826, metadata !643), !dbg !1890
  %639 = icmp ne i32 %636, 2, !dbg !2335
  %640 = icmp eq i8 %103, 0, !dbg !2337
  %641 = or i1 %639, %640, !dbg !2338
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1827, metadata !643), !dbg !1891
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1827, metadata !643), !dbg !1891
  %643 = and i32 %5, -3, !dbg !2339
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2340
  br label %645, !dbg !2341

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2342
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2343 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2347, metadata !643), !dbg !2351
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2348, metadata !643), !dbg !2352
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2353
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2349, metadata !643), !dbg !2354
  %4 = icmp eq i8* %3, %0, !dbg !2355
  br i1 %4, label %5, label %75, !dbg !2357

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2358
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2350, metadata !643), !dbg !2359
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2360, metadata !643), !dbg !2376
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2374, metadata !643), !dbg !2379
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2375, metadata !643), !dbg !2380
  %7 = load i8, i8* %6, align 1, !dbg !2381, !tbaa !735
  %8 = sext i8 %7 to i32, !dbg !2381
  %9 = and i32 %8, -33, !dbg !2381
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2381

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2383, metadata !643), !dbg !2397
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2395, metadata !643), !dbg !2401
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2396, metadata !643), !dbg !2402
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2403
  %12 = load i8, i8* %11, align 1, !dbg !2403, !tbaa !735
  %13 = sext i8 %12 to i32, !dbg !2403
  %14 = and i32 %13, -33, !dbg !2403
  %15 = icmp eq i32 %14, 84, !dbg !2403
  br i1 %15, label %16, label %72, !dbg !2403

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2405, metadata !643), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2416, metadata !643), !dbg !2422
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2417, metadata !643), !dbg !2423
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2424
  %18 = load i8, i8* %17, align 1, !dbg !2424, !tbaa !735
  %19 = sext i8 %18 to i32, !dbg !2424
  %20 = and i32 %19, -33, !dbg !2424
  %21 = icmp eq i32 %20, 70, !dbg !2424
  br i1 %21, label %22, label %72, !dbg !2424

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2426, metadata !643), !dbg !2438
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2436, metadata !643), !dbg !2442
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2437, metadata !643), !dbg !2443
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2444
  %24 = load i8, i8* %23, align 1, !dbg !2444, !tbaa !735
  %25 = icmp eq i8 %24, 45, !dbg !2444
  br i1 %25, label %26, label %72, !dbg !2446

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2447, metadata !643), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2456, metadata !643), !dbg !2462
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2457, metadata !643), !dbg !2463
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2464
  %28 = load i8, i8* %27, align 1, !dbg !2464, !tbaa !735
  %29 = icmp eq i8 %28, 56, !dbg !2464
  br i1 %29, label %30, label %72, !dbg !2466

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2467, metadata !643), !dbg !2477
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2475, metadata !643), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2476, metadata !643), !dbg !2482
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2483
  %32 = load i8, i8* %31, align 1, !dbg !2483, !tbaa !735
  %33 = icmp eq i8 %32, 0, !dbg !2483
  br i1 %33, label %34, label %72, !dbg !2485

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2486, !tbaa !735
  %36 = icmp eq i8 %35, 96, !dbg !2487
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.78, i64 0, i64 0), !dbg !2486
  br label %75, !dbg !2488

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2383, metadata !643), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2395, metadata !643), !dbg !2493
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2396, metadata !643), !dbg !2494
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2495
  %40 = load i8, i8* %39, align 1, !dbg !2495, !tbaa !735
  %41 = sext i8 %40 to i32, !dbg !2495
  %42 = and i32 %41, -33, !dbg !2495
  %43 = icmp eq i32 %42, 66, !dbg !2495
  br i1 %43, label %44, label %72, !dbg !2495

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2405, metadata !643), !dbg !2496
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2416, metadata !643), !dbg !2498
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2417, metadata !643), !dbg !2499
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2500
  %46 = load i8, i8* %45, align 1, !dbg !2500, !tbaa !735
  %47 = icmp eq i8 %46, 49, !dbg !2500
  br i1 %47, label %48, label %72, !dbg !2501

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2426, metadata !643), !dbg !2502
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2436, metadata !643), !dbg !2504
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2437, metadata !643), !dbg !2505
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2506
  %50 = load i8, i8* %49, align 1, !dbg !2506, !tbaa !735
  %51 = icmp eq i8 %50, 56, !dbg !2506
  br i1 %51, label %52, label %72, !dbg !2507

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2447, metadata !643), !dbg !2508
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2456, metadata !643), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2457, metadata !643), !dbg !2511
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2512
  %54 = load i8, i8* %53, align 1, !dbg !2512, !tbaa !735
  %55 = icmp eq i8 %54, 48, !dbg !2512
  br i1 %55, label %56, label %72, !dbg !2513

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2467, metadata !643), !dbg !2514
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2475, metadata !643), !dbg !2516
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2476, metadata !643), !dbg !2517
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2518
  %58 = load i8, i8* %57, align 1, !dbg !2518, !tbaa !735
  %59 = icmp eq i8 %58, 51, !dbg !2518
  br i1 %59, label %60, label %72, !dbg !2519

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2520, metadata !643), !dbg !2529
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2527, metadata !643), !dbg !2533
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2528, metadata !643), !dbg !2534
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2535
  %62 = load i8, i8* %61, align 1, !dbg !2535, !tbaa !735
  %63 = icmp eq i8 %62, 48, !dbg !2535
  br i1 %63, label %64, label %72, !dbg !2537

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2538, metadata !643), !dbg !2546
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2544, metadata !643), !dbg !2550
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2545, metadata !643), !dbg !2551
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2552
  %66 = load i8, i8* %65, align 1, !dbg !2552, !tbaa !735
  %67 = icmp eq i8 %66, 0, !dbg !2552
  br i1 %67, label %68, label %72, !dbg !2554

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2555, !tbaa !735
  %70 = icmp eq i8 %69, 96, !dbg !2556
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.80, i64 0, i64 0), !dbg !2555
  br label %75, !dbg !2557

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2558
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !2559
  br label %75, !dbg !2560

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2561
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2562 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2566, metadata !643), !dbg !2569
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2567, metadata !643), !dbg !2570
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2568, metadata !643), !dbg !2571
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2572, metadata !643) #12, !dbg !2585
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2577, metadata !643) #12, !dbg !2587
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2578, metadata !643) #12, !dbg !2588
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2579, metadata !643) #12, !dbg !2589
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2590
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2590
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2580, metadata !643) #12, !dbg !2591
  %6 = tail call i32* @__errno_location() #17, !dbg !2592
  %7 = load i32, i32* %6, align 4, !dbg !2592, !tbaa !728
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2581, metadata !643) #12, !dbg !2593
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2594
  %9 = load i32, i32* %8, align 4, !dbg !2594, !tbaa !1756
  %10 = or i32 %9, 1, !dbg !2595
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2582, metadata !643) #12, !dbg !2596
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2597
  %12 = load i32, i32* %11, align 8, !dbg !2597, !tbaa !1696
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2598
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2599
  %15 = load i8*, i8** %14, align 8, !dbg !2599, !tbaa !1782
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2600
  %17 = load i8*, i8** %16, align 8, !dbg !2600, !tbaa !1785
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !2601
  %19 = add i64 %18, 1, !dbg !2602
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2583, metadata !643) #12, !dbg !2603
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2604, metadata !643) #12, !dbg !2609
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2611
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2584, metadata !643) #12, !dbg !2612
  %21 = load i32, i32* %11, align 8, !dbg !2613, !tbaa !1696
  %22 = load i8*, i8** %14, align 8, !dbg !2614, !tbaa !1782
  %23 = load i8*, i8** %16, align 8, !dbg !2615, !tbaa !1785
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !2616
  store i32 %7, i32* %6, align 4, !dbg !2617, !tbaa !728
  ret i8* %20, !dbg !2618
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2573 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2572, metadata !643), !dbg !2619
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2577, metadata !643), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2578, metadata !643), !dbg !2621
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2579, metadata !643), !dbg !2622
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2623
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2623
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2580, metadata !643), !dbg !2624
  %7 = tail call i32* @__errno_location() #17, !dbg !2625
  %8 = load i32, i32* %7, align 4, !dbg !2625, !tbaa !728
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2581, metadata !643), !dbg !2626
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2627
  %10 = load i32, i32* %9, align 4, !dbg !2627, !tbaa !1756
  %11 = icmp ne i64* %2, null, !dbg !2628
  %12 = xor i1 %11, true, !dbg !2628
  %13 = zext i1 %12 to i32, !dbg !2628
  %14 = or i32 %10, %13, !dbg !2629
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2582, metadata !643), !dbg !2630
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2631
  %16 = load i32, i32* %15, align 8, !dbg !2631, !tbaa !1696
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2632
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2633
  %19 = load i8*, i8** %18, align 8, !dbg !2633, !tbaa !1782
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2634
  %21 = load i8*, i8** %20, align 8, !dbg !2634, !tbaa !1785
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2635
  %23 = add i64 %22, 1, !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2583, metadata !643), !dbg !2637
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2604, metadata !643) #12, !dbg !2638
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2640
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2584, metadata !643), !dbg !2641
  %25 = load i32, i32* %15, align 8, !dbg !2642, !tbaa !1696
  %26 = load i8*, i8** %18, align 8, !dbg !2643, !tbaa !1782
  %27 = load i8*, i8** %20, align 8, !dbg !2644, !tbaa !1785
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2645
  store i32 %8, i32* %7, align 4, !dbg !2646, !tbaa !728
  br i1 %11, label %29, label %30, !dbg !2647

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2648, !tbaa !1541
  br label %30, !dbg !2650

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2651
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2652 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2656, !tbaa !650
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2654, metadata !643), !dbg !2657
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2655, metadata !643), !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2655, metadata !643), !dbg !2658
  %2 = load i32, i32* @nslots, align 4, !dbg !2659, !tbaa !728
  %3 = icmp sgt i32 %2, 1, !dbg !2662
  br i1 %3, label %4, label %13, !dbg !2663

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2664

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2655, metadata !643), !dbg !2658
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2664
  %8 = load i8*, i8** %7, align 8, !dbg !2664, !tbaa !2665
  tail call void @free(i8* %8) #12, !dbg !2667
  %9 = add nuw i64 %6, 1, !dbg !2668
  %10 = load i32, i32* @nslots, align 4, !dbg !2659, !tbaa !728
  %11 = sext i32 %10 to i64, !dbg !2662
  %12 = icmp slt i64 %9, %11, !dbg !2662
  br i1 %12, label %5, label %13, !dbg !2663, !llvm.loop !2669

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2671
  %15 = load i8*, i8** %14, align 8, !dbg !2671, !tbaa !2665
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2673
  br i1 %16, label %18, label %17, !dbg !2674

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #12, !dbg !2675
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2677, !tbaa !2678
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2679, !tbaa !2665
  br label %18, !dbg !2680

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2681
  br i1 %19, label %22, label %20, !dbg !2683

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2684
  tail call void @free(i8* %21) #12, !dbg !2686
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2687, !tbaa !650
  br label %22, !dbg !2688

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2689, !tbaa !728
  ret void, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2691 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2695, metadata !643), !dbg !2697
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2696, metadata !643), !dbg !2698
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2699
  ret i8* %3, !dbg !2700
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2701 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2705, metadata !643), !dbg !2719
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2706, metadata !643), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2707, metadata !643), !dbg !2721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2708, metadata !643), !dbg !2722
  %5 = tail call i32* @__errno_location() #17, !dbg !2723
  %6 = load i32, i32* %5, align 4, !dbg !2723, !tbaa !728
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2709, metadata !643), !dbg !2724
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2725, !tbaa !650
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2710, metadata !643), !dbg !2726
  %8 = icmp slt i32 %0, 0, !dbg !2727
  br i1 %8, label %9, label %10, !dbg !2729

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2730
  unreachable, !dbg !2730

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2731, !tbaa !728
  %12 = icmp sgt i32 %11, %0, !dbg !2732
  br i1 %12, label %34, label %13, !dbg !2733

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2734
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2735
  br i1 %15, label %16, label %17, !dbg !2737

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2738
  unreachable, !dbg !2738

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2739
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2739
  %20 = add nsw i32 %0, 1, !dbg !2740
  %21 = sext i32 %20 to i64, !dbg !2741
  %22 = shl nsw i64 %21, 4, !dbg !2742
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2743
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2743
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2710, metadata !643), !dbg !2726
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2744, !tbaa !650
  br i1 %14, label %25, label %26, !dbg !2745

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2746, !tbaa.struct !2748
  br label %26, !dbg !2749

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2750, !tbaa !728
  %28 = sext i32 %27 to i64, !dbg !2751
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2751
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2752
  %31 = sub nsw i32 %20, %27, !dbg !2753
  %32 = sext i32 %31 to i64, !dbg !2754
  %33 = shl nsw i64 %32, 4, !dbg !2755
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2752
  store i32 %20, i32* @nslots, align 4, !dbg !2756, !tbaa !728
  br label %34, !dbg !2757

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2710, metadata !643), !dbg !2726
  %36 = sext i32 %0 to i64, !dbg !2758
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2759
  %38 = load i64, i64* %37, align 8, !dbg !2759, !tbaa !2678
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2714, metadata !643), !dbg !2760
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2761
  %40 = load i8*, i8** %39, align 8, !dbg !2761, !tbaa !2665
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2716, metadata !643), !dbg !2762
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2763
  %42 = load i32, i32* %41, align 4, !dbg !2763, !tbaa !1756
  %43 = or i32 %42, 1, !dbg !2764
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2717, metadata !643), !dbg !2765
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2766
  %45 = load i32, i32* %44, align 8, !dbg !2766, !tbaa !1696
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2767
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2768
  %48 = load i8*, i8** %47, align 8, !dbg !2768, !tbaa !1782
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2769
  %50 = load i8*, i8** %49, align 8, !dbg !2769, !tbaa !1785
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2718, metadata !643), !dbg !2771
  %52 = icmp ugt i64 %38, %51, !dbg !2772
  br i1 %52, label %63, label %53, !dbg !2774

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2775
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2714, metadata !643), !dbg !2760
  store i64 %54, i64* %37, align 8, !dbg !2777, !tbaa !2678
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2778
  br i1 %55, label %57, label %56, !dbg !2780

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2781
  br label %57, !dbg !2781

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2604, metadata !643) #12, !dbg !2782
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2784
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2716, metadata !643), !dbg !2762
  store i8* %58, i8** %39, align 8, !dbg !2785, !tbaa !2665
  %59 = load i32, i32* %44, align 8, !dbg !2786, !tbaa !1696
  %60 = load i8*, i8** %47, align 8, !dbg !2787, !tbaa !1782
  %61 = load i8*, i8** %49, align 8, !dbg !2788, !tbaa !1785
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2789
  br label %63, !dbg !2790

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2716, metadata !643), !dbg !2762
  store i32 %6, i32* %5, align 4, !dbg !2791, !tbaa !728
  ret i8* %64, !dbg !2792
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2793 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2797, metadata !643), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2798, metadata !643), !dbg !2801
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2799, metadata !643), !dbg !2802
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2803
  ret i8* %4, !dbg !2804
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2805 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2809, metadata !643), !dbg !2810
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2695, metadata !643) #12, !dbg !2811
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2696, metadata !643) #12, !dbg !2813
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2814
  ret i8* %2, !dbg !2815
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2816 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2820, metadata !643), !dbg !2822
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2821, metadata !643), !dbg !2823
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2797, metadata !643) #12, !dbg !2824
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2798, metadata !643) #12, !dbg !2826
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2799, metadata !643) #12, !dbg !2827
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2828
  ret i8* %3, !dbg !2829
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2830 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2838, metadata !2844), !dbg !2845
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2834, metadata !643), !dbg !2847
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2835, metadata !643), !dbg !2848
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2836, metadata !643), !dbg !2849
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2850
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2850
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2837, metadata !643), !dbg !2851
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2843, metadata !643) #12, !dbg !2852
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2853
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2853
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2838, metadata !643) #12, !dbg !2845
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2838, metadata !2854) #12, !dbg !2845
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2845
  %8 = icmp eq i32 %1, 10, !dbg !2855
  br i1 %8, label %9, label %10, !dbg !2857

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2858, !noalias !2859
  unreachable, !dbg !2858

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2838, metadata !2854) #12, !dbg !2845
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2862
  store i32 %1, i32* %11, align 8, !dbg !2862, !alias.scope !2859
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2862
  %13 = bitcast i32* %12 to i8*, !dbg !2862
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2862
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2863
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2837, metadata !643), !dbg !2851
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2864
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2865
  ret i8* %14, !dbg !2866
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2867 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2838, metadata !2844), !dbg !2876
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2871, metadata !643), !dbg !2878
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2872, metadata !643), !dbg !2879
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2873, metadata !643), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2874, metadata !643), !dbg !2881
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2882
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2875, metadata !643), !dbg !2883
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2843, metadata !643) #12, !dbg !2884
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2885
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2885
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2838, metadata !643) #12, !dbg !2876
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2838, metadata !2854) #12, !dbg !2876
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2876
  %9 = icmp eq i32 %1, 10, !dbg !2886
  br i1 %9, label %10, label %11, !dbg !2887

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2888, !noalias !2889
  unreachable, !dbg !2888

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2838, metadata !2854) #12, !dbg !2876
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2892
  store i32 %1, i32* %12, align 8, !dbg !2892, !alias.scope !2889
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2892
  %14 = bitcast i32* %13 to i8*, !dbg !2892
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !2892
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2893
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2875, metadata !643), !dbg !2883
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2894
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2895
  ret i8* %15, !dbg !2896
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2897 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2838, metadata !2844), !dbg !2903
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2901, metadata !643), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2902, metadata !643), !dbg !2907
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2834, metadata !643) #12, !dbg !2908
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2835, metadata !643) #12, !dbg !2909
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2836, metadata !643) #12, !dbg !2910
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2911
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2911
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2837, metadata !643) #12, !dbg !2912
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2843, metadata !643) #12, !dbg !2913
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2914
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2914
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2838, metadata !643) #12, !dbg !2903
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2838, metadata !2854) #12, !dbg !2903
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2903
  %7 = icmp eq i32 %0, 10, !dbg !2915
  br i1 %7, label %8, label %9, !dbg !2916

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2917, !noalias !2918
  unreachable, !dbg !2917

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2838, metadata !2854) #12, !dbg !2903
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2921
  store i32 %0, i32* %10, align 8, !dbg !2921, !alias.scope !2918
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2921
  %12 = bitcast i32* %11 to i8*, !dbg !2921
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !2921
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2922
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2837, metadata !643) #12, !dbg !2912
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2924
  ret i8* %13, !dbg !2925
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2926 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2838, metadata !2844), !dbg !2933
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2930, metadata !643), !dbg !2936
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2931, metadata !643), !dbg !2937
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2932, metadata !643), !dbg !2938
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2871, metadata !643) #12, !dbg !2939
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2872, metadata !643) #12, !dbg !2940
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2873, metadata !643) #12, !dbg !2941
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2874, metadata !643) #12, !dbg !2942
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2943
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2943
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2875, metadata !643) #12, !dbg !2944
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2843, metadata !643) #12, !dbg !2945
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2946
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2946
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2838, metadata !643) #12, !dbg !2933
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2838, metadata !2854) #12, !dbg !2933
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2933
  %8 = icmp eq i32 %0, 10, !dbg !2947
  br i1 %8, label %9, label %10, !dbg !2948

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2949, !noalias !2950
  unreachable, !dbg !2949

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2838, metadata !2854) #12, !dbg !2933
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2953
  store i32 %0, i32* %11, align 8, !dbg !2953, !alias.scope !2950
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2953
  %13 = bitcast i32* %12 to i8*, !dbg !2953
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !2953
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2954
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2875, metadata !643) #12, !dbg !2944
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !2955
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2956
  ret i8* %14, !dbg !2957
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2958 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2962, metadata !643), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2963, metadata !643), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2964, metadata !643), !dbg !2968
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2969
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2969
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2970, !tbaa.struct !2971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2965, metadata !643), !dbg !2972
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1715, metadata !643), !dbg !2973
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1716, metadata !643), !dbg !2975
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1717, metadata !643), !dbg !2976
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1718, metadata !643), !dbg !2977
  %6 = lshr i8 %2, 5, !dbg !2978
  %7 = zext i8 %6 to i64, !dbg !2978
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2979
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1719, metadata !643), !dbg !2980
  %9 = and i8 %2, 31, !dbg !2981
  %10 = zext i8 %9 to i32, !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1721, metadata !643), !dbg !2983
  %11 = load i32, i32* %8, align 4, !dbg !2984, !tbaa !728
  %12 = lshr i32 %11, %10, !dbg !2985
  %13 = and i32 %12, 1, !dbg !2986
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1722, metadata !643), !dbg !2987
  %14 = xor i32 %13, 1, !dbg !2988
  %15 = shl i32 %14, %10, !dbg !2989
  %16 = xor i32 %15, %11, !dbg !2990
  store i32 %16, i32* %8, align 4, !dbg !2990, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2965, metadata !643), !dbg !2972
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2991
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2992
  ret i8* %17, !dbg !2993
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2994 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2998, metadata !643), !dbg !3000
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2999, metadata !643), !dbg !3001
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2962, metadata !643) #12, !dbg !3002
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2963, metadata !643) #12, !dbg !3004
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2964, metadata !643) #12, !dbg !3005
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3006
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3006
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3007, !tbaa.struct !2971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2965, metadata !643) #12, !dbg !3008
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1715, metadata !643) #12, !dbg !3009
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1716, metadata !643) #12, !dbg !3011
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1717, metadata !643) #12, !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1718, metadata !643) #12, !dbg !3013
  %5 = lshr i8 %1, 5, !dbg !3014
  %6 = zext i8 %5 to i64, !dbg !3014
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3015
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1719, metadata !643) #12, !dbg !3016
  %8 = and i8 %1, 31, !dbg !3017
  %9 = zext i8 %8 to i32, !dbg !3018
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1721, metadata !643) #12, !dbg !3019
  %10 = load i32, i32* %7, align 4, !dbg !3020, !tbaa !728
  %11 = lshr i32 %10, %9, !dbg !3021
  %12 = and i32 %11, 1, !dbg !3022
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1722, metadata !643) #12, !dbg !3023
  %13 = xor i32 %12, 1, !dbg !3024
  %14 = shl i32 %13, %9, !dbg !3025
  %15 = xor i32 %14, %10, !dbg !3026
  store i32 %15, i32* %7, align 4, !dbg !3026, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2965, metadata !643) #12, !dbg !3008
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3027
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3028
  ret i8* %16, !dbg !3029
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3030 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3032, metadata !643), !dbg !3033
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2998, metadata !643) #12, !dbg !3034
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2999, metadata !643) #12, !dbg !3036
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2962, metadata !643) #12, !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2963, metadata !643) #12, !dbg !3039
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2964, metadata !643) #12, !dbg !3040
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3041
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3041
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3042, !tbaa.struct !2971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2965, metadata !643) #12, !dbg !3043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1715, metadata !643) #12, !dbg !3044
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1716, metadata !643) #12, !dbg !3046
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1717, metadata !643) #12, !dbg !3047
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1718, metadata !643) #12, !dbg !3048
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3049
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1719, metadata !643) #12, !dbg !3050
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1721, metadata !643) #12, !dbg !3051
  %5 = load i32, i32* %4, align 4, !dbg !3052, !tbaa !728
  %6 = or i32 %5, 67108864, !dbg !3053
  store i32 %6, i32* %4, align 4, !dbg !3053, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2965, metadata !643) #12, !dbg !3043
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3054
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3055
  ret i8* %7, !dbg !3056
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3057 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3059, metadata !643), !dbg !3061
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3060, metadata !643), !dbg !3062
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2962, metadata !643) #12, !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2963, metadata !643) #12, !dbg !3065
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2964, metadata !643) #12, !dbg !3066
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3067
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3067
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3068, !tbaa.struct !2971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2965, metadata !643) #12, !dbg !3069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1715, metadata !643) #12, !dbg !3070
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1716, metadata !643) #12, !dbg !3072
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1717, metadata !643) #12, !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1718, metadata !643) #12, !dbg !3074
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3075
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1719, metadata !643) #12, !dbg !3076
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1721, metadata !643) #12, !dbg !3077
  %6 = load i32, i32* %5, align 4, !dbg !3078, !tbaa !728
  %7 = or i32 %6, 67108864, !dbg !3079
  store i32 %7, i32* %5, align 4, !dbg !3079, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2965, metadata !643) #12, !dbg !3069
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3080
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3081
  ret i8* %8, !dbg !3082
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3083 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2838, metadata !2844), !dbg !3089
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3085, metadata !643), !dbg !3091
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3086, metadata !643), !dbg !3092
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3087, metadata !643), !dbg !3093
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3094
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3094
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2843, metadata !643) #12, !dbg !3095
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3096
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3096
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2838, metadata !643) #12, !dbg !3089
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2838, metadata !2854) #12, !dbg !3089
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3089
  %9 = icmp eq i32 %1, 10, !dbg !3097
  br i1 %9, label %10, label %11, !dbg !3098

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3099, !noalias !3100
  unreachable, !dbg !3099

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2838, metadata !2854) #12, !dbg !3089
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3103
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3103
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3104
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3105
  store i32 %1, i32* %13, align 8, !dbg !3105
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3105
  %15 = bitcast i32* %14 to i8*, !dbg !3105
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3088, metadata !643), !dbg !3106
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1715, metadata !643), !dbg !3107
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1716, metadata !643), !dbg !3109
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1717, metadata !643), !dbg !3110
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1718, metadata !643), !dbg !3111
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3112
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1719, metadata !643), !dbg !3113
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1721, metadata !643), !dbg !3114
  %17 = load i32, i32* %16, align 4, !dbg !3115, !tbaa !728
  %18 = or i32 %17, 67108864, !dbg !3116
  store i32 %18, i32* %16, align 4, !dbg !3116, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3088, metadata !643), !dbg !3106
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3117
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3118
  ret i8* %19, !dbg !3119
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3120 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3124, metadata !643), !dbg !3128
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3125, metadata !643), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3126, metadata !643), !dbg !3130
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3127, metadata !643), !dbg !3131
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3132, metadata !643) #12, !dbg !3142
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3137, metadata !643) #12, !dbg !3144
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3138, metadata !643) #12, !dbg !3145
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3139, metadata !643) #12, !dbg !3146
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3140, metadata !643) #12, !dbg !3147
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3148
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3148
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3149, !tbaa.struct !2971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3141, metadata !643) #12, !dbg !3150
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1764, metadata !643) #12, !dbg !3151
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1765, metadata !643) #12, !dbg !3153
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1766, metadata !643) #12, !dbg !3154
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1764, metadata !643) #12, !dbg !3151
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1764, metadata !643) #12, !dbg !3151
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3155
  store i32 10, i32* %7, align 8, !dbg !3156, !tbaa !1696
  %8 = icmp ne i8* %1, null, !dbg !3157
  %9 = icmp ne i8* %2, null, !dbg !3158
  %10 = and i1 %8, %9, !dbg !3159
  br i1 %10, label %12, label %11, !dbg !3159

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3160
  unreachable, !dbg !3160

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3161
  store i8* %1, i8** %13, align 8, !dbg !3162, !tbaa !1782
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3163
  store i8* %2, i8** %14, align 8, !dbg !3164, !tbaa !1785
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3141, metadata !643) #12, !dbg !3150
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3165
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3166
  ret i8* %15, !dbg !3167
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3133 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3132, metadata !643), !dbg !3168
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3137, metadata !643), !dbg !3169
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3138, metadata !643), !dbg !3170
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3139, metadata !643), !dbg !3171
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3140, metadata !643), !dbg !3172
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3173
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3174, !tbaa.struct !2971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3141, metadata !643), !dbg !3175
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1764, metadata !643) #12, !dbg !3176
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1765, metadata !643) #12, !dbg !3178
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1766, metadata !643) #12, !dbg !3179
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1764, metadata !643) #12, !dbg !3176
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1764, metadata !643) #12, !dbg !3176
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3180
  store i32 10, i32* %8, align 8, !dbg !3181, !tbaa !1696
  %9 = icmp ne i8* %1, null, !dbg !3182
  %10 = icmp ne i8* %2, null, !dbg !3183
  %11 = and i1 %9, %10, !dbg !3184
  br i1 %11, label %13, label %12, !dbg !3184

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3185
  unreachable, !dbg !3185

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3186
  store i8* %1, i8** %14, align 8, !dbg !3187, !tbaa !1782
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3188
  store i8* %2, i8** %15, align 8, !dbg !3189, !tbaa !1785
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3141, metadata !643), !dbg !3175
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3190
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3191
  ret i8* %16, !dbg !3192
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3193 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3197, metadata !643), !dbg !3200
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3198, metadata !643), !dbg !3201
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3199, metadata !643), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3124, metadata !643) #12, !dbg !3203
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3125, metadata !643) #12, !dbg !3205
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3126, metadata !643) #12, !dbg !3206
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3127, metadata !643) #12, !dbg !3207
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3132, metadata !643) #12, !dbg !3208
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3137, metadata !643) #12, !dbg !3210
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3138, metadata !643) #12, !dbg !3211
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3139, metadata !643) #12, !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3140, metadata !643) #12, !dbg !3213
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3214
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3215, !tbaa.struct !2971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3141, metadata !643) #12, !dbg !3216
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1764, metadata !643) #12, !dbg !3217
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1765, metadata !643) #12, !dbg !3219
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1766, metadata !643) #12, !dbg !3220
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1764, metadata !643) #12, !dbg !3217
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1764, metadata !643) #12, !dbg !3217
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3221
  store i32 10, i32* %6, align 8, !dbg !3222, !tbaa !1696
  %7 = icmp ne i8* %0, null, !dbg !3223
  %8 = icmp ne i8* %1, null, !dbg !3224
  %9 = and i1 %7, %8, !dbg !3225
  br i1 %9, label %11, label %10, !dbg !3225

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3226
  unreachable, !dbg !3226

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3227
  store i8* %0, i8** %12, align 8, !dbg !3228, !tbaa !1782
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3229
  store i8* %1, i8** %13, align 8, !dbg !3230, !tbaa !1785
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3141, metadata !643) #12, !dbg !3216
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3231
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3232
  ret i8* %14, !dbg !3233
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3234 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3238, metadata !643), !dbg !3242
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3239, metadata !643), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3240, metadata !643), !dbg !3244
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3241, metadata !643), !dbg !3245
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3132, metadata !643) #12, !dbg !3246
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3137, metadata !643) #12, !dbg !3248
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3138, metadata !643) #12, !dbg !3249
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3139, metadata !643) #12, !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3140, metadata !643) #12, !dbg !3251
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3252
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !3253, !tbaa.struct !2971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3141, metadata !643) #12, !dbg !3254
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1764, metadata !643) #12, !dbg !3255
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1765, metadata !643) #12, !dbg !3257
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1766, metadata !643) #12, !dbg !3258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1764, metadata !643) #12, !dbg !3255
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1764, metadata !643) #12, !dbg !3255
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3259
  store i32 10, i32* %7, align 8, !dbg !3260, !tbaa !1696
  %8 = icmp ne i8* %0, null, !dbg !3261
  %9 = icmp ne i8* %1, null, !dbg !3262
  %10 = and i1 %8, %9, !dbg !3263
  br i1 %10, label %12, label %11, !dbg !3263

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3264
  unreachable, !dbg !3264

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3265
  store i8* %0, i8** %13, align 8, !dbg !3266, !tbaa !1782
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3267
  store i8* %1, i8** %14, align 8, !dbg !3268, !tbaa !1785
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3141, metadata !643) #12, !dbg !3254
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3269
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3270
  ret i8* %15, !dbg !3271
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3272 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3276, metadata !643), !dbg !3279
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3277, metadata !643), !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3278, metadata !643), !dbg !3281
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3282
  ret i8* %4, !dbg !3283
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3284 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3288, metadata !643), !dbg !3290
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3289, metadata !643), !dbg !3291
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3276, metadata !643) #12, !dbg !3292
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3277, metadata !643) #12, !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3278, metadata !643) #12, !dbg !3295
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3296
  ret i8* %3, !dbg !3297
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3298 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3302, metadata !643), !dbg !3304
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3303, metadata !643), !dbg !3305
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3276, metadata !643) #12, !dbg !3306
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3277, metadata !643) #12, !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3278, metadata !643) #12, !dbg !3309
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3310
  ret i8* %3, !dbg !3311
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3312 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3314, metadata !643), !dbg !3315
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3302, metadata !643) #12, !dbg !3316
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3303, metadata !643) #12, !dbg !3318
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3276, metadata !643) #12, !dbg !3319
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3277, metadata !643) #12, !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3278, metadata !643) #12, !dbg !3322
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3323
  ret i8* %2, !dbg !3324
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3325 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3384, metadata !643), !dbg !3390
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3385, metadata !643), !dbg !3391
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3386, metadata !643), !dbg !3392
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3387, metadata !643), !dbg !3393
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3388, metadata !643), !dbg !3394
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3389, metadata !643), !dbg !3395
  %7 = icmp eq i8* %1, null, !dbg !3396
  br i1 %7, label %10, label %8, !dbg !3398

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3399
  br label %12, !dbg !3399

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.88, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3400
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i32 5) #12, !dbg !3401
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !3401
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.90, i64 0, i64 0), i32 5) #12, !dbg !3402
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !3402
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
  ], !dbg !3403

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3404
  unreachable, !dbg !3404

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.91, i64 0, i64 0), i32 5) #12, !dbg !3406
  %20 = load i8*, i8** %4, align 8, !dbg !3406, !tbaa !650
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !3406
  br label %146, !dbg !3407

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.92, i64 0, i64 0), i32 5) #12, !dbg !3408
  %24 = load i8*, i8** %4, align 8, !dbg !3408, !tbaa !650
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3408
  %26 = load i8*, i8** %25, align 8, !dbg !3408, !tbaa !650
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !3408
  br label %146, !dbg !3409

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.93, i64 0, i64 0), i32 5) #12, !dbg !3410
  %30 = load i8*, i8** %4, align 8, !dbg !3410, !tbaa !650
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3410
  %32 = load i8*, i8** %31, align 8, !dbg !3410, !tbaa !650
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3410
  %34 = load i8*, i8** %33, align 8, !dbg !3410, !tbaa !650
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !3410
  br label %146, !dbg !3411

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.94, i64 0, i64 0), i32 5) #12, !dbg !3412
  %38 = load i8*, i8** %4, align 8, !dbg !3412, !tbaa !650
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3412
  %40 = load i8*, i8** %39, align 8, !dbg !3412, !tbaa !650
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3412
  %42 = load i8*, i8** %41, align 8, !dbg !3412, !tbaa !650
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3412
  %44 = load i8*, i8** %43, align 8, !dbg !3412, !tbaa !650
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !3412
  br label %146, !dbg !3413

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.95, i64 0, i64 0), i32 5) #12, !dbg !3414
  %48 = load i8*, i8** %4, align 8, !dbg !3414, !tbaa !650
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3414
  %50 = load i8*, i8** %49, align 8, !dbg !3414, !tbaa !650
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3414
  %52 = load i8*, i8** %51, align 8, !dbg !3414, !tbaa !650
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3414
  %54 = load i8*, i8** %53, align 8, !dbg !3414, !tbaa !650
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3414
  %56 = load i8*, i8** %55, align 8, !dbg !3414, !tbaa !650
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !3414
  br label %146, !dbg !3415

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.96, i64 0, i64 0), i32 5) #12, !dbg !3416
  %60 = load i8*, i8** %4, align 8, !dbg !3416, !tbaa !650
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3416
  %62 = load i8*, i8** %61, align 8, !dbg !3416, !tbaa !650
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3416
  %64 = load i8*, i8** %63, align 8, !dbg !3416, !tbaa !650
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3416
  %66 = load i8*, i8** %65, align 8, !dbg !3416, !tbaa !650
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3416
  %68 = load i8*, i8** %67, align 8, !dbg !3416, !tbaa !650
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3416
  %70 = load i8*, i8** %69, align 8, !dbg !3416, !tbaa !650
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !3416
  br label %146, !dbg !3417

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.97, i64 0, i64 0), i32 5) #12, !dbg !3418
  %74 = load i8*, i8** %4, align 8, !dbg !3418, !tbaa !650
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3418
  %76 = load i8*, i8** %75, align 8, !dbg !3418, !tbaa !650
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3418
  %78 = load i8*, i8** %77, align 8, !dbg !3418, !tbaa !650
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3418
  %80 = load i8*, i8** %79, align 8, !dbg !3418, !tbaa !650
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3418
  %82 = load i8*, i8** %81, align 8, !dbg !3418, !tbaa !650
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3418
  %84 = load i8*, i8** %83, align 8, !dbg !3418, !tbaa !650
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3418
  %86 = load i8*, i8** %85, align 8, !dbg !3418, !tbaa !650
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !3418
  br label %146, !dbg !3419

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.98, i64 0, i64 0), i32 5) #12, !dbg !3420
  %90 = load i8*, i8** %4, align 8, !dbg !3420, !tbaa !650
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3420
  %92 = load i8*, i8** %91, align 8, !dbg !3420, !tbaa !650
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3420
  %94 = load i8*, i8** %93, align 8, !dbg !3420, !tbaa !650
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3420
  %96 = load i8*, i8** %95, align 8, !dbg !3420, !tbaa !650
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3420
  %98 = load i8*, i8** %97, align 8, !dbg !3420, !tbaa !650
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3420
  %100 = load i8*, i8** %99, align 8, !dbg !3420, !tbaa !650
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3420
  %102 = load i8*, i8** %101, align 8, !dbg !3420, !tbaa !650
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3420
  %104 = load i8*, i8** %103, align 8, !dbg !3420, !tbaa !650
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !3420
  br label %146, !dbg !3421

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.99, i64 0, i64 0), i32 5) #12, !dbg !3422
  %108 = load i8*, i8** %4, align 8, !dbg !3422, !tbaa !650
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3422
  %110 = load i8*, i8** %109, align 8, !dbg !3422, !tbaa !650
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3422
  %112 = load i8*, i8** %111, align 8, !dbg !3422, !tbaa !650
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3422
  %114 = load i8*, i8** %113, align 8, !dbg !3422, !tbaa !650
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3422
  %116 = load i8*, i8** %115, align 8, !dbg !3422, !tbaa !650
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3422
  %118 = load i8*, i8** %117, align 8, !dbg !3422, !tbaa !650
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3422
  %120 = load i8*, i8** %119, align 8, !dbg !3422, !tbaa !650
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3422
  %122 = load i8*, i8** %121, align 8, !dbg !3422, !tbaa !650
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3422
  %124 = load i8*, i8** %123, align 8, !dbg !3422, !tbaa !650
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !3422
  br label %146, !dbg !3423

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.100, i64 0, i64 0), i32 5) #12, !dbg !3424
  %128 = load i8*, i8** %4, align 8, !dbg !3424, !tbaa !650
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3424
  %130 = load i8*, i8** %129, align 8, !dbg !3424, !tbaa !650
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3424
  %132 = load i8*, i8** %131, align 8, !dbg !3424, !tbaa !650
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3424
  %134 = load i8*, i8** %133, align 8, !dbg !3424, !tbaa !650
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3424
  %136 = load i8*, i8** %135, align 8, !dbg !3424, !tbaa !650
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3424
  %138 = load i8*, i8** %137, align 8, !dbg !3424, !tbaa !650
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3424
  %140 = load i8*, i8** %139, align 8, !dbg !3424, !tbaa !650
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3424
  %142 = load i8*, i8** %141, align 8, !dbg !3424, !tbaa !650
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3424
  %144 = load i8*, i8** %143, align 8, !dbg !3424, !tbaa !650
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !3424
  br label %146, !dbg !3425

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3426
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3427 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3431, metadata !643), !dbg !3437
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3432, metadata !643), !dbg !3438
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3433, metadata !643), !dbg !3439
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3434, metadata !643), !dbg !3440
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3435, metadata !643), !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3436, metadata !643), !dbg !3442
  br label %6, !dbg !3443

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3436, metadata !643), !dbg !3442
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3445
  %9 = load i8*, i8** %8, align 8, !dbg !3445, !tbaa !650
  %10 = icmp eq i8* %9, null, !dbg !3447
  %11 = add i64 %7, 1, !dbg !3448
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3436, metadata !643), !dbg !3442
  br i1 %10, label %12, label %6, !dbg !3447, !llvm.loop !3449

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3451
  ret void, !dbg !3452
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3453 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3464, metadata !643), !dbg !3472
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3465, metadata !643), !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3466, metadata !643), !dbg !3474
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3467, metadata !643), !dbg !3475
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3468, metadata !643), !dbg !3476
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3477
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3477
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3470, metadata !643), !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3469, metadata !643), !dbg !3479
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3469, metadata !643), !dbg !3479
  %11 = load i32, i32* %8, align 8, !dbg !3480
  %12 = icmp ult i32 %11, 41, !dbg !3480
  br i1 %12, label %13, label %18, !dbg !3480

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3480
  %15 = sext i32 %11 to i64, !dbg !3480
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3480
  %17 = add i32 %11, 8, !dbg !3480
  store i32 %17, i32* %8, align 8, !dbg !3480
  br label %21, !dbg !3480

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3480
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3480
  store i8* %20, i8** %10, align 8, !dbg !3480
  br label %21, !dbg !3480

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3480
  %25 = load i8*, i8** %24, align 8, !dbg !3480
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3483
  store i8* %25, i8** %26, align 16, !dbg !3484, !tbaa !650
  %27 = icmp eq i8* %25, null, !dbg !3485
  br i1 %27, label %30, label %28, !dbg !3486

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3469, metadata !643), !dbg !3479
  %29 = icmp ult i32 %22, 41, !dbg !3480
  br i1 %29, label %35, label %32, !dbg !3480

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3487
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3488
  ret void, !dbg !3488

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3480
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3480
  store i8* %34, i8** %10, align 8, !dbg !3480
  br label %40, !dbg !3480

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3480
  %37 = sext i32 %22 to i64, !dbg !3480
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3480
  %39 = add i32 %22, 8, !dbg !3480
  store i32 %39, i32* %8, align 8, !dbg !3480
  br label %40, !dbg !3480

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3480
  %44 = load i8*, i8** %43, align 8, !dbg !3480
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3483
  store i8* %44, i8** %45, align 8, !dbg !3484, !tbaa !650
  %46 = icmp eq i8* %44, null, !dbg !3485
  br i1 %46, label %30, label %47, !dbg !3486

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3469, metadata !643), !dbg !3479
  %48 = icmp ult i32 %41, 41, !dbg !3480
  br i1 %48, label %52, label %49, !dbg !3480

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3480
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3480
  store i8* %51, i8** %10, align 8, !dbg !3480
  br label %57, !dbg !3480

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3480
  %54 = sext i32 %41 to i64, !dbg !3480
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3480
  %56 = add i32 %41, 8, !dbg !3480
  store i32 %56, i32* %8, align 8, !dbg !3480
  br label %57, !dbg !3480

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3480
  %61 = load i8*, i8** %60, align 8, !dbg !3480
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3483
  store i8* %61, i8** %62, align 16, !dbg !3484, !tbaa !650
  %63 = icmp eq i8* %61, null, !dbg !3485
  br i1 %63, label %30, label %64, !dbg !3486

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3469, metadata !643), !dbg !3479
  %65 = icmp ult i32 %58, 41, !dbg !3480
  br i1 %65, label %69, label %66, !dbg !3480

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3480
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3480
  store i8* %68, i8** %10, align 8, !dbg !3480
  br label %74, !dbg !3480

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3480
  %71 = sext i32 %58 to i64, !dbg !3480
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3480
  %73 = add i32 %58, 8, !dbg !3480
  store i32 %73, i32* %8, align 8, !dbg !3480
  br label %74, !dbg !3480

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3480
  %78 = load i8*, i8** %77, align 8, !dbg !3480
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3483
  store i8* %78, i8** %79, align 8, !dbg !3484, !tbaa !650
  %80 = icmp eq i8* %78, null, !dbg !3485
  br i1 %80, label %30, label %81, !dbg !3486

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3469, metadata !643), !dbg !3479
  %82 = icmp ult i32 %75, 41, !dbg !3480
  br i1 %82, label %86, label %83, !dbg !3480

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3480
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3480
  store i8* %85, i8** %10, align 8, !dbg !3480
  br label %91, !dbg !3480

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3480
  %88 = sext i32 %75 to i64, !dbg !3480
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3480
  %90 = add i32 %75, 8, !dbg !3480
  store i32 %90, i32* %8, align 8, !dbg !3480
  br label %91, !dbg !3480

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3480
  %95 = load i8*, i8** %94, align 8, !dbg !3480
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3483
  store i8* %95, i8** %96, align 16, !dbg !3484, !tbaa !650
  %97 = icmp eq i8* %95, null, !dbg !3485
  br i1 %97, label %30, label %98, !dbg !3486

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3469, metadata !643), !dbg !3479
  %99 = icmp ult i32 %92, 41, !dbg !3480
  br i1 %99, label %103, label %100, !dbg !3480

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3480
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3480
  store i8* %102, i8** %10, align 8, !dbg !3480
  br label %108, !dbg !3480

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3480
  %105 = sext i32 %92 to i64, !dbg !3480
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3480
  %107 = add i32 %92, 8, !dbg !3480
  store i32 %107, i32* %8, align 8, !dbg !3480
  br label %108, !dbg !3480

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3480
  %111 = load i8*, i8** %110, align 8, !dbg !3480
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3483
  store i8* %111, i8** %112, align 8, !dbg !3484, !tbaa !650
  %113 = icmp eq i8* %111, null, !dbg !3485
  br i1 %113, label %30, label %114, !dbg !3486

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3469, metadata !643), !dbg !3479
  %115 = load i8*, i8** %10, align 8, !dbg !3480
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3480
  store i8* %116, i8** %10, align 8, !dbg !3480
  %117 = bitcast i8* %115 to i8**, !dbg !3480
  %118 = load i8*, i8** %117, align 8, !dbg !3480
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3483
  store i8* %118, i8** %119, align 16, !dbg !3484, !tbaa !650
  %120 = icmp eq i8* %118, null, !dbg !3485
  br i1 %120, label %30, label %121, !dbg !3486

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3469, metadata !643), !dbg !3479
  %122 = load i8*, i8** %10, align 8, !dbg !3480
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3480
  store i8* %123, i8** %10, align 8, !dbg !3480
  %124 = bitcast i8* %122 to i8**, !dbg !3480
  %125 = load i8*, i8** %124, align 8, !dbg !3480
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3483
  store i8* %125, i8** %126, align 8, !dbg !3484, !tbaa !650
  %127 = icmp eq i8* %125, null, !dbg !3485
  br i1 %127, label %30, label %128, !dbg !3486

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3469, metadata !643), !dbg !3479
  %129 = load i8*, i8** %10, align 8, !dbg !3480
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3480
  store i8* %130, i8** %10, align 8, !dbg !3480
  %131 = bitcast i8* %129 to i8**, !dbg !3480
  %132 = load i8*, i8** %131, align 8, !dbg !3480
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3483
  store i8* %132, i8** %133, align 16, !dbg !3484, !tbaa !650
  %134 = icmp eq i8* %132, null, !dbg !3485
  br i1 %134, label %30, label %135, !dbg !3486

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3469, metadata !643), !dbg !3479
  %136 = load i8*, i8** %10, align 8, !dbg !3480
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3480
  store i8* %137, i8** %10, align 8, !dbg !3480
  %138 = bitcast i8* %136 to i8**, !dbg !3480
  %139 = load i8*, i8** %138, align 8, !dbg !3480
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3483
  store i8* %139, i8** %140, align 8, !dbg !3484, !tbaa !650
  %141 = icmp eq i8* %139, null, !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3469, metadata !643), !dbg !3479
  %142 = select i1 %141, i64 9, i64 10, !dbg !3486
  br label %30, !dbg !3486
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3489 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3493, metadata !643), !dbg !3504
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3494, metadata !643), !dbg !3505
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3495, metadata !643), !dbg !3506
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3496, metadata !643), !dbg !3507
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3508
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3508
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3497, metadata !643), !dbg !3509
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3510
  call void @llvm.va_start(i8* nonnull %6), !dbg !3510
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3511
  call void @llvm.va_end(i8* nonnull %6), !dbg !3512
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3513
  ret void, !dbg !3513
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3514 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.103, i64 0, i64 0), i32 5) #12, !dbg !3515
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.104, i64 0, i64 0)) #12, !dbg !3515
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.105, i64 0, i64 0), i32 5) #12, !dbg !3516
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.106, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.107, i64 0, i64 0)) #12, !dbg !3516
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.108, i64 0, i64 0), i32 5) #12, !dbg !3517
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3517, !tbaa !650
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !3517
  ret void, !dbg !3518
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3519 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3523, metadata !643), !dbg !3525
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3524, metadata !643), !dbg !3526
  %3 = udiv i64 9223372036854775807, %1, !dbg !3527
  %4 = icmp ult i64 %3, %0, !dbg !3527
  br i1 %4, label %5, label %6, !dbg !3529

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3530
  unreachable, !dbg !3530

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3531
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3532, metadata !643) #12, !dbg !3539
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3541
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3538, metadata !643) #12, !dbg !3542
  %9 = icmp eq i8* %8, null, !dbg !3543
  %10 = icmp ne i64 %7, 0, !dbg !3545
  %11 = and i1 %10, %9, !dbg !3546
  br i1 %11, label %12, label %13, !dbg !3546

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3547
  unreachable, !dbg !3547

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3548
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3533 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3532, metadata !643), !dbg !3549
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3550
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3538, metadata !643), !dbg !3551
  %3 = icmp eq i8* %2, null, !dbg !3552
  %4 = icmp ne i64 %0, 0, !dbg !3553
  %5 = and i1 %4, %3, !dbg !3554
  br i1 %5, label %6, label %7, !dbg !3554

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3555
  unreachable, !dbg !3555

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3556
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3557 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3561, metadata !643), !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3562, metadata !643), !dbg !3565
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3563, metadata !643), !dbg !3566
  %4 = udiv i64 9223372036854775807, %2, !dbg !3567
  %5 = icmp ult i64 %4, %1, !dbg !3567
  br i1 %5, label %6, label %7, !dbg !3569

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3570
  unreachable, !dbg !3570

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3571
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3572, metadata !643) #12, !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3577, metadata !643) #12, !dbg !3580
  %9 = icmp eq i64 %8, 0, !dbg !3581
  %10 = icmp ne i8* %0, null, !dbg !3583
  %11 = and i1 %10, %9, !dbg !3584
  br i1 %11, label %12, label %13, !dbg !3584

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3585
  br label %19, !dbg !3587

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3588
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3572, metadata !643) #12, !dbg !3578
  %15 = icmp eq i8* %14, null, !dbg !3589
  %16 = icmp ne i64 %8, 0, !dbg !3591
  %17 = and i1 %16, %15, !dbg !3592
  br i1 %17, label %18, label %19, !dbg !3592

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3593
  unreachable, !dbg !3593

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3594
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3573 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3572, metadata !643), !dbg !3595
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3577, metadata !643), !dbg !3596
  %3 = icmp eq i64 %1, 0, !dbg !3597
  %4 = icmp ne i8* %0, null, !dbg !3598
  %5 = and i1 %4, %3, !dbg !3599
  br i1 %5, label %6, label %7, !dbg !3599

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3600
  br label %13, !dbg !3601

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3602
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3572, metadata !643), !dbg !3595
  %9 = icmp eq i8* %8, null, !dbg !3603
  %10 = icmp ne i64 %1, 0, !dbg !3604
  %11 = and i1 %10, %9, !dbg !3605
  br i1 %11, label %12, label %13, !dbg !3605

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3606
  unreachable, !dbg !3606

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3607
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !601 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !606, metadata !643), !dbg !3608
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !607, metadata !643), !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !608, metadata !643), !dbg !3610
  %4 = load i64, i64* %1, align 8, !dbg !3611, !tbaa !1541
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !609, metadata !643), !dbg !3612
  %5 = icmp eq i8* %0, null, !dbg !3613
  br i1 %5, label %6, label %13, !dbg !3615

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3616
  br i1 %7, label %8, label %17, !dbg !3619

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3620
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !609, metadata !643), !dbg !3612
  %10 = icmp ugt i64 %2, 128, !dbg !3622
  %11 = zext i1 %10 to i64, !dbg !3622
  %12 = add nuw nsw i64 %9, %11, !dbg !3623
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !609, metadata !643), !dbg !3612
  br label %17, !dbg !3624

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3625
  %15 = icmp ugt i64 %14, %4, !dbg !3628
  br i1 %15, label %20, label %16, !dbg !3629

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3630
  unreachable, !dbg !3630

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !609, metadata !643), !dbg !3612
  store i64 %18, i64* %1, align 8, !dbg !3631, !tbaa !1541
  %19 = mul i64 %18, %2, !dbg !3632
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3572, metadata !643) #12, !dbg !3633
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3577, metadata !643) #12, !dbg !3635
  br label %27, !dbg !3636

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3637
  %22 = add i64 %4, 1, !dbg !3638
  %23 = add i64 %22, %21, !dbg !3639
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !609, metadata !643), !dbg !3612
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !609, metadata !643), !dbg !3612
  store i64 %23, i64* %1, align 8, !dbg !3631, !tbaa !1541
  %24 = mul i64 %23, %2, !dbg !3632
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3572, metadata !643) #12, !dbg !3633
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3577, metadata !643) #12, !dbg !3635
  %25 = icmp eq i64 %24, 0, !dbg !3640
  br i1 %25, label %26, label %27, !dbg !3636

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #12, !dbg !3641
  br label %34, !dbg !3642

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !3643
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3572, metadata !643) #12, !dbg !3633
  %30 = icmp eq i8* %29, null, !dbg !3644
  %31 = icmp ne i64 %28, 0, !dbg !3645
  %32 = and i1 %31, %30, !dbg !3646
  br i1 %32, label %33, label %34, !dbg !3646

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3647
  unreachable, !dbg !3647

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3648
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !3649 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3651, metadata !643), !dbg !3652
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3532, metadata !643) #12, !dbg !3653
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3655
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3538, metadata !643) #12, !dbg !3656
  %3 = icmp eq i8* %2, null, !dbg !3657
  %4 = icmp ne i64 %0, 0, !dbg !3658
  %5 = and i1 %4, %3, !dbg !3659
  br i1 %5, label %6, label %7, !dbg !3659

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3660
  unreachable, !dbg !3660

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3661
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3662 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3666, metadata !643), !dbg !3668
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3667, metadata !643), !dbg !3669
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !606, metadata !643) #12, !dbg !3670
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !607, metadata !643) #12, !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !608, metadata !643) #12, !dbg !3673
  %3 = load i64, i64* %1, align 8, !dbg !3674, !tbaa !1541
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !609, metadata !643) #12, !dbg !3675
  %4 = icmp eq i8* %0, null, !dbg !3676
  br i1 %4, label %5, label %8, !dbg !3677

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3678
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !609, metadata !643) #12, !dbg !3675
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !609, metadata !643) #12, !dbg !3675
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !609, metadata !643) #12, !dbg !3675
  store i64 %7, i64* %1, align 8, !dbg !3680, !tbaa !1541
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3572, metadata !643) #12, !dbg !3681
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3577, metadata !643) #12, !dbg !3683
  br label %17, !dbg !3684

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3685
  br i1 %9, label %11, label %10, !dbg !3686

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3687
  unreachable, !dbg !3687

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3688
  %13 = add i64 %3, 1, !dbg !3689
  %14 = add i64 %13, %12, !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !609, metadata !643) #12, !dbg !3675
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !609, metadata !643) #12, !dbg !3675
  store i64 %14, i64* %1, align 8, !dbg !3680, !tbaa !1541
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3572, metadata !643) #12, !dbg !3681
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3577, metadata !643) #12, !dbg !3683
  %15 = icmp eq i64 %14, 0, !dbg !3691
  br i1 %15, label %16, label %17, !dbg !3684

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #12, !dbg !3692
  br label %24, !dbg !3693

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !3694
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3572, metadata !643) #12, !dbg !3681
  %20 = icmp eq i8* %19, null, !dbg !3695
  %21 = icmp ne i64 %18, 0, !dbg !3696
  %22 = and i1 %21, %20, !dbg !3697
  br i1 %22, label %23, label %24, !dbg !3697

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3698
  unreachable, !dbg !3698

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3699
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3700 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3702, metadata !643), !dbg !3703
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3532, metadata !643) #12, !dbg !3704
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3706
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3538, metadata !643) #12, !dbg !3707
  %3 = icmp eq i8* %2, null, !dbg !3708
  %4 = icmp ne i64 %0, 0, !dbg !3709
  %5 = and i1 %4, %3, !dbg !3710
  br i1 %5, label %6, label %7, !dbg !3710

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3711
  unreachable, !dbg !3711

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3712
  ret i8* %2, !dbg !3713
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3714 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3716, metadata !643), !dbg !3719
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3717, metadata !643), !dbg !3720
  %3 = udiv i64 9223372036854775807, %1, !dbg !3721
  %4 = icmp ult i64 %3, %0, !dbg !3721
  br i1 %4, label %8, label %5, !dbg !3723

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3724
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3718, metadata !643), !dbg !3725
  %7 = icmp eq i8* %6, null, !dbg !3726
  br i1 %7, label %8, label %9, !dbg !3727

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3728
  unreachable, !dbg !3728

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3729
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3730 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3734, metadata !643), !dbg !3736
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3735, metadata !643), !dbg !3737
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3532, metadata !643) #12, !dbg !3738
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3740
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3538, metadata !643) #12, !dbg !3741
  %4 = icmp eq i8* %3, null, !dbg !3742
  %5 = icmp ne i64 %1, 0, !dbg !3743
  %6 = and i1 %5, %4, !dbg !3744
  br i1 %6, label %7, label %8, !dbg !3744

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3745
  unreachable, !dbg !3745

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3746
  ret i8* %3, !dbg !3747
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3748 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3750, metadata !643), !dbg !3751
  %2 = tail call i64 @strlen(i8* %0) #8, !dbg !3752
  %3 = add i64 %2, 1, !dbg !3753
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3734, metadata !643) #12, !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3735, metadata !643) #12, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3532, metadata !643) #12, !dbg !3757
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3759
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3538, metadata !643) #12, !dbg !3760
  %5 = icmp eq i8* %4, null, !dbg !3761
  %6 = icmp ne i64 %3, 0, !dbg !3762
  %7 = and i1 %6, %5, !dbg !3763
  br i1 %7, label %8, label %9, !dbg !3763

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3764
  unreachable, !dbg !3764

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !3765
  ret i8* %4, !dbg !3766
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3767 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3769, !tbaa !728
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.121, i64 0, i64 0), i32 5) #12, !dbg !3770
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i64 0, i64 0), i8* %2) #12, !dbg !3771
  tail call void @abort() #15, !dbg !3772
  unreachable, !dbg !3772
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @xstrtold(i8*, i8**, x86_fp80* nocapture, x86_fp80 (i8*, i8**)* nocapture) local_unnamed_addr #6 !dbg !3773 {
  %5 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3781, metadata !643), !dbg !3788
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3782, metadata !643), !dbg !3789
  tail call void @llvm.dbg.value(metadata x86_fp80* %2, i64 0, metadata !3783, metadata !643), !dbg !3790
  tail call void @llvm.dbg.value(metadata x86_fp80 (i8*, i8**)* %3, i64 0, metadata !3784, metadata !643), !dbg !3791
  %6 = bitcast i8** %5 to i8*, !dbg !3792
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12, !dbg !3792
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3787, metadata !643), !dbg !3793
  %7 = tail call i32* @__errno_location() #17, !dbg !3794
  store i32 0, i32* %7, align 4, !dbg !3795, !tbaa !728
  tail call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !3786, metadata !643), !dbg !3796
  %8 = call x86_fp80 %3(i8* %0, i8** nonnull %5) #12, !dbg !3797
  call void @llvm.dbg.value(metadata x86_fp80 %8, i64 0, metadata !3785, metadata !643), !dbg !3798
  %9 = load i8*, i8** %5, align 8, !dbg !3799, !tbaa !650
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3786, metadata !643), !dbg !3796
  %10 = icmp eq i8* %9, %0, !dbg !3801
  %11 = ptrtoint i8* %9 to i64, !dbg !3802
  br i1 %10, label %22, label %12, !dbg !3802

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i8** %1, null, !dbg !3803
  br i1 %13, label %14, label %17, !dbg !3804

; <label>:14:                                     ; preds = %12
  %15 = load i8, i8* %9, align 1, !dbg !3805, !tbaa !735
  %16 = icmp eq i8 %15, 0, !dbg !3806
  br i1 %16, label %17, label %27, !dbg !3807

; <label>:17:                                     ; preds = %14, %12
  %18 = fcmp une x86_fp80 %8, 0xK00000000000000000000, !dbg !3808
  br i1 %18, label %19, label %22, !dbg !3811

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %7, align 4, !dbg !3812, !tbaa !728
  %21 = icmp ne i32 %20, 34, !dbg !3813
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3787, metadata !643), !dbg !3793
  br label %22, !dbg !3814

; <label>:22:                                     ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  %24 = icmp eq i8** %1, null, !dbg !3815
  br i1 %24, label %27, label %25, !dbg !3817

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !3786, metadata !3818), !dbg !3796
  %26 = bitcast i8** %1 to i64*, !dbg !3819
  store i64 %11, i64* %26, align 8, !dbg !3819, !tbaa !650
  br label %27, !dbg !3820

; <label>:27:                                     ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store x86_fp80 %8, x86_fp80* %2, align 16, !dbg !3821, !tbaa !1540
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12, !dbg !3822
  ret i1 %28, !dbg !3823
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3824 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3827, metadata !643), !dbg !3833
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3828, metadata !643), !dbg !3834
  %3 = icmp eq i64 %0, 0, !dbg !3835
  %4 = icmp eq i64 %1, 0, !dbg !3836
  %5 = or i1 %3, %4, !dbg !3837
  br i1 %5, label %12, label %6, !dbg !3837

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3838
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3830, metadata !643), !dbg !3839
  %8 = udiv i64 %7, %1, !dbg !3840
  %9 = icmp eq i64 %8, %0, !dbg !3842
  br i1 %9, label %12, label %10, !dbg !3843

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3844
  store i32 12, i32* %11, align 4, !dbg !3846, !tbaa !728
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3827, metadata !643), !dbg !3833
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3828, metadata !643), !dbg !3834
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3847
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3829, metadata !643), !dbg !3848
  br label %16, !dbg !3849

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3850
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3851 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3868, metadata !643), !dbg !3877
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3869, metadata !643), !dbg !3878
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3870, metadata !643), !dbg !3879
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3871, metadata !643), !dbg !3880
  %6 = bitcast i32* %5 to i8*, !dbg !3881
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3881
  %7 = icmp eq i32* %0, null, !dbg !3882
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3868, metadata !643), !dbg !3877
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3884
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3868, metadata !643), !dbg !3877
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3872, metadata !643), !dbg !3886
  %10 = icmp ugt i64 %9, -3, !dbg !3887
  %11 = icmp ne i64 %2, 0, !dbg !3888
  %12 = and i1 %11, %10, !dbg !3889
  br i1 %12, label %13, label %18, !dbg !3889

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3890
  br i1 %14, label %18, label %15, !dbg !3891

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3892, !tbaa !735
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3874, metadata !643), !dbg !3893
  %17 = zext i8 %16 to i32, !dbg !3894
  store i32 %17, i32* %8, align 4, !dbg !3895, !tbaa !728
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3896
  ret i64 %19, !dbg !3896
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3897 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3942, metadata !643), !dbg !3947
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3948
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3949, metadata !643), !dbg !3953
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3955
  %4 = load i32, i32* %3, align 8, !dbg !3955, !tbaa !3956
  %5 = and i32 %4, 32, !dbg !3955
  %6 = icmp eq i32 %5, 0, !dbg !3958
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3959
  %8 = icmp ne i32 %7, 0, !dbg !3960
  br i1 %6, label %9, label %19, !dbg !3961

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3963
  %11 = xor i1 %8, true, !dbg !3964
  %12 = or i1 %10, %11, !dbg !3964
  %13 = sext i1 %8 to i32, !dbg !3964
  br i1 %12, label %22, label %14, !dbg !3964

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3965
  %16 = load i32, i32* %15, align 4, !dbg !3965, !tbaa !728
  %17 = icmp ne i32 %16, 9, !dbg !3966
  %18 = sext i1 %17 to i32, !dbg !3967
  br label %22, !dbg !3967

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3968

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3970
  store i32 0, i32* %21, align 4, !dbg !3972, !tbaa !728
  br label %22, !dbg !3970

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3973
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3974 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3979, metadata !643), !dbg !3982
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3980, metadata !643), !dbg !3983
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3984
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3981, metadata !643), !dbg !3985
  %3 = icmp eq i8* %2, null, !dbg !3986
  br i1 %3, label %11, label %4, !dbg !3988

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i64 0, i64 0)) #8, !dbg !3989
  %6 = icmp eq i32 %5, 0, !dbg !3994
  br i1 %6, label %10, label %7, !dbg !3995

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.134, i64 0, i64 0)) #8, !dbg !3996
  %9 = icmp eq i32 %8, 0, !dbg !3997
  br i1 %9, label %10, label %11, !dbg !3998

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3980, metadata !643), !dbg !3983
  br label %11, !dbg !3999

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4000
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4001 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4007, metadata !643), !dbg !4081
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4074, metadata !643), !dbg !4084
  %3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !4085
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4005, metadata !643), !dbg !4086
  %4 = icmp eq i8* %3, null, !dbg !4087
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), i8* %3, !dbg !4089
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4005, metadata !643), !dbg !4086
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4090, !tbaa !650
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4021, metadata !643) #12, !dbg !4091
  %7 = icmp eq i8* %6, null, !dbg !4092
  br i1 %7, label %8, label %123, !dbg !4093

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.138, i64 0, i64 0)) #12, !dbg !4094
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4022, metadata !643) #12, !dbg !4095
  %10 = icmp eq i8* %9, null, !dbg !4096
  br i1 %10, label %14, label %11, !dbg !4098

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4099, !tbaa !735
  %13 = icmp eq i8 %12, 0, !dbg !4100
  br i1 %13, label %14, label %15, !dbg !4101

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4102

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.139, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4022, metadata !643) #12, !dbg !4095
  %17 = tail call i64 @strlen(i8* nonnull %16) #8, !dbg !4103
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4025, metadata !643) #12, !dbg !4104
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4027, metadata !643) #12, !dbg !4105
  %18 = icmp eq i64 %17, 0, !dbg !4106
  br i1 %18, label %24, label %19, !dbg !4107

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4108
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4108
  %22 = load i8, i8* %21, align 1, !dbg !4108, !tbaa !735
  %23 = icmp ne i8 %22, 47, !dbg !4108
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4109
  %27 = add i64 %17, 14, !dbg !4110
  %28 = add i64 %27, %26, !dbg !4111
  %29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !4112
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4024, metadata !643) #12, !dbg !4113
  %30 = icmp eq i8* %29, null, !dbg !4114
  br i1 %30, label %121, label %31, !dbg !4114

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !4115
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4118

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4119, !tbaa !735
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4121
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.140, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4122
  br label %37, !dbg !4123

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4121
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.140, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !4122
  br label %37, !dbg !4123

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !4124
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4029, metadata !643) #12, !dbg !4125
  %39 = icmp slt i32 %38, 0, !dbg !4126
  br i1 %39, label %119, label %40, !dbg !4127

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.141, i64 0, i64 0)) #12, !dbg !4128
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4030, metadata !643) #12, !dbg !4129
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4130
  br i1 %42, label %43, label %45, !dbg !4131

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #12, !dbg !4132
  br label %119, !dbg !4134

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4071, metadata !643) #12, !dbg !4135
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4072, metadata !643) #12, !dbg !4136
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4137

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4138

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4071, metadata !643) #12, !dbg !4135
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4072, metadata !643) #12, !dbg !4136
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4138
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4139
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4140, metadata !643) #12, !dbg !4145
  %54 = load i8*, i8** %48, align 8, !dbg !4147, !tbaa !4148
  %55 = load i8*, i8** %49, align 8, !dbg !4147, !tbaa !4149
  %56 = icmp ult i8* %54, %55, !dbg !4147
  br i1 %56, label %59, label %57, !dbg !4147, !prof !4150

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4147
  br label %63, !dbg !4147

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4147
  store i8* %60, i8** %48, align 8, !dbg !4147, !tbaa !4148
  %61 = load i8, i8* %54, align 1, !dbg !4147, !tbaa !735
  %62 = zext i8 %61 to i32, !dbg !4147
  br label %63, !dbg !4147

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4147
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4073, metadata !643) #12, !dbg !4151
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4152, !llvm.loop !4153

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4158

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4140, metadata !643) #12, !dbg !4160
  %67 = load i8*, i8** %48, align 8, !dbg !4158, !tbaa !4148
  %68 = load i8*, i8** %49, align 8, !dbg !4158, !tbaa !4149
  %69 = icmp ult i8* %67, %68, !dbg !4158
  br i1 %69, label %72, label %70, !dbg !4158, !prof !4150

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !4158
  br label %76, !dbg !4158

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4158
  store i8* %73, i8** %48, align 8, !dbg !4158, !tbaa !4148
  %74 = load i8, i8* %67, align 1, !dbg !4158, !tbaa !735
  %75 = zext i8 %74 to i32, !dbg !4158
  br label %76, !dbg !4158

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4158
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4073, metadata !643) #12, !dbg !4151
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4161, !llvm.loop !4162

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #12, !dbg !4165
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.142, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !4166
  %81 = icmp slt i32 %80, 2, !dbg !4168
  br i1 %81, label %112, label %82, !dbg !4169

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #8, !dbg !4170
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4078, metadata !643) #12, !dbg !4171
  %84 = call i64 @strlen(i8* nonnull %47) #8, !dbg !4172
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4079, metadata !643) #12, !dbg !4173
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4080, metadata !643) #12, !dbg !4174
  %85 = icmp eq i64 %51, 0, !dbg !4175
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4177

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4072, metadata !643) #12, !dbg !4136
  %90 = add i64 %87, 2, !dbg !4178
  %91 = call noalias i8* @malloc(i64 %90) #12, !dbg !4180
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4071, metadata !643) #12, !dbg !4135
  br label %96, !dbg !4181

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4182
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4072, metadata !643) #12, !dbg !4136
  %94 = add i64 %93, 1, !dbg !4184
  %95 = call i8* @realloc(i8* %52, i64 %94) #12, !dbg !4185
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4071, metadata !643) #12, !dbg !4135
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4071, metadata !643) #12, !dbg !4135
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4072, metadata !643) #12, !dbg !4136
  %99 = icmp eq i8* %98, null, !dbg !4186
  br i1 %99, label %100, label %102, !dbg !4188

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4072, metadata !643) #12, !dbg !4136
  call void @free(i8* %52) #12, !dbg !4189
  br label %112, !dbg !4191

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4192
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4192
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4193
  %104 = xor i64 %84, -1, !dbg !4194
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4194
  %106 = xor i64 %83, -1, !dbg !4195
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4195
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4196, metadata !643) #12, !dbg !4200
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4199, metadata !643) #12, !dbg !4200
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #12, !dbg !4202
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #12, !dbg !4203
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4196, metadata !643) #12, !dbg !4204
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4199, metadata !643) #12, !dbg !4204
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #12, !dbg !4206
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #12, !dbg !4207
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4071, metadata !643) #12, !dbg !4135
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4072, metadata !643) #12, !dbg !4136
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4192
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4192
  br label %50, !dbg !4208, !llvm.loop !4162

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #12, !dbg !4192
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #12, !dbg !4192
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !4209
  %116 = icmp eq i64 %113, 0, !dbg !4210
  br i1 %116, label %119, label %117, !dbg !4212

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4213
  store i8 0, i8* %118, align 1, !dbg !4215, !tbaa !735
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4021, metadata !643) #12, !dbg !4091
  call void @free(i8* %29) #12, !dbg !4216
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4021, metadata !643) #12, !dbg !4091
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4217, !tbaa !650
  br label %123, !dbg !4218

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4021, metadata !643) #12, !dbg !4091
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4006, metadata !643), !dbg !4219
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4006, metadata !643), !dbg !4219
  %125 = load i8, i8* %124, align 1, !dbg !4220, !tbaa !735
  %126 = icmp eq i8 %125, 0, !dbg !4222
  br i1 %126, label %152, label %127, !dbg !4223

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4224

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4006, metadata !643), !dbg !4219
  %131 = call i32 @strcmp(i8* %5, i8* %130) #8, !dbg !4224
  %132 = icmp eq i32 %131, 0, !dbg !4226
  br i1 %132, label %139, label %133, !dbg !4227

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4228
  br i1 %134, label %135, label %143, !dbg !4229

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4230
  %137 = load i8, i8* %136, align 1, !dbg !4230, !tbaa !735
  %138 = icmp eq i8 %137, 0, !dbg !4231
  br i1 %138, label %139, label %143, !dbg !4232

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #8, !dbg !4233
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4235
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4236
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4005, metadata !643), !dbg !4086
  br label %152, !dbg !4237

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #8, !dbg !4238
  %145 = add i64 %144, 1, !dbg !4239
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4240
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4006, metadata !643), !dbg !4219
  %147 = call i64 @strlen(i8* %146) #8, !dbg !4241
  %148 = add i64 %147, 1, !dbg !4242
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4243
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4006, metadata !643), !dbg !4219
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4006, metadata !643), !dbg !4219
  %150 = load i8, i8* %149, align 1, !dbg !4220, !tbaa !735
  %151 = icmp eq i8 %150, 0, !dbg !4222
  br i1 %151, label %152, label %128, !dbg !4223, !llvm.loop !4244

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4005, metadata !643), !dbg !4086
  %154 = load i8, i8* %153, align 1, !dbg !4246, !tbaa !735
  %155 = icmp eq i8 %154, 0, !dbg !4248
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i8* %153, !dbg !4249
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4005, metadata !643), !dbg !4086
  ret i8* %156, !dbg !4250
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4251 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4296, metadata !643), !dbg !4300
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4297, metadata !643), !dbg !4301
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4299, metadata !643), !dbg !4302
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4303
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4298, metadata !643), !dbg !4304
  %3 = icmp slt i32 %2, 0, !dbg !4305
  br i1 %3, label %4, label %6, !dbg !4307

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4308
  br label %24, !dbg !4309

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4310
  %8 = icmp eq i32 %7, 0, !dbg !4310
  br i1 %8, label %13, label %9, !dbg !4312

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4313
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4314
  %12 = icmp eq i64 %11, -1, !dbg !4315
  br i1 %12, label %16, label %13, !dbg !4316

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4317
  %15 = icmp eq i32 %14, 0, !dbg !4317
  br i1 %15, label %16, label %18, !dbg !4318

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4297, metadata !643), !dbg !4301
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4319
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4299, metadata !643), !dbg !4302
  br label %24, !dbg !4320

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4321
  %20 = load i32, i32* %19, align 4, !dbg !4321, !tbaa !728
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4297, metadata !643), !dbg !4301
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4297, metadata !643), !dbg !4301
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4319
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4299, metadata !643), !dbg !4302
  %22 = icmp eq i32 %20, 0, !dbg !4322
  br i1 %22, label %24, label %23, !dbg !4320

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4324, !tbaa !728
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4299, metadata !643), !dbg !4302
  br label %24, !dbg !4326

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4327
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4328 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4373, metadata !643), !dbg !4374
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4375
  br i1 %2, label %6, label %3, !dbg !4377

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4378
  %5 = icmp eq i32 %4, 0, !dbg !4378
  br i1 %5, label %6, label %8, !dbg !4379

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4380
  br label %17, !dbg !4381

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4382, metadata !643) #12, !dbg !4387
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4389
  %10 = load i32, i32* %9, align 8, !dbg !4389, !tbaa !3956
  %11 = and i32 %10, 256, !dbg !4391
  %12 = icmp eq i32 %11, 0, !dbg !4391
  br i1 %12, label %15, label %13, !dbg !4392

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4393
  br label %15, !dbg !4393

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4394
  br label %17, !dbg !4395

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4396
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4397 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4443, metadata !643), !dbg !4449
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4444, metadata !643), !dbg !4450
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4445, metadata !643), !dbg !4451
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4452
  %5 = load i8*, i8** %4, align 8, !dbg !4452, !tbaa !4149
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4453
  %7 = load i8*, i8** %6, align 8, !dbg !4453, !tbaa !4148
  %8 = icmp eq i8* %5, %7, !dbg !4454
  br i1 %8, label %9, label %28, !dbg !4455

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4456
  %11 = load i8*, i8** %10, align 8, !dbg !4456, !tbaa !4457
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4458
  %13 = load i8*, i8** %12, align 8, !dbg !4458, !tbaa !4459
  %14 = icmp eq i8* %11, %13, !dbg !4460
  br i1 %14, label %15, label %28, !dbg !4461

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4462
  %17 = load i8*, i8** %16, align 8, !dbg !4462, !tbaa !4463
  %18 = icmp eq i8* %17, null, !dbg !4464
  br i1 %18, label %19, label %28, !dbg !4465

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4466
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4467
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4446, metadata !643), !dbg !4468
  %22 = icmp eq i64 %21, -1, !dbg !4469
  br i1 %22, label %30, label %23, !dbg !4471

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4472
  %25 = load i32, i32* %24, align 8, !dbg !4473, !tbaa !3956
  %26 = and i32 %25, -17, !dbg !4473
  store i32 %26, i32* %24, align 8, !dbg !4473, !tbaa !3956
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4474
  store i64 %21, i64* %27, align 8, !dbg !4475, !tbaa !4476
  br label %30, !dbg !4477

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4478
  br label %30, !dbg !4479

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4480
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
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !107, !113, !143, !151, !158, !165, !588, !232, !596, !613, !615, !617, !619, !622, !624, !241, !626, !628, !630}
!llvm.ident = !{!632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632, !632}
!llvm.module.flags = !{!633, !634, !635, !636, !637}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "terminator", scope: !2, file: !3, line: 53, type: !102, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !27)
!3 = !DIFile(filename: "src/seq.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!20 = !{!21, !22, !24, !25, !26}
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !{!28, !31, !35, !55, !0, !69}
!28 = !DIGlobalVariableExpression(var: !29)
!29 = distinct !DIGlobalVariable(name: "equal_width", scope: !2, file: !3, line: 46, type: !30, isLocal: true, isDefinition: true)
!30 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!31 = !DIGlobalVariableExpression(var: !32)
!32 = distinct !DIGlobalVariable(name: "separator", scope: !2, file: !3, line: 49, type: !33, isLocal: true, isDefinition: true)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!35 = !DIGlobalVariableExpression(var: !36)
!36 = distinct !DIGlobalVariable(name: "infomap", scope: !37, file: !38, line: 632, type: !52, isLocal: true, isDefinition: true)
!37 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !38, file: !38, line: 630, type: !39, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !41)
!38 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!39 = !DISubroutineType(types: !40)
!40 = !{null, !33}
!41 = !{!42, !43, !44, !51}
!42 = !DILocalVariable(name: "program", arg: 1, scope: !37, file: !38, line: 630, type: !33)
!43 = !DILocalVariable(name: "node", scope: !37, file: !38, line: 642, type: !33)
!44 = !DILocalVariable(name: "map_prog", scope: !37, file: !38, line: 643, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !37, file: !38, line: 632, size: 128, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !47, file: !38, line: 632, baseType: !33, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !47, file: !38, line: 632, baseType: !33, size: 64, offset: 64)
!51 = !DILocalVariable(name: "lc_messages", scope: !37, file: !38, line: 655, type: !33)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 896, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 7)
!55 = !DIGlobalVariableExpression(var: !56)
!56 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 55, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1536, elements: !67)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !60, line: 50, size: 256, elements: !61)
!60 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!61 = !{!62, !63, !64, !66}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !59, file: !60, line: 52, baseType: !33, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !59, file: !60, line: 55, baseType: !25, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !59, file: !60, line: 56, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !59, file: !60, line: 57, baseType: !25, size: 32, offset: 192)
!67 = !{!68}
!68 = !DISubrange(count: 6)
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "format_buf", scope: !71, file: !3, line: 362, type: !99, isLocal: true, isDefinition: true)
!71 = distinct !DISubprogram(name: "get_default_format", scope: !3, file: !3, line: 360, type: !72, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !84)
!72 = !DISubroutineType(types: !73)
!73 = !{!33, !74, !74, !74}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "operand", file: !3, line: 127, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "operand", file: !3, line: 112, size: 256, elements: !76)
!76 = !{!77, !79, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75, file: !3, line: 115, baseType: !78, size: 128)
!78 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !75, file: !3, line: 121, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 62, baseType: !82)
!81 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!82 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !75, file: !3, line: 125, baseType: !25, size: 32, offset: 192)
!84 = !{!85, !86, !87, !88, !89, !94, !95, !96}
!85 = !DILocalVariable(name: "first", arg: 1, scope: !71, file: !3, line: 360, type: !74)
!86 = !DILocalVariable(name: "step", arg: 2, scope: !71, file: !3, line: 360, type: !74)
!87 = !DILocalVariable(name: "last", arg: 3, scope: !71, file: !3, line: 360, type: !74)
!88 = !DILocalVariable(name: "prec", scope: !71, file: !3, line: 364, type: !25)
!89 = !DILocalVariable(name: "first_width", scope: !90, file: !3, line: 371, type: !80)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 369, column: 9)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 368, column: 11)
!92 = distinct !DILexicalBlock(scope: !93, file: !3, line: 367, column: 5)
!93 = distinct !DILexicalBlock(scope: !71, file: !3, line: 366, column: 7)
!94 = !DILocalVariable(name: "last_width", scope: !90, file: !3, line: 373, type: !80)
!95 = !DILocalVariable(name: "width", scope: !90, file: !3, line: 380, type: !80)
!96 = !DILocalVariable(name: "w", scope: !97, file: !3, line: 383, type: !25)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 382, column: 13)
!98 = distinct !DILexicalBlock(scope: !90, file: !3, line: 381, column: 15)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 224, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 28)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 2)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "Version", scope: !107, file: !108, line: 2, type: !33, isLocal: false, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, globals: !110)
!108 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{}
!110 = !{!105}
!111 = !DIGlobalVariableExpression(var: !112)
!112 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !113, file: !139, line: 51, type: !140, isLocal: true, isDefinition: true)
!113 = distinct !DICompileUnit(language: DW_LANG_C99, file: !114, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, retainedTypes: !115, globals: !138)
!114 = !DIFile(filename: "./lib/c-strtold.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!115 = !{!22, !116}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !117, line: 24, baseType: !118)
!117 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !119, line: 42, baseType: !120)
!119 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !119, line: 28, size: 1856, elements: !122)
!122 = !{!123, !129, !132, !135, !136}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !121, file: !119, line: 31, baseType: !124, size: 832)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 832, elements: !127)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !119, line: 31, flags: DIFlagFwdDecl)
!127 = !{!128}
!128 = !DISubrange(count: 13)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !121, file: !119, line: 34, baseType: !130, size: 64, offset: 832)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !121, file: !119, line: 35, baseType: !133, size: 64, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !121, file: !119, line: 36, baseType: !133, size: 64, offset: 960)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !121, file: !119, line: 39, baseType: !137, size: 832, offset: 1024)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 832, elements: !127)
!138 = !{!111}
!139 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "file_name", scope: !143, file: !148, line: 36, type: !33, isLocal: true, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, globals: !145)
!144 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!145 = !{!141, !146}
!146 = !DIGlobalVariableExpression(var: !147)
!147 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !143, file: !148, line: 46, type: !30, isLocal: true, isDefinition: true)
!148 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!149 = !DIGlobalVariableExpression(var: !150)
!150 = distinct !DIGlobalVariable(name: "exit_failure", scope: !151, file: !154, line: 24, type: !155, isLocal: false, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, globals: !153)
!152 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!153 = !{!149}
!154 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!155 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!156 = !DIGlobalVariableExpression(var: !157)
!157 = distinct !DIGlobalVariable(name: "program_name", scope: !158, file: !162, line: 33, type: !33, isLocal: false, isDefinition: true)
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, retainedTypes: !160, globals: !161)
!159 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!160 = !{!24, !22}
!161 = !{!156}
!162 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!163 = !DIGlobalVariableExpression(var: !164)
!164 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !165, file: !191, line: 77, type: !226, isLocal: false, isDefinition: true)
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !187, globals: !188)
!166 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!167 = !{!168, !182, !5}
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !169, line: 32, size: 32, elements: !170)
!169 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!171 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!172 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!173 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!174 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!175 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!176 = !DIEnumerator(name: "c_quoting_style", value: 5)
!177 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!178 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!179 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!180 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!181 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !169, line: 242, size: 32, elements: !183)
!183 = !{!184, !185, !186}
!184 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!185 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!186 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!187 = !{!25, !26, !80, !22}
!188 = !{!163, !189, !196, !208, !210, !215, !222, !224}
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !165, file: !191, line: 93, type: !192, isLocal: false, isDefinition: true)
!191 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 320, elements: !194)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!194 = !{!195}
!195 = !DISubrange(count: 10)
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !165, file: !191, line: 1043, type: !198, isLocal: false, isDefinition: true)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !191, line: 57, size: 448, elements: !199)
!199 = !{!200, !201, !202, !206, !207}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !198, file: !191, line: 60, baseType: !168, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !191, line: 63, baseType: !25, size: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !198, file: !191, line: 67, baseType: !203, size: 256, offset: 64)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 8)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !198, file: !191, line: 70, baseType: !33, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !198, file: !191, line: 73, baseType: !33, size: 64, offset: 384)
!208 = !DIGlobalVariableExpression(var: !209)
!209 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !165, file: !191, line: 108, type: !198, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "slot0", scope: !165, file: !191, line: 834, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 256)
!215 = !DIGlobalVariableExpression(var: !216)
!216 = distinct !DIGlobalVariable(name: "slotvec", scope: !165, file: !191, line: 837, type: !217, isLocal: true, isDefinition: true)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !191, line: 826, size: 128, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !218, file: !191, line: 828, baseType: !80, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !218, file: !191, line: 829, baseType: !22, size: 64, offset: 64)
!222 = !DIGlobalVariableExpression(var: !223)
!223 = distinct !DIGlobalVariable(name: "nslots", scope: !165, file: !191, line: 835, type: !25, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225)
!225 = distinct !DIGlobalVariable(name: "slotvec0", scope: !165, file: !191, line: 836, type: !218, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 704, elements: !228)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!228 = !{!229}
!229 = !DISubrange(count: 11)
!230 = !DIGlobalVariableExpression(var: !231)
!231 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !232, file: !235, line: 26, type: !236, isLocal: false, isDefinition: true)
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, globals: !234)
!233 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!234 = !{!230}
!235 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 376, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 47)
!239 = !DIGlobalVariableExpression(var: !240)
!240 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !241, file: !586, line: 120, type: !587, isLocal: true, isDefinition: true)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !243, retainedTypes: !582, globals: !585)
!242 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!243 = !{!244}
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !245, line: 41, size: 32, elements: !246)
!245 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!247 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!248 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!249 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!250 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!251 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!252 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!253 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!254 = !DIEnumerator(name: "DAY_1", value: 131079)
!255 = !DIEnumerator(name: "DAY_2", value: 131080)
!256 = !DIEnumerator(name: "DAY_3", value: 131081)
!257 = !DIEnumerator(name: "DAY_4", value: 131082)
!258 = !DIEnumerator(name: "DAY_5", value: 131083)
!259 = !DIEnumerator(name: "DAY_6", value: 131084)
!260 = !DIEnumerator(name: "DAY_7", value: 131085)
!261 = !DIEnumerator(name: "ABMON_1", value: 131086)
!262 = !DIEnumerator(name: "ABMON_2", value: 131087)
!263 = !DIEnumerator(name: "ABMON_3", value: 131088)
!264 = !DIEnumerator(name: "ABMON_4", value: 131089)
!265 = !DIEnumerator(name: "ABMON_5", value: 131090)
!266 = !DIEnumerator(name: "ABMON_6", value: 131091)
!267 = !DIEnumerator(name: "ABMON_7", value: 131092)
!268 = !DIEnumerator(name: "ABMON_8", value: 131093)
!269 = !DIEnumerator(name: "ABMON_9", value: 131094)
!270 = !DIEnumerator(name: "ABMON_10", value: 131095)
!271 = !DIEnumerator(name: "ABMON_11", value: 131096)
!272 = !DIEnumerator(name: "ABMON_12", value: 131097)
!273 = !DIEnumerator(name: "MON_1", value: 131098)
!274 = !DIEnumerator(name: "MON_2", value: 131099)
!275 = !DIEnumerator(name: "MON_3", value: 131100)
!276 = !DIEnumerator(name: "MON_4", value: 131101)
!277 = !DIEnumerator(name: "MON_5", value: 131102)
!278 = !DIEnumerator(name: "MON_6", value: 131103)
!279 = !DIEnumerator(name: "MON_7", value: 131104)
!280 = !DIEnumerator(name: "MON_8", value: 131105)
!281 = !DIEnumerator(name: "MON_9", value: 131106)
!282 = !DIEnumerator(name: "MON_10", value: 131107)
!283 = !DIEnumerator(name: "MON_11", value: 131108)
!284 = !DIEnumerator(name: "MON_12", value: 131109)
!285 = !DIEnumerator(name: "AM_STR", value: 131110)
!286 = !DIEnumerator(name: "PM_STR", value: 131111)
!287 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!288 = !DIEnumerator(name: "D_FMT", value: 131113)
!289 = !DIEnumerator(name: "T_FMT", value: 131114)
!290 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!291 = !DIEnumerator(name: "ERA", value: 131116)
!292 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!293 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!294 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!295 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!296 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!297 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!298 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!299 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!300 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!301 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!302 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!303 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!304 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!305 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!306 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!307 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!308 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!309 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!310 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!311 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!312 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!313 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!314 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!315 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!316 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!317 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!318 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!319 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!320 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!321 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!322 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!323 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!324 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!325 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!326 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!327 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!328 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!329 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!330 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!331 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!332 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!333 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!334 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!335 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!336 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!337 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!338 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!339 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!340 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!341 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!342 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!343 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!344 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!345 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!346 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!347 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!348 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!349 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!350 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!351 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!352 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!353 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!354 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!355 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!356 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!357 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!358 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!359 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!360 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!361 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!362 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!363 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!364 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!365 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!366 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!367 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!368 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!369 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!370 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!371 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!372 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!373 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!374 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!375 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!376 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!377 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!378 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!379 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!380 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!381 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!382 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!383 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!384 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!385 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!386 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!387 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!388 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!389 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!390 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!391 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!392 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!393 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!394 = !DIEnumerator(name: "CODESET", value: 14)
!395 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!396 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!397 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!398 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!441 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!442 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!443 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!445 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!446 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!447 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!448 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!450 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!451 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!466 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!467 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!468 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!469 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!470 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!471 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!472 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!473 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!474 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!475 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!476 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!477 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!478 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!479 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!480 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!481 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!482 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!483 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!484 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!485 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!486 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!487 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!488 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!505 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!506 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!509 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!510 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!511 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!512 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!513 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!514 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!515 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!516 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!517 = !DIEnumerator(name: "THOUSEP", value: 65537)
!518 = !DIEnumerator(name: "__GROUPING", value: 65538)
!519 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!520 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!521 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!522 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!523 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!524 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!525 = !DIEnumerator(name: "__YESSTR", value: 327682)
!526 = !DIEnumerator(name: "__NOSTR", value: 327683)
!527 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!528 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!529 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!530 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!531 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!532 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!533 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!534 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!535 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!536 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!537 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!538 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!539 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!540 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!541 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!542 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!543 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!544 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!545 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!546 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!547 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!548 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!549 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!550 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!551 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!552 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!553 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!554 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!555 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!556 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!557 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!558 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!559 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!560 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!561 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!562 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!563 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!580 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!581 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!582 = !{!24, !22, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!585 = !{!239}
!586 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !590, retainedTypes: !595)
!589 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = !{!591}
!591 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !592, line: 41, size: 32, elements: !593)
!592 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = !{!594}
!594 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!595 = !{!24}
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !598, retainedTypes: !612)
!597 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!598 = !{!599}
!599 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !601, file: !600, line: 192, size: 32, elements: !610)
!600 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!601 = distinct !DISubprogram(name: "x2nrealloc", scope: !600, file: !600, line: 180, type: !602, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !605)
!602 = !DISubroutineType(types: !603)
!603 = !{!24, !24, !604, !80}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!605 = !{!606, !607, !608, !609}
!606 = !DILocalVariable(name: "p", arg: 1, scope: !601, file: !600, line: 180, type: !24)
!607 = !DILocalVariable(name: "pn", arg: 2, scope: !601, file: !600, line: 180, type: !604)
!608 = !DILocalVariable(name: "s", arg: 3, scope: !601, file: !600, line: 180, type: !80)
!609 = !DILocalVariable(name: "n", scope: !601, file: !600, line: 182, type: !80)
!610 = !{!611}
!611 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!612 = !{!80, !22, !24}
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109)
!614 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, retainedTypes: !595)
!616 = !DIFile(filename: "./lib/xstrtold.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!617 = distinct !DICompileUnit(language: DW_LANG_C99, file: !618, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, retainedTypes: !595)
!618 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, retainedTypes: !621)
!620 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!621 = !{!80}
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109)
!623 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = distinct !DICompileUnit(language: DW_LANG_C99, file: !625, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109)
!625 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109)
!627 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!628 = distinct !DICompileUnit(language: DW_LANG_C99, file: !629, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, retainedTypes: !595)
!629 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, retainedTypes: !595)
!631 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!632 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!633 = !{i32 2, !"Dwarf Version", i32 4}
!634 = !{i32 2, !"Debug Info Version", i32 3}
!635 = !{i32 1, !"wchar_size", i32 4}
!636 = !{i32 7, !"PIC Level", i32 2}
!637 = !{i32 7, !"PIE Level", i32 2}
!638 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 66, type: !639, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !641)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !25}
!641 = !{!642}
!642 = !DILocalVariable(name: "status", arg: 1, scope: !638, file: !3, line: 66, type: !25)
!643 = !DIExpression()
!644 = !DILocation(line: 66, column: 12, scope: !638)
!645 = !DILocation(line: 68, column: 14, scope: !646)
!646 = distinct !DILexicalBlock(scope: !638, file: !3, line: 68, column: 7)
!647 = !DILocation(line: 68, column: 7, scope: !638)
!648 = !DILocation(line: 69, column: 5, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !3, line: 69, column: 5)
!650 = !{!651, !651, i64 0}
!651 = !{!"any pointer", !652, i64 0}
!652 = !{!"omnipotent char", !653, i64 0}
!653 = !{!"Simple C/C++ TBAA"}
!654 = !DILocation(line: 72, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !646, file: !3, line: 71, column: 5)
!656 = !DILocation(line: 77, column: 7, scope: !655)
!657 = !DILocation(line: 587, column: 3, scope: !658, inlinedAt: !661)
!658 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !38, file: !38, line: 585, type: !659, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !109)
!659 = !DISubroutineType(types: !660)
!660 = !{null}
!661 = distinct !DILocation(line: 81, column: 7, scope: !655)
!662 = !DILocation(line: 83, column: 7, scope: !655)
!663 = !DILocation(line: 88, column: 7, scope: !655)
!664 = !DILocation(line: 89, column: 7, scope: !655)
!665 = !DILocation(line: 90, column: 7, scope: !655)
!666 = !DILocation(line: 101, column: 7, scope: !655)
!667 = !DILocation(line: 642, column: 15, scope: !37, inlinedAt: !668)
!668 = distinct !DILocation(line: 106, column: 7, scope: !655)
!669 = !DILocation(line: 651, column: 3, scope: !37, inlinedAt: !668)
!670 = !DILocation(line: 655, column: 29, scope: !37, inlinedAt: !668)
!671 = !DILocation(line: 655, column: 15, scope: !37, inlinedAt: !668)
!672 = !DILocation(line: 656, column: 7, scope: !673, inlinedAt: !668)
!673 = distinct !DILexicalBlock(scope: !37, file: !38, line: 656, column: 7)
!674 = !DILocation(line: 656, column: 19, scope: !673, inlinedAt: !668)
!675 = !DILocation(line: 656, column: 22, scope: !673, inlinedAt: !668)
!676 = !DILocation(line: 656, column: 7, scope: !37, inlinedAt: !668)
!677 = !DILocation(line: 662, column: 7, scope: !678, inlinedAt: !668)
!678 = distinct !DILexicalBlock(scope: !673, file: !38, line: 657, column: 5)
!679 = !DILocation(line: 664, column: 5, scope: !678, inlinedAt: !668)
!680 = !DILocation(line: 665, column: 3, scope: !37, inlinedAt: !668)
!681 = !DILocation(line: 667, column: 3, scope: !37, inlinedAt: !668)
!682 = !DILocation(line: 108, column: 3, scope: !638)
!683 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 549, type: !684, isLocal: false, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !687)
!684 = !DISubroutineType(types: !685)
!685 = !{!25, !25, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !699, !700, !701, !704, !705, !708}
!688 = !DILocalVariable(name: "argc", arg: 1, scope: !683, file: !3, line: 549, type: !25)
!689 = !DILocalVariable(name: "argv", arg: 2, scope: !683, file: !3, line: 549, type: !686)
!690 = !DILocalVariable(name: "optc", scope: !683, file: !3, line: 551, type: !25)
!691 = !DILocalVariable(name: "first", scope: !683, file: !3, line: 552, type: !74)
!692 = !DILocalVariable(name: "step", scope: !683, file: !3, line: 553, type: !74)
!693 = !DILocalVariable(name: "last", scope: !683, file: !3, line: 554, type: !74)
!694 = !DILocalVariable(name: "layout", scope: !683, file: !3, line: 555, type: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "layout", file: !3, line: 130, size: 128, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !695, file: !3, line: 133, baseType: !80, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "suffix_len", scope: !695, file: !3, line: 134, baseType: !80, size: 64, offset: 64)
!699 = !DILocalVariable(name: "format_str", scope: !683, file: !3, line: 558, type: !33)
!700 = !DILocalVariable(name: "n_args", scope: !683, file: !3, line: 610, type: !21)
!701 = !DILocalVariable(name: "s1", scope: !702, file: !3, line: 645, type: !33)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 644, column: 5)
!703 = distinct !DILexicalBlock(scope: !683, file: !3, line: 639, column: 7)
!704 = !DILocalVariable(name: "s2", scope: !702, file: !3, line: 646, type: !33)
!705 = !DILocalVariable(name: "s1", scope: !706, file: !3, line: 679, type: !22)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 678, column: 5)
!707 = distinct !DILexicalBlock(scope: !683, file: !3, line: 674, column: 7)
!708 = !DILocalVariable(name: "s2", scope: !706, file: !3, line: 680, type: !22)
!709 = !DILocation(line: 360, column: 58, scope: !71, inlinedAt: !710)
!710 = distinct !DILocation(line: 701, column: 18, scope: !711)
!711 = distinct !DILexicalBlock(scope: !683, file: !3, line: 700, column: 7)
!712 = !DILocation(line: 549, column: 11, scope: !683)
!713 = !DILocation(line: 549, column: 24, scope: !683)
!714 = !DILocation(line: 552, column: 3, scope: !683)
!715 = !DILocation(line: 552, column: 11, scope: !683)
!716 = !DILocation(line: 553, column: 3, scope: !683)
!717 = !DILocation(line: 553, column: 11, scope: !683)
!718 = !DILocation(line: 554, column: 3, scope: !683)
!719 = !DILocation(line: 558, column: 15, scope: !683)
!720 = !DILocation(line: 561, column: 21, scope: !683)
!721 = !DILocation(line: 561, column: 3, scope: !683)
!722 = !DILocation(line: 562, column: 3, scope: !683)
!723 = !DILocation(line: 563, column: 3, scope: !683)
!724 = !DILocation(line: 564, column: 3, scope: !683)
!725 = !DILocation(line: 566, column: 3, scope: !683)
!726 = !DILocation(line: 569, column: 13, scope: !683)
!727 = !DILocation(line: 574, column: 10, scope: !683)
!728 = !{!729, !729, i64 0}
!729 = !{!"int", !652, i64 0}
!730 = !DILocation(line: 574, column: 17, scope: !683)
!731 = !DILocation(line: 574, column: 3, scope: !683)
!732 = !DILocation(line: 576, column: 11, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 576, column: 11)
!734 = distinct !DILexicalBlock(scope: !683, file: !3, line: 575, column: 5)
!735 = !{!652, !652, i64 0}
!736 = !DILocation(line: 576, column: 27, scope: !733)
!737 = !DILocation(line: 577, column: 11, scope: !733)
!738 = !DILocation(line: 577, column: 23, scope: !733)
!739 = !DILocation(line: 551, column: 7, scope: !683)
!740 = !DILocation(line: 577, column: 40, scope: !733)
!741 = !DILocation(line: 577, column: 47, scope: !733)
!742 = !DILocation(line: 577, column: 50, scope: !733)
!743 = !DILocation(line: 576, column: 11, scope: !734)
!744 = !DILocation(line: 583, column: 14, scope: !734)
!745 = !DILocation(line: 584, column: 11, scope: !734)
!746 = !DILocation(line: 610, column: 32, scope: !683)
!747 = !DILocation(line: 590, column: 24, scope: !748)
!748 = distinct !DILexicalBlock(scope: !734, file: !3, line: 588, column: 9)
!749 = !DILocation(line: 591, column: 11, scope: !748)
!750 = !DILocation(line: 594, column: 23, scope: !748)
!751 = !DILocation(line: 594, column: 21, scope: !748)
!752 = !DILocation(line: 595, column: 11, scope: !748)
!753 = !DILocation(line: 599, column: 11, scope: !748)
!754 = !DILocation(line: 601, column: 9, scope: !748)
!755 = !DILocation(line: 603, column: 9, scope: !748)
!756 = !DILocation(line: 606, column: 11, scope: !748)
!757 = distinct !{!757, !731, !758}
!758 = !DILocation(line: 608, column: 5, scope: !683)
!759 = !DILocation(line: 610, column: 30, scope: !683)
!760 = !DILocation(line: 610, column: 16, scope: !683)
!761 = !DILocation(line: 611, column: 14, scope: !762)
!762 = distinct !DILexicalBlock(scope: !683, file: !3, line: 611, column: 7)
!763 = !DILocation(line: 611, column: 7, scope: !683)
!764 = !DILocation(line: 613, column: 20, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !3, line: 612, column: 5)
!766 = !DILocation(line: 613, column: 7, scope: !765)
!767 = !DILocation(line: 614, column: 7, scope: !765)
!768 = !DILocation(line: 617, column: 9, scope: !769)
!769 = distinct !DILexicalBlock(scope: !683, file: !3, line: 617, column: 7)
!770 = !DILocation(line: 617, column: 7, scope: !683)
!771 = !DILocation(line: 619, column: 20, scope: !772)
!772 = distinct !DILexicalBlock(scope: !769, file: !3, line: 618, column: 5)
!773 = !DILocation(line: 619, column: 55, scope: !772)
!774 = !DILocation(line: 619, column: 62, scope: !772)
!775 = !DILocation(line: 619, column: 50, scope: !772)
!776 = !DILocation(line: 619, column: 43, scope: !772)
!777 = !DILocation(line: 619, column: 7, scope: !772)
!778 = !DILocation(line: 620, column: 7, scope: !772)
!779 = !DILocation(line: 623, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !683, file: !3, line: 623, column: 7)
!781 = !DILocation(line: 623, column: 7, scope: !683)
!782 = !DILocation(line: 236, column: 18, scope: !783, inlinedAt: !804)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 236, column: 3)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 236, column: 3)
!785 = distinct !DISubprogram(name: "long_double_format", scope: !3, file: !3, line: 228, type: !786, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !789)
!786 = !DISubroutineType(types: !787)
!787 = !{!33, !33, !788}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !803}
!790 = !DILocalVariable(name: "fmt", arg: 1, scope: !785, file: !3, line: 228, type: !33)
!791 = !DILocalVariable(name: "layout", arg: 2, scope: !785, file: !3, line: 228, type: !788)
!792 = !DILocalVariable(name: "i", scope: !785, file: !3, line: 230, type: !80)
!793 = !DILocalVariable(name: "prefix_len", scope: !785, file: !3, line: 231, type: !80)
!794 = !DILocalVariable(name: "suffix_len", scope: !785, file: !3, line: 232, type: !80)
!795 = !DILocalVariable(name: "length_modifier_offset", scope: !785, file: !3, line: 233, type: !80)
!796 = !DILocalVariable(name: "has_L", scope: !785, file: !3, line: 234, type: !30)
!797 = !DILocalVariable(name: "format_size", scope: !798, file: !3, line: 270, type: !80)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 269, column: 7)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 266, column: 14)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 263, column: 9)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 262, column: 3)
!802 = distinct !DILexicalBlock(scope: !785, file: !3, line: 262, column: 3)
!803 = !DILocalVariable(name: "ldfmt", scope: !798, file: !3, line: 271, type: !22)
!804 = distinct !DILocation(line: 624, column: 18, scope: !780)
!805 = !DILocation(line: 230, column: 10, scope: !785, inlinedAt: !804)
!806 = !DILocation(line: 231, column: 10, scope: !785, inlinedAt: !804)
!807 = !DILocation(line: 236, column: 25, scope: !783, inlinedAt: !804)
!808 = !DILocation(line: 236, column: 32, scope: !783, inlinedAt: !804)
!809 = !DILocation(line: 236, column: 41, scope: !783, inlinedAt: !804)
!810 = !DILocation(line: 236, column: 35, scope: !783, inlinedAt: !804)
!811 = !DILocation(line: 236, column: 46, scope: !783, inlinedAt: !804)
!812 = !DILocation(line: 236, column: 3, scope: !784, inlinedAt: !804)
!813 = !DILocation(line: 238, column: 12, scope: !814, inlinedAt: !804)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 238, column: 11)
!815 = distinct !DILexicalBlock(scope: !783, file: !3, line: 237, column: 5)
!816 = !DILocation(line: 238, column: 11, scope: !815, inlinedAt: !804)
!817 = !DILocation(line: 239, column: 9, scope: !814, inlinedAt: !804)
!818 = !DILocation(line: 241, column: 17, scope: !815, inlinedAt: !804)
!819 = !DILocation(line: 236, column: 60, scope: !783, inlinedAt: !804)
!820 = !DILocation(line: 236, column: 57, scope: !783, inlinedAt: !804)
!821 = !DILocation(line: 236, column: 3, scope: !783, inlinedAt: !804)
!822 = distinct !{!822, !823, !824}
!823 = !DILocation(line: 236, column: 3, scope: !784)
!824 = !DILocation(line: 242, column: 5, scope: !784)
!825 = !DILocation(line: 245, column: 8, scope: !785, inlinedAt: !804)
!826 = !DILocation(line: 245, column: 5, scope: !785, inlinedAt: !804)
!827 = !DILocation(line: 246, column: 20, scope: !785, inlinedAt: !804)
!828 = !DILocation(line: 246, column: 8, scope: !785, inlinedAt: !804)
!829 = !DILocation(line: 246, column: 5, scope: !785, inlinedAt: !804)
!830 = !DILocation(line: 247, column: 7, scope: !831, inlinedAt: !804)
!831 = distinct !DILexicalBlock(scope: !785, file: !3, line: 247, column: 7)
!832 = !DILocation(line: 247, column: 14, scope: !831, inlinedAt: !804)
!833 = !DILocation(line: 247, column: 7, scope: !785, inlinedAt: !804)
!834 = !DILocation(line: 249, column: 8, scope: !835, inlinedAt: !804)
!835 = distinct !DILexicalBlock(scope: !831, file: !3, line: 248, column: 5)
!836 = !DILocation(line: 250, column: 24, scope: !835, inlinedAt: !804)
!837 = !DILocation(line: 250, column: 12, scope: !835, inlinedAt: !804)
!838 = !DILocation(line: 250, column: 9, scope: !835, inlinedAt: !804)
!839 = !DILocation(line: 254, column: 12, scope: !785, inlinedAt: !804)
!840 = !DILocation(line: 251, column: 5, scope: !835, inlinedAt: !804)
!841 = !DILocation(line: 233, column: 10, scope: !785, inlinedAt: !804)
!842 = !DILocation(line: 254, column: 19, scope: !785, inlinedAt: !804)
!843 = !DILocation(line: 255, column: 8, scope: !785, inlinedAt: !804)
!844 = !DILocation(line: 255, column: 5, scope: !785, inlinedAt: !804)
!845 = !DILocation(line: 256, column: 7, scope: !846, inlinedAt: !804)
!846 = distinct !DILexicalBlock(scope: !785, file: !3, line: 256, column: 7)
!847 = !DILocation(line: 256, column: 14, scope: !846, inlinedAt: !804)
!848 = !DILocation(line: 256, column: 7, scope: !785, inlinedAt: !804)
!849 = !DILocation(line: 257, column: 5, scope: !846, inlinedAt: !804)
!850 = !DILocation(line: 258, column: 9, scope: !851, inlinedAt: !804)
!851 = distinct !DILexicalBlock(scope: !785, file: !3, line: 258, column: 7)
!852 = !DILocation(line: 258, column: 7, scope: !785, inlinedAt: !804)
!853 = !DILocation(line: 259, column: 5, scope: !851, inlinedAt: !804)
!854 = !DILocation(line: 262, column: 9, scope: !802, inlinedAt: !804)
!855 = !DILocation(line: 262, column: 8, scope: !802, inlinedAt: !804)
!856 = !DILocation(line: 232, column: 10, scope: !785, inlinedAt: !804)
!857 = !DILocation(line: 263, column: 9, scope: !800, inlinedAt: !804)
!858 = !DILocation(line: 263, column: 16, scope: !800, inlinedAt: !804)
!859 = !DILocation(line: 263, column: 23, scope: !800, inlinedAt: !804)
!860 = !DILocation(line: 263, column: 32, scope: !800, inlinedAt: !804)
!861 = !DILocation(line: 263, column: 26, scope: !800, inlinedAt: !804)
!862 = !DILocation(line: 263, column: 37, scope: !800, inlinedAt: !804)
!863 = !DILocation(line: 263, column: 9, scope: !801, inlinedAt: !804)
!864 = !DILocation(line: 264, column: 7, scope: !800, inlinedAt: !804)
!865 = !DILocation(line: 266, column: 14, scope: !799, inlinedAt: !804)
!866 = !DILocation(line: 266, column: 14, scope: !800, inlinedAt: !804)
!867 = !DILocation(line: 267, column: 17, scope: !799, inlinedAt: !804)
!868 = !DILocation(line: 262, column: 20, scope: !801, inlinedAt: !804)
!869 = !DILocation(line: 262, column: 17, scope: !801, inlinedAt: !804)
!870 = !DILocation(line: 262, column: 3, scope: !801, inlinedAt: !804)
!871 = distinct !{!871, !872, !873}
!872 = !DILocation(line: 262, column: 3, scope: !802)
!873 = !DILocation(line: 279, column: 7, scope: !802)
!874 = !DILocation(line: 271, column: 44, scope: !798, inlinedAt: !804)
!875 = !DILocation(line: 271, column: 23, scope: !798, inlinedAt: !804)
!876 = !DILocation(line: 271, column: 15, scope: !798, inlinedAt: !804)
!877 = !DILocation(line: 272, column: 9, scope: !798, inlinedAt: !804)
!878 = !DILocation(line: 273, column: 9, scope: !798, inlinedAt: !804)
!879 = !DILocation(line: 273, column: 39, scope: !798, inlinedAt: !804)
!880 = !DILocation(line: 274, column: 48, scope: !798, inlinedAt: !804)
!881 = !DILocation(line: 275, column: 46, scope: !798, inlinedAt: !804)
!882 = !DILocalVariable(name: "__dest", arg: 1, scope: !883, file: !884, line: 88, type: !887)
!883 = distinct !DISubprogram(name: "strcpy", scope: !884, file: !884, line: 88, type: !885, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !889)
!884 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!885 = !DISubroutineType(types: !886)
!886 = !{!22, !887, !888}
!887 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!888 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!889 = !{!882, !890}
!890 = !DILocalVariable(name: "__src", arg: 2, scope: !883, file: !884, line: 88, type: !888)
!891 = !DILocation(line: 88, column: 1, scope: !883, inlinedAt: !892)
!892 = distinct !DILocation(line: 274, column: 9, scope: !798, inlinedAt: !804)
!893 = !DILocation(line: 90, column: 49, scope: !883, inlinedAt: !892)
!894 = !DILocation(line: 90, column: 10, scope: !883, inlinedAt: !892)
!895 = !DILocation(line: 626, column: 18, scope: !896)
!896 = distinct !DILexicalBlock(scope: !683, file: !3, line: 626, column: 7)
!897 = !DILocation(line: 626, column: 26, scope: !896)
!898 = !DILocation(line: 626, column: 7, scope: !683)
!899 = !DILocation(line: 628, column: 20, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !3, line: 627, column: 5)
!901 = !DILocation(line: 628, column: 7, scope: !900)
!902 = !DILocation(line: 630, column: 7, scope: !900)
!903 = !DILocation(line: 639, column: 26, scope: !703)
!904 = !DILocation(line: 639, column: 21, scope: !703)
!905 = !DILocalVariable(name: "s", arg: 1, scope: !906, file: !3, line: 542, type: !33)
!906 = distinct !DISubprogram(name: "all_digits_p", scope: !3, file: !3, line: 542, type: !907, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{!30, !33}
!909 = !{!905, !910}
!910 = !DILocalVariable(name: "n", scope: !906, file: !3, line: 544, type: !80)
!911 = !DILocation(line: 542, column: 27, scope: !906, inlinedAt: !912)
!912 = distinct !DILocation(line: 639, column: 7, scope: !703)
!913 = !DILocation(line: 545, column: 10, scope: !906, inlinedAt: !912)
!914 = !DILocation(line: 545, column: 25, scope: !906, inlinedAt: !912)
!915 = !DILocation(line: 544, column: 14, scope: !906, inlinedAt: !912)
!916 = !DILocation(line: 545, column: 33, scope: !906, inlinedAt: !912)
!917 = !DILocation(line: 545, column: 30, scope: !906, inlinedAt: !912)
!918 = !DILocation(line: 640, column: 7, scope: !703)
!919 = !DILocation(line: 640, column: 18, scope: !703)
!920 = !DILocation(line: 640, column: 23, scope: !703)
!921 = !DILocation(line: 640, column: 52, scope: !703)
!922 = !DILocation(line: 640, column: 40, scope: !703)
!923 = !DILocation(line: 542, column: 27, scope: !906, inlinedAt: !924)
!924 = distinct !DILocation(line: 640, column: 26, scope: !703)
!925 = !DILocation(line: 545, column: 10, scope: !906, inlinedAt: !924)
!926 = !DILocation(line: 545, column: 25, scope: !906, inlinedAt: !924)
!927 = !DILocation(line: 544, column: 14, scope: !906, inlinedAt: !924)
!928 = !DILocation(line: 545, column: 33, scope: !906, inlinedAt: !924)
!929 = !DILocation(line: 545, column: 30, scope: !906, inlinedAt: !924)
!930 = !DILocation(line: 641, column: 7, scope: !703)
!931 = !DILocation(line: 641, column: 18, scope: !703)
!932 = !DILocation(line: 641, column: 22, scope: !703)
!933 = !DILocation(line: 641, column: 26, scope: !703)
!934 = !DILocation(line: 642, column: 26, scope: !703)
!935 = !DILocation(line: 642, column: 55, scope: !703)
!936 = !DILocation(line: 642, column: 43, scope: !703)
!937 = !DILocation(line: 542, column: 27, scope: !906, inlinedAt: !938)
!938 = distinct !DILocation(line: 642, column: 29, scope: !703)
!939 = !DILocation(line: 545, column: 10, scope: !906, inlinedAt: !938)
!940 = !DILocation(line: 545, column: 25, scope: !906, inlinedAt: !938)
!941 = !DILocation(line: 544, column: 14, scope: !906, inlinedAt: !938)
!942 = !DILocation(line: 545, column: 33, scope: !906, inlinedAt: !938)
!943 = !DILocation(line: 545, column: 30, scope: !906, inlinedAt: !938)
!944 = !DILocation(line: 643, column: 23, scope: !703)
!945 = !DILocation(line: 643, column: 7, scope: !703)
!946 = !DILocation(line: 643, column: 49, scope: !703)
!947 = !DILocation(line: 643, column: 41, scope: !703)
!948 = !DILocation(line: 643, column: 60, scope: !703)
!949 = !DILocation(line: 639, column: 7, scope: !683)
!950 = !DILocation(line: 645, column: 24, scope: !702)
!951 = !DILocation(line: 645, column: 19, scope: !702)
!952 = !DILocation(line: 646, column: 46, scope: !702)
!953 = !DILocation(line: 646, column: 36, scope: !702)
!954 = !DILocation(line: 646, column: 24, scope: !702)
!955 = !DILocation(line: 646, column: 19, scope: !702)
!956 = !DILocation(line: 647, column: 11, scope: !957)
!957 = distinct !DILexicalBlock(scope: !702, file: !3, line: 647, column: 11)
!958 = !DILocation(line: 653, column: 31, scope: !683)
!959 = !DILocation(line: 653, column: 20, scope: !683)
!960 = !DILocation(line: 653, column: 10, scope: !683)
!961 = !DILocation(line: 655, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !683, file: !3, line: 655, column: 7)
!963 = !DILocation(line: 655, column: 14, scope: !962)
!964 = !DILocation(line: 655, column: 7, scope: !683)
!965 = !DILocation(line: 657, column: 15, scope: !966)
!966 = distinct !DILexicalBlock(scope: !962, file: !3, line: 656, column: 5)
!967 = !DILocation(line: 658, column: 35, scope: !966)
!968 = !DILocation(line: 658, column: 24, scope: !966)
!969 = !DILocation(line: 658, column: 14, scope: !966)
!970 = !DILocation(line: 660, column: 11, scope: !971)
!971 = distinct !DILexicalBlock(scope: !966, file: !3, line: 660, column: 11)
!972 = !DILocation(line: 660, column: 18, scope: !971)
!973 = !DILocation(line: 660, column: 11, scope: !966)
!974 = !DILocation(line: 662, column: 18, scope: !975)
!975 = distinct !DILexicalBlock(scope: !971, file: !3, line: 661, column: 9)
!976 = !DILocation(line: 663, column: 26, scope: !977)
!977 = distinct !DILexicalBlock(scope: !975, file: !3, line: 663, column: 15)
!978 = !DILocation(line: 663, column: 15, scope: !975)
!979 = !DILocation(line: 665, column: 28, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !3, line: 664, column: 13)
!981 = !DILocation(line: 666, column: 34, scope: !980)
!982 = !DILocation(line: 666, column: 40, scope: !980)
!983 = !DILocation(line: 666, column: 29, scope: !980)
!984 = !DILocation(line: 666, column: 22, scope: !980)
!985 = !DILocation(line: 665, column: 15, scope: !980)
!986 = !DILocation(line: 667, column: 15, scope: !980)
!987 = !DILocation(line: 670, column: 39, scope: !975)
!988 = !DILocation(line: 670, column: 28, scope: !975)
!989 = !DILocation(line: 670, column: 18, scope: !975)
!990 = !DILocation(line: 671, column: 9, scope: !975)
!991 = !DILocation(line: 674, column: 8, scope: !707)
!992 = !DILocation(line: 674, column: 31, scope: !707)
!993 = !DILocation(line: 675, column: 48, scope: !707)
!994 = !DILocation(line: 676, column: 12, scope: !707)
!995 = !DILocation(line: 676, column: 7, scope: !707)
!996 = !DILocation(line: 676, column: 41, scope: !707)
!997 = !DILocation(line: 676, column: 51, scope: !707)
!998 = !DILocation(line: 677, column: 23, scope: !707)
!999 = !DILocation(line: 677, column: 7, scope: !707)
!1000 = !DILocation(line: 677, column: 49, scope: !707)
!1001 = !DILocation(line: 677, column: 41, scope: !707)
!1002 = !DILocation(line: 677, column: 60, scope: !707)
!1003 = !DILocation(line: 674, column: 7, scope: !683)
!1004 = !DILocation(line: 679, column: 7, scope: !706)
!1005 = !DILocation(line: 680, column: 7, scope: !706)
!1006 = !DILocation(line: 679, column: 13, scope: !706)
!1007 = !DILocation(line: 681, column: 11, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !706, file: !3, line: 681, column: 11)
!1009 = !DILocation(line: 681, column: 48, scope: !1008)
!1010 = !DILocation(line: 681, column: 11, scope: !706)
!1011 = !DILocation(line: 682, column: 9, scope: !1008)
!1012 = !DILocation(line: 683, column: 13, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !706, file: !3, line: 683, column: 11)
!1014 = !DILocation(line: 683, column: 11, scope: !706)
!1015 = !DILocation(line: 684, column: 14, scope: !1013)
!1016 = !DILocation(line: 680, column: 13, scope: !706)
!1017 = !DILocation(line: 684, column: 12, scope: !1013)
!1018 = !DILocation(line: 684, column: 9, scope: !1013)
!1019 = !DILocation(line: 685, column: 16, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 685, column: 16)
!1021 = !DILocation(line: 685, column: 52, scope: !1020)
!1022 = !DILocation(line: 685, column: 16, scope: !1013)
!1023 = !DILocation(line: 686, column: 9, scope: !1020)
!1024 = !DILocation(line: 688, column: 12, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !706, file: !3, line: 688, column: 11)
!1026 = !DILocation(line: 688, column: 11, scope: !1025)
!1027 = !DILocation(line: 688, column: 15, scope: !1025)
!1028 = !DILocation(line: 688, column: 22, scope: !1025)
!1029 = !DILocation(line: 688, column: 26, scope: !1025)
!1030 = !DILocation(line: 688, column: 25, scope: !1025)
!1031 = !DILocation(line: 688, column: 29, scope: !1025)
!1032 = !DILocation(line: 688, column: 36, scope: !1025)
!1033 = !DILocation(line: 688, column: 39, scope: !1025)
!1034 = !DILocation(line: 688, column: 11, scope: !706)
!1035 = !DILocation(line: 695, column: 13, scope: !706)
!1036 = !DILocation(line: 695, column: 7, scope: !706)
!1037 = !DILocation(line: 696, column: 13, scope: !706)
!1038 = !DILocation(line: 696, column: 7, scope: !706)
!1039 = !DILocation(line: 698, column: 5, scope: !707)
!1040 = !DILocation(line: 700, column: 18, scope: !711)
!1041 = !DILocation(line: 700, column: 7, scope: !683)
!1042 = !DILocation(line: 554, column: 11, scope: !683)
!1043 = !DILocation(line: 360, column: 29, scope: !71, inlinedAt: !710)
!1044 = !DIExpression(DW_OP_LLVM_fragment, 0, 80)
!1045 = !DIExpression(DW_OP_LLVM_fragment, 128, 64)
!1046 = !DIExpression(DW_OP_LLVM_fragment, 192, 32)
!1047 = !DILocation(line: 364, column: 14, scope: !71, inlinedAt: !710)
!1048 = !{!1049, !729, i64 24}
!1049 = !{!"operand", !1050, i64 0, !1051, i64 16, !729, i64 24}
!1050 = !{!"long double", !652, i64 0}
!1051 = !{!"long", !652, i64 0}
!1052 = !DILocation(line: 364, column: 7, scope: !71, inlinedAt: !710)
!1053 = !DILocation(line: 366, column: 12, scope: !93, inlinedAt: !710)
!1054 = !DILocation(line: 366, column: 41, scope: !93, inlinedAt: !710)
!1055 = !DILocation(line: 366, column: 23, scope: !93, inlinedAt: !710)
!1056 = !DILocation(line: 368, column: 11, scope: !92, inlinedAt: !710)
!1057 = !DILocation(line: 371, column: 52, scope: !90, inlinedAt: !710)
!1058 = !DILocation(line: 371, column: 46, scope: !90, inlinedAt: !710)
!1059 = !DILocation(line: 373, column: 50, scope: !90, inlinedAt: !710)
!1060 = !DILocation(line: 373, column: 44, scope: !90, inlinedAt: !710)
!1061 = !DILocation(line: 374, column: 15, scope: !1062, inlinedAt: !710)
!1062 = distinct !DILexicalBlock(scope: !90, file: !3, line: 374, column: 15)
!1063 = !DILocation(line: 374, column: 38, scope: !1062, inlinedAt: !710)
!1064 = !DILocation(line: 374, column: 30, scope: !1062, inlinedAt: !710)
!1065 = !DILocation(line: 376, column: 30, scope: !1066, inlinedAt: !710)
!1066 = distinct !DILexicalBlock(scope: !90, file: !3, line: 376, column: 15)
!1067 = !DILocation(line: 376, column: 38, scope: !1066, inlinedAt: !710)
!1068 = !DILocation(line: 376, column: 35, scope: !1066, inlinedAt: !710)
!1069 = !DILocation(line: 373, column: 42, scope: !90, inlinedAt: !710)
!1070 = !DILocation(line: 373, column: 18, scope: !90, inlinedAt: !710)
!1071 = !DILocation(line: 378, column: 31, scope: !1072, inlinedAt: !710)
!1072 = distinct !DILexicalBlock(scope: !90, file: !3, line: 378, column: 15)
!1073 = !DILocation(line: 378, column: 36, scope: !1072, inlinedAt: !710)
!1074 = !DILocation(line: 371, column: 44, scope: !90, inlinedAt: !710)
!1075 = !DILocation(line: 371, column: 18, scope: !90, inlinedAt: !710)
!1076 = !DILocation(line: 380, column: 26, scope: !90, inlinedAt: !710)
!1077 = !DILocation(line: 380, column: 18, scope: !90, inlinedAt: !710)
!1078 = !DILocation(line: 381, column: 21, scope: !98, inlinedAt: !710)
!1079 = !DILocation(line: 381, column: 15, scope: !90, inlinedAt: !710)
!1080 = !DILocation(line: 383, column: 23, scope: !97, inlinedAt: !710)
!1081 = !DILocation(line: 383, column: 19, scope: !97, inlinedAt: !710)
!1082 = !DILocation(line: 384, column: 15, scope: !97, inlinedAt: !710)
!1083 = !DILocation(line: 390, column: 11, scope: !1084, inlinedAt: !710)
!1084 = distinct !DILexicalBlock(scope: !91, file: !3, line: 389, column: 9)
!1085 = !DILocation(line: 391, column: 11, scope: !1084, inlinedAt: !710)
!1086 = !DILocation(line: 396, column: 1, scope: !71, inlinedAt: !710)
!1087 = !DILocation(line: 701, column: 5, scope: !711)
!1088 = !DILocalVariable(name: "layout", arg: 2, scope: !1089, file: !3, line: 294, type: !695)
!1089 = distinct !DISubprogram(name: "print_numbers", scope: !3, file: !3, line: 294, type: !1090, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1092)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !33, !695, !78, !78, !78}
!1092 = !{!1093, !1088, !1094, !1095, !1096, !1097, !1098, !1101, !1102, !1106, !1109, !1110, !1111, !1112}
!1093 = !DILocalVariable(name: "fmt", arg: 1, scope: !1089, file: !3, line: 294, type: !33)
!1094 = !DILocalVariable(name: "first", arg: 3, scope: !1089, file: !3, line: 295, type: !78)
!1095 = !DILocalVariable(name: "step", arg: 4, scope: !1089, file: !3, line: 295, type: !78)
!1096 = !DILocalVariable(name: "last", arg: 5, scope: !1089, file: !3, line: 295, type: !78)
!1097 = !DILocalVariable(name: "out_of_range", scope: !1089, file: !3, line: 297, type: !30)
!1098 = !DILocalVariable(name: "x", scope: !1099, file: !3, line: 301, type: !78)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 300, column: 5)
!1100 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 299, column: 7)
!1101 = !DILocalVariable(name: "i", scope: !1099, file: !3, line: 302, type: !78)
!1102 = !DILocalVariable(name: "x0", scope: !1103, file: !3, line: 306, type: !78)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 305, column: 9)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 304, column: 7)
!1105 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 304, column: 7)
!1106 = !DILocalVariable(name: "print_extra_number", scope: !1107, file: !3, line: 323, type: !30)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 315, column: 13)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 314, column: 15)
!1109 = !DILocalVariable(name: "x_val", scope: !1107, file: !3, line: 324, type: !78)
!1110 = !DILocalVariable(name: "x_str", scope: !1107, file: !3, line: 325, type: !22)
!1111 = !DILocalVariable(name: "x_strlen", scope: !1107, file: !3, line: 326, type: !25)
!1112 = !DILocalVariable(name: "x0_str", scope: !1113, file: !3, line: 337, type: !22)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 336, column: 17)
!1114 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 334, column: 19)
!1115 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!1116 = !DILocation(line: 294, column: 47, scope: !1089, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 703, column: 3, scope: !683)
!1118 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!1119 = !DILocation(line: 294, column: 28, scope: !1089, inlinedAt: !1117)
!1120 = !DILocation(line: 295, column: 28, scope: !1089, inlinedAt: !1117)
!1121 = !DILocation(line: 295, column: 47, scope: !1089, inlinedAt: !1117)
!1122 = !DILocation(line: 295, column: 65, scope: !1089, inlinedAt: !1117)
!1123 = !DILocation(line: 297, column: 29, scope: !1089, inlinedAt: !1117)
!1124 = !DILocation(line: 297, column: 55, scope: !1089, inlinedAt: !1117)
!1125 = !DILocation(line: 297, column: 41, scope: !1089, inlinedAt: !1117)
!1126 = !DILocation(line: 297, column: 24, scope: !1089, inlinedAt: !1117)
!1127 = !DILocation(line: 297, column: 8, scope: !1089, inlinedAt: !1117)
!1128 = !DILocation(line: 299, column: 7, scope: !1089, inlinedAt: !1117)
!1129 = !DILocation(line: 301, column: 19, scope: !1099, inlinedAt: !1117)
!1130 = !DILocation(line: 302, column: 19, scope: !1099, inlinedAt: !1117)
!1131 = !DILocation(line: 306, column: 23, scope: !1103, inlinedAt: !1117)
!1132 = !DILocation(line: 307, column: 15, scope: !1133, inlinedAt: !1117)
!1133 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 307, column: 15)
!1134 = !DILocation(line: 307, column: 31, scope: !1133, inlinedAt: !1117)
!1135 = !DILocation(line: 307, column: 15, scope: !1103, inlinedAt: !1117)
!1136 = !DILocation(line: 308, column: 13, scope: !1133, inlinedAt: !1117)
!1137 = !DILocation(line: 309, column: 15, scope: !1138, inlinedAt: !1117)
!1138 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 309, column: 15)
!1139 = !DILocation(line: 309, column: 15, scope: !1103, inlinedAt: !1117)
!1140 = !DILocation(line: 311, column: 25, scope: !1103, inlinedAt: !1117)
!1141 = !DILocation(line: 311, column: 21, scope: !1103, inlinedAt: !1117)
!1142 = !DILocation(line: 312, column: 54, scope: !1103, inlinedAt: !1117)
!1143 = !DILocation(line: 312, column: 40, scope: !1103, inlinedAt: !1117)
!1144 = !DILocation(line: 312, column: 27, scope: !1103, inlinedAt: !1117)
!1145 = !DILocation(line: 312, column: 24, scope: !1103, inlinedAt: !1117)
!1146 = !DILocation(line: 314, column: 15, scope: !1103, inlinedAt: !1117)
!1147 = !DILocation(line: 323, column: 20, scope: !1107, inlinedAt: !1117)
!1148 = !DILocation(line: 324, column: 15, scope: !1107, inlinedAt: !1117)
!1149 = !DILocation(line: 325, column: 15, scope: !1107, inlinedAt: !1117)
!1150 = !DILocation(line: 327, column: 15, scope: !1107, inlinedAt: !1117)
!1151 = !DILocation(line: 325, column: 21, scope: !1107, inlinedAt: !1117)
!1152 = !DILocation(line: 328, column: 26, scope: !1107, inlinedAt: !1117)
!1153 = !DILocation(line: 326, column: 19, scope: !1107, inlinedAt: !1117)
!1154 = !DILocation(line: 329, column: 15, scope: !1107, inlinedAt: !1117)
!1155 = !DILocation(line: 330, column: 28, scope: !1156, inlinedAt: !1117)
!1156 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 330, column: 19)
!1157 = !DILocation(line: 330, column: 19, scope: !1107, inlinedAt: !1117)
!1158 = !DILocation(line: 331, column: 17, scope: !1156, inlinedAt: !1117)
!1159 = !DILocation(line: 332, column: 15, scope: !1107, inlinedAt: !1117)
!1160 = !DILocation(line: 332, column: 21, scope: !1107, inlinedAt: !1117)
!1161 = !DILocation(line: 332, column: 30, scope: !1107, inlinedAt: !1117)
!1162 = !DILocation(line: 332, column: 51, scope: !1107, inlinedAt: !1117)
!1163 = !DILocation(line: 334, column: 29, scope: !1114, inlinedAt: !1117)
!1164 = !DILocation(line: 334, column: 35, scope: !1114, inlinedAt: !1117)
!1165 = !DILocation(line: 324, column: 27, scope: !1107, inlinedAt: !1117)
!1166 = !DILocation(line: 334, column: 19, scope: !1114, inlinedAt: !1117)
!1167 = !DILocation(line: 335, column: 22, scope: !1114, inlinedAt: !1117)
!1168 = !DILocation(line: 335, column: 28, scope: !1114, inlinedAt: !1117)
!1169 = !DILocation(line: 335, column: 19, scope: !1114, inlinedAt: !1117)
!1170 = !DILocation(line: 344, column: 21, scope: !1107, inlinedAt: !1117)
!1171 = !DILocation(line: 344, column: 15, scope: !1107, inlinedAt: !1117)
!1172 = !DILocation(line: 347, column: 13, scope: !1108, inlinedAt: !1117)
!1173 = !DILocation(line: 337, column: 19, scope: !1113, inlinedAt: !1117)
!1174 = !DILocation(line: 337, column: 25, scope: !1113, inlinedAt: !1117)
!1175 = !DILocation(line: 338, column: 23, scope: !1176, inlinedAt: !1117)
!1176 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 338, column: 23)
!1177 = !DILocation(line: 338, column: 51, scope: !1176, inlinedAt: !1117)
!1178 = !DILocation(line: 338, column: 23, scope: !1113, inlinedAt: !1117)
!1179 = !DILocation(line: 339, column: 21, scope: !1176, inlinedAt: !1117)
!1180 = !DILocation(line: 340, column: 41, scope: !1113, inlinedAt: !1117)
!1181 = !DILocation(line: 341, column: 19, scope: !1113, inlinedAt: !1117)
!1182 = !DILocation(line: 342, column: 17, scope: !1114, inlinedAt: !1117)
!1183 = !DILocation(line: 349, column: 15, scope: !1184, inlinedAt: !1117)
!1184 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 349, column: 15)
!1185 = !DILocation(line: 349, column: 41, scope: !1184, inlinedAt: !1117)
!1186 = !DILocation(line: 349, column: 15, scope: !1103, inlinedAt: !1117)
!1187 = !DILocation(line: 350, column: 13, scope: !1184, inlinedAt: !1117)
!1188 = !DILocation(line: 304, column: 22, scope: !1104, inlinedAt: !1117)
!1189 = distinct !{!1189, !1190, !1191}
!1190 = !DILocation(line: 304, column: 7, scope: !1105)
!1191 = !DILocation(line: 351, column: 9, scope: !1105)
!1192 = !DILocation(line: 353, column: 11, scope: !1193, inlinedAt: !1117)
!1193 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 353, column: 11)
!1194 = !DILocation(line: 353, column: 38, scope: !1193, inlinedAt: !1117)
!1195 = !DILocation(line: 353, column: 11, scope: !1099, inlinedAt: !1117)
!1196 = !DILocation(line: 354, column: 9, scope: !1193, inlinedAt: !1117)
!1197 = !DILocation(line: 706, column: 1, scope: !683)
!1198 = distinct !DISubprogram(name: "seq_fast", scope: !3, file: !3, line: 449, type: !1199, isLocal: true, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1201)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!30, !33, !33}
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1216, !1217, !1218, !1219}
!1202 = !DILocalVariable(name: "a", arg: 1, scope: !1198, file: !3, line: 449, type: !33)
!1203 = !DILocalVariable(name: "b", arg: 2, scope: !1198, file: !3, line: 449, type: !33)
!1204 = !DILocalVariable(name: "inf", scope: !1198, file: !3, line: 451, type: !30)
!1205 = !DILocalVariable(name: "p_len", scope: !1198, file: !3, line: 458, type: !80)
!1206 = !DILocalVariable(name: "q_len", scope: !1198, file: !3, line: 459, type: !80)
!1207 = !DILocalVariable(name: "inc_size", scope: !1198, file: !3, line: 463, type: !80)
!1208 = !DILocalVariable(name: "p0", scope: !1198, file: !3, line: 466, type: !22)
!1209 = !DILocalVariable(name: "p", scope: !1198, file: !3, line: 467, type: !22)
!1210 = !DILocalVariable(name: "q", scope: !1198, file: !3, line: 468, type: !22)
!1211 = !DILocalVariable(name: "q0", scope: !1198, file: !3, line: 469, type: !22)
!1212 = !DILocalVariable(name: "ok", scope: !1198, file: !3, line: 478, type: !30)
!1213 = !DILocalVariable(name: "buf_size", scope: !1214, file: !3, line: 484, type: !80)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 480, column: 5)
!1215 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 479, column: 7)
!1216 = !DILocalVariable(name: "buf", scope: !1214, file: !3, line: 485, type: !22)
!1217 = !DILocalVariable(name: "buf_end", scope: !1214, file: !3, line: 486, type: !33)
!1218 = !DILocalVariable(name: "bufp", scope: !1214, file: !3, line: 488, type: !22)
!1219 = !DILocalVariable(name: "buf_offset", scope: !1220, file: !3, line: 508, type: !80)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 507, column: 17)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 506, column: 19)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 501, column: 13)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 500, column: 15)
!1224 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 495, column: 9)
!1225 = !DILocation(line: 449, column: 23, scope: !1198)
!1226 = !DILocation(line: 449, column: 38, scope: !1198)
!1227 = !DILocation(line: 451, column: 14, scope: !1198)
!1228 = !DILocalVariable(name: "s", arg: 1, scope: !1229, file: !3, line: 433, type: !33)
!1229 = distinct !DISubprogram(name: "trim_leading_zeros", scope: !3, file: !3, line: 433, type: !1230, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!33, !33}
!1232 = !{!1228, !1233}
!1233 = !DILocalVariable(name: "p", scope: !1229, file: !3, line: 435, type: !33)
!1234 = !DILocation(line: 433, column: 33, scope: !1229, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 455, column: 7, scope: !1198)
!1236 = !DILocation(line: 435, column: 15, scope: !1229, inlinedAt: !1235)
!1237 = !DILocation(line: 436, column: 3, scope: !1229, inlinedAt: !1235)
!1238 = !DILocation(line: 436, column: 10, scope: !1229, inlinedAt: !1235)
!1239 = !DILocation(line: 437, column: 5, scope: !1229, inlinedAt: !1235)
!1240 = distinct !{!1240, !1241, !1242}
!1241 = !DILocation(line: 436, column: 3, scope: !1229)
!1242 = !DILocation(line: 437, column: 7, scope: !1229)
!1243 = !DILocation(line: 440, column: 16, scope: !1244, inlinedAt: !1235)
!1244 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 440, column: 7)
!1245 = !DILocation(line: 441, column: 5, scope: !1244, inlinedAt: !1235)
!1246 = !DILocation(line: 440, column: 7, scope: !1229, inlinedAt: !1235)
!1247 = !DILocation(line: 433, column: 33, scope: !1229, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 456, column: 7, scope: !1198)
!1249 = !DILocation(line: 435, column: 15, scope: !1229, inlinedAt: !1248)
!1250 = !DILocation(line: 436, column: 3, scope: !1229, inlinedAt: !1248)
!1251 = !DILocation(line: 436, column: 10, scope: !1229, inlinedAt: !1248)
!1252 = !DILocation(line: 437, column: 5, scope: !1229, inlinedAt: !1248)
!1253 = !DILocation(line: 440, column: 16, scope: !1244, inlinedAt: !1248)
!1254 = !DILocation(line: 441, column: 5, scope: !1244, inlinedAt: !1248)
!1255 = !DILocation(line: 440, column: 7, scope: !1229, inlinedAt: !1248)
!1256 = !DILocation(line: 458, column: 18, scope: !1198)
!1257 = !DILocation(line: 458, column: 10, scope: !1198)
!1258 = !DILocation(line: 459, column: 18, scope: !1198)
!1259 = !DILocation(line: 459, column: 28, scope: !1198)
!1260 = !DILocation(line: 459, column: 10, scope: !1198)
!1261 = !DILocation(line: 463, column: 21, scope: !1198)
!1262 = !DILocation(line: 463, column: 10, scope: !1198)
!1263 = !DILocation(line: 466, column: 32, scope: !1198)
!1264 = !DILocation(line: 466, column: 14, scope: !1198)
!1265 = !DILocation(line: 466, column: 9, scope: !1198)
!1266 = !DILocation(line: 467, column: 24, scope: !1198)
!1267 = !DILocation(line: 467, column: 35, scope: !1198)
!1268 = !DILocation(line: 467, column: 13, scope: !1198)
!1269 = !DILocation(line: 467, column: 9, scope: !1198)
!1270 = !DILocation(line: 470, column: 7, scope: !1198)
!1271 = !DILocation(line: 472, column: 12, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 471, column: 5)
!1273 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 470, column: 7)
!1274 = !DILocation(line: 469, column: 9, scope: !1198)
!1275 = !DILocation(line: 473, column: 22, scope: !1272)
!1276 = !DILocation(line: 473, column: 33, scope: !1272)
!1277 = !DILocation(line: 473, column: 51, scope: !1272)
!1278 = !DILocation(line: 473, column: 11, scope: !1272)
!1279 = !DILocation(line: 468, column: 9, scope: !1198)
!1280 = !DILocalVariable(name: "a", arg: 1, scope: !1281, file: !3, line: 421, type: !33)
!1281 = distinct !DISubprogram(name: "cmp", scope: !3, file: !3, line: 421, type: !1282, isLocal: true, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1284)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!25, !33, !80, !33, !80}
!1284 = !{!1280, !1285, !1286, !1287}
!1285 = !DILocalVariable(name: "a_len", arg: 2, scope: !1281, file: !3, line: 421, type: !80)
!1286 = !DILocalVariable(name: "b", arg: 3, scope: !1281, file: !3, line: 421, type: !33)
!1287 = !DILocalVariable(name: "b_len", arg: 4, scope: !1281, file: !3, line: 421, type: !80)
!1288 = !DILocation(line: 421, column: 18, scope: !1281, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 478, column: 20, scope: !1198)
!1290 = !DILocation(line: 421, column: 28, scope: !1281, inlinedAt: !1289)
!1291 = !DILocation(line: 421, column: 47, scope: !1281, inlinedAt: !1289)
!1292 = !DILocation(line: 421, column: 57, scope: !1281, inlinedAt: !1289)
!1293 = !DILocation(line: 423, column: 13, scope: !1294, inlinedAt: !1289)
!1294 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 423, column: 7)
!1295 = !DILocation(line: 423, column: 7, scope: !1281, inlinedAt: !1289)
!1296 = !DILocation(line: 425, column: 13, scope: !1297, inlinedAt: !1289)
!1297 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 425, column: 7)
!1298 = !DILocation(line: 425, column: 7, scope: !1281, inlinedAt: !1289)
!1299 = !DILocation(line: 427, column: 11, scope: !1281, inlinedAt: !1289)
!1300 = !DILocation(line: 478, column: 45, scope: !1198)
!1301 = !DILocation(line: 479, column: 7, scope: !1198)
!1302 = !DILocation(line: 484, column: 25, scope: !1214)
!1303 = !DILocation(line: 484, column: 14, scope: !1214)
!1304 = !DILocation(line: 485, column: 19, scope: !1214)
!1305 = !DILocation(line: 485, column: 13, scope: !1214)
!1306 = !DILocation(line: 486, column: 33, scope: !1214)
!1307 = !DILocation(line: 486, column: 19, scope: !1214)
!1308 = !DILocation(line: 488, column: 13, scope: !1214)
!1309 = !DILocalVariable(name: "__dest", arg: 1, scope: !1310, file: !884, line: 45, type: !1313)
!1310 = distinct !DISubprogram(name: "mempcpy", scope: !884, file: !884, line: 45, type: !1311, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1317)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!24, !1313, !1314, !80}
!1313 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!1314 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1317 = !{!1309, !1318, !1319}
!1318 = !DILocalVariable(name: "__src", arg: 2, scope: !1310, file: !884, line: 45, type: !1314)
!1319 = !DILocalVariable(name: "__len", arg: 3, scope: !1310, file: !884, line: 45, type: !80)
!1320 = !DILocation(line: 45, column: 1, scope: !1310, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 491, column: 14, scope: !1214)
!1322 = !DILocation(line: 48, column: 57, scope: !1310, inlinedAt: !1321)
!1323 = !DILocation(line: 48, column: 10, scope: !1310, inlinedAt: !1321)
!1324 = !DILocation(line: 494, column: 7, scope: !1214)
!1325 = !DILocation(line: 423, column: 13, scope: !1294, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 494, column: 21, scope: !1214)
!1327 = !DILocation(line: 494, column: 18, scope: !1214)
!1328 = !DILocation(line: 421, column: 18, scope: !1281, inlinedAt: !1326)
!1329 = !DILocation(line: 421, column: 28, scope: !1281, inlinedAt: !1326)
!1330 = !DILocation(line: 421, column: 47, scope: !1281, inlinedAt: !1326)
!1331 = !DILocation(line: 421, column: 57, scope: !1281, inlinedAt: !1326)
!1332 = !DILocation(line: 425, column: 13, scope: !1297, inlinedAt: !1326)
!1333 = !DILocation(line: 425, column: 7, scope: !1281, inlinedAt: !1326)
!1334 = !DILocation(line: 427, column: 11, scope: !1281, inlinedAt: !1326)
!1335 = !DILocation(line: 494, column: 46, scope: !1214)
!1336 = !DILocation(line: 496, column: 22, scope: !1224)
!1337 = !DILocation(line: 496, column: 21, scope: !1224)
!1338 = !DILocation(line: 496, column: 16, scope: !1224)
!1339 = !DILocation(line: 496, column: 19, scope: !1224)
!1340 = !DILocalVariable(name: "s", scope: !1341, file: !3, line: 404, type: !22)
!1341 = distinct !DISubprogram(name: "incr", scope: !3, file: !3, line: 402, type: !1342, isLocal: true, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !686, !604}
!1344 = !{!1345, !1346, !1340, !1347}
!1345 = !DILocalVariable(name: "s0", arg: 1, scope: !1341, file: !3, line: 402, type: !686)
!1346 = !DILocalVariable(name: "s_len", arg: 2, scope: !1341, file: !3, line: 402, type: !604)
!1347 = !DILocalVariable(name: "endp", scope: !1341, file: !3, line: 405, type: !22)
!1348 = !DILocation(line: 404, column: 9, scope: !1341, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 497, column: 11, scope: !1224)
!1350 = !DILocation(line: 405, column: 18, scope: !1341, inlinedAt: !1349)
!1351 = !DILocation(line: 405, column: 27, scope: !1341, inlinedAt: !1349)
!1352 = !DILocation(line: 405, column: 9, scope: !1341, inlinedAt: !1349)
!1353 = !DILocation(line: 407, column: 3, scope: !1341, inlinedAt: !1349)
!1354 = distinct !{!1354, !1355, !1356}
!1355 = !DILocation(line: 407, column: 3, scope: !1341)
!1356 = !DILocation(line: 413, column: 19, scope: !1341)
!1357 = !DILocation(line: 409, column: 18, scope: !1358, inlinedAt: !1349)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 409, column: 11)
!1359 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 408, column: 5)
!1360 = !DILocation(line: 409, column: 21, scope: !1358, inlinedAt: !1349)
!1361 = !DILocation(line: 409, column: 11, scope: !1359, inlinedAt: !1349)
!1362 = !DILocation(line: 411, column: 12, scope: !1359, inlinedAt: !1349)
!1363 = !DILocation(line: 411, column: 15, scope: !1359, inlinedAt: !1349)
!1364 = !DILocation(line: 413, column: 15, scope: !1341, inlinedAt: !1349)
!1365 = !DILocation(line: 412, column: 5, scope: !1359, inlinedAt: !1349)
!1366 = !DILocation(line: 414, column: 4, scope: !1341, inlinedAt: !1349)
!1367 = !DILocation(line: 414, column: 12, scope: !1341, inlinedAt: !1349)
!1368 = !DILocation(line: 415, column: 3, scope: !1341, inlinedAt: !1349)
!1369 = !DILocation(line: 416, column: 1, scope: !1341, inlinedAt: !1349)
!1370 = !DILocation(line: 500, column: 21, scope: !1223)
!1371 = !DILocation(line: 500, column: 15, scope: !1224)
!1372 = !DILocation(line: 502, column: 24, scope: !1222)
!1373 = !DILocation(line: 503, column: 43, scope: !1222)
!1374 = !DILocation(line: 503, column: 20, scope: !1222)
!1375 = !DILocation(line: 504, column: 31, scope: !1222)
!1376 = !DILocation(line: 504, column: 50, scope: !1222)
!1377 = !DILocation(line: 504, column: 19, scope: !1222)
!1378 = !DILocation(line: 506, column: 45, scope: !1221)
!1379 = !DILocation(line: 506, column: 28, scope: !1221)
!1380 = !DILocation(line: 506, column: 19, scope: !1222)
!1381 = !DILocation(line: 508, column: 44, scope: !1220)
!1382 = !DILocation(line: 508, column: 26, scope: !1220)
!1383 = !DILocation(line: 510, column: 25, scope: !1220)
!1384 = !DILocation(line: 511, column: 33, scope: !1220)
!1385 = !DILocation(line: 512, column: 30, scope: !1220)
!1386 = !DILocation(line: 513, column: 17, scope: !1220)
!1387 = !DILocation(line: 45, column: 1, scope: !1310, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 516, column: 18, scope: !1224)
!1389 = !DILocation(line: 48, column: 57, scope: !1310, inlinedAt: !1388)
!1390 = !DILocation(line: 48, column: 10, scope: !1310, inlinedAt: !1388)
!1391 = !DILocation(line: 519, column: 23, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 519, column: 15)
!1393 = !DILocation(line: 519, column: 37, scope: !1392)
!1394 = !DILocation(line: 519, column: 15, scope: !1224)
!1395 = !DILocation(line: 521, column: 19, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 521, column: 19)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 520, column: 13)
!1398 = !DILocation(line: 521, column: 55, scope: !1396)
!1399 = !DILocation(line: 521, column: 19, scope: !1397)
!1400 = distinct !{!1400, !1324, !1401}
!1401 = !DILocation(line: 525, column: 9, scope: !1214)
!1402 = !DILocation(line: 522, column: 17, scope: !1396)
!1403 = !DILocation(line: 528, column: 12, scope: !1214)
!1404 = !DILocation(line: 528, column: 15, scope: !1214)
!1405 = !DILocation(line: 529, column: 11, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 529, column: 11)
!1407 = !DILocation(line: 529, column: 47, scope: !1406)
!1408 = !DILocation(line: 529, column: 11, scope: !1214)
!1409 = !DILocation(line: 530, column: 9, scope: !1406)
!1410 = !DILocation(line: 535, column: 3, scope: !1198)
!1411 = !DILocation(line: 536, column: 3, scope: !1198)
!1412 = !DILocation(line: 537, column: 3, scope: !1198)
!1413 = distinct !DISubprogram(name: "scan_arg", scope: !3, file: !3, line: 141, type: !1414, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1416)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!74, !33}
!1416 = !{!1417, !1418, !1419, !1420, !1423, !1424}
!1417 = !DILocalVariable(name: "arg", arg: 1, scope: !1413, file: !3, line: 141, type: !33)
!1418 = !DILocalVariable(name: "ret", scope: !1413, file: !3, line: 143, type: !74)
!1419 = !DILocalVariable(name: "decimal_point", scope: !1413, file: !3, line: 167, type: !33)
!1420 = !DILocalVariable(name: "fraction_len", scope: !1421, file: !3, line: 174, type: !80)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 173, column: 5)
!1422 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 172, column: 7)
!1423 = !DILocalVariable(name: "e", scope: !1421, file: !3, line: 187, type: !33)
!1424 = !DILocalVariable(name: "exponent", scope: !1425, file: !3, line: 192, type: !1427)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 191, column: 9)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 190, column: 11)
!1427 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1428 = !DILocation(line: 141, column: 23, scope: !1413)
!1429 = !DILocation(line: 143, column: 3, scope: !1413)
!1430 = !DILocation(line: 145, column: 35, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 145, column: 7)
!1432 = !DILocation(line: 145, column: 9, scope: !1431)
!1433 = !DILocation(line: 145, column: 7, scope: !1413)
!1434 = !DILocation(line: 147, column: 20, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 146, column: 5)
!1436 = !DILocation(line: 147, column: 62, scope: !1435)
!1437 = !DILocation(line: 147, column: 7, scope: !1435)
!1438 = !DILocation(line: 148, column: 7, scope: !1435)
!1439 = !DILocation(line: 151, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 151, column: 7)
!1441 = !{!1049, !1050, i64 0}
!1442 = !DILocation(line: 151, column: 7, scope: !1413)
!1443 = !DILocation(line: 153, column: 20, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 152, column: 5)
!1445 = !DILocation(line: 153, column: 50, scope: !1444)
!1446 = !DILocation(line: 154, column: 14, scope: !1444)
!1447 = !DILocation(line: 153, column: 7, scope: !1444)
!1448 = !DILocation(line: 155, column: 7, scope: !1444)
!1449 = !DILocation(line: 159, column: 10, scope: !1413)
!1450 = !DILocation(line: 159, column: 3, scope: !1413)
!1451 = !{!1452, !1452, i64 0}
!1452 = !{!"short", !652, i64 0}
!1453 = !DILocation(line: 159, column: 44, scope: !1413)
!1454 = !DILocation(line: 159, column: 36, scope: !1413)
!1455 = !DILocation(line: 160, column: 8, scope: !1413)
!1456 = distinct !{!1456, !1450, !1455}
!1457 = !DILocation(line: 163, column: 7, scope: !1413)
!1458 = !DILocation(line: 163, column: 13, scope: !1413)
!1459 = !{!1049, !1051, i64 16}
!1460 = !DILocation(line: 164, column: 7, scope: !1413)
!1461 = !DILocation(line: 164, column: 17, scope: !1413)
!1462 = !DILocation(line: 167, column: 31, scope: !1413)
!1463 = !DILocation(line: 167, column: 15, scope: !1413)
!1464 = !DILocation(line: 168, column: 9, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 168, column: 7)
!1466 = !DILocation(line: 168, column: 23, scope: !1465)
!1467 = !DILocation(line: 168, column: 28, scope: !1465)
!1468 = !DILocation(line: 168, column: 7, scope: !1413)
!1469 = !DILocation(line: 169, column: 19, scope: !1465)
!1470 = !DILocation(line: 169, column: 5, scope: !1465)
!1471 = !DILocation(line: 172, column: 13, scope: !1422)
!1472 = !DILocation(line: 172, column: 9, scope: !1422)
!1473 = !DILocation(line: 172, column: 37, scope: !1422)
!1474 = !DILocation(line: 172, column: 34, scope: !1422)
!1475 = !DILocation(line: 174, column: 14, scope: !1421)
!1476 = !DILocation(line: 175, column: 19, scope: !1421)
!1477 = !DILocation(line: 175, column: 17, scope: !1421)
!1478 = !DILocation(line: 177, column: 11, scope: !1421)
!1479 = !DILocation(line: 179, column: 49, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 178, column: 9)
!1481 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 177, column: 11)
!1482 = !DILocation(line: 179, column: 26, scope: !1480)
!1483 = !DILocation(line: 180, column: 28, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 180, column: 15)
!1485 = !DILocation(line: 180, column: 15, scope: !1480)
!1486 = !DILocation(line: 181, column: 29, scope: !1484)
!1487 = !DILocation(line: 181, column: 27, scope: !1484)
!1488 = !DILocation(line: 182, column: 38, scope: !1480)
!1489 = !DILocation(line: 182, column: 25, scope: !1480)
!1490 = !DILocation(line: 184, column: 42, scope: !1480)
!1491 = !DILocation(line: 185, column: 28, scope: !1480)
!1492 = !DILocation(line: 185, column: 33, scope: !1480)
!1493 = !DILocation(line: 182, column: 21, scope: !1480)
!1494 = !DILocation(line: 186, column: 9, scope: !1480)
!1495 = !DILocation(line: 187, column: 23, scope: !1421)
!1496 = !DILocation(line: 187, column: 19, scope: !1421)
!1497 = !DILocation(line: 188, column: 13, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 188, column: 11)
!1499 = !DILocation(line: 188, column: 11, scope: !1421)
!1500 = !DILocation(line: 189, column: 13, scope: !1498)
!1501 = !DILocation(line: 190, column: 11, scope: !1426)
!1502 = !DILocation(line: 190, column: 11, scope: !1421)
!1503 = !DILocation(line: 192, column: 37, scope: !1425)
!1504 = !DILocation(line: 192, column: 27, scope: !1425)
!1505 = !DILocation(line: 192, column: 16, scope: !1425)
!1506 = !DILocation(line: 193, column: 37, scope: !1425)
!1507 = !DILocation(line: 194, column: 45, scope: !1425)
!1508 = !DILocation(line: 193, column: 28, scope: !1425)
!1509 = !DILocation(line: 193, column: 25, scope: !1425)
!1510 = !DILocation(line: 196, column: 24, scope: !1425)
!1511 = !DILocation(line: 196, column: 42, scope: !1425)
!1512 = !DILocation(line: 196, column: 21, scope: !1425)
!1513 = !DILocation(line: 196, column: 37, scope: !1425)
!1514 = !DILocation(line: 198, column: 15, scope: !1425)
!1515 = !DILocation(line: 200, column: 19, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 199, column: 13)
!1517 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 198, column: 15)
!1518 = !DILocation(line: 202, column: 42, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 202, column: 23)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 201, column: 17)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 200, column: 19)
!1522 = !DILocation(line: 202, column: 25, scope: !1519)
!1523 = !DILocation(line: 207, column: 27, scope: !1516)
!1524 = !DILocation(line: 207, column: 26, scope: !1516)
!1525 = !DILocation(line: 208, column: 13, scope: !1516)
!1526 = !DILocation(line: 211, column: 33, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 211, column: 19)
!1528 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 210, column: 13)
!1529 = !DILocation(line: 211, column: 50, scope: !1527)
!1530 = !DILocation(line: 211, column: 58, scope: !1527)
!1531 = !DILocation(line: 211, column: 55, scope: !1527)
!1532 = !DILocation(line: 212, column: 26, scope: !1527)
!1533 = !DILocation(line: 212, column: 17, scope: !1527)
!1534 = !DILocation(line: 213, column: 27, scope: !1528)
!1535 = !DILocation(line: 213, column: 24, scope: !1528)
!1536 = !DILocation(line: 215, column: 21, scope: !1425)
!1537 = !DILocation(line: 216, column: 9, scope: !1425)
!1538 = !DILocation(line: 219, column: 10, scope: !1413)
!1539 = !{i64 0, i64 16, !1540, i64 16, i64 8, !1541, i64 24, i64 4, !728}
!1540 = !{!1050, !1050, i64 0}
!1541 = !{!1051, !1051, i64 0}
!1542 = !DILocation(line: 220, column: 1, scope: !1413)
!1543 = distinct !DISubprogram(name: "io_error", scope: !3, file: !3, line: 283, type: !659, isLocal: true, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !109)
!1544 = !DILocation(line: 286, column: 3, scope: !1543)
!1545 = !DILocation(line: 287, column: 3, scope: !1543)
!1546 = distinct !DISubprogram(name: "c_strtold", scope: !139, file: !139, line: 66, type: !1547, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !113, variables: !1549)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!78, !33, !686}
!1549 = !{!1550, !1551, !1552, !1553}
!1550 = !DILocalVariable(name: "nptr", arg: 1, scope: !1546, file: !139, line: 66, type: !33)
!1551 = !DILocalVariable(name: "endptr", arg: 2, scope: !1546, file: !139, line: 66, type: !686)
!1552 = !DILocalVariable(name: "r", scope: !1546, file: !139, line: 68, type: !78)
!1553 = !DILocalVariable(name: "locale", scope: !1546, file: !139, line: 72, type: !116)
!1554 = !DILocation(line: 66, column: 23, scope: !1546)
!1555 = !DILocation(line: 66, column: 36, scope: !1546)
!1556 = !DILocation(line: 58, column: 8, scope: !1557, inlinedAt: !1561)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !139, line: 58, column: 7)
!1558 = distinct !DISubprogram(name: "c_locale", scope: !139, file: !139, line: 56, type: !1559, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !113, variables: !109)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!116}
!1561 = distinct !DILocation(line: 72, column: 21, scope: !1546)
!1562 = !DILocation(line: 58, column: 7, scope: !1558, inlinedAt: !1561)
!1563 = !DILocation(line: 59, column: 22, scope: !1557, inlinedAt: !1561)
!1564 = !DILocation(line: 59, column: 20, scope: !1557, inlinedAt: !1561)
!1565 = !DILocation(line: 59, column: 5, scope: !1557, inlinedAt: !1561)
!1566 = !DILocation(line: 60, column: 10, scope: !1558, inlinedAt: !1561)
!1567 = !DILocation(line: 72, column: 12, scope: !1546)
!1568 = !DILocation(line: 73, column: 8, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1546, file: !139, line: 73, column: 7)
!1570 = !DILocation(line: 73, column: 7, scope: !1546)
!1571 = !DILocation(line: 75, column: 11, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !139, line: 75, column: 11)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !139, line: 74, column: 5)
!1574 = !DILocation(line: 75, column: 11, scope: !1573)
!1575 = !DILocation(line: 76, column: 17, scope: !1572)
!1576 = !DILocation(line: 76, column: 9, scope: !1572)
!1577 = !DILocation(line: 80, column: 7, scope: !1546)
!1578 = !DILocation(line: 68, column: 10, scope: !1546)
!1579 = !DILocation(line: 111, column: 3, scope: !1546)
!1580 = !DILocation(line: 112, column: 1, scope: !1546)
!1581 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !148, file: !148, line: 41, type: !39, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1582)
!1582 = !{!1583}
!1583 = !DILocalVariable(name: "file", arg: 1, scope: !1581, file: !148, line: 41, type: !33)
!1584 = !DILocation(line: 41, column: 41, scope: !1581)
!1585 = !DILocation(line: 43, column: 13, scope: !1581)
!1586 = !DILocation(line: 44, column: 1, scope: !1581)
!1587 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !148, file: !148, line: 78, type: !1588, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1590)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !30}
!1590 = !{!1591}
!1591 = !DILocalVariable(name: "ignore", arg: 1, scope: !1587, file: !148, line: 78, type: !30)
!1592 = !DILocation(line: 78, column: 37, scope: !1587)
!1593 = !DILocation(line: 80, column: 16, scope: !1587)
!1594 = !{!1595, !1595, i64 0}
!1595 = !{!"_Bool", !652, i64 0}
!1596 = !DILocation(line: 81, column: 1, scope: !1587)
!1597 = distinct !DISubprogram(name: "close_stdout", scope: !148, file: !148, line: 107, type: !659, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !1598)
!1598 = !{!1599}
!1599 = !DILocalVariable(name: "write_error", scope: !1600, file: !148, line: 112, type: !33)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !148, line: 111, column: 5)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !148, line: 109, column: 7)
!1602 = !DILocation(line: 109, column: 21, scope: !1601)
!1603 = !DILocation(line: 109, column: 7, scope: !1601)
!1604 = !DILocation(line: 109, column: 29, scope: !1601)
!1605 = !DILocation(line: 110, column: 7, scope: !1601)
!1606 = !DILocation(line: 110, column: 12, scope: !1601)
!1607 = !{i8 0, i8 2}
!1608 = !DILocation(line: 114, column: 19, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1600, file: !148, line: 113, column: 11)
!1610 = !DILocation(line: 110, column: 25, scope: !1601)
!1611 = !DILocation(line: 110, column: 28, scope: !1601)
!1612 = !DILocation(line: 110, column: 34, scope: !1601)
!1613 = !DILocation(line: 109, column: 7, scope: !1597)
!1614 = !DILocation(line: 112, column: 33, scope: !1600)
!1615 = !DILocation(line: 112, column: 19, scope: !1600)
!1616 = !DILocation(line: 113, column: 11, scope: !1609)
!1617 = !DILocation(line: 113, column: 11, scope: !1600)
!1618 = !DILocation(line: 114, column: 36, scope: !1609)
!1619 = !DILocation(line: 114, column: 9, scope: !1609)
!1620 = !DILocation(line: 117, column: 9, scope: !1609)
!1621 = !DILocation(line: 119, column: 14, scope: !1600)
!1622 = !DILocation(line: 119, column: 7, scope: !1600)
!1623 = !DILocation(line: 122, column: 22, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1597, file: !148, line: 122, column: 8)
!1625 = !DILocation(line: 122, column: 8, scope: !1624)
!1626 = !DILocation(line: 122, column: 30, scope: !1624)
!1627 = !DILocation(line: 122, column: 8, scope: !1597)
!1628 = !DILocation(line: 123, column: 13, scope: !1624)
!1629 = !DILocation(line: 123, column: 6, scope: !1624)
!1630 = !DILocation(line: 124, column: 1, scope: !1597)
!1631 = distinct !DISubprogram(name: "set_program_name", scope: !162, file: !162, line: 39, type: !39, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !158, variables: !1632)
!1632 = !{!1633, !1634, !1635}
!1633 = !DILocalVariable(name: "argv0", arg: 1, scope: !1631, file: !162, line: 39, type: !33)
!1634 = !DILocalVariable(name: "slash", scope: !1631, file: !162, line: 46, type: !33)
!1635 = !DILocalVariable(name: "base", scope: !1631, file: !162, line: 47, type: !33)
!1636 = !DILocation(line: 39, column: 31, scope: !1631)
!1637 = !DILocation(line: 51, column: 13, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1631, file: !162, line: 51, column: 7)
!1639 = !DILocation(line: 51, column: 7, scope: !1631)
!1640 = !DILocation(line: 55, column: 14, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1638, file: !162, line: 52, column: 5)
!1642 = !DILocation(line: 54, column: 7, scope: !1641)
!1643 = !DILocation(line: 56, column: 7, scope: !1641)
!1644 = !DILocation(line: 59, column: 11, scope: !1631)
!1645 = !DILocation(line: 46, column: 15, scope: !1631)
!1646 = !DILocation(line: 60, column: 17, scope: !1631)
!1647 = !DILocation(line: 60, column: 33, scope: !1631)
!1648 = !DILocation(line: 60, column: 11, scope: !1631)
!1649 = !DILocation(line: 47, column: 15, scope: !1631)
!1650 = !DILocation(line: 61, column: 12, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1631, file: !162, line: 61, column: 7)
!1652 = !DILocation(line: 61, column: 20, scope: !1651)
!1653 = !DILocation(line: 61, column: 25, scope: !1651)
!1654 = !DILocation(line: 61, column: 42, scope: !1651)
!1655 = !DILocation(line: 61, column: 28, scope: !1651)
!1656 = !DILocation(line: 61, column: 61, scope: !1651)
!1657 = !DILocation(line: 61, column: 7, scope: !1631)
!1658 = !DILocation(line: 64, column: 11, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !162, line: 64, column: 11)
!1660 = distinct !DILexicalBlock(scope: !1651, file: !162, line: 62, column: 5)
!1661 = !DILocation(line: 64, column: 36, scope: !1659)
!1662 = !DILocation(line: 64, column: 11, scope: !1660)
!1663 = !DILocation(line: 66, column: 24, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !162, line: 65, column: 9)
!1665 = !DILocation(line: 70, column: 41, scope: !1664)
!1666 = !DILocation(line: 72, column: 9, scope: !1664)
!1667 = !DILocation(line: 84, column: 16, scope: !1631)
!1668 = !DILocation(line: 90, column: 27, scope: !1631)
!1669 = !DILocation(line: 92, column: 1, scope: !1631)
!1670 = distinct !DISubprogram(name: "clone_quoting_options", scope: !191, file: !191, line: 114, type: !1671, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !1674)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!1673, !1673}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!1674 = !{!1675, !1676, !1677}
!1675 = !DILocalVariable(name: "o", arg: 1, scope: !1670, file: !191, line: 114, type: !1673)
!1676 = !DILocalVariable(name: "e", scope: !1670, file: !191, line: 116, type: !25)
!1677 = !DILocalVariable(name: "p", scope: !1670, file: !191, line: 117, type: !1673)
!1678 = !DILocation(line: 114, column: 48, scope: !1670)
!1679 = !DILocation(line: 116, column: 11, scope: !1670)
!1680 = !DILocation(line: 116, column: 7, scope: !1670)
!1681 = !DILocation(line: 117, column: 40, scope: !1670)
!1682 = !DILocation(line: 117, column: 31, scope: !1670)
!1683 = !DILocation(line: 117, column: 27, scope: !1670)
!1684 = !DILocation(line: 119, column: 9, scope: !1670)
!1685 = !DILocation(line: 120, column: 3, scope: !1670)
!1686 = distinct !DISubprogram(name: "get_quoting_style", scope: !191, file: !191, line: 125, type: !1687, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !1691)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!168, !1689}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!1691 = !{!1692}
!1692 = !DILocalVariable(name: "o", arg: 1, scope: !1686, file: !191, line: 125, type: !1689)
!1693 = !DILocation(line: 125, column: 50, scope: !1686)
!1694 = !DILocation(line: 127, column: 11, scope: !1686)
!1695 = !DILocation(line: 127, column: 46, scope: !1686)
!1696 = !{!1697, !652, i64 0}
!1697 = !{!"quoting_options", !652, i64 0, !729, i64 4, !652, i64 8, !651, i64 40, !651, i64 48}
!1698 = !DILocation(line: 127, column: 3, scope: !1686)
!1699 = distinct !DISubprogram(name: "set_quoting_style", scope: !191, file: !191, line: 133, type: !1700, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !1673, !168}
!1702 = !{!1703, !1704}
!1703 = !DILocalVariable(name: "o", arg: 1, scope: !1699, file: !191, line: 133, type: !1673)
!1704 = !DILocalVariable(name: "s", arg: 2, scope: !1699, file: !191, line: 133, type: !168)
!1705 = !DILocation(line: 133, column: 44, scope: !1699)
!1706 = !DILocation(line: 133, column: 66, scope: !1699)
!1707 = !DILocation(line: 135, column: 4, scope: !1699)
!1708 = !DILocation(line: 135, column: 39, scope: !1699)
!1709 = !DILocation(line: 135, column: 45, scope: !1699)
!1710 = !DILocation(line: 136, column: 1, scope: !1699)
!1711 = distinct !DISubprogram(name: "set_char_quoting", scope: !191, file: !191, line: 144, type: !1712, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!25, !1673, !23, !25}
!1714 = !{!1715, !1716, !1717, !1718, !1719, !1721, !1722}
!1715 = !DILocalVariable(name: "o", arg: 1, scope: !1711, file: !191, line: 144, type: !1673)
!1716 = !DILocalVariable(name: "c", arg: 2, scope: !1711, file: !191, line: 144, type: !23)
!1717 = !DILocalVariable(name: "i", arg: 3, scope: !1711, file: !191, line: 144, type: !25)
!1718 = !DILocalVariable(name: "uc", scope: !1711, file: !191, line: 146, type: !584)
!1719 = !DILocalVariable(name: "p", scope: !1711, file: !191, line: 147, type: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1721 = !DILocalVariable(name: "shift", scope: !1711, file: !191, line: 149, type: !25)
!1722 = !DILocalVariable(name: "r", scope: !1711, file: !191, line: 150, type: !25)
!1723 = !DILocation(line: 144, column: 43, scope: !1711)
!1724 = !DILocation(line: 144, column: 51, scope: !1711)
!1725 = !DILocation(line: 144, column: 58, scope: !1711)
!1726 = !DILocation(line: 146, column: 17, scope: !1711)
!1727 = !DILocation(line: 148, column: 6, scope: !1711)
!1728 = !DILocation(line: 148, column: 62, scope: !1711)
!1729 = !DILocation(line: 148, column: 57, scope: !1711)
!1730 = !DILocation(line: 147, column: 17, scope: !1711)
!1731 = !DILocation(line: 149, column: 18, scope: !1711)
!1732 = !DILocation(line: 149, column: 15, scope: !1711)
!1733 = !DILocation(line: 149, column: 7, scope: !1711)
!1734 = !DILocation(line: 150, column: 12, scope: !1711)
!1735 = !DILocation(line: 150, column: 15, scope: !1711)
!1736 = !DILocation(line: 150, column: 25, scope: !1711)
!1737 = !DILocation(line: 150, column: 7, scope: !1711)
!1738 = !DILocation(line: 151, column: 13, scope: !1711)
!1739 = !DILocation(line: 151, column: 18, scope: !1711)
!1740 = !DILocation(line: 151, column: 23, scope: !1711)
!1741 = !DILocation(line: 151, column: 6, scope: !1711)
!1742 = !DILocation(line: 152, column: 3, scope: !1711)
!1743 = distinct !DISubprogram(name: "set_quoting_flags", scope: !191, file: !191, line: 160, type: !1744, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !1746)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!25, !1673, !25}
!1746 = !{!1747, !1748, !1749}
!1747 = !DILocalVariable(name: "o", arg: 1, scope: !1743, file: !191, line: 160, type: !1673)
!1748 = !DILocalVariable(name: "i", arg: 2, scope: !1743, file: !191, line: 160, type: !25)
!1749 = !DILocalVariable(name: "r", scope: !1743, file: !191, line: 162, type: !25)
!1750 = !DILocation(line: 160, column: 44, scope: !1743)
!1751 = !DILocation(line: 160, column: 51, scope: !1743)
!1752 = !DILocation(line: 163, column: 8, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1743, file: !191, line: 163, column: 7)
!1754 = !DILocation(line: 163, column: 7, scope: !1743)
!1755 = !DILocation(line: 165, column: 10, scope: !1743)
!1756 = !{!1697, !729, i64 4}
!1757 = !DILocation(line: 162, column: 7, scope: !1743)
!1758 = !DILocation(line: 166, column: 12, scope: !1743)
!1759 = !DILocation(line: 167, column: 3, scope: !1743)
!1760 = distinct !DISubprogram(name: "set_custom_quoting", scope: !191, file: !191, line: 171, type: !1761, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !1673, !33, !33}
!1763 = !{!1764, !1765, !1766}
!1764 = !DILocalVariable(name: "o", arg: 1, scope: !1760, file: !191, line: 171, type: !1673)
!1765 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1760, file: !191, line: 172, type: !33)
!1766 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1760, file: !191, line: 172, type: !33)
!1767 = !DILocation(line: 171, column: 45, scope: !1760)
!1768 = !DILocation(line: 172, column: 33, scope: !1760)
!1769 = !DILocation(line: 172, column: 57, scope: !1760)
!1770 = !DILocation(line: 174, column: 8, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1760, file: !191, line: 174, column: 7)
!1772 = !DILocation(line: 174, column: 7, scope: !1760)
!1773 = !DILocation(line: 176, column: 6, scope: !1760)
!1774 = !DILocation(line: 176, column: 12, scope: !1760)
!1775 = !DILocation(line: 177, column: 8, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1760, file: !191, line: 177, column: 7)
!1777 = !DILocation(line: 177, column: 23, scope: !1776)
!1778 = !DILocation(line: 177, column: 19, scope: !1776)
!1779 = !DILocation(line: 178, column: 5, scope: !1776)
!1780 = !DILocation(line: 179, column: 6, scope: !1760)
!1781 = !DILocation(line: 179, column: 17, scope: !1760)
!1782 = !{!1697, !651, i64 40}
!1783 = !DILocation(line: 180, column: 6, scope: !1760)
!1784 = !DILocation(line: 180, column: 18, scope: !1760)
!1785 = !{!1697, !651, i64 48}
!1786 = !DILocation(line: 181, column: 1, scope: !1760)
!1787 = distinct !DISubprogram(name: "quotearg_buffer", scope: !191, file: !191, line: 776, type: !1788, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!80, !22, !80, !33, !80, !1689}
!1790 = !{!1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798}
!1791 = !DILocalVariable(name: "buffer", arg: 1, scope: !1787, file: !191, line: 776, type: !22)
!1792 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1787, file: !191, line: 776, type: !80)
!1793 = !DILocalVariable(name: "arg", arg: 3, scope: !1787, file: !191, line: 777, type: !33)
!1794 = !DILocalVariable(name: "argsize", arg: 4, scope: !1787, file: !191, line: 777, type: !80)
!1795 = !DILocalVariable(name: "o", arg: 5, scope: !1787, file: !191, line: 778, type: !1689)
!1796 = !DILocalVariable(name: "p", scope: !1787, file: !191, line: 780, type: !1689)
!1797 = !DILocalVariable(name: "e", scope: !1787, file: !191, line: 781, type: !25)
!1798 = !DILocalVariable(name: "r", scope: !1787, file: !191, line: 782, type: !80)
!1799 = !DILocation(line: 776, column: 24, scope: !1787)
!1800 = !DILocation(line: 776, column: 39, scope: !1787)
!1801 = !DILocation(line: 777, column: 30, scope: !1787)
!1802 = !DILocation(line: 777, column: 42, scope: !1787)
!1803 = !DILocation(line: 778, column: 48, scope: !1787)
!1804 = !DILocation(line: 780, column: 37, scope: !1787)
!1805 = !DILocation(line: 780, column: 33, scope: !1787)
!1806 = !DILocation(line: 781, column: 11, scope: !1787)
!1807 = !DILocation(line: 781, column: 7, scope: !1787)
!1808 = !DILocation(line: 783, column: 43, scope: !1787)
!1809 = !DILocation(line: 783, column: 53, scope: !1787)
!1810 = !DILocation(line: 783, column: 60, scope: !1787)
!1811 = !DILocation(line: 784, column: 43, scope: !1787)
!1812 = !DILocation(line: 784, column: 58, scope: !1787)
!1813 = !DILocation(line: 782, column: 14, scope: !1787)
!1814 = !DILocation(line: 782, column: 10, scope: !1787)
!1815 = !DILocation(line: 785, column: 9, scope: !1787)
!1816 = !DILocation(line: 786, column: 3, scope: !1787)
!1817 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !191, file: !191, line: 248, type: !1818, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !1822)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!80, !22, !80, !33, !80, !168, !25, !1820, !33, !33}
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1847, !1848, !1849, !1850, !1851, !1854, !1855, !1873, !1876, !1877, !1884}
!1823 = !DILocalVariable(name: "buffer", arg: 1, scope: !1817, file: !191, line: 248, type: !22)
!1824 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1817, file: !191, line: 248, type: !80)
!1825 = !DILocalVariable(name: "arg", arg: 3, scope: !1817, file: !191, line: 249, type: !33)
!1826 = !DILocalVariable(name: "argsize", arg: 4, scope: !1817, file: !191, line: 249, type: !80)
!1827 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1817, file: !191, line: 250, type: !168)
!1828 = !DILocalVariable(name: "flags", arg: 6, scope: !1817, file: !191, line: 250, type: !25)
!1829 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1817, file: !191, line: 251, type: !1820)
!1830 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1817, file: !191, line: 252, type: !33)
!1831 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1817, file: !191, line: 253, type: !33)
!1832 = !DILocalVariable(name: "i", scope: !1817, file: !191, line: 255, type: !80)
!1833 = !DILocalVariable(name: "len", scope: !1817, file: !191, line: 256, type: !80)
!1834 = !DILocalVariable(name: "orig_buffersize", scope: !1817, file: !191, line: 257, type: !80)
!1835 = !DILocalVariable(name: "quote_string", scope: !1817, file: !191, line: 258, type: !33)
!1836 = !DILocalVariable(name: "quote_string_len", scope: !1817, file: !191, line: 259, type: !80)
!1837 = !DILocalVariable(name: "backslash_escapes", scope: !1817, file: !191, line: 260, type: !30)
!1838 = !DILocalVariable(name: "unibyte_locale", scope: !1817, file: !191, line: 261, type: !30)
!1839 = !DILocalVariable(name: "elide_outer_quotes", scope: !1817, file: !191, line: 262, type: !30)
!1840 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1817, file: !191, line: 263, type: !30)
!1841 = !DILocalVariable(name: "encountered_single_quote", scope: !1817, file: !191, line: 264, type: !30)
!1842 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1817, file: !191, line: 265, type: !30)
!1843 = !DILocalVariable(name: "c", scope: !1844, file: !191, line: 394, type: !584)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !191, line: 393, column: 5)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !191, line: 392, column: 3)
!1846 = distinct !DILexicalBlock(scope: !1817, file: !191, line: 392, column: 3)
!1847 = !DILocalVariable(name: "esc", scope: !1844, file: !191, line: 395, type: !584)
!1848 = !DILocalVariable(name: "is_right_quote", scope: !1844, file: !191, line: 396, type: !30)
!1849 = !DILocalVariable(name: "escaping", scope: !1844, file: !191, line: 397, type: !30)
!1850 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1844, file: !191, line: 398, type: !30)
!1851 = !DILocalVariable(name: "m", scope: !1852, file: !191, line: 602, type: !80)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !191, line: 600, column: 11)
!1853 = distinct !DILexicalBlock(scope: !1844, file: !191, line: 418, column: 9)
!1854 = !DILocalVariable(name: "printable", scope: !1852, file: !191, line: 604, type: !30)
!1855 = !DILocalVariable(name: "mbstate", scope: !1856, file: !191, line: 613, type: !1858)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !191, line: 612, column: 15)
!1857 = distinct !DILexicalBlock(scope: !1852, file: !191, line: 606, column: 17)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1859, line: 6, baseType: !1860)
!1859 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1861, line: 21, baseType: !1862)
!1861 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1861, line: 13, size: 64, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1862, file: !1861, line: 15, baseType: !25, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1862, file: !1861, line: 20, baseType: !1866, size: 32, offset: 32)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1862, file: !1861, line: 16, size: 32, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1866, file: !1861, line: 18, baseType: !21, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1866, file: !1861, line: 19, baseType: !1870, size: 32)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !1871)
!1871 = !{!1872}
!1872 = !DISubrange(count: 4)
!1873 = !DILocalVariable(name: "w", scope: !1874, file: !191, line: 623, type: !1875)
!1874 = distinct !DILexicalBlock(scope: !1856, file: !191, line: 622, column: 19)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !81, line: 90, baseType: !25)
!1876 = !DILocalVariable(name: "bytes", scope: !1874, file: !191, line: 624, type: !80)
!1877 = !DILocalVariable(name: "j", scope: !1878, file: !191, line: 649, type: !80)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !191, line: 648, column: 27)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !191, line: 646, column: 29)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !191, line: 641, column: 23)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !191, line: 633, column: 30)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !191, line: 628, column: 30)
!1883 = distinct !DILexicalBlock(scope: !1874, file: !191, line: 626, column: 25)
!1884 = !DILocalVariable(name: "ilim", scope: !1885, file: !191, line: 676, type: !80)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !191, line: 673, column: 15)
!1886 = distinct !DILexicalBlock(scope: !1852, file: !191, line: 672, column: 17)
!1887 = !DILocation(line: 248, column: 33, scope: !1817)
!1888 = !DILocation(line: 248, column: 48, scope: !1817)
!1889 = !DILocation(line: 249, column: 39, scope: !1817)
!1890 = !DILocation(line: 249, column: 51, scope: !1817)
!1891 = !DILocation(line: 250, column: 46, scope: !1817)
!1892 = !DILocation(line: 250, column: 65, scope: !1817)
!1893 = !DILocation(line: 251, column: 47, scope: !1817)
!1894 = !DILocation(line: 252, column: 39, scope: !1817)
!1895 = !DILocation(line: 253, column: 39, scope: !1817)
!1896 = !DILocation(line: 256, column: 10, scope: !1817)
!1897 = !DILocation(line: 257, column: 10, scope: !1817)
!1898 = !DILocation(line: 258, column: 15, scope: !1817)
!1899 = !DILocation(line: 259, column: 10, scope: !1817)
!1900 = !DILocation(line: 260, column: 8, scope: !1817)
!1901 = !DILocation(line: 261, column: 25, scope: !1817)
!1902 = !DILocation(line: 261, column: 36, scope: !1817)
!1903 = !DILocation(line: 262, column: 8, scope: !1817)
!1904 = !DILocation(line: 263, column: 8, scope: !1817)
!1905 = !DILocation(line: 264, column: 8, scope: !1817)
!1906 = !DILocation(line: 265, column: 8, scope: !1817)
!1907 = !DILocation(line: 265, column: 3, scope: !1817)
!1908 = !DILocation(line: 308, column: 3, scope: !1817)
!1909 = !DILocation(line: 315, column: 11, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1817, file: !191, line: 309, column: 5)
!1911 = !DILocation(line: 315, column: 12, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1910, file: !191, line: 315, column: 11)
!1913 = !DILocation(line: 316, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !191, line: 316, column: 9)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !191, line: 316, column: 9)
!1916 = !DILocation(line: 316, column: 9, scope: !1915)
!1917 = !DILocation(line: 354, column: 26, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !191, line: 332, column: 11)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !191, line: 331, column: 13)
!1920 = distinct !DILexicalBlock(scope: !1910, file: !191, line: 330, column: 7)
!1921 = !DILocation(line: 355, column: 27, scope: !1918)
!1922 = !DILocation(line: 356, column: 11, scope: !1918)
!1923 = !DILocation(line: 357, column: 14, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !191, line: 357, column: 13)
!1925 = !DILocation(line: 357, column: 13, scope: !1920)
!1926 = !DILocation(line: 358, column: 43, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !191, line: 358, column: 11)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !191, line: 358, column: 11)
!1929 = !DILocation(line: 358, column: 11, scope: !1928)
!1930 = !DILocation(line: 359, column: 13, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !191, line: 359, column: 13)
!1932 = distinct !DILexicalBlock(scope: !1927, file: !191, line: 359, column: 13)
!1933 = !DILocation(line: 359, column: 13, scope: !1932)
!1934 = !DILocation(line: 358, column: 70, scope: !1927)
!1935 = distinct !{!1935, !1929, !1936}
!1936 = !DILocation(line: 359, column: 13, scope: !1928)
!1937 = !DILocation(line: 362, column: 28, scope: !1920)
!1938 = !DILocation(line: 364, column: 7, scope: !1910)
!1939 = !DILocation(line: 367, column: 7, scope: !1910)
!1940 = !DILocation(line: 370, column: 7, scope: !1910)
!1941 = !DILocation(line: 373, column: 12, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1910, file: !191, line: 373, column: 11)
!1943 = !DILocation(line: 373, column: 11, scope: !1910)
!1944 = !DILocation(line: 378, column: 12, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1910, file: !191, line: 378, column: 11)
!1946 = !DILocation(line: 378, column: 11, scope: !1910)
!1947 = !DILocation(line: 379, column: 9, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !191, line: 379, column: 9)
!1949 = distinct !DILexicalBlock(scope: !1945, file: !191, line: 379, column: 9)
!1950 = !DILocation(line: 379, column: 9, scope: !1949)
!1951 = !DILocation(line: 386, column: 7, scope: !1910)
!1952 = !DILocation(line: 389, column: 7, scope: !1910)
!1953 = !DILocation(line: 255, column: 10, scope: !1817)
!1954 = !DILocation(line: 392, column: 8, scope: !1846)
!1955 = !DILocation(line: 392, column: 27, scope: !1845)
!1956 = !DILocation(line: 392, column: 19, scope: !1845)
!1957 = !DILocation(line: 392, column: 60, scope: !1845)
!1958 = !DILocation(line: 392, column: 3, scope: !1846)
!1959 = !DILocation(line: 392, column: 41, scope: !1845)
!1960 = !DILocation(line: 392, column: 48, scope: !1845)
!1961 = !DILocation(line: 396, column: 12, scope: !1844)
!1962 = !DILocation(line: 397, column: 12, scope: !1844)
!1963 = !DILocation(line: 398, column: 12, scope: !1844)
!1964 = !DILocation(line: 401, column: 11, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1844, file: !191, line: 400, column: 11)
!1966 = !DILocation(line: 403, column: 17, scope: !1965)
!1967 = !DILocation(line: 404, column: 39, scope: !1965)
!1968 = !DILocation(line: 408, column: 32, scope: !1965)
!1969 = !DILocation(line: 404, column: 19, scope: !1965)
!1970 = !DILocation(line: 404, column: 15, scope: !1965)
!1971 = !DILocation(line: 409, column: 11, scope: !1965)
!1972 = !DILocation(line: 409, column: 26, scope: !1965)
!1973 = !DILocation(line: 409, column: 14, scope: !1965)
!1974 = !DILocation(line: 409, column: 63, scope: !1965)
!1975 = !DILocation(line: 400, column: 11, scope: !1844)
!1976 = !DILocation(line: 416, column: 11, scope: !1844)
!1977 = !DILocation(line: 394, column: 21, scope: !1844)
!1978 = !DILocation(line: 417, column: 7, scope: !1844)
!1979 = !DILocation(line: 420, column: 15, scope: !1853)
!1980 = !DILocation(line: 422, column: 15, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !191, line: 422, column: 15)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !191, line: 421, column: 13)
!1983 = distinct !DILexicalBlock(scope: !1853, file: !191, line: 420, column: 15)
!1984 = !DILocation(line: 422, column: 15, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !191, line: 422, column: 15)
!1986 = !DILocation(line: 422, column: 15, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !191, line: 422, column: 15)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !191, line: 422, column: 15)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !191, line: 422, column: 15)
!1990 = !DILocation(line: 422, column: 15, scope: !1988)
!1991 = !DILocation(line: 422, column: 15, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !191, line: 422, column: 15)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !191, line: 422, column: 15)
!1994 = !DILocation(line: 422, column: 15, scope: !1993)
!1995 = !DILocation(line: 422, column: 15, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !191, line: 422, column: 15)
!1997 = distinct !DILexicalBlock(scope: !1989, file: !191, line: 422, column: 15)
!1998 = !DILocation(line: 422, column: 15, scope: !1997)
!1999 = !DILocation(line: 422, column: 15, scope: !1989)
!2000 = !DILocation(line: 422, column: 15, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !191, line: 422, column: 15)
!2002 = distinct !DILexicalBlock(scope: !1981, file: !191, line: 422, column: 15)
!2003 = !DILocation(line: 422, column: 15, scope: !2002)
!2004 = !DILocation(line: 430, column: 19, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1982, file: !191, line: 429, column: 19)
!2006 = !DILocation(line: 430, column: 24, scope: !2005)
!2007 = !DILocation(line: 430, column: 28, scope: !2005)
!2008 = !DILocation(line: 430, column: 38, scope: !2005)
!2009 = !DILocation(line: 430, column: 48, scope: !2005)
!2010 = !DILocation(line: 430, column: 59, scope: !2005)
!2011 = !DILocation(line: 432, column: 19, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !191, line: 432, column: 19)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !191, line: 432, column: 19)
!2014 = distinct !DILexicalBlock(scope: !2005, file: !191, line: 431, column: 17)
!2015 = !DILocation(line: 432, column: 19, scope: !2013)
!2016 = !DILocation(line: 433, column: 19, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !191, line: 433, column: 19)
!2018 = distinct !DILexicalBlock(scope: !2014, file: !191, line: 433, column: 19)
!2019 = !DILocation(line: 433, column: 19, scope: !2018)
!2020 = !DILocation(line: 434, column: 17, scope: !2014)
!2021 = !DILocation(line: 441, column: 20, scope: !1983)
!2022 = !DILocation(line: 446, column: 11, scope: !1853)
!2023 = !DILocation(line: 449, column: 19, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1853, file: !191, line: 447, column: 13)
!2025 = !DILocation(line: 455, column: 19, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2024, file: !191, line: 454, column: 19)
!2027 = !DILocation(line: 455, column: 24, scope: !2026)
!2028 = !DILocation(line: 455, column: 28, scope: !2026)
!2029 = !DILocation(line: 455, column: 38, scope: !2026)
!2030 = !DILocation(line: 455, column: 47, scope: !2026)
!2031 = !DILocation(line: 455, column: 41, scope: !2026)
!2032 = !DILocation(line: 455, column: 52, scope: !2026)
!2033 = !DILocation(line: 454, column: 19, scope: !2024)
!2034 = !DILocation(line: 456, column: 25, scope: !2026)
!2035 = !DILocation(line: 456, column: 17, scope: !2026)
!2036 = !DILocation(line: 463, column: 25, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2026, file: !191, line: 457, column: 19)
!2038 = !DILocation(line: 467, column: 21, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !191, line: 467, column: 21)
!2040 = distinct !DILexicalBlock(scope: !2037, file: !191, line: 467, column: 21)
!2041 = !DILocation(line: 467, column: 21, scope: !2040)
!2042 = !DILocation(line: 468, column: 21, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !191, line: 468, column: 21)
!2044 = distinct !DILexicalBlock(scope: !2037, file: !191, line: 468, column: 21)
!2045 = !DILocation(line: 468, column: 21, scope: !2044)
!2046 = !DILocation(line: 469, column: 21, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !191, line: 469, column: 21)
!2048 = distinct !DILexicalBlock(scope: !2037, file: !191, line: 469, column: 21)
!2049 = !DILocation(line: 469, column: 21, scope: !2048)
!2050 = !DILocation(line: 470, column: 21, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !191, line: 470, column: 21)
!2052 = distinct !DILexicalBlock(scope: !2037, file: !191, line: 470, column: 21)
!2053 = !DILocation(line: 470, column: 21, scope: !2052)
!2054 = !DILocation(line: 471, column: 21, scope: !2037)
!2055 = !DILocation(line: 395, column: 21, scope: !1844)
!2056 = !DILocation(line: 484, column: 31, scope: !1853)
!2057 = !DILocation(line: 485, column: 31, scope: !1853)
!2058 = !DILocation(line: 487, column: 31, scope: !1853)
!2059 = !DILocation(line: 488, column: 31, scope: !1853)
!2060 = !DILocation(line: 489, column: 31, scope: !1853)
!2061 = !DILocation(line: 492, column: 15, scope: !1853)
!2062 = !DILocation(line: 494, column: 19, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !191, line: 493, column: 13)
!2064 = distinct !DILexicalBlock(scope: !1853, file: !191, line: 492, column: 15)
!2065 = !DILocation(line: 501, column: 33, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1853, file: !191, line: 501, column: 15)
!2067 = !DILocation(line: 506, column: 15, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1853, file: !191, line: 505, column: 15)
!2069 = !DILocation(line: 510, column: 15, scope: !1853)
!2070 = !DILocation(line: 518, column: 26, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1853, file: !191, line: 518, column: 15)
!2072 = !DILocation(line: 518, column: 15, scope: !1853)
!2073 = !DILocation(line: 518, column: 40, scope: !2071)
!2074 = !DILocation(line: 518, column: 47, scope: !2071)
!2075 = !DILocation(line: 522, column: 17, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1853, file: !191, line: 522, column: 15)
!2077 = !DILocation(line: 518, column: 18, scope: !2071)
!2078 = !DILocation(line: 518, column: 65, scope: !2071)
!2079 = !DILocation(line: 522, column: 15, scope: !1853)
!2080 = !DILocation(line: 526, column: 11, scope: !1853)
!2081 = !DILocation(line: 541, column: 15, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1853, file: !191, line: 540, column: 15)
!2083 = !DILocation(line: 548, column: 15, scope: !1853)
!2084 = !DILocation(line: 550, column: 19, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !191, line: 549, column: 13)
!2086 = distinct !DILexicalBlock(scope: !1853, file: !191, line: 548, column: 15)
!2087 = !DILocation(line: 553, column: 19, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !191, line: 553, column: 19)
!2089 = !DILocation(line: 553, column: 35, scope: !2088)
!2090 = !DILocation(line: 553, column: 30, scope: !2088)
!2091 = !DILocation(line: 562, column: 15, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !191, line: 562, column: 15)
!2093 = distinct !DILexicalBlock(scope: !2085, file: !191, line: 562, column: 15)
!2094 = !DILocation(line: 562, column: 15, scope: !2093)
!2095 = !DILocation(line: 563, column: 15, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !191, line: 563, column: 15)
!2097 = distinct !DILexicalBlock(scope: !2085, file: !191, line: 563, column: 15)
!2098 = !DILocation(line: 563, column: 15, scope: !2097)
!2099 = !DILocation(line: 564, column: 15, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !191, line: 564, column: 15)
!2101 = distinct !DILexicalBlock(scope: !2085, file: !191, line: 564, column: 15)
!2102 = !DILocation(line: 564, column: 15, scope: !2101)
!2103 = !DILocation(line: 566, column: 13, scope: !2085)
!2104 = !DILocation(line: 606, column: 17, scope: !1852)
!2105 = !DILocation(line: 602, column: 20, scope: !1852)
!2106 = !DILocation(line: 609, column: 29, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1857, file: !191, line: 607, column: 15)
!2108 = !DILocation(line: 609, column: 27, scope: !2107)
!2109 = !DILocation(line: 604, column: 18, scope: !1852)
!2110 = !DILocation(line: 610, column: 15, scope: !2107)
!2111 = !DILocation(line: 613, column: 17, scope: !1856)
!2112 = !DILocation(line: 614, column: 17, scope: !1856)
!2113 = !DILocation(line: 618, column: 29, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1856, file: !191, line: 618, column: 21)
!2115 = !DILocation(line: 618, column: 21, scope: !1856)
!2116 = !DILocation(line: 619, column: 29, scope: !2114)
!2117 = !DILocation(line: 619, column: 19, scope: !2114)
!2118 = !DILocation(line: 621, column: 17, scope: !1856)
!2119 = distinct !{!2119, !2118, !2120}
!2120 = !DILocation(line: 667, column: 44, scope: !1856)
!2121 = !DILocation(line: 623, column: 21, scope: !1874)
!2122 = !DILocation(line: 624, column: 56, scope: !1874)
!2123 = !DILocation(line: 624, column: 50, scope: !1874)
!2124 = !DILocation(line: 625, column: 53, scope: !1874)
!2125 = !DILocation(line: 613, column: 27, scope: !1856)
!2126 = !DILocation(line: 623, column: 29, scope: !1874)
!2127 = !DILocation(line: 624, column: 36, scope: !1874)
!2128 = !DILocation(line: 624, column: 28, scope: !1874)
!2129 = !DILocation(line: 626, column: 25, scope: !1874)
!2130 = !DILocation(line: 636, column: 38, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1881, file: !191, line: 634, column: 23)
!2132 = !DILocation(line: 636, column: 48, scope: !2131)
!2133 = !DILocation(line: 636, column: 51, scope: !2131)
!2134 = !DILocation(line: 636, column: 25, scope: !2131)
!2135 = !DILocation(line: 637, column: 28, scope: !2131)
!2136 = !DILocation(line: 636, column: 34, scope: !2131)
!2137 = distinct !{!2137, !2134, !2135}
!2138 = !DILocation(line: 650, column: 43, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !191, line: 650, column: 29)
!2140 = distinct !DILexicalBlock(scope: !1878, file: !191, line: 650, column: 29)
!2141 = !DILocation(line: 647, column: 29, scope: !1879)
!2142 = !DILocation(line: 649, column: 36, scope: !1878)
!2143 = !DILocation(line: 651, column: 49, scope: !2139)
!2144 = !DILocation(line: 651, column: 39, scope: !2139)
!2145 = !DILocation(line: 651, column: 31, scope: !2139)
!2146 = !DILocation(line: 650, column: 53, scope: !2139)
!2147 = !DILocation(line: 650, column: 29, scope: !2140)
!2148 = distinct !{!2148, !2147, !2149}
!2149 = !DILocation(line: 659, column: 33, scope: !2140)
!2150 = !DILocation(line: 666, column: 19, scope: !1856)
!2151 = !DILocation(line: 662, column: 41, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1880, file: !191, line: 662, column: 29)
!2153 = !DILocation(line: 662, column: 31, scope: !2152)
!2154 = !DILocation(line: 662, column: 29, scope: !1880)
!2155 = !DILocation(line: 664, column: 27, scope: !1880)
!2156 = !DILocation(line: 667, column: 26, scope: !1856)
!2157 = !DILocation(line: 667, column: 24, scope: !1856)
!2158 = !DILocation(line: 666, column: 19, scope: !1874)
!2159 = !DILocation(line: 668, column: 15, scope: !1857)
!2160 = !DILocation(line: 670, column: 40, scope: !1852)
!2161 = !DILocation(line: 672, column: 19, scope: !1886)
!2162 = !DILocation(line: 672, column: 45, scope: !1886)
!2163 = !DILocation(line: 672, column: 23, scope: !1886)
!2164 = !DILocation(line: 676, column: 33, scope: !1885)
!2165 = !DILocation(line: 676, column: 24, scope: !1885)
!2166 = !DILocation(line: 678, column: 17, scope: !1885)
!2167 = !DILocation(line: 680, column: 43, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !191, line: 680, column: 25)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !191, line: 679, column: 19)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !191, line: 678, column: 17)
!2171 = distinct !DILexicalBlock(scope: !1885, file: !191, line: 678, column: 17)
!2172 = !DILocation(line: 682, column: 25, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !191, line: 682, column: 25)
!2174 = distinct !DILexicalBlock(scope: !2168, file: !191, line: 681, column: 23)
!2175 = !DILocation(line: 682, column: 25, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2173, file: !191, line: 682, column: 25)
!2177 = !DILocation(line: 682, column: 25, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !191, line: 682, column: 25)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !191, line: 682, column: 25)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !191, line: 682, column: 25)
!2181 = !DILocation(line: 682, column: 25, scope: !2179)
!2182 = !DILocation(line: 682, column: 25, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !191, line: 682, column: 25)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !191, line: 682, column: 25)
!2185 = !DILocation(line: 682, column: 25, scope: !2184)
!2186 = !DILocation(line: 682, column: 25, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !191, line: 682, column: 25)
!2188 = distinct !DILexicalBlock(scope: !2180, file: !191, line: 682, column: 25)
!2189 = !DILocation(line: 682, column: 25, scope: !2188)
!2190 = !DILocation(line: 682, column: 25, scope: !2180)
!2191 = !DILocation(line: 682, column: 25, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !191, line: 682, column: 25)
!2193 = distinct !DILexicalBlock(scope: !2173, file: !191, line: 682, column: 25)
!2194 = !DILocation(line: 682, column: 25, scope: !2193)
!2195 = !DILocation(line: 683, column: 25, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !191, line: 683, column: 25)
!2197 = distinct !DILexicalBlock(scope: !2174, file: !191, line: 683, column: 25)
!2198 = !DILocation(line: 683, column: 25, scope: !2197)
!2199 = !DILocation(line: 684, column: 25, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !191, line: 684, column: 25)
!2201 = distinct !DILexicalBlock(scope: !2174, file: !191, line: 684, column: 25)
!2202 = !DILocation(line: 684, column: 25, scope: !2201)
!2203 = !DILocation(line: 685, column: 38, scope: !2174)
!2204 = !DILocation(line: 685, column: 33, scope: !2174)
!2205 = !DILocation(line: 686, column: 23, scope: !2174)
!2206 = !DILocation(line: 687, column: 30, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2168, file: !191, line: 687, column: 30)
!2208 = !DILocation(line: 687, column: 30, scope: !2168)
!2209 = !DILocation(line: 689, column: 25, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !191, line: 689, column: 25)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !191, line: 689, column: 25)
!2212 = distinct !DILexicalBlock(scope: !2207, file: !191, line: 688, column: 23)
!2213 = !DILocation(line: 689, column: 25, scope: !2211)
!2214 = !DILocation(line: 691, column: 23, scope: !2212)
!2215 = !DILocation(line: 692, column: 35, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2169, file: !191, line: 692, column: 25)
!2217 = !DILocation(line: 692, column: 30, scope: !2216)
!2218 = !DILocation(line: 692, column: 25, scope: !2169)
!2219 = !DILocation(line: 694, column: 21, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !191, line: 694, column: 21)
!2221 = distinct !DILexicalBlock(scope: !2169, file: !191, line: 694, column: 21)
!2222 = !DILocation(line: 694, column: 21, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !191, line: 694, column: 21)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !191, line: 694, column: 21)
!2225 = distinct !DILexicalBlock(scope: !2220, file: !191, line: 694, column: 21)
!2226 = !DILocation(line: 694, column: 21, scope: !2224)
!2227 = !DILocation(line: 694, column: 21, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !191, line: 694, column: 21)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !191, line: 694, column: 21)
!2230 = !DILocation(line: 694, column: 21, scope: !2229)
!2231 = !DILocation(line: 694, column: 21, scope: !2225)
!2232 = !DILocation(line: 695, column: 21, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !191, line: 695, column: 21)
!2234 = distinct !DILexicalBlock(scope: !2169, file: !191, line: 695, column: 21)
!2235 = !DILocation(line: 695, column: 21, scope: !2234)
!2236 = !DILocation(line: 696, column: 25, scope: !2169)
!2237 = !DILocation(line: 678, column: 17, scope: !2170)
!2238 = distinct !{!2238, !2239, !2240}
!2239 = !DILocation(line: 678, column: 17, scope: !2171)
!2240 = !DILocation(line: 697, column: 19, scope: !2171)
!2241 = !DILocation(line: 704, column: 34, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !1844, file: !191, line: 704, column: 11)
!2243 = !DILocation(line: 706, column: 14, scope: !2242)
!2244 = !DILocation(line: 707, column: 14, scope: !2242)
!2245 = !DILocation(line: 707, column: 35, scope: !2242)
!2246 = !DILocation(line: 707, column: 17, scope: !2242)
!2247 = !DILocation(line: 707, column: 53, scope: !2242)
!2248 = !DILocation(line: 707, column: 47, scope: !2242)
!2249 = !DILocation(line: 707, column: 65, scope: !2242)
!2250 = !DILocation(line: 708, column: 15, scope: !2242)
!2251 = !DILocation(line: 708, column: 11, scope: !2242)
!2252 = !DILocation(line: 704, column: 11, scope: !1844)
!2253 = !DILocation(line: 712, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !1844, file: !191, line: 712, column: 7)
!2255 = !DILocation(line: 712, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2254, file: !191, line: 712, column: 7)
!2257 = !DILocation(line: 712, column: 7, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !191, line: 712, column: 7)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !191, line: 712, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !191, line: 712, column: 7)
!2261 = !DILocation(line: 712, column: 7, scope: !2259)
!2262 = !DILocation(line: 712, column: 7, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !191, line: 712, column: 7)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !191, line: 712, column: 7)
!2265 = !DILocation(line: 712, column: 7, scope: !2264)
!2266 = !DILocation(line: 712, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !191, line: 712, column: 7)
!2268 = distinct !DILexicalBlock(scope: !2260, file: !191, line: 712, column: 7)
!2269 = !DILocation(line: 712, column: 7, scope: !2268)
!2270 = !DILocation(line: 712, column: 7, scope: !2260)
!2271 = !DILocation(line: 712, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !191, line: 712, column: 7)
!2273 = distinct !DILexicalBlock(scope: !2254, file: !191, line: 712, column: 7)
!2274 = !DILocation(line: 712, column: 7, scope: !2273)
!2275 = !DILocation(line: 715, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !191, line: 715, column: 7)
!2277 = distinct !DILexicalBlock(scope: !1844, file: !191, line: 715, column: 7)
!2278 = !DILocation(line: 715, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !191, line: 715, column: 7)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !191, line: 715, column: 7)
!2281 = distinct !DILexicalBlock(scope: !2276, file: !191, line: 715, column: 7)
!2282 = !DILocation(line: 715, column: 7, scope: !2280)
!2283 = !DILocation(line: 715, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !191, line: 715, column: 7)
!2285 = distinct !DILexicalBlock(scope: !2281, file: !191, line: 715, column: 7)
!2286 = !DILocation(line: 715, column: 7, scope: !2285)
!2287 = !DILocation(line: 715, column: 7, scope: !2281)
!2288 = !DILocation(line: 716, column: 7, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !191, line: 716, column: 7)
!2290 = distinct !DILexicalBlock(scope: !1844, file: !191, line: 716, column: 7)
!2291 = !DILocation(line: 716, column: 7, scope: !2290)
!2292 = !DILocation(line: 718, column: 13, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !1844, file: !191, line: 718, column: 11)
!2294 = !DILocation(line: 718, column: 11, scope: !1844)
!2295 = !DILocation(line: 720, column: 5, scope: !1845)
!2296 = !DILocation(line: 392, column: 75, scope: !1845)
!2297 = !DILocation(line: 392, column: 3, scope: !1845)
!2298 = distinct !{!2298, !1958, !2299}
!2299 = !DILocation(line: 720, column: 5, scope: !1846)
!2300 = !DILocation(line: 722, column: 11, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !1817, file: !191, line: 722, column: 7)
!2302 = !DILocation(line: 722, column: 16, scope: !2301)
!2303 = !DILocation(line: 730, column: 51, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !1817, file: !191, line: 730, column: 7)
!2305 = !DILocation(line: 731, column: 10, scope: !2304)
!2306 = !DILocation(line: 733, column: 11, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !191, line: 733, column: 11)
!2308 = distinct !DILexicalBlock(scope: !2304, file: !191, line: 732, column: 5)
!2309 = !DILocation(line: 733, column: 11, scope: !2308)
!2310 = !DILocation(line: 734, column: 16, scope: !2307)
!2311 = !DILocation(line: 734, column: 9, scope: !2307)
!2312 = !DILocation(line: 738, column: 18, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2307, file: !191, line: 738, column: 16)
!2314 = !DILocation(line: 738, column: 32, scope: !2313)
!2315 = !DILocation(line: 738, column: 29, scope: !2313)
!2316 = !DILocation(line: 747, column: 7, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !1817, file: !191, line: 747, column: 7)
!2318 = !DILocation(line: 747, column: 20, scope: !2317)
!2319 = !DILocation(line: 748, column: 12, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !191, line: 748, column: 5)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !191, line: 748, column: 5)
!2322 = !DILocation(line: 748, column: 5, scope: !2321)
!2323 = !DILocation(line: 749, column: 7, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !191, line: 749, column: 7)
!2325 = distinct !DILexicalBlock(scope: !2320, file: !191, line: 749, column: 7)
!2326 = !DILocation(line: 749, column: 7, scope: !2325)
!2327 = !DILocation(line: 748, column: 39, scope: !2320)
!2328 = distinct !{!2328, !2322, !2329}
!2329 = !DILocation(line: 749, column: 7, scope: !2321)
!2330 = !DILocation(line: 751, column: 11, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !1817, file: !191, line: 751, column: 7)
!2332 = !DILocation(line: 751, column: 7, scope: !1817)
!2333 = !DILocation(line: 752, column: 5, scope: !2331)
!2334 = !DILocation(line: 752, column: 17, scope: !2331)
!2335 = !DILocation(line: 758, column: 21, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !1817, file: !191, line: 758, column: 7)
!2337 = !DILocation(line: 758, column: 54, scope: !2336)
!2338 = !DILocation(line: 758, column: 51, scope: !2336)
!2339 = !DILocation(line: 762, column: 42, scope: !1817)
!2340 = !DILocation(line: 760, column: 10, scope: !1817)
!2341 = !DILocation(line: 760, column: 3, scope: !1817)
!2342 = !DILocation(line: 764, column: 1, scope: !1817)
!2343 = distinct !DISubprogram(name: "gettext_quote", scope: !191, file: !191, line: 199, type: !2344, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2346)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!33, !33, !168}
!2346 = !{!2347, !2348, !2349, !2350}
!2347 = !DILocalVariable(name: "msgid", arg: 1, scope: !2343, file: !191, line: 199, type: !33)
!2348 = !DILocalVariable(name: "s", arg: 2, scope: !2343, file: !191, line: 199, type: !168)
!2349 = !DILocalVariable(name: "translation", scope: !2343, file: !191, line: 201, type: !33)
!2350 = !DILocalVariable(name: "locale_code", scope: !2343, file: !191, line: 202, type: !33)
!2351 = !DILocation(line: 199, column: 28, scope: !2343)
!2352 = !DILocation(line: 199, column: 54, scope: !2343)
!2353 = !DILocation(line: 201, column: 29, scope: !2343)
!2354 = !DILocation(line: 201, column: 15, scope: !2343)
!2355 = !DILocation(line: 204, column: 19, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2343, file: !191, line: 204, column: 7)
!2357 = !DILocation(line: 204, column: 7, scope: !2343)
!2358 = !DILocation(line: 225, column: 17, scope: !2343)
!2359 = !DILocation(line: 202, column: 15, scope: !2343)
!2360 = !DILocalVariable(name: "s2", arg: 2, scope: !2361, file: !2362, line: 160, type: !33)
!2361 = distinct !DISubprogram(name: "strcaseeq0", scope: !2362, file: !2362, line: 160, type: !2363, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2365)
!2362 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!25, !33, !33, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!2365 = !{!2366, !2360, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375}
!2366 = !DILocalVariable(name: "s1", arg: 1, scope: !2361, file: !2362, line: 160, type: !33)
!2367 = !DILocalVariable(name: "s20", arg: 3, scope: !2361, file: !2362, line: 160, type: !23)
!2368 = !DILocalVariable(name: "s21", arg: 4, scope: !2361, file: !2362, line: 160, type: !23)
!2369 = !DILocalVariable(name: "s22", arg: 5, scope: !2361, file: !2362, line: 160, type: !23)
!2370 = !DILocalVariable(name: "s23", arg: 6, scope: !2361, file: !2362, line: 160, type: !23)
!2371 = !DILocalVariable(name: "s24", arg: 7, scope: !2361, file: !2362, line: 160, type: !23)
!2372 = !DILocalVariable(name: "s25", arg: 8, scope: !2361, file: !2362, line: 160, type: !23)
!2373 = !DILocalVariable(name: "s26", arg: 9, scope: !2361, file: !2362, line: 160, type: !23)
!2374 = !DILocalVariable(name: "s27", arg: 10, scope: !2361, file: !2362, line: 160, type: !23)
!2375 = !DILocalVariable(name: "s28", arg: 11, scope: !2361, file: !2362, line: 160, type: !23)
!2376 = !DILocation(line: 160, column: 41, scope: !2361, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 226, column: 7, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2343, file: !191, line: 226, column: 7)
!2379 = !DILocation(line: 160, column: 120, scope: !2361, inlinedAt: !2377)
!2380 = !DILocation(line: 160, column: 130, scope: !2361, inlinedAt: !2377)
!2381 = !DILocation(line: 162, column: 7, scope: !2382, inlinedAt: !2377)
!2382 = distinct !DILexicalBlock(scope: !2361, file: !2362, line: 162, column: 7)
!2383 = !DILocalVariable(name: "s2", arg: 2, scope: !2384, file: !2362, line: 146, type: !33)
!2384 = distinct !DISubprogram(name: "strcaseeq1", scope: !2362, file: !2362, line: 146, type: !2385, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!25, !33, !33, !23, !23, !23, !23, !23, !23, !23, !23}
!2387 = !{!2388, !2383, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396}
!2388 = !DILocalVariable(name: "s1", arg: 1, scope: !2384, file: !2362, line: 146, type: !33)
!2389 = !DILocalVariable(name: "s21", arg: 3, scope: !2384, file: !2362, line: 146, type: !23)
!2390 = !DILocalVariable(name: "s22", arg: 4, scope: !2384, file: !2362, line: 146, type: !23)
!2391 = !DILocalVariable(name: "s23", arg: 5, scope: !2384, file: !2362, line: 146, type: !23)
!2392 = !DILocalVariable(name: "s24", arg: 6, scope: !2384, file: !2362, line: 146, type: !23)
!2393 = !DILocalVariable(name: "s25", arg: 7, scope: !2384, file: !2362, line: 146, type: !23)
!2394 = !DILocalVariable(name: "s26", arg: 8, scope: !2384, file: !2362, line: 146, type: !23)
!2395 = !DILocalVariable(name: "s27", arg: 9, scope: !2384, file: !2362, line: 146, type: !23)
!2396 = !DILocalVariable(name: "s28", arg: 10, scope: !2384, file: !2362, line: 146, type: !23)
!2397 = !DILocation(line: 146, column: 41, scope: !2384, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 167, column: 16, scope: !2399, inlinedAt: !2377)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !2362, line: 164, column: 11)
!2400 = distinct !DILexicalBlock(scope: !2382, file: !2362, line: 163, column: 5)
!2401 = !DILocation(line: 146, column: 110, scope: !2384, inlinedAt: !2398)
!2402 = !DILocation(line: 146, column: 120, scope: !2384, inlinedAt: !2398)
!2403 = !DILocation(line: 148, column: 7, scope: !2404, inlinedAt: !2398)
!2404 = distinct !DILexicalBlock(scope: !2384, file: !2362, line: 148, column: 7)
!2405 = !DILocalVariable(name: "s2", arg: 2, scope: !2406, file: !2362, line: 132, type: !33)
!2406 = distinct !DISubprogram(name: "strcaseeq2", scope: !2362, file: !2362, line: 132, type: !2407, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!25, !33, !33, !23, !23, !23, !23, !23, !23, !23}
!2409 = !{!2410, !2405, !2411, !2412, !2413, !2414, !2415, !2416, !2417}
!2410 = !DILocalVariable(name: "s1", arg: 1, scope: !2406, file: !2362, line: 132, type: !33)
!2411 = !DILocalVariable(name: "s22", arg: 3, scope: !2406, file: !2362, line: 132, type: !23)
!2412 = !DILocalVariable(name: "s23", arg: 4, scope: !2406, file: !2362, line: 132, type: !23)
!2413 = !DILocalVariable(name: "s24", arg: 5, scope: !2406, file: !2362, line: 132, type: !23)
!2414 = !DILocalVariable(name: "s25", arg: 6, scope: !2406, file: !2362, line: 132, type: !23)
!2415 = !DILocalVariable(name: "s26", arg: 7, scope: !2406, file: !2362, line: 132, type: !23)
!2416 = !DILocalVariable(name: "s27", arg: 8, scope: !2406, file: !2362, line: 132, type: !23)
!2417 = !DILocalVariable(name: "s28", arg: 9, scope: !2406, file: !2362, line: 132, type: !23)
!2418 = !DILocation(line: 132, column: 41, scope: !2406, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 153, column: 16, scope: !2420, inlinedAt: !2398)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !2362, line: 150, column: 11)
!2421 = distinct !DILexicalBlock(scope: !2404, file: !2362, line: 149, column: 5)
!2422 = !DILocation(line: 132, column: 100, scope: !2406, inlinedAt: !2419)
!2423 = !DILocation(line: 132, column: 110, scope: !2406, inlinedAt: !2419)
!2424 = !DILocation(line: 134, column: 7, scope: !2425, inlinedAt: !2419)
!2425 = distinct !DILexicalBlock(scope: !2406, file: !2362, line: 134, column: 7)
!2426 = !DILocalVariable(name: "s2", arg: 2, scope: !2427, file: !2362, line: 118, type: !33)
!2427 = distinct !DISubprogram(name: "strcaseeq3", scope: !2362, file: !2362, line: 118, type: !2428, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!25, !33, !33, !23, !23, !23, !23, !23, !23}
!2430 = !{!2431, !2426, !2432, !2433, !2434, !2435, !2436, !2437}
!2431 = !DILocalVariable(name: "s1", arg: 1, scope: !2427, file: !2362, line: 118, type: !33)
!2432 = !DILocalVariable(name: "s23", arg: 3, scope: !2427, file: !2362, line: 118, type: !23)
!2433 = !DILocalVariable(name: "s24", arg: 4, scope: !2427, file: !2362, line: 118, type: !23)
!2434 = !DILocalVariable(name: "s25", arg: 5, scope: !2427, file: !2362, line: 118, type: !23)
!2435 = !DILocalVariable(name: "s26", arg: 6, scope: !2427, file: !2362, line: 118, type: !23)
!2436 = !DILocalVariable(name: "s27", arg: 7, scope: !2427, file: !2362, line: 118, type: !23)
!2437 = !DILocalVariable(name: "s28", arg: 8, scope: !2427, file: !2362, line: 118, type: !23)
!2438 = !DILocation(line: 118, column: 41, scope: !2427, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 139, column: 16, scope: !2440, inlinedAt: !2419)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !2362, line: 136, column: 11)
!2441 = distinct !DILexicalBlock(scope: !2425, file: !2362, line: 135, column: 5)
!2442 = !DILocation(line: 118, column: 90, scope: !2427, inlinedAt: !2439)
!2443 = !DILocation(line: 118, column: 100, scope: !2427, inlinedAt: !2439)
!2444 = !DILocation(line: 120, column: 7, scope: !2445, inlinedAt: !2439)
!2445 = distinct !DILexicalBlock(scope: !2427, file: !2362, line: 120, column: 7)
!2446 = !DILocation(line: 120, column: 7, scope: !2427, inlinedAt: !2439)
!2447 = !DILocalVariable(name: "s2", arg: 2, scope: !2448, file: !2362, line: 104, type: !33)
!2448 = distinct !DISubprogram(name: "strcaseeq4", scope: !2362, file: !2362, line: 104, type: !2449, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!25, !33, !33, !23, !23, !23, !23, !23}
!2451 = !{!2452, !2447, !2453, !2454, !2455, !2456, !2457}
!2452 = !DILocalVariable(name: "s1", arg: 1, scope: !2448, file: !2362, line: 104, type: !33)
!2453 = !DILocalVariable(name: "s24", arg: 3, scope: !2448, file: !2362, line: 104, type: !23)
!2454 = !DILocalVariable(name: "s25", arg: 4, scope: !2448, file: !2362, line: 104, type: !23)
!2455 = !DILocalVariable(name: "s26", arg: 5, scope: !2448, file: !2362, line: 104, type: !23)
!2456 = !DILocalVariable(name: "s27", arg: 6, scope: !2448, file: !2362, line: 104, type: !23)
!2457 = !DILocalVariable(name: "s28", arg: 7, scope: !2448, file: !2362, line: 104, type: !23)
!2458 = !DILocation(line: 104, column: 41, scope: !2448, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 125, column: 16, scope: !2460, inlinedAt: !2439)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !2362, line: 122, column: 11)
!2461 = distinct !DILexicalBlock(scope: !2445, file: !2362, line: 121, column: 5)
!2462 = !DILocation(line: 104, column: 80, scope: !2448, inlinedAt: !2459)
!2463 = !DILocation(line: 104, column: 90, scope: !2448, inlinedAt: !2459)
!2464 = !DILocation(line: 106, column: 7, scope: !2465, inlinedAt: !2459)
!2465 = distinct !DILexicalBlock(scope: !2448, file: !2362, line: 106, column: 7)
!2466 = !DILocation(line: 106, column: 7, scope: !2448, inlinedAt: !2459)
!2467 = !DILocalVariable(name: "s2", arg: 2, scope: !2468, file: !2362, line: 90, type: !33)
!2468 = distinct !DISubprogram(name: "strcaseeq5", scope: !2362, file: !2362, line: 90, type: !2469, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!25, !33, !33, !23, !23, !23, !23}
!2471 = !{!2472, !2467, !2473, !2474, !2475, !2476}
!2472 = !DILocalVariable(name: "s1", arg: 1, scope: !2468, file: !2362, line: 90, type: !33)
!2473 = !DILocalVariable(name: "s25", arg: 3, scope: !2468, file: !2362, line: 90, type: !23)
!2474 = !DILocalVariable(name: "s26", arg: 4, scope: !2468, file: !2362, line: 90, type: !23)
!2475 = !DILocalVariable(name: "s27", arg: 5, scope: !2468, file: !2362, line: 90, type: !23)
!2476 = !DILocalVariable(name: "s28", arg: 6, scope: !2468, file: !2362, line: 90, type: !23)
!2477 = !DILocation(line: 90, column: 41, scope: !2468, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 111, column: 16, scope: !2479, inlinedAt: !2459)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !2362, line: 108, column: 11)
!2480 = distinct !DILexicalBlock(scope: !2465, file: !2362, line: 107, column: 5)
!2481 = !DILocation(line: 90, column: 70, scope: !2468, inlinedAt: !2478)
!2482 = !DILocation(line: 90, column: 80, scope: !2468, inlinedAt: !2478)
!2483 = !DILocation(line: 92, column: 7, scope: !2484, inlinedAt: !2478)
!2484 = distinct !DILexicalBlock(scope: !2468, file: !2362, line: 92, column: 7)
!2485 = !DILocation(line: 92, column: 7, scope: !2468, inlinedAt: !2478)
!2486 = !DILocation(line: 227, column: 12, scope: !2378)
!2487 = !DILocation(line: 227, column: 21, scope: !2378)
!2488 = !DILocation(line: 227, column: 5, scope: !2378)
!2489 = !DILocation(line: 146, column: 41, scope: !2384, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 167, column: 16, scope: !2399, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 228, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2343, file: !191, line: 228, column: 7)
!2493 = !DILocation(line: 146, column: 110, scope: !2384, inlinedAt: !2490)
!2494 = !DILocation(line: 146, column: 120, scope: !2384, inlinedAt: !2490)
!2495 = !DILocation(line: 148, column: 7, scope: !2404, inlinedAt: !2490)
!2496 = !DILocation(line: 132, column: 41, scope: !2406, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 153, column: 16, scope: !2420, inlinedAt: !2490)
!2498 = !DILocation(line: 132, column: 100, scope: !2406, inlinedAt: !2497)
!2499 = !DILocation(line: 132, column: 110, scope: !2406, inlinedAt: !2497)
!2500 = !DILocation(line: 134, column: 7, scope: !2425, inlinedAt: !2497)
!2501 = !DILocation(line: 134, column: 7, scope: !2406, inlinedAt: !2497)
!2502 = !DILocation(line: 118, column: 41, scope: !2427, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 139, column: 16, scope: !2440, inlinedAt: !2497)
!2504 = !DILocation(line: 118, column: 90, scope: !2427, inlinedAt: !2503)
!2505 = !DILocation(line: 118, column: 100, scope: !2427, inlinedAt: !2503)
!2506 = !DILocation(line: 120, column: 7, scope: !2445, inlinedAt: !2503)
!2507 = !DILocation(line: 120, column: 7, scope: !2427, inlinedAt: !2503)
!2508 = !DILocation(line: 104, column: 41, scope: !2448, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 125, column: 16, scope: !2460, inlinedAt: !2503)
!2510 = !DILocation(line: 104, column: 80, scope: !2448, inlinedAt: !2509)
!2511 = !DILocation(line: 104, column: 90, scope: !2448, inlinedAt: !2509)
!2512 = !DILocation(line: 106, column: 7, scope: !2465, inlinedAt: !2509)
!2513 = !DILocation(line: 106, column: 7, scope: !2448, inlinedAt: !2509)
!2514 = !DILocation(line: 90, column: 41, scope: !2468, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 111, column: 16, scope: !2479, inlinedAt: !2509)
!2516 = !DILocation(line: 90, column: 70, scope: !2468, inlinedAt: !2515)
!2517 = !DILocation(line: 90, column: 80, scope: !2468, inlinedAt: !2515)
!2518 = !DILocation(line: 92, column: 7, scope: !2484, inlinedAt: !2515)
!2519 = !DILocation(line: 92, column: 7, scope: !2468, inlinedAt: !2515)
!2520 = !DILocalVariable(name: "s2", arg: 2, scope: !2521, file: !2362, line: 76, type: !33)
!2521 = distinct !DISubprogram(name: "strcaseeq6", scope: !2362, file: !2362, line: 76, type: !2522, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!25, !33, !33, !23, !23, !23}
!2524 = !{!2525, !2520, !2526, !2527, !2528}
!2525 = !DILocalVariable(name: "s1", arg: 1, scope: !2521, file: !2362, line: 76, type: !33)
!2526 = !DILocalVariable(name: "s26", arg: 3, scope: !2521, file: !2362, line: 76, type: !23)
!2527 = !DILocalVariable(name: "s27", arg: 4, scope: !2521, file: !2362, line: 76, type: !23)
!2528 = !DILocalVariable(name: "s28", arg: 5, scope: !2521, file: !2362, line: 76, type: !23)
!2529 = !DILocation(line: 76, column: 41, scope: !2521, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 97, column: 16, scope: !2531, inlinedAt: !2515)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !2362, line: 94, column: 11)
!2532 = distinct !DILexicalBlock(scope: !2484, file: !2362, line: 93, column: 5)
!2533 = !DILocation(line: 76, column: 60, scope: !2521, inlinedAt: !2530)
!2534 = !DILocation(line: 76, column: 70, scope: !2521, inlinedAt: !2530)
!2535 = !DILocation(line: 78, column: 7, scope: !2536, inlinedAt: !2530)
!2536 = distinct !DILexicalBlock(scope: !2521, file: !2362, line: 78, column: 7)
!2537 = !DILocation(line: 78, column: 7, scope: !2521, inlinedAt: !2530)
!2538 = !DILocalVariable(name: "s2", arg: 2, scope: !2539, file: !2362, line: 62, type: !33)
!2539 = distinct !DISubprogram(name: "strcaseeq7", scope: !2362, file: !2362, line: 62, type: !2540, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!25, !33, !33, !23, !23}
!2542 = !{!2543, !2538, !2544, !2545}
!2543 = !DILocalVariable(name: "s1", arg: 1, scope: !2539, file: !2362, line: 62, type: !33)
!2544 = !DILocalVariable(name: "s27", arg: 3, scope: !2539, file: !2362, line: 62, type: !23)
!2545 = !DILocalVariable(name: "s28", arg: 4, scope: !2539, file: !2362, line: 62, type: !23)
!2546 = !DILocation(line: 62, column: 41, scope: !2539, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 83, column: 16, scope: !2548, inlinedAt: !2530)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !2362, line: 80, column: 11)
!2549 = distinct !DILexicalBlock(scope: !2536, file: !2362, line: 79, column: 5)
!2550 = !DILocation(line: 62, column: 50, scope: !2539, inlinedAt: !2547)
!2551 = !DILocation(line: 62, column: 60, scope: !2539, inlinedAt: !2547)
!2552 = !DILocation(line: 64, column: 7, scope: !2553, inlinedAt: !2547)
!2553 = distinct !DILexicalBlock(scope: !2539, file: !2362, line: 64, column: 7)
!2554 = !DILocation(line: 228, column: 7, scope: !2343)
!2555 = !DILocation(line: 229, column: 12, scope: !2492)
!2556 = !DILocation(line: 229, column: 21, scope: !2492)
!2557 = !DILocation(line: 229, column: 5, scope: !2492)
!2558 = !DILocation(line: 231, column: 13, scope: !2343)
!2559 = !DILocation(line: 231, column: 11, scope: !2343)
!2560 = !DILocation(line: 231, column: 3, scope: !2343)
!2561 = !DILocation(line: 232, column: 1, scope: !2343)
!2562 = distinct !DISubprogram(name: "quotearg_alloc", scope: !191, file: !191, line: 791, type: !2563, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!22, !33, !80, !1689}
!2565 = !{!2566, !2567, !2568}
!2566 = !DILocalVariable(name: "arg", arg: 1, scope: !2562, file: !191, line: 791, type: !33)
!2567 = !DILocalVariable(name: "argsize", arg: 2, scope: !2562, file: !191, line: 791, type: !80)
!2568 = !DILocalVariable(name: "o", arg: 3, scope: !2562, file: !191, line: 792, type: !1689)
!2569 = !DILocation(line: 791, column: 29, scope: !2562)
!2570 = !DILocation(line: 791, column: 41, scope: !2562)
!2571 = !DILocation(line: 792, column: 47, scope: !2562)
!2572 = !DILocalVariable(name: "arg", arg: 1, scope: !2573, file: !191, line: 804, type: !33)
!2573 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !191, file: !191, line: 804, type: !2574, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!22, !33, !80, !604, !1689}
!2576 = !{!2572, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584}
!2577 = !DILocalVariable(name: "argsize", arg: 2, scope: !2573, file: !191, line: 804, type: !80)
!2578 = !DILocalVariable(name: "size", arg: 3, scope: !2573, file: !191, line: 804, type: !604)
!2579 = !DILocalVariable(name: "o", arg: 4, scope: !2573, file: !191, line: 805, type: !1689)
!2580 = !DILocalVariable(name: "p", scope: !2573, file: !191, line: 807, type: !1689)
!2581 = !DILocalVariable(name: "e", scope: !2573, file: !191, line: 808, type: !25)
!2582 = !DILocalVariable(name: "flags", scope: !2573, file: !191, line: 810, type: !25)
!2583 = !DILocalVariable(name: "bufsize", scope: !2573, file: !191, line: 811, type: !80)
!2584 = !DILocalVariable(name: "buf", scope: !2573, file: !191, line: 815, type: !22)
!2585 = !DILocation(line: 804, column: 33, scope: !2573, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 794, column: 10, scope: !2562)
!2587 = !DILocation(line: 804, column: 45, scope: !2573, inlinedAt: !2586)
!2588 = !DILocation(line: 804, column: 62, scope: !2573, inlinedAt: !2586)
!2589 = !DILocation(line: 805, column: 51, scope: !2573, inlinedAt: !2586)
!2590 = !DILocation(line: 807, column: 37, scope: !2573, inlinedAt: !2586)
!2591 = !DILocation(line: 807, column: 33, scope: !2573, inlinedAt: !2586)
!2592 = !DILocation(line: 808, column: 11, scope: !2573, inlinedAt: !2586)
!2593 = !DILocation(line: 808, column: 7, scope: !2573, inlinedAt: !2586)
!2594 = !DILocation(line: 810, column: 18, scope: !2573, inlinedAt: !2586)
!2595 = !DILocation(line: 810, column: 24, scope: !2573, inlinedAt: !2586)
!2596 = !DILocation(line: 810, column: 7, scope: !2573, inlinedAt: !2586)
!2597 = !DILocation(line: 811, column: 69, scope: !2573, inlinedAt: !2586)
!2598 = !DILocation(line: 812, column: 53, scope: !2573, inlinedAt: !2586)
!2599 = !DILocation(line: 813, column: 49, scope: !2573, inlinedAt: !2586)
!2600 = !DILocation(line: 814, column: 49, scope: !2573, inlinedAt: !2586)
!2601 = !DILocation(line: 811, column: 20, scope: !2573, inlinedAt: !2586)
!2602 = !DILocation(line: 814, column: 62, scope: !2573, inlinedAt: !2586)
!2603 = !DILocation(line: 811, column: 10, scope: !2573, inlinedAt: !2586)
!2604 = !DILocalVariable(name: "n", arg: 1, scope: !2605, file: !600, line: 220, type: !80)
!2605 = distinct !DISubprogram(name: "xcharalloc", scope: !600, file: !600, line: 220, type: !2606, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!22, !80}
!2608 = !{!2604}
!2609 = !DILocation(line: 220, column: 20, scope: !2605, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 815, column: 15, scope: !2573, inlinedAt: !2586)
!2611 = !DILocation(line: 222, column: 10, scope: !2605, inlinedAt: !2610)
!2612 = !DILocation(line: 815, column: 9, scope: !2573, inlinedAt: !2586)
!2613 = !DILocation(line: 816, column: 60, scope: !2573, inlinedAt: !2586)
!2614 = !DILocation(line: 818, column: 32, scope: !2573, inlinedAt: !2586)
!2615 = !DILocation(line: 818, column: 47, scope: !2573, inlinedAt: !2586)
!2616 = !DILocation(line: 816, column: 3, scope: !2573, inlinedAt: !2586)
!2617 = !DILocation(line: 819, column: 9, scope: !2573, inlinedAt: !2586)
!2618 = !DILocation(line: 794, column: 3, scope: !2562)
!2619 = !DILocation(line: 804, column: 33, scope: !2573)
!2620 = !DILocation(line: 804, column: 45, scope: !2573)
!2621 = !DILocation(line: 804, column: 62, scope: !2573)
!2622 = !DILocation(line: 805, column: 51, scope: !2573)
!2623 = !DILocation(line: 807, column: 37, scope: !2573)
!2624 = !DILocation(line: 807, column: 33, scope: !2573)
!2625 = !DILocation(line: 808, column: 11, scope: !2573)
!2626 = !DILocation(line: 808, column: 7, scope: !2573)
!2627 = !DILocation(line: 810, column: 18, scope: !2573)
!2628 = !DILocation(line: 810, column: 27, scope: !2573)
!2629 = !DILocation(line: 810, column: 24, scope: !2573)
!2630 = !DILocation(line: 810, column: 7, scope: !2573)
!2631 = !DILocation(line: 811, column: 69, scope: !2573)
!2632 = !DILocation(line: 812, column: 53, scope: !2573)
!2633 = !DILocation(line: 813, column: 49, scope: !2573)
!2634 = !DILocation(line: 814, column: 49, scope: !2573)
!2635 = !DILocation(line: 811, column: 20, scope: !2573)
!2636 = !DILocation(line: 814, column: 62, scope: !2573)
!2637 = !DILocation(line: 811, column: 10, scope: !2573)
!2638 = !DILocation(line: 220, column: 20, scope: !2605, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 815, column: 15, scope: !2573)
!2640 = !DILocation(line: 222, column: 10, scope: !2605, inlinedAt: !2639)
!2641 = !DILocation(line: 815, column: 9, scope: !2573)
!2642 = !DILocation(line: 816, column: 60, scope: !2573)
!2643 = !DILocation(line: 818, column: 32, scope: !2573)
!2644 = !DILocation(line: 818, column: 47, scope: !2573)
!2645 = !DILocation(line: 816, column: 3, scope: !2573)
!2646 = !DILocation(line: 819, column: 9, scope: !2573)
!2647 = !DILocation(line: 820, column: 7, scope: !2573)
!2648 = !DILocation(line: 821, column: 11, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2573, file: !191, line: 820, column: 7)
!2650 = !DILocation(line: 821, column: 5, scope: !2649)
!2651 = !DILocation(line: 822, column: 3, scope: !2573)
!2652 = distinct !DISubprogram(name: "quotearg_free", scope: !191, file: !191, line: 840, type: !659, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2653)
!2653 = !{!2654, !2655}
!2654 = !DILocalVariable(name: "sv", scope: !2652, file: !191, line: 842, type: !217)
!2655 = !DILocalVariable(name: "i", scope: !2652, file: !191, line: 843, type: !25)
!2656 = !DILocation(line: 842, column: 24, scope: !2652)
!2657 = !DILocation(line: 842, column: 19, scope: !2652)
!2658 = !DILocation(line: 843, column: 7, scope: !2652)
!2659 = !DILocation(line: 844, column: 19, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !191, line: 844, column: 3)
!2661 = distinct !DILexicalBlock(scope: !2652, file: !191, line: 844, column: 3)
!2662 = !DILocation(line: 844, column: 17, scope: !2660)
!2663 = !DILocation(line: 844, column: 3, scope: !2661)
!2664 = !DILocation(line: 845, column: 17, scope: !2660)
!2665 = !{!2666, !651, i64 8}
!2666 = !{!"slotvec", !1051, i64 0, !651, i64 8}
!2667 = !DILocation(line: 845, column: 5, scope: !2660)
!2668 = !DILocation(line: 844, column: 28, scope: !2660)
!2669 = distinct !{!2669, !2663, !2670}
!2670 = !DILocation(line: 845, column: 20, scope: !2661)
!2671 = !DILocation(line: 846, column: 13, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2652, file: !191, line: 846, column: 7)
!2673 = !DILocation(line: 846, column: 17, scope: !2672)
!2674 = !DILocation(line: 846, column: 7, scope: !2652)
!2675 = !DILocation(line: 848, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !191, line: 847, column: 5)
!2677 = !DILocation(line: 849, column: 21, scope: !2676)
!2678 = !{!2666, !1051, i64 0}
!2679 = !DILocation(line: 850, column: 20, scope: !2676)
!2680 = !DILocation(line: 851, column: 5, scope: !2676)
!2681 = !DILocation(line: 852, column: 10, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2652, file: !191, line: 852, column: 7)
!2683 = !DILocation(line: 852, column: 7, scope: !2652)
!2684 = !DILocation(line: 854, column: 13, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2682, file: !191, line: 853, column: 5)
!2686 = !DILocation(line: 854, column: 7, scope: !2685)
!2687 = !DILocation(line: 855, column: 15, scope: !2685)
!2688 = !DILocation(line: 856, column: 5, scope: !2685)
!2689 = !DILocation(line: 857, column: 10, scope: !2652)
!2690 = !DILocation(line: 858, column: 1, scope: !2652)
!2691 = distinct !DISubprogram(name: "quotearg_n", scope: !191, file: !191, line: 922, type: !2692, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!22, !25, !33}
!2694 = !{!2695, !2696}
!2695 = !DILocalVariable(name: "n", arg: 1, scope: !2691, file: !191, line: 922, type: !25)
!2696 = !DILocalVariable(name: "arg", arg: 2, scope: !2691, file: !191, line: 922, type: !33)
!2697 = !DILocation(line: 922, column: 17, scope: !2691)
!2698 = !DILocation(line: 922, column: 32, scope: !2691)
!2699 = !DILocation(line: 924, column: 10, scope: !2691)
!2700 = !DILocation(line: 924, column: 3, scope: !2691)
!2701 = distinct !DISubprogram(name: "quotearg_n_options", scope: !191, file: !191, line: 869, type: !2702, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2704)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!22, !25, !33, !80, !1689}
!2704 = !{!2705, !2706, !2707, !2708, !2709, !2710, !2711, !2714, !2716, !2717, !2718}
!2705 = !DILocalVariable(name: "n", arg: 1, scope: !2701, file: !191, line: 869, type: !25)
!2706 = !DILocalVariable(name: "arg", arg: 2, scope: !2701, file: !191, line: 869, type: !33)
!2707 = !DILocalVariable(name: "argsize", arg: 3, scope: !2701, file: !191, line: 869, type: !80)
!2708 = !DILocalVariable(name: "options", arg: 4, scope: !2701, file: !191, line: 870, type: !1689)
!2709 = !DILocalVariable(name: "e", scope: !2701, file: !191, line: 872, type: !25)
!2710 = !DILocalVariable(name: "sv", scope: !2701, file: !191, line: 874, type: !217)
!2711 = !DILocalVariable(name: "preallocated", scope: !2712, file: !191, line: 881, type: !30)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !191, line: 880, column: 5)
!2713 = distinct !DILexicalBlock(scope: !2701, file: !191, line: 879, column: 7)
!2714 = !DILocalVariable(name: "size", scope: !2715, file: !191, line: 894, type: !80)
!2715 = distinct !DILexicalBlock(scope: !2701, file: !191, line: 893, column: 3)
!2716 = !DILocalVariable(name: "val", scope: !2715, file: !191, line: 895, type: !22)
!2717 = !DILocalVariable(name: "flags", scope: !2715, file: !191, line: 897, type: !25)
!2718 = !DILocalVariable(name: "qsize", scope: !2715, file: !191, line: 898, type: !80)
!2719 = !DILocation(line: 869, column: 25, scope: !2701)
!2720 = !DILocation(line: 869, column: 40, scope: !2701)
!2721 = !DILocation(line: 869, column: 52, scope: !2701)
!2722 = !DILocation(line: 870, column: 51, scope: !2701)
!2723 = !DILocation(line: 872, column: 11, scope: !2701)
!2724 = !DILocation(line: 872, column: 7, scope: !2701)
!2725 = !DILocation(line: 874, column: 24, scope: !2701)
!2726 = !DILocation(line: 874, column: 19, scope: !2701)
!2727 = !DILocation(line: 876, column: 9, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2701, file: !191, line: 876, column: 7)
!2729 = !DILocation(line: 876, column: 7, scope: !2701)
!2730 = !DILocation(line: 877, column: 5, scope: !2728)
!2731 = !DILocation(line: 879, column: 7, scope: !2713)
!2732 = !DILocation(line: 879, column: 14, scope: !2713)
!2733 = !DILocation(line: 879, column: 7, scope: !2701)
!2734 = !DILocation(line: 881, column: 31, scope: !2712)
!2735 = !DILocation(line: 883, column: 67, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2712, file: !191, line: 883, column: 11)
!2737 = !DILocation(line: 883, column: 11, scope: !2712)
!2738 = !DILocation(line: 884, column: 9, scope: !2736)
!2739 = !DILocation(line: 886, column: 32, scope: !2712)
!2740 = !DILocation(line: 886, column: 61, scope: !2712)
!2741 = !DILocation(line: 886, column: 58, scope: !2712)
!2742 = !DILocation(line: 886, column: 66, scope: !2712)
!2743 = !DILocation(line: 886, column: 22, scope: !2712)
!2744 = !DILocation(line: 886, column: 15, scope: !2712)
!2745 = !DILocation(line: 887, column: 11, scope: !2712)
!2746 = !DILocation(line: 888, column: 15, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2712, file: !191, line: 887, column: 11)
!2748 = !{i64 0, i64 8, !1541, i64 8, i64 8, !650}
!2749 = !DILocation(line: 888, column: 9, scope: !2747)
!2750 = !DILocation(line: 889, column: 20, scope: !2712)
!2751 = !DILocation(line: 889, column: 18, scope: !2712)
!2752 = !DILocation(line: 889, column: 7, scope: !2712)
!2753 = !DILocation(line: 889, column: 38, scope: !2712)
!2754 = !DILocation(line: 889, column: 31, scope: !2712)
!2755 = !DILocation(line: 889, column: 48, scope: !2712)
!2756 = !DILocation(line: 890, column: 14, scope: !2712)
!2757 = !DILocation(line: 891, column: 5, scope: !2712)
!2758 = !DILocation(line: 894, column: 19, scope: !2715)
!2759 = !DILocation(line: 894, column: 25, scope: !2715)
!2760 = !DILocation(line: 894, column: 12, scope: !2715)
!2761 = !DILocation(line: 895, column: 23, scope: !2715)
!2762 = !DILocation(line: 895, column: 11, scope: !2715)
!2763 = !DILocation(line: 897, column: 26, scope: !2715)
!2764 = !DILocation(line: 897, column: 32, scope: !2715)
!2765 = !DILocation(line: 897, column: 9, scope: !2715)
!2766 = !DILocation(line: 899, column: 55, scope: !2715)
!2767 = !DILocation(line: 900, column: 46, scope: !2715)
!2768 = !DILocation(line: 901, column: 55, scope: !2715)
!2769 = !DILocation(line: 902, column: 55, scope: !2715)
!2770 = !DILocation(line: 898, column: 20, scope: !2715)
!2771 = !DILocation(line: 898, column: 12, scope: !2715)
!2772 = !DILocation(line: 904, column: 14, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2715, file: !191, line: 904, column: 9)
!2774 = !DILocation(line: 904, column: 9, scope: !2715)
!2775 = !DILocation(line: 906, column: 35, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2773, file: !191, line: 905, column: 7)
!2777 = !DILocation(line: 906, column: 20, scope: !2776)
!2778 = !DILocation(line: 907, column: 17, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2776, file: !191, line: 907, column: 13)
!2780 = !DILocation(line: 907, column: 13, scope: !2776)
!2781 = !DILocation(line: 908, column: 11, scope: !2779)
!2782 = !DILocation(line: 220, column: 20, scope: !2605, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 909, column: 27, scope: !2776)
!2784 = !DILocation(line: 222, column: 10, scope: !2605, inlinedAt: !2783)
!2785 = !DILocation(line: 909, column: 19, scope: !2776)
!2786 = !DILocation(line: 910, column: 69, scope: !2776)
!2787 = !DILocation(line: 912, column: 44, scope: !2776)
!2788 = !DILocation(line: 913, column: 44, scope: !2776)
!2789 = !DILocation(line: 910, column: 9, scope: !2776)
!2790 = !DILocation(line: 914, column: 7, scope: !2776)
!2791 = !DILocation(line: 916, column: 11, scope: !2715)
!2792 = !DILocation(line: 917, column: 5, scope: !2715)
!2793 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !191, file: !191, line: 928, type: !2794, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!22, !25, !33, !80}
!2796 = !{!2797, !2798, !2799}
!2797 = !DILocalVariable(name: "n", arg: 1, scope: !2793, file: !191, line: 928, type: !25)
!2798 = !DILocalVariable(name: "arg", arg: 2, scope: !2793, file: !191, line: 928, type: !33)
!2799 = !DILocalVariable(name: "argsize", arg: 3, scope: !2793, file: !191, line: 928, type: !80)
!2800 = !DILocation(line: 928, column: 21, scope: !2793)
!2801 = !DILocation(line: 928, column: 36, scope: !2793)
!2802 = !DILocation(line: 928, column: 48, scope: !2793)
!2803 = !DILocation(line: 930, column: 10, scope: !2793)
!2804 = !DILocation(line: 930, column: 3, scope: !2793)
!2805 = distinct !DISubprogram(name: "quotearg", scope: !191, file: !191, line: 934, type: !2806, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!22, !33}
!2808 = !{!2809}
!2809 = !DILocalVariable(name: "arg", arg: 1, scope: !2805, file: !191, line: 934, type: !33)
!2810 = !DILocation(line: 934, column: 23, scope: !2805)
!2811 = !DILocation(line: 922, column: 17, scope: !2691, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 936, column: 10, scope: !2805)
!2813 = !DILocation(line: 922, column: 32, scope: !2691, inlinedAt: !2812)
!2814 = !DILocation(line: 924, column: 10, scope: !2691, inlinedAt: !2812)
!2815 = !DILocation(line: 936, column: 3, scope: !2805)
!2816 = distinct !DISubprogram(name: "quotearg_mem", scope: !191, file: !191, line: 940, type: !2817, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!22, !33, !80}
!2819 = !{!2820, !2821}
!2820 = !DILocalVariable(name: "arg", arg: 1, scope: !2816, file: !191, line: 940, type: !33)
!2821 = !DILocalVariable(name: "argsize", arg: 2, scope: !2816, file: !191, line: 940, type: !80)
!2822 = !DILocation(line: 940, column: 27, scope: !2816)
!2823 = !DILocation(line: 940, column: 39, scope: !2816)
!2824 = !DILocation(line: 928, column: 21, scope: !2793, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 942, column: 10, scope: !2816)
!2826 = !DILocation(line: 928, column: 36, scope: !2793, inlinedAt: !2825)
!2827 = !DILocation(line: 928, column: 48, scope: !2793, inlinedAt: !2825)
!2828 = !DILocation(line: 930, column: 10, scope: !2793, inlinedAt: !2825)
!2829 = !DILocation(line: 942, column: 3, scope: !2816)
!2830 = distinct !DISubprogram(name: "quotearg_n_style", scope: !191, file: !191, line: 946, type: !2831, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2833)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!22, !25, !168, !33}
!2833 = !{!2834, !2835, !2836, !2837}
!2834 = !DILocalVariable(name: "n", arg: 1, scope: !2830, file: !191, line: 946, type: !25)
!2835 = !DILocalVariable(name: "s", arg: 2, scope: !2830, file: !191, line: 946, type: !168)
!2836 = !DILocalVariable(name: "arg", arg: 3, scope: !2830, file: !191, line: 946, type: !33)
!2837 = !DILocalVariable(name: "o", scope: !2830, file: !191, line: 948, type: !1690)
!2838 = !DILocalVariable(name: "o", scope: !2839, file: !191, line: 187, type: !198)
!2839 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !191, file: !191, line: 185, type: !2840, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!198, !168}
!2842 = !{!2843, !2838}
!2843 = !DILocalVariable(name: "style", arg: 1, scope: !2839, file: !191, line: 185, type: !168)
!2844 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2845 = !DILocation(line: 187, column: 26, scope: !2839, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 948, column: 36, scope: !2830)
!2847 = !DILocation(line: 946, column: 23, scope: !2830)
!2848 = !DILocation(line: 946, column: 45, scope: !2830)
!2849 = !DILocation(line: 946, column: 60, scope: !2830)
!2850 = !DILocation(line: 948, column: 3, scope: !2830)
!2851 = !DILocation(line: 948, column: 32, scope: !2830)
!2852 = !DILocation(line: 185, column: 48, scope: !2839, inlinedAt: !2846)
!2853 = !DILocation(line: 187, column: 3, scope: !2839, inlinedAt: !2846)
!2854 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2855 = !DILocation(line: 188, column: 13, scope: !2856, inlinedAt: !2846)
!2856 = distinct !DILexicalBlock(scope: !2839, file: !191, line: 188, column: 7)
!2857 = !DILocation(line: 188, column: 7, scope: !2839, inlinedAt: !2846)
!2858 = !DILocation(line: 189, column: 5, scope: !2856, inlinedAt: !2846)
!2859 = !{!2860}
!2860 = distinct !{!2860, !2861, !"quoting_options_from_style: argument 0"}
!2861 = distinct !{!2861, !"quoting_options_from_style"}
!2862 = !DILocation(line: 191, column: 10, scope: !2839, inlinedAt: !2846)
!2863 = !DILocation(line: 192, column: 1, scope: !2839, inlinedAt: !2846)
!2864 = !DILocation(line: 949, column: 10, scope: !2830)
!2865 = !DILocation(line: 950, column: 1, scope: !2830)
!2866 = !DILocation(line: 949, column: 3, scope: !2830)
!2867 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !191, file: !191, line: 953, type: !2868, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!22, !25, !168, !33, !80}
!2870 = !{!2871, !2872, !2873, !2874, !2875}
!2871 = !DILocalVariable(name: "n", arg: 1, scope: !2867, file: !191, line: 953, type: !25)
!2872 = !DILocalVariable(name: "s", arg: 2, scope: !2867, file: !191, line: 953, type: !168)
!2873 = !DILocalVariable(name: "arg", arg: 3, scope: !2867, file: !191, line: 954, type: !33)
!2874 = !DILocalVariable(name: "argsize", arg: 4, scope: !2867, file: !191, line: 954, type: !80)
!2875 = !DILocalVariable(name: "o", scope: !2867, file: !191, line: 956, type: !1690)
!2876 = !DILocation(line: 187, column: 26, scope: !2839, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 956, column: 36, scope: !2867)
!2878 = !DILocation(line: 953, column: 27, scope: !2867)
!2879 = !DILocation(line: 953, column: 49, scope: !2867)
!2880 = !DILocation(line: 954, column: 35, scope: !2867)
!2881 = !DILocation(line: 954, column: 47, scope: !2867)
!2882 = !DILocation(line: 956, column: 3, scope: !2867)
!2883 = !DILocation(line: 956, column: 32, scope: !2867)
!2884 = !DILocation(line: 185, column: 48, scope: !2839, inlinedAt: !2877)
!2885 = !DILocation(line: 187, column: 3, scope: !2839, inlinedAt: !2877)
!2886 = !DILocation(line: 188, column: 13, scope: !2856, inlinedAt: !2877)
!2887 = !DILocation(line: 188, column: 7, scope: !2839, inlinedAt: !2877)
!2888 = !DILocation(line: 189, column: 5, scope: !2856, inlinedAt: !2877)
!2889 = !{!2890}
!2890 = distinct !{!2890, !2891, !"quoting_options_from_style: argument 0"}
!2891 = distinct !{!2891, !"quoting_options_from_style"}
!2892 = !DILocation(line: 191, column: 10, scope: !2839, inlinedAt: !2877)
!2893 = !DILocation(line: 192, column: 1, scope: !2839, inlinedAt: !2877)
!2894 = !DILocation(line: 957, column: 10, scope: !2867)
!2895 = !DILocation(line: 958, column: 1, scope: !2867)
!2896 = !DILocation(line: 957, column: 3, scope: !2867)
!2897 = distinct !DISubprogram(name: "quotearg_style", scope: !191, file: !191, line: 961, type: !2898, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!22, !168, !33}
!2900 = !{!2901, !2902}
!2901 = !DILocalVariable(name: "s", arg: 1, scope: !2897, file: !191, line: 961, type: !168)
!2902 = !DILocalVariable(name: "arg", arg: 2, scope: !2897, file: !191, line: 961, type: !33)
!2903 = !DILocation(line: 187, column: 26, scope: !2839, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 948, column: 36, scope: !2830, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 963, column: 10, scope: !2897)
!2906 = !DILocation(line: 961, column: 36, scope: !2897)
!2907 = !DILocation(line: 961, column: 51, scope: !2897)
!2908 = !DILocation(line: 946, column: 23, scope: !2830, inlinedAt: !2905)
!2909 = !DILocation(line: 946, column: 45, scope: !2830, inlinedAt: !2905)
!2910 = !DILocation(line: 946, column: 60, scope: !2830, inlinedAt: !2905)
!2911 = !DILocation(line: 948, column: 3, scope: !2830, inlinedAt: !2905)
!2912 = !DILocation(line: 948, column: 32, scope: !2830, inlinedAt: !2905)
!2913 = !DILocation(line: 185, column: 48, scope: !2839, inlinedAt: !2904)
!2914 = !DILocation(line: 187, column: 3, scope: !2839, inlinedAt: !2904)
!2915 = !DILocation(line: 188, column: 13, scope: !2856, inlinedAt: !2904)
!2916 = !DILocation(line: 188, column: 7, scope: !2839, inlinedAt: !2904)
!2917 = !DILocation(line: 189, column: 5, scope: !2856, inlinedAt: !2904)
!2918 = !{!2919}
!2919 = distinct !{!2919, !2920, !"quoting_options_from_style: argument 0"}
!2920 = distinct !{!2920, !"quoting_options_from_style"}
!2921 = !DILocation(line: 191, column: 10, scope: !2839, inlinedAt: !2904)
!2922 = !DILocation(line: 192, column: 1, scope: !2839, inlinedAt: !2904)
!2923 = !DILocation(line: 949, column: 10, scope: !2830, inlinedAt: !2905)
!2924 = !DILocation(line: 950, column: 1, scope: !2830, inlinedAt: !2905)
!2925 = !DILocation(line: 963, column: 3, scope: !2897)
!2926 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !191, file: !191, line: 967, type: !2927, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!22, !168, !33, !80}
!2929 = !{!2930, !2931, !2932}
!2930 = !DILocalVariable(name: "s", arg: 1, scope: !2926, file: !191, line: 967, type: !168)
!2931 = !DILocalVariable(name: "arg", arg: 2, scope: !2926, file: !191, line: 967, type: !33)
!2932 = !DILocalVariable(name: "argsize", arg: 3, scope: !2926, file: !191, line: 967, type: !80)
!2933 = !DILocation(line: 187, column: 26, scope: !2839, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 956, column: 36, scope: !2867, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 969, column: 10, scope: !2926)
!2936 = !DILocation(line: 967, column: 40, scope: !2926)
!2937 = !DILocation(line: 967, column: 55, scope: !2926)
!2938 = !DILocation(line: 967, column: 67, scope: !2926)
!2939 = !DILocation(line: 953, column: 27, scope: !2867, inlinedAt: !2935)
!2940 = !DILocation(line: 953, column: 49, scope: !2867, inlinedAt: !2935)
!2941 = !DILocation(line: 954, column: 35, scope: !2867, inlinedAt: !2935)
!2942 = !DILocation(line: 954, column: 47, scope: !2867, inlinedAt: !2935)
!2943 = !DILocation(line: 956, column: 3, scope: !2867, inlinedAt: !2935)
!2944 = !DILocation(line: 956, column: 32, scope: !2867, inlinedAt: !2935)
!2945 = !DILocation(line: 185, column: 48, scope: !2839, inlinedAt: !2934)
!2946 = !DILocation(line: 187, column: 3, scope: !2839, inlinedAt: !2934)
!2947 = !DILocation(line: 188, column: 13, scope: !2856, inlinedAt: !2934)
!2948 = !DILocation(line: 188, column: 7, scope: !2839, inlinedAt: !2934)
!2949 = !DILocation(line: 189, column: 5, scope: !2856, inlinedAt: !2934)
!2950 = !{!2951}
!2951 = distinct !{!2951, !2952, !"quoting_options_from_style: argument 0"}
!2952 = distinct !{!2952, !"quoting_options_from_style"}
!2953 = !DILocation(line: 191, column: 10, scope: !2839, inlinedAt: !2934)
!2954 = !DILocation(line: 192, column: 1, scope: !2839, inlinedAt: !2934)
!2955 = !DILocation(line: 957, column: 10, scope: !2867, inlinedAt: !2935)
!2956 = !DILocation(line: 958, column: 1, scope: !2867, inlinedAt: !2935)
!2957 = !DILocation(line: 969, column: 3, scope: !2926)
!2958 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !191, file: !191, line: 973, type: !2959, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!22, !33, !80, !23}
!2961 = !{!2962, !2963, !2964, !2965}
!2962 = !DILocalVariable(name: "arg", arg: 1, scope: !2958, file: !191, line: 973, type: !33)
!2963 = !DILocalVariable(name: "argsize", arg: 2, scope: !2958, file: !191, line: 973, type: !80)
!2964 = !DILocalVariable(name: "ch", arg: 3, scope: !2958, file: !191, line: 973, type: !23)
!2965 = !DILocalVariable(name: "options", scope: !2958, file: !191, line: 975, type: !198)
!2966 = !DILocation(line: 973, column: 32, scope: !2958)
!2967 = !DILocation(line: 973, column: 44, scope: !2958)
!2968 = !DILocation(line: 973, column: 58, scope: !2958)
!2969 = !DILocation(line: 975, column: 3, scope: !2958)
!2970 = !DILocation(line: 976, column: 13, scope: !2958)
!2971 = !{i64 0, i64 4, !735, i64 4, i64 4, !728, i64 8, i64 32, !735, i64 40, i64 8, !650, i64 48, i64 8, !650}
!2972 = !DILocation(line: 975, column: 26, scope: !2958)
!2973 = !DILocation(line: 144, column: 43, scope: !1711, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 977, column: 3, scope: !2958)
!2975 = !DILocation(line: 144, column: 51, scope: !1711, inlinedAt: !2974)
!2976 = !DILocation(line: 144, column: 58, scope: !1711, inlinedAt: !2974)
!2977 = !DILocation(line: 146, column: 17, scope: !1711, inlinedAt: !2974)
!2978 = !DILocation(line: 148, column: 62, scope: !1711, inlinedAt: !2974)
!2979 = !DILocation(line: 148, column: 57, scope: !1711, inlinedAt: !2974)
!2980 = !DILocation(line: 147, column: 17, scope: !1711, inlinedAt: !2974)
!2981 = !DILocation(line: 149, column: 18, scope: !1711, inlinedAt: !2974)
!2982 = !DILocation(line: 149, column: 15, scope: !1711, inlinedAt: !2974)
!2983 = !DILocation(line: 149, column: 7, scope: !1711, inlinedAt: !2974)
!2984 = !DILocation(line: 150, column: 12, scope: !1711, inlinedAt: !2974)
!2985 = !DILocation(line: 150, column: 15, scope: !1711, inlinedAt: !2974)
!2986 = !DILocation(line: 150, column: 25, scope: !1711, inlinedAt: !2974)
!2987 = !DILocation(line: 150, column: 7, scope: !1711, inlinedAt: !2974)
!2988 = !DILocation(line: 151, column: 18, scope: !1711, inlinedAt: !2974)
!2989 = !DILocation(line: 151, column: 23, scope: !1711, inlinedAt: !2974)
!2990 = !DILocation(line: 151, column: 6, scope: !1711, inlinedAt: !2974)
!2991 = !DILocation(line: 978, column: 10, scope: !2958)
!2992 = !DILocation(line: 979, column: 1, scope: !2958)
!2993 = !DILocation(line: 978, column: 3, scope: !2958)
!2994 = distinct !DISubprogram(name: "quotearg_char", scope: !191, file: !191, line: 982, type: !2995, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!22, !33, !23}
!2997 = !{!2998, !2999}
!2998 = !DILocalVariable(name: "arg", arg: 1, scope: !2994, file: !191, line: 982, type: !33)
!2999 = !DILocalVariable(name: "ch", arg: 2, scope: !2994, file: !191, line: 982, type: !23)
!3000 = !DILocation(line: 982, column: 28, scope: !2994)
!3001 = !DILocation(line: 982, column: 38, scope: !2994)
!3002 = !DILocation(line: 973, column: 32, scope: !2958, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 984, column: 10, scope: !2994)
!3004 = !DILocation(line: 973, column: 44, scope: !2958, inlinedAt: !3003)
!3005 = !DILocation(line: 973, column: 58, scope: !2958, inlinedAt: !3003)
!3006 = !DILocation(line: 975, column: 3, scope: !2958, inlinedAt: !3003)
!3007 = !DILocation(line: 976, column: 13, scope: !2958, inlinedAt: !3003)
!3008 = !DILocation(line: 975, column: 26, scope: !2958, inlinedAt: !3003)
!3009 = !DILocation(line: 144, column: 43, scope: !1711, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 977, column: 3, scope: !2958, inlinedAt: !3003)
!3011 = !DILocation(line: 144, column: 51, scope: !1711, inlinedAt: !3010)
!3012 = !DILocation(line: 144, column: 58, scope: !1711, inlinedAt: !3010)
!3013 = !DILocation(line: 146, column: 17, scope: !1711, inlinedAt: !3010)
!3014 = !DILocation(line: 148, column: 62, scope: !1711, inlinedAt: !3010)
!3015 = !DILocation(line: 148, column: 57, scope: !1711, inlinedAt: !3010)
!3016 = !DILocation(line: 147, column: 17, scope: !1711, inlinedAt: !3010)
!3017 = !DILocation(line: 149, column: 18, scope: !1711, inlinedAt: !3010)
!3018 = !DILocation(line: 149, column: 15, scope: !1711, inlinedAt: !3010)
!3019 = !DILocation(line: 149, column: 7, scope: !1711, inlinedAt: !3010)
!3020 = !DILocation(line: 150, column: 12, scope: !1711, inlinedAt: !3010)
!3021 = !DILocation(line: 150, column: 15, scope: !1711, inlinedAt: !3010)
!3022 = !DILocation(line: 150, column: 25, scope: !1711, inlinedAt: !3010)
!3023 = !DILocation(line: 150, column: 7, scope: !1711, inlinedAt: !3010)
!3024 = !DILocation(line: 151, column: 18, scope: !1711, inlinedAt: !3010)
!3025 = !DILocation(line: 151, column: 23, scope: !1711, inlinedAt: !3010)
!3026 = !DILocation(line: 151, column: 6, scope: !1711, inlinedAt: !3010)
!3027 = !DILocation(line: 978, column: 10, scope: !2958, inlinedAt: !3003)
!3028 = !DILocation(line: 979, column: 1, scope: !2958, inlinedAt: !3003)
!3029 = !DILocation(line: 984, column: 3, scope: !2994)
!3030 = distinct !DISubprogram(name: "quotearg_colon", scope: !191, file: !191, line: 988, type: !2806, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3031)
!3031 = !{!3032}
!3032 = !DILocalVariable(name: "arg", arg: 1, scope: !3030, file: !191, line: 988, type: !33)
!3033 = !DILocation(line: 988, column: 29, scope: !3030)
!3034 = !DILocation(line: 982, column: 28, scope: !2994, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 990, column: 10, scope: !3030)
!3036 = !DILocation(line: 982, column: 38, scope: !2994, inlinedAt: !3035)
!3037 = !DILocation(line: 973, column: 32, scope: !2958, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 984, column: 10, scope: !2994, inlinedAt: !3035)
!3039 = !DILocation(line: 973, column: 44, scope: !2958, inlinedAt: !3038)
!3040 = !DILocation(line: 973, column: 58, scope: !2958, inlinedAt: !3038)
!3041 = !DILocation(line: 975, column: 3, scope: !2958, inlinedAt: !3038)
!3042 = !DILocation(line: 976, column: 13, scope: !2958, inlinedAt: !3038)
!3043 = !DILocation(line: 975, column: 26, scope: !2958, inlinedAt: !3038)
!3044 = !DILocation(line: 144, column: 43, scope: !1711, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 977, column: 3, scope: !2958, inlinedAt: !3038)
!3046 = !DILocation(line: 144, column: 51, scope: !1711, inlinedAt: !3045)
!3047 = !DILocation(line: 144, column: 58, scope: !1711, inlinedAt: !3045)
!3048 = !DILocation(line: 146, column: 17, scope: !1711, inlinedAt: !3045)
!3049 = !DILocation(line: 148, column: 57, scope: !1711, inlinedAt: !3045)
!3050 = !DILocation(line: 147, column: 17, scope: !1711, inlinedAt: !3045)
!3051 = !DILocation(line: 149, column: 7, scope: !1711, inlinedAt: !3045)
!3052 = !DILocation(line: 150, column: 12, scope: !1711, inlinedAt: !3045)
!3053 = !DILocation(line: 151, column: 6, scope: !1711, inlinedAt: !3045)
!3054 = !DILocation(line: 978, column: 10, scope: !2958, inlinedAt: !3038)
!3055 = !DILocation(line: 979, column: 1, scope: !2958, inlinedAt: !3038)
!3056 = !DILocation(line: 990, column: 3, scope: !3030)
!3057 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !191, file: !191, line: 994, type: !2817, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3058)
!3058 = !{!3059, !3060}
!3059 = !DILocalVariable(name: "arg", arg: 1, scope: !3057, file: !191, line: 994, type: !33)
!3060 = !DILocalVariable(name: "argsize", arg: 2, scope: !3057, file: !191, line: 994, type: !80)
!3061 = !DILocation(line: 994, column: 33, scope: !3057)
!3062 = !DILocation(line: 994, column: 45, scope: !3057)
!3063 = !DILocation(line: 973, column: 32, scope: !2958, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 996, column: 10, scope: !3057)
!3065 = !DILocation(line: 973, column: 44, scope: !2958, inlinedAt: !3064)
!3066 = !DILocation(line: 973, column: 58, scope: !2958, inlinedAt: !3064)
!3067 = !DILocation(line: 975, column: 3, scope: !2958, inlinedAt: !3064)
!3068 = !DILocation(line: 976, column: 13, scope: !2958, inlinedAt: !3064)
!3069 = !DILocation(line: 975, column: 26, scope: !2958, inlinedAt: !3064)
!3070 = !DILocation(line: 144, column: 43, scope: !1711, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 977, column: 3, scope: !2958, inlinedAt: !3064)
!3072 = !DILocation(line: 144, column: 51, scope: !1711, inlinedAt: !3071)
!3073 = !DILocation(line: 144, column: 58, scope: !1711, inlinedAt: !3071)
!3074 = !DILocation(line: 146, column: 17, scope: !1711, inlinedAt: !3071)
!3075 = !DILocation(line: 148, column: 57, scope: !1711, inlinedAt: !3071)
!3076 = !DILocation(line: 147, column: 17, scope: !1711, inlinedAt: !3071)
!3077 = !DILocation(line: 149, column: 7, scope: !1711, inlinedAt: !3071)
!3078 = !DILocation(line: 150, column: 12, scope: !1711, inlinedAt: !3071)
!3079 = !DILocation(line: 151, column: 6, scope: !1711, inlinedAt: !3071)
!3080 = !DILocation(line: 978, column: 10, scope: !2958, inlinedAt: !3064)
!3081 = !DILocation(line: 979, column: 1, scope: !2958, inlinedAt: !3064)
!3082 = !DILocation(line: 996, column: 3, scope: !3057)
!3083 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !191, file: !191, line: 1000, type: !2831, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3084)
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DILocalVariable(name: "n", arg: 1, scope: !3083, file: !191, line: 1000, type: !25)
!3086 = !DILocalVariable(name: "s", arg: 2, scope: !3083, file: !191, line: 1000, type: !168)
!3087 = !DILocalVariable(name: "arg", arg: 3, scope: !3083, file: !191, line: 1000, type: !33)
!3088 = !DILocalVariable(name: "options", scope: !3083, file: !191, line: 1002, type: !198)
!3089 = !DILocation(line: 187, column: 26, scope: !2839, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 1003, column: 13, scope: !3083)
!3091 = !DILocation(line: 1000, column: 29, scope: !3083)
!3092 = !DILocation(line: 1000, column: 51, scope: !3083)
!3093 = !DILocation(line: 1000, column: 66, scope: !3083)
!3094 = !DILocation(line: 1002, column: 3, scope: !3083)
!3095 = !DILocation(line: 185, column: 48, scope: !2839, inlinedAt: !3090)
!3096 = !DILocation(line: 187, column: 3, scope: !2839, inlinedAt: !3090)
!3097 = !DILocation(line: 188, column: 13, scope: !2856, inlinedAt: !3090)
!3098 = !DILocation(line: 188, column: 7, scope: !2839, inlinedAt: !3090)
!3099 = !DILocation(line: 189, column: 5, scope: !2856, inlinedAt: !3090)
!3100 = !{!3101}
!3101 = distinct !{!3101, !3102, !"quoting_options_from_style: argument 0"}
!3102 = distinct !{!3102, !"quoting_options_from_style"}
!3103 = !DILocation(line: 191, column: 10, scope: !2839, inlinedAt: !3090)
!3104 = !DILocation(line: 192, column: 1, scope: !2839, inlinedAt: !3090)
!3105 = !DILocation(line: 1003, column: 13, scope: !3083)
!3106 = !DILocation(line: 1002, column: 26, scope: !3083)
!3107 = !DILocation(line: 144, column: 43, scope: !1711, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 1004, column: 3, scope: !3083)
!3109 = !DILocation(line: 144, column: 51, scope: !1711, inlinedAt: !3108)
!3110 = !DILocation(line: 144, column: 58, scope: !1711, inlinedAt: !3108)
!3111 = !DILocation(line: 146, column: 17, scope: !1711, inlinedAt: !3108)
!3112 = !DILocation(line: 148, column: 57, scope: !1711, inlinedAt: !3108)
!3113 = !DILocation(line: 147, column: 17, scope: !1711, inlinedAt: !3108)
!3114 = !DILocation(line: 149, column: 7, scope: !1711, inlinedAt: !3108)
!3115 = !DILocation(line: 150, column: 12, scope: !1711, inlinedAt: !3108)
!3116 = !DILocation(line: 151, column: 6, scope: !1711, inlinedAt: !3108)
!3117 = !DILocation(line: 1005, column: 10, scope: !3083)
!3118 = !DILocation(line: 1006, column: 1, scope: !3083)
!3119 = !DILocation(line: 1005, column: 3, scope: !3083)
!3120 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !191, file: !191, line: 1009, type: !3121, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!22, !25, !33, !33, !33}
!3123 = !{!3124, !3125, !3126, !3127}
!3124 = !DILocalVariable(name: "n", arg: 1, scope: !3120, file: !191, line: 1009, type: !25)
!3125 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3120, file: !191, line: 1009, type: !33)
!3126 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3120, file: !191, line: 1010, type: !33)
!3127 = !DILocalVariable(name: "arg", arg: 4, scope: !3120, file: !191, line: 1010, type: !33)
!3128 = !DILocation(line: 1009, column: 24, scope: !3120)
!3129 = !DILocation(line: 1009, column: 39, scope: !3120)
!3130 = !DILocation(line: 1010, column: 32, scope: !3120)
!3131 = !DILocation(line: 1010, column: 57, scope: !3120)
!3132 = !DILocalVariable(name: "n", arg: 1, scope: !3133, file: !191, line: 1017, type: !25)
!3133 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !191, file: !191, line: 1017, type: !3134, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!22, !25, !33, !33, !33, !80}
!3136 = !{!3132, !3137, !3138, !3139, !3140, !3141}
!3137 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3133, file: !191, line: 1017, type: !33)
!3138 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3133, file: !191, line: 1018, type: !33)
!3139 = !DILocalVariable(name: "arg", arg: 4, scope: !3133, file: !191, line: 1019, type: !33)
!3140 = !DILocalVariable(name: "argsize", arg: 5, scope: !3133, file: !191, line: 1019, type: !80)
!3141 = !DILocalVariable(name: "o", scope: !3133, file: !191, line: 1021, type: !198)
!3142 = !DILocation(line: 1017, column: 28, scope: !3133, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 1012, column: 10, scope: !3120)
!3144 = !DILocation(line: 1017, column: 43, scope: !3133, inlinedAt: !3143)
!3145 = !DILocation(line: 1018, column: 36, scope: !3133, inlinedAt: !3143)
!3146 = !DILocation(line: 1019, column: 36, scope: !3133, inlinedAt: !3143)
!3147 = !DILocation(line: 1019, column: 48, scope: !3133, inlinedAt: !3143)
!3148 = !DILocation(line: 1021, column: 3, scope: !3133, inlinedAt: !3143)
!3149 = !DILocation(line: 1021, column: 30, scope: !3133, inlinedAt: !3143)
!3150 = !DILocation(line: 1021, column: 26, scope: !3133, inlinedAt: !3143)
!3151 = !DILocation(line: 171, column: 45, scope: !1760, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 1022, column: 3, scope: !3133, inlinedAt: !3143)
!3153 = !DILocation(line: 172, column: 33, scope: !1760, inlinedAt: !3152)
!3154 = !DILocation(line: 172, column: 57, scope: !1760, inlinedAt: !3152)
!3155 = !DILocation(line: 176, column: 6, scope: !1760, inlinedAt: !3152)
!3156 = !DILocation(line: 176, column: 12, scope: !1760, inlinedAt: !3152)
!3157 = !DILocation(line: 177, column: 8, scope: !1776, inlinedAt: !3152)
!3158 = !DILocation(line: 177, column: 23, scope: !1776, inlinedAt: !3152)
!3159 = !DILocation(line: 177, column: 19, scope: !1776, inlinedAt: !3152)
!3160 = !DILocation(line: 178, column: 5, scope: !1776, inlinedAt: !3152)
!3161 = !DILocation(line: 179, column: 6, scope: !1760, inlinedAt: !3152)
!3162 = !DILocation(line: 179, column: 17, scope: !1760, inlinedAt: !3152)
!3163 = !DILocation(line: 180, column: 6, scope: !1760, inlinedAt: !3152)
!3164 = !DILocation(line: 180, column: 18, scope: !1760, inlinedAt: !3152)
!3165 = !DILocation(line: 1023, column: 10, scope: !3133, inlinedAt: !3143)
!3166 = !DILocation(line: 1024, column: 1, scope: !3133, inlinedAt: !3143)
!3167 = !DILocation(line: 1012, column: 3, scope: !3120)
!3168 = !DILocation(line: 1017, column: 28, scope: !3133)
!3169 = !DILocation(line: 1017, column: 43, scope: !3133)
!3170 = !DILocation(line: 1018, column: 36, scope: !3133)
!3171 = !DILocation(line: 1019, column: 36, scope: !3133)
!3172 = !DILocation(line: 1019, column: 48, scope: !3133)
!3173 = !DILocation(line: 1021, column: 3, scope: !3133)
!3174 = !DILocation(line: 1021, column: 30, scope: !3133)
!3175 = !DILocation(line: 1021, column: 26, scope: !3133)
!3176 = !DILocation(line: 171, column: 45, scope: !1760, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 1022, column: 3, scope: !3133)
!3178 = !DILocation(line: 172, column: 33, scope: !1760, inlinedAt: !3177)
!3179 = !DILocation(line: 172, column: 57, scope: !1760, inlinedAt: !3177)
!3180 = !DILocation(line: 176, column: 6, scope: !1760, inlinedAt: !3177)
!3181 = !DILocation(line: 176, column: 12, scope: !1760, inlinedAt: !3177)
!3182 = !DILocation(line: 177, column: 8, scope: !1776, inlinedAt: !3177)
!3183 = !DILocation(line: 177, column: 23, scope: !1776, inlinedAt: !3177)
!3184 = !DILocation(line: 177, column: 19, scope: !1776, inlinedAt: !3177)
!3185 = !DILocation(line: 178, column: 5, scope: !1776, inlinedAt: !3177)
!3186 = !DILocation(line: 179, column: 6, scope: !1760, inlinedAt: !3177)
!3187 = !DILocation(line: 179, column: 17, scope: !1760, inlinedAt: !3177)
!3188 = !DILocation(line: 180, column: 6, scope: !1760, inlinedAt: !3177)
!3189 = !DILocation(line: 180, column: 18, scope: !1760, inlinedAt: !3177)
!3190 = !DILocation(line: 1023, column: 10, scope: !3133)
!3191 = !DILocation(line: 1024, column: 1, scope: !3133)
!3192 = !DILocation(line: 1023, column: 3, scope: !3133)
!3193 = distinct !DISubprogram(name: "quotearg_custom", scope: !191, file: !191, line: 1027, type: !3194, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3196)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!22, !33, !33, !33}
!3196 = !{!3197, !3198, !3199}
!3197 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3193, file: !191, line: 1027, type: !33)
!3198 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3193, file: !191, line: 1027, type: !33)
!3199 = !DILocalVariable(name: "arg", arg: 3, scope: !3193, file: !191, line: 1028, type: !33)
!3200 = !DILocation(line: 1027, column: 30, scope: !3193)
!3201 = !DILocation(line: 1027, column: 54, scope: !3193)
!3202 = !DILocation(line: 1028, column: 30, scope: !3193)
!3203 = !DILocation(line: 1009, column: 24, scope: !3120, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 1030, column: 10, scope: !3193)
!3205 = !DILocation(line: 1009, column: 39, scope: !3120, inlinedAt: !3204)
!3206 = !DILocation(line: 1010, column: 32, scope: !3120, inlinedAt: !3204)
!3207 = !DILocation(line: 1010, column: 57, scope: !3120, inlinedAt: !3204)
!3208 = !DILocation(line: 1017, column: 28, scope: !3133, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 1012, column: 10, scope: !3120, inlinedAt: !3204)
!3210 = !DILocation(line: 1017, column: 43, scope: !3133, inlinedAt: !3209)
!3211 = !DILocation(line: 1018, column: 36, scope: !3133, inlinedAt: !3209)
!3212 = !DILocation(line: 1019, column: 36, scope: !3133, inlinedAt: !3209)
!3213 = !DILocation(line: 1019, column: 48, scope: !3133, inlinedAt: !3209)
!3214 = !DILocation(line: 1021, column: 3, scope: !3133, inlinedAt: !3209)
!3215 = !DILocation(line: 1021, column: 30, scope: !3133, inlinedAt: !3209)
!3216 = !DILocation(line: 1021, column: 26, scope: !3133, inlinedAt: !3209)
!3217 = !DILocation(line: 171, column: 45, scope: !1760, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 1022, column: 3, scope: !3133, inlinedAt: !3209)
!3219 = !DILocation(line: 172, column: 33, scope: !1760, inlinedAt: !3218)
!3220 = !DILocation(line: 172, column: 57, scope: !1760, inlinedAt: !3218)
!3221 = !DILocation(line: 176, column: 6, scope: !1760, inlinedAt: !3218)
!3222 = !DILocation(line: 176, column: 12, scope: !1760, inlinedAt: !3218)
!3223 = !DILocation(line: 177, column: 8, scope: !1776, inlinedAt: !3218)
!3224 = !DILocation(line: 177, column: 23, scope: !1776, inlinedAt: !3218)
!3225 = !DILocation(line: 177, column: 19, scope: !1776, inlinedAt: !3218)
!3226 = !DILocation(line: 178, column: 5, scope: !1776, inlinedAt: !3218)
!3227 = !DILocation(line: 179, column: 6, scope: !1760, inlinedAt: !3218)
!3228 = !DILocation(line: 179, column: 17, scope: !1760, inlinedAt: !3218)
!3229 = !DILocation(line: 180, column: 6, scope: !1760, inlinedAt: !3218)
!3230 = !DILocation(line: 180, column: 18, scope: !1760, inlinedAt: !3218)
!3231 = !DILocation(line: 1023, column: 10, scope: !3133, inlinedAt: !3209)
!3232 = !DILocation(line: 1024, column: 1, scope: !3133, inlinedAt: !3209)
!3233 = !DILocation(line: 1030, column: 3, scope: !3193)
!3234 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !191, file: !191, line: 1034, type: !3235, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!22, !33, !33, !33, !80}
!3237 = !{!3238, !3239, !3240, !3241}
!3238 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3234, file: !191, line: 1034, type: !33)
!3239 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3234, file: !191, line: 1034, type: !33)
!3240 = !DILocalVariable(name: "arg", arg: 3, scope: !3234, file: !191, line: 1035, type: !33)
!3241 = !DILocalVariable(name: "argsize", arg: 4, scope: !3234, file: !191, line: 1035, type: !80)
!3242 = !DILocation(line: 1034, column: 34, scope: !3234)
!3243 = !DILocation(line: 1034, column: 58, scope: !3234)
!3244 = !DILocation(line: 1035, column: 34, scope: !3234)
!3245 = !DILocation(line: 1035, column: 46, scope: !3234)
!3246 = !DILocation(line: 1017, column: 28, scope: !3133, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 1037, column: 10, scope: !3234)
!3248 = !DILocation(line: 1017, column: 43, scope: !3133, inlinedAt: !3247)
!3249 = !DILocation(line: 1018, column: 36, scope: !3133, inlinedAt: !3247)
!3250 = !DILocation(line: 1019, column: 36, scope: !3133, inlinedAt: !3247)
!3251 = !DILocation(line: 1019, column: 48, scope: !3133, inlinedAt: !3247)
!3252 = !DILocation(line: 1021, column: 3, scope: !3133, inlinedAt: !3247)
!3253 = !DILocation(line: 1021, column: 30, scope: !3133, inlinedAt: !3247)
!3254 = !DILocation(line: 1021, column: 26, scope: !3133, inlinedAt: !3247)
!3255 = !DILocation(line: 171, column: 45, scope: !1760, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 1022, column: 3, scope: !3133, inlinedAt: !3247)
!3257 = !DILocation(line: 172, column: 33, scope: !1760, inlinedAt: !3256)
!3258 = !DILocation(line: 172, column: 57, scope: !1760, inlinedAt: !3256)
!3259 = !DILocation(line: 176, column: 6, scope: !1760, inlinedAt: !3256)
!3260 = !DILocation(line: 176, column: 12, scope: !1760, inlinedAt: !3256)
!3261 = !DILocation(line: 177, column: 8, scope: !1776, inlinedAt: !3256)
!3262 = !DILocation(line: 177, column: 23, scope: !1776, inlinedAt: !3256)
!3263 = !DILocation(line: 177, column: 19, scope: !1776, inlinedAt: !3256)
!3264 = !DILocation(line: 178, column: 5, scope: !1776, inlinedAt: !3256)
!3265 = !DILocation(line: 179, column: 6, scope: !1760, inlinedAt: !3256)
!3266 = !DILocation(line: 179, column: 17, scope: !1760, inlinedAt: !3256)
!3267 = !DILocation(line: 180, column: 6, scope: !1760, inlinedAt: !3256)
!3268 = !DILocation(line: 180, column: 18, scope: !1760, inlinedAt: !3256)
!3269 = !DILocation(line: 1023, column: 10, scope: !3133, inlinedAt: !3247)
!3270 = !DILocation(line: 1024, column: 1, scope: !3133, inlinedAt: !3247)
!3271 = !DILocation(line: 1037, column: 3, scope: !3234)
!3272 = distinct !DISubprogram(name: "quote_n_mem", scope: !191, file: !191, line: 1052, type: !3273, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!33, !25, !33, !80}
!3275 = !{!3276, !3277, !3278}
!3276 = !DILocalVariable(name: "n", arg: 1, scope: !3272, file: !191, line: 1052, type: !25)
!3277 = !DILocalVariable(name: "arg", arg: 2, scope: !3272, file: !191, line: 1052, type: !33)
!3278 = !DILocalVariable(name: "argsize", arg: 3, scope: !3272, file: !191, line: 1052, type: !80)
!3279 = !DILocation(line: 1052, column: 18, scope: !3272)
!3280 = !DILocation(line: 1052, column: 33, scope: !3272)
!3281 = !DILocation(line: 1052, column: 45, scope: !3272)
!3282 = !DILocation(line: 1054, column: 10, scope: !3272)
!3283 = !DILocation(line: 1054, column: 3, scope: !3272)
!3284 = distinct !DISubprogram(name: "quote_mem", scope: !191, file: !191, line: 1058, type: !3285, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3287)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!33, !33, !80}
!3287 = !{!3288, !3289}
!3288 = !DILocalVariable(name: "arg", arg: 1, scope: !3284, file: !191, line: 1058, type: !33)
!3289 = !DILocalVariable(name: "argsize", arg: 2, scope: !3284, file: !191, line: 1058, type: !80)
!3290 = !DILocation(line: 1058, column: 24, scope: !3284)
!3291 = !DILocation(line: 1058, column: 36, scope: !3284)
!3292 = !DILocation(line: 1052, column: 18, scope: !3272, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 1060, column: 10, scope: !3284)
!3294 = !DILocation(line: 1052, column: 33, scope: !3272, inlinedAt: !3293)
!3295 = !DILocation(line: 1052, column: 45, scope: !3272, inlinedAt: !3293)
!3296 = !DILocation(line: 1054, column: 10, scope: !3272, inlinedAt: !3293)
!3297 = !DILocation(line: 1060, column: 3, scope: !3284)
!3298 = distinct !DISubprogram(name: "quote_n", scope: !191, file: !191, line: 1064, type: !3299, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3301)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!33, !25, !33}
!3301 = !{!3302, !3303}
!3302 = !DILocalVariable(name: "n", arg: 1, scope: !3298, file: !191, line: 1064, type: !25)
!3303 = !DILocalVariable(name: "arg", arg: 2, scope: !3298, file: !191, line: 1064, type: !33)
!3304 = !DILocation(line: 1064, column: 14, scope: !3298)
!3305 = !DILocation(line: 1064, column: 29, scope: !3298)
!3306 = !DILocation(line: 1052, column: 18, scope: !3272, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 1066, column: 10, scope: !3298)
!3308 = !DILocation(line: 1052, column: 33, scope: !3272, inlinedAt: !3307)
!3309 = !DILocation(line: 1052, column: 45, scope: !3272, inlinedAt: !3307)
!3310 = !DILocation(line: 1054, column: 10, scope: !3272, inlinedAt: !3307)
!3311 = !DILocation(line: 1066, column: 3, scope: !3298)
!3312 = distinct !DISubprogram(name: "quote", scope: !191, file: !191, line: 1070, type: !1230, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3313)
!3313 = !{!3314}
!3314 = !DILocalVariable(name: "arg", arg: 1, scope: !3312, file: !191, line: 1070, type: !33)
!3315 = !DILocation(line: 1070, column: 20, scope: !3312)
!3316 = !DILocation(line: 1064, column: 14, scope: !3298, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 1072, column: 10, scope: !3312)
!3318 = !DILocation(line: 1064, column: 29, scope: !3298, inlinedAt: !3317)
!3319 = !DILocation(line: 1052, column: 18, scope: !3272, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 1066, column: 10, scope: !3298, inlinedAt: !3317)
!3321 = !DILocation(line: 1052, column: 33, scope: !3272, inlinedAt: !3320)
!3322 = !DILocation(line: 1052, column: 45, scope: !3272, inlinedAt: !3320)
!3323 = !DILocation(line: 1054, column: 10, scope: !3272, inlinedAt: !3320)
!3324 = !DILocation(line: 1072, column: 3, scope: !3312)
!3325 = distinct !DISubprogram(name: "version_etc_arn", scope: !592, file: !592, line: 62, type: !3326, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3383)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{null, !3328, !33, !33, !33, !3382, !80}
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3330, line: 7, baseType: !3331)
!3330 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3332, line: 241, size: 1728, elements: !3333)
!3332 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3354, !3355, !3356, !3357, !3360, !3361, !3363, !3367, !3370, !3372, !3373, !3374, !3375, !3376, !3377, !3378}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3331, file: !3332, line: 242, baseType: !25, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3331, file: !3332, line: 247, baseType: !22, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3331, file: !3332, line: 248, baseType: !22, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3331, file: !3332, line: 249, baseType: !22, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3331, file: !3332, line: 250, baseType: !22, size: 64, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3331, file: !3332, line: 251, baseType: !22, size: 64, offset: 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3331, file: !3332, line: 252, baseType: !22, size: 64, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3331, file: !3332, line: 253, baseType: !22, size: 64, offset: 448)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3331, file: !3332, line: 254, baseType: !22, size: 64, offset: 512)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3331, file: !3332, line: 256, baseType: !22, size: 64, offset: 576)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3331, file: !3332, line: 257, baseType: !22, size: 64, offset: 640)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3331, file: !3332, line: 258, baseType: !22, size: 64, offset: 704)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3331, file: !3332, line: 260, baseType: !3347, size: 64, offset: 768)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3332, line: 156, size: 192, elements: !3349)
!3349 = !{!3350, !3351, !3353}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3348, file: !3332, line: 157, baseType: !3347, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3348, file: !3332, line: 158, baseType: !3352, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3348, file: !3332, line: 162, baseType: !25, size: 32, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3331, file: !3332, line: 262, baseType: !3352, size: 64, offset: 832)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3331, file: !3332, line: 264, baseType: !25, size: 32, offset: 896)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3331, file: !3332, line: 268, baseType: !25, size: 32, offset: 928)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3331, file: !3332, line: 270, baseType: !3358, size: 64, offset: 960)
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !3359, line: 140, baseType: !1427)
!3359 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3331, file: !3332, line: 274, baseType: !26, size: 16, offset: 1024)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3331, file: !3332, line: 275, baseType: !3362, size: 8, offset: 1040)
!3362 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3331, file: !3332, line: 276, baseType: !3364, size: 8, offset: 1048)
!3364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !3365)
!3365 = !{!3366}
!3366 = !DISubrange(count: 1)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3331, file: !3332, line: 280, baseType: !3368, size: 64, offset: 1088)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3332, line: 150, baseType: null)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3331, file: !3332, line: 289, baseType: !3371, size: 64, offset: 1152)
!3371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !3359, line: 141, baseType: !1427)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3331, file: !3332, line: 297, baseType: !24, size: 64, offset: 1216)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3331, file: !3332, line: 298, baseType: !24, size: 64, offset: 1280)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3331, file: !3332, line: 299, baseType: !24, size: 64, offset: 1344)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3331, file: !3332, line: 300, baseType: !24, size: 64, offset: 1408)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3331, file: !3332, line: 302, baseType: !80, size: 64, offset: 1472)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3331, file: !3332, line: 303, baseType: !25, size: 32, offset: 1536)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3331, file: !3332, line: 305, baseType: !3379, size: 160, offset: 1568)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !3380)
!3380 = !{!3381}
!3381 = !DISubrange(count: 20)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!3383 = !{!3384, !3385, !3386, !3387, !3388, !3389}
!3384 = !DILocalVariable(name: "stream", arg: 1, scope: !3325, file: !592, line: 62, type: !3328)
!3385 = !DILocalVariable(name: "command_name", arg: 2, scope: !3325, file: !592, line: 63, type: !33)
!3386 = !DILocalVariable(name: "package", arg: 3, scope: !3325, file: !592, line: 63, type: !33)
!3387 = !DILocalVariable(name: "version", arg: 4, scope: !3325, file: !592, line: 64, type: !33)
!3388 = !DILocalVariable(name: "authors", arg: 5, scope: !3325, file: !592, line: 65, type: !3382)
!3389 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3325, file: !592, line: 65, type: !80)
!3390 = !DILocation(line: 62, column: 24, scope: !3325)
!3391 = !DILocation(line: 63, column: 30, scope: !3325)
!3392 = !DILocation(line: 63, column: 56, scope: !3325)
!3393 = !DILocation(line: 64, column: 30, scope: !3325)
!3394 = !DILocation(line: 65, column: 39, scope: !3325)
!3395 = !DILocation(line: 65, column: 55, scope: !3325)
!3396 = !DILocation(line: 67, column: 7, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3325, file: !592, line: 67, column: 7)
!3398 = !DILocation(line: 67, column: 7, scope: !3325)
!3399 = !DILocation(line: 68, column: 5, scope: !3397)
!3400 = !DILocation(line: 70, column: 5, scope: !3397)
!3401 = !DILocation(line: 84, column: 3, scope: !3325)
!3402 = !DILocation(line: 86, column: 3, scope: !3325)
!3403 = !DILocation(line: 95, column: 3, scope: !3325)
!3404 = !DILocation(line: 99, column: 7, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3325, file: !592, line: 96, column: 5)
!3406 = !DILocation(line: 102, column: 7, scope: !3405)
!3407 = !DILocation(line: 103, column: 7, scope: !3405)
!3408 = !DILocation(line: 106, column: 7, scope: !3405)
!3409 = !DILocation(line: 107, column: 7, scope: !3405)
!3410 = !DILocation(line: 110, column: 7, scope: !3405)
!3411 = !DILocation(line: 112, column: 7, scope: !3405)
!3412 = !DILocation(line: 117, column: 7, scope: !3405)
!3413 = !DILocation(line: 119, column: 7, scope: !3405)
!3414 = !DILocation(line: 124, column: 7, scope: !3405)
!3415 = !DILocation(line: 126, column: 7, scope: !3405)
!3416 = !DILocation(line: 131, column: 7, scope: !3405)
!3417 = !DILocation(line: 134, column: 7, scope: !3405)
!3418 = !DILocation(line: 139, column: 7, scope: !3405)
!3419 = !DILocation(line: 142, column: 7, scope: !3405)
!3420 = !DILocation(line: 147, column: 7, scope: !3405)
!3421 = !DILocation(line: 151, column: 7, scope: !3405)
!3422 = !DILocation(line: 156, column: 7, scope: !3405)
!3423 = !DILocation(line: 160, column: 7, scope: !3405)
!3424 = !DILocation(line: 167, column: 7, scope: !3405)
!3425 = !DILocation(line: 171, column: 7, scope: !3405)
!3426 = !DILocation(line: 173, column: 1, scope: !3325)
!3427 = distinct !DISubprogram(name: "version_etc_ar", scope: !592, file: !592, line: 180, type: !3428, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{null, !3328, !33, !33, !33, !3382}
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3436}
!3431 = !DILocalVariable(name: "stream", arg: 1, scope: !3427, file: !592, line: 180, type: !3328)
!3432 = !DILocalVariable(name: "command_name", arg: 2, scope: !3427, file: !592, line: 181, type: !33)
!3433 = !DILocalVariable(name: "package", arg: 3, scope: !3427, file: !592, line: 181, type: !33)
!3434 = !DILocalVariable(name: "version", arg: 4, scope: !3427, file: !592, line: 182, type: !33)
!3435 = !DILocalVariable(name: "authors", arg: 5, scope: !3427, file: !592, line: 182, type: !3382)
!3436 = !DILocalVariable(name: "n_authors", scope: !3427, file: !592, line: 184, type: !80)
!3437 = !DILocation(line: 180, column: 23, scope: !3427)
!3438 = !DILocation(line: 181, column: 29, scope: !3427)
!3439 = !DILocation(line: 181, column: 55, scope: !3427)
!3440 = !DILocation(line: 182, column: 29, scope: !3427)
!3441 = !DILocation(line: 182, column: 59, scope: !3427)
!3442 = !DILocation(line: 184, column: 10, scope: !3427)
!3443 = !DILocation(line: 186, column: 8, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3427, file: !592, line: 186, column: 3)
!3445 = !DILocation(line: 186, column: 23, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3444, file: !592, line: 186, column: 3)
!3447 = !DILocation(line: 186, column: 3, scope: !3444)
!3448 = !DILocation(line: 186, column: 52, scope: !3446)
!3449 = distinct !{!3449, !3447, !3450}
!3450 = !DILocation(line: 187, column: 5, scope: !3444)
!3451 = !DILocation(line: 188, column: 3, scope: !3427)
!3452 = !DILocation(line: 189, column: 1, scope: !3427)
!3453 = distinct !DISubprogram(name: "version_etc_va", scope: !592, file: !592, line: 196, type: !3454, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3463)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{null, !3328, !33, !33, !33, !3456}
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !589, line: 189, size: 192, elements: !3458)
!3458 = !{!3459, !3460, !3461, !3462}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3457, file: !589, line: 189, baseType: !21, size: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3457, file: !589, line: 189, baseType: !21, size: 32, offset: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3457, file: !589, line: 189, baseType: !24, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3457, file: !589, line: 189, baseType: !24, size: 64, offset: 128)
!3463 = !{!3464, !3465, !3466, !3467, !3468, !3469, !3470}
!3464 = !DILocalVariable(name: "stream", arg: 1, scope: !3453, file: !592, line: 196, type: !3328)
!3465 = !DILocalVariable(name: "command_name", arg: 2, scope: !3453, file: !592, line: 197, type: !33)
!3466 = !DILocalVariable(name: "package", arg: 3, scope: !3453, file: !592, line: 197, type: !33)
!3467 = !DILocalVariable(name: "version", arg: 4, scope: !3453, file: !592, line: 198, type: !33)
!3468 = !DILocalVariable(name: "authors", arg: 5, scope: !3453, file: !592, line: 198, type: !3456)
!3469 = !DILocalVariable(name: "n_authors", scope: !3453, file: !592, line: 200, type: !80)
!3470 = !DILocalVariable(name: "authtab", scope: !3453, file: !592, line: 201, type: !3471)
!3471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 640, elements: !194)
!3472 = !DILocation(line: 196, column: 23, scope: !3453)
!3473 = !DILocation(line: 197, column: 29, scope: !3453)
!3474 = !DILocation(line: 197, column: 55, scope: !3453)
!3475 = !DILocation(line: 198, column: 29, scope: !3453)
!3476 = !DILocation(line: 198, column: 46, scope: !3453)
!3477 = !DILocation(line: 201, column: 3, scope: !3453)
!3478 = !DILocation(line: 201, column: 15, scope: !3453)
!3479 = !DILocation(line: 200, column: 10, scope: !3453)
!3480 = !DILocation(line: 205, column: 35, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !592, line: 203, column: 3)
!3482 = distinct !DILexicalBlock(scope: !3453, file: !592, line: 203, column: 3)
!3483 = !DILocation(line: 205, column: 14, scope: !3481)
!3484 = !DILocation(line: 205, column: 33, scope: !3481)
!3485 = !DILocation(line: 205, column: 67, scope: !3481)
!3486 = !DILocation(line: 203, column: 3, scope: !3482)
!3487 = !DILocation(line: 208, column: 3, scope: !3453)
!3488 = !DILocation(line: 210, column: 1, scope: !3453)
!3489 = distinct !DISubprogram(name: "version_etc", scope: !592, file: !592, line: 227, type: !3490, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{null, !3328, !33, !33, !33, null}
!3492 = !{!3493, !3494, !3495, !3496, !3497}
!3493 = !DILocalVariable(name: "stream", arg: 1, scope: !3489, file: !592, line: 227, type: !3328)
!3494 = !DILocalVariable(name: "command_name", arg: 2, scope: !3489, file: !592, line: 228, type: !33)
!3495 = !DILocalVariable(name: "package", arg: 3, scope: !3489, file: !592, line: 228, type: !33)
!3496 = !DILocalVariable(name: "version", arg: 4, scope: !3489, file: !592, line: 229, type: !33)
!3497 = !DILocalVariable(name: "authors", scope: !3489, file: !592, line: 231, type: !3498)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3499, line: 46, baseType: !3500)
!3499 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3501, line: 48, baseType: !3502)
!3501 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !589, line: 231, baseType: !3503)
!3503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3457, size: 192, elements: !3365)
!3504 = !DILocation(line: 227, column: 20, scope: !3489)
!3505 = !DILocation(line: 228, column: 26, scope: !3489)
!3506 = !DILocation(line: 228, column: 52, scope: !3489)
!3507 = !DILocation(line: 229, column: 26, scope: !3489)
!3508 = !DILocation(line: 231, column: 3, scope: !3489)
!3509 = !DILocation(line: 231, column: 11, scope: !3489)
!3510 = !DILocation(line: 233, column: 3, scope: !3489)
!3511 = !DILocation(line: 234, column: 3, scope: !3489)
!3512 = !DILocation(line: 235, column: 3, scope: !3489)
!3513 = !DILocation(line: 236, column: 1, scope: !3489)
!3514 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !592, file: !592, line: 239, type: !659, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !109)
!3515 = !DILocation(line: 245, column: 3, scope: !3514)
!3516 = !DILocation(line: 251, column: 3, scope: !3514)
!3517 = !DILocation(line: 256, column: 3, scope: !3514)
!3518 = !DILocation(line: 258, column: 1, scope: !3514)
!3519 = distinct !DISubprogram(name: "xnmalloc", scope: !600, file: !600, line: 105, type: !3520, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!24, !80, !80}
!3522 = !{!3523, !3524}
!3523 = !DILocalVariable(name: "n", arg: 1, scope: !3519, file: !600, line: 105, type: !80)
!3524 = !DILocalVariable(name: "s", arg: 2, scope: !3519, file: !600, line: 105, type: !80)
!3525 = !DILocation(line: 105, column: 18, scope: !3519)
!3526 = !DILocation(line: 105, column: 28, scope: !3519)
!3527 = !DILocation(line: 107, column: 7, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3519, file: !600, line: 107, column: 7)
!3529 = !DILocation(line: 107, column: 7, scope: !3519)
!3530 = !DILocation(line: 108, column: 5, scope: !3528)
!3531 = !DILocation(line: 109, column: 21, scope: !3519)
!3532 = !DILocalVariable(name: "n", arg: 1, scope: !3533, file: !3534, line: 39, type: !80)
!3533 = distinct !DISubprogram(name: "xmalloc", scope: !3534, file: !3534, line: 39, type: !3535, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3537)
!3534 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!24, !80}
!3537 = !{!3532, !3538}
!3538 = !DILocalVariable(name: "p", scope: !3533, file: !3534, line: 41, type: !24)
!3539 = !DILocation(line: 39, column: 17, scope: !3533, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 109, column: 10, scope: !3519)
!3541 = !DILocation(line: 41, column: 13, scope: !3533, inlinedAt: !3540)
!3542 = !DILocation(line: 41, column: 9, scope: !3533, inlinedAt: !3540)
!3543 = !DILocation(line: 42, column: 8, scope: !3544, inlinedAt: !3540)
!3544 = distinct !DILexicalBlock(scope: !3533, file: !3534, line: 42, column: 7)
!3545 = !DILocation(line: 42, column: 15, scope: !3544, inlinedAt: !3540)
!3546 = !DILocation(line: 42, column: 10, scope: !3544, inlinedAt: !3540)
!3547 = !DILocation(line: 43, column: 5, scope: !3544, inlinedAt: !3540)
!3548 = !DILocation(line: 109, column: 3, scope: !3519)
!3549 = !DILocation(line: 39, column: 17, scope: !3533)
!3550 = !DILocation(line: 41, column: 13, scope: !3533)
!3551 = !DILocation(line: 41, column: 9, scope: !3533)
!3552 = !DILocation(line: 42, column: 8, scope: !3544)
!3553 = !DILocation(line: 42, column: 15, scope: !3544)
!3554 = !DILocation(line: 42, column: 10, scope: !3544)
!3555 = !DILocation(line: 43, column: 5, scope: !3544)
!3556 = !DILocation(line: 44, column: 3, scope: !3533)
!3557 = distinct !DISubprogram(name: "xnrealloc", scope: !600, file: !600, line: 118, type: !3558, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3560)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!24, !24, !80, !80}
!3560 = !{!3561, !3562, !3563}
!3561 = !DILocalVariable(name: "p", arg: 1, scope: !3557, file: !600, line: 118, type: !24)
!3562 = !DILocalVariable(name: "n", arg: 2, scope: !3557, file: !600, line: 118, type: !80)
!3563 = !DILocalVariable(name: "s", arg: 3, scope: !3557, file: !600, line: 118, type: !80)
!3564 = !DILocation(line: 118, column: 18, scope: !3557)
!3565 = !DILocation(line: 118, column: 28, scope: !3557)
!3566 = !DILocation(line: 118, column: 38, scope: !3557)
!3567 = !DILocation(line: 120, column: 7, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3557, file: !600, line: 120, column: 7)
!3569 = !DILocation(line: 120, column: 7, scope: !3557)
!3570 = !DILocation(line: 121, column: 5, scope: !3568)
!3571 = !DILocation(line: 122, column: 25, scope: !3557)
!3572 = !DILocalVariable(name: "p", arg: 1, scope: !3573, file: !3534, line: 51, type: !24)
!3573 = distinct !DISubprogram(name: "xrealloc", scope: !3534, file: !3534, line: 51, type: !3574, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3576)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!24, !24, !80}
!3576 = !{!3572, !3577}
!3577 = !DILocalVariable(name: "n", arg: 2, scope: !3573, file: !3534, line: 51, type: !80)
!3578 = !DILocation(line: 51, column: 17, scope: !3573, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 122, column: 10, scope: !3557)
!3580 = !DILocation(line: 51, column: 27, scope: !3573, inlinedAt: !3579)
!3581 = !DILocation(line: 53, column: 8, scope: !3582, inlinedAt: !3579)
!3582 = distinct !DILexicalBlock(scope: !3573, file: !3534, line: 53, column: 7)
!3583 = !DILocation(line: 53, column: 13, scope: !3582, inlinedAt: !3579)
!3584 = !DILocation(line: 53, column: 10, scope: !3582, inlinedAt: !3579)
!3585 = !DILocation(line: 57, column: 7, scope: !3586, inlinedAt: !3579)
!3586 = distinct !DILexicalBlock(scope: !3582, file: !3534, line: 54, column: 5)
!3587 = !DILocation(line: 58, column: 7, scope: !3586, inlinedAt: !3579)
!3588 = !DILocation(line: 61, column: 7, scope: !3573, inlinedAt: !3579)
!3589 = !DILocation(line: 62, column: 8, scope: !3590, inlinedAt: !3579)
!3590 = distinct !DILexicalBlock(scope: !3573, file: !3534, line: 62, column: 7)
!3591 = !DILocation(line: 62, column: 13, scope: !3590, inlinedAt: !3579)
!3592 = !DILocation(line: 62, column: 10, scope: !3590, inlinedAt: !3579)
!3593 = !DILocation(line: 63, column: 5, scope: !3590, inlinedAt: !3579)
!3594 = !DILocation(line: 122, column: 3, scope: !3557)
!3595 = !DILocation(line: 51, column: 17, scope: !3573)
!3596 = !DILocation(line: 51, column: 27, scope: !3573)
!3597 = !DILocation(line: 53, column: 8, scope: !3582)
!3598 = !DILocation(line: 53, column: 13, scope: !3582)
!3599 = !DILocation(line: 53, column: 10, scope: !3582)
!3600 = !DILocation(line: 57, column: 7, scope: !3586)
!3601 = !DILocation(line: 58, column: 7, scope: !3586)
!3602 = !DILocation(line: 61, column: 7, scope: !3573)
!3603 = !DILocation(line: 62, column: 8, scope: !3590)
!3604 = !DILocation(line: 62, column: 13, scope: !3590)
!3605 = !DILocation(line: 62, column: 10, scope: !3590)
!3606 = !DILocation(line: 63, column: 5, scope: !3590)
!3607 = !DILocation(line: 65, column: 1, scope: !3573)
!3608 = !DILocation(line: 180, column: 19, scope: !601)
!3609 = !DILocation(line: 180, column: 30, scope: !601)
!3610 = !DILocation(line: 180, column: 41, scope: !601)
!3611 = !DILocation(line: 182, column: 14, scope: !601)
!3612 = !DILocation(line: 182, column: 10, scope: !601)
!3613 = !DILocation(line: 184, column: 9, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !601, file: !600, line: 184, column: 7)
!3615 = !DILocation(line: 184, column: 7, scope: !601)
!3616 = !DILocation(line: 186, column: 13, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !600, line: 186, column: 11)
!3618 = distinct !DILexicalBlock(scope: !3614, file: !600, line: 185, column: 5)
!3619 = !DILocation(line: 186, column: 11, scope: !3618)
!3620 = !DILocation(line: 194, column: 30, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3617, file: !600, line: 187, column: 9)
!3622 = !DILocation(line: 195, column: 16, scope: !3621)
!3623 = !DILocation(line: 195, column: 13, scope: !3621)
!3624 = !DILocation(line: 196, column: 9, scope: !3621)
!3625 = !DILocation(line: 204, column: 69, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !600, line: 204, column: 11)
!3627 = distinct !DILexicalBlock(scope: !3614, file: !600, line: 199, column: 5)
!3628 = !DILocation(line: 205, column: 11, scope: !3626)
!3629 = !DILocation(line: 204, column: 11, scope: !3627)
!3630 = !DILocation(line: 206, column: 9, scope: !3626)
!3631 = !DILocation(line: 210, column: 7, scope: !601)
!3632 = !DILocation(line: 211, column: 25, scope: !601)
!3633 = !DILocation(line: 51, column: 17, scope: !3573, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 211, column: 10, scope: !601)
!3635 = !DILocation(line: 51, column: 27, scope: !3573, inlinedAt: !3634)
!3636 = !DILocation(line: 53, column: 10, scope: !3582, inlinedAt: !3634)
!3637 = !DILocation(line: 207, column: 14, scope: !3627)
!3638 = !DILocation(line: 207, column: 18, scope: !3627)
!3639 = !DILocation(line: 207, column: 9, scope: !3627)
!3640 = !DILocation(line: 53, column: 8, scope: !3582, inlinedAt: !3634)
!3641 = !DILocation(line: 57, column: 7, scope: !3586, inlinedAt: !3634)
!3642 = !DILocation(line: 58, column: 7, scope: !3586, inlinedAt: !3634)
!3643 = !DILocation(line: 61, column: 7, scope: !3573, inlinedAt: !3634)
!3644 = !DILocation(line: 62, column: 8, scope: !3590, inlinedAt: !3634)
!3645 = !DILocation(line: 62, column: 13, scope: !3590, inlinedAt: !3634)
!3646 = !DILocation(line: 62, column: 10, scope: !3590, inlinedAt: !3634)
!3647 = !DILocation(line: 63, column: 5, scope: !3590, inlinedAt: !3634)
!3648 = !DILocation(line: 211, column: 3, scope: !601)
!3649 = distinct !DISubprogram(name: "xcharalloc", scope: !600, file: !600, line: 220, type: !2606, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3650)
!3650 = !{!3651}
!3651 = !DILocalVariable(name: "n", arg: 1, scope: !3649, file: !600, line: 220, type: !80)
!3652 = !DILocation(line: 220, column: 20, scope: !3649)
!3653 = !DILocation(line: 39, column: 17, scope: !3533, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 222, column: 10, scope: !3649)
!3655 = !DILocation(line: 41, column: 13, scope: !3533, inlinedAt: !3654)
!3656 = !DILocation(line: 41, column: 9, scope: !3533, inlinedAt: !3654)
!3657 = !DILocation(line: 42, column: 8, scope: !3544, inlinedAt: !3654)
!3658 = !DILocation(line: 42, column: 15, scope: !3544, inlinedAt: !3654)
!3659 = !DILocation(line: 42, column: 10, scope: !3544, inlinedAt: !3654)
!3660 = !DILocation(line: 43, column: 5, scope: !3544, inlinedAt: !3654)
!3661 = !DILocation(line: 222, column: 3, scope: !3649)
!3662 = distinct !DISubprogram(name: "x2realloc", scope: !3534, file: !3534, line: 74, type: !3663, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!24, !24, !604}
!3665 = !{!3666, !3667}
!3666 = !DILocalVariable(name: "p", arg: 1, scope: !3662, file: !3534, line: 74, type: !24)
!3667 = !DILocalVariable(name: "pn", arg: 2, scope: !3662, file: !3534, line: 74, type: !604)
!3668 = !DILocation(line: 74, column: 18, scope: !3662)
!3669 = !DILocation(line: 74, column: 29, scope: !3662)
!3670 = !DILocation(line: 180, column: 19, scope: !601, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 76, column: 10, scope: !3662)
!3672 = !DILocation(line: 180, column: 30, scope: !601, inlinedAt: !3671)
!3673 = !DILocation(line: 180, column: 41, scope: !601, inlinedAt: !3671)
!3674 = !DILocation(line: 182, column: 14, scope: !601, inlinedAt: !3671)
!3675 = !DILocation(line: 182, column: 10, scope: !601, inlinedAt: !3671)
!3676 = !DILocation(line: 184, column: 9, scope: !3614, inlinedAt: !3671)
!3677 = !DILocation(line: 184, column: 7, scope: !601, inlinedAt: !3671)
!3678 = !DILocation(line: 186, column: 13, scope: !3617, inlinedAt: !3671)
!3679 = !DILocation(line: 186, column: 11, scope: !3618, inlinedAt: !3671)
!3680 = !DILocation(line: 210, column: 7, scope: !601, inlinedAt: !3671)
!3681 = !DILocation(line: 51, column: 17, scope: !3573, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 211, column: 10, scope: !601, inlinedAt: !3671)
!3683 = !DILocation(line: 51, column: 27, scope: !3573, inlinedAt: !3682)
!3684 = !DILocation(line: 53, column: 10, scope: !3582, inlinedAt: !3682)
!3685 = !DILocation(line: 205, column: 11, scope: !3626, inlinedAt: !3671)
!3686 = !DILocation(line: 204, column: 11, scope: !3627, inlinedAt: !3671)
!3687 = !DILocation(line: 206, column: 9, scope: !3626, inlinedAt: !3671)
!3688 = !DILocation(line: 207, column: 14, scope: !3627, inlinedAt: !3671)
!3689 = !DILocation(line: 207, column: 18, scope: !3627, inlinedAt: !3671)
!3690 = !DILocation(line: 207, column: 9, scope: !3627, inlinedAt: !3671)
!3691 = !DILocation(line: 53, column: 8, scope: !3582, inlinedAt: !3682)
!3692 = !DILocation(line: 57, column: 7, scope: !3586, inlinedAt: !3682)
!3693 = !DILocation(line: 58, column: 7, scope: !3586, inlinedAt: !3682)
!3694 = !DILocation(line: 61, column: 7, scope: !3573, inlinedAt: !3682)
!3695 = !DILocation(line: 62, column: 8, scope: !3590, inlinedAt: !3682)
!3696 = !DILocation(line: 62, column: 13, scope: !3590, inlinedAt: !3682)
!3697 = !DILocation(line: 62, column: 10, scope: !3590, inlinedAt: !3682)
!3698 = !DILocation(line: 63, column: 5, scope: !3590, inlinedAt: !3682)
!3699 = !DILocation(line: 76, column: 3, scope: !3662)
!3700 = distinct !DISubprogram(name: "xzalloc", scope: !3534, file: !3534, line: 84, type: !3535, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3701)
!3701 = !{!3702}
!3702 = !DILocalVariable(name: "s", arg: 1, scope: !3700, file: !3534, line: 84, type: !80)
!3703 = !DILocation(line: 84, column: 17, scope: !3700)
!3704 = !DILocation(line: 39, column: 17, scope: !3533, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 86, column: 18, scope: !3700)
!3706 = !DILocation(line: 41, column: 13, scope: !3533, inlinedAt: !3705)
!3707 = !DILocation(line: 41, column: 9, scope: !3533, inlinedAt: !3705)
!3708 = !DILocation(line: 42, column: 8, scope: !3544, inlinedAt: !3705)
!3709 = !DILocation(line: 42, column: 15, scope: !3544, inlinedAt: !3705)
!3710 = !DILocation(line: 42, column: 10, scope: !3544, inlinedAt: !3705)
!3711 = !DILocation(line: 43, column: 5, scope: !3544, inlinedAt: !3705)
!3712 = !DILocation(line: 86, column: 10, scope: !3700)
!3713 = !DILocation(line: 86, column: 3, scope: !3700)
!3714 = distinct !DISubprogram(name: "xcalloc", scope: !3534, file: !3534, line: 93, type: !3520, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3715)
!3715 = !{!3716, !3717, !3718}
!3716 = !DILocalVariable(name: "n", arg: 1, scope: !3714, file: !3534, line: 93, type: !80)
!3717 = !DILocalVariable(name: "s", arg: 2, scope: !3714, file: !3534, line: 93, type: !80)
!3718 = !DILocalVariable(name: "p", scope: !3714, file: !3534, line: 95, type: !24)
!3719 = !DILocation(line: 93, column: 17, scope: !3714)
!3720 = !DILocation(line: 93, column: 27, scope: !3714)
!3721 = !DILocation(line: 100, column: 7, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3714, file: !3534, line: 100, column: 7)
!3723 = !DILocation(line: 101, column: 7, scope: !3722)
!3724 = !DILocation(line: 101, column: 18, scope: !3722)
!3725 = !DILocation(line: 95, column: 9, scope: !3714)
!3726 = !DILocation(line: 101, column: 16, scope: !3722)
!3727 = !DILocation(line: 100, column: 7, scope: !3714)
!3728 = !DILocation(line: 102, column: 5, scope: !3722)
!3729 = !DILocation(line: 103, column: 3, scope: !3714)
!3730 = distinct !DISubprogram(name: "xmemdup", scope: !3534, file: !3534, line: 111, type: !3731, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3733)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!24, !1315, !80}
!3733 = !{!3734, !3735}
!3734 = !DILocalVariable(name: "p", arg: 1, scope: !3730, file: !3534, line: 111, type: !1315)
!3735 = !DILocalVariable(name: "s", arg: 2, scope: !3730, file: !3534, line: 111, type: !80)
!3736 = !DILocation(line: 111, column: 22, scope: !3730)
!3737 = !DILocation(line: 111, column: 32, scope: !3730)
!3738 = !DILocation(line: 39, column: 17, scope: !3533, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 113, column: 18, scope: !3730)
!3740 = !DILocation(line: 41, column: 13, scope: !3533, inlinedAt: !3739)
!3741 = !DILocation(line: 41, column: 9, scope: !3533, inlinedAt: !3739)
!3742 = !DILocation(line: 42, column: 8, scope: !3544, inlinedAt: !3739)
!3743 = !DILocation(line: 42, column: 15, scope: !3544, inlinedAt: !3739)
!3744 = !DILocation(line: 42, column: 10, scope: !3544, inlinedAt: !3739)
!3745 = !DILocation(line: 43, column: 5, scope: !3544, inlinedAt: !3739)
!3746 = !DILocation(line: 113, column: 10, scope: !3730)
!3747 = !DILocation(line: 113, column: 3, scope: !3730)
!3748 = distinct !DISubprogram(name: "xstrdup", scope: !3534, file: !3534, line: 119, type: !2806, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3749)
!3749 = !{!3750}
!3750 = !DILocalVariable(name: "string", arg: 1, scope: !3748, file: !3534, line: 119, type: !33)
!3751 = !DILocation(line: 119, column: 22, scope: !3748)
!3752 = !DILocation(line: 121, column: 27, scope: !3748)
!3753 = !DILocation(line: 121, column: 43, scope: !3748)
!3754 = !DILocation(line: 111, column: 22, scope: !3730, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 121, column: 10, scope: !3748)
!3756 = !DILocation(line: 111, column: 32, scope: !3730, inlinedAt: !3755)
!3757 = !DILocation(line: 39, column: 17, scope: !3533, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 113, column: 18, scope: !3730, inlinedAt: !3755)
!3759 = !DILocation(line: 41, column: 13, scope: !3533, inlinedAt: !3758)
!3760 = !DILocation(line: 41, column: 9, scope: !3533, inlinedAt: !3758)
!3761 = !DILocation(line: 42, column: 8, scope: !3544, inlinedAt: !3758)
!3762 = !DILocation(line: 42, column: 15, scope: !3544, inlinedAt: !3758)
!3763 = !DILocation(line: 42, column: 10, scope: !3544, inlinedAt: !3758)
!3764 = !DILocation(line: 43, column: 5, scope: !3544, inlinedAt: !3758)
!3765 = !DILocation(line: 113, column: 10, scope: !3730, inlinedAt: !3755)
!3766 = !DILocation(line: 121, column: 3, scope: !3748)
!3767 = distinct !DISubprogram(name: "xalloc_die", scope: !3768, file: !3768, line: 32, type: !659, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !613, variables: !109)
!3768 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3769 = !DILocation(line: 34, column: 10, scope: !3767)
!3770 = !DILocation(line: 34, column: 33, scope: !3767)
!3771 = !DILocation(line: 34, column: 3, scope: !3767)
!3772 = !DILocation(line: 40, column: 3, scope: !3767)
!3773 = distinct !DISubprogram(name: "xstrtold", scope: !3774, file: !3774, line: 44, type: !3775, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !3780)
!3774 = !DIFile(filename: "./lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!30, !33, !3777, !3778, !3779}
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786, !3787}
!3781 = !DILocalVariable(name: "str", arg: 1, scope: !3773, file: !3774, line: 44, type: !33)
!3782 = !DILocalVariable(name: "ptr", arg: 2, scope: !3773, file: !3774, line: 44, type: !3777)
!3783 = !DILocalVariable(name: "result", arg: 3, scope: !3773, file: !3774, line: 44, type: !3778)
!3784 = !DILocalVariable(name: "convert", arg: 4, scope: !3773, file: !3774, line: 45, type: !3779)
!3785 = !DILocalVariable(name: "val", scope: !3773, file: !3774, line: 47, type: !78)
!3786 = !DILocalVariable(name: "terminator", scope: !3773, file: !3774, line: 48, type: !22)
!3787 = !DILocalVariable(name: "ok", scope: !3773, file: !3774, line: 49, type: !30)
!3788 = !DILocation(line: 44, column: 22, scope: !3773)
!3789 = !DILocation(line: 44, column: 40, scope: !3773)
!3790 = !DILocation(line: 44, column: 53, scope: !3773)
!3791 = !DILocation(line: 45, column: 19, scope: !3773)
!3792 = !DILocation(line: 48, column: 3, scope: !3773)
!3793 = !DILocation(line: 49, column: 8, scope: !3773)
!3794 = !DILocation(line: 51, column: 3, scope: !3773)
!3795 = !DILocation(line: 51, column: 9, scope: !3773)
!3796 = !DILocation(line: 48, column: 9, scope: !3773)
!3797 = !DILocation(line: 52, column: 9, scope: !3773)
!3798 = !DILocation(line: 47, column: 10, scope: !3773)
!3799 = !DILocation(line: 55, column: 7, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3773, file: !3774, line: 55, column: 7)
!3801 = !DILocation(line: 55, column: 18, scope: !3800)
!3802 = !DILocation(line: 55, column: 25, scope: !3800)
!3803 = !DILocation(line: 55, column: 33, scope: !3800)
!3804 = !DILocation(line: 55, column: 41, scope: !3800)
!3805 = !DILocation(line: 55, column: 44, scope: !3800)
!3806 = !DILocation(line: 55, column: 56, scope: !3800)
!3807 = !DILocation(line: 55, column: 7, scope: !3773)
!3808 = !DILocation(line: 62, column: 15, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !3774, line: 62, column: 11)
!3810 = distinct !DILexicalBlock(scope: !3800, file: !3774, line: 58, column: 5)
!3811 = !DILocation(line: 62, column: 20, scope: !3809)
!3812 = !DILocation(line: 62, column: 23, scope: !3809)
!3813 = !DILocation(line: 62, column: 29, scope: !3809)
!3814 = !DILocation(line: 62, column: 11, scope: !3810)
!3815 = !DILocation(line: 66, column: 11, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3773, file: !3774, line: 66, column: 7)
!3817 = !DILocation(line: 66, column: 7, scope: !3773)
!3818 = !DIExpression(DW_OP_deref)
!3819 = !DILocation(line: 67, column: 10, scope: !3816)
!3820 = !DILocation(line: 67, column: 5, scope: !3816)
!3821 = !DILocation(line: 69, column: 11, scope: !3773)
!3822 = !DILocation(line: 71, column: 1, scope: !3773)
!3823 = !DILocation(line: 70, column: 3, scope: !3773)
!3824 = distinct !DISubprogram(name: "rpl_calloc", scope: !3825, file: !3825, line: 42, type: !3520, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !3826)
!3825 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3826 = !{!3827, !3828, !3829, !3830}
!3827 = !DILocalVariable(name: "n", arg: 1, scope: !3824, file: !3825, line: 42, type: !80)
!3828 = !DILocalVariable(name: "s", arg: 2, scope: !3824, file: !3825, line: 42, type: !80)
!3829 = !DILocalVariable(name: "result", scope: !3824, file: !3825, line: 44, type: !24)
!3830 = !DILocalVariable(name: "bytes", scope: !3831, file: !3825, line: 56, type: !80)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !3825, line: 53, column: 5)
!3832 = distinct !DILexicalBlock(scope: !3824, file: !3825, line: 47, column: 7)
!3833 = !DILocation(line: 42, column: 20, scope: !3824)
!3834 = !DILocation(line: 42, column: 30, scope: !3824)
!3835 = !DILocation(line: 47, column: 9, scope: !3832)
!3836 = !DILocation(line: 47, column: 19, scope: !3832)
!3837 = !DILocation(line: 47, column: 14, scope: !3832)
!3838 = !DILocation(line: 56, column: 24, scope: !3831)
!3839 = !DILocation(line: 56, column: 14, scope: !3831)
!3840 = !DILocation(line: 57, column: 17, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3831, file: !3825, line: 57, column: 11)
!3842 = !DILocation(line: 57, column: 21, scope: !3841)
!3843 = !DILocation(line: 57, column: 11, scope: !3831)
!3844 = !DILocation(line: 59, column: 11, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3841, file: !3825, line: 58, column: 9)
!3846 = !DILocation(line: 59, column: 17, scope: !3845)
!3847 = !DILocation(line: 65, column: 12, scope: !3824)
!3848 = !DILocation(line: 44, column: 9, scope: !3824)
!3849 = !DILocation(line: 72, column: 3, scope: !3824)
!3850 = !DILocation(line: 73, column: 1, scope: !3824)
!3851 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3852, file: !3852, line: 334, type: !3853, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !3867)
!3852 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!80, !3855, !33, !80, !3856}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1859, line: 6, baseType: !3858)
!3858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1861, line: 21, baseType: !3859)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1861, line: 13, size: 64, elements: !3860)
!3860 = !{!3861, !3862}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3859, file: !1861, line: 15, baseType: !25, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3859, file: !1861, line: 20, baseType: !3863, size: 32, offset: 32)
!3863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3859, file: !1861, line: 16, size: 32, elements: !3864)
!3864 = !{!3865, !3866}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3863, file: !1861, line: 18, baseType: !21, size: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3863, file: !1861, line: 19, baseType: !1870, size: 32)
!3867 = !{!3868, !3869, !3870, !3871, !3872, !3873, !3874}
!3868 = !DILocalVariable(name: "pwc", arg: 1, scope: !3851, file: !3852, line: 334, type: !3855)
!3869 = !DILocalVariable(name: "s", arg: 2, scope: !3851, file: !3852, line: 334, type: !33)
!3870 = !DILocalVariable(name: "n", arg: 3, scope: !3851, file: !3852, line: 334, type: !80)
!3871 = !DILocalVariable(name: "ps", arg: 4, scope: !3851, file: !3852, line: 334, type: !3856)
!3872 = !DILocalVariable(name: "ret", scope: !3851, file: !3852, line: 336, type: !80)
!3873 = !DILocalVariable(name: "wc", scope: !3851, file: !3852, line: 337, type: !1875)
!3874 = !DILocalVariable(name: "uc", scope: !3875, file: !3852, line: 398, type: !584)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !3852, line: 397, column: 5)
!3876 = distinct !DILexicalBlock(scope: !3851, file: !3852, line: 396, column: 7)
!3877 = !DILocation(line: 334, column: 23, scope: !3851)
!3878 = !DILocation(line: 334, column: 40, scope: !3851)
!3879 = !DILocation(line: 334, column: 50, scope: !3851)
!3880 = !DILocation(line: 334, column: 64, scope: !3851)
!3881 = !DILocation(line: 337, column: 3, scope: !3851)
!3882 = !DILocation(line: 353, column: 9, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3851, file: !3852, line: 353, column: 7)
!3884 = !DILocation(line: 353, column: 7, scope: !3851)
!3885 = !DILocation(line: 388, column: 9, scope: !3851)
!3886 = !DILocation(line: 336, column: 10, scope: !3851)
!3887 = !DILocation(line: 396, column: 19, scope: !3876)
!3888 = !DILocation(line: 396, column: 31, scope: !3876)
!3889 = !DILocation(line: 396, column: 26, scope: !3876)
!3890 = !DILocation(line: 396, column: 41, scope: !3876)
!3891 = !DILocation(line: 396, column: 7, scope: !3851)
!3892 = !DILocation(line: 398, column: 26, scope: !3875)
!3893 = !DILocation(line: 398, column: 21, scope: !3875)
!3894 = !DILocation(line: 399, column: 14, scope: !3875)
!3895 = !DILocation(line: 399, column: 12, scope: !3875)
!3896 = !DILocation(line: 405, column: 1, scope: !3851)
!3897 = distinct !DISubprogram(name: "close_stream", scope: !3898, file: !3898, line: 56, type: !3899, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3941)
!3898 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!25, !3901}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3330, line: 7, baseType: !3903)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3332, line: 241, size: 1728, elements: !3904)
!3904 = !{!3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3903, file: !3332, line: 242, baseType: !25, size: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3903, file: !3332, line: 247, baseType: !22, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3903, file: !3332, line: 248, baseType: !22, size: 64, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3903, file: !3332, line: 249, baseType: !22, size: 64, offset: 192)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3903, file: !3332, line: 250, baseType: !22, size: 64, offset: 256)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3903, file: !3332, line: 251, baseType: !22, size: 64, offset: 320)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3903, file: !3332, line: 252, baseType: !22, size: 64, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3903, file: !3332, line: 253, baseType: !22, size: 64, offset: 448)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3903, file: !3332, line: 254, baseType: !22, size: 64, offset: 512)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3903, file: !3332, line: 256, baseType: !22, size: 64, offset: 576)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3903, file: !3332, line: 257, baseType: !22, size: 64, offset: 640)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3903, file: !3332, line: 258, baseType: !22, size: 64, offset: 704)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3903, file: !3332, line: 260, baseType: !3918, size: 64, offset: 768)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3332, line: 156, size: 192, elements: !3920)
!3920 = !{!3921, !3922, !3924}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3919, file: !3332, line: 157, baseType: !3918, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3919, file: !3332, line: 158, baseType: !3923, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3919, file: !3332, line: 162, baseType: !25, size: 32, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3903, file: !3332, line: 262, baseType: !3923, size: 64, offset: 832)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3903, file: !3332, line: 264, baseType: !25, size: 32, offset: 896)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3903, file: !3332, line: 268, baseType: !25, size: 32, offset: 928)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3903, file: !3332, line: 270, baseType: !3358, size: 64, offset: 960)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3903, file: !3332, line: 274, baseType: !26, size: 16, offset: 1024)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3903, file: !3332, line: 275, baseType: !3362, size: 8, offset: 1040)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3903, file: !3332, line: 276, baseType: !3364, size: 8, offset: 1048)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3903, file: !3332, line: 280, baseType: !3368, size: 64, offset: 1088)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3903, file: !3332, line: 289, baseType: !3371, size: 64, offset: 1152)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3903, file: !3332, line: 297, baseType: !24, size: 64, offset: 1216)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3903, file: !3332, line: 298, baseType: !24, size: 64, offset: 1280)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3903, file: !3332, line: 299, baseType: !24, size: 64, offset: 1344)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3903, file: !3332, line: 300, baseType: !24, size: 64, offset: 1408)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3903, file: !3332, line: 302, baseType: !80, size: 64, offset: 1472)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3903, file: !3332, line: 303, baseType: !25, size: 32, offset: 1536)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3903, file: !3332, line: 305, baseType: !3379, size: 160, offset: 1568)
!3941 = !{!3942, !3943, !3945, !3946}
!3942 = !DILocalVariable(name: "stream", arg: 1, scope: !3897, file: !3898, line: 56, type: !3901)
!3943 = !DILocalVariable(name: "some_pending", scope: !3897, file: !3898, line: 58, type: !3944)
!3944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!3945 = !DILocalVariable(name: "prev_fail", scope: !3897, file: !3898, line: 59, type: !3944)
!3946 = !DILocalVariable(name: "fclose_fail", scope: !3897, file: !3898, line: 60, type: !3944)
!3947 = !DILocation(line: 56, column: 21, scope: !3897)
!3948 = !DILocation(line: 58, column: 30, scope: !3897)
!3949 = !DILocalVariable(name: "__stream", arg: 1, scope: !3950, file: !3951, line: 132, type: !3901)
!3950 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3951, file: !3951, line: 132, type: !3899, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !3952)
!3951 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3952 = !{!3949}
!3953 = !DILocation(line: 132, column: 1, scope: !3950, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 59, column: 27, scope: !3897)
!3955 = !DILocation(line: 134, column: 10, scope: !3950, inlinedAt: !3954)
!3956 = !{!3957, !729, i64 0}
!3957 = !{!"_IO_FILE", !729, i64 0, !651, i64 8, !651, i64 16, !651, i64 24, !651, i64 32, !651, i64 40, !651, i64 48, !651, i64 56, !651, i64 64, !651, i64 72, !651, i64 80, !651, i64 88, !651, i64 96, !651, i64 104, !729, i64 112, !729, i64 116, !1051, i64 120, !1452, i64 128, !652, i64 130, !652, i64 131, !651, i64 136, !1051, i64 144, !651, i64 152, !651, i64 160, !651, i64 168, !651, i64 176, !1051, i64 184, !729, i64 192, !652, i64 196}
!3958 = !DILocation(line: 59, column: 43, scope: !3897)
!3959 = !DILocation(line: 60, column: 29, scope: !3897)
!3960 = !DILocation(line: 60, column: 45, scope: !3897)
!3961 = !DILocation(line: 70, column: 17, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3897, file: !3898, line: 70, column: 7)
!3963 = !DILocation(line: 58, column: 50, scope: !3897)
!3964 = !DILocation(line: 70, column: 33, scope: !3962)
!3965 = !DILocation(line: 70, column: 53, scope: !3962)
!3966 = !DILocation(line: 70, column: 59, scope: !3962)
!3967 = !DILocation(line: 70, column: 7, scope: !3897)
!3968 = !DILocation(line: 72, column: 11, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3962, file: !3898, line: 71, column: 5)
!3970 = !DILocation(line: 73, column: 9, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3969, file: !3898, line: 72, column: 11)
!3972 = !DILocation(line: 73, column: 15, scope: !3971)
!3973 = !DILocation(line: 78, column: 1, scope: !3897)
!3974 = distinct !DISubprogram(name: "hard_locale", scope: !3975, file: !3975, line: 38, type: !3976, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !624, variables: !3978)
!3975 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!30, !25}
!3978 = !{!3979, !3980, !3981}
!3979 = !DILocalVariable(name: "category", arg: 1, scope: !3974, file: !3975, line: 38, type: !25)
!3980 = !DILocalVariable(name: "hard", scope: !3974, file: !3975, line: 40, type: !30)
!3981 = !DILocalVariable(name: "p", scope: !3974, file: !3975, line: 41, type: !33)
!3982 = !DILocation(line: 38, column: 18, scope: !3974)
!3983 = !DILocation(line: 40, column: 8, scope: !3974)
!3984 = !DILocation(line: 41, column: 19, scope: !3974)
!3985 = !DILocation(line: 41, column: 15, scope: !3974)
!3986 = !DILocation(line: 43, column: 7, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3974, file: !3975, line: 43, column: 7)
!3988 = !DILocation(line: 43, column: 7, scope: !3974)
!3989 = !DILocation(line: 47, column: 15, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !3975, line: 47, column: 15)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !3975, line: 46, column: 9)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !3975, line: 45, column: 11)
!3993 = distinct !DILexicalBlock(scope: !3987, file: !3975, line: 44, column: 5)
!3994 = !DILocation(line: 47, column: 31, scope: !3990)
!3995 = !DILocation(line: 47, column: 36, scope: !3990)
!3996 = !DILocation(line: 47, column: 39, scope: !3990)
!3997 = !DILocation(line: 47, column: 59, scope: !3990)
!3998 = !DILocation(line: 47, column: 15, scope: !3991)
!3999 = !DILocation(line: 48, column: 13, scope: !3990)
!4000 = !DILocation(line: 71, column: 3, scope: !3974)
!4001 = distinct !DISubprogram(name: "locale_charset", scope: !586, file: !586, line: 393, type: !4002, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !241, variables: !4004)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!33}
!4004 = !{!4005, !4006}
!4005 = !DILocalVariable(name: "codeset", scope: !4001, file: !586, line: 395, type: !33)
!4006 = !DILocalVariable(name: "aliases", scope: !4001, file: !586, line: 396, type: !33)
!4007 = !DILocalVariable(name: "buf1", scope: !4008, file: !586, line: 196, type: !4075)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !586, line: 194, column: 21)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !586, line: 193, column: 19)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !586, line: 193, column: 19)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !586, line: 188, column: 17)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !586, line: 181, column: 19)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !586, line: 177, column: 13)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !586, line: 173, column: 15)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !586, line: 161, column: 9)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !586, line: 157, column: 11)
!4017 = distinct !DILexicalBlock(scope: !4018, file: !586, line: 130, column: 5)
!4018 = distinct !DILexicalBlock(scope: !4019, file: !586, line: 129, column: 7)
!4019 = distinct !DISubprogram(name: "get_charset_aliases", scope: !586, file: !586, line: 124, type: !4002, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !241, variables: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4027, !4028, !4029, !4030, !4071, !4072, !4073, !4007, !4074, !4078, !4079, !4080}
!4021 = !DILocalVariable(name: "cp", scope: !4019, file: !586, line: 126, type: !33)
!4022 = !DILocalVariable(name: "dir", scope: !4017, file: !586, line: 132, type: !33)
!4023 = !DILocalVariable(name: "base", scope: !4017, file: !586, line: 133, type: !33)
!4024 = !DILocalVariable(name: "file_name", scope: !4017, file: !586, line: 134, type: !22)
!4025 = !DILocalVariable(name: "dir_len", scope: !4026, file: !586, line: 144, type: !80)
!4026 = distinct !DILexicalBlock(scope: !4017, file: !586, line: 143, column: 7)
!4027 = !DILocalVariable(name: "base_len", scope: !4026, file: !586, line: 145, type: !80)
!4028 = !DILocalVariable(name: "add_slash", scope: !4026, file: !586, line: 146, type: !25)
!4029 = !DILocalVariable(name: "fd", scope: !4015, file: !586, line: 162, type: !25)
!4030 = !DILocalVariable(name: "fp", scope: !4013, file: !586, line: 178, type: !4031)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3330, line: 7, baseType: !4033)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3332, line: 241, size: 1728, elements: !4034)
!4034 = !{!4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4033, file: !3332, line: 242, baseType: !25, size: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4033, file: !3332, line: 247, baseType: !22, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4033, file: !3332, line: 248, baseType: !22, size: 64, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4033, file: !3332, line: 249, baseType: !22, size: 64, offset: 192)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4033, file: !3332, line: 250, baseType: !22, size: 64, offset: 256)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4033, file: !3332, line: 251, baseType: !22, size: 64, offset: 320)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4033, file: !3332, line: 252, baseType: !22, size: 64, offset: 384)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4033, file: !3332, line: 253, baseType: !22, size: 64, offset: 448)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4033, file: !3332, line: 254, baseType: !22, size: 64, offset: 512)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4033, file: !3332, line: 256, baseType: !22, size: 64, offset: 576)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4033, file: !3332, line: 257, baseType: !22, size: 64, offset: 640)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4033, file: !3332, line: 258, baseType: !22, size: 64, offset: 704)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4033, file: !3332, line: 260, baseType: !4048, size: 64, offset: 768)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3332, line: 156, size: 192, elements: !4050)
!4050 = !{!4051, !4052, !4054}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4049, file: !3332, line: 157, baseType: !4048, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4049, file: !3332, line: 158, baseType: !4053, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4049, file: !3332, line: 162, baseType: !25, size: 32, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4033, file: !3332, line: 262, baseType: !4053, size: 64, offset: 832)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4033, file: !3332, line: 264, baseType: !25, size: 32, offset: 896)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4033, file: !3332, line: 268, baseType: !25, size: 32, offset: 928)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4033, file: !3332, line: 270, baseType: !3358, size: 64, offset: 960)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4033, file: !3332, line: 274, baseType: !26, size: 16, offset: 1024)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4033, file: !3332, line: 275, baseType: !3362, size: 8, offset: 1040)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4033, file: !3332, line: 276, baseType: !3364, size: 8, offset: 1048)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4033, file: !3332, line: 280, baseType: !3368, size: 64, offset: 1088)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4033, file: !3332, line: 289, baseType: !3371, size: 64, offset: 1152)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4033, file: !3332, line: 297, baseType: !24, size: 64, offset: 1216)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4033, file: !3332, line: 298, baseType: !24, size: 64, offset: 1280)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4033, file: !3332, line: 299, baseType: !24, size: 64, offset: 1344)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4033, file: !3332, line: 300, baseType: !24, size: 64, offset: 1408)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4033, file: !3332, line: 302, baseType: !80, size: 64, offset: 1472)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4033, file: !3332, line: 303, baseType: !25, size: 32, offset: 1536)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4033, file: !3332, line: 305, baseType: !3379, size: 160, offset: 1568)
!4071 = !DILocalVariable(name: "res_ptr", scope: !4011, file: !586, line: 190, type: !22)
!4072 = !DILocalVariable(name: "res_size", scope: !4011, file: !586, line: 191, type: !80)
!4073 = !DILocalVariable(name: "c", scope: !4008, file: !586, line: 195, type: !25)
!4074 = !DILocalVariable(name: "buf2", scope: !4008, file: !586, line: 197, type: !4075)
!4075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 408, elements: !4076)
!4076 = !{!4077}
!4077 = !DISubrange(count: 51)
!4078 = !DILocalVariable(name: "l1", scope: !4008, file: !586, line: 198, type: !80)
!4079 = !DILocalVariable(name: "l2", scope: !4008, file: !586, line: 198, type: !80)
!4080 = !DILocalVariable(name: "old_res_ptr", scope: !4008, file: !586, line: 199, type: !22)
!4081 = !DILocation(line: 196, column: 28, scope: !4008, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 589, column: 18, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4001, file: !586, line: 589, column: 3)
!4084 = !DILocation(line: 197, column: 28, scope: !4008, inlinedAt: !4082)
!4085 = !DILocation(line: 403, column: 13, scope: !4001)
!4086 = !DILocation(line: 395, column: 15, scope: !4001)
!4087 = !DILocation(line: 584, column: 15, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4001, file: !586, line: 584, column: 7)
!4089 = !DILocation(line: 584, column: 7, scope: !4001)
!4090 = !DILocation(line: 128, column: 8, scope: !4019, inlinedAt: !4082)
!4091 = !DILocation(line: 126, column: 15, scope: !4019, inlinedAt: !4082)
!4092 = !DILocation(line: 129, column: 10, scope: !4018, inlinedAt: !4082)
!4093 = !DILocation(line: 129, column: 7, scope: !4019, inlinedAt: !4082)
!4094 = !DILocation(line: 138, column: 13, scope: !4017, inlinedAt: !4082)
!4095 = !DILocation(line: 132, column: 19, scope: !4017, inlinedAt: !4082)
!4096 = !DILocation(line: 139, column: 15, scope: !4097, inlinedAt: !4082)
!4097 = distinct !DILexicalBlock(scope: !4017, file: !586, line: 139, column: 11)
!4098 = !DILocation(line: 139, column: 23, scope: !4097, inlinedAt: !4082)
!4099 = !DILocation(line: 139, column: 26, scope: !4097, inlinedAt: !4082)
!4100 = !DILocation(line: 139, column: 33, scope: !4097, inlinedAt: !4082)
!4101 = !DILocation(line: 139, column: 11, scope: !4017, inlinedAt: !4082)
!4102 = !DILocation(line: 140, column: 9, scope: !4097, inlinedAt: !4082)
!4103 = !DILocation(line: 144, column: 26, scope: !4026, inlinedAt: !4082)
!4104 = !DILocation(line: 144, column: 16, scope: !4026, inlinedAt: !4082)
!4105 = !DILocation(line: 145, column: 16, scope: !4026, inlinedAt: !4082)
!4106 = !DILocation(line: 146, column: 34, scope: !4026, inlinedAt: !4082)
!4107 = !DILocation(line: 146, column: 38, scope: !4026, inlinedAt: !4082)
!4108 = !DILocation(line: 146, column: 42, scope: !4026, inlinedAt: !4082)
!4109 = !DILocation(line: 147, column: 48, scope: !4026, inlinedAt: !4082)
!4110 = !DILocation(line: 147, column: 46, scope: !4026, inlinedAt: !4082)
!4111 = !DILocation(line: 147, column: 69, scope: !4026, inlinedAt: !4082)
!4112 = !DILocation(line: 147, column: 30, scope: !4026, inlinedAt: !4082)
!4113 = !DILocation(line: 134, column: 13, scope: !4017, inlinedAt: !4082)
!4114 = !DILocation(line: 148, column: 13, scope: !4026, inlinedAt: !4082)
!4115 = !DILocation(line: 150, column: 13, scope: !4116, inlinedAt: !4082)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !586, line: 149, column: 11)
!4117 = distinct !DILexicalBlock(scope: !4026, file: !586, line: 148, column: 13)
!4118 = !DILocation(line: 151, column: 17, scope: !4116, inlinedAt: !4082)
!4119 = !DILocation(line: 152, column: 34, scope: !4120, inlinedAt: !4082)
!4120 = distinct !DILexicalBlock(scope: !4116, file: !586, line: 151, column: 17)
!4121 = !DILocation(line: 153, column: 41, scope: !4116, inlinedAt: !4082)
!4122 = !DILocation(line: 153, column: 13, scope: !4116, inlinedAt: !4082)
!4123 = !DILocation(line: 157, column: 11, scope: !4017, inlinedAt: !4082)
!4124 = !DILocation(line: 171, column: 16, scope: !4015, inlinedAt: !4082)
!4125 = !DILocation(line: 162, column: 15, scope: !4015, inlinedAt: !4082)
!4126 = !DILocation(line: 173, column: 18, scope: !4014, inlinedAt: !4082)
!4127 = !DILocation(line: 173, column: 15, scope: !4015, inlinedAt: !4082)
!4128 = !DILocation(line: 180, column: 20, scope: !4013, inlinedAt: !4082)
!4129 = !DILocation(line: 178, column: 21, scope: !4013, inlinedAt: !4082)
!4130 = !DILocation(line: 181, column: 22, scope: !4012, inlinedAt: !4082)
!4131 = !DILocation(line: 181, column: 19, scope: !4013, inlinedAt: !4082)
!4132 = !DILocation(line: 184, column: 19, scope: !4133, inlinedAt: !4082)
!4133 = distinct !DILexicalBlock(scope: !4012, file: !586, line: 182, column: 17)
!4134 = !DILocation(line: 186, column: 17, scope: !4133, inlinedAt: !4082)
!4135 = !DILocation(line: 190, column: 25, scope: !4011, inlinedAt: !4082)
!4136 = !DILocation(line: 191, column: 26, scope: !4011, inlinedAt: !4082)
!4137 = !DILocation(line: 193, column: 19, scope: !4011, inlinedAt: !4082)
!4138 = !DILocation(line: 196, column: 23, scope: !4008, inlinedAt: !4082)
!4139 = !DILocation(line: 197, column: 23, scope: !4008, inlinedAt: !4082)
!4140 = !DILocalVariable(name: "__fp", arg: 1, scope: !4141, file: !3951, line: 63, type: !4031)
!4141 = distinct !DISubprogram(name: "getc_unlocked", scope: !3951, file: !3951, line: 63, type: !4142, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !241, variables: !4144)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!25, !4031}
!4144 = !{!4140}
!4145 = !DILocation(line: 63, column: 22, scope: !4141, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 201, column: 27, scope: !4008, inlinedAt: !4082)
!4147 = !DILocation(line: 65, column: 10, scope: !4141, inlinedAt: !4146)
!4148 = !{!3957, !651, i64 8}
!4149 = !{!3957, !651, i64 16}
!4150 = !{!"branch_weights", i32 2000, i32 1}
!4151 = !DILocation(line: 195, column: 27, scope: !4008, inlinedAt: !4082)
!4152 = !DILocation(line: 202, column: 27, scope: !4008, inlinedAt: !4082)
!4153 = distinct !{!4153, !4154, !4157}
!4154 = !DILocation(line: 209, column: 27, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !586, line: 207, column: 25)
!4156 = distinct !DILexicalBlock(scope: !4008, file: !586, line: 206, column: 27)
!4157 = !DILocation(line: 211, column: 58, scope: !4155)
!4158 = !DILocation(line: 65, column: 10, scope: !4141, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 210, column: 33, scope: !4155, inlinedAt: !4082)
!4160 = !DILocation(line: 63, column: 22, scope: !4141, inlinedAt: !4159)
!4161 = !DILocation(line: 210, column: 29, scope: !4155, inlinedAt: !4082)
!4162 = distinct !{!4162, !4163, !4164}
!4163 = !DILocation(line: 193, column: 19, scope: !4010)
!4164 = !DILocation(line: 241, column: 21, scope: !4010)
!4165 = !DILocation(line: 216, column: 23, scope: !4008, inlinedAt: !4082)
!4166 = !DILocation(line: 217, column: 27, scope: !4167, inlinedAt: !4082)
!4167 = distinct !DILexicalBlock(scope: !4008, file: !586, line: 217, column: 27)
!4168 = !DILocation(line: 217, column: 64, scope: !4167, inlinedAt: !4082)
!4169 = !DILocation(line: 217, column: 27, scope: !4008, inlinedAt: !4082)
!4170 = !DILocation(line: 219, column: 28, scope: !4008, inlinedAt: !4082)
!4171 = !DILocation(line: 198, column: 30, scope: !4008, inlinedAt: !4082)
!4172 = !DILocation(line: 220, column: 28, scope: !4008, inlinedAt: !4082)
!4173 = !DILocation(line: 198, column: 34, scope: !4008, inlinedAt: !4082)
!4174 = !DILocation(line: 199, column: 29, scope: !4008, inlinedAt: !4082)
!4175 = !DILocation(line: 222, column: 36, scope: !4176, inlinedAt: !4082)
!4176 = distinct !DILexicalBlock(scope: !4008, file: !586, line: 222, column: 27)
!4177 = !DILocation(line: 222, column: 27, scope: !4008, inlinedAt: !4082)
!4178 = !DILocation(line: 225, column: 63, scope: !4179, inlinedAt: !4082)
!4179 = distinct !DILexicalBlock(scope: !4176, file: !586, line: 223, column: 25)
!4180 = !DILocation(line: 225, column: 46, scope: !4179, inlinedAt: !4082)
!4181 = !DILocation(line: 226, column: 25, scope: !4179, inlinedAt: !4082)
!4182 = !DILocation(line: 229, column: 36, scope: !4183, inlinedAt: !4082)
!4183 = distinct !DILexicalBlock(scope: !4176, file: !586, line: 228, column: 25)
!4184 = !DILocation(line: 230, column: 73, scope: !4183, inlinedAt: !4082)
!4185 = !DILocation(line: 230, column: 46, scope: !4183, inlinedAt: !4082)
!4186 = !DILocation(line: 232, column: 35, scope: !4187, inlinedAt: !4082)
!4187 = distinct !DILexicalBlock(scope: !4008, file: !586, line: 232, column: 27)
!4188 = !DILocation(line: 232, column: 27, scope: !4008, inlinedAt: !4082)
!4189 = !DILocation(line: 236, column: 27, scope: !4190, inlinedAt: !4082)
!4190 = distinct !DILexicalBlock(scope: !4187, file: !586, line: 233, column: 25)
!4191 = !DILocation(line: 237, column: 27, scope: !4190, inlinedAt: !4082)
!4192 = !DILocation(line: 241, column: 21, scope: !4009, inlinedAt: !4082)
!4193 = !DILocation(line: 239, column: 39, scope: !4008, inlinedAt: !4082)
!4194 = !DILocation(line: 239, column: 50, scope: !4008, inlinedAt: !4082)
!4195 = !DILocation(line: 239, column: 61, scope: !4008, inlinedAt: !4082)
!4196 = !DILocalVariable(name: "__dest", arg: 1, scope: !4197, file: !884, line: 88, type: !887)
!4197 = distinct !DISubprogram(name: "strcpy", scope: !884, file: !884, line: 88, type: !885, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !241, variables: !4198)
!4198 = !{!4196, !4199}
!4199 = !DILocalVariable(name: "__src", arg: 2, scope: !4197, file: !884, line: 88, type: !888)
!4200 = !DILocation(line: 88, column: 1, scope: !4197, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 239, column: 23, scope: !4008, inlinedAt: !4082)
!4202 = !DILocation(line: 90, column: 49, scope: !4197, inlinedAt: !4201)
!4203 = !DILocation(line: 90, column: 10, scope: !4197, inlinedAt: !4201)
!4204 = !DILocation(line: 88, column: 1, scope: !4197, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 240, column: 23, scope: !4008, inlinedAt: !4082)
!4206 = !DILocation(line: 90, column: 49, scope: !4197, inlinedAt: !4205)
!4207 = !DILocation(line: 90, column: 10, scope: !4197, inlinedAt: !4205)
!4208 = !DILocation(line: 193, column: 19, scope: !4009, inlinedAt: !4082)
!4209 = !DILocation(line: 242, column: 19, scope: !4011, inlinedAt: !4082)
!4210 = !DILocation(line: 243, column: 32, scope: !4211, inlinedAt: !4082)
!4211 = distinct !DILexicalBlock(scope: !4011, file: !586, line: 243, column: 23)
!4212 = !DILocation(line: 243, column: 23, scope: !4011, inlinedAt: !4082)
!4213 = !DILocation(line: 247, column: 33, scope: !4214, inlinedAt: !4082)
!4214 = distinct !DILexicalBlock(scope: !4211, file: !586, line: 246, column: 21)
!4215 = !DILocation(line: 247, column: 45, scope: !4214, inlinedAt: !4082)
!4216 = !DILocation(line: 253, column: 11, scope: !4015, inlinedAt: !4082)
!4217 = !DILocation(line: 377, column: 23, scope: !4017, inlinedAt: !4082)
!4218 = !DILocation(line: 378, column: 5, scope: !4017, inlinedAt: !4082)
!4219 = !DILocation(line: 396, column: 15, scope: !4001)
!4220 = !DILocation(line: 590, column: 8, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4083, file: !586, line: 589, column: 3)
!4222 = !DILocation(line: 590, column: 17, scope: !4221)
!4223 = !DILocation(line: 589, column: 3, scope: !4083)
!4224 = !DILocation(line: 592, column: 9, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4221, file: !586, line: 592, column: 9)
!4226 = !DILocation(line: 592, column: 35, scope: !4225)
!4227 = !DILocation(line: 593, column: 9, scope: !4225)
!4228 = !DILocation(line: 593, column: 24, scope: !4225)
!4229 = !DILocation(line: 593, column: 31, scope: !4225)
!4230 = !DILocation(line: 593, column: 34, scope: !4225)
!4231 = !DILocation(line: 593, column: 45, scope: !4225)
!4232 = !DILocation(line: 592, column: 9, scope: !4221)
!4233 = !DILocation(line: 595, column: 29, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4225, file: !586, line: 594, column: 7)
!4235 = !DILocation(line: 595, column: 27, scope: !4234)
!4236 = !DILocation(line: 595, column: 46, scope: !4234)
!4237 = !DILocation(line: 596, column: 9, scope: !4234)
!4238 = !DILocation(line: 591, column: 19, scope: !4221)
!4239 = !DILocation(line: 591, column: 36, scope: !4221)
!4240 = !DILocation(line: 591, column: 16, scope: !4221)
!4241 = !DILocation(line: 591, column: 52, scope: !4221)
!4242 = !DILocation(line: 591, column: 69, scope: !4221)
!4243 = !DILocation(line: 591, column: 49, scope: !4221)
!4244 = distinct !{!4244, !4223, !4245}
!4245 = !DILocation(line: 597, column: 7, scope: !4083)
!4246 = !DILocation(line: 602, column: 7, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4001, file: !586, line: 602, column: 7)
!4248 = !DILocation(line: 602, column: 18, scope: !4247)
!4249 = !DILocation(line: 602, column: 7, scope: !4001)
!4250 = !DILocation(line: 612, column: 3, scope: !4001)
!4251 = distinct !DISubprogram(name: "rpl_fclose", scope: !4252, file: !4252, line: 56, type: !4253, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !4295)
!4252 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!25, !4255}
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3330, line: 7, baseType: !4257)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3332, line: 241, size: 1728, elements: !4258)
!4258 = !{!4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4257, file: !3332, line: 242, baseType: !25, size: 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4257, file: !3332, line: 247, baseType: !22, size: 64, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4257, file: !3332, line: 248, baseType: !22, size: 64, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4257, file: !3332, line: 249, baseType: !22, size: 64, offset: 192)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4257, file: !3332, line: 250, baseType: !22, size: 64, offset: 256)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4257, file: !3332, line: 251, baseType: !22, size: 64, offset: 320)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4257, file: !3332, line: 252, baseType: !22, size: 64, offset: 384)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4257, file: !3332, line: 253, baseType: !22, size: 64, offset: 448)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4257, file: !3332, line: 254, baseType: !22, size: 64, offset: 512)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4257, file: !3332, line: 256, baseType: !22, size: 64, offset: 576)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4257, file: !3332, line: 257, baseType: !22, size: 64, offset: 640)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4257, file: !3332, line: 258, baseType: !22, size: 64, offset: 704)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4257, file: !3332, line: 260, baseType: !4272, size: 64, offset: 768)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3332, line: 156, size: 192, elements: !4274)
!4274 = !{!4275, !4276, !4278}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4273, file: !3332, line: 157, baseType: !4272, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4273, file: !3332, line: 158, baseType: !4277, size: 64, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4273, file: !3332, line: 162, baseType: !25, size: 32, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4257, file: !3332, line: 262, baseType: !4277, size: 64, offset: 832)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4257, file: !3332, line: 264, baseType: !25, size: 32, offset: 896)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4257, file: !3332, line: 268, baseType: !25, size: 32, offset: 928)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4257, file: !3332, line: 270, baseType: !3358, size: 64, offset: 960)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4257, file: !3332, line: 274, baseType: !26, size: 16, offset: 1024)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4257, file: !3332, line: 275, baseType: !3362, size: 8, offset: 1040)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4257, file: !3332, line: 276, baseType: !3364, size: 8, offset: 1048)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4257, file: !3332, line: 280, baseType: !3368, size: 64, offset: 1088)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4257, file: !3332, line: 289, baseType: !3371, size: 64, offset: 1152)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4257, file: !3332, line: 297, baseType: !24, size: 64, offset: 1216)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4257, file: !3332, line: 298, baseType: !24, size: 64, offset: 1280)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4257, file: !3332, line: 299, baseType: !24, size: 64, offset: 1344)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4257, file: !3332, line: 300, baseType: !24, size: 64, offset: 1408)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4257, file: !3332, line: 302, baseType: !80, size: 64, offset: 1472)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4257, file: !3332, line: 303, baseType: !25, size: 32, offset: 1536)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4257, file: !3332, line: 305, baseType: !3379, size: 160, offset: 1568)
!4295 = !{!4296, !4297, !4298, !4299}
!4296 = !DILocalVariable(name: "fp", arg: 1, scope: !4251, file: !4252, line: 56, type: !4255)
!4297 = !DILocalVariable(name: "saved_errno", scope: !4251, file: !4252, line: 58, type: !25)
!4298 = !DILocalVariable(name: "fd", scope: !4251, file: !4252, line: 59, type: !25)
!4299 = !DILocalVariable(name: "result", scope: !4251, file: !4252, line: 60, type: !25)
!4300 = !DILocation(line: 56, column: 19, scope: !4251)
!4301 = !DILocation(line: 58, column: 7, scope: !4251)
!4302 = !DILocation(line: 60, column: 7, scope: !4251)
!4303 = !DILocation(line: 63, column: 8, scope: !4251)
!4304 = !DILocation(line: 59, column: 7, scope: !4251)
!4305 = !DILocation(line: 64, column: 10, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4251, file: !4252, line: 64, column: 7)
!4307 = !DILocation(line: 64, column: 7, scope: !4251)
!4308 = !DILocation(line: 65, column: 12, scope: !4306)
!4309 = !DILocation(line: 65, column: 5, scope: !4306)
!4310 = !DILocation(line: 70, column: 9, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4251, file: !4252, line: 70, column: 7)
!4312 = !DILocation(line: 70, column: 23, scope: !4311)
!4313 = !DILocation(line: 70, column: 33, scope: !4311)
!4314 = !DILocation(line: 70, column: 26, scope: !4311)
!4315 = !DILocation(line: 70, column: 59, scope: !4311)
!4316 = !DILocation(line: 71, column: 7, scope: !4311)
!4317 = !DILocation(line: 71, column: 10, scope: !4311)
!4318 = !DILocation(line: 70, column: 7, scope: !4251)
!4319 = !DILocation(line: 98, column: 12, scope: !4251)
!4320 = !DILocation(line: 103, column: 7, scope: !4251)
!4321 = !DILocation(line: 72, column: 19, scope: !4311)
!4322 = !DILocation(line: 103, column: 19, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4251, file: !4252, line: 103, column: 7)
!4324 = !DILocation(line: 105, column: 13, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4323, file: !4252, line: 104, column: 5)
!4326 = !DILocation(line: 107, column: 5, scope: !4325)
!4327 = !DILocation(line: 110, column: 1, scope: !4251)
!4328 = distinct !DISubprogram(name: "rpl_fflush", scope: !4329, file: !4329, line: 127, type: !4330, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4372)
!4329 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!25, !4332}
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3330, line: 7, baseType: !4334)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3332, line: 241, size: 1728, elements: !4335)
!4335 = !{!4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4334, file: !3332, line: 242, baseType: !25, size: 32)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4334, file: !3332, line: 247, baseType: !22, size: 64, offset: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4334, file: !3332, line: 248, baseType: !22, size: 64, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4334, file: !3332, line: 249, baseType: !22, size: 64, offset: 192)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4334, file: !3332, line: 250, baseType: !22, size: 64, offset: 256)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4334, file: !3332, line: 251, baseType: !22, size: 64, offset: 320)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4334, file: !3332, line: 252, baseType: !22, size: 64, offset: 384)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4334, file: !3332, line: 253, baseType: !22, size: 64, offset: 448)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4334, file: !3332, line: 254, baseType: !22, size: 64, offset: 512)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4334, file: !3332, line: 256, baseType: !22, size: 64, offset: 576)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4334, file: !3332, line: 257, baseType: !22, size: 64, offset: 640)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4334, file: !3332, line: 258, baseType: !22, size: 64, offset: 704)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4334, file: !3332, line: 260, baseType: !4349, size: 64, offset: 768)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3332, line: 156, size: 192, elements: !4351)
!4351 = !{!4352, !4353, !4355}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4350, file: !3332, line: 157, baseType: !4349, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4350, file: !3332, line: 158, baseType: !4354, size: 64, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4350, file: !3332, line: 162, baseType: !25, size: 32, offset: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4334, file: !3332, line: 262, baseType: !4354, size: 64, offset: 832)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4334, file: !3332, line: 264, baseType: !25, size: 32, offset: 896)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4334, file: !3332, line: 268, baseType: !25, size: 32, offset: 928)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4334, file: !3332, line: 270, baseType: !3358, size: 64, offset: 960)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4334, file: !3332, line: 274, baseType: !26, size: 16, offset: 1024)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4334, file: !3332, line: 275, baseType: !3362, size: 8, offset: 1040)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4334, file: !3332, line: 276, baseType: !3364, size: 8, offset: 1048)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4334, file: !3332, line: 280, baseType: !3368, size: 64, offset: 1088)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4334, file: !3332, line: 289, baseType: !3371, size: 64, offset: 1152)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4334, file: !3332, line: 297, baseType: !24, size: 64, offset: 1216)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4334, file: !3332, line: 298, baseType: !24, size: 64, offset: 1280)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4334, file: !3332, line: 299, baseType: !24, size: 64, offset: 1344)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4334, file: !3332, line: 300, baseType: !24, size: 64, offset: 1408)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4334, file: !3332, line: 302, baseType: !80, size: 64, offset: 1472)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4334, file: !3332, line: 303, baseType: !25, size: 32, offset: 1536)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4334, file: !3332, line: 305, baseType: !3379, size: 160, offset: 1568)
!4372 = !{!4373}
!4373 = !DILocalVariable(name: "stream", arg: 1, scope: !4328, file: !4329, line: 127, type: !4332)
!4374 = !DILocation(line: 127, column: 19, scope: !4328)
!4375 = !DILocation(line: 148, column: 14, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4328, file: !4329, line: 148, column: 7)
!4377 = !DILocation(line: 148, column: 22, scope: !4376)
!4378 = !DILocation(line: 148, column: 27, scope: !4376)
!4379 = !DILocation(line: 148, column: 7, scope: !4328)
!4380 = !DILocation(line: 149, column: 12, scope: !4376)
!4381 = !DILocation(line: 149, column: 5, scope: !4376)
!4382 = !DILocalVariable(name: "fp", arg: 1, scope: !4383, file: !4329, line: 40, type: !4332)
!4383 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4329, file: !4329, line: 40, type: !4384, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4386)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{null, !4332}
!4386 = !{!4382}
!4387 = !DILocation(line: 40, column: 48, scope: !4383, inlinedAt: !4388)
!4388 = distinct !DILocation(line: 153, column: 3, scope: !4328)
!4389 = !DILocation(line: 42, column: 11, scope: !4390, inlinedAt: !4388)
!4390 = distinct !DILexicalBlock(scope: !4383, file: !4329, line: 42, column: 7)
!4391 = !DILocation(line: 42, column: 18, scope: !4390, inlinedAt: !4388)
!4392 = !DILocation(line: 42, column: 7, scope: !4383, inlinedAt: !4388)
!4393 = !DILocation(line: 44, column: 5, scope: !4390, inlinedAt: !4388)
!4394 = !DILocation(line: 155, column: 10, scope: !4328)
!4395 = !DILocation(line: 155, column: 3, scope: !4328)
!4396 = !DILocation(line: 229, column: 1, scope: !4328)
!4397 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4398, file: !4398, line: 28, type: !4399, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !4442)
!4398 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!25, !4401, !4441, !25}
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3330, line: 7, baseType: !4403)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3332, line: 241, size: 1728, elements: !4404)
!4404 = !{!4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4403, file: !3332, line: 242, baseType: !25, size: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4403, file: !3332, line: 247, baseType: !22, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4403, file: !3332, line: 248, baseType: !22, size: 64, offset: 128)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4403, file: !3332, line: 249, baseType: !22, size: 64, offset: 192)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4403, file: !3332, line: 250, baseType: !22, size: 64, offset: 256)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4403, file: !3332, line: 251, baseType: !22, size: 64, offset: 320)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4403, file: !3332, line: 252, baseType: !22, size: 64, offset: 384)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4403, file: !3332, line: 253, baseType: !22, size: 64, offset: 448)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4403, file: !3332, line: 254, baseType: !22, size: 64, offset: 512)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4403, file: !3332, line: 256, baseType: !22, size: 64, offset: 576)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4403, file: !3332, line: 257, baseType: !22, size: 64, offset: 640)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4403, file: !3332, line: 258, baseType: !22, size: 64, offset: 704)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4403, file: !3332, line: 260, baseType: !4418, size: 64, offset: 768)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3332, line: 156, size: 192, elements: !4420)
!4420 = !{!4421, !4422, !4424}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4419, file: !3332, line: 157, baseType: !4418, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4419, file: !3332, line: 158, baseType: !4423, size: 64, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4419, file: !3332, line: 162, baseType: !25, size: 32, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4403, file: !3332, line: 262, baseType: !4423, size: 64, offset: 832)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4403, file: !3332, line: 264, baseType: !25, size: 32, offset: 896)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4403, file: !3332, line: 268, baseType: !25, size: 32, offset: 928)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4403, file: !3332, line: 270, baseType: !3358, size: 64, offset: 960)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4403, file: !3332, line: 274, baseType: !26, size: 16, offset: 1024)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4403, file: !3332, line: 275, baseType: !3362, size: 8, offset: 1040)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4403, file: !3332, line: 276, baseType: !3364, size: 8, offset: 1048)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4403, file: !3332, line: 280, baseType: !3368, size: 64, offset: 1088)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4403, file: !3332, line: 289, baseType: !3371, size: 64, offset: 1152)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4403, file: !3332, line: 297, baseType: !24, size: 64, offset: 1216)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4403, file: !3332, line: 298, baseType: !24, size: 64, offset: 1280)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4403, file: !3332, line: 299, baseType: !24, size: 64, offset: 1344)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4403, file: !3332, line: 300, baseType: !24, size: 64, offset: 1408)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4403, file: !3332, line: 302, baseType: !80, size: 64, offset: 1472)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4403, file: !3332, line: 303, baseType: !25, size: 32, offset: 1536)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4403, file: !3332, line: 305, baseType: !3379, size: 160, offset: 1568)
!4441 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3499, line: 57, baseType: !3358)
!4442 = !{!4443, !4444, !4445, !4446}
!4443 = !DILocalVariable(name: "fp", arg: 1, scope: !4397, file: !4398, line: 28, type: !4401)
!4444 = !DILocalVariable(name: "offset", arg: 2, scope: !4397, file: !4398, line: 28, type: !4441)
!4445 = !DILocalVariable(name: "whence", arg: 3, scope: !4397, file: !4398, line: 28, type: !25)
!4446 = !DILocalVariable(name: "pos", scope: !4447, file: !4398, line: 116, type: !4441)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !4398, line: 112, column: 5)
!4448 = distinct !DILexicalBlock(scope: !4397, file: !4398, line: 51, column: 7)
!4449 = !DILocation(line: 28, column: 15, scope: !4397)
!4450 = !DILocation(line: 28, column: 25, scope: !4397)
!4451 = !DILocation(line: 28, column: 37, scope: !4397)
!4452 = !DILocation(line: 51, column: 11, scope: !4448)
!4453 = !DILocation(line: 51, column: 31, scope: !4448)
!4454 = !DILocation(line: 51, column: 24, scope: !4448)
!4455 = !DILocation(line: 52, column: 7, scope: !4448)
!4456 = !DILocation(line: 52, column: 14, scope: !4448)
!4457 = !{!3957, !651, i64 40}
!4458 = !DILocation(line: 52, column: 35, scope: !4448)
!4459 = !{!3957, !651, i64 32}
!4460 = !DILocation(line: 52, column: 28, scope: !4448)
!4461 = !DILocation(line: 53, column: 7, scope: !4448)
!4462 = !DILocation(line: 53, column: 14, scope: !4448)
!4463 = !{!3957, !651, i64 72}
!4464 = !DILocation(line: 53, column: 28, scope: !4448)
!4465 = !DILocation(line: 51, column: 7, scope: !4397)
!4466 = !DILocation(line: 116, column: 26, scope: !4447)
!4467 = !DILocation(line: 116, column: 19, scope: !4447)
!4468 = !DILocation(line: 116, column: 13, scope: !4447)
!4469 = !DILocation(line: 117, column: 15, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4447, file: !4398, line: 117, column: 11)
!4471 = !DILocation(line: 117, column: 11, scope: !4447)
!4472 = !DILocation(line: 127, column: 11, scope: !4447)
!4473 = !DILocation(line: 127, column: 18, scope: !4447)
!4474 = !DILocation(line: 128, column: 11, scope: !4447)
!4475 = !DILocation(line: 128, column: 19, scope: !4447)
!4476 = !{!3957, !1051, i64 144}
!4477 = !DILocation(line: 159, column: 7, scope: !4447)
!4478 = !DILocation(line: 161, column: 10, scope: !4397)
!4479 = !DILocation(line: 161, column: 3, scope: !4397)
!4480 = !DILocation(line: 162, column: 1, scope: !4397)
