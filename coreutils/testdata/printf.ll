; ModuleID = 'coreutils-8.27/src/printf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Usage: %s FORMAT [ARGUMENT]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Print ARGUMENT(s) according to FORMAT, or execute according to OPTION:\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [97 x i8] c"\0AFORMAT controls the output as in C printf.  Interpreted sequences are:\0A\0A  \5C\22      double quote\0A\00", align 1
@.str.6 = private unnamed_addr constant [229 x i8] c"  \5C\5C      backslash\0A  \5Ca      alert (BEL)\0A  \5Cb      backspace\0A  \5Cc      produce no further output\0A  \5Ce      escape\0A  \5Cf      form feed\0A  \5Cn      new line\0A  \5Cr      carriage return\0A  \5Ct      horizontal tab\0A  \5Cv      vertical tab\0A\00", align 1
@.str.7 = private unnamed_addr constant [252 x i8] c"  \5CNNN    byte with octal value NNN (1 to 3 digits)\0A  \5CxHH    byte with hexadecimal value HH (1 to 2 digits)\0A  \5CuHHHH  Unicode (ISO/IEC 10646) character with hex value HHHH (4 digits)\0A  \5CUHHHHHHHH  Unicode character with hex value HHHHHHHH (8 digits)\0A\00", align 1
@.str.8 = private unnamed_addr constant [448 x i8] c"  %%      a single %\0A  %b      ARGUMENT as a string with '\5C' escapes interpreted,\0A          except that octal escapes are of the form \5C0 or \5C0NNN\0A  %q      ARGUMENT is printed in a format that can be reused as shell input,\0A          escaping non-printable characters with the proposed POSIX $'' syntax.\0A\0Aand all C format specifications ending with one of diouxXfeEgGcs, with\0AARGUMENTs converted to proper type first.  Variable widths are handled.\0A\00", align 1
@.str.9 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@exit_status = internal unnamed_addr global i1 false, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@posixly_correct = internal unnamed_addr global i8 0, align 1, !dbg !0
@.str.15 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"invalid field width: %s\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"invalid precision: %s\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"%.*s: invalid conversion specification\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.40 = private unnamed_addr constant [73 x i8] c"warning: %s: character(s) following character constant have been ignored\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"warning: ignoring excess arguments, starting with %s\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"%s: expected a numeric value\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"%s: value not completely converted\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"missing hexadecimal number in escape\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"\22\5Cabcefnrtv\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"invalid universal character name \5C%c%0*x\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), align 8, !dbg !71
@.str.22 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !77
@.str.25 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !107
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !112
@.str.28 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.29 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !115
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !122
@.str.49 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.61, i32 0, i32 0), i8* null], align 16, !dbg !129
@.str.52 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.53 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.54 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.55 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.56 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.57 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.58 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.59 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.60 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.61 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !144
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !151
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !163
@.str.11.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.63 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.65 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.66 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.67 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.68 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !170
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !177
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !165
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !179
@unicode_to_mb.initialized = internal unnamed_addr global i1 false, align 4
@.str.75 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@unicode_to_mb.is_utf8 = internal unnamed_addr global i32 0, align 4, !dbg !184
@unicode_to_mb.utf8_to_local = internal unnamed_addr global i8* null, align 8, !dbg !261
@.str.1.76 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.2.77 = private unnamed_addr constant [26 x i8] c"iconv function not usable\00", align 1
@.str.3.78 = private unnamed_addr constant [23 x i8] c"character out of range\00", align 1
@.str.4.81 = private unnamed_addr constant [45 x i8] c"cannot convert U+%04X to local character set\00", align 1
@.str.5.82 = private unnamed_addr constant [49 x i8] c"cannot convert U+%04X to local character set: %s\00", align 1
@.str.6.83 = private unnamed_addr constant [7 x i8] c"\5Cu%04X\00", align 1
@.str.7.84 = private unnamed_addr constant [7 x i8] c"\5CU%08X\00", align 1
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !287
@.str.1.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"cannot perform formatted output\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.136 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !296
@.str.3.137 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.138 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.139 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.140 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.141 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.142 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !695 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !699, metadata !700), !dbg !701
  %2 = icmp eq i32 %0, 0, !dbg !702
  br i1 %2, label %8, label %3, !dbg !704

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !705, !tbaa !707
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !705
  %6 = load i8*, i8** @program_name, align 8, !dbg !705, !tbaa !707
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !705
  br label %50, !dbg !705

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !711
  %10 = load i8*, i8** @program_name, align 8, !dbg !711, !tbaa !707
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #11, !dbg !711
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !713
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713, !tbaa !707
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !713
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !714
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !707
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !714
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !715
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !715, !tbaa !707
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !715
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !716
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !716, !tbaa !707
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !716
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !717
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !717, !tbaa !707
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !717
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([252 x i8], [252 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !718
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !718, !tbaa !707
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !718
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([448 x i8], [448 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !719
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !719, !tbaa !707
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !719
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !720
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !720
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !55, metadata !700) #11, !dbg !721
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !55, metadata !700) #11, !dbg !721
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !723
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #11, !dbg !723
  %37 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !724
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !63, metadata !700) #11, !dbg !725
  %38 = icmp eq i8* %37, null, !dbg !726
  br i1 %38, label %45, label %39, !dbg !728

; <label>:39:                                     ; preds = %8
  %40 = tail call i32 @strncmp(i8* nonnull %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #9, !dbg !729
  %41 = icmp eq i32 %40, 0, !dbg !729
  br i1 %41, label %45, label %42, !dbg !730

; <label>:42:                                     ; preds = %39
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !731
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !731
  br label %45, !dbg !733

; <label>:45:                                     ; preds = %8, %39, %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !734
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !734
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #11, !dbg !735
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #11, !dbg !735
  br label %50

; <label>:50:                                     ; preds = %45, %3
  tail call void @exit(i32 %0) #15, !dbg !736
  unreachable, !dbg !736
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
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #6 !dbg !737 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !745, metadata !700), !dbg !782
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !741, metadata !700), !dbg !785
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !742, metadata !700), !dbg !786
  %6 = load i8*, i8** %1, align 8, !dbg !787, !tbaa !707
  tail call void @set_program_name(i8* %6) #11, !dbg !788
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !789
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !790
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !791
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !792
  store i1 false, i1* @exit_status, align 4
  %11 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !793
  %12 = icmp ne i8* %11, null, !dbg !794
  %13 = zext i1 %12 to i8, !dbg !795
  store i8 %13, i8* @posixly_correct, align 1, !dbg !795, !tbaa !796
  %14 = icmp eq i32 %0, 2, !dbg !798
  br i1 %14, label %15, label %27, !dbg !800

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !801
  %17 = load i8*, i8** %16, align 8, !dbg !801, !tbaa !707
  %18 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !801
  %19 = icmp eq i32 %18, 0, !dbg !801
  br i1 %19, label %20, label %21, !dbg !804

; <label>:20:                                     ; preds = %15
  tail call void @usage(i32 0) #16, !dbg !805
  unreachable, !dbg !805

; <label>:21:                                     ; preds = %15
  %22 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !806
  %23 = icmp eq i32 %22, 0, !dbg !806
  br i1 %23, label %24, label %32, !dbg !808

; <label>:24:                                     ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !809, !tbaa !707
  %26 = load i8*, i8** @Version, align 8, !dbg !811, !tbaa !707
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* null) #11, !dbg !812
  br label %416, !dbg !813

; <label>:27:                                     ; preds = %2
  %28 = icmp sgt i32 %0, 1, !dbg !814
  br i1 %28, label %29, label %43, !dbg !816

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds i8*, i8** %1, i64 1
  %31 = load i8*, i8** %30, align 8, !dbg !817, !tbaa !707
  br label %32, !dbg !816

; <label>:32:                                     ; preds = %29, %21
  %33 = phi i8** [ %30, %29 ], [ %16, %21 ], !dbg !817
  %34 = phi i8* [ %31, %29 ], [ %17, %21 ], !dbg !817
  %35 = tail call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !817
  %36 = icmp eq i32 %35, 0, !dbg !817
  br i1 %36, label %37, label %45, !dbg !818

; <label>:37:                                     ; preds = %32
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !741, metadata !700), !dbg !785
  tail call void @llvm.dbg.value(metadata i8** %33, i64 0, metadata !742, metadata !700), !dbg !786
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !741, metadata !700), !dbg !785
  tail call void @llvm.dbg.value(metadata i8** %33, i64 0, metadata !742, metadata !700), !dbg !786
  %38 = icmp slt i32 %0, 3, !dbg !819
  br i1 %38, label %43, label %39, !dbg !821

; <label>:39:                                     ; preds = %37
  %40 = add nsw i32 %0, -1, !dbg !822
  %41 = getelementptr inbounds i8*, i8** %1, i64 2
  %42 = load i8*, i8** %41, align 8, !dbg !824, !tbaa !707
  br label %45, !dbg !821

; <label>:43:                                     ; preds = %27, %37
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !825
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %44) #11, !dbg !827
  tail call void @usage(i32 1) #16, !dbg !828
  unreachable, !dbg !828

; <label>:45:                                     ; preds = %39, %32
  %46 = phi i8* [ %42, %39 ], [ %34, %32 ], !dbg !824
  %47 = phi i32 [ %40, %39 ], [ %0, %32 ]
  %48 = phi i8** [ %33, %39 ], [ %1, %32 ]
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !743, metadata !700), !dbg !829
  %49 = add nsw i32 %47, -2, !dbg !830
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !741, metadata !700), !dbg !785
  %50 = getelementptr inbounds i8*, i8** %48, i64 2, !dbg !831
  tail call void @llvm.dbg.value(metadata i8** %50, i64 0, metadata !742, metadata !700), !dbg !786
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 88
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 120
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 117
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 115
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 111
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 105
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 71
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 70
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 69
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 101
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 100
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 99
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 65
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 97
  %66 = bitcast i8** %4 to i8*
  %67 = bitcast i8** %3 to i8*
  br label %68, !dbg !832, !llvm.loop !833

; <label>:68:                                     ; preds = %400, %45
  %69 = phi i8** [ %50, %45 ], [ %404, %400 ]
  %70 = phi i32 [ %49, %45 ], [ %401, %400 ]
  call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !741, metadata !700), !dbg !785
  call void @llvm.dbg.value(metadata i8** %69, i64 0, metadata !742, metadata !700), !dbg !786
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !750, metadata !700) #11, !dbg !835
  call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !751, metadata !700) #11, !dbg !836
  call void @llvm.dbg.value(metadata i8** %69, i64 0, metadata !752, metadata !700) #11, !dbg !837
  call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !753, metadata !700) #11, !dbg !838
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !758, metadata !700) #11, !dbg !839
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !760, metadata !700) #11, !dbg !840
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %51) #11, !dbg !841
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !751, metadata !700) #11, !dbg !836
  call void @llvm.dbg.value(metadata i8** %69, i64 0, metadata !752, metadata !700) #11, !dbg !837
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !760, metadata !700) #11, !dbg !840
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !758, metadata !700) #11, !dbg !839
  %71 = load i8, i8* %46, align 1, !dbg !843, !tbaa !844
  %72 = icmp eq i8 %71, 0, !dbg !845
  br i1 %72, label %400, label %73, !dbg !845

; <label>:73:                                     ; preds = %68
  br label %74, !dbg !846

; <label>:74:                                     ; preds = %73, %391
  %75 = phi i8 [ %398, %391 ], [ %71, %73 ]
  %76 = phi i32 [ %396, %391 ], [ %70, %73 ]
  %77 = phi i8** [ %395, %391 ], [ %69, %73 ]
  %78 = phi i8* [ %397, %391 ], [ %46, %73 ]
  %79 = phi i32 [ %393, %391 ], [ 0, %73 ]
  %80 = phi i32 [ %392, %391 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !758, metadata !700) #11, !dbg !839
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !760, metadata !700) #11, !dbg !840
  call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i8** %77, i64 0, metadata !752, metadata !700) #11, !dbg !837
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !751, metadata !700) #11, !dbg !836
  %81 = sext i8 %75 to i32, !dbg !846
  switch i32 %81, label %379 [
    i32 37, label %82
    i32 92, label %375
  ], !dbg !847

; <label>:82:                                     ; preds = %74
  %83 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !848
  call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !755, metadata !700) #11, !dbg !849
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !756, metadata !700) #11, !dbg !850
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !759, metadata !700) #11, !dbg !851
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !757, metadata !700) #11, !dbg !852
  %84 = load i8, i8* %83, align 1, !dbg !853, !tbaa !844
  switch i8 %84, label %134 [
    i8 37, label %85
    i8 98, label %96
    i8 113, label %125
  ], !dbg !855

; <label>:85:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i32 37, i64 0, metadata !856, metadata !700) #11, !dbg !862
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !865, !tbaa !707
  %87 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %86, i64 0, i32 5, !dbg !865
  %88 = load i8*, i8** %87, align 8, !dbg !865, !tbaa !866
  %89 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %86, i64 0, i32 6, !dbg !865
  %90 = load i8*, i8** %89, align 8, !dbg !865, !tbaa !871
  %91 = icmp ult i8* %88, %90, !dbg !865
  br i1 %91, label %94, label %92, !dbg !865, !prof !872

; <label>:92:                                     ; preds = %85
  %93 = call i32 @__overflow(%struct._IO_FILE* %86, i32 37) #11, !dbg !865
  br label %391, !dbg !865

; <label>:94:                                     ; preds = %85
  %95 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !865
  store i8* %95, i8** %87, align 8, !dbg !865, !tbaa !866
  store i8 37, i8* %88, align 1, !dbg !865, !tbaa !844
  br label %391, !dbg !865

; <label>:96:                                     ; preds = %82
  %97 = icmp sgt i32 %76, 0, !dbg !873
  br i1 %97, label %98, label %391, !dbg !877

; <label>:98:                                     ; preds = %96
  %99 = load i8*, i8** %77, align 8, !dbg !878, !tbaa !707
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !880, metadata !700) #11, !dbg !883
  br label %100, !dbg !885

; <label>:100:                                    ; preds = %119, %98
  %101 = phi i8* [ %99, %98 ], [ %121, %119 ]
  call void @llvm.dbg.value(metadata i8* %101, i64 0, metadata !880, metadata !700) #11, !dbg !883
  %102 = load i8, i8* %101, align 1, !dbg !886, !tbaa !844
  switch i8 %102, label %107 [
    i8 0, label %122
    i8 92, label %103
  ], !dbg !889

; <label>:103:                                    ; preds = %100
  %104 = call fastcc i32 @print_esc(i8* %101, i1 zeroext true) #11, !dbg !890
  %105 = sext i32 %104 to i64, !dbg !892
  %106 = getelementptr inbounds i8, i8* %101, i64 %105, !dbg !892
  call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !880, metadata !700) #11, !dbg !883
  br label %119, !dbg !893

; <label>:107:                                    ; preds = %100
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !894, !tbaa !707
  %109 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 5, !dbg !894
  %110 = load i8*, i8** %109, align 8, !dbg !894, !tbaa !866
  %111 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 6, !dbg !894
  %112 = load i8*, i8** %111, align 8, !dbg !894, !tbaa !871
  %113 = icmp ult i8* %110, %112, !dbg !894
  br i1 %113, label %117, label %114, !dbg !894, !prof !872

; <label>:114:                                    ; preds = %107
  %115 = zext i8 %102 to i32, !dbg !896
  %116 = call i32 @__overflow(%struct._IO_FILE* %108, i32 %115) #11, !dbg !894
  br label %119, !dbg !894

; <label>:117:                                    ; preds = %107
  %118 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !894
  store i8* %118, i8** %109, align 8, !dbg !894, !tbaa !866
  store i8 %102, i8* %110, align 1, !dbg !894, !tbaa !844
  br label %119, !dbg !894

; <label>:119:                                    ; preds = %117, %114, %103
  %120 = phi i8* [ %106, %103 ], [ %101, %114 ], [ %101, %117 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !880, metadata !700) #11, !dbg !883
  %121 = getelementptr inbounds i8, i8* %120, i64 1, !dbg !897
  call void @llvm.dbg.value(metadata i8* %121, i64 0, metadata !880, metadata !700) #11, !dbg !883
  br label %100, !dbg !898, !llvm.loop !899

; <label>:122:                                    ; preds = %100
  %123 = getelementptr inbounds i8*, i8** %77, i64 1, !dbg !902
  call void @llvm.dbg.value(metadata i8** %123, i64 0, metadata !752, metadata !700) #11, !dbg !837
  %124 = add nsw i32 %76, -1, !dbg !903
  call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !751, metadata !700) #11, !dbg !836
  br label %391, !dbg !904

; <label>:125:                                    ; preds = %82
  %126 = icmp sgt i32 %76, 0, !dbg !905
  br i1 %126, label %127, label %391, !dbg !909

; <label>:127:                                    ; preds = %125
  %128 = load i8*, i8** %77, align 8, !dbg !910, !tbaa !707
  %129 = call i8* @quotearg_style(i32 3, i8* %128) #11, !dbg !910
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !910, !tbaa !707
  %131 = call i32 @fputs_unlocked(i8* %129, %struct._IO_FILE* %130) #11, !dbg !910
  %132 = getelementptr inbounds i8*, i8** %77, i64 1, !dbg !912
  call void @llvm.dbg.value(metadata i8** %132, i64 0, metadata !752, metadata !700) #11, !dbg !837
  %133 = add nsw i32 %76, -1, !dbg !913
  call void @llvm.dbg.value(metadata i32 %133, i64 0, metadata !751, metadata !700) #11, !dbg !836
  br label %391, !dbg !914

; <label>:134:                                    ; preds = %82
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 0, i64 256, i32 16, i1 false) #11, !dbg !915
  store i8 1, i8* %52, align 8, !dbg !916, !tbaa !844
  store i8 1, i8* %53, align 8, !dbg !917, !tbaa !844
  store i8 1, i8* %54, align 1, !dbg !918, !tbaa !844
  store i8 1, i8* %55, align 1, !dbg !919, !tbaa !844
  store i8 1, i8* %56, align 1, !dbg !920, !tbaa !844
  store i8 1, i8* %57, align 1, !dbg !921, !tbaa !844
  store i8 1, i8* %58, align 1, !dbg !922, !tbaa !844
  store i8 1, i8* %59, align 2, !dbg !923, !tbaa !844
  store i8 1, i8* %60, align 1, !dbg !924, !tbaa !844
  store i8 1, i8* %64, align 1, !dbg !925, !tbaa !844
  store i8 1, i8* %65, align 1, !dbg !926, !tbaa !844
  call void @llvm.memset.p0i8.i64(i8* %63, i8 1, i64 5, i32 1, i1 false) #11, !dbg !927
  br label %135, !dbg !928

; <label>:135:                                    ; preds = %143, %134
  %136 = phi i64 [ 1, %134 ], [ %145, %143 ]
  %137 = phi i8* [ %83, %134 ], [ %144, %143 ]
  call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i64 %136, i64 0, metadata !756, metadata !700) #11, !dbg !850
  %138 = load i8, i8* %137, align 1, !dbg !929, !tbaa !844
  %139 = sext i8 %138 to i32, !dbg !929
  switch i32 %139, label %146 [
    i32 73, label %140
    i32 39, label %140
    i32 45, label %143
    i32 43, label %143
    i32 32, label %143
    i32 35, label %141
    i32 48, label %142
  ], !dbg !932

; <label>:140:                                    ; preds = %135, %135
  store i8 0, i8* %52, align 8, !dbg !933, !tbaa !844
  store i8 0, i8* %53, align 8, !dbg !935, !tbaa !844
  store i8 0, i8* %55, align 1, !dbg !936, !tbaa !844
  store i8 0, i8* %56, align 1, !dbg !937, !tbaa !844
  store i8 0, i8* %60, align 1, !dbg !938, !tbaa !844
  store i8 0, i8* %61, align 1, !dbg !939, !tbaa !844
  store i8 0, i8* %63, align 1, !dbg !940, !tbaa !844
  store i8 0, i8* %64, align 1, !dbg !941, !tbaa !844
  store i8 0, i8* %65, align 1, !dbg !942, !tbaa !844
  br label %143, !dbg !943

; <label>:141:                                    ; preds = %135
  store i8 0, i8* %54, align 1, !dbg !944, !tbaa !844
  store i8 0, i8* %55, align 1, !dbg !945, !tbaa !844
  store i8 0, i8* %57, align 1, !dbg !946, !tbaa !844
  store i8 0, i8* %62, align 4, !dbg !947, !tbaa !844
  store i8 0, i8* %63, align 1, !dbg !948, !tbaa !844
  br label %143, !dbg !949

; <label>:142:                                    ; preds = %135
  store i8 0, i8* %55, align 1, !dbg !950, !tbaa !844
  store i8 0, i8* %63, align 1, !dbg !951, !tbaa !844
  br label %143, !dbg !952

; <label>:143:                                    ; preds = %142, %141, %140, %135, %135, %135
  %144 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !953
  call void @llvm.dbg.value(metadata i8* %144, i64 0, metadata !754, metadata !700) #11, !dbg !842
  %145 = add i64 %136, 1, !dbg !954
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !756, metadata !700) #11, !dbg !850
  br label %135, !dbg !955, !llvm.loop !956

; <label>:146:                                    ; preds = %135
  %147 = icmp eq i8 %138, 42, !dbg !959
  br i1 %147, label %148, label %165, !dbg !960

; <label>:148:                                    ; preds = %146
  %149 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !961
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !754, metadata !700) #11, !dbg !842
  %150 = add i64 %136, 1, !dbg !962
  call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !756, metadata !700) #11, !dbg !850
  %151 = icmp sgt i32 %76, 0, !dbg !963
  br i1 %151, label %152, label %178, !dbg !964

; <label>:152:                                    ; preds = %148
  %153 = load i8*, i8** %77, align 8, !dbg !965, !tbaa !707
  %154 = call fastcc i64 @vstrtoimax(i8* %153) #11, !dbg !966
  call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !761, metadata !700) #11, !dbg !967
  %155 = add i64 %154, 2147483648, !dbg !968
  %156 = icmp ult i64 %155, 4294967296, !dbg !968
  br i1 %156, label %157, label %161, !dbg !968

; <label>:157:                                    ; preds = %152
  %158 = trunc i64 %154 to i32, !dbg !970
  call void @llvm.dbg.value(metadata i32 %158, i64 0, metadata !758, metadata !700) #11, !dbg !839
  %159 = getelementptr inbounds i8*, i8** %77, i64 1, !dbg !971
  call void @llvm.dbg.value(metadata i8** %159, i64 0, metadata !752, metadata !700) #11, !dbg !837
  %160 = add nsw i32 %76, -1, !dbg !972
  call void @llvm.dbg.value(metadata i32 %160, i64 0, metadata !751, metadata !700) #11, !dbg !836
  br label %178, !dbg !973

; <label>:161:                                    ; preds = %152
  %162 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !974
  %163 = load i8*, i8** %77, align 8, !dbg !974, !tbaa !707
  %164 = call i8* @quote(i8* %163) #11, !dbg !974
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %162, i8* %164) #11, !dbg !974
  unreachable, !dbg !974

; <label>:165:                                    ; preds = %146
  call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i64 %136, i64 0, metadata !756, metadata !700) #11, !dbg !850
  %166 = add nsw i32 %139, -48, !dbg !975
  %167 = icmp ult i32 %166, 10, !dbg !975
  br i1 %167, label %168, label %183, !dbg !976

; <label>:168:                                    ; preds = %165
  br label %169, !dbg !977

; <label>:169:                                    ; preds = %168, %169
  %170 = phi i8* [ %172, %169 ], [ %137, %168 ]
  %171 = phi i64 [ %173, %169 ], [ %136, %168 ]
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !756, metadata !700) #11, !dbg !850
  call void @llvm.dbg.value(metadata i8* %170, i64 0, metadata !754, metadata !700) #11, !dbg !842
  %172 = getelementptr inbounds i8, i8* %170, i64 1, !dbg !977
  call void @llvm.dbg.value(metadata i8* %172, i64 0, metadata !754, metadata !700) #11, !dbg !842
  %173 = add i64 %171, 1, !dbg !979
  call void @llvm.dbg.value(metadata i64 %173, i64 0, metadata !756, metadata !700) #11, !dbg !850
  call void @llvm.dbg.value(metadata i8* %172, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i64 %173, i64 0, metadata !756, metadata !700) #11, !dbg !850
  %174 = load i8, i8* %172, align 1, !dbg !975, !tbaa !844
  %175 = sext i8 %174 to i32, !dbg !975
  %176 = add nsw i32 %175, -48, !dbg !975
  %177 = icmp ult i32 %176, 10, !dbg !975
  br i1 %177, label %169, label %183, !dbg !976, !llvm.loop !980

; <label>:178:                                    ; preds = %157, %148
  %179 = phi i32 [ 0, %148 ], [ %158, %157 ]
  %180 = phi i8** [ %77, %148 ], [ %159, %157 ]
  %181 = phi i32 [ %76, %148 ], [ %160, %157 ]
  %182 = load i8, i8* %149, align 1, !dbg !983, !tbaa !844
  br label %183, !dbg !983

; <label>:183:                                    ; preds = %169, %178, %165
  %184 = phi i8 [ %182, %178 ], [ %138, %165 ], [ %174, %169 ], !dbg !983
  %185 = phi i64 [ %150, %178 ], [ %136, %165 ], [ %173, %169 ]
  %186 = phi i1 [ true, %178 ], [ false, %165 ], [ false, %169 ]
  %187 = phi i32 [ %179, %178 ], [ %80, %165 ], [ %80, %169 ]
  %188 = phi i8* [ %149, %178 ], [ %137, %165 ], [ %172, %169 ]
  %189 = phi i8** [ %180, %178 ], [ %77, %165 ], [ %77, %169 ]
  %190 = phi i32 [ %181, %178 ], [ %76, %165 ], [ %76, %169 ]
  call void @llvm.dbg.value(metadata i32 %190, i64 0, metadata !751, metadata !700) #11, !dbg !836
  call void @llvm.dbg.value(metadata i8** %189, i64 0, metadata !752, metadata !700) #11, !dbg !837
  call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i32 %187, i64 0, metadata !758, metadata !700) #11, !dbg !839
  call void @llvm.dbg.value(metadata i64 %185, i64 0, metadata !756, metadata !700) #11, !dbg !850
  %191 = icmp eq i8 %184, 46, !dbg !984
  br i1 %191, label %192, label %232, !dbg !985

; <label>:192:                                    ; preds = %183
  %193 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !986
  call void @llvm.dbg.value(metadata i8* %193, i64 0, metadata !754, metadata !700) #11, !dbg !842
  store i8 0, i8* %63, align 1, !dbg !987, !tbaa !844
  %194 = load i8, i8* %193, align 1, !dbg !988, !tbaa !844
  %195 = icmp eq i8 %194, 42, !dbg !989
  br i1 %195, label %196, label %216, !dbg !990

; <label>:196:                                    ; preds = %192
  %197 = getelementptr inbounds i8, i8* %188, i64 2, !dbg !991
  call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !754, metadata !700) #11, !dbg !842
  %198 = add i64 %185, 2, !dbg !992
  call void @llvm.dbg.value(metadata i64 %198, i64 0, metadata !756, metadata !700) #11, !dbg !850
  %199 = icmp sgt i32 %190, 0, !dbg !993
  br i1 %199, label %200, label %232, !dbg !994

; <label>:200:                                    ; preds = %196
  %201 = load i8*, i8** %189, align 8, !dbg !995, !tbaa !707
  %202 = call fastcc i64 @vstrtoimax(i8* %201) #11, !dbg !996
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !773, metadata !700) #11, !dbg !997
  %203 = icmp slt i64 %202, 0, !dbg !998
  br i1 %203, label %212, label %204, !dbg !1000

; <label>:204:                                    ; preds = %200
  %205 = icmp sgt i64 %202, 2147483647, !dbg !1001
  br i1 %205, label %206, label %210, !dbg !1003

; <label>:206:                                    ; preds = %204
  %207 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !1004
  %208 = load i8*, i8** %189, align 8, !dbg !1004, !tbaa !707
  %209 = call i8* @quote(i8* %208) #11, !dbg !1004
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %207, i8* %209) #11, !dbg !1004
  unreachable, !dbg !1004

; <label>:210:                                    ; preds = %204
  %211 = trunc i64 %202 to i32, !dbg !1005
  call void @llvm.dbg.value(metadata i32 %211, i64 0, metadata !760, metadata !700) #11, !dbg !840
  br label %212

; <label>:212:                                    ; preds = %210, %200
  %213 = phi i32 [ %211, %210 ], [ -1, %200 ]
  call void @llvm.dbg.value(metadata i32 %213, i64 0, metadata !760, metadata !700) #11, !dbg !840
  %214 = getelementptr inbounds i8*, i8** %189, i64 1, !dbg !1006
  call void @llvm.dbg.value(metadata i8** %214, i64 0, metadata !752, metadata !700) #11, !dbg !837
  %215 = add nsw i32 %190, -1, !dbg !1007
  call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !751, metadata !700) #11, !dbg !836
  br label %232, !dbg !1008

; <label>:216:                                    ; preds = %192
  %217 = add i64 %185, 1
  call void @llvm.dbg.value(metadata i8* %193, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i64 %217, i64 0, metadata !756, metadata !700) #11, !dbg !850
  %218 = sext i8 %194 to i32, !dbg !1009
  %219 = add nsw i32 %218, -48, !dbg !1009
  %220 = icmp ult i32 %219, 10, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %222, i64 0, metadata !754, metadata !700) #11, !dbg !842
  br i1 %220, label %221, label %232, !dbg !1010, !llvm.loop !1011

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %188, i64 2, !dbg !1014
  br label %223, !dbg !1010

; <label>:223:                                    ; preds = %221, %223
  %224 = phi i8* [ %222, %221 ], [ %231, %223 ]
  %225 = phi i64 [ %217, %221 ], [ %227, %223 ]
  %226 = load i8, i8* %224, align 1, !dbg !1009, !tbaa !844
  %227 = add i64 %225, 1
  call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i64 %227, i64 0, metadata !756, metadata !700) #11, !dbg !850
  %228 = sext i8 %226 to i32, !dbg !1009
  %229 = add nsw i32 %228, -48, !dbg !1009
  %230 = icmp ult i32 %229, 10, !dbg !1009
  %231 = getelementptr inbounds i8, i8* %224, i64 1, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %231, i64 0, metadata !754, metadata !700) #11, !dbg !842
  br i1 %230, label %223, label %232, !dbg !1010, !llvm.loop !1011

; <label>:232:                                    ; preds = %223, %216, %212, %196, %183
  %233 = phi i64 [ %185, %183 ], [ %198, %196 ], [ %198, %212 ], [ %217, %216 ], [ %227, %223 ]
  %234 = phi i1 [ false, %183 ], [ true, %196 ], [ true, %212 ], [ false, %216 ], [ false, %223 ]
  %235 = phi i32 [ %79, %183 ], [ 0, %196 ], [ %213, %212 ], [ %79, %216 ], [ %79, %223 ]
  %236 = phi i8* [ %188, %183 ], [ %197, %196 ], [ %197, %212 ], [ %193, %216 ], [ %224, %223 ]
  %237 = phi i8** [ %189, %183 ], [ %189, %196 ], [ %214, %212 ], [ %189, %216 ], [ %189, %223 ]
  %238 = phi i32 [ %190, %183 ], [ %190, %196 ], [ %215, %212 ], [ %190, %216 ], [ %190, %223 ]
  call void @llvm.dbg.value(metadata i32 %238, i64 0, metadata !751, metadata !700) #11, !dbg !836
  call void @llvm.dbg.value(metadata i8** %237, i64 0, metadata !752, metadata !700) #11, !dbg !837
  call void @llvm.dbg.value(metadata i8* %236, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i32 %235, i64 0, metadata !760, metadata !700) #11, !dbg !840
  call void @llvm.dbg.value(metadata i64 %233, i64 0, metadata !756, metadata !700) #11, !dbg !850
  br label %239, !dbg !1016

; <label>:239:                                    ; preds = %242, %232
  %240 = phi i8* [ %236, %232 ], [ %243, %242 ]
  call void @llvm.dbg.value(metadata i8* %240, i64 0, metadata !754, metadata !700) #11, !dbg !842
  %241 = load i8, i8* %240, align 1, !dbg !1017, !tbaa !844
  switch i8 %241, label %244 [
    i8 108, label %242
    i8 76, label %242
    i8 104, label %242
    i8 106, label %242
    i8 116, label %242
    i8 122, label %242
  ], !dbg !1018

; <label>:242:                                    ; preds = %239, %239, %239, %239, %239, %239
  %243 = getelementptr inbounds i8, i8* %240, i64 1, !dbg !1019
  call void @llvm.dbg.value(metadata i8* %243, i64 0, metadata !754, metadata !700) #11, !dbg !842
  br label %239, !dbg !1016, !llvm.loop !1020

; <label>:244:                                    ; preds = %239
  call void @llvm.dbg.value(metadata i8 %241, i64 0, metadata !780, metadata !700) #11, !dbg !1023
  %245 = zext i8 %241 to i64, !dbg !1024
  %246 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %245, !dbg !1024
  %247 = load i8, i8* %246, align 1, !dbg !1024, !tbaa !844
  %248 = icmp eq i8 %247, 0, !dbg !1024
  br i1 %248, label %249, label %256, !dbg !1026

; <label>:249:                                    ; preds = %244
  %250 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !1027
  %251 = getelementptr inbounds i8, i8* %240, i64 1, !dbg !1027
  %252 = ptrtoint i8* %251 to i64, !dbg !1027
  %253 = ptrtoint i8* %78 to i64, !dbg !1027
  %254 = sub i64 %252, %253, !dbg !1027
  %255 = trunc i64 %254 to i32, !dbg !1027
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %250, i32 %255, i8* %78) #11, !dbg !1027
  unreachable, !dbg !1027

; <label>:256:                                    ; preds = %244
  %257 = icmp slt i32 %238, 1, !dbg !1028
  br i1 %257, label %262, label %258, !dbg !1029

; <label>:258:                                    ; preds = %256
  %259 = add nsw i32 %238, -1, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %259, i64 0, metadata !751, metadata !700) #11, !dbg !836
  %260 = getelementptr inbounds i8*, i8** %237, i64 1, !dbg !1031
  call void @llvm.dbg.value(metadata i8** %260, i64 0, metadata !752, metadata !700) #11, !dbg !837
  %261 = load i8*, i8** %237, align 8, !dbg !1032, !tbaa !707
  br label %262, !dbg !1029

; <label>:262:                                    ; preds = %258, %256
  %263 = phi i8** [ %237, %256 ], [ %260, %258 ]
  %264 = phi i32 [ %238, %256 ], [ %259, %258 ]
  %265 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %256 ], [ %261, %258 ], !dbg !1029
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !751, metadata !700) #11, !dbg !836
  call void @llvm.dbg.value(metadata i8** %263, i64 0, metadata !752, metadata !700) #11, !dbg !837
  call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !1033, metadata !700) #11, !dbg !1060
  call void @llvm.dbg.value(metadata i64 %233, i64 0, metadata !1038, metadata !700) #11, !dbg !1062
  call void @llvm.dbg.value(metadata i8 %241, i64 0, metadata !1039, metadata !700) #11, !dbg !1063
  call void @llvm.dbg.value(metadata i1 %186, i64 0, metadata !1040, metadata !700) #11, !dbg !1064
  call void @llvm.dbg.value(metadata i32 %187, i64 0, metadata !1041, metadata !700) #11, !dbg !1065
  call void @llvm.dbg.value(metadata i1 %234, i64 0, metadata !1042, metadata !700) #11, !dbg !1066
  call void @llvm.dbg.value(metadata i32 %235, i64 0, metadata !1043, metadata !700) #11, !dbg !1067
  call void @llvm.dbg.value(metadata i8* %265, i64 0, metadata !1044, metadata !700) #11, !dbg !1068
  %266 = sext i8 %241 to i32, !dbg !1069
  switch i32 %266, label %268 [
    i32 100, label %269
    i32 105, label %269
    i32 111, label %269
    i32 117, label %269
    i32 120, label %269
    i32 88, label %269
    i32 97, label %267
    i32 101, label %267
    i32 102, label %267
    i32 103, label %267
    i32 65, label %267
    i32 69, label %267
    i32 70, label %267
    i32 71, label %267
  ], !dbg !1070

; <label>:267:                                    ; preds = %262, %262, %262, %262, %262, %262, %262, %262
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1049, metadata !700) #11, !dbg !1071
  br label %269, !dbg !1072

; <label>:268:                                    ; preds = %262
  call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !1048, metadata !700) #11, !dbg !1074
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1049, metadata !700) #11, !dbg !1071
  br label %269, !dbg !1075

; <label>:269:                                    ; preds = %268, %267, %262, %262, %262, %262, %262, %262
  %270 = phi i64 [ 0, %268 ], [ 1, %267 ], [ 1, %262 ], [ 1, %262 ], [ 1, %262 ], [ 1, %262 ], [ 1, %262 ], [ 1, %262 ]
  %271 = phi i8* [ %78, %268 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %267 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %262 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %262 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %262 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %262 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %262 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %262 ]
  call void @llvm.dbg.value(metadata i8* %271, i64 0, metadata !1048, metadata !700) #11, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %270, i64 0, metadata !1049, metadata !700) #11, !dbg !1071
  %272 = add i64 %233, 2, !dbg !1076
  %273 = add i64 %272, %270, !dbg !1077
  %274 = call noalias i8* @xmalloc(i64 %273) #11, !dbg !1078
  call void @llvm.dbg.value(metadata i8* %274, i64 0, metadata !1045, metadata !700) #11, !dbg !1079
  call void @llvm.dbg.value(metadata i8* %274, i64 0, metadata !1080, metadata !700) #11, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !1090, metadata !700) #11, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %233, i64 0, metadata !1091, metadata !700) #11, !dbg !1092
  %275 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %274, i1 false, i1 true) #11, !dbg !1094
  %276 = call i8* @__mempcpy_chk(i8* nonnull %274, i8* nonnull %78, i64 %233, i64 %275) #11, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %276, i64 0, metadata !1046, metadata !700) #11, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %276, i64 0, metadata !1080, metadata !700) #11, !dbg !1097
  call void @llvm.dbg.value(metadata i8* %271, i64 0, metadata !1090, metadata !700) #11, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %270, i64 0, metadata !1091, metadata !700) #11, !dbg !1097
  %277 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %276, i1 false, i1 true) #11, !dbg !1099
  %278 = call i8* @__mempcpy_chk(i8* nonnull %276, i8* nonnull %271, i64 %270, i64 %277) #11, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %278, i64 0, metadata !1046, metadata !700) #11, !dbg !1096
  %279 = getelementptr inbounds i8, i8* %278, i64 1, !dbg !1101
  call void @llvm.dbg.value(metadata i8* %279, i64 0, metadata !1046, metadata !700) #11, !dbg !1096
  store i8 %241, i8* %278, align 1, !dbg !1102, !tbaa !844
  store i8 0, i8* %279, align 1, !dbg !1103, !tbaa !844
  switch i32 %266, label %374 [
    i32 100, label %280
    i32 105, label %280
    i32 111, label %292
    i32 117, label %292
    i32 120, label %292
    i32 88, label %292
    i32 97, label %324
    i32 65, label %324
    i32 101, label %324
    i32 69, label %324
    i32 102, label %324
    i32 70, label %324
    i32 103, label %324
    i32 71, label %324
    i32 99, label %356
    i32 115, label %363
  ], !dbg !1104

; <label>:280:                                    ; preds = %269, %269
  %281 = call fastcc i64 @vstrtoimax(i8* %265) #11, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1050, metadata !700) #11, !dbg !1106
  br i1 %186, label %287, label %282, !dbg !1107

; <label>:282:                                    ; preds = %280
  br i1 %234, label %285, label %283, !dbg !1108

; <label>:283:                                    ; preds = %282
  %284 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i64 %281) #11, !dbg !1111
  br label %374, !dbg !1111

; <label>:285:                                    ; preds = %282
  %286 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %235, i64 %281) #11, !dbg !1113
  br label %374

; <label>:287:                                    ; preds = %280
  br i1 %234, label %290, label %288, !dbg !1114

; <label>:288:                                    ; preds = %287
  %289 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %187, i64 %281) #11, !dbg !1116
  br label %374, !dbg !1116

; <label>:290:                                    ; preds = %287
  %291 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %187, i32 %235, i64 %281) #11, !dbg !1118
  br label %374

; <label>:292:                                    ; preds = %269, %269, %269, %269
  call void @llvm.dbg.value(metadata i8* %265, i64 0, metadata !1119, metadata !700) #11, !dbg !1129
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #11, !dbg !1129
  %293 = load i8, i8* %265, align 1, !dbg !1131, !tbaa !844
  switch i8 %293, label %308 [
    i8 34, label %294
    i8 39, label %294
  ], !dbg !1131

; <label>:294:                                    ; preds = %292, %292
  %295 = getelementptr inbounds i8, i8* %265, i64 1, !dbg !1131
  %296 = load i8, i8* %295, align 1, !dbg !1131, !tbaa !844
  %297 = icmp eq i8 %296, 0, !dbg !1131
  br i1 %297, label %308, label %298, !dbg !1129

; <label>:298:                                    ; preds = %294
  call void @llvm.dbg.value(metadata i8* %295, i64 0, metadata !1119, metadata !700) #11, !dbg !1129
  call void @llvm.dbg.value(metadata i8 %296, i64 0, metadata !1126, metadata !700) #11, !dbg !1132
  %299 = zext i8 %296 to i64, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %299, i64 0, metadata !1125, metadata !700) #11, !dbg !1129
  %300 = getelementptr inbounds i8, i8* %265, i64 2, !dbg !1133
  call void @llvm.dbg.value(metadata i8* %300, i64 0, metadata !1119, metadata !700) #11, !dbg !1129
  %301 = load i8, i8* %300, align 1, !dbg !1133, !tbaa !844
  %302 = icmp ne i8 %301, 0, !dbg !1133
  %303 = load i8, i8* @posixly_correct, align 1, !dbg !1133
  %304 = icmp eq i8 %303, 0, !dbg !1133
  %305 = and i1 %302, %304, !dbg !1133
  br i1 %305, label %306, label %312, !dbg !1133

; <label>:306:                                    ; preds = %298
  %307 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !1133
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %307, i8* %300) #11, !dbg !1133
  br label %312, !dbg !1133

; <label>:308:                                    ; preds = %294, %292
  %309 = tail call i32* @__errno_location() #17, !dbg !1135
  store i32 0, i32* %309, align 4, !dbg !1135, !tbaa !1137
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1124, metadata !700) #11, !dbg !1129
  call void @llvm.dbg.value(metadata i8* %265, i64 0, metadata !1138, metadata !700) #11, !dbg !1148
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1146, metadata !700) #11, !dbg !1148
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1147, metadata !700) #11, !dbg !1148
  %310 = call i64 @__strtoul_internal(i8* nonnull %265, i8** nonnull %4, i32 0, i32 0) #11, !dbg !1150
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1125, metadata !700) #11, !dbg !1129
  %311 = load i8*, i8** %4, align 8, !dbg !1135, !tbaa !707
  call void @llvm.dbg.value(metadata i8* %311, i64 0, metadata !1124, metadata !700) #11, !dbg !1129
  call fastcc void @verify_numeric(i8* nonnull %265, i8* %311) #11, !dbg !1135
  br label %312

; <label>:312:                                    ; preds = %308, %306, %298
  %313 = phi i64 [ %310, %308 ], [ %299, %298 ], [ %299, %306 ]
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1125, metadata !700) #11, !dbg !1129
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #11, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1053, metadata !700) #11, !dbg !1151
  br i1 %186, label %319, label %314, !dbg !1152

; <label>:314:                                    ; preds = %312
  br i1 %234, label %317, label %315, !dbg !1153

; <label>:315:                                    ; preds = %314
  %316 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i64 %313) #11, !dbg !1156
  br label %374, !dbg !1156

; <label>:317:                                    ; preds = %314
  %318 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %235, i64 %313) #11, !dbg !1158
  br label %374

; <label>:319:                                    ; preds = %312
  br i1 %234, label %322, label %320, !dbg !1159

; <label>:320:                                    ; preds = %319
  %321 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %187, i64 %313) #11, !dbg !1161
  br label %374, !dbg !1161

; <label>:322:                                    ; preds = %319
  %323 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %187, i32 %235, i64 %313) #11, !dbg !1163
  br label %374

; <label>:324:                                    ; preds = %269, %269, %269, %269, %269, %269, %269, %269
  call void @llvm.dbg.value(metadata i8* %265, i64 0, metadata !1164, metadata !700) #11, !dbg !1174
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #11, !dbg !1174
  %325 = load i8, i8* %265, align 1, !dbg !1176, !tbaa !844
  switch i8 %325, label %340 [
    i8 34, label %326
    i8 39, label %326
  ], !dbg !1176

; <label>:326:                                    ; preds = %324, %324
  %327 = getelementptr inbounds i8, i8* %265, i64 1, !dbg !1176
  %328 = load i8, i8* %327, align 1, !dbg !1176, !tbaa !844
  %329 = icmp eq i8 %328, 0, !dbg !1176
  br i1 %329, label %340, label %330, !dbg !1174

; <label>:330:                                    ; preds = %326
  call void @llvm.dbg.value(metadata i8* %327, i64 0, metadata !1164, metadata !700) #11, !dbg !1174
  call void @llvm.dbg.value(metadata i8 %328, i64 0, metadata !1171, metadata !700) #11, !dbg !1177
  %331 = uitofp i8 %328 to x86_fp80, !dbg !1177
  call void @llvm.dbg.value(metadata x86_fp80 %331, i64 0, metadata !1170, metadata !700) #11, !dbg !1174
  %332 = getelementptr inbounds i8, i8* %265, i64 2, !dbg !1178
  call void @llvm.dbg.value(metadata i8* %332, i64 0, metadata !1164, metadata !700) #11, !dbg !1174
  %333 = load i8, i8* %332, align 1, !dbg !1178, !tbaa !844
  %334 = icmp ne i8 %333, 0, !dbg !1178
  %335 = load i8, i8* @posixly_correct, align 1, !dbg !1178
  %336 = icmp eq i8 %335, 0, !dbg !1178
  %337 = and i1 %334, %336, !dbg !1178
  br i1 %337, label %338, label %344, !dbg !1178

; <label>:338:                                    ; preds = %330
  %339 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !1178
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %339, i8* %332) #11, !dbg !1178
  br label %344, !dbg !1178

; <label>:340:                                    ; preds = %326, %324
  %341 = tail call i32* @__errno_location() #17, !dbg !1180
  store i32 0, i32* %341, align 4, !dbg !1180, !tbaa !1137
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !1169, metadata !700) #11, !dbg !1174
  %342 = call x86_fp80 @c_strtold(i8* nonnull %265, i8** nonnull %3) #11, !dbg !1180
  call void @llvm.dbg.value(metadata x86_fp80 %342, i64 0, metadata !1170, metadata !700) #11, !dbg !1174
  %343 = load i8*, i8** %3, align 8, !dbg !1180, !tbaa !707
  call void @llvm.dbg.value(metadata i8* %343, i64 0, metadata !1169, metadata !700) #11, !dbg !1174
  call fastcc void @verify_numeric(i8* nonnull %265, i8* %343) #11, !dbg !1180
  br label %344

; <label>:344:                                    ; preds = %340, %338, %330
  %345 = phi x86_fp80 [ %342, %340 ], [ %331, %330 ], [ %331, %338 ]
  call void @llvm.dbg.value(metadata x86_fp80 %345, i64 0, metadata !1170, metadata !700) #11, !dbg !1174
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #11, !dbg !1174
  call void @llvm.dbg.value(metadata x86_fp80 %345, i64 0, metadata !1057, metadata !700) #11, !dbg !1182
  br i1 %186, label %351, label %346, !dbg !1183

; <label>:346:                                    ; preds = %344
  br i1 %234, label %349, label %347, !dbg !1184

; <label>:347:                                    ; preds = %346
  %348 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, x86_fp80 %345) #11, !dbg !1187
  br label %374, !dbg !1187

; <label>:349:                                    ; preds = %346
  %350 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %235, x86_fp80 %345) #11, !dbg !1189
  br label %374

; <label>:351:                                    ; preds = %344
  br i1 %234, label %354, label %352, !dbg !1190

; <label>:352:                                    ; preds = %351
  %353 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %187, x86_fp80 %345) #11, !dbg !1192
  br label %374, !dbg !1192

; <label>:354:                                    ; preds = %351
  %355 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %187, i32 %235, x86_fp80 %345) #11, !dbg !1194
  br label %374

; <label>:356:                                    ; preds = %269
  %357 = load i8, i8* %265, align 1, !tbaa !844
  %358 = sext i8 %357 to i32
  br i1 %186, label %361, label %359, !dbg !1195

; <label>:359:                                    ; preds = %356
  %360 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %358) #11, !dbg !1196
  br label %374, !dbg !1196

; <label>:361:                                    ; preds = %356
  %362 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %187, i32 %358) #11, !dbg !1198
  br label %374

; <label>:363:                                    ; preds = %269
  br i1 %186, label %369, label %364, !dbg !1199

; <label>:364:                                    ; preds = %363
  br i1 %234, label %367, label %365, !dbg !1200

; <label>:365:                                    ; preds = %364
  %366 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i8* %265) #11, !dbg !1203
  br label %374, !dbg !1203

; <label>:367:                                    ; preds = %364
  %368 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %235, i8* %265) #11, !dbg !1205
  br label %374

; <label>:369:                                    ; preds = %363
  br i1 %234, label %372, label %370, !dbg !1206

; <label>:370:                                    ; preds = %369
  %371 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %187, i8* %265) #11, !dbg !1208
  br label %374, !dbg !1208

; <label>:372:                                    ; preds = %369
  %373 = call i32 (i8*, ...) @xprintf(i8* nonnull %274, i32 %187, i32 %235, i8* %265) #11, !dbg !1210
  br label %374

; <label>:374:                                    ; preds = %372, %370, %367, %365, %361, %359, %354, %352, %349, %347, %322, %320, %317, %315, %290, %288, %285, %283, %269
  call void @free(i8* %274) #11, !dbg !1211
  br label %391, !dbg !1212

; <label>:375:                                    ; preds = %74
  %376 = call fastcc i32 @print_esc(i8* %78, i1 zeroext false) #11, !dbg !1213
  %377 = sext i32 %376 to i64, !dbg !1214
  %378 = getelementptr inbounds i8, i8* %78, i64 %377, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %378, i64 0, metadata !754, metadata !700) #11, !dbg !842
  br label %391, !dbg !1215

; <label>:379:                                    ; preds = %74
  call void @llvm.dbg.value(metadata i32 %81, i64 0, metadata !856, metadata !700) #11, !dbg !1216
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1218, !tbaa !707
  %381 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %380, i64 0, i32 5, !dbg !1218
  %382 = load i8*, i8** %381, align 8, !dbg !1218, !tbaa !866
  %383 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %380, i64 0, i32 6, !dbg !1218
  %384 = load i8*, i8** %383, align 8, !dbg !1218, !tbaa !871
  %385 = icmp ult i8* %382, %384, !dbg !1218
  br i1 %385, label %389, label %386, !dbg !1218, !prof !872

; <label>:386:                                    ; preds = %379
  %387 = and i32 %81, 255, !dbg !1218
  %388 = call i32 @__overflow(%struct._IO_FILE* %380, i32 %387) #11, !dbg !1218
  br label %391, !dbg !1218

; <label>:389:                                    ; preds = %379
  %390 = getelementptr inbounds i8, i8* %382, i64 1, !dbg !1218
  store i8* %390, i8** %381, align 8, !dbg !1218, !tbaa !866
  store i8 %75, i8* %382, align 1, !dbg !1218, !tbaa !844
  br label %391, !dbg !1218

; <label>:391:                                    ; preds = %389, %386, %375, %374, %127, %125, %122, %96, %94, %92
  %392 = phi i32 [ %80, %375 ], [ %80, %122 ], [ %80, %96 ], [ %80, %127 ], [ %80, %125 ], [ %187, %374 ], [ %80, %92 ], [ %80, %94 ], [ %80, %386 ], [ %80, %389 ]
  %393 = phi i32 [ %79, %375 ], [ %79, %122 ], [ %79, %96 ], [ %79, %127 ], [ %79, %125 ], [ %235, %374 ], [ %79, %92 ], [ %79, %94 ], [ %79, %386 ], [ %79, %389 ]
  %394 = phi i8* [ %378, %375 ], [ %83, %122 ], [ %83, %96 ], [ %83, %127 ], [ %83, %125 ], [ %240, %374 ], [ %83, %92 ], [ %83, %94 ], [ %78, %386 ], [ %78, %389 ]
  %395 = phi i8** [ %77, %375 ], [ %123, %122 ], [ %77, %96 ], [ %132, %127 ], [ %77, %125 ], [ %263, %374 ], [ %77, %92 ], [ %77, %94 ], [ %77, %386 ], [ %77, %389 ]
  %396 = phi i32 [ %76, %375 ], [ %124, %122 ], [ %76, %96 ], [ %133, %127 ], [ %76, %125 ], [ %264, %374 ], [ %76, %92 ], [ %76, %94 ], [ %76, %386 ], [ %76, %389 ]
  call void @llvm.dbg.value(metadata i32 %396, i64 0, metadata !751, metadata !700) #11, !dbg !836
  call void @llvm.dbg.value(metadata i8** %395, i64 0, metadata !752, metadata !700) #11, !dbg !837
  call void @llvm.dbg.value(metadata i8* %394, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i32 %393, i64 0, metadata !760, metadata !700) #11, !dbg !840
  call void @llvm.dbg.value(metadata i32 %392, i64 0, metadata !758, metadata !700) #11, !dbg !839
  %397 = getelementptr inbounds i8, i8* %394, i64 1, !dbg !1219
  call void @llvm.dbg.value(metadata i8* %397, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i32 %396, i64 0, metadata !751, metadata !700) #11, !dbg !836
  call void @llvm.dbg.value(metadata i8** %395, i64 0, metadata !752, metadata !700) #11, !dbg !837
  call void @llvm.dbg.value(metadata i8* %397, i64 0, metadata !754, metadata !700) #11, !dbg !842
  call void @llvm.dbg.value(metadata i32 %393, i64 0, metadata !760, metadata !700) #11, !dbg !840
  call void @llvm.dbg.value(metadata i32 %392, i64 0, metadata !758, metadata !700) #11, !dbg !839
  %398 = load i8, i8* %397, align 1, !dbg !843, !tbaa !844
  %399 = icmp eq i8 %398, 0, !dbg !845
  br i1 %399, label %400, label %74, !dbg !845, !llvm.loop !1220

; <label>:400:                                    ; preds = %391, %68
  %401 = phi i32 [ %70, %68 ], [ %396, %391 ]
  %402 = sub nsw i32 %70, %401, !dbg !1223
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %51) #11, !dbg !1224
  call void @llvm.dbg.value(metadata i32 %402, i64 0, metadata !744, metadata !700), !dbg !1225
  call void @llvm.dbg.value(metadata i32 %401, i64 0, metadata !741, metadata !700), !dbg !785
  %403 = sext i32 %402 to i64, !dbg !1226
  %404 = getelementptr inbounds i8*, i8** %69, i64 %403, !dbg !1226
  call void @llvm.dbg.value(metadata i8** %404, i64 0, metadata !742, metadata !700), !dbg !786
  %405 = icmp sgt i32 %402, 0, !dbg !1227
  %406 = icmp sgt i32 %401, 0, !dbg !1228
  %407 = and i1 %406, %405, !dbg !1229
  br i1 %407, label %68, label %408, !dbg !1230, !llvm.loop !833

; <label>:408:                                    ; preds = %400
  br i1 %406, label %409, label %413, !dbg !1231

; <label>:409:                                    ; preds = %408
  %410 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !1232
  %411 = load i8*, i8** %404, align 8, !dbg !1234, !tbaa !707
  %412 = call i8* @quote(i8* %411) #11, !dbg !1235
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %410, i8* %412) #11, !dbg !1236
  br label %413, !dbg !1236

; <label>:413:                                    ; preds = %409, %408
  %414 = load i1, i1* @exit_status, align 4
  %415 = zext i1 %414 to i32
  br label %416, !dbg !1237

; <label>:416:                                    ; preds = %413, %24
  %417 = phi i32 [ 0, %24 ], [ %415, %413 ]
  ret i32 %417, !dbg !1238
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @print_esc(i8*, i1 zeroext) unnamed_addr #6 !dbg !1239 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1243, metadata !700), !dbg !1255
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1244, metadata !700), !dbg !1256
  %3 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1257
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1246, metadata !700), !dbg !1259
  %4 = load i8, i8* %3, align 1, !dbg !1260, !tbaa !844
  %5 = icmp eq i8 %4, 120, !dbg !1261
  br i1 %5, label %6, label %51, !dbg !1262

; <label>:6:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1247, metadata !700), !dbg !1263
  %7 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1264
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1246, metadata !700), !dbg !1259
  %8 = tail call i16** @__ctype_b_loc() #17, !dbg !1267
  %9 = load i16*, i16** %8, align 8, !tbaa !707
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1245, metadata !700), !dbg !1258
  %10 = load i8, i8* %7, align 1, !dbg !1267, !tbaa !844
  %11 = zext i8 %10 to i64, !dbg !1267
  %12 = getelementptr inbounds i16, i16* %9, i64 %11, !dbg !1267
  %13 = load i16, i16* %12, align 2, !dbg !1267, !tbaa !1269
  %14 = and i16 %13, 4096, !dbg !1267
  %15 = icmp eq i16 %14, 0, !dbg !1270
  br i1 %15, label %34, label %16, !dbg !1271

; <label>:16:                                     ; preds = %6
  %17 = sext i8 %10 to i32, !dbg !1272
  %18 = add i8 %10, -97, !dbg !1272
  %19 = icmp ult i8 %18, 6, !dbg !1272
  br i1 %19, label %24, label %20, !dbg !1272

; <label>:20:                                     ; preds = %16
  %21 = add i8 %10, -65, !dbg !1272
  %22 = icmp ult i8 %21, 6, !dbg !1272
  %23 = select i1 %22, i32 -55, i32 -48, !dbg !1272
  br label %24, !dbg !1272

; <label>:24:                                     ; preds = %16, %20
  %25 = phi i32 [ %23, %20 ], [ -87, %16 ]
  %26 = add nsw i32 %25, %17, !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1247, metadata !700), !dbg !1263
  %27 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1274
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1245, metadata !700), !dbg !1258
  %28 = load i8, i8* %27, align 1, !dbg !1267, !tbaa !844
  %29 = zext i8 %28 to i64, !dbg !1267
  %30 = getelementptr inbounds i16, i16* %9, i64 %29, !dbg !1267
  %31 = load i16, i16* %30, align 2, !dbg !1267, !tbaa !1269
  %32 = and i16 %31, 4096, !dbg !1267
  %33 = icmp eq i16 %32, 0, !dbg !1270
  br i1 %33, label %36, label %273, !dbg !1271

; <label>:34:                                     ; preds = %6
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !1275
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %35) #11, !dbg !1275
  unreachable, !dbg !1275

; <label>:36:                                     ; preds = %24, %282
  %37 = phi i32 [ %285, %282 ], [ %26, %24 ]
  %38 = phi i8* [ %286, %282 ], [ %27, %24 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !856, metadata !700) #11, !dbg !1277
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1279, !tbaa !707
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !1279
  %41 = load i8*, i8** %40, align 8, !dbg !1279, !tbaa !866
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !1279
  %43 = load i8*, i8** %42, align 8, !dbg !1279, !tbaa !871
  %44 = icmp ult i8* %41, %43, !dbg !1279
  br i1 %44, label %48, label %45, !dbg !1279, !prof !872

; <label>:45:                                     ; preds = %36
  %46 = and i32 %37, 255, !dbg !1279
  %47 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 %46) #11, !dbg !1279
  br label %266, !dbg !1279

; <label>:48:                                     ; preds = %36
  %49 = trunc i32 %37 to i8, !dbg !1279
  %50 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1279
  store i8* %50, i8** %40, align 8, !dbg !1279, !tbaa !866
  store i8 %49, i8* %41, align 1, !dbg !1279, !tbaa !844
  br label %266, !dbg !1279

; <label>:51:                                     ; preds = %2
  %52 = and i8 %4, -8, !dbg !1280
  %53 = icmp eq i8 %52, 48, !dbg !1280
  br i1 %53, label %54, label %84, !dbg !1280

; <label>:54:                                     ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1247, metadata !700), !dbg !1263
  %55 = icmp eq i8 %4, 48, !dbg !1281
  %56 = and i1 %55, %1, !dbg !1284
  %57 = zext i1 %56 to i64, !dbg !1284
  %58 = getelementptr inbounds i8, i8* %3, i64 %57, !dbg !1285
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1245, metadata !700), !dbg !1258
  %59 = load i8, i8* %58, align 1, !dbg !1286, !tbaa !844
  %60 = and i8 %59, -8, !dbg !1286
  %61 = icmp eq i8 %60, 48, !dbg !1286
  br i1 %61, label %62, label %69, !dbg !1288

; <label>:62:                                     ; preds = %54
  %63 = sext i8 %59 to i32, !dbg !1289
  %64 = add nsw i32 %63, -48, !dbg !1290
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1247, metadata !700), !dbg !1263
  %65 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1291
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1245, metadata !700), !dbg !1258
  %66 = load i8, i8* %65, align 1, !dbg !1286, !tbaa !844
  %67 = and i8 %66, -8, !dbg !1286
  %68 = icmp eq i8 %67, 48, !dbg !1286
  br i1 %68, label %287, label %69, !dbg !1288

; <label>:69:                                     ; preds = %296, %287, %62, %54
  %70 = phi i32 [ 0, %54 ], [ %64, %62 ], [ %291, %287 ], [ %300, %296 ]
  %71 = phi i8* [ %58, %54 ], [ %65, %62 ], [ %292, %287 ], [ %301, %296 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !856, metadata !700) #11, !dbg !1292
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1294, !tbaa !707
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 5, !dbg !1294
  %74 = load i8*, i8** %73, align 8, !dbg !1294, !tbaa !866
  %75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 6, !dbg !1294
  %76 = load i8*, i8** %75, align 8, !dbg !1294, !tbaa !871
  %77 = icmp ult i8* %74, %76, !dbg !1294
  br i1 %77, label %81, label %78, !dbg !1294, !prof !872

; <label>:78:                                     ; preds = %69
  %79 = and i32 %70, 255, !dbg !1294
  %80 = tail call i32 @__overflow(%struct._IO_FILE* %72, i32 %79) #11, !dbg !1294
  br label %266, !dbg !1294

; <label>:81:                                     ; preds = %69
  %82 = trunc i32 %70 to i8, !dbg !1294
  %83 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1294
  store i8* %83, i8** %73, align 8, !dbg !1294, !tbaa !866
  store i8 %82, i8* %74, align 1, !dbg !1294, !tbaa !844
  br label %266, !dbg !1294

; <label>:84:                                     ; preds = %51
  %85 = icmp eq i8 %4, 0, !dbg !1295
  br i1 %85, label %238, label %86, !dbg !1296

; <label>:86:                                     ; preds = %84
  %87 = sext i8 %4 to i32, !dbg !1295
  %88 = tail call i8* @memchr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 %87, i64 12), !dbg !1297
  %89 = icmp eq i8* %88, null, !dbg !1297
  br i1 %89, label %193, label %90, !dbg !1298

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1299
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !1300, metadata !700) #11, !dbg !1305
  switch i32 %87, label %181 [
    i32 97, label %92
    i32 98, label %103
    i32 99, label %114
    i32 101, label %115
    i32 102, label %126
    i32 110, label %137
    i32 114, label %148
    i32 116, label %159
    i32 118, label %170
  ], !dbg !1307

; <label>:92:                                     ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !856, metadata !700) #11, !dbg !1308
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1311, !tbaa !707
  %94 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %93, i64 0, i32 5, !dbg !1311
  %95 = load i8*, i8** %94, align 8, !dbg !1311, !tbaa !866
  %96 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %93, i64 0, i32 6, !dbg !1311
  %97 = load i8*, i8** %96, align 8, !dbg !1311, !tbaa !871
  %98 = icmp ult i8* %95, %97, !dbg !1311
  br i1 %98, label %101, label %99, !dbg !1311, !prof !872

; <label>:99:                                     ; preds = %92
  %100 = tail call i32 @__overflow(%struct._IO_FILE* %93, i32 7) #11, !dbg !1311
  br label %266, !dbg !1311

; <label>:101:                                    ; preds = %92
  %102 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !1311
  store i8* %102, i8** %94, align 8, !dbg !1311, !tbaa !866
  store i8 7, i8* %95, align 1, !dbg !1311, !tbaa !844
  br label %266, !dbg !1311

; <label>:103:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !856, metadata !700) #11, !dbg !1312
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1314, !tbaa !707
  %105 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 5, !dbg !1314
  %106 = load i8*, i8** %105, align 8, !dbg !1314, !tbaa !866
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 6, !dbg !1314
  %108 = load i8*, i8** %107, align 8, !dbg !1314, !tbaa !871
  %109 = icmp ult i8* %106, %108, !dbg !1314
  br i1 %109, label %112, label %110, !dbg !1314, !prof !872

; <label>:110:                                    ; preds = %103
  %111 = tail call i32 @__overflow(%struct._IO_FILE* %104, i32 8) #11, !dbg !1314
  br label %266, !dbg !1314

; <label>:112:                                    ; preds = %103
  %113 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1314
  store i8* %113, i8** %105, align 8, !dbg !1314, !tbaa !866
  store i8 8, i8* %106, align 1, !dbg !1314, !tbaa !844
  br label %266, !dbg !1314

; <label>:114:                                    ; preds = %90
  tail call void @exit(i32 0) #15, !dbg !1315
  unreachable, !dbg !1315

; <label>:115:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 27, i64 0, metadata !856, metadata !700) #11, !dbg !1316
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1318, !tbaa !707
  %117 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 5, !dbg !1318
  %118 = load i8*, i8** %117, align 8, !dbg !1318, !tbaa !866
  %119 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 6, !dbg !1318
  %120 = load i8*, i8** %119, align 8, !dbg !1318, !tbaa !871
  %121 = icmp ult i8* %118, %120, !dbg !1318
  br i1 %121, label %124, label %122, !dbg !1318, !prof !872

; <label>:122:                                    ; preds = %115
  %123 = tail call i32 @__overflow(%struct._IO_FILE* %116, i32 27) #11, !dbg !1318
  br label %266, !dbg !1318

; <label>:124:                                    ; preds = %115
  %125 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1318
  store i8* %125, i8** %117, align 8, !dbg !1318, !tbaa !866
  store i8 27, i8* %118, align 1, !dbg !1318, !tbaa !844
  br label %266, !dbg !1318

; <label>:126:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 12, i64 0, metadata !856, metadata !700) #11, !dbg !1319
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1321, !tbaa !707
  %128 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %127, i64 0, i32 5, !dbg !1321
  %129 = load i8*, i8** %128, align 8, !dbg !1321, !tbaa !866
  %130 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %127, i64 0, i32 6, !dbg !1321
  %131 = load i8*, i8** %130, align 8, !dbg !1321, !tbaa !871
  %132 = icmp ult i8* %129, %131, !dbg !1321
  br i1 %132, label %135, label %133, !dbg !1321, !prof !872

; <label>:133:                                    ; preds = %126
  %134 = tail call i32 @__overflow(%struct._IO_FILE* %127, i32 12) #11, !dbg !1321
  br label %266, !dbg !1321

; <label>:135:                                    ; preds = %126
  %136 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1321
  store i8* %136, i8** %128, align 8, !dbg !1321, !tbaa !866
  store i8 12, i8* %129, align 1, !dbg !1321, !tbaa !844
  br label %266, !dbg !1321

; <label>:137:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !856, metadata !700) #11, !dbg !1322
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1324, !tbaa !707
  %139 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 5, !dbg !1324
  %140 = load i8*, i8** %139, align 8, !dbg !1324, !tbaa !866
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 6, !dbg !1324
  %142 = load i8*, i8** %141, align 8, !dbg !1324, !tbaa !871
  %143 = icmp ult i8* %140, %142, !dbg !1324
  br i1 %143, label %146, label %144, !dbg !1324, !prof !872

; <label>:144:                                    ; preds = %137
  %145 = tail call i32 @__overflow(%struct._IO_FILE* %138, i32 10) #11, !dbg !1324
  br label %266, !dbg !1324

; <label>:146:                                    ; preds = %137
  %147 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !1324
  store i8* %147, i8** %139, align 8, !dbg !1324, !tbaa !866
  store i8 10, i8* %140, align 1, !dbg !1324, !tbaa !844
  br label %266, !dbg !1324

; <label>:148:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 13, i64 0, metadata !856, metadata !700) #11, !dbg !1325
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1327, !tbaa !707
  %150 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %149, i64 0, i32 5, !dbg !1327
  %151 = load i8*, i8** %150, align 8, !dbg !1327, !tbaa !866
  %152 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %149, i64 0, i32 6, !dbg !1327
  %153 = load i8*, i8** %152, align 8, !dbg !1327, !tbaa !871
  %154 = icmp ult i8* %151, %153, !dbg !1327
  br i1 %154, label %157, label %155, !dbg !1327, !prof !872

; <label>:155:                                    ; preds = %148
  %156 = tail call i32 @__overflow(%struct._IO_FILE* %149, i32 13) #11, !dbg !1327
  br label %266, !dbg !1327

; <label>:157:                                    ; preds = %148
  %158 = getelementptr inbounds i8, i8* %151, i64 1, !dbg !1327
  store i8* %158, i8** %150, align 8, !dbg !1327, !tbaa !866
  store i8 13, i8* %151, align 1, !dbg !1327, !tbaa !844
  br label %266, !dbg !1327

; <label>:159:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !856, metadata !700) #11, !dbg !1328
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1330, !tbaa !707
  %161 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 5, !dbg !1330
  %162 = load i8*, i8** %161, align 8, !dbg !1330, !tbaa !866
  %163 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 6, !dbg !1330
  %164 = load i8*, i8** %163, align 8, !dbg !1330, !tbaa !871
  %165 = icmp ult i8* %162, %164, !dbg !1330
  br i1 %165, label %168, label %166, !dbg !1330, !prof !872

; <label>:166:                                    ; preds = %159
  %167 = tail call i32 @__overflow(%struct._IO_FILE* %160, i32 9) #11, !dbg !1330
  br label %266, !dbg !1330

; <label>:168:                                    ; preds = %159
  %169 = getelementptr inbounds i8, i8* %162, i64 1, !dbg !1330
  store i8* %169, i8** %161, align 8, !dbg !1330, !tbaa !866
  store i8 9, i8* %162, align 1, !dbg !1330, !tbaa !844
  br label %266, !dbg !1330

; <label>:170:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 11, i64 0, metadata !856, metadata !700) #11, !dbg !1331
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1333, !tbaa !707
  %172 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %171, i64 0, i32 5, !dbg !1333
  %173 = load i8*, i8** %172, align 8, !dbg !1333, !tbaa !866
  %174 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %171, i64 0, i32 6, !dbg !1333
  %175 = load i8*, i8** %174, align 8, !dbg !1333, !tbaa !871
  %176 = icmp ult i8* %173, %175, !dbg !1333
  br i1 %176, label %179, label %177, !dbg !1333, !prof !872

; <label>:177:                                    ; preds = %170
  %178 = tail call i32 @__overflow(%struct._IO_FILE* %171, i32 11) #11, !dbg !1333
  br label %266, !dbg !1333

; <label>:179:                                    ; preds = %170
  %180 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !1333
  store i8* %180, i8** %172, align 8, !dbg !1333, !tbaa !866
  store i8 11, i8* %173, align 1, !dbg !1333, !tbaa !844
  br label %266, !dbg !1333

; <label>:181:                                    ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !856, metadata !700) #11, !dbg !1334
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1336, !tbaa !707
  %183 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 5, !dbg !1336
  %184 = load i8*, i8** %183, align 8, !dbg !1336, !tbaa !866
  %185 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 6, !dbg !1336
  %186 = load i8*, i8** %185, align 8, !dbg !1336, !tbaa !871
  %187 = icmp ult i8* %184, %186, !dbg !1336
  br i1 %187, label %191, label %188, !dbg !1336, !prof !872

; <label>:188:                                    ; preds = %181
  %189 = and i32 %87, 255, !dbg !1336
  %190 = tail call i32 @__overflow(%struct._IO_FILE* %182, i32 %189) #11, !dbg !1336
  br label %266, !dbg !1336

; <label>:191:                                    ; preds = %181
  %192 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !1336
  store i8* %192, i8** %183, align 8, !dbg !1336, !tbaa !866
  store i8 %4, i8* %184, align 1, !dbg !1336, !tbaa !844
  br label %266, !dbg !1336

; <label>:193:                                    ; preds = %86
  switch i8 %4, label %238 [
    i8 117, label %194
    i8 85, label %194
  ], !dbg !1337

; <label>:194:                                    ; preds = %193, %193
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !1248, metadata !700), !dbg !1338
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1254, metadata !700), !dbg !1339
  %195 = icmp eq i8 %4, 117, !dbg !1340
  %196 = select i1 %195, i32 4, i32 8, !dbg !1342
  tail call void @llvm.dbg.value(metadata i32 %196, i64 0, metadata !1247, metadata !700), !dbg !1263
  %197 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1343
  tail call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1254, metadata !700), !dbg !1339
  tail call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 %196, i64 0, metadata !1247, metadata !700), !dbg !1263
  %198 = tail call i16** @__ctype_b_loc() #17, !dbg !1344
  %199 = load i16*, i16** %198, align 8, !tbaa !707
  br label %200, !dbg !1348

; <label>:200:                                    ; preds = %194, %221
  %201 = phi i32 [ 0, %194 ], [ %224, %221 ]
  %202 = phi i8* [ %197, %194 ], [ %226, %221 ]
  %203 = phi i32 [ %196, %194 ], [ %225, %221 ]
  tail call void @llvm.dbg.value(metadata i32 %203, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i8* %202, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 %201, i64 0, metadata !1254, metadata !700), !dbg !1339
  %204 = load i8, i8* %202, align 1, !dbg !1344, !tbaa !844
  %205 = zext i8 %204 to i64, !dbg !1344
  %206 = getelementptr inbounds i16, i16* %199, i64 %205, !dbg !1344
  %207 = load i16, i16* %206, align 2, !dbg !1344, !tbaa !1269
  %208 = and i16 %207, 4096, !dbg !1344
  %209 = icmp eq i16 %208, 0, !dbg !1344
  br i1 %209, label %210, label %212, !dbg !1349

; <label>:210:                                    ; preds = %200
  %211 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !1350
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %211) #11, !dbg !1350
  unreachable, !dbg !1350

; <label>:212:                                    ; preds = %200
  %213 = shl i32 %201, 4, !dbg !1351
  %214 = sext i8 %204 to i32, !dbg !1352
  %215 = add i8 %204, -97, !dbg !1352
  %216 = icmp ult i8 %215, 6, !dbg !1352
  br i1 %216, label %221, label %217, !dbg !1352

; <label>:217:                                    ; preds = %212
  %218 = add i8 %204, -65, !dbg !1352
  %219 = icmp ult i8 %218, 6, !dbg !1352
  %220 = select i1 %219, i32 -55, i32 -48, !dbg !1352
  br label %221, !dbg !1352

; <label>:221:                                    ; preds = %212, %217
  %222 = phi i32 [ %220, %217 ], [ -87, %212 ]
  %223 = add i32 %213, %214, !dbg !1352
  %224 = add i32 %223, %222, !dbg !1353
  tail call void @llvm.dbg.value(metadata i32 %224, i64 0, metadata !1254, metadata !700), !dbg !1339
  %225 = add nsw i32 %203, -1, !dbg !1354
  tail call void @llvm.dbg.value(metadata i32 %225, i64 0, metadata !1247, metadata !700), !dbg !1263
  %226 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !1355
  tail call void @llvm.dbg.value(metadata i8* %226, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 %224, i64 0, metadata !1254, metadata !700), !dbg !1339
  tail call void @llvm.dbg.value(metadata i8* %226, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 %225, i64 0, metadata !1247, metadata !700), !dbg !1263
  %227 = icmp sgt i32 %203, 1, !dbg !1356
  br i1 %227, label %200, label %228, !dbg !1348, !llvm.loop !1357

; <label>:228:                                    ; preds = %221
  %229 = icmp ult i32 %224, 160, !dbg !1359
  br i1 %229, label %230, label %231, !dbg !1361

; <label>:230:                                    ; preds = %228
  switch i32 %224, label %234 [
    i32 96, label %231
    i32 64, label %231
    i32 36, label %231
  ], !dbg !1361

; <label>:231:                                    ; preds = %230, %230, %230, %228
  %232 = and i32 %224, -2048, !dbg !1362
  %233 = icmp eq i32 %232, 55296, !dbg !1362
  br i1 %233, label %234, label %236, !dbg !1362

; <label>:234:                                    ; preds = %230, %231
  %235 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0), i32 5) #11, !dbg !1363
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %235, i32 %87, i32 %196, i32 %224) #11, !dbg !1363
  unreachable, !dbg !1363

; <label>:236:                                    ; preds = %231
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1364, !tbaa !707
  tail call void @print_unicode_char(%struct._IO_FILE* %237, i32 %224, i32 0) #11, !dbg !1365
  br label %266, !dbg !1366

; <label>:238:                                    ; preds = %84, %193
  tail call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !856, metadata !700) #11, !dbg !1367
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1370, !tbaa !707
  %240 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %239, i64 0, i32 5, !dbg !1370
  %241 = load i8*, i8** %240, align 8, !dbg !1370, !tbaa !866
  %242 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %239, i64 0, i32 6, !dbg !1370
  %243 = load i8*, i8** %242, align 8, !dbg !1370, !tbaa !871
  %244 = icmp ult i8* %241, %243, !dbg !1370
  br i1 %244, label %247, label %245, !dbg !1370, !prof !872

; <label>:245:                                    ; preds = %238
  %246 = tail call i32 @__overflow(%struct._IO_FILE* %239, i32 92) #11, !dbg !1370
  br label %249, !dbg !1370

; <label>:247:                                    ; preds = %238
  %248 = getelementptr inbounds i8, i8* %241, i64 1, !dbg !1370
  store i8* %248, i8** %240, align 8, !dbg !1370, !tbaa !866
  store i8 92, i8* %241, align 1, !dbg !1370, !tbaa !844
  br label %249, !dbg !1370

; <label>:249:                                    ; preds = %245, %247
  %250 = load i8, i8* %3, align 1, !dbg !1371, !tbaa !844
  %251 = icmp eq i8 %250, 0, !dbg !1371
  br i1 %251, label %266, label %252, !dbg !1373

; <label>:252:                                    ; preds = %249
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1374, !tbaa !707
  %254 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %253, i64 0, i32 5, !dbg !1374
  %255 = load i8*, i8** %254, align 8, !dbg !1374, !tbaa !866
  %256 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %253, i64 0, i32 6, !dbg !1374
  %257 = load i8*, i8** %256, align 8, !dbg !1374, !tbaa !871
  %258 = icmp ult i8* %255, %257, !dbg !1374
  br i1 %258, label %262, label %259, !dbg !1374, !prof !872

; <label>:259:                                    ; preds = %252
  %260 = zext i8 %250 to i32, !dbg !1377
  %261 = tail call i32 @__overflow(%struct._IO_FILE* %253, i32 %260) #11, !dbg !1374
  br label %264, !dbg !1374

; <label>:262:                                    ; preds = %252
  %263 = getelementptr inbounds i8, i8* %255, i64 1, !dbg !1374
  store i8* %263, i8** %254, align 8, !dbg !1374, !tbaa !866
  store i8 %250, i8* %255, align 1, !dbg !1374, !tbaa !844
  br label %264, !dbg !1374

; <label>:264:                                    ; preds = %259, %262
  %265 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1378
  tail call void @llvm.dbg.value(metadata i8* %265, i64 0, metadata !1245, metadata !700), !dbg !1258
  br label %266, !dbg !1379

; <label>:266:                                    ; preds = %191, %188, %179, %177, %168, %166, %157, %155, %146, %144, %135, %133, %124, %122, %112, %110, %101, %99, %81, %78, %48, %45, %249, %236, %264
  %267 = phi i8* [ %226, %236 ], [ %265, %264 ], [ %3, %249 ], [ %38, %45 ], [ %38, %48 ], [ %71, %78 ], [ %71, %81 ], [ %91, %99 ], [ %91, %101 ], [ %91, %110 ], [ %91, %112 ], [ %91, %122 ], [ %91, %124 ], [ %91, %133 ], [ %91, %135 ], [ %91, %144 ], [ %91, %146 ], [ %91, %155 ], [ %91, %157 ], [ %91, %166 ], [ %91, %168 ], [ %91, %177 ], [ %91, %179 ], [ %91, %188 ], [ %91, %191 ]
  tail call void @llvm.dbg.value(metadata i8* %267, i64 0, metadata !1245, metadata !700), !dbg !1258
  %268 = ptrtoint i8* %267 to i64, !dbg !1380
  %269 = ptrtoint i8* %0 to i64, !dbg !1380
  %270 = sub i64 4294967295, %269, !dbg !1380
  %271 = add i64 %270, %268, !dbg !1381
  %272 = trunc i64 %271 to i32, !dbg !1382
  ret i32 %272, !dbg !1383

; <label>:273:                                    ; preds = %24
  %274 = shl nsw i32 %26, 4, !dbg !1384
  %275 = sext i8 %28 to i32, !dbg !1272
  %276 = add i8 %28, -97, !dbg !1272
  %277 = icmp ult i8 %276, 6, !dbg !1272
  br i1 %277, label %282, label %278, !dbg !1272

; <label>:278:                                    ; preds = %273
  %279 = add i8 %28, -65, !dbg !1272
  %280 = icmp ult i8 %279, 6, !dbg !1272
  %281 = select i1 %280, i32 -55, i32 -48, !dbg !1272
  br label %282, !dbg !1272

; <label>:282:                                    ; preds = %278, %273
  %283 = phi i32 [ %281, %278 ], [ -87, %273 ]
  %284 = add nsw i32 %274, %275, !dbg !1272
  %285 = add nsw i32 %284, %283, !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1247, metadata !700), !dbg !1263
  %286 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1274
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !1246, metadata !700), !dbg !1259
  br label %36, !dbg !1279

; <label>:287:                                    ; preds = %62
  %288 = shl nsw i32 %64, 3, !dbg !1385
  %289 = sext i8 %66 to i32, !dbg !1289
  %290 = add nsw i32 %288, -48, !dbg !1289
  %291 = add nsw i32 %290, %289, !dbg !1290
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1247, metadata !700), !dbg !1263
  %292 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !1291
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1245, metadata !700), !dbg !1258
  %293 = load i8, i8* %292, align 1, !dbg !1286, !tbaa !844
  %294 = and i8 %293, -8, !dbg !1286
  %295 = icmp eq i8 %294, 48, !dbg !1286
  br i1 %295, label %296, label %69, !dbg !1288

; <label>:296:                                    ; preds = %287
  %297 = shl nsw i32 %291, 3, !dbg !1385
  %298 = sext i8 %293 to i32, !dbg !1289
  %299 = add nsw i32 %297, -48, !dbg !1289
  %300 = add i32 %299, %298, !dbg !1290
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1246, metadata !700), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1247, metadata !700), !dbg !1263
  %301 = getelementptr inbounds i8, i8* %292, i64 1, !dbg !1291
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1245, metadata !700), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1247, metadata !700), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1246, metadata !700), !dbg !1259
  br label %69
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vstrtoimax(i8*) unnamed_addr #6 !dbg !1386 {
  %2 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1390, metadata !700), !dbg !1396
  %3 = bitcast i8** %2 to i8*, !dbg !1396
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1396
  %4 = load i8, i8* %0, align 1, !dbg !1397, !tbaa !844
  switch i8 %4, label %19 [
    i8 34, label %5
    i8 39, label %5
  ], !dbg !1397

; <label>:5:                                      ; preds = %1, %1
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1397
  %7 = load i8, i8* %6, align 1, !dbg !1397, !tbaa !844
  %8 = icmp eq i8 %7, 0, !dbg !1397
  br i1 %8, label %19, label %9, !dbg !1396

; <label>:9:                                      ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1390, metadata !700), !dbg !1396
  tail call void @llvm.dbg.value(metadata i8 %7, i64 0, metadata !1393, metadata !700), !dbg !1398
  %10 = zext i8 %7 to i64, !dbg !1398
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1392, metadata !700), !dbg !1396
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1399
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1390, metadata !700), !dbg !1396
  %12 = load i8, i8* %11, align 1, !dbg !1399, !tbaa !844
  %13 = icmp ne i8 %12, 0, !dbg !1399
  %14 = load i8, i8* @posixly_correct, align 1, !dbg !1399
  %15 = icmp eq i8 %14, 0, !dbg !1399
  %16 = and i1 %13, %15, !dbg !1399
  br i1 %16, label %17, label %23, !dbg !1399

; <label>:17:                                     ; preds = %9
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !1399
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %18, i8* %11) #11, !dbg !1399
  br label %23, !dbg !1399

; <label>:19:                                     ; preds = %1, %5
  %20 = tail call i32* @__errno_location() #17, !dbg !1401
  store i32 0, i32* %20, align 4, !dbg !1401, !tbaa !1137
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1391, metadata !700), !dbg !1396
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1403, metadata !700) #11, !dbg !1410
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1408, metadata !700) #11, !dbg !1410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1409, metadata !700) #11, !dbg !1410
  %21 = call i64 @__strtol_internal(i8* nonnull %0, i8** nonnull %2, i32 0, i32 0) #11, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1392, metadata !700), !dbg !1396
  %22 = load i8*, i8** %2, align 8, !dbg !1401, !tbaa !707
  call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1391, metadata !700), !dbg !1396
  call fastcc void @verify_numeric(i8* nonnull %0, i8* %22), !dbg !1401
  br label %23

; <label>:23:                                     ; preds = %17, %9, %19
  %24 = phi i64 [ %21, %19 ], [ %10, %9 ], [ %10, %17 ]
  call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1392, metadata !700), !dbg !1396
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1396
  ret i64 %24, !dbg !1396
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @verify_numeric(i8*, i8* readonly) unnamed_addr #6 !dbg !1413 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1417, metadata !700), !dbg !1419
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1418, metadata !700), !dbg !1420
  %3 = tail call i32* @__errno_location() #17, !dbg !1421
  %4 = load i32, i32* %3, align 4, !dbg !1421, !tbaa !1137
  %5 = icmp eq i32 %4, 0, !dbg !1421
  br i1 %5, label %8, label %6, !dbg !1423

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @quote(i8* %0) #11, !dbg !1424
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* %7) #11, !dbg !1426
  br label %19, !dbg !1427

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* %1, align 1, !dbg !1428, !tbaa !844
  %10 = icmp eq i8 %9, 0, !dbg !1428
  br i1 %10, label %20, label %11, !dbg !1430

; <label>:11:                                     ; preds = %8
  %12 = icmp eq i8* %0, %1, !dbg !1431
  br i1 %12, label %13, label %16, !dbg !1434

; <label>:13:                                     ; preds = %11
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1435
  %15 = tail call i8* @quote(i8* %0) #11, !dbg !1436
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %14, i8* %15) #11, !dbg !1437
  br label %19, !dbg !1437

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1438
  %18 = tail call i8* @quote(i8* %0) #11, !dbg !1439
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* %18) #11, !dbg !1440
  br label %19

; <label>:19:                                     ; preds = %13, %16, %6
  store i1 true, i1* @exit_status, align 4
  br label %20, !dbg !1441

; <label>:20:                                     ; preds = %8, %19
  ret void, !dbg !1441
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #9

; Function Attrs: nounwind sspstrong uwtable
define x86_fp80 @c_strtold(i8*, i8**) local_unnamed_addr #6 !dbg !1442 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1446, metadata !700), !dbg !1450
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1447, metadata !700), !dbg !1451
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1452, !tbaa !707
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !1452
  br i1 %4, label %5, label %7, !dbg !1458

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), %struct.__locale_struct* null) #11, !dbg !1459
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1460, !tbaa !707
  br label %7, !dbg !1461

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1462, !tbaa !707
  tail call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, i64 0, metadata !1449, metadata !700), !dbg !1463
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !1464
  br i1 %9, label %10, label %13, !dbg !1466

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !1467
  br i1 %11, label %15, label %12, !dbg !1470

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !1471, !tbaa !707
  br label %15, !dbg !1472

; <label>:13:                                     ; preds = %7
  %14 = tail call x86_fp80 @strtold_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #11, !dbg !1473
  tail call void @llvm.dbg.value(metadata x86_fp80 %14, i64 0, metadata !1448, metadata !700), !dbg !1474
  br label %15, !dbg !1475

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi x86_fp80 [ %14, %13 ], [ 0xK00000000000000000000, %10 ], [ 0xK00000000000000000000, %12 ]
  ret x86_fp80 %16, !dbg !1476
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare x86_fp80 @strtold_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1477 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1479, metadata !700), !dbg !1480
  store i8* %0, i8** @file_name, align 8, !dbg !1481, !tbaa !707
  ret void, !dbg !1482
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1483 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1487, metadata !700), !dbg !1488
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1489, !tbaa !796
  ret void, !dbg !1490
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1491 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1498, !tbaa !707
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1499
  %3 = icmp eq i32 %2, 0, !dbg !1500
  br i1 %3, label %21, label %4, !dbg !1501

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1502, !tbaa !796, !range !1503
  %6 = icmp eq i8 %5, 0, !dbg !1502
  %7 = tail call i32* @__errno_location() #17, !dbg !1504
  br i1 %6, label %11, label %8, !dbg !1506

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1507, !tbaa !1137
  %10 = icmp eq i32 %9, 32, !dbg !1508
  br i1 %10, label %21, label %11, !dbg !1509

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !1510
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1495, metadata !700), !dbg !1511
  %13 = load i8*, i8** @file_name, align 8, !dbg !1512, !tbaa !707
  %14 = icmp eq i8* %13, null, !dbg !1512
  %15 = load i32, i32* %7, align 4, !tbaa !1137
  br i1 %14, label %18, label %16, !dbg !1513

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1514
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.29, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1515
  br label %19, !dbg !1515

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.30, i64 0, i64 0), i8* %12) #11, !dbg !1516
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1517, !tbaa !1137
  tail call void @_exit(i32 %20) #15, !dbg !1518
  unreachable, !dbg !1518

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1519, !tbaa !707
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1521
  %24 = icmp eq i32 %23, 0, !dbg !1522
  br i1 %24, label %27, label %25, !dbg !1523

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1524, !tbaa !1137
  tail call void @_exit(i32 %26) #15, !dbg !1525
  unreachable, !dbg !1525

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1526
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1527 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1529, metadata !700), !dbg !1532
  %2 = icmp eq i8* %0, null, !dbg !1533
  br i1 %2, label %3, label %6, !dbg !1535

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1536, !tbaa !707
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1538
  tail call void @abort() #15, !dbg !1539
  unreachable, !dbg !1539

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #9, !dbg !1540
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1530, metadata !700), !dbg !1541
  %8 = icmp eq i8* %7, null, !dbg !1542
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1543
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1544
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1531, metadata !700), !dbg !1545
  %11 = ptrtoint i8* %10 to i64, !dbg !1546
  %12 = ptrtoint i8* %0 to i64, !dbg !1546
  %13 = sub i64 %11, %12, !dbg !1546
  %14 = icmp sgt i64 %13, 6, !dbg !1548
  br i1 %14, label %15, label %24, !dbg !1549

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1550
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.50, i64 0, i64 0), i64 7) #9, !dbg !1551
  %18 = icmp eq i32 %17, 0, !dbg !1552
  br i1 %18, label %19, label %24, !dbg !1553

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1529, metadata !700), !dbg !1532
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i64 3) #9, !dbg !1554
  %21 = icmp eq i32 %20, 0, !dbg !1557
  br i1 %21, label %22, label %24, !dbg !1558

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1559
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1529, metadata !700), !dbg !1532
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1561, !tbaa !707
  br label %24, !dbg !1562

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1529, metadata !700), !dbg !1532
  store i8* %25, i8** @program_name, align 8, !dbg !1563, !tbaa !707
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1564, !tbaa !707
  ret void, !dbg !1565
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1566 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1571, metadata !700), !dbg !1574
  %2 = tail call i32* @__errno_location() #17, !dbg !1575
  %3 = load i32, i32* %2, align 4, !dbg !1575, !tbaa !1137
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1572, metadata !700), !dbg !1576
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1577
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1577
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1577
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1578
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1578
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1573, metadata !700), !dbg !1579
  store i32 %3, i32* %2, align 4, !dbg !1580, !tbaa !1137
  ret %struct.quoting_options* %8, !dbg !1581
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1582 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1588, metadata !700), !dbg !1589
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1590
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1590
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1591
  %5 = load i32, i32* %4, align 8, !dbg !1591, !tbaa !1592
  ret i32 %5, !dbg !1594
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1595 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1599, metadata !700), !dbg !1601
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1600, metadata !700), !dbg !1602
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1603
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1603
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1604
  store i32 %1, i32* %5, align 8, !dbg !1605, !tbaa !1592
  ret void, !dbg !1606
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1607 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1611, metadata !700), !dbg !1619
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1612, metadata !700), !dbg !1620
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1613, metadata !700), !dbg !1621
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1614, metadata !700), !dbg !1622
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1623
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1623
  %6 = lshr i8 %1, 5, !dbg !1624
  %7 = zext i8 %6 to i64, !dbg !1624
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1625
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1615, metadata !700), !dbg !1626
  %9 = and i8 %1, 31, !dbg !1627
  %10 = zext i8 %9 to i32, !dbg !1628
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1617, metadata !700), !dbg !1629
  %11 = load i32, i32* %8, align 4, !dbg !1630, !tbaa !1137
  %12 = lshr i32 %11, %10, !dbg !1631
  %13 = and i32 %12, 1, !dbg !1632
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1618, metadata !700), !dbg !1633
  %14 = and i32 %2, 1, !dbg !1634
  %15 = xor i32 %13, %14, !dbg !1635
  %16 = shl i32 %15, %10, !dbg !1636
  %17 = xor i32 %16, %11, !dbg !1637
  store i32 %17, i32* %8, align 4, !dbg !1637, !tbaa !1137
  ret i32 %13, !dbg !1638
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1639 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1643, metadata !700), !dbg !1646
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1644, metadata !700), !dbg !1647
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1643, metadata !700), !dbg !1646
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1650
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1643, metadata !700), !dbg !1646
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1651
  %6 = load i32, i32* %5, align 4, !dbg !1651, !tbaa !1652
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1645, metadata !700), !dbg !1653
  store i32 %1, i32* %5, align 4, !dbg !1654, !tbaa !1652
  ret i32 %6, !dbg !1655
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1656 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1660, metadata !700), !dbg !1663
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1661, metadata !700), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1662, metadata !700), !dbg !1665
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1666
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1660, metadata !700), !dbg !1663
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1668
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1660, metadata !700), !dbg !1663
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1669
  store i32 10, i32* %6, align 8, !dbg !1670, !tbaa !1592
  %7 = icmp ne i8* %1, null, !dbg !1671
  %8 = icmp ne i8* %2, null, !dbg !1673
  %9 = and i1 %7, %8, !dbg !1674
  br i1 %9, label %11, label %10, !dbg !1674

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1675
  unreachable, !dbg !1675

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1676
  store i8* %1, i8** %12, align 8, !dbg !1677, !tbaa !1678
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1679
  store i8* %2, i8** %13, align 8, !dbg !1680, !tbaa !1681
  ret void, !dbg !1682
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1683 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1687, metadata !700), !dbg !1695
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1688, metadata !700), !dbg !1696
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1689, metadata !700), !dbg !1697
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1690, metadata !700), !dbg !1698
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1691, metadata !700), !dbg !1699
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1700
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1692, metadata !700), !dbg !1701
  %8 = tail call i32* @__errno_location() #17, !dbg !1702
  %9 = load i32, i32* %8, align 4, !dbg !1702, !tbaa !1137
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1693, metadata !700), !dbg !1703
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1704
  %11 = load i32, i32* %10, align 8, !dbg !1704, !tbaa !1592
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1705
  %13 = load i32, i32* %12, align 4, !dbg !1705, !tbaa !1652
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1706
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1707
  %16 = load i8*, i8** %15, align 8, !dbg !1707, !tbaa !1678
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1708
  %18 = load i8*, i8** %17, align 8, !dbg !1708, !tbaa !1681
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1709
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1694, metadata !700), !dbg !1710
  store i32 %9, i32* %8, align 4, !dbg !1711, !tbaa !1137
  ret i64 %19, !dbg !1712
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1713 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1719, metadata !700), !dbg !1783
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1720, metadata !700), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1721, metadata !700), !dbg !1785
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1722, metadata !700), !dbg !1786
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1723, metadata !700), !dbg !1787
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1724, metadata !700), !dbg !1788
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1725, metadata !700), !dbg !1789
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1726, metadata !700), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1727, metadata !700), !dbg !1791
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1729, metadata !700), !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1730, metadata !700), !dbg !1793
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1731, metadata !700), !dbg !1794
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1732, metadata !700), !dbg !1795
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1733, metadata !700), !dbg !1796
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1797
  %14 = icmp eq i64 %13, 1, !dbg !1798
  %15 = lshr i32 %5, 1, !dbg !1799
  %16 = trunc i32 %15 to i8, !dbg !1799
  %17 = and i8 %16, 1, !dbg !1799
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1735, metadata !700), !dbg !1799
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1736, metadata !700), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1737, metadata !700), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1738, metadata !700), !dbg !1802
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1803

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1720, metadata !700), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1738, metadata !700), !dbg !1802
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1737, metadata !700), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1735, metadata !700), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1722, metadata !700), !dbg !1786
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1733, metadata !700), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1732, metadata !700), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1731, metadata !700), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1730, metadata !700), !dbg !1793
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1727, metadata !700), !dbg !1791
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1726, metadata !700), !dbg !1790
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1723, metadata !700), !dbg !1787
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
  ], !dbg !1804

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1723, metadata !700), !dbg !1787
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1735, metadata !700), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1735, metadata !700), !dbg !1799
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1723, metadata !700), !dbg !1787
  br label %94, !dbg !1805

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1735, metadata !700), !dbg !1799
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1723, metadata !700), !dbg !1787
  %43 = and i8 %36, 1, !dbg !1807
  %44 = icmp eq i8 %43, 0, !dbg !1807
  br i1 %44, label %45, label %94, !dbg !1805

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1809
  br i1 %46, label %94, label %47, !dbg !1812

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1809, !tbaa !844
  br label %94, !dbg !1809

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.62, i64 0, i64 0), i32 %28), !dbg !1813
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1726, metadata !700), !dbg !1790
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i32 %28), !dbg !1817
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1727, metadata !700), !dbg !1791
  br label %51, !dbg !1818

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1727, metadata !700), !dbg !1791
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1726, metadata !700), !dbg !1790
  %54 = and i8 %36, 1, !dbg !1819
  %55 = icmp eq i8 %54, 0, !dbg !1819
  br i1 %55, label %56, label %72, !dbg !1821

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1731, metadata !700), !dbg !1794
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1731, metadata !700), !dbg !1794
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1729, metadata !700), !dbg !1792
  %57 = load i8, i8* %52, align 1, !dbg !1822, !tbaa !844
  %58 = icmp eq i8 %57, 0, !dbg !1825
  br i1 %58, label %72, label %59, !dbg !1825

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1826

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1731, metadata !700), !dbg !1794
  %64 = icmp ult i64 %63, %40, !dbg !1826
  br i1 %64, label %65, label %67, !dbg !1829

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1826
  store i8 %61, i8* %66, align 1, !dbg !1826, !tbaa !844
  br label %67, !dbg !1826

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1729, metadata !700), !dbg !1792
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1830
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1731, metadata !700), !dbg !1794
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1731, metadata !700), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1729, metadata !700), !dbg !1792
  %70 = load i8, i8* %69, align 1, !dbg !1822, !tbaa !844
  %71 = icmp eq i8 %70, 0, !dbg !1825
  br i1 %71, label %72, label %60, !dbg !1825, !llvm.loop !1831

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1733, metadata !700), !dbg !1796
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1731, metadata !700), !dbg !1794
  %74 = call i64 @strlen(i8* %53) #9, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1732, metadata !700), !dbg !1795
  br label %94, !dbg !1834

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1733, metadata !700), !dbg !1796
  br label %76, !dbg !1835

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1733, metadata !700), !dbg !1796
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1735, metadata !700), !dbg !1799
  br label %78, !dbg !1836

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1735, metadata !700), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1733, metadata !700), !dbg !1796
  %81 = and i8 %80, 1, !dbg !1837
  %82 = icmp eq i8 %81, 0, !dbg !1837
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1733, metadata !700), !dbg !1796
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1839
  br label %84, !dbg !1839

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1735, metadata !700), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1733, metadata !700), !dbg !1796
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1723, metadata !700), !dbg !1787
  %87 = and i8 %86, 1, !dbg !1840
  %88 = icmp eq i8 %87, 0, !dbg !1840
  br i1 %88, label %89, label %94, !dbg !1842

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1843
  br i1 %90, label %94, label %91, !dbg !1846

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1843, !tbaa !844
  br label %94, !dbg !1843

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1735, metadata !700), !dbg !1799
  br label %94, !dbg !1847

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1848
  unreachable, !dbg !1848

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1735, metadata !700), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1733, metadata !700), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1732, metadata !700), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1731, metadata !700), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1727, metadata !700), !dbg !1791
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1726, metadata !700), !dbg !1790
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1723, metadata !700), !dbg !1787
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1728, metadata !700), !dbg !1849
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
  br label %122, !dbg !1850

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1720, metadata !700), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1738, metadata !700), !dbg !1802
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1737, metadata !700), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1722, metadata !700), !dbg !1786
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1730, metadata !700), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1728, metadata !700), !dbg !1849
  %131 = icmp eq i64 %126, -1, !dbg !1851
  br i1 %131, label %134, label %132, !dbg !1852

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1853
  br i1 %133, label %590, label %138, !dbg !1854

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1855
  %136 = load i8, i8* %135, align 1, !dbg !1855, !tbaa !844
  %137 = icmp eq i8 %136, 0, !dbg !1856
  br i1 %137, label %590, label %138, !dbg !1854

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1744, metadata !700), !dbg !1857
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1745, metadata !700), !dbg !1858
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1746, metadata !700), !dbg !1859
  br i1 %108, label %139, label %154, !dbg !1860

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1862
  %141 = and i1 %109, %131, !dbg !1863
  br i1 %141, label %142, label %144, !dbg !1863

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #9, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1722, metadata !700), !dbg !1786
  br label %144, !dbg !1865

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1722, metadata !700), !dbg !1786
  %146 = icmp ugt i64 %140, %145, !dbg !1866
  br i1 %146, label %154, label %147, !dbg !1867

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1868
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #9, !dbg !1869
  %150 = icmp ne i32 %149, 0, !dbg !1870
  %151 = or i1 %150, %111, !dbg !1871
  %152 = xor i1 %150, true, !dbg !1871
  %153 = zext i1 %152 to i8, !dbg !1871
  br i1 %151, label %154, label %635, !dbg !1871

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1744, metadata !700), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1722, metadata !700), !dbg !1786
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1872
  %158 = load i8, i8* %157, align 1, !dbg !1872, !tbaa !844
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1739, metadata !700), !dbg !1873
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
  ], !dbg !1874

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1875

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1876

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1745, metadata !700), !dbg !1858
  %162 = and i8 %127, 1, !dbg !1880
  %163 = icmp eq i8 %162, 0, !dbg !1880
  %164 = and i1 %113, %163, !dbg !1880
  br i1 %164, label %165, label %181, !dbg !1880

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1882
  br i1 %166, label %167, label %169, !dbg !1886

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1882
  store i8 39, i8* %168, align 1, !dbg !1882, !tbaa !844
  br label %169, !dbg !1882

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1729, metadata !700), !dbg !1792
  %171 = icmp ult i64 %170, %130, !dbg !1887
  br i1 %171, label %172, label %174, !dbg !1890

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1887
  store i8 36, i8* %173, align 1, !dbg !1887, !tbaa !844
  br label %174, !dbg !1887

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1729, metadata !700), !dbg !1792
  %176 = icmp ult i64 %175, %130, !dbg !1891
  br i1 %176, label %177, label %179, !dbg !1894

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1891
  store i8 39, i8* %178, align 1, !dbg !1891, !tbaa !844
  br label %179, !dbg !1891

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1736, metadata !700), !dbg !1800
  br label %181, !dbg !1895

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1729, metadata !700), !dbg !1792
  %184 = icmp ult i64 %182, %130, !dbg !1896
  br i1 %184, label %185, label %187, !dbg !1899

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1896
  store i8 92, i8* %186, align 1, !dbg !1896, !tbaa !844
  br label %187, !dbg !1896

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1729, metadata !700), !dbg !1792
  br i1 %105, label %189, label %470, !dbg !1900

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1902
  %191 = icmp ult i64 %190, %155, !dbg !1903
  br i1 %191, label %192, label %470, !dbg !1904

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1905
  %194 = load i8, i8* %193, align 1, !dbg !1905, !tbaa !844
  %195 = add i8 %194, -48, !dbg !1906
  %196 = icmp ult i8 %195, 10, !dbg !1906
  br i1 %196, label %197, label %470, !dbg !1906

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1907
  br i1 %198, label %199, label %201, !dbg !1911

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1907
  store i8 48, i8* %200, align 1, !dbg !1907, !tbaa !844
  br label %201, !dbg !1907

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1729, metadata !700), !dbg !1792
  %203 = icmp ult i64 %202, %130, !dbg !1912
  br i1 %203, label %204, label %206, !dbg !1915

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1912
  store i8 48, i8* %205, align 1, !dbg !1912, !tbaa !844
  br label %206, !dbg !1912

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1729, metadata !700), !dbg !1792
  br label %470, !dbg !1916

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1917

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1918

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1919

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1921

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1923
  %214 = icmp ult i64 %213, %155, !dbg !1924
  br i1 %214, label %215, label %470, !dbg !1925

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1926
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1927
  %218 = load i8, i8* %217, align 1, !dbg !1927, !tbaa !844
  %219 = icmp eq i8 %218, 63, !dbg !1928
  br i1 %219, label %220, label %470, !dbg !1929

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1930
  %222 = load i8, i8* %221, align 1, !dbg !1930, !tbaa !844
  %223 = sext i8 %222 to i32, !dbg !1930
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
  ], !dbg !1931

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1932

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1739, metadata !700), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1728, metadata !700), !dbg !1849
  %226 = icmp ult i64 %124, %130, !dbg !1934
  br i1 %226, label %227, label %229, !dbg !1937

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1934
  store i8 63, i8* %228, align 1, !dbg !1934, !tbaa !844
  br label %229, !dbg !1934

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1729, metadata !700), !dbg !1792
  %231 = icmp ult i64 %230, %130, !dbg !1938
  br i1 %231, label %232, label %234, !dbg !1941

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1938
  store i8 34, i8* %233, align 1, !dbg !1938, !tbaa !844
  br label %234, !dbg !1938

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1729, metadata !700), !dbg !1792
  %236 = icmp ult i64 %235, %130, !dbg !1942
  br i1 %236, label %237, label %239, !dbg !1945

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1942
  store i8 34, i8* %238, align 1, !dbg !1942, !tbaa !844
  br label %239, !dbg !1942

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1729, metadata !700), !dbg !1792
  %241 = icmp ult i64 %240, %130, !dbg !1946
  br i1 %241, label %242, label %244, !dbg !1949

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1946
  store i8 63, i8* %243, align 1, !dbg !1946, !tbaa !844
  br label %244, !dbg !1946

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1729, metadata !700), !dbg !1792
  br label %470, !dbg !1950

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1743, metadata !700), !dbg !1951
  br label %256, !dbg !1952

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1743, metadata !700), !dbg !1951
  br label %256, !dbg !1953

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1743, metadata !700), !dbg !1951
  br label %254, !dbg !1954

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1743, metadata !700), !dbg !1951
  br label %254, !dbg !1955

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1743, metadata !700), !dbg !1951
  br label %256, !dbg !1956

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1743, metadata !700), !dbg !1951
  br i1 %113, label %252, label %253, !dbg !1957

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1958

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1961

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1743, metadata !700), !dbg !1951
  br i1 %117, label %256, label %635, !dbg !1963

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1743, metadata !700), !dbg !1951
  br i1 %104, label %497, label %470, !dbg !1965

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1966
  br i1 %259, label %260, label %265, !dbg !1968

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1969, !tbaa !844
  %262 = icmp ne i8 %261, 0, !dbg !1970
  %263 = icmp ne i64 %123, 0, !dbg !1971
  %264 = or i1 %263, %262, !dbg !1973
  br i1 %264, label %470, label %271, !dbg !1973

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1974
  %267 = icmp ne i64 %123, 0, !dbg !1971
  %268 = or i1 %267, %266, !dbg !1968
  br i1 %268, label %470, label %271, !dbg !1968

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1971
  br i1 %270, label %271, label %470, !dbg !1975

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1746, metadata !700), !dbg !1859
  br label %272, !dbg !1976

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1746, metadata !700), !dbg !1859
  br i1 %117, label %470, label %635, !dbg !1977

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1737, metadata !700), !dbg !1801
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1746, metadata !700), !dbg !1859
  br i1 %113, label %275, label %470, !dbg !1979

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1980

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1983
  %278 = icmp ne i64 %125, 0, !dbg !1985
  %279 = or i1 %278, %277, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1730, metadata !700), !dbg !1793
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1720, metadata !700), !dbg !1784
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1986
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1720, metadata !700), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1730, metadata !700), !dbg !1793
  %282 = icmp ult i64 %124, %281, !dbg !1987
  br i1 %282, label %283, label %285, !dbg !1990

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1987
  store i8 39, i8* %284, align 1, !dbg !1987, !tbaa !844
  br label %285, !dbg !1987

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1729, metadata !700), !dbg !1792
  %287 = icmp ult i64 %286, %281, !dbg !1991
  br i1 %287, label %288, label %290, !dbg !1994

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1991
  store i8 92, i8* %289, align 1, !dbg !1991, !tbaa !844
  br label %290, !dbg !1991

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1729, metadata !700), !dbg !1792
  %292 = icmp ult i64 %291, %281, !dbg !1995
  br i1 %292, label %293, label %295, !dbg !1998

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1995
  store i8 39, i8* %294, align 1, !dbg !1995, !tbaa !844
  br label %295, !dbg !1995

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1736, metadata !700), !dbg !1800
  br label %470, !dbg !1999

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2000

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1747, metadata !700), !dbg !2001
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !2002
  %300 = load i16*, i16** %299, align 8, !dbg !2002, !tbaa !707
  %301 = zext i8 %158 to i64, !dbg !2002
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2002
  %303 = load i16, i16* %302, align 2, !dbg !2002, !tbaa !1269
  %304 = lshr i16 %303, 14, !dbg !2004
  %305 = trunc i16 %304 to i8, !dbg !2004
  %306 = and i8 %305, 1, !dbg !2004
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1750, metadata !700), !dbg !2005
  br label %362, !dbg !2006

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2007
  store i64 0, i64* %10, align 8, !dbg !2008
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1747, metadata !700), !dbg !2001
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1750, metadata !700), !dbg !2005
  %308 = icmp eq i64 %155, -1, !dbg !2009
  br i1 %308, label %309, label %311, !dbg !2011

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #9, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1722, metadata !700), !dbg !1786
  br label %311, !dbg !2013

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1722, metadata !700), !dbg !1786
  br label %313, !dbg !2014, !llvm.loop !2015

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1750, metadata !700), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1747, metadata !700), !dbg !2001
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2017
  %316 = add i64 %314, %123, !dbg !2018
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2019
  %318 = sub i64 %312, %316, !dbg !2020
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1751, metadata !700), !dbg !2021
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1769, metadata !700), !dbg !2022
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1772, metadata !700), !dbg !2024
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2025

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1750, metadata !700), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1747, metadata !700), !dbg !2001
  %321 = icmp ugt i64 %312, %316, !dbg !2026
  br i1 %321, label %322, label %347, !dbg !2028

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2029

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1747, metadata !700), !dbg !2001
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2029
  %327 = load i8, i8* %326, align 1, !dbg !2029, !tbaa !844
  %328 = icmp eq i8 %327, 0, !dbg !2028
  br i1 %328, label %347, label %329, !dbg !2030

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1747, metadata !700), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1747, metadata !700), !dbg !2001
  %331 = add i64 %330, %123, !dbg !2032
  %332 = icmp ult i64 %331, %312, !dbg !2026
  br i1 %332, label %323, label %347, !dbg !2028, !llvm.loop !2033

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2034
  %335 = and i1 %115, %334, !dbg !2037
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1773, metadata !700), !dbg !2038
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1773, metadata !700), !dbg !2038
  br i1 %335, label %336, label %350, !dbg !2037

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2039

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1773, metadata !700), !dbg !2038
  %339 = add i64 %338, %316, !dbg !2039
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2040
  %341 = load i8, i8* %340, align 1, !dbg !2040, !tbaa !844
  %342 = sext i8 %341 to i32, !dbg !2040
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2041

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1773, metadata !700), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1773, metadata !700), !dbg !2038
  %345 = icmp ult i64 %344, %319, !dbg !2034
  br i1 %345, label %337, label %350, !dbg !2043, !llvm.loop !2044

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2046

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1750, metadata !700), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1747, metadata !700), !dbg !2001
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2046
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2047, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1769, metadata !700), !dbg !2022
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !2049
  %353 = icmp eq i32 %352, 0, !dbg !2049
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1750, metadata !700), !dbg !2005
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2050
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1750, metadata !700), !dbg !2005
  %355 = add i64 %319, %314, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1747, metadata !700), !dbg !2001
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1750, metadata !700), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1747, metadata !700), !dbg !2001
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2046
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1751, metadata !700), !dbg !2021
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #9, !dbg !2052
  %357 = icmp eq i32 %356, 0, !dbg !2053
  br i1 %357, label %313, label %358, !dbg !2054, !llvm.loop !2015

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2055
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1750, metadata !700), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1747, metadata !700), !dbg !2001
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2046
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2055
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1750, metadata !700), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1747, metadata !700), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1722, metadata !700), !dbg !1786
  %366 = and i8 %365, 1, !dbg !2056
  %367 = icmp ne i8 %366, 0, !dbg !2056
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1746, metadata !700), !dbg !1859
  %368 = icmp ult i64 %364, 2, !dbg !2057
  %369 = or i1 %367, %112, !dbg !2058
  %370 = and i1 %368, %369, !dbg !2059
  br i1 %370, label %470, label %371, !dbg !2059

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1780, metadata !700), !dbg !2061
  br label %373, !dbg !2062

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1745, metadata !700), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1744, metadata !700), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1739, metadata !700), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1728, metadata !700), !dbg !1849
  br i1 %369, label %426, label %380, !dbg !2063

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2068

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1745, metadata !700), !dbg !1858
  %382 = and i8 %376, 1, !dbg !2071
  %383 = icmp eq i8 %382, 0, !dbg !2071
  %384 = and i1 %113, %383, !dbg !2071
  br i1 %384, label %385, label %401, !dbg !2071

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2073
  br i1 %386, label %387, label %389, !dbg !2077

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2073
  store i8 39, i8* %388, align 1, !dbg !2073, !tbaa !844
  br label %389, !dbg !2073

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1729, metadata !700), !dbg !1792
  %391 = icmp ult i64 %390, %130, !dbg !2078
  br i1 %391, label %392, label %394, !dbg !2081

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2078
  store i8 36, i8* %393, align 1, !dbg !2078, !tbaa !844
  br label %394, !dbg !2078

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1729, metadata !700), !dbg !1792
  %396 = icmp ult i64 %395, %130, !dbg !2082
  br i1 %396, label %397, label %399, !dbg !2085

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2082
  store i8 39, i8* %398, align 1, !dbg !2082, !tbaa !844
  br label %399, !dbg !2082

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1736, metadata !700), !dbg !1800
  br label %401, !dbg !2086

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1729, metadata !700), !dbg !1792
  %404 = icmp ult i64 %402, %130, !dbg !2087
  br i1 %404, label %405, label %407, !dbg !2090

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2087
  store i8 92, i8* %406, align 1, !dbg !2087, !tbaa !844
  br label %407, !dbg !2087

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1729, metadata !700), !dbg !1792
  %409 = icmp ult i64 %408, %130, !dbg !2091
  br i1 %409, label %410, label %414, !dbg !2094

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2091
  %412 = or i8 %411, 48, !dbg !2091
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2091
  store i8 %412, i8* %413, align 1, !dbg !2091, !tbaa !844
  br label %414, !dbg !2091

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1729, metadata !700), !dbg !1792
  %416 = icmp ult i64 %415, %130, !dbg !2095
  br i1 %416, label %417, label %422, !dbg !2098

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2095
  %419 = and i8 %418, 7, !dbg !2095
  %420 = or i8 %419, 48, !dbg !2095
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2095
  store i8 %420, i8* %421, align 1, !dbg !2095, !tbaa !844
  br label %422, !dbg !2095

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1729, metadata !700), !dbg !1792
  %424 = and i8 %377, 7, !dbg !2099
  %425 = or i8 %424, 48, !dbg !2100
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1739, metadata !700), !dbg !1873
  br label %435, !dbg !2101

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2102
  %428 = icmp eq i8 %427, 0, !dbg !2102
  br i1 %428, label %435, label %429, !dbg !2104

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2105
  br i1 %430, label %431, label %433, !dbg !2109

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2105
  store i8 92, i8* %432, align 1, !dbg !2105, !tbaa !844
  br label %433, !dbg !2105

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1744, metadata !700), !dbg !1857
  br label %435, !dbg !2110

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1745, metadata !700), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1744, metadata !700), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1739, metadata !700), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1729, metadata !700), !dbg !1792
  %441 = add i64 %374, 1, !dbg !2111
  %442 = icmp ugt i64 %372, %441, !dbg !2113
  br i1 %442, label %443, label %535, !dbg !2114

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2115
  %445 = icmp ne i8 %444, 0, !dbg !2115
  %446 = and i8 %440, 1, !dbg !2115
  %447 = icmp eq i8 %446, 0, !dbg !2115
  %448 = and i1 %445, %447, !dbg !2115
  br i1 %448, label %449, label %460, !dbg !2115

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2118
  br i1 %450, label %451, label %453, !dbg !2122

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2118
  store i8 39, i8* %452, align 1, !dbg !2118, !tbaa !844
  br label %453, !dbg !2118

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1729, metadata !700), !dbg !1792
  %455 = icmp ult i64 %454, %130, !dbg !2123
  br i1 %455, label %456, label %458, !dbg !2126

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2123
  store i8 39, i8* %457, align 1, !dbg !2123, !tbaa !844
  br label %458, !dbg !2123

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1736, metadata !700), !dbg !1800
  br label %460, !dbg !2127

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1729, metadata !700), !dbg !1792
  %463 = icmp ult i64 %461, %130, !dbg !2128
  br i1 %463, label %464, label %466, !dbg !2131

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2128
  store i8 %438, i8* %465, align 1, !dbg !2128, !tbaa !844
  br label %466, !dbg !2128

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1728, metadata !700), !dbg !1849
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2132
  %469 = load i8, i8* %468, align 1, !dbg !2132, !tbaa !844
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1739, metadata !700), !dbg !1873
  br label %373, !dbg !2133, !llvm.loop !2134

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1720, metadata !700), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1746, metadata !700), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1745, metadata !700), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1744, metadata !700), !dbg !1857
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1739, metadata !700), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1737, metadata !700), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1722, metadata !700), !dbg !1786
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1730, metadata !700), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1728, metadata !700), !dbg !1849
  br i1 %106, label %482, label %481, !dbg !2137

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2139

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2140

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2141
  %485 = zext i8 %484 to i64, !dbg !2141
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2142
  %487 = load i32, i32* %486, align 4, !dbg !2142, !tbaa !1137
  %488 = and i8 %477, 31, !dbg !2143
  %489 = zext i8 %488 to i32, !dbg !2144
  %490 = shl i32 1, %489, !dbg !2145
  %491 = and i32 %487, %490, !dbg !2145
  %492 = icmp eq i32 %491, 0, !dbg !2145
  %493 = icmp eq i8 %156, 0, !dbg !2146
  %494 = and i1 %493, %492, !dbg !2147
  br i1 %494, label %535, label %497, !dbg !2147

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2146
  br i1 %496, label %535, label %497, !dbg !2148

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1720, metadata !700), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1746, metadata !700), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1739, metadata !700), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1737, metadata !700), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1722, metadata !700), !dbg !1786
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1730, metadata !700), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1728, metadata !700), !dbg !1849
  br i1 %111, label %507, label %635, !dbg !2149

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1745, metadata !700), !dbg !1858
  %508 = and i8 %502, 1, !dbg !2151
  %509 = icmp eq i8 %508, 0, !dbg !2151
  %510 = and i1 %113, %509, !dbg !2151
  br i1 %510, label %511, label %527, !dbg !2151

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2153
  br i1 %512, label %513, label %515, !dbg !2157

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2153
  store i8 39, i8* %514, align 1, !dbg !2153, !tbaa !844
  br label %515, !dbg !2153

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1729, metadata !700), !dbg !1792
  %517 = icmp ult i64 %516, %506, !dbg !2158
  br i1 %517, label %518, label %520, !dbg !2161

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2158
  store i8 36, i8* %519, align 1, !dbg !2158, !tbaa !844
  br label %520, !dbg !2158

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1729, metadata !700), !dbg !1792
  %522 = icmp ult i64 %521, %506, !dbg !2162
  br i1 %522, label %523, label %525, !dbg !2165

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2162
  store i8 39, i8* %524, align 1, !dbg !2162, !tbaa !844
  br label %525, !dbg !2162

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1736, metadata !700), !dbg !1800
  br label %527, !dbg !2166

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1729, metadata !700), !dbg !1792
  %530 = icmp ult i64 %528, %506, !dbg !2167
  br i1 %530, label %531, label %533, !dbg !2170

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2167
  store i8 92, i8* %532, align 1, !dbg !2167, !tbaa !844
  br label %533, !dbg !2167

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1720, metadata !700), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1746, metadata !700), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1745, metadata !700), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1739, metadata !700), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1737, metadata !700), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1722, metadata !700), !dbg !1786
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1730, metadata !700), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1728, metadata !700), !dbg !1849
  br label %562, !dbg !2171

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1720, metadata !700), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1746, metadata !700), !dbg !1859
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1745, metadata !700), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1739, metadata !700), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1737, metadata !700), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1722, metadata !700), !dbg !1786
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1730, metadata !700), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1728, metadata !700), !dbg !1849
  %546 = and i8 %540, 1, !dbg !2171
  %547 = icmp ne i8 %546, 0, !dbg !2171
  %548 = and i8 %543, 1, !dbg !2171
  %549 = icmp eq i8 %548, 0, !dbg !2171
  %550 = and i1 %547, %549, !dbg !2171
  br i1 %550, label %551, label %562, !dbg !2171

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2174
  br i1 %552, label %553, label %555, !dbg !2178

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2174
  store i8 39, i8* %554, align 1, !dbg !2174, !tbaa !844
  br label %555, !dbg !2174

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1729, metadata !700), !dbg !1792
  %557 = icmp ult i64 %556, %545, !dbg !2179
  br i1 %557, label %558, label %560, !dbg !2182

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2179
  store i8 39, i8* %559, align 1, !dbg !2179, !tbaa !844
  br label %560, !dbg !2179

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1736, metadata !700), !dbg !1800
  br label %562, !dbg !2183

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1729, metadata !700), !dbg !1792
  %572 = icmp ult i64 %570, %563, !dbg !2184
  br i1 %572, label %573, label %575, !dbg !2187

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2184
  store i8 %565, i8* %574, align 1, !dbg !2184, !tbaa !844
  br label %575, !dbg !2184

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1729, metadata !700), !dbg !1792
  %577 = and i8 %564, 1, !dbg !2188
  %578 = icmp eq i8 %577, 0, !dbg !2188
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1738, metadata !700), !dbg !1802
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2190
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1738, metadata !700), !dbg !1802
  br label %580, !dbg !2191

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1720, metadata !700), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1738, metadata !700), !dbg !1802
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1737, metadata !700), !dbg !1801
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1736, metadata !700), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1722, metadata !700), !dbg !1786
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1730, metadata !700), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1728, metadata !700), !dbg !1849
  %589 = add i64 %581, 1, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1728, metadata !700), !dbg !1849
  br label %122, !dbg !2193, !llvm.loop !2194

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2196
  %593 = and i1 %113, %592, !dbg !2198
  %594 = xor i1 %593, true, !dbg !2198
  %595 = or i1 %111, %594, !dbg !2198
  br i1 %595, label %596, label %635, !dbg !2198

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2199
  %598 = xor i1 %597, true, !dbg !2199
  %599 = and i8 %128, 1, !dbg !2201
  %600 = icmp eq i8 %599, 0, !dbg !2201
  %601 = or i1 %600, %598, !dbg !2199
  br i1 %601, label %611, label %602, !dbg !2199

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2202
  %604 = icmp eq i8 %603, 0, !dbg !2202
  br i1 %604, label %607, label %605, !dbg !2205

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2206
  br label %645, !dbg !2207

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2208
  %609 = icmp ne i64 %125, 0, !dbg !2210
  %610 = and i1 %609, %608, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1720, metadata !700), !dbg !1784
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1729, metadata !700), !dbg !1792
  br i1 %610, label %27, label %611, !dbg !2211

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2212
  %613 = and i1 %612, %111, !dbg !2214
  br i1 %613, label %614, label %630, !dbg !2214

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1731, metadata !700), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1729, metadata !700), !dbg !1792
  %615 = load i8, i8* %99, align 1, !dbg !2215, !tbaa !844
  %616 = icmp eq i8 %615, 0, !dbg !2218
  br i1 %616, label %630, label %617, !dbg !2218

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2219

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1729, metadata !700), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1731, metadata !700), !dbg !1794
  %622 = icmp ult i64 %621, %130, !dbg !2219
  br i1 %622, label %623, label %625, !dbg !2222

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2219
  store i8 %619, i8* %624, align 1, !dbg !2219, !tbaa !844
  br label %625, !dbg !2219

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1729, metadata !700), !dbg !1792
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2223
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1731, metadata !700), !dbg !1794
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1731, metadata !700), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1729, metadata !700), !dbg !1792
  %628 = load i8, i8* %627, align 1, !dbg !2215, !tbaa !844
  %629 = icmp eq i8 %628, 0, !dbg !2218
  br i1 %629, label %630, label %618, !dbg !2218, !llvm.loop !2224

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1729, metadata !700), !dbg !1792
  %632 = icmp ult i64 %631, %130, !dbg !2226
  br i1 %632, label %633, label %645, !dbg !2228

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2229
  store i8 0, i8* %634, align 1, !dbg !2230, !tbaa !844
  br label %645, !dbg !2229

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1720, metadata !700), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1722, metadata !700), !dbg !1786
  %639 = icmp ne i32 %636, 2, !dbg !2231
  %640 = icmp eq i8 %103, 0, !dbg !2233
  %641 = or i1 %639, %640, !dbg !2234
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1723, metadata !700), !dbg !1787
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2234
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1723, metadata !700), !dbg !1787
  %643 = and i32 %5, -3, !dbg !2235
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2236
  br label %645, !dbg !2237

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2238
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2239 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2243, metadata !700), !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2244, metadata !700), !dbg !2248
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2249
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2245, metadata !700), !dbg !2250
  %4 = icmp eq i8* %3, %0, !dbg !2251
  br i1 %4, label %5, label %75, !dbg !2253

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2254
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2246, metadata !700), !dbg !2255
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2256, metadata !700), !dbg !2272
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2270, metadata !700), !dbg !2275
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2271, metadata !700), !dbg !2276
  %7 = load i8, i8* %6, align 1, !dbg !2277, !tbaa !844
  %8 = sext i8 %7 to i32, !dbg !2277
  %9 = and i32 %8, -33, !dbg !2277
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2277

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2279, metadata !700), !dbg !2293
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2291, metadata !700), !dbg !2297
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2292, metadata !700), !dbg !2298
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2299
  %12 = load i8, i8* %11, align 1, !dbg !2299, !tbaa !844
  %13 = sext i8 %12 to i32, !dbg !2299
  %14 = and i32 %13, -33, !dbg !2299
  %15 = icmp eq i32 %14, 84, !dbg !2299
  br i1 %15, label %16, label %72, !dbg !2299

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2301, metadata !700), !dbg !2314
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2312, metadata !700), !dbg !2318
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2313, metadata !700), !dbg !2319
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2320
  %18 = load i8, i8* %17, align 1, !dbg !2320, !tbaa !844
  %19 = sext i8 %18 to i32, !dbg !2320
  %20 = and i32 %19, -33, !dbg !2320
  %21 = icmp eq i32 %20, 70, !dbg !2320
  br i1 %21, label %22, label %72, !dbg !2320

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2322, metadata !700), !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2332, metadata !700), !dbg !2338
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2333, metadata !700), !dbg !2339
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2340
  %24 = load i8, i8* %23, align 1, !dbg !2340, !tbaa !844
  %25 = icmp eq i8 %24, 45, !dbg !2340
  br i1 %25, label %26, label %72, !dbg !2342

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2343, metadata !700), !dbg !2354
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2352, metadata !700), !dbg !2358
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2353, metadata !700), !dbg !2359
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2360
  %28 = load i8, i8* %27, align 1, !dbg !2360, !tbaa !844
  %29 = icmp eq i8 %28, 56, !dbg !2360
  br i1 %29, label %30, label %72, !dbg !2362

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2363, metadata !700), !dbg !2373
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2371, metadata !700), !dbg !2377
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2372, metadata !700), !dbg !2378
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2379
  %32 = load i8, i8* %31, align 1, !dbg !2379, !tbaa !844
  %33 = icmp eq i8 %32, 0, !dbg !2379
  br i1 %33, label %34, label %72, !dbg !2381

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2382, !tbaa !844
  %36 = icmp eq i8 %35, 96, !dbg !2383
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.65, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.66, i64 0, i64 0), !dbg !2382
  br label %75, !dbg !2384

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2279, metadata !700), !dbg !2385
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2291, metadata !700), !dbg !2389
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2292, metadata !700), !dbg !2390
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2391
  %40 = load i8, i8* %39, align 1, !dbg !2391, !tbaa !844
  %41 = sext i8 %40 to i32, !dbg !2391
  %42 = and i32 %41, -33, !dbg !2391
  %43 = icmp eq i32 %42, 66, !dbg !2391
  br i1 %43, label %44, label %72, !dbg !2391

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2301, metadata !700), !dbg !2392
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2312, metadata !700), !dbg !2394
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2313, metadata !700), !dbg !2395
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2396
  %46 = load i8, i8* %45, align 1, !dbg !2396, !tbaa !844
  %47 = icmp eq i8 %46, 49, !dbg !2396
  br i1 %47, label %48, label %72, !dbg !2397

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2322, metadata !700), !dbg !2398
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2332, metadata !700), !dbg !2400
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2333, metadata !700), !dbg !2401
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2402
  %50 = load i8, i8* %49, align 1, !dbg !2402, !tbaa !844
  %51 = icmp eq i8 %50, 56, !dbg !2402
  br i1 %51, label %52, label %72, !dbg !2403

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2343, metadata !700), !dbg !2404
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2352, metadata !700), !dbg !2406
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2353, metadata !700), !dbg !2407
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2408
  %54 = load i8, i8* %53, align 1, !dbg !2408, !tbaa !844
  %55 = icmp eq i8 %54, 48, !dbg !2408
  br i1 %55, label %56, label %72, !dbg !2409

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2363, metadata !700), !dbg !2410
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2371, metadata !700), !dbg !2412
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2372, metadata !700), !dbg !2413
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2414
  %58 = load i8, i8* %57, align 1, !dbg !2414, !tbaa !844
  %59 = icmp eq i8 %58, 51, !dbg !2414
  br i1 %59, label %60, label %72, !dbg !2415

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2416, metadata !700), !dbg !2425
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2423, metadata !700), !dbg !2429
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2424, metadata !700), !dbg !2430
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2431
  %62 = load i8, i8* %61, align 1, !dbg !2431, !tbaa !844
  %63 = icmp eq i8 %62, 48, !dbg !2431
  br i1 %63, label %64, label %72, !dbg !2433

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2434, metadata !700), !dbg !2442
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2440, metadata !700), !dbg !2446
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2441, metadata !700), !dbg !2447
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2448
  %66 = load i8, i8* %65, align 1, !dbg !2448, !tbaa !844
  %67 = icmp eq i8 %66, 0, !dbg !2448
  br i1 %67, label %68, label %72, !dbg !2450

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2451, !tbaa !844
  %70 = icmp eq i8 %69, 96, !dbg !2452
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.68, i64 0, i64 0), !dbg !2451
  br label %75, !dbg !2453

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2454
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), !dbg !2455
  br label %75, !dbg !2456

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2457
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #13

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2458 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2462, metadata !700), !dbg !2465
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2463, metadata !700), !dbg !2466
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2464, metadata !700), !dbg !2467
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2468, metadata !700) #11, !dbg !2481
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2473, metadata !700) #11, !dbg !2483
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2474, metadata !700) #11, !dbg !2484
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2475, metadata !700) #11, !dbg !2485
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2486
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2486
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2476, metadata !700) #11, !dbg !2487
  %6 = tail call i32* @__errno_location() #17, !dbg !2488
  %7 = load i32, i32* %6, align 4, !dbg !2488, !tbaa !1137
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2477, metadata !700) #11, !dbg !2489
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2490
  %9 = load i32, i32* %8, align 4, !dbg !2490, !tbaa !1652
  %10 = or i32 %9, 1, !dbg !2491
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2478, metadata !700) #11, !dbg !2492
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2493
  %12 = load i32, i32* %11, align 8, !dbg !2493, !tbaa !1592
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2494
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2495
  %15 = load i8*, i8** %14, align 8, !dbg !2495, !tbaa !1678
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2496
  %17 = load i8*, i8** %16, align 8, !dbg !2496, !tbaa !1681
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2497
  %19 = add i64 %18, 1, !dbg !2498
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2479, metadata !700) #11, !dbg !2499
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2500, metadata !700) #11, !dbg !2505
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2507
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2480, metadata !700) #11, !dbg !2508
  %21 = load i32, i32* %11, align 8, !dbg !2509, !tbaa !1592
  %22 = load i8*, i8** %14, align 8, !dbg !2510, !tbaa !1678
  %23 = load i8*, i8** %16, align 8, !dbg !2511, !tbaa !1681
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2512
  store i32 %7, i32* %6, align 4, !dbg !2513, !tbaa !1137
  ret i8* %20, !dbg !2514
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2469 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2468, metadata !700), !dbg !2515
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2473, metadata !700), !dbg !2516
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2474, metadata !700), !dbg !2517
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2475, metadata !700), !dbg !2518
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2519
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2519
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2476, metadata !700), !dbg !2520
  %7 = tail call i32* @__errno_location() #17, !dbg !2521
  %8 = load i32, i32* %7, align 4, !dbg !2521, !tbaa !1137
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2477, metadata !700), !dbg !2522
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2523
  %10 = load i32, i32* %9, align 4, !dbg !2523, !tbaa !1652
  %11 = icmp ne i64* %2, null, !dbg !2524
  %12 = xor i1 %11, true, !dbg !2524
  %13 = zext i1 %12 to i32, !dbg !2524
  %14 = or i32 %10, %13, !dbg !2525
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2478, metadata !700), !dbg !2526
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2527
  %16 = load i32, i32* %15, align 8, !dbg !2527, !tbaa !1592
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2528
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2529
  %19 = load i8*, i8** %18, align 8, !dbg !2529, !tbaa !1678
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2530
  %21 = load i8*, i8** %20, align 8, !dbg !2530, !tbaa !1681
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2531
  %23 = add i64 %22, 1, !dbg !2532
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2479, metadata !700), !dbg !2533
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2500, metadata !700) #11, !dbg !2534
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2536
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2480, metadata !700), !dbg !2537
  %25 = load i32, i32* %15, align 8, !dbg !2538, !tbaa !1592
  %26 = load i8*, i8** %18, align 8, !dbg !2539, !tbaa !1678
  %27 = load i8*, i8** %20, align 8, !dbg !2540, !tbaa !1681
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2541
  store i32 %8, i32* %7, align 4, !dbg !2542, !tbaa !1137
  br i1 %11, label %29, label %30, !dbg !2543

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2544, !tbaa !2546
  br label %30, !dbg !2547

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2548
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2549 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2553, !tbaa !707
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2551, metadata !700), !dbg !2554
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2552, metadata !700), !dbg !2555
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2552, metadata !700), !dbg !2555
  %2 = load i32, i32* @nslots, align 4, !dbg !2556, !tbaa !1137
  %3 = icmp sgt i32 %2, 1, !dbg !2559
  br i1 %3, label %4, label %13, !dbg !2560

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2561

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2552, metadata !700), !dbg !2555
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2561
  %8 = load i8*, i8** %7, align 8, !dbg !2561, !tbaa !2562
  tail call void @free(i8* %8) #11, !dbg !2564
  %9 = add nuw i64 %6, 1, !dbg !2565
  %10 = load i32, i32* @nslots, align 4, !dbg !2556, !tbaa !1137
  %11 = sext i32 %10 to i64, !dbg !2559
  %12 = icmp slt i64 %9, %11, !dbg !2559
  br i1 %12, label %5, label %13, !dbg !2560, !llvm.loop !2566

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2568
  %15 = load i8*, i8** %14, align 8, !dbg !2568, !tbaa !2562
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2570
  br i1 %16, label %18, label %17, !dbg !2571

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2572
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2574, !tbaa !2575
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2576, !tbaa !2562
  br label %18, !dbg !2577

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2578
  br i1 %19, label %22, label %20, !dbg !2580

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2581
  tail call void @free(i8* %21) #11, !dbg !2583
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2584, !tbaa !707
  br label %22, !dbg !2585

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2586, !tbaa !1137
  ret void, !dbg !2587
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2588 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2592, metadata !700), !dbg !2594
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2593, metadata !700), !dbg !2595
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2596
  ret i8* %3, !dbg !2597
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2598 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2602, metadata !700), !dbg !2616
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2603, metadata !700), !dbg !2617
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2604, metadata !700), !dbg !2618
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2605, metadata !700), !dbg !2619
  %5 = tail call i32* @__errno_location() #17, !dbg !2620
  %6 = load i32, i32* %5, align 4, !dbg !2620, !tbaa !1137
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2606, metadata !700), !dbg !2621
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2622, !tbaa !707
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2607, metadata !700), !dbg !2623
  %8 = icmp slt i32 %0, 0, !dbg !2624
  br i1 %8, label %9, label %10, !dbg !2626

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2627
  unreachable, !dbg !2627

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2628, !tbaa !1137
  %12 = icmp sgt i32 %11, %0, !dbg !2629
  br i1 %12, label %34, label %13, !dbg !2630

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2631
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2632
  br i1 %15, label %16, label %17, !dbg !2634

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2635
  unreachable, !dbg !2635

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2636
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2636
  %20 = add nsw i32 %0, 1, !dbg !2637
  %21 = sext i32 %20 to i64, !dbg !2638
  %22 = shl nsw i64 %21, 4, !dbg !2639
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2640
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2640
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2607, metadata !700), !dbg !2623
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2641, !tbaa !707
  br i1 %14, label %25, label %26, !dbg !2642

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2643, !tbaa.struct !2645
  br label %26, !dbg !2646

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2647, !tbaa !1137
  %28 = sext i32 %27 to i64, !dbg !2648
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2648
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2649
  %31 = sub nsw i32 %20, %27, !dbg !2650
  %32 = sext i32 %31 to i64, !dbg !2651
  %33 = shl nsw i64 %32, 4, !dbg !2652
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2649
  store i32 %20, i32* @nslots, align 4, !dbg !2653, !tbaa !1137
  br label %34, !dbg !2654

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2607, metadata !700), !dbg !2623
  %36 = sext i32 %0 to i64, !dbg !2655
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2656
  %38 = load i64, i64* %37, align 8, !dbg !2656, !tbaa !2575
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2611, metadata !700), !dbg !2657
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2658
  %40 = load i8*, i8** %39, align 8, !dbg !2658, !tbaa !2562
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2613, metadata !700), !dbg !2659
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2660
  %42 = load i32, i32* %41, align 4, !dbg !2660, !tbaa !1652
  %43 = or i32 %42, 1, !dbg !2661
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2614, metadata !700), !dbg !2662
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2663
  %45 = load i32, i32* %44, align 8, !dbg !2663, !tbaa !1592
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2664
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2665
  %48 = load i8*, i8** %47, align 8, !dbg !2665, !tbaa !1678
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2666
  %50 = load i8*, i8** %49, align 8, !dbg !2666, !tbaa !1681
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2667
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2615, metadata !700), !dbg !2668
  %52 = icmp ugt i64 %38, %51, !dbg !2669
  br i1 %52, label %63, label %53, !dbg !2671

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2672
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2611, metadata !700), !dbg !2657
  store i64 %54, i64* %37, align 8, !dbg !2674, !tbaa !2575
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2675
  br i1 %55, label %57, label %56, !dbg !2677

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2678
  br label %57, !dbg !2678

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2500, metadata !700) #11, !dbg !2679
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2681
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2613, metadata !700), !dbg !2659
  store i8* %58, i8** %39, align 8, !dbg !2682, !tbaa !2562
  %59 = load i32, i32* %44, align 8, !dbg !2683, !tbaa !1592
  %60 = load i8*, i8** %47, align 8, !dbg !2684, !tbaa !1678
  %61 = load i8*, i8** %49, align 8, !dbg !2685, !tbaa !1681
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2686
  br label %63, !dbg !2687

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2613, metadata !700), !dbg !2659
  store i32 %6, i32* %5, align 4, !dbg !2688, !tbaa !1137
  ret i8* %64, !dbg !2689
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2690 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2694, metadata !700), !dbg !2697
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2695, metadata !700), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2696, metadata !700), !dbg !2699
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2700
  ret i8* %4, !dbg !2701
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2702 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2706, metadata !700), !dbg !2707
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2592, metadata !700) #11, !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2593, metadata !700) #11, !dbg !2710
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2711
  ret i8* %2, !dbg !2712
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2713 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2717, metadata !700), !dbg !2719
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2718, metadata !700), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2694, metadata !700) #11, !dbg !2721
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2695, metadata !700) #11, !dbg !2723
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2696, metadata !700) #11, !dbg !2724
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2725
  ret i8* %3, !dbg !2726
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2727 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2735, metadata !2741), !dbg !2742
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2731, metadata !700), !dbg !2744
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2732, metadata !700), !dbg !2745
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2733, metadata !700), !dbg !2746
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2747
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2747
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2734, metadata !700), !dbg !2748
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2740, metadata !700) #11, !dbg !2749
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2750
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2750
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2735, metadata !700) #11, !dbg !2742
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2735, metadata !2751) #11, !dbg !2742
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2742
  %8 = icmp eq i32 %1, 10, !dbg !2752
  br i1 %8, label %9, label %10, !dbg !2754

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2755, !noalias !2756
  unreachable, !dbg !2755

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2735, metadata !2751) #11, !dbg !2742
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2759
  store i32 %1, i32* %11, align 8, !dbg !2759, !alias.scope !2756
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2759
  %13 = bitcast i32* %12 to i8*, !dbg !2759
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2759
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2760
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2734, metadata !700), !dbg !2748
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2761
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2762
  ret i8* %14, !dbg !2763
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2764 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2735, metadata !2741), !dbg !2773
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2768, metadata !700), !dbg !2775
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2769, metadata !700), !dbg !2776
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2770, metadata !700), !dbg !2777
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2771, metadata !700), !dbg !2778
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2779
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2779
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2772, metadata !700), !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2740, metadata !700) #11, !dbg !2781
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2782
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2782
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2735, metadata !700) #11, !dbg !2773
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2735, metadata !2751) #11, !dbg !2773
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2773
  %9 = icmp eq i32 %1, 10, !dbg !2783
  br i1 %9, label %10, label %11, !dbg !2784

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2785, !noalias !2786
  unreachable, !dbg !2785

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2735, metadata !2751) #11, !dbg !2773
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2789
  store i32 %1, i32* %12, align 8, !dbg !2789, !alias.scope !2786
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2789
  %14 = bitcast i32* %13 to i8*, !dbg !2789
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2789
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2790
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2772, metadata !700), !dbg !2780
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2791
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2792
  ret i8* %15, !dbg !2793
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2794 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2735, metadata !2741), !dbg !2800
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2798, metadata !700), !dbg !2803
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2799, metadata !700), !dbg !2804
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2731, metadata !700) #11, !dbg !2805
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2732, metadata !700) #11, !dbg !2806
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2733, metadata !700) #11, !dbg !2807
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2808
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2808
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2734, metadata !700) #11, !dbg !2809
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2740, metadata !700) #11, !dbg !2810
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2811
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2811
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2735, metadata !700) #11, !dbg !2800
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2735, metadata !2751) #11, !dbg !2800
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2800
  %7 = icmp eq i32 %0, 10, !dbg !2812
  br i1 %7, label %8, label %9, !dbg !2813

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2814, !noalias !2815
  unreachable, !dbg !2814

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2735, metadata !2751) #11, !dbg !2800
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2818
  store i32 %0, i32* %10, align 8, !dbg !2818, !alias.scope !2815
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2818
  %12 = bitcast i32* %11 to i8*, !dbg !2818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2818
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2819
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2734, metadata !700) #11, !dbg !2809
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2820
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2821
  ret i8* %13, !dbg !2822
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2823 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2735, metadata !2741), !dbg !2830
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2827, metadata !700), !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2828, metadata !700), !dbg !2834
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2829, metadata !700), !dbg !2835
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2768, metadata !700) #11, !dbg !2836
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2769, metadata !700) #11, !dbg !2837
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2770, metadata !700) #11, !dbg !2838
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2771, metadata !700) #11, !dbg !2839
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2840
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2840
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2772, metadata !700) #11, !dbg !2841
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2740, metadata !700) #11, !dbg !2842
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2843
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2843
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2735, metadata !700) #11, !dbg !2830
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2735, metadata !2751) #11, !dbg !2830
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2830
  %8 = icmp eq i32 %0, 10, !dbg !2844
  br i1 %8, label %9, label %10, !dbg !2845

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2846, !noalias !2847
  unreachable, !dbg !2846

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2735, metadata !2751) #11, !dbg !2830
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2850
  store i32 %0, i32* %11, align 8, !dbg !2850, !alias.scope !2847
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2850
  %13 = bitcast i32* %12 to i8*, !dbg !2850
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2850
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2851
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2772, metadata !700) #11, !dbg !2841
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2852
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2853
  ret i8* %14, !dbg !2854
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2855 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2859, metadata !700), !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2860, metadata !700), !dbg !2864
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2861, metadata !700), !dbg !2865
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2866
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2866
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2867, !tbaa.struct !2868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2862, metadata !700), !dbg !2869
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1611, metadata !700), !dbg !2870
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1612, metadata !700), !dbg !2872
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1613, metadata !700), !dbg !2873
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1614, metadata !700), !dbg !2874
  %6 = lshr i8 %2, 5, !dbg !2875
  %7 = zext i8 %6 to i64, !dbg !2875
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2876
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1615, metadata !700), !dbg !2877
  %9 = and i8 %2, 31, !dbg !2878
  %10 = zext i8 %9 to i32, !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1617, metadata !700), !dbg !2880
  %11 = load i32, i32* %8, align 4, !dbg !2881, !tbaa !1137
  %12 = lshr i32 %11, %10, !dbg !2882
  %13 = and i32 %12, 1, !dbg !2883
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1618, metadata !700), !dbg !2884
  %14 = xor i32 %13, 1, !dbg !2885
  %15 = shl i32 %14, %10, !dbg !2886
  %16 = xor i32 %15, %11, !dbg !2887
  store i32 %16, i32* %8, align 4, !dbg !2887, !tbaa !1137
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2862, metadata !700), !dbg !2869
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2888
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2889
  ret i8* %17, !dbg !2890
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2891 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2895, metadata !700), !dbg !2897
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2896, metadata !700), !dbg !2898
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2859, metadata !700) #11, !dbg !2899
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2860, metadata !700) #11, !dbg !2901
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2861, metadata !700) #11, !dbg !2902
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2903
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2903
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2904, !tbaa.struct !2868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2862, metadata !700) #11, !dbg !2905
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1611, metadata !700) #11, !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1612, metadata !700) #11, !dbg !2908
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1613, metadata !700) #11, !dbg !2909
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1614, metadata !700) #11, !dbg !2910
  %5 = lshr i8 %1, 5, !dbg !2911
  %6 = zext i8 %5 to i64, !dbg !2911
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2912
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1615, metadata !700) #11, !dbg !2913
  %8 = and i8 %1, 31, !dbg !2914
  %9 = zext i8 %8 to i32, !dbg !2915
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1617, metadata !700) #11, !dbg !2916
  %10 = load i32, i32* %7, align 4, !dbg !2917, !tbaa !1137
  %11 = lshr i32 %10, %9, !dbg !2918
  %12 = and i32 %11, 1, !dbg !2919
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1618, metadata !700) #11, !dbg !2920
  %13 = xor i32 %12, 1, !dbg !2921
  %14 = shl i32 %13, %9, !dbg !2922
  %15 = xor i32 %14, %10, !dbg !2923
  store i32 %15, i32* %7, align 4, !dbg !2923, !tbaa !1137
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2862, metadata !700) #11, !dbg !2905
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2924
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2925
  ret i8* %16, !dbg !2926
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2927 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2929, metadata !700), !dbg !2930
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2895, metadata !700) #11, !dbg !2931
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2896, metadata !700) #11, !dbg !2933
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2859, metadata !700) #11, !dbg !2934
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2860, metadata !700) #11, !dbg !2936
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2861, metadata !700) #11, !dbg !2937
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2938
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2939, !tbaa.struct !2868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2862, metadata !700) #11, !dbg !2940
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1611, metadata !700) #11, !dbg !2941
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1612, metadata !700) #11, !dbg !2943
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1613, metadata !700) #11, !dbg !2944
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1614, metadata !700) #11, !dbg !2945
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2946
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1615, metadata !700) #11, !dbg !2947
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1617, metadata !700) #11, !dbg !2948
  %5 = load i32, i32* %4, align 4, !dbg !2949, !tbaa !1137
  %6 = or i32 %5, 67108864, !dbg !2950
  store i32 %6, i32* %4, align 4, !dbg !2950, !tbaa !1137
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2862, metadata !700) #11, !dbg !2940
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2951
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2952
  ret i8* %7, !dbg !2953
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2954 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2956, metadata !700), !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2957, metadata !700), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2859, metadata !700) #11, !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2860, metadata !700) #11, !dbg !2962
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2861, metadata !700) #11, !dbg !2963
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2964
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2964
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2965, !tbaa.struct !2868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2862, metadata !700) #11, !dbg !2966
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1611, metadata !700) #11, !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1612, metadata !700) #11, !dbg !2969
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1613, metadata !700) #11, !dbg !2970
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1614, metadata !700) #11, !dbg !2971
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2972
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1615, metadata !700) #11, !dbg !2973
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1617, metadata !700) #11, !dbg !2974
  %6 = load i32, i32* %5, align 4, !dbg !2975, !tbaa !1137
  %7 = or i32 %6, 67108864, !dbg !2976
  store i32 %7, i32* %5, align 4, !dbg !2976, !tbaa !1137
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2862, metadata !700) #11, !dbg !2966
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2977
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2978
  ret i8* %8, !dbg !2979
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2980 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2735, metadata !2741), !dbg !2986
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2982, metadata !700), !dbg !2988
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2983, metadata !700), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2984, metadata !700), !dbg !2990
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2991
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2991
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2740, metadata !700) #11, !dbg !2992
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2993
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2993
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2735, metadata !700) #11, !dbg !2986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2735, metadata !2751) #11, !dbg !2986
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2986
  %9 = icmp eq i32 %1, 10, !dbg !2994
  br i1 %9, label %10, label %11, !dbg !2995

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2996, !noalias !2997
  unreachable, !dbg !2996

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2735, metadata !2751) #11, !dbg !2986
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3000
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3001
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3002
  store i32 %1, i32* %13, align 8, !dbg !3002
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3002
  %15 = bitcast i32* %14 to i8*, !dbg !3002
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3002
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2985, metadata !700), !dbg !3003
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1611, metadata !700), !dbg !3004
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1612, metadata !700), !dbg !3006
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1613, metadata !700), !dbg !3007
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1614, metadata !700), !dbg !3008
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3009
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1615, metadata !700), !dbg !3010
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1617, metadata !700), !dbg !3011
  %17 = load i32, i32* %16, align 4, !dbg !3012, !tbaa !1137
  %18 = or i32 %17, 67108864, !dbg !3013
  store i32 %18, i32* %16, align 4, !dbg !3013, !tbaa !1137
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2985, metadata !700), !dbg !3003
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3014
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3015
  ret i8* %19, !dbg !3016
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3017 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3021, metadata !700), !dbg !3025
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3022, metadata !700), !dbg !3026
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3023, metadata !700), !dbg !3027
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3024, metadata !700), !dbg !3028
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3029, metadata !700) #11, !dbg !3039
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3034, metadata !700) #11, !dbg !3041
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3035, metadata !700) #11, !dbg !3042
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3036, metadata !700) #11, !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3037, metadata !700) #11, !dbg !3044
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3045
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3046, !tbaa.struct !2868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3038, metadata !700) #11, !dbg !3047
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1660, metadata !700) #11, !dbg !3048
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1661, metadata !700) #11, !dbg !3050
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1662, metadata !700) #11, !dbg !3051
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1660, metadata !700) #11, !dbg !3048
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1660, metadata !700) #11, !dbg !3048
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3052
  store i32 10, i32* %7, align 8, !dbg !3053, !tbaa !1592
  %8 = icmp ne i8* %1, null, !dbg !3054
  %9 = icmp ne i8* %2, null, !dbg !3055
  %10 = and i1 %8, %9, !dbg !3056
  br i1 %10, label %12, label %11, !dbg !3056

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3057
  unreachable, !dbg !3057

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3058
  store i8* %1, i8** %13, align 8, !dbg !3059, !tbaa !1678
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3060
  store i8* %2, i8** %14, align 8, !dbg !3061, !tbaa !1681
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3038, metadata !700) #11, !dbg !3047
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3062
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3063
  ret i8* %15, !dbg !3064
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3030 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3029, metadata !700), !dbg !3065
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3034, metadata !700), !dbg !3066
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3035, metadata !700), !dbg !3067
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3036, metadata !700), !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3037, metadata !700), !dbg !3069
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3070
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3070
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3071, !tbaa.struct !2868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3038, metadata !700), !dbg !3072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1660, metadata !700) #11, !dbg !3073
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1661, metadata !700) #11, !dbg !3075
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1662, metadata !700) #11, !dbg !3076
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1660, metadata !700) #11, !dbg !3073
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1660, metadata !700) #11, !dbg !3073
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3077
  store i32 10, i32* %8, align 8, !dbg !3078, !tbaa !1592
  %9 = icmp ne i8* %1, null, !dbg !3079
  %10 = icmp ne i8* %2, null, !dbg !3080
  %11 = and i1 %9, %10, !dbg !3081
  br i1 %11, label %13, label %12, !dbg !3081

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3082
  unreachable, !dbg !3082

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3083
  store i8* %1, i8** %14, align 8, !dbg !3084, !tbaa !1678
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3085
  store i8* %2, i8** %15, align 8, !dbg !3086, !tbaa !1681
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3038, metadata !700), !dbg !3072
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3087
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3088
  ret i8* %16, !dbg !3089
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3090 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3094, metadata !700), !dbg !3097
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3095, metadata !700), !dbg !3098
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3096, metadata !700), !dbg !3099
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3021, metadata !700) #11, !dbg !3100
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3022, metadata !700) #11, !dbg !3102
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3023, metadata !700) #11, !dbg !3103
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3024, metadata !700) #11, !dbg !3104
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3029, metadata !700) #11, !dbg !3105
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3034, metadata !700) #11, !dbg !3107
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3035, metadata !700) #11, !dbg !3108
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3036, metadata !700) #11, !dbg !3109
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3037, metadata !700) #11, !dbg !3110
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3111
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3111
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3112, !tbaa.struct !2868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3038, metadata !700) #11, !dbg !3113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1660, metadata !700) #11, !dbg !3114
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1661, metadata !700) #11, !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1662, metadata !700) #11, !dbg !3117
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1660, metadata !700) #11, !dbg !3114
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1660, metadata !700) #11, !dbg !3114
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3118
  store i32 10, i32* %6, align 8, !dbg !3119, !tbaa !1592
  %7 = icmp ne i8* %0, null, !dbg !3120
  %8 = icmp ne i8* %1, null, !dbg !3121
  %9 = and i1 %7, %8, !dbg !3122
  br i1 %9, label %11, label %10, !dbg !3122

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3123
  unreachable, !dbg !3123

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3124
  store i8* %0, i8** %12, align 8, !dbg !3125, !tbaa !1678
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3126
  store i8* %1, i8** %13, align 8, !dbg !3127, !tbaa !1681
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3038, metadata !700) #11, !dbg !3113
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3128
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3129
  ret i8* %14, !dbg !3130
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3131 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3135, metadata !700), !dbg !3139
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3136, metadata !700), !dbg !3140
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3137, metadata !700), !dbg !3141
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3138, metadata !700), !dbg !3142
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3029, metadata !700) #11, !dbg !3143
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3034, metadata !700) #11, !dbg !3145
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3035, metadata !700) #11, !dbg !3146
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3036, metadata !700) #11, !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3037, metadata !700) #11, !dbg !3148
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3149
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3150, !tbaa.struct !2868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3038, metadata !700) #11, !dbg !3151
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1660, metadata !700) #11, !dbg !3152
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1661, metadata !700) #11, !dbg !3154
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1662, metadata !700) #11, !dbg !3155
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1660, metadata !700) #11, !dbg !3152
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1660, metadata !700) #11, !dbg !3152
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3156
  store i32 10, i32* %7, align 8, !dbg !3157, !tbaa !1592
  %8 = icmp ne i8* %0, null, !dbg !3158
  %9 = icmp ne i8* %1, null, !dbg !3159
  %10 = and i1 %8, %9, !dbg !3160
  br i1 %10, label %12, label %11, !dbg !3160

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3161
  unreachable, !dbg !3161

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3162
  store i8* %0, i8** %13, align 8, !dbg !3163, !tbaa !1678
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3164
  store i8* %1, i8** %14, align 8, !dbg !3165, !tbaa !1681
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3038, metadata !700) #11, !dbg !3151
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3166
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3167
  ret i8* %15, !dbg !3168
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3169 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3173, metadata !700), !dbg !3176
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3174, metadata !700), !dbg !3177
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3175, metadata !700), !dbg !3178
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3179
  ret i8* %4, !dbg !3180
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3181 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3185, metadata !700), !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3186, metadata !700), !dbg !3188
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3173, metadata !700) #11, !dbg !3189
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3174, metadata !700) #11, !dbg !3191
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3175, metadata !700) #11, !dbg !3192
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3193
  ret i8* %3, !dbg !3194
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3195 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3199, metadata !700), !dbg !3201
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3200, metadata !700), !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3173, metadata !700) #11, !dbg !3203
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3174, metadata !700) #11, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3175, metadata !700) #11, !dbg !3206
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3207
  ret i8* %3, !dbg !3208
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3209 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3213, metadata !700), !dbg !3214
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3199, metadata !700) #11, !dbg !3215
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3200, metadata !700) #11, !dbg !3217
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3173, metadata !700) #11, !dbg !3218
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3174, metadata !700) #11, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3175, metadata !700) #11, !dbg !3221
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3222
  ret i8* %2, !dbg !3223
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @unicode_to_mb(i32, i64 (i8*, i64, i8*)* nocapture, i64 (i32, i8*, i8*)* nocapture, i8*) local_unnamed_addr #6 !dbg !186 {
  %5 = alloca [6 x i8], align 1
  %6 = alloca [25 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !264, metadata !700), !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 (i8*, i64, i8*)* %1, i64 0, metadata !265, metadata !700), !dbg !3225
  tail call void @llvm.dbg.value(metadata i64 (i32, i8*, i8*)* %2, i64 0, metadata !266, metadata !700), !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !267, metadata !700), !dbg !3227
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0, !dbg !3228
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %11) #11, !dbg !3228
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !268, metadata !700), !dbg !3229
  %12 = load i1, i1* @unicode_to_mb.initialized, align 4
  br i1 %12, label %24, label %13, !dbg !3230

; <label>:13:                                     ; preds = %4
  %14 = tail call i8* @locale_charset() #11, !dbg !3231
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !273, metadata !700), !dbg !3232
  %15 = tail call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #9, !dbg !3233
  %16 = icmp eq i32 %15, 0, !dbg !3234
  %17 = zext i1 %16 to i32, !dbg !3234
  store i32 %17, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3235, !tbaa !1137
  br i1 %16, label %23, label %18, !dbg !3236

; <label>:18:                                     ; preds = %13
  %19 = tail call i8* @iconv_open(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #11, !dbg !3237
  store i8* %19, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3240, !tbaa !707
  %20 = icmp eq i8* %19, inttoptr (i64 -1 to i8*), !dbg !3241
  br i1 %20, label %21, label %23, !dbg !3243

; <label>:21:                                     ; preds = %18
  %22 = tail call i8* @iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #11, !dbg !3244
  store i8* %22, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3245, !tbaa !707
  br label %23, !dbg !3246

; <label>:23:                                     ; preds = %18, %21, %13
  store i1 true, i1* @unicode_to_mb.initialized, align 4
  br label %24, !dbg !3247

; <label>:24:                                     ; preds = %23, %4
  %25 = load i32, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3248, !tbaa !1137
  %26 = icmp eq i32 %25, 0, !dbg !3248
  %27 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3250
  %28 = icmp eq i8* %27, inttoptr (i64 -1 to i8*), !dbg !3253
  %29 = and i1 %26, %28, !dbg !3254
  br i1 %29, label %30, label %32, !dbg !3254

; <label>:30:                                     ; preds = %24
  %31 = tail call i64 %2(i32 %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.77, i64 0, i64 0), i8* %3) #11, !dbg !3255
  br label %78, !dbg !3256

; <label>:32:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3257, metadata !700) #11, !dbg !3273
  %33 = icmp ult i32 %0, 128, !dbg !3275
  br i1 %33, label %34, label %36, !dbg !3277

; <label>:34:                                     ; preds = %32
  %35 = trunc i32 %0 to i8, !dbg !3278
  store i8 %35, i8* %11, align 1, !dbg !3280, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !272, metadata !700), !dbg !3281
  br label %44, !dbg !3282

; <label>:36:                                     ; preds = %32
  %37 = call i32 @u8_uctomb_aux(i8* nonnull %11, i32 %0, i32 6) #11, !dbg !3283
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !272, metadata !700), !dbg !3281
  %38 = icmp slt i32 %37, 0, !dbg !3284
  br i1 %38, label %42, label %39, !dbg !3282

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3286, !tbaa !1137
  %41 = sext i32 %37 to i64, !dbg !3282
  br label %44, !dbg !3282

; <label>:42:                                     ; preds = %36
  %43 = call i64 %2(i32 %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.78, i64 0, i64 0), i8* %3) #11, !dbg !3287
  br label %78, !dbg !3288

; <label>:44:                                     ; preds = %39, %34
  %45 = phi i32 [ %25, %34 ], [ %40, %39 ], !dbg !3286
  %46 = phi i64 [ 1, %34 ], [ %41, %39 ]
  %47 = icmp eq i32 %45, 0, !dbg !3286
  br i1 %47, label %48, label %76, !dbg !3289

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0, !dbg !3290
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %49) #11, !dbg !3290
  call void @llvm.dbg.declare(metadata [25 x i8]* %6, metadata !276, metadata !700), !dbg !3291
  %50 = bitcast i8** %7 to i8*, !dbg !3292
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #11, !dbg !3292
  %51 = bitcast i64* %8 to i8*, !dbg !3293
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #11, !dbg !3293
  %52 = bitcast i8** %9 to i8*, !dbg !3294
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #11, !dbg !3294
  %53 = bitcast i64* %10 to i8*, !dbg !3295
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #11, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !282, metadata !700), !dbg !3296
  store i8* %11, i8** %7, align 8, !dbg !3297, !tbaa !707
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !283, metadata !700), !dbg !3298
  store i64 %46, i64* %8, align 8, !dbg !3299, !tbaa !2546
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !284, metadata !700), !dbg !3300
  store i8* %49, i8** %9, align 8, !dbg !3301, !tbaa !707
  call void @llvm.dbg.value(metadata i64 25, i64 0, metadata !285, metadata !700), !dbg !3302
  store i64 25, i64* %10, align 8, !dbg !3303, !tbaa !2546
  %54 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3304, !tbaa !707
  call void @llvm.dbg.value(metadata i8** %7, i64 0, metadata !282, metadata !700), !dbg !3296
  call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !283, metadata !700), !dbg !3298
  call void @llvm.dbg.value(metadata i8** %9, i64 0, metadata !284, metadata !700), !dbg !3300
  call void @llvm.dbg.value(metadata i64* %10, i64 0, metadata !285, metadata !700), !dbg !3302
  %55 = call i64 @iconv(i8* %54, i8** nonnull %7, i64* nonnull %8, i8** nonnull %9, i64* nonnull %10) #11, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !286, metadata !700), !dbg !3306
  %56 = load i64, i64* %8, align 8, !dbg !3307, !tbaa !2546
  call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !283, metadata !700), !dbg !3298
  %57 = icmp ne i64 %56, 0, !dbg !3309
  %58 = icmp eq i64 %55, -1, !dbg !3310
  %59 = or i1 %58, %57, !dbg !3311
  br i1 %59, label %60, label %62, !dbg !3311

; <label>:60:                                     ; preds = %48
  %61 = call i64 %2(i32 %0, i8* null, i8* %3) #11, !dbg !3312
  br label %74, !dbg !3313

; <label>:62:                                     ; preds = %48
  %63 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3314, !tbaa !707
  call void @llvm.dbg.value(metadata i8** %9, i64 0, metadata !284, metadata !700), !dbg !3300
  call void @llvm.dbg.value(metadata i64* %10, i64 0, metadata !285, metadata !700), !dbg !3302
  %64 = call i64 @iconv(i8* %63, i8** null, i64* null, i8** nonnull %9, i64* nonnull %10) #11, !dbg !3315
  call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !286, metadata !700), !dbg !3306
  %65 = icmp eq i64 %64, -1, !dbg !3316
  br i1 %65, label %66, label %68, !dbg !3318

; <label>:66:                                     ; preds = %62
  %67 = call i64 %2(i32 %0, i8* null, i8* %3) #11, !dbg !3319
  br label %74, !dbg !3320

; <label>:68:                                     ; preds = %62
  %69 = bitcast i8** %9 to i64*, !dbg !3321
  %70 = load i64, i64* %69, align 8, !dbg !3321, !tbaa !707
  call void @llvm.dbg.value(metadata i8** %9, i64 0, metadata !284, metadata !3322), !dbg !3300
  %71 = ptrtoint [25 x i8]* %6 to i64, !dbg !3323
  %72 = sub i64 %70, %71, !dbg !3323
  %73 = call i64 %1(i8* nonnull %49, i64 %72, i8* %3) #11, !dbg !3324
  br label %74, !dbg !3325

; <label>:74:                                     ; preds = %68, %66, %60
  %75 = phi i64 [ %61, %60 ], [ %67, %66 ], [ %73, %68 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #11, !dbg !3326
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #11, !dbg !3326
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #11, !dbg !3326
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #11, !dbg !3326
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %49) #11, !dbg !3326
  br label %78

; <label>:76:                                     ; preds = %44
  %77 = call i64 %1(i8* nonnull %11, i64 %46, i8* %3) #11, !dbg !3327
  br label %78, !dbg !3328

; <label>:78:                                     ; preds = %76, %74, %42, %30
  %79 = phi i64 [ %31, %30 ], [ %43, %42 ], [ %77, %76 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %11) #11, !dbg !3329
  ret i64 %79, !dbg !3329
}

declare i8* @iconv_open(i8*, i8*) local_unnamed_addr #3

declare i64 @iconv(i8*, i8**, i64*, i8**, i64*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @fwrite_success_callback(i8* nocapture, i64, i8* nocapture) #6 !dbg !3330 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3332, metadata !700), !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3333, metadata !700), !dbg !3337
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3334, metadata !700), !dbg !3338
  %4 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !3339
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, i64 0, metadata !3335, metadata !700), !dbg !3340
  %5 = tail call i64 @fwrite(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %4), !dbg !3341
  ret i64 0, !dbg !3342
}

; Function Attrs: nounwind sspstrong uwtable
define void @print_unicode_char(%struct._IO_FILE*, i32, i32) local_unnamed_addr #6 !dbg !3343 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3347, metadata !700), !dbg !3350
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3348, metadata !700), !dbg !3351
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3349, metadata !700), !dbg !3352
  %4 = icmp eq i32 %2, 0, !dbg !3353
  %5 = select i1 %4, i64 (i32, i8*, i8*)* @fallback_failure_callback, i64 (i32, i8*, i8*)* @exit_failure_callback, !dbg !3353
  %6 = bitcast %struct._IO_FILE* %0 to i8*, !dbg !3354
  %7 = tail call i64 @unicode_to_mb(i32 %1, i64 (i8*, i64, i8*)* nonnull @fwrite_success_callback, i64 (i32, i8*, i8*)* %5, i8* %6), !dbg !3355
  ret void, !dbg !3356
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @fallback_failure_callback(i32, i8* nocapture readnone, i8*) #6 !dbg !3357 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3359, metadata !700), !dbg !3363
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3360, metadata !700), !dbg !3364
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3361, metadata !700), !dbg !3365
  %4 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !3366
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, i64 0, metadata !3362, metadata !700), !dbg !3367
  %5 = icmp ult i32 %0, 65536, !dbg !3368
  br i1 %5, label %6, label %8, !dbg !3370

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.83, i64 0, i64 0), i32 %0) #11, !dbg !3371
  br label %10, !dbg !3371

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.84, i64 0, i64 0), i32 %0) #11, !dbg !3372
  br label %10

; <label>:10:                                     ; preds = %8, %6
  ret i64 -1, !dbg !3373
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @exit_failure_callback(i32, i8*, i8* nocapture readnone) #6 !dbg !3374 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3376, metadata !700), !dbg !3379
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3377, metadata !700), !dbg !3380
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3378, metadata !700), !dbg !3381
  %4 = icmp eq i8* %1, null, !dbg !3382
  br i1 %4, label %5, label %7, !dbg !3384

; <label>:5:                                      ; preds = %3
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4.81, i64 0, i64 0), i32 5) #11, !dbg !3385
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %6, i32 %0) #11, !dbg !3386
  br label %10, !dbg !3386

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5.82, i64 0, i64 0), i32 5) #11, !dbg !3387
  %9 = tail call i8* @dcgettext(i8* null, i8* nonnull %1, i32 5) #11, !dbg !3388
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %8, i32 %0, i8* %9) #11, !dbg !3389
  br label %10

; <label>:10:                                     ; preds = %7, %5
  ret i64 -1, !dbg !3390
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @u8_uctomb_aux(i8* nocapture, i32, i32) local_unnamed_addr #6 !dbg !3391 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3393, metadata !700), !dbg !3397
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3394, metadata !700), !dbg !3398
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3395, metadata !700), !dbg !3399
  %4 = icmp ult i32 %1, 128, !dbg !3400
  br i1 %4, label %43, label %5, !dbg !3402

; <label>:5:                                      ; preds = %3
  %6 = icmp ult i32 %1, 2048, !dbg !3403
  br i1 %6, label %14, label %7, !dbg !3405

; <label>:7:                                      ; preds = %5
  %8 = icmp ult i32 %1, 65536, !dbg !3406
  br i1 %8, label %9, label %12, !dbg !3408

; <label>:9:                                      ; preds = %7
  %10 = and i32 %1, -2048, !dbg !3409
  %11 = icmp eq i32 %10, 55296, !dbg !3409
  br i1 %11, label %43, label %14, !dbg !3409

; <label>:12:                                     ; preds = %7
  %13 = icmp ult i32 %1, 1114112, !dbg !3412
  br i1 %13, label %14, label %43, !dbg !3414

; <label>:14:                                     ; preds = %12, %9, %5
  %15 = phi i32 [ 2, %5 ], [ 3, %9 ], [ 4, %12 ]
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !3396, metadata !700), !dbg !3415
  %16 = icmp sgt i32 %15, %2, !dbg !3416
  br i1 %16, label %43, label %17, !dbg !3418

; <label>:17:                                     ; preds = %14
  %18 = trunc i32 %15 to i3, !dbg !3419
  switch i3 %18, label %43 [
    i3 -4, label %19
    i3 3, label %26
    i3 2, label %34
  ], !dbg !3419

; <label>:19:                                     ; preds = %17
  %20 = trunc i32 %1 to i8, !dbg !3420
  %21 = and i8 %20, 63, !dbg !3420
  %22 = or i8 %21, -128, !dbg !3420
  %23 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !3422
  store i8 %22, i8* %23, align 1, !dbg !3423, !tbaa !844
  %24 = lshr i32 %1, 6, !dbg !3424
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !3394, metadata !700), !dbg !3398
  %25 = or i32 %24, 65536, !dbg !3425
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !3394, metadata !700), !dbg !3398
  br label %26, !dbg !3426

; <label>:26:                                     ; preds = %17, %19
  %27 = phi i32 [ %1, %17 ], [ %25, %19 ]
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !3394, metadata !700), !dbg !3398
  %28 = trunc i32 %27 to i8, !dbg !3427
  %29 = and i8 %28, 63, !dbg !3427
  %30 = or i8 %29, -128, !dbg !3427
  %31 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !3428
  store i8 %30, i8* %31, align 1, !dbg !3429, !tbaa !844
  %32 = lshr i32 %27, 6, !dbg !3430
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !3394, metadata !700), !dbg !3398
  %33 = or i32 %32, 2048, !dbg !3431
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !3394, metadata !700), !dbg !3398
  br label %34, !dbg !3432

; <label>:34:                                     ; preds = %17, %26
  %35 = phi i32 [ %1, %17 ], [ %33, %26 ]
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !3394, metadata !700), !dbg !3398
  %36 = trunc i32 %35 to i8, !dbg !3433
  %37 = and i8 %36, 63, !dbg !3433
  %38 = or i8 %37, -128, !dbg !3433
  %39 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3434
  store i8 %38, i8* %39, align 1, !dbg !3435, !tbaa !844
  %40 = lshr i32 %35, 6, !dbg !3436
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !3394, metadata !700), !dbg !3398
  %41 = trunc i32 %40 to i8, !dbg !3437
  %42 = or i8 %41, -64, !dbg !3437
  store i8 %42, i8* %0, align 1, !dbg !3438, !tbaa !844
  br label %43, !dbg !3439

; <label>:43:                                     ; preds = %17, %34, %14, %12, %9, %3
  %44 = phi i32 [ -2, %3 ], [ -1, %9 ], [ -1, %12 ], [ -2, %14 ], [ %15, %34 ], [ %15, %17 ]
  ret i32 %44, !dbg !3440
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3441 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3486, metadata !700), !dbg !3492
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3487, metadata !700), !dbg !3493
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3488, metadata !700), !dbg !3494
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3489, metadata !700), !dbg !3495
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3490, metadata !700), !dbg !3496
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3491, metadata !700), !dbg !3497
  %7 = icmp eq i8* %1, null, !dbg !3498
  br i1 %7, label %10, label %8, !dbg !3500

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3501
  br label %12, !dbg !3501

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.88, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3502
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i32 5) #11, !dbg !3503
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3503
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.90, i64 0, i64 0), i32 5) #11, !dbg !3504
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3504
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
  ], !dbg !3505

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3506
  unreachable, !dbg !3506

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.91, i64 0, i64 0), i32 5) #11, !dbg !3508
  %20 = load i8*, i8** %4, align 8, !dbg !3508, !tbaa !707
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3508
  br label %146, !dbg !3509

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.92, i64 0, i64 0), i32 5) #11, !dbg !3510
  %24 = load i8*, i8** %4, align 8, !dbg !3510, !tbaa !707
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3510
  %26 = load i8*, i8** %25, align 8, !dbg !3510, !tbaa !707
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3510
  br label %146, !dbg !3511

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.93, i64 0, i64 0), i32 5) #11, !dbg !3512
  %30 = load i8*, i8** %4, align 8, !dbg !3512, !tbaa !707
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3512
  %32 = load i8*, i8** %31, align 8, !dbg !3512, !tbaa !707
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3512
  %34 = load i8*, i8** %33, align 8, !dbg !3512, !tbaa !707
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3512
  br label %146, !dbg !3513

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.94, i64 0, i64 0), i32 5) #11, !dbg !3514
  %38 = load i8*, i8** %4, align 8, !dbg !3514, !tbaa !707
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3514
  %40 = load i8*, i8** %39, align 8, !dbg !3514, !tbaa !707
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3514
  %42 = load i8*, i8** %41, align 8, !dbg !3514, !tbaa !707
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3514
  %44 = load i8*, i8** %43, align 8, !dbg !3514, !tbaa !707
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3514
  br label %146, !dbg !3515

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.95, i64 0, i64 0), i32 5) #11, !dbg !3516
  %48 = load i8*, i8** %4, align 8, !dbg !3516, !tbaa !707
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3516
  %50 = load i8*, i8** %49, align 8, !dbg !3516, !tbaa !707
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3516
  %52 = load i8*, i8** %51, align 8, !dbg !3516, !tbaa !707
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3516
  %54 = load i8*, i8** %53, align 8, !dbg !3516, !tbaa !707
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3516
  %56 = load i8*, i8** %55, align 8, !dbg !3516, !tbaa !707
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3516
  br label %146, !dbg !3517

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.96, i64 0, i64 0), i32 5) #11, !dbg !3518
  %60 = load i8*, i8** %4, align 8, !dbg !3518, !tbaa !707
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3518
  %62 = load i8*, i8** %61, align 8, !dbg !3518, !tbaa !707
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3518
  %64 = load i8*, i8** %63, align 8, !dbg !3518, !tbaa !707
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3518
  %66 = load i8*, i8** %65, align 8, !dbg !3518, !tbaa !707
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3518
  %68 = load i8*, i8** %67, align 8, !dbg !3518, !tbaa !707
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3518
  %70 = load i8*, i8** %69, align 8, !dbg !3518, !tbaa !707
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3518
  br label %146, !dbg !3519

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.97, i64 0, i64 0), i32 5) #11, !dbg !3520
  %74 = load i8*, i8** %4, align 8, !dbg !3520, !tbaa !707
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3520
  %76 = load i8*, i8** %75, align 8, !dbg !3520, !tbaa !707
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3520
  %78 = load i8*, i8** %77, align 8, !dbg !3520, !tbaa !707
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3520
  %80 = load i8*, i8** %79, align 8, !dbg !3520, !tbaa !707
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3520
  %82 = load i8*, i8** %81, align 8, !dbg !3520, !tbaa !707
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3520
  %84 = load i8*, i8** %83, align 8, !dbg !3520, !tbaa !707
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3520
  %86 = load i8*, i8** %85, align 8, !dbg !3520, !tbaa !707
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3520
  br label %146, !dbg !3521

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.98, i64 0, i64 0), i32 5) #11, !dbg !3522
  %90 = load i8*, i8** %4, align 8, !dbg !3522, !tbaa !707
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3522
  %92 = load i8*, i8** %91, align 8, !dbg !3522, !tbaa !707
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3522
  %94 = load i8*, i8** %93, align 8, !dbg !3522, !tbaa !707
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3522
  %96 = load i8*, i8** %95, align 8, !dbg !3522, !tbaa !707
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3522
  %98 = load i8*, i8** %97, align 8, !dbg !3522, !tbaa !707
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3522
  %100 = load i8*, i8** %99, align 8, !dbg !3522, !tbaa !707
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3522
  %102 = load i8*, i8** %101, align 8, !dbg !3522, !tbaa !707
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3522
  %104 = load i8*, i8** %103, align 8, !dbg !3522, !tbaa !707
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3522
  br label %146, !dbg !3523

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.99, i64 0, i64 0), i32 5) #11, !dbg !3524
  %108 = load i8*, i8** %4, align 8, !dbg !3524, !tbaa !707
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3524
  %110 = load i8*, i8** %109, align 8, !dbg !3524, !tbaa !707
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3524
  %112 = load i8*, i8** %111, align 8, !dbg !3524, !tbaa !707
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3524
  %114 = load i8*, i8** %113, align 8, !dbg !3524, !tbaa !707
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3524
  %116 = load i8*, i8** %115, align 8, !dbg !3524, !tbaa !707
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3524
  %118 = load i8*, i8** %117, align 8, !dbg !3524, !tbaa !707
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3524
  %120 = load i8*, i8** %119, align 8, !dbg !3524, !tbaa !707
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3524
  %122 = load i8*, i8** %121, align 8, !dbg !3524, !tbaa !707
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3524
  %124 = load i8*, i8** %123, align 8, !dbg !3524, !tbaa !707
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3524
  br label %146, !dbg !3525

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.100, i64 0, i64 0), i32 5) #11, !dbg !3526
  %128 = load i8*, i8** %4, align 8, !dbg !3526, !tbaa !707
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3526
  %130 = load i8*, i8** %129, align 8, !dbg !3526, !tbaa !707
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3526
  %132 = load i8*, i8** %131, align 8, !dbg !3526, !tbaa !707
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3526
  %134 = load i8*, i8** %133, align 8, !dbg !3526, !tbaa !707
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3526
  %136 = load i8*, i8** %135, align 8, !dbg !3526, !tbaa !707
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3526
  %138 = load i8*, i8** %137, align 8, !dbg !3526, !tbaa !707
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3526
  %140 = load i8*, i8** %139, align 8, !dbg !3526, !tbaa !707
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3526
  %142 = load i8*, i8** %141, align 8, !dbg !3526, !tbaa !707
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3526
  %144 = load i8*, i8** %143, align 8, !dbg !3526, !tbaa !707
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3526
  br label %146, !dbg !3527

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3528
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3529 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3533, metadata !700), !dbg !3539
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3534, metadata !700), !dbg !3540
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3535, metadata !700), !dbg !3541
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3536, metadata !700), !dbg !3542
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3537, metadata !700), !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3538, metadata !700), !dbg !3544
  br label %6, !dbg !3545

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3538, metadata !700), !dbg !3544
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3547
  %9 = load i8*, i8** %8, align 8, !dbg !3547, !tbaa !707
  %10 = icmp eq i8* %9, null, !dbg !3549
  %11 = add i64 %7, 1, !dbg !3550
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3538, metadata !700), !dbg !3544
  br i1 %10, label %12, label %6, !dbg !3549, !llvm.loop !3551

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3553
  ret void, !dbg !3554
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3555 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3566, metadata !700), !dbg !3574
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3567, metadata !700), !dbg !3575
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3568, metadata !700), !dbg !3576
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3569, metadata !700), !dbg !3577
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3570, metadata !700), !dbg !3578
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3579
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3579
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3572, metadata !700), !dbg !3580
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3571, metadata !700), !dbg !3581
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3571, metadata !700), !dbg !3581
  %11 = load i32, i32* %8, align 8, !dbg !3582
  %12 = icmp ult i32 %11, 41, !dbg !3582
  br i1 %12, label %13, label %18, !dbg !3582

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3582
  %15 = sext i32 %11 to i64, !dbg !3582
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3582
  %17 = add i32 %11, 8, !dbg !3582
  store i32 %17, i32* %8, align 8, !dbg !3582
  br label %21, !dbg !3582

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3582
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3582
  store i8* %20, i8** %10, align 8, !dbg !3582
  br label %21, !dbg !3582

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3582
  %25 = load i8*, i8** %24, align 8, !dbg !3582
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3585
  store i8* %25, i8** %26, align 16, !dbg !3586, !tbaa !707
  %27 = icmp eq i8* %25, null, !dbg !3587
  br i1 %27, label %30, label %28, !dbg !3588

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3571, metadata !700), !dbg !3581
  %29 = icmp ult i32 %22, 41, !dbg !3582
  br i1 %29, label %35, label %32, !dbg !3582

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3589
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3590
  ret void, !dbg !3590

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3582
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3582
  store i8* %34, i8** %10, align 8, !dbg !3582
  br label %40, !dbg !3582

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3582
  %37 = sext i32 %22 to i64, !dbg !3582
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3582
  %39 = add i32 %22, 8, !dbg !3582
  store i32 %39, i32* %8, align 8, !dbg !3582
  br label %40, !dbg !3582

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3582
  %44 = load i8*, i8** %43, align 8, !dbg !3582
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3585
  store i8* %44, i8** %45, align 8, !dbg !3586, !tbaa !707
  %46 = icmp eq i8* %44, null, !dbg !3587
  br i1 %46, label %30, label %47, !dbg !3588

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3571, metadata !700), !dbg !3581
  %48 = icmp ult i32 %41, 41, !dbg !3582
  br i1 %48, label %52, label %49, !dbg !3582

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3582
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3582
  store i8* %51, i8** %10, align 8, !dbg !3582
  br label %57, !dbg !3582

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3582
  %54 = sext i32 %41 to i64, !dbg !3582
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3582
  %56 = add i32 %41, 8, !dbg !3582
  store i32 %56, i32* %8, align 8, !dbg !3582
  br label %57, !dbg !3582

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3582
  %61 = load i8*, i8** %60, align 8, !dbg !3582
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3585
  store i8* %61, i8** %62, align 16, !dbg !3586, !tbaa !707
  %63 = icmp eq i8* %61, null, !dbg !3587
  br i1 %63, label %30, label %64, !dbg !3588

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3571, metadata !700), !dbg !3581
  %65 = icmp ult i32 %58, 41, !dbg !3582
  br i1 %65, label %69, label %66, !dbg !3582

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3582
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3582
  store i8* %68, i8** %10, align 8, !dbg !3582
  br label %74, !dbg !3582

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3582
  %71 = sext i32 %58 to i64, !dbg !3582
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3582
  %73 = add i32 %58, 8, !dbg !3582
  store i32 %73, i32* %8, align 8, !dbg !3582
  br label %74, !dbg !3582

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3582
  %78 = load i8*, i8** %77, align 8, !dbg !3582
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3585
  store i8* %78, i8** %79, align 8, !dbg !3586, !tbaa !707
  %80 = icmp eq i8* %78, null, !dbg !3587
  br i1 %80, label %30, label %81, !dbg !3588

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3571, metadata !700), !dbg !3581
  %82 = icmp ult i32 %75, 41, !dbg !3582
  br i1 %82, label %86, label %83, !dbg !3582

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3582
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3582
  store i8* %85, i8** %10, align 8, !dbg !3582
  br label %91, !dbg !3582

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3582
  %88 = sext i32 %75 to i64, !dbg !3582
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3582
  %90 = add i32 %75, 8, !dbg !3582
  store i32 %90, i32* %8, align 8, !dbg !3582
  br label %91, !dbg !3582

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3582
  %95 = load i8*, i8** %94, align 8, !dbg !3582
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3585
  store i8* %95, i8** %96, align 16, !dbg !3586, !tbaa !707
  %97 = icmp eq i8* %95, null, !dbg !3587
  br i1 %97, label %30, label %98, !dbg !3588

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3571, metadata !700), !dbg !3581
  %99 = icmp ult i32 %92, 41, !dbg !3582
  br i1 %99, label %103, label %100, !dbg !3582

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3582
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3582
  store i8* %102, i8** %10, align 8, !dbg !3582
  br label %108, !dbg !3582

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3582
  %105 = sext i32 %92 to i64, !dbg !3582
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3582
  %107 = add i32 %92, 8, !dbg !3582
  store i32 %107, i32* %8, align 8, !dbg !3582
  br label %108, !dbg !3582

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3582
  %111 = load i8*, i8** %110, align 8, !dbg !3582
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3585
  store i8* %111, i8** %112, align 8, !dbg !3586, !tbaa !707
  %113 = icmp eq i8* %111, null, !dbg !3587
  br i1 %113, label %30, label %114, !dbg !3588

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3571, metadata !700), !dbg !3581
  %115 = load i8*, i8** %10, align 8, !dbg !3582
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3582
  store i8* %116, i8** %10, align 8, !dbg !3582
  %117 = bitcast i8* %115 to i8**, !dbg !3582
  %118 = load i8*, i8** %117, align 8, !dbg !3582
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3585
  store i8* %118, i8** %119, align 16, !dbg !3586, !tbaa !707
  %120 = icmp eq i8* %118, null, !dbg !3587
  br i1 %120, label %30, label %121, !dbg !3588

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3571, metadata !700), !dbg !3581
  %122 = load i8*, i8** %10, align 8, !dbg !3582
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3582
  store i8* %123, i8** %10, align 8, !dbg !3582
  %124 = bitcast i8* %122 to i8**, !dbg !3582
  %125 = load i8*, i8** %124, align 8, !dbg !3582
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3585
  store i8* %125, i8** %126, align 8, !dbg !3586, !tbaa !707
  %127 = icmp eq i8* %125, null, !dbg !3587
  br i1 %127, label %30, label %128, !dbg !3588

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3571, metadata !700), !dbg !3581
  %129 = load i8*, i8** %10, align 8, !dbg !3582
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3582
  store i8* %130, i8** %10, align 8, !dbg !3582
  %131 = bitcast i8* %129 to i8**, !dbg !3582
  %132 = load i8*, i8** %131, align 8, !dbg !3582
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3585
  store i8* %132, i8** %133, align 16, !dbg !3586, !tbaa !707
  %134 = icmp eq i8* %132, null, !dbg !3587
  br i1 %134, label %30, label %135, !dbg !3588

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3571, metadata !700), !dbg !3581
  %136 = load i8*, i8** %10, align 8, !dbg !3582
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3582
  store i8* %137, i8** %10, align 8, !dbg !3582
  %138 = bitcast i8* %136 to i8**, !dbg !3582
  %139 = load i8*, i8** %138, align 8, !dbg !3582
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3585
  store i8* %139, i8** %140, align 8, !dbg !3586, !tbaa !707
  %141 = icmp eq i8* %139, null, !dbg !3587
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3571, metadata !700), !dbg !3581
  %142 = select i1 %141, i64 9, i64 10, !dbg !3588
  br label %30, !dbg !3588
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3591 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3595, metadata !700), !dbg !3606
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3596, metadata !700), !dbg !3607
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3597, metadata !700), !dbg !3608
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3598, metadata !700), !dbg !3609
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3610
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3610
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3599, metadata !700), !dbg !3611
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3612
  call void @llvm.va_start(i8* nonnull %6), !dbg !3612
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3613
  call void @llvm.va_end(i8* nonnull %6), !dbg !3614
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3615
  ret void, !dbg !3615
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3616 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.103, i64 0, i64 0), i32 5) #11, !dbg !3617
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.104, i64 0, i64 0)) #11, !dbg !3617
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.105, i64 0, i64 0), i32 5) #11, !dbg !3618
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.106, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.107, i64 0, i64 0)) #11, !dbg !3618
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.108, i64 0, i64 0), i32 5) #11, !dbg !3619
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3619, !tbaa !707
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3619
  ret void, !dbg !3620
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3621 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3625, metadata !700), !dbg !3627
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3626, metadata !700), !dbg !3628
  %3 = udiv i64 9223372036854775807, %1, !dbg !3629
  %4 = icmp ult i64 %3, %0, !dbg !3629
  br i1 %4, label %5, label %6, !dbg !3631

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3632
  unreachable, !dbg !3632

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3633
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3634, metadata !700) #11, !dbg !3641
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3643
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3640, metadata !700) #11, !dbg !3644
  %9 = icmp eq i8* %8, null, !dbg !3645
  %10 = icmp ne i64 %7, 0, !dbg !3647
  %11 = and i1 %10, %9, !dbg !3648
  br i1 %11, label %12, label %13, !dbg !3648

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3649
  unreachable, !dbg !3649

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3650
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3635 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3634, metadata !700), !dbg !3651
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3652
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3640, metadata !700), !dbg !3653
  %3 = icmp eq i8* %2, null, !dbg !3654
  %4 = icmp ne i64 %0, 0, !dbg !3655
  %5 = and i1 %4, %3, !dbg !3656
  br i1 %5, label %6, label %7, !dbg !3656

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3657
  unreachable, !dbg !3657

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3658
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3659 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3663, metadata !700), !dbg !3666
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3664, metadata !700), !dbg !3667
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3665, metadata !700), !dbg !3668
  %4 = udiv i64 9223372036854775807, %2, !dbg !3669
  %5 = icmp ult i64 %4, %1, !dbg !3669
  br i1 %5, label %6, label %7, !dbg !3671

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3672
  unreachable, !dbg !3672

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3674, metadata !700) #11, !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3679, metadata !700) #11, !dbg !3682
  %9 = icmp eq i64 %8, 0, !dbg !3683
  %10 = icmp ne i8* %0, null, !dbg !3685
  %11 = and i1 %10, %9, !dbg !3686
  br i1 %11, label %12, label %13, !dbg !3686

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3687
  br label %19, !dbg !3689

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3690
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3674, metadata !700) #11, !dbg !3680
  %15 = icmp eq i8* %14, null, !dbg !3691
  %16 = icmp ne i64 %8, 0, !dbg !3693
  %17 = and i1 %16, %15, !dbg !3694
  br i1 %17, label %18, label %19, !dbg !3694

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3695
  unreachable, !dbg !3695

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3696
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3675 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3674, metadata !700), !dbg !3697
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3679, metadata !700), !dbg !3698
  %3 = icmp eq i64 %1, 0, !dbg !3699
  %4 = icmp ne i8* %0, null, !dbg !3700
  %5 = and i1 %4, %3, !dbg !3701
  br i1 %5, label %6, label %7, !dbg !3701

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3702
  br label %13, !dbg !3703

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3704
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3674, metadata !700), !dbg !3697
  %9 = icmp eq i8* %8, null, !dbg !3705
  %10 = icmp ne i64 %1, 0, !dbg !3706
  %11 = and i1 %10, %9, !dbg !3707
  br i1 %11, label %12, label %13, !dbg !3707

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3708
  unreachable, !dbg !3708

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3709
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !658 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !663, metadata !700), !dbg !3710
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !664, metadata !700), !dbg !3711
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !665, metadata !700), !dbg !3712
  %4 = load i64, i64* %1, align 8, !dbg !3713, !tbaa !2546
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !666, metadata !700), !dbg !3714
  %5 = icmp eq i8* %0, null, !dbg !3715
  br i1 %5, label %6, label %13, !dbg !3717

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3718
  br i1 %7, label %8, label %17, !dbg !3721

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3722
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !666, metadata !700), !dbg !3714
  %10 = icmp ugt i64 %2, 128, !dbg !3724
  %11 = zext i1 %10 to i64, !dbg !3724
  %12 = add nuw nsw i64 %9, %11, !dbg !3725
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !666, metadata !700), !dbg !3714
  br label %17, !dbg !3726

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3727
  %15 = icmp ugt i64 %14, %4, !dbg !3730
  br i1 %15, label %20, label %16, !dbg !3731

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3732
  unreachable, !dbg !3732

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !666, metadata !700), !dbg !3714
  store i64 %18, i64* %1, align 8, !dbg !3733, !tbaa !2546
  %19 = mul i64 %18, %2, !dbg !3734
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3674, metadata !700) #11, !dbg !3735
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3679, metadata !700) #11, !dbg !3737
  br label %27, !dbg !3738

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3739
  %22 = add i64 %4, 1, !dbg !3740
  %23 = add i64 %22, %21, !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !666, metadata !700), !dbg !3714
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !666, metadata !700), !dbg !3714
  store i64 %23, i64* %1, align 8, !dbg !3733, !tbaa !2546
  %24 = mul i64 %23, %2, !dbg !3734
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3674, metadata !700) #11, !dbg !3735
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3679, metadata !700) #11, !dbg !3737
  %25 = icmp eq i64 %24, 0, !dbg !3742
  br i1 %25, label %26, label %27, !dbg !3738

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3743
  br label %34, !dbg !3744

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3745
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3674, metadata !700) #11, !dbg !3735
  %30 = icmp eq i8* %29, null, !dbg !3746
  %31 = icmp ne i64 %28, 0, !dbg !3747
  %32 = and i1 %31, %30, !dbg !3748
  br i1 %32, label %33, label %34, !dbg !3748

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3749
  unreachable, !dbg !3749

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3750
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !3751 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3753, metadata !700), !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3634, metadata !700) #11, !dbg !3755
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3757
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3640, metadata !700) #11, !dbg !3758
  %3 = icmp eq i8* %2, null, !dbg !3759
  %4 = icmp ne i64 %0, 0, !dbg !3760
  %5 = and i1 %4, %3, !dbg !3761
  br i1 %5, label %6, label %7, !dbg !3761

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3762
  unreachable, !dbg !3762

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3763
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3764 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3768, metadata !700), !dbg !3770
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3769, metadata !700), !dbg !3771
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !663, metadata !700) #11, !dbg !3772
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !664, metadata !700) #11, !dbg !3774
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !665, metadata !700) #11, !dbg !3775
  %3 = load i64, i64* %1, align 8, !dbg !3776, !tbaa !2546
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !666, metadata !700) #11, !dbg !3777
  %4 = icmp eq i8* %0, null, !dbg !3778
  br i1 %4, label %5, label %8, !dbg !3779

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3780
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !666, metadata !700) #11, !dbg !3777
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !666, metadata !700) #11, !dbg !3777
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3781
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !666, metadata !700) #11, !dbg !3777
  store i64 %7, i64* %1, align 8, !dbg !3782, !tbaa !2546
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3674, metadata !700) #11, !dbg !3783
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3679, metadata !700) #11, !dbg !3785
  br label %17, !dbg !3786

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3787
  br i1 %9, label %11, label %10, !dbg !3788

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3789
  unreachable, !dbg !3789

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3790
  %13 = add i64 %3, 1, !dbg !3791
  %14 = add i64 %13, %12, !dbg !3792
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !666, metadata !700) #11, !dbg !3777
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !666, metadata !700) #11, !dbg !3777
  store i64 %14, i64* %1, align 8, !dbg !3782, !tbaa !2546
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3674, metadata !700) #11, !dbg !3783
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3679, metadata !700) #11, !dbg !3785
  %15 = icmp eq i64 %14, 0, !dbg !3793
  br i1 %15, label %16, label %17, !dbg !3786

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3794
  br label %24, !dbg !3795

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3796
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3674, metadata !700) #11, !dbg !3783
  %20 = icmp eq i8* %19, null, !dbg !3797
  %21 = icmp ne i64 %18, 0, !dbg !3798
  %22 = and i1 %21, %20, !dbg !3799
  br i1 %22, label %23, label %24, !dbg !3799

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3800
  unreachable, !dbg !3800

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3801
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3802 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3804, metadata !700), !dbg !3805
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3634, metadata !700) #11, !dbg !3806
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3808
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3640, metadata !700) #11, !dbg !3809
  %3 = icmp eq i8* %2, null, !dbg !3810
  %4 = icmp ne i64 %0, 0, !dbg !3811
  %5 = and i1 %4, %3, !dbg !3812
  br i1 %5, label %6, label %7, !dbg !3812

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3813
  unreachable, !dbg !3813

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3814
  ret i8* %2, !dbg !3815
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3816 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3818, metadata !700), !dbg !3821
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3819, metadata !700), !dbg !3822
  %3 = udiv i64 9223372036854775807, %1, !dbg !3823
  %4 = icmp ult i64 %3, %0, !dbg !3823
  br i1 %4, label %8, label %5, !dbg !3825

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3826
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3820, metadata !700), !dbg !3827
  %7 = icmp eq i8* %6, null, !dbg !3828
  br i1 %7, label %8, label %9, !dbg !3829

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3830
  unreachable, !dbg !3830

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3831
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3832 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3836, metadata !700), !dbg !3838
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3837, metadata !700), !dbg !3839
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3634, metadata !700) #11, !dbg !3840
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3842
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3640, metadata !700) #11, !dbg !3843
  %4 = icmp eq i8* %3, null, !dbg !3844
  %5 = icmp ne i64 %1, 0, !dbg !3845
  %6 = and i1 %5, %4, !dbg !3846
  br i1 %6, label %7, label %8, !dbg !3846

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3847
  unreachable, !dbg !3847

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3848
  ret i8* %3, !dbg !3849
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3850 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3852, metadata !700), !dbg !3853
  %2 = tail call i64 @strlen(i8* %0) #9, !dbg !3854
  %3 = add i64 %2, 1, !dbg !3855
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3836, metadata !700) #11, !dbg !3856
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3837, metadata !700) #11, !dbg !3858
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3634, metadata !700) #11, !dbg !3859
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3861
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3640, metadata !700) #11, !dbg !3862
  %5 = icmp eq i8* %4, null, !dbg !3863
  %6 = icmp ne i64 %3, 0, !dbg !3864
  %7 = and i1 %6, %5, !dbg !3865
  br i1 %7, label %8, label %9, !dbg !3865

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3866
  unreachable, !dbg !3866

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3867
  ret i8* %4, !dbg !3868
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3869 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3871, !tbaa !1137
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.119, i64 0, i64 0), i32 5) #11, !dbg !3872
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* %2) #11, !dbg !3873
  tail call void @abort() #15, !dbg !3874
  unreachable, !dbg !3874
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xprintf(i8* noalias, ...) local_unnamed_addr #6 !dbg !3875 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3880, metadata !700), !dbg !3893
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !3894
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #11, !dbg !3894
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !3881, metadata !700), !dbg !3895
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !3896
  call void @llvm.va_start(i8* nonnull %3), !dbg !3896
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3897, metadata !700) #11, !dbg !3905
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3903, metadata !700) #11, !dbg !3907
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3908, metadata !700) #11, !dbg !3913
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3912, metadata !700) #11, !dbg !3915
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3916, !tbaa !707, !noalias !3917
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %0, %struct.__va_list_tag* nonnull %4) #11, !dbg !3922
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3904, metadata !700) #11, !dbg !3923
  %7 = icmp slt i32 %6, 0, !dbg !3924
  br i1 %7, label %8, label %17, !dbg !3926

; <label>:8:                                      ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3927, !tbaa !707
  %10 = call i32 @ferror(%struct._IO_FILE* %9) #11, !dbg !3928
  %11 = icmp eq i32 %10, 0, !dbg !3928
  br i1 %11, label %12, label %17, !dbg !3929

; <label>:12:                                     ; preds = %8
  %13 = load volatile i32, i32* @exit_failure, align 4, !dbg !3930, !tbaa !1137
  %14 = tail call i32* @__errno_location() #17, !dbg !3931
  %15 = load i32, i32* %14, align 4, !dbg !3931, !tbaa !1137
  %16 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0), i32 5) #11, !dbg !3932
  call void (i32, i32, i8*, ...) @error(i32 %13, i32 %15, i8* %16) #11, !dbg !3933
  br label %17, !dbg !3933

; <label>:17:                                     ; preds = %1, %8, %12
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3892, metadata !700), !dbg !3934
  call void @llvm.va_end(i8* nonnull %3), !dbg !3935
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #11, !dbg !3936
  ret i32 %6, !dbg !3937
}

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @xvprintf(i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !3898 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3897, metadata !700), !dbg !3938
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !3903, metadata !700), !dbg !3939
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3908, metadata !700) #11, !dbg !3940
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !3912, metadata !700) #11, !dbg !3942
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3943, !tbaa !707, !noalias !3944
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %3, i32 1, i8* %0, %struct.__va_list_tag* %1) #11, !dbg !3947
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3904, metadata !700), !dbg !3948
  %5 = icmp slt i32 %4, 0, !dbg !3949
  br i1 %5, label %6, label %15, !dbg !3950

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3951, !tbaa !707
  %8 = tail call i32 @ferror(%struct._IO_FILE* %7) #11, !dbg !3952
  %9 = icmp eq i32 %8, 0, !dbg !3952
  br i1 %9, label %10, label %15, !dbg !3953

; <label>:10:                                     ; preds = %6
  %11 = load volatile i32, i32* @exit_failure, align 4, !dbg !3954, !tbaa !1137
  %12 = tail call i32* @__errno_location() #17, !dbg !3955
  %13 = load i32, i32* %12, align 4, !dbg !3955, !tbaa !1137
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0), i32 5) #11, !dbg !3956
  tail call void (i32, i32, i8*, ...) @error(i32 %11, i32 %13, i8* %14) #11, !dbg !3957
  br label %15, !dbg !3957

; <label>:15:                                     ; preds = %6, %10, %2
  ret i32 %4, !dbg !3958
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xfprintf(%struct._IO_FILE* noalias, i8* noalias, ...) local_unnamed_addr #6 !dbg !3959 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4004, metadata !700), !dbg !4008
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4005, metadata !700), !dbg !4009
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4010
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #11, !dbg !4010
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4006, metadata !700), !dbg !4011
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !4012
  call void @llvm.va_start(i8* nonnull %4), !dbg !4012
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4013, metadata !700) #11, !dbg !4021
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4018, metadata !700) #11, !dbg !4023
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, i64 0, metadata !4019, metadata !700) #11, !dbg !4024
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4025, metadata !700) #11, !dbg !4030
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4028, metadata !700) #11, !dbg !4032
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, i64 0, metadata !4029, metadata !700) #11, !dbg !4033
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %5) #11, !dbg !4034
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4020, metadata !700) #11, !dbg !4035
  %7 = icmp slt i32 %6, 0, !dbg !4036
  br i1 %7, label %8, label %16, !dbg !4038

; <label>:8:                                      ; preds = %2
  %9 = call i32 @ferror(%struct._IO_FILE* %0) #11, !dbg !4039
  %10 = icmp eq i32 %9, 0, !dbg !4039
  br i1 %10, label %11, label %16, !dbg !4040

; <label>:11:                                     ; preds = %8
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4041, !tbaa !1137
  %13 = tail call i32* @__errno_location() #17, !dbg !4042
  %14 = load i32, i32* %13, align 4, !dbg !4042, !tbaa !1137
  %15 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0), i32 5) #11, !dbg !4043
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 %14, i8* %15) #11, !dbg !4044
  br label %16, !dbg !4044

; <label>:16:                                     ; preds = %2, %8, %11
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4007, metadata !700), !dbg !4045
  call void @llvm.va_end(i8* nonnull %4), !dbg !4046
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #11, !dbg !4047
  ret i32 %6, !dbg !4048
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xvfprintf(%struct._IO_FILE* noalias, i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !4014 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4013, metadata !700), !dbg !4049
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4018, metadata !700), !dbg !4050
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %2, i64 0, metadata !4019, metadata !700), !dbg !4051
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4025, metadata !700) #11, !dbg !4052
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4028, metadata !700) #11, !dbg !4054
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %2, i64 0, metadata !4029, metadata !700) #11, !dbg !4055
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* %2) #11, !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4020, metadata !700), !dbg !4057
  %5 = icmp slt i32 %4, 0, !dbg !4058
  br i1 %5, label %6, label %14, !dbg !4059

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @ferror(%struct._IO_FILE* %0) #11, !dbg !4060
  %8 = icmp eq i32 %7, 0, !dbg !4060
  br i1 %8, label %9, label %14, !dbg !4061

; <label>:9:                                      ; preds = %6
  %10 = load volatile i32, i32* @exit_failure, align 4, !dbg !4062, !tbaa !1137
  %11 = tail call i32* @__errno_location() #17, !dbg !4063
  %12 = load i32, i32* %11, align 4, !dbg !4063, !tbaa !1137
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0), i32 5) #11, !dbg !4064
  tail call void (i32, i32, i8*, ...) @error(i32 %10, i32 %12, i8* %13) #11, !dbg !4065
  br label %14, !dbg !4065

; <label>:14:                                     ; preds = %6, %9, %3
  ret i32 %4, !dbg !4066
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4067 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4070, metadata !700), !dbg !4076
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4071, metadata !700), !dbg !4077
  %3 = icmp eq i64 %0, 0, !dbg !4078
  %4 = icmp eq i64 %1, 0, !dbg !4079
  %5 = or i1 %3, %4, !dbg !4080
  br i1 %5, label %12, label %6, !dbg !4080

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4081
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4073, metadata !700), !dbg !4082
  %8 = udiv i64 %7, %1, !dbg !4083
  %9 = icmp eq i64 %8, %0, !dbg !4085
  br i1 %9, label %12, label %10, !dbg !4086

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4087
  store i32 12, i32* %11, align 4, !dbg !4089, !tbaa !1137
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4070, metadata !700), !dbg !4076
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4071, metadata !700), !dbg !4077
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4090
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4072, metadata !700), !dbg !4091
  br label %16, !dbg !4092

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4093
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4094 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4111, metadata !700), !dbg !4120
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4112, metadata !700), !dbg !4121
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4113, metadata !700), !dbg !4122
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4114, metadata !700), !dbg !4123
  %6 = bitcast i32* %5 to i8*, !dbg !4124
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4124
  %7 = icmp eq i32* %0, null, !dbg !4125
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4111, metadata !700), !dbg !4120
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4127
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4111, metadata !700), !dbg !4120
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4128
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4115, metadata !700), !dbg !4129
  %10 = icmp ugt i64 %9, -3, !dbg !4130
  %11 = icmp ne i64 %2, 0, !dbg !4131
  %12 = and i1 %11, %10, !dbg !4132
  br i1 %12, label %13, label %18, !dbg !4132

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4133
  br i1 %14, label %18, label %15, !dbg !4134

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4135, !tbaa !844
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4117, metadata !700), !dbg !4136
  %17 = zext i8 %16 to i32, !dbg !4137
  store i32 %17, i32* %8, align 4, !dbg !4138, !tbaa !1137
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4139
  ret i64 %19, !dbg !4139
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4140 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4185, metadata !700), !dbg !4190
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4191
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4192, metadata !700), !dbg !4195
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4197
  %4 = load i32, i32* %3, align 8, !dbg !4197, !tbaa !4198
  %5 = and i32 %4, 32, !dbg !4197
  %6 = icmp eq i32 %5, 0, !dbg !4199
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4200
  %8 = icmp ne i32 %7, 0, !dbg !4201
  br i1 %6, label %9, label %19, !dbg !4202

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4204
  %11 = xor i1 %8, true, !dbg !4205
  %12 = or i1 %10, %11, !dbg !4205
  %13 = sext i1 %8 to i32, !dbg !4205
  br i1 %12, label %22, label %14, !dbg !4205

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4206
  %16 = load i32, i32* %15, align 4, !dbg !4206, !tbaa !1137
  %17 = icmp ne i32 %16, 9, !dbg !4207
  %18 = sext i1 %17 to i32, !dbg !4208
  br label %22, !dbg !4208

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4209

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4211
  store i32 0, i32* %21, align 4, !dbg !4213, !tbaa !1137
  br label %22, !dbg !4211

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4214
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4215 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4220, metadata !700), !dbg !4223
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4221, metadata !700), !dbg !4224
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4225
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4222, metadata !700), !dbg !4226
  %3 = icmp eq i8* %2, null, !dbg !4227
  br i1 %3, label %11, label %4, !dbg !4229

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i64 0, i64 0)) #9, !dbg !4230
  %6 = icmp eq i32 %5, 0, !dbg !4235
  br i1 %6, label %10, label %7, !dbg !4236

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0)) #9, !dbg !4237
  %9 = icmp eq i32 %8, 0, !dbg !4238
  br i1 %9, label %10, label %11, !dbg !4239

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4221, metadata !700), !dbg !4224
  br label %11, !dbg !4240

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4241
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4242 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4248, metadata !700), !dbg !4322
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4315, metadata !700), !dbg !4325
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4326
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4246, metadata !700), !dbg !4327
  %4 = icmp eq i8* %3, null, !dbg !4328
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), i8* %3, !dbg !4330
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4246, metadata !700), !dbg !4327
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4331, !tbaa !707
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4262, metadata !700) #11, !dbg !4332
  %7 = icmp eq i8* %6, null, !dbg !4333
  br i1 %7, label %8, label %123, !dbg !4334

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.137, i64 0, i64 0)) #11, !dbg !4335
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4263, metadata !700) #11, !dbg !4336
  %10 = icmp eq i8* %9, null, !dbg !4337
  br i1 %10, label %14, label %11, !dbg !4339

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4340, !tbaa !844
  %13 = icmp eq i8 %12, 0, !dbg !4341
  br i1 %13, label %14, label %15, !dbg !4342

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4343

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.138, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4263, metadata !700) #11, !dbg !4336
  %17 = tail call i64 @strlen(i8* nonnull %16) #9, !dbg !4344
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4266, metadata !700) #11, !dbg !4345
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4268, metadata !700) #11, !dbg !4346
  %18 = icmp eq i64 %17, 0, !dbg !4347
  br i1 %18, label %24, label %19, !dbg !4348

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4349
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4349
  %22 = load i8, i8* %21, align 1, !dbg !4349, !tbaa !844
  %23 = icmp ne i8 %22, 47, !dbg !4349
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4350
  %27 = add i64 %17, 14, !dbg !4351
  %28 = add i64 %27, %26, !dbg !4352
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4353
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4265, metadata !700) #11, !dbg !4354
  %30 = icmp eq i8* %29, null, !dbg !4355
  br i1 %30, label %121, label %31, !dbg !4355

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4356
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4359

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4360, !tbaa !844
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4362
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.139, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4363
  br label %37, !dbg !4364

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4362
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.139, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4363
  br label %37, !dbg !4364

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4365
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4270, metadata !700) #11, !dbg !4366
  %39 = icmp slt i32 %38, 0, !dbg !4367
  br i1 %39, label %119, label %40, !dbg !4368

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.140, i64 0, i64 0)) #11, !dbg !4369
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4271, metadata !700) #11, !dbg !4370
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4371
  br i1 %42, label %43, label %45, !dbg !4372

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !4373
  br label %119, !dbg !4375

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4312, metadata !700) #11, !dbg !4376
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4313, metadata !700) #11, !dbg !4377
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4378

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4379

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4312, metadata !700) #11, !dbg !4376
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4313, metadata !700) #11, !dbg !4377
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4379
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4380
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4381, metadata !700) #11, !dbg !4386
  %54 = load i8*, i8** %48, align 8, !dbg !4388, !tbaa !4389
  %55 = load i8*, i8** %49, align 8, !dbg !4388, !tbaa !4390
  %56 = icmp ult i8* %54, %55, !dbg !4388
  br i1 %56, label %59, label %57, !dbg !4388, !prof !872

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4388
  br label %63, !dbg !4388

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4388
  store i8* %60, i8** %48, align 8, !dbg !4388, !tbaa !4389
  %61 = load i8, i8* %54, align 1, !dbg !4388, !tbaa !844
  %62 = zext i8 %61 to i32, !dbg !4388
  br label %63, !dbg !4388

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4388
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4314, metadata !700) #11, !dbg !4391
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4392, !llvm.loop !4393

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4398

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4381, metadata !700) #11, !dbg !4400
  %67 = load i8*, i8** %48, align 8, !dbg !4398, !tbaa !4389
  %68 = load i8*, i8** %49, align 8, !dbg !4398, !tbaa !4390
  %69 = icmp ult i8* %67, %68, !dbg !4398
  br i1 %69, label %72, label %70, !dbg !4398, !prof !872

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4398
  br label %76, !dbg !4398

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4398
  store i8* %73, i8** %48, align 8, !dbg !4398, !tbaa !4389
  %74 = load i8, i8* %67, align 1, !dbg !4398, !tbaa !844
  %75 = zext i8 %74 to i32, !dbg !4398
  br label %76, !dbg !4398

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4398
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4314, metadata !700) #11, !dbg !4391
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4401, !llvm.loop !4402

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !4405
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.141, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !4406
  %81 = icmp slt i32 %80, 2, !dbg !4408
  br i1 %81, label %112, label %82, !dbg !4409

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #9, !dbg !4410
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4319, metadata !700) #11, !dbg !4411
  %84 = call i64 @strlen(i8* nonnull %47) #9, !dbg !4412
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4320, metadata !700) #11, !dbg !4413
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4321, metadata !700) #11, !dbg !4414
  %85 = icmp eq i64 %51, 0, !dbg !4415
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4417

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4313, metadata !700) #11, !dbg !4377
  %90 = add i64 %87, 2, !dbg !4418
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !4420
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4312, metadata !700) #11, !dbg !4376
  br label %96, !dbg !4421

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4422
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4313, metadata !700) #11, !dbg !4377
  %94 = add i64 %93, 1, !dbg !4424
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !4425
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4312, metadata !700) #11, !dbg !4376
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4312, metadata !700) #11, !dbg !4376
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4313, metadata !700) #11, !dbg !4377
  %99 = icmp eq i8* %98, null, !dbg !4426
  br i1 %99, label %100, label %102, !dbg !4428

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4313, metadata !700) #11, !dbg !4377
  call void @free(i8* %52) #11, !dbg !4429
  br label %112, !dbg !4431

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4432
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4432
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4433
  %104 = xor i64 %84, -1, !dbg !4434
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4434
  %106 = xor i64 %83, -1, !dbg !4435
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4435
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4436, metadata !700) #11, !dbg !4443
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4442, metadata !700) #11, !dbg !4443
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !4445
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !4446
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4436, metadata !700) #11, !dbg !4447
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4442, metadata !700) #11, !dbg !4447
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !4449
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !4450
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4312, metadata !700) #11, !dbg !4376
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4313, metadata !700) #11, !dbg !4377
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4432
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4432
  br label %50, !dbg !4451, !llvm.loop !4402

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4432
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4432
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4452
  %116 = icmp eq i64 %113, 0, !dbg !4453
  br i1 %116, label %119, label %117, !dbg !4455

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4456
  store i8 0, i8* %118, align 1, !dbg !4458, !tbaa !844
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4262, metadata !700) #11, !dbg !4332
  call void @free(i8* %29) #11, !dbg !4459
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4262, metadata !700) #11, !dbg !4332
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4460, !tbaa !707
  br label %123, !dbg !4461

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4262, metadata !700) #11, !dbg !4332
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4247, metadata !700), !dbg !4462
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4247, metadata !700), !dbg !4462
  %125 = load i8, i8* %124, align 1, !dbg !4463, !tbaa !844
  %126 = icmp eq i8 %125, 0, !dbg !4465
  br i1 %126, label %152, label %127, !dbg !4466

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4467

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4247, metadata !700), !dbg !4462
  %131 = call i32 @strcmp(i8* %5, i8* %130) #9, !dbg !4467
  %132 = icmp eq i32 %131, 0, !dbg !4469
  br i1 %132, label %139, label %133, !dbg !4470

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4471
  br i1 %134, label %135, label %143, !dbg !4472

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4473
  %137 = load i8, i8* %136, align 1, !dbg !4473, !tbaa !844
  %138 = icmp eq i8 %137, 0, !dbg !4474
  br i1 %138, label %139, label %143, !dbg !4475

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #9, !dbg !4476
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4478
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4479
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4246, metadata !700), !dbg !4327
  br label %152, !dbg !4480

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #9, !dbg !4481
  %145 = add i64 %144, 1, !dbg !4482
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4483
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4247, metadata !700), !dbg !4462
  %147 = call i64 @strlen(i8* %146) #9, !dbg !4484
  %148 = add i64 %147, 1, !dbg !4485
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4486
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4247, metadata !700), !dbg !4462
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4247, metadata !700), !dbg !4462
  %150 = load i8, i8* %149, align 1, !dbg !4463, !tbaa !844
  %151 = icmp eq i8 %150, 0, !dbg !4465
  br i1 %151, label %152, label %128, !dbg !4466, !llvm.loop !4487

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4246, metadata !700), !dbg !4327
  %154 = load i8, i8* %153, align 1, !dbg !4489, !tbaa !844
  %155 = icmp eq i8 %154, 0, !dbg !4491
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.142, i64 0, i64 0), i8* %153, !dbg !4492
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4246, metadata !700), !dbg !4327
  ret i8* %156, !dbg !4493
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4494 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4539, metadata !700), !dbg !4543
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4540, metadata !700), !dbg !4544
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4542, metadata !700), !dbg !4545
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4546
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4541, metadata !700), !dbg !4547
  %3 = icmp slt i32 %2, 0, !dbg !4548
  br i1 %3, label %4, label %6, !dbg !4550

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4551
  br label %24, !dbg !4552

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4553
  %8 = icmp eq i32 %7, 0, !dbg !4553
  br i1 %8, label %13, label %9, !dbg !4555

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4556
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4557
  %12 = icmp eq i64 %11, -1, !dbg !4558
  br i1 %12, label %16, label %13, !dbg !4559

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4560
  %15 = icmp eq i32 %14, 0, !dbg !4560
  br i1 %15, label %16, label %18, !dbg !4561

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4540, metadata !700), !dbg !4544
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4542, metadata !700), !dbg !4545
  br label %24, !dbg !4563

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4564
  %20 = load i32, i32* %19, align 4, !dbg !4564, !tbaa !1137
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4540, metadata !700), !dbg !4544
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4540, metadata !700), !dbg !4544
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4542, metadata !700), !dbg !4545
  %22 = icmp eq i32 %20, 0, !dbg !4565
  br i1 %22, label %24, label %23, !dbg !4563

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4567, !tbaa !1137
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4542, metadata !700), !dbg !4545
  br label %24, !dbg !4569

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4570
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4571 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4616, metadata !700), !dbg !4617
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4618
  br i1 %2, label %6, label %3, !dbg !4620

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4621
  %5 = icmp eq i32 %4, 0, !dbg !4621
  br i1 %5, label %6, label %8, !dbg !4622

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4623
  br label %17, !dbg !4624

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4625, metadata !700) #11, !dbg !4630
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4632
  %10 = load i32, i32* %9, align 8, !dbg !4632, !tbaa !4198
  %11 = and i32 %10, 256, !dbg !4634
  %12 = icmp eq i32 %11, 0, !dbg !4634
  br i1 %12, label %15, label %13, !dbg !4635

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4636
  br label %15, !dbg !4636

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4637
  br label %17, !dbg !4638

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4639
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4640 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4686, metadata !700), !dbg !4692
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4687, metadata !700), !dbg !4693
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4688, metadata !700), !dbg !4694
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4695
  %5 = load i8*, i8** %4, align 8, !dbg !4695, !tbaa !4390
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4696
  %7 = load i8*, i8** %6, align 8, !dbg !4696, !tbaa !4389
  %8 = icmp eq i8* %5, %7, !dbg !4697
  br i1 %8, label %9, label %28, !dbg !4698

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4699
  %11 = load i8*, i8** %10, align 8, !dbg !4699, !tbaa !866
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4700
  %13 = load i8*, i8** %12, align 8, !dbg !4700, !tbaa !4701
  %14 = icmp eq i8* %11, %13, !dbg !4702
  br i1 %14, label %15, label %28, !dbg !4703

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4704
  %17 = load i8*, i8** %16, align 8, !dbg !4704, !tbaa !4705
  %18 = icmp eq i8* %17, null, !dbg !4706
  br i1 %18, label %19, label %28, !dbg !4707

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4708
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4709
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4689, metadata !700), !dbg !4710
  %22 = icmp eq i64 %21, -1, !dbg !4711
  br i1 %22, label %30, label %23, !dbg !4713

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4714
  %25 = load i32, i32* %24, align 8, !dbg !4715, !tbaa !4198
  %26 = and i32 %25, -17, !dbg !4715
  store i32 %26, i32* %24, align 8, !dbg !4715, !tbaa !4198
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4716
  store i64 %21, i64* %27, align 8, !dbg !4717, !tbaa !4718
  br label %30, !dbg !4719

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4720
  br label %30, !dbg !4721

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4722
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
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !73, !79, !109, !117, !124, !131, !197, !643, !645, !289, !653, !670, !672, !674, !676, !679, !681, !298, !683, !685, !687}
!llvm.ident = !{!689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689, !689}
!llvm.module.flags = !{!690, !691, !692, !693, !694}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "posixly_correct", scope: !2, file: !3, line: 79, type: !70, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !42)
!3 = !DIFile(filename: "src/printf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 46, size: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!22 = !DIEnumerator(name: "_ISupper", value: 256)
!23 = !DIEnumerator(name: "_ISlower", value: 512)
!24 = !DIEnumerator(name: "_ISalpha", value: 1024)
!25 = !DIEnumerator(name: "_ISdigit", value: 2048)
!26 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!27 = !DIEnumerator(name: "_ISspace", value: 8192)
!28 = !DIEnumerator(name: "_ISprint", value: 16384)
!29 = !DIEnumerator(name: "_ISgraph", value: 32768)
!30 = !DIEnumerator(name: "_ISblank", value: 1)
!31 = !DIEnumerator(name: "_IScntrl", value: 2)
!32 = !DIEnumerator(name: "_ISpunct", value: 4)
!33 = !DIEnumerator(name: "_ISalnum", value: 8)
!34 = !{!35, !36, !38, !39, !40, !41}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!42 = !{!43, !0, !45, !67}
!43 = !DIGlobalVariableExpression(var: !44)
!44 = distinct !DIGlobalVariable(name: "exit_status", scope: !2, file: !3, line: 76, type: !39, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46)
!46 = distinct !DIGlobalVariable(name: "infomap", scope: !47, file: !48, line: 632, type: !64, isLocal: true, isDefinition: true)
!47 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !48, file: !48, line: 630, type: !49, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !53)
!48 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!53 = !{!54, !55, !56, !63}
!54 = !DILocalVariable(name: "program", arg: 1, scope: !47, file: !48, line: 630, type: !51)
!55 = !DILocalVariable(name: "node", scope: !47, file: !48, line: 642, type: !51)
!56 = !DILocalVariable(name: "map_prog", scope: !47, file: !48, line: 643, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !47, file: !48, line: 632, size: 128, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !59, file: !48, line: 632, baseType: !51, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !59, file: !48, line: 632, baseType: !51, size: 64, offset: 64)
!63 = !DILocalVariable(name: "lc_messages", scope: !47, file: !48, line: 655, type: !51)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 896, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 7)
!67 = !DIGlobalVariableExpression(var: !68)
!68 = distinct !DIGlobalVariable(name: "cfcc_msg", scope: !2, file: !3, line: 83, type: !69, isLocal: true, isDefinition: true)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!70 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!71 = !DIGlobalVariableExpression(var: !72)
!72 = distinct !DIGlobalVariable(name: "Version", scope: !73, file: !74, line: 2, type: !51, isLocal: false, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, globals: !76)
!74 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!75 = !{}
!76 = !{!71}
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !79, file: !105, line: 51, type: !106, isLocal: true, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !81, globals: !104)
!80 = !DIFile(filename: "./lib/c-strtold.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{!36, !82}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !83, line: 24, baseType: !84)
!83 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !85, line: 42, baseType: !86)
!85 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !85, line: 28, size: 1856, elements: !88)
!88 = !{!89, !95, !98, !101, !102}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !87, file: !85, line: 31, baseType: !90, size: 832)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 832, elements: !93)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !85, line: 31, flags: DIFlagFwdDecl)
!93 = !{!94}
!94 = !DISubrange(count: 13)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !87, file: !85, line: 34, baseType: !96, size: 64, offset: 832)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !87, file: !85, line: 35, baseType: !99, size: 64, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !87, file: !85, line: 36, baseType: !99, size: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !87, file: !85, line: 39, baseType: !103, size: 832, offset: 1024)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 832, elements: !93)
!104 = !{!77}
!105 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !82)
!107 = !DIGlobalVariableExpression(var: !108)
!108 = distinct !DIGlobalVariable(name: "file_name", scope: !109, file: !114, line: 36, type: !51, isLocal: true, isDefinition: true)
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, globals: !111)
!110 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!111 = !{!107, !112}
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !109, file: !114, line: 46, type: !70, isLocal: true, isDefinition: true)
!114 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!115 = !DIGlobalVariableExpression(var: !116)
!116 = distinct !DIGlobalVariable(name: "exit_failure", scope: !117, file: !120, line: 24, type: !121, isLocal: false, isDefinition: true)
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, globals: !119)
!118 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!119 = !{!115}
!120 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "program_name", scope: !124, file: !128, line: 33, type: !51, isLocal: false, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !126, globals: !127)
!125 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!35, !36}
!127 = !{!122}
!128 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !131, file: !146, line: 77, type: !181, isLocal: false, isDefinition: true)
!131 = distinct !DICompileUnit(language: DW_LANG_C99, file: !132, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, retainedTypes: !139, globals: !143)
!132 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !{!5, !134, !19}
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !135)
!135 = !{!136, !137, !138}
!136 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!137 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!138 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!139 = !{!39, !41, !140, !36}
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 62, baseType: !142)
!141 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!142 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!143 = !{!129, !144, !151, !163, !165, !170, !177, !179}
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !131, file: !146, line: 93, type: !147, isLocal: false, isDefinition: true)
!146 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 320, elements: !149)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!149 = !{!150}
!150 = !DISubrange(count: 10)
!151 = !DIGlobalVariableExpression(var: !152)
!152 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !131, file: !146, line: 1043, type: !153, isLocal: false, isDefinition: true)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !146, line: 57, size: 448, elements: !154)
!154 = !{!155, !156, !157, !161, !162}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !153, file: !146, line: 60, baseType: !5, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !146, line: 63, baseType: !39, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !153, file: !146, line: 67, baseType: !158, size: 256, offset: 64)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !153, file: !146, line: 70, baseType: !51, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !153, file: !146, line: 73, baseType: !51, size: 64, offset: 384)
!163 = !DIGlobalVariableExpression(var: !164)
!164 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !131, file: !146, line: 108, type: !153, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "slot0", scope: !131, file: !146, line: 834, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 256)
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "slotvec", scope: !131, file: !146, line: 837, type: !172, isLocal: true, isDefinition: true)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !146, line: 826, size: 128, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !173, file: !146, line: 828, baseType: !140, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !173, file: !146, line: 829, baseType: !36, size: 64, offset: 64)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "nslots", scope: !131, file: !146, line: 835, type: !39, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "slotvec0", scope: !131, file: !146, line: 836, type: !173, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 704, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 11)
!184 = !DIGlobalVariableExpression(var: !185)
!185 = distinct !DIGlobalVariable(name: "is_utf8", scope: !186, file: !187, line: 72, type: !39, isLocal: true, isDefinition: true)
!186 = distinct !DISubprogram(name: "unicode_to_mb", scope: !187, file: !187, line: 64, type: !188, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !263)
!187 = !DIFile(filename: "lib/unicodeio.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !38, !191, !194, !35}
!190 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!190, !51, !140, !35}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!190, !38, !51, !35}
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !199, globals: !258)
!198 = !DIFile(filename: "./lib/unicodeio.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!199 = !{!200, !202, !203, !140, !204, !35}
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !201, line: 29, baseType: !35)
!201 = !DIFile(filename: "/usr/include/iconv.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !207)
!206 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 241, size: 1728, elements: !209)
!208 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !230, !231, !232, !233, !236, !237, !239, !243, !246, !248, !249, !250, !251, !252, !253, !254}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !207, file: !208, line: 242, baseType: !39, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !207, file: !208, line: 247, baseType: !36, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !207, file: !208, line: 248, baseType: !36, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !207, file: !208, line: 249, baseType: !36, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !207, file: !208, line: 250, baseType: !36, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !207, file: !208, line: 251, baseType: !36, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !207, file: !208, line: 252, baseType: !36, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !207, file: !208, line: 253, baseType: !36, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !207, file: !208, line: 254, baseType: !36, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !207, file: !208, line: 256, baseType: !36, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !207, file: !208, line: 257, baseType: !36, size: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !207, file: !208, line: 258, baseType: !36, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !207, file: !208, line: 260, baseType: !223, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !208, line: 156, size: 192, elements: !225)
!225 = !{!226, !227, !229}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !224, file: !208, line: 157, baseType: !223, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !224, file: !208, line: 158, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !224, file: !208, line: 162, baseType: !39, size: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !207, file: !208, line: 262, baseType: !228, size: 64, offset: 832)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !207, file: !208, line: 264, baseType: !39, size: 32, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !207, file: !208, line: 268, baseType: !39, size: 32, offset: 928)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !207, file: !208, line: 270, baseType: !234, size: 64, offset: 960)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !235, line: 140, baseType: !190)
!235 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !207, file: !208, line: 274, baseType: !41, size: 16, offset: 1024)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !207, file: !208, line: 275, baseType: !238, size: 8, offset: 1040)
!238 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !207, file: !208, line: 276, baseType: !240, size: 8, offset: 1048)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 1)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !207, file: !208, line: 280, baseType: !244, size: 64, offset: 1088)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !208, line: 150, baseType: null)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !207, file: !208, line: 289, baseType: !247, size: 64, offset: 1152)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !235, line: 141, baseType: !190)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !207, file: !208, line: 297, baseType: !35, size: 64, offset: 1216)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !207, file: !208, line: 298, baseType: !35, size: 64, offset: 1280)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !207, file: !208, line: 299, baseType: !35, size: 64, offset: 1344)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !207, file: !208, line: 300, baseType: !35, size: 64, offset: 1408)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !207, file: !208, line: 302, baseType: !140, size: 64, offset: 1472)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !207, file: !208, line: 303, baseType: !39, size: 32, offset: 1536)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !207, file: !208, line: 305, baseType: !255, size: 160, offset: 1568)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 20)
!258 = !{!259, !184, !261}
!259 = !DIGlobalVariableExpression(var: !260)
!260 = distinct !DIGlobalVariable(name: "initialized", scope: !186, file: !187, line: 71, type: !39, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262)
!262 = distinct !DIGlobalVariable(name: "utf8_to_local", scope: !186, file: !187, line: 74, type: !200, isLocal: true, isDefinition: true)
!263 = !{!264, !265, !266, !267, !268, !272, !273, !276, !282, !283, !284, !285, !286}
!264 = !DILocalVariable(name: "code", arg: 1, scope: !186, file: !187, line: 64, type: !38)
!265 = !DILocalVariable(name: "success", arg: 2, scope: !186, file: !187, line: 65, type: !191)
!266 = !DILocalVariable(name: "failure", arg: 3, scope: !186, file: !187, line: 67, type: !194)
!267 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !186, file: !187, line: 69, type: !35)
!268 = !DILocalVariable(name: "inbuf", scope: !186, file: !187, line: 77, type: !269)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 48, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 6)
!272 = !DILocalVariable(name: "count", scope: !186, file: !187, line: 78, type: !39)
!273 = !DILocalVariable(name: "charset", scope: !274, file: !187, line: 82, type: !51)
!274 = distinct !DILexicalBlock(scope: !275, file: !187, line: 81, column: 5)
!275 = distinct !DILexicalBlock(scope: !186, file: !187, line: 80, column: 7)
!276 = !DILocalVariable(name: "outbuf", scope: !277, file: !187, line: 116, type: !279)
!277 = distinct !DILexicalBlock(scope: !278, file: !187, line: 115, column: 5)
!278 = distinct !DILexicalBlock(scope: !186, file: !187, line: 114, column: 7)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 200, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 25)
!282 = !DILocalVariable(name: "inptr", scope: !277, file: !187, line: 117, type: !51)
!283 = !DILocalVariable(name: "inbytesleft", scope: !277, file: !187, line: 118, type: !140)
!284 = !DILocalVariable(name: "outptr", scope: !277, file: !187, line: 119, type: !36)
!285 = !DILocalVariable(name: "outbytesleft", scope: !277, file: !187, line: 120, type: !140)
!286 = !DILocalVariable(name: "res", scope: !277, file: !187, line: 121, type: !140)
!287 = !DIGlobalVariableExpression(var: !288)
!288 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !289, file: !292, line: 26, type: !293, isLocal: false, isDefinition: true)
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, globals: !291)
!290 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!291 = !{!287}
!292 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 376, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 47)
!296 = !DIGlobalVariableExpression(var: !297)
!297 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !298, file: !641, line: 120, type: !642, isLocal: true, isDefinition: true)
!298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !299, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !300, retainedTypes: !639, globals: !640)
!299 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!300 = !{!301}
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !302, line: 41, size: 32, elements: !303)
!302 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!304 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!305 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!306 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!307 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!308 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!309 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!310 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!311 = !DIEnumerator(name: "DAY_1", value: 131079)
!312 = !DIEnumerator(name: "DAY_2", value: 131080)
!313 = !DIEnumerator(name: "DAY_3", value: 131081)
!314 = !DIEnumerator(name: "DAY_4", value: 131082)
!315 = !DIEnumerator(name: "DAY_5", value: 131083)
!316 = !DIEnumerator(name: "DAY_6", value: 131084)
!317 = !DIEnumerator(name: "DAY_7", value: 131085)
!318 = !DIEnumerator(name: "ABMON_1", value: 131086)
!319 = !DIEnumerator(name: "ABMON_2", value: 131087)
!320 = !DIEnumerator(name: "ABMON_3", value: 131088)
!321 = !DIEnumerator(name: "ABMON_4", value: 131089)
!322 = !DIEnumerator(name: "ABMON_5", value: 131090)
!323 = !DIEnumerator(name: "ABMON_6", value: 131091)
!324 = !DIEnumerator(name: "ABMON_7", value: 131092)
!325 = !DIEnumerator(name: "ABMON_8", value: 131093)
!326 = !DIEnumerator(name: "ABMON_9", value: 131094)
!327 = !DIEnumerator(name: "ABMON_10", value: 131095)
!328 = !DIEnumerator(name: "ABMON_11", value: 131096)
!329 = !DIEnumerator(name: "ABMON_12", value: 131097)
!330 = !DIEnumerator(name: "MON_1", value: 131098)
!331 = !DIEnumerator(name: "MON_2", value: 131099)
!332 = !DIEnumerator(name: "MON_3", value: 131100)
!333 = !DIEnumerator(name: "MON_4", value: 131101)
!334 = !DIEnumerator(name: "MON_5", value: 131102)
!335 = !DIEnumerator(name: "MON_6", value: 131103)
!336 = !DIEnumerator(name: "MON_7", value: 131104)
!337 = !DIEnumerator(name: "MON_8", value: 131105)
!338 = !DIEnumerator(name: "MON_9", value: 131106)
!339 = !DIEnumerator(name: "MON_10", value: 131107)
!340 = !DIEnumerator(name: "MON_11", value: 131108)
!341 = !DIEnumerator(name: "MON_12", value: 131109)
!342 = !DIEnumerator(name: "AM_STR", value: 131110)
!343 = !DIEnumerator(name: "PM_STR", value: 131111)
!344 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!345 = !DIEnumerator(name: "D_FMT", value: 131113)
!346 = !DIEnumerator(name: "T_FMT", value: 131114)
!347 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!348 = !DIEnumerator(name: "ERA", value: 131116)
!349 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!350 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!351 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!352 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!353 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!354 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!355 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!356 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!357 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!358 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!359 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!360 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!361 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!362 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!363 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!364 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!365 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!366 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!367 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!368 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!369 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!370 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!371 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!372 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!373 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!374 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!375 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!376 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!377 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!378 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!379 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!380 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!381 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!382 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!383 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!384 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!385 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!386 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!387 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!388 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!389 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!390 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!391 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!392 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!393 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!394 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!395 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!396 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!397 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!398 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!399 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!400 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!401 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!402 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!403 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!404 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!405 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!406 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!407 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!408 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!409 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!410 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!411 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!412 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!413 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!414 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!415 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!416 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!417 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!418 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!419 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!420 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!421 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!422 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!423 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!424 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!425 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!426 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!427 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!428 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!429 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!430 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!431 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!432 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!433 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!434 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!435 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!436 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!437 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!438 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!439 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!440 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!441 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!442 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!443 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!444 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!445 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!446 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!447 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!448 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!449 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!450 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!451 = !DIEnumerator(name: "CODESET", value: 14)
!452 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!453 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!454 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!455 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!498 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!499 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!500 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!501 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!502 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!503 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!504 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!505 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!506 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!507 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!508 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!509 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!510 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!511 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!512 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!513 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!514 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!515 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!516 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!517 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!518 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!519 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!520 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!522 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!523 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!524 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!525 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!526 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!527 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!528 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!529 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!530 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!531 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!532 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!533 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!534 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!535 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!536 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!537 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!538 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!539 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!540 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!541 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!542 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!543 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!544 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!545 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!552 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!553 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!562 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!563 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!566 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!567 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!568 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!569 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!570 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!571 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!572 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!573 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!574 = !DIEnumerator(name: "THOUSEP", value: 65537)
!575 = !DIEnumerator(name: "__GROUPING", value: 65538)
!576 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!577 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!578 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!579 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!580 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!581 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!582 = !DIEnumerator(name: "__YESSTR", value: 327682)
!583 = !DIEnumerator(name: "__NOSTR", value: 327683)
!584 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!585 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!586 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!587 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!588 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!589 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!590 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!591 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!592 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!593 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!594 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!595 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!596 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!597 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!598 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!599 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!600 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!601 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!602 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!603 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!604 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!605 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!606 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!607 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!608 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!609 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!610 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!611 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!612 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!613 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!614 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!615 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!616 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!617 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!618 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!619 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!620 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!623 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!624 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!625 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!626 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!627 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!628 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!631 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!637 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!638 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!639 = !{!35, !36, !202}
!640 = !{!296}
!641 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!642 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!643 = distinct !DICompileUnit(language: DW_LANG_C99, file: !644, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75)
!644 = !DIFile(filename: "lib/unistr/u8-uctomb-aux.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!645 = distinct !DICompileUnit(language: DW_LANG_C99, file: !646, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !647, retainedTypes: !652)
!646 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!647 = !{!648}
!648 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !649, line: 41, size: 32, elements: !650)
!649 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!650 = !{!651}
!651 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!652 = !{!35}
!653 = distinct !DICompileUnit(language: DW_LANG_C99, file: !654, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !655, retainedTypes: !669)
!654 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!655 = !{!656}
!656 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !658, file: !657, line: 192, size: 32, elements: !667)
!657 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!658 = distinct !DISubprogram(name: "x2nrealloc", scope: !657, file: !657, line: 180, type: !659, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !662)
!659 = !DISubroutineType(types: !660)
!660 = !{!35, !35, !661, !140}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!662 = !{!663, !664, !665, !666}
!663 = !DILocalVariable(name: "p", arg: 1, scope: !658, file: !657, line: 180, type: !35)
!664 = !DILocalVariable(name: "pn", arg: 2, scope: !658, file: !657, line: 180, type: !661)
!665 = !DILocalVariable(name: "s", arg: 3, scope: !658, file: !657, line: 180, type: !140)
!666 = !DILocalVariable(name: "n", scope: !658, file: !657, line: 182, type: !140)
!667 = !{!668}
!668 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!669 = !{!140, !36, !35}
!670 = distinct !DICompileUnit(language: DW_LANG_C99, file: !671, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75)
!671 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75)
!673 = !DIFile(filename: "./lib/xprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !652)
!675 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !678)
!677 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!678 = !{!140}
!679 = distinct !DICompileUnit(language: DW_LANG_C99, file: !680, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75)
!680 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!681 = distinct !DICompileUnit(language: DW_LANG_C99, file: !682, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75)
!682 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !684, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75)
!684 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!685 = distinct !DICompileUnit(language: DW_LANG_C99, file: !686, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !652)
!686 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!687 = distinct !DICompileUnit(language: DW_LANG_C99, file: !688, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !652)
!688 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!689 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!690 = !{i32 2, !"Dwarf Version", i32 4}
!691 = !{i32 2, !"Debug Info Version", i32 3}
!692 = !{i32 1, !"wchar_size", i32 4}
!693 = !{i32 7, !"PIC Level", i32 2}
!694 = !{i32 7, !"PIE Level", i32 2}
!695 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 87, type: !696, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !39}
!698 = !{!699}
!699 = !DILocalVariable(name: "status", arg: 1, scope: !695, file: !3, line: 87, type: !39)
!700 = !DIExpression()
!701 = !DILocation(line: 87, column: 12, scope: !695)
!702 = !DILocation(line: 89, column: 14, scope: !703)
!703 = distinct !DILexicalBlock(scope: !695, file: !3, line: 89, column: 7)
!704 = !DILocation(line: 89, column: 7, scope: !695)
!705 = !DILocation(line: 90, column: 5, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !3, line: 90, column: 5)
!707 = !{!708, !708, i64 0}
!708 = !{!"any pointer", !709, i64 0}
!709 = !{!"omnipotent char", !710, i64 0}
!710 = !{!"Simple C/C++ TBAA"}
!711 = !DILocation(line: 93, column: 7, scope: !712)
!712 = distinct !DILexicalBlock(scope: !703, file: !3, line: 92, column: 5)
!713 = !DILocation(line: 98, column: 7, scope: !712)
!714 = !DILocation(line: 102, column: 7, scope: !712)
!715 = !DILocation(line: 103, column: 7, scope: !712)
!716 = !DILocation(line: 104, column: 7, scope: !712)
!717 = !DILocation(line: 110, column: 7, scope: !712)
!718 = !DILocation(line: 122, column: 7, scope: !712)
!719 = !DILocation(line: 128, column: 7, scope: !712)
!720 = !DILocation(line: 138, column: 7, scope: !712)
!721 = !DILocation(line: 642, column: 15, scope: !47, inlinedAt: !722)
!722 = distinct !DILocation(line: 139, column: 7, scope: !712)
!723 = !DILocation(line: 651, column: 3, scope: !47, inlinedAt: !722)
!724 = !DILocation(line: 655, column: 29, scope: !47, inlinedAt: !722)
!725 = !DILocation(line: 655, column: 15, scope: !47, inlinedAt: !722)
!726 = !DILocation(line: 656, column: 7, scope: !727, inlinedAt: !722)
!727 = distinct !DILexicalBlock(scope: !47, file: !48, line: 656, column: 7)
!728 = !DILocation(line: 656, column: 19, scope: !727, inlinedAt: !722)
!729 = !DILocation(line: 656, column: 22, scope: !727, inlinedAt: !722)
!730 = !DILocation(line: 656, column: 7, scope: !47, inlinedAt: !722)
!731 = !DILocation(line: 662, column: 7, scope: !732, inlinedAt: !722)
!732 = distinct !DILexicalBlock(scope: !727, file: !48, line: 657, column: 5)
!733 = !DILocation(line: 664, column: 5, scope: !732, inlinedAt: !722)
!734 = !DILocation(line: 665, column: 3, scope: !47, inlinedAt: !722)
!735 = !DILocation(line: 667, column: 3, scope: !47, inlinedAt: !722)
!736 = !DILocation(line: 141, column: 3, scope: !695)
!737 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 651, type: !738, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{!39, !39, !203}
!740 = !{!741, !742, !743, !744}
!741 = !DILocalVariable(name: "argc", arg: 1, scope: !737, file: !3, line: 651, type: !39)
!742 = !DILocalVariable(name: "argv", arg: 2, scope: !737, file: !3, line: 651, type: !203)
!743 = !DILocalVariable(name: "format", scope: !737, file: !3, line: 653, type: !36)
!744 = !DILocalVariable(name: "args_used", scope: !737, file: !3, line: 654, type: !39)
!745 = !DILocalVariable(name: "ok", scope: !746, file: !3, line: 488, type: !167)
!746 = distinct !DISubprogram(name: "print_formatted", scope: !3, file: !3, line: 478, type: !747, isLocal: true, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{!39, !51, !39, !203}
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !745, !761, !773, !780}
!750 = !DILocalVariable(name: "format", arg: 1, scope: !746, file: !3, line: 478, type: !51)
!751 = !DILocalVariable(name: "argc", arg: 2, scope: !746, file: !3, line: 478, type: !39)
!752 = !DILocalVariable(name: "argv", arg: 3, scope: !746, file: !3, line: 478, type: !203)
!753 = !DILocalVariable(name: "save_argc", scope: !746, file: !3, line: 480, type: !39)
!754 = !DILocalVariable(name: "f", scope: !746, file: !3, line: 481, type: !51)
!755 = !DILocalVariable(name: "direc_start", scope: !746, file: !3, line: 482, type: !51)
!756 = !DILocalVariable(name: "direc_length", scope: !746, file: !3, line: 483, type: !140)
!757 = !DILocalVariable(name: "have_field_width", scope: !746, file: !3, line: 484, type: !70)
!758 = !DILocalVariable(name: "field_width", scope: !746, file: !3, line: 485, type: !39)
!759 = !DILocalVariable(name: "have_precision", scope: !746, file: !3, line: 486, type: !70)
!760 = !DILocalVariable(name: "precision", scope: !746, file: !3, line: 487, type: !39)
!761 = !DILocalVariable(name: "width", scope: !762, file: !3, line: 562, type: !770)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 561, column: 17)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 560, column: 19)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 557, column: 13)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 556, column: 15)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 493, column: 9)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 491, column: 5)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 490, column: 3)
!769 = distinct !DILexicalBlock(scope: !746, file: !3, line: 490, column: 3)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !771, line: 111, baseType: !772)
!771 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !235, line: 61, baseType: !190)
!773 = !DILocalVariable(name: "prec", scope: !774, file: !3, line: 592, type: !770)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 591, column: 21)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 590, column: 23)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 587, column: 17)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 586, column: 19)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 582, column: 13)
!779 = distinct !DILexicalBlock(scope: !766, file: !3, line: 581, column: 15)
!780 = !DILocalVariable(name: "conversion", scope: !781, file: !3, line: 625, type: !40)
!781 = distinct !DILexicalBlock(scope: !766, file: !3, line: 624, column: 11)
!782 = !DILocation(line: 488, column: 8, scope: !746, inlinedAt: !783)
!783 = distinct !DILocation(line: 703, column: 19, scope: !784)
!784 = distinct !DILexicalBlock(scope: !737, file: !3, line: 702, column: 5)
!785 = !DILocation(line: 651, column: 11, scope: !737)
!786 = !DILocation(line: 651, column: 24, scope: !737)
!787 = !DILocation(line: 657, column: 21, scope: !737)
!788 = !DILocation(line: 657, column: 3, scope: !737)
!789 = !DILocation(line: 658, column: 3, scope: !737)
!790 = !DILocation(line: 659, column: 3, scope: !737)
!791 = !DILocation(line: 660, column: 3, scope: !737)
!792 = !DILocation(line: 662, column: 3, scope: !737)
!793 = !DILocation(line: 666, column: 22, scope: !737)
!794 = !DILocation(line: 666, column: 49, scope: !737)
!795 = !DILocation(line: 666, column: 19, scope: !737)
!796 = !{!797, !797, i64 0}
!797 = !{!"_Bool", !709, i64 0}
!798 = !DILocation(line: 670, column: 12, scope: !799)
!799 = distinct !DILexicalBlock(scope: !737, file: !3, line: 670, column: 7)
!800 = !DILocation(line: 670, column: 7, scope: !737)
!801 = !DILocation(line: 672, column: 11, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 672, column: 11)
!803 = distinct !DILexicalBlock(scope: !799, file: !3, line: 671, column: 5)
!804 = !DILocation(line: 672, column: 11, scope: !803)
!805 = !DILocation(line: 673, column: 9, scope: !802)
!806 = !DILocation(line: 675, column: 11, scope: !807)
!807 = distinct !DILexicalBlock(scope: !803, file: !3, line: 675, column: 11)
!808 = !DILocation(line: 675, column: 11, scope: !803)
!809 = !DILocation(line: 677, column: 24, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !3, line: 676, column: 9)
!811 = !DILocation(line: 677, column: 60, scope: !810)
!812 = !DILocation(line: 677, column: 11, scope: !810)
!813 = !DILocation(line: 679, column: 11, scope: !810)
!814 = !DILocation(line: 685, column: 9, scope: !815)
!815 = distinct !DILexicalBlock(scope: !737, file: !3, line: 685, column: 7)
!816 = !DILocation(line: 685, column: 16, scope: !815)
!817 = !DILocation(line: 685, column: 19, scope: !815)
!818 = !DILocation(line: 685, column: 7, scope: !737)
!819 = !DILocation(line: 691, column: 12, scope: !820)
!820 = distinct !DILexicalBlock(scope: !737, file: !3, line: 691, column: 7)
!821 = !DILocation(line: 691, column: 7, scope: !737)
!822 = !DILocation(line: 687, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !815, file: !3, line: 686, column: 5)
!824 = !DILocation(line: 697, column: 12, scope: !737)
!825 = !DILocation(line: 693, column: 20, scope: !826)
!826 = distinct !DILexicalBlock(scope: !820, file: !3, line: 692, column: 5)
!827 = !DILocation(line: 693, column: 7, scope: !826)
!828 = !DILocation(line: 694, column: 7, scope: !826)
!829 = !DILocation(line: 653, column: 9, scope: !737)
!830 = !DILocation(line: 698, column: 8, scope: !737)
!831 = !DILocation(line: 699, column: 8, scope: !737)
!832 = !DILocation(line: 701, column: 3, scope: !737)
!833 = distinct !{!833, !832, !834}
!834 = !DILocation(line: 707, column: 35, scope: !737)
!835 = !DILocation(line: 478, column: 30, scope: !746, inlinedAt: !783)
!836 = !DILocation(line: 478, column: 42, scope: !746, inlinedAt: !783)
!837 = !DILocation(line: 478, column: 55, scope: !746, inlinedAt: !783)
!838 = !DILocation(line: 480, column: 7, scope: !746, inlinedAt: !783)
!839 = !DILocation(line: 485, column: 7, scope: !746, inlinedAt: !783)
!840 = !DILocation(line: 487, column: 7, scope: !746, inlinedAt: !783)
!841 = !DILocation(line: 488, column: 3, scope: !746, inlinedAt: !783)
!842 = !DILocation(line: 481, column: 15, scope: !746, inlinedAt: !783)
!843 = !DILocation(line: 490, column: 20, scope: !768, inlinedAt: !783)
!844 = !{!709, !709, i64 0}
!845 = !DILocation(line: 490, column: 3, scope: !769, inlinedAt: !783)
!846 = !DILocation(line: 492, column: 15, scope: !767, inlinedAt: !783)
!847 = !DILocation(line: 492, column: 7, scope: !767, inlinedAt: !783)
!848 = !DILocation(line: 495, column: 26, scope: !766, inlinedAt: !783)
!849 = !DILocation(line: 482, column: 15, scope: !746, inlinedAt: !783)
!850 = !DILocation(line: 483, column: 10, scope: !746, inlinedAt: !783)
!851 = !DILocation(line: 486, column: 8, scope: !746, inlinedAt: !783)
!852 = !DILocation(line: 484, column: 8, scope: !746, inlinedAt: !783)
!853 = !DILocation(line: 498, column: 15, scope: !854, inlinedAt: !783)
!854 = distinct !DILexicalBlock(scope: !766, file: !3, line: 498, column: 15)
!855 = !DILocation(line: 498, column: 15, scope: !766, inlinedAt: !783)
!856 = !DILocalVariable(name: "__c", arg: 1, scope: !857, file: !858, line: 105, type: !39)
!857 = distinct !DISubprogram(name: "putchar_unlocked", scope: !858, file: !858, line: 105, type: !859, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !861)
!858 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!859 = !DISubroutineType(types: !860)
!860 = !{!39, !39}
!861 = !{!856}
!862 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !863)
!863 = distinct !DILocation(line: 500, column: 15, scope: !864, inlinedAt: !783)
!864 = distinct !DILexicalBlock(scope: !854, file: !3, line: 499, column: 13)
!865 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !863)
!866 = !{!867, !708, i64 40}
!867 = !{!"_IO_FILE", !868, i64 0, !708, i64 8, !708, i64 16, !708, i64 24, !708, i64 32, !708, i64 40, !708, i64 48, !708, i64 56, !708, i64 64, !708, i64 72, !708, i64 80, !708, i64 88, !708, i64 96, !708, i64 104, !868, i64 112, !868, i64 116, !869, i64 120, !870, i64 128, !709, i64 130, !709, i64 131, !708, i64 136, !869, i64 144, !708, i64 152, !708, i64 160, !708, i64 168, !708, i64 176, !869, i64 184, !868, i64 192, !709, i64 196}
!868 = !{!"int", !709, i64 0}
!869 = !{!"long", !709, i64 0}
!870 = !{!"short", !709, i64 0}
!871 = !{!867, !708, i64 48}
!872 = !{!"branch_weights", i32 2000, i32 1}
!873 = !DILocation(line: 507, column: 24, scope: !874, inlinedAt: !783)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 507, column: 19)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 504, column: 13)
!876 = distinct !DILexicalBlock(scope: !766, file: !3, line: 503, column: 15)
!877 = !DILocation(line: 507, column: 19, scope: !875, inlinedAt: !783)
!878 = !DILocation(line: 509, column: 37, scope: !879, inlinedAt: !783)
!879 = distinct !DILexicalBlock(scope: !874, file: !3, line: 508, column: 17)
!880 = !DILocalVariable(name: "str", arg: 1, scope: !881, file: !3, line: 313, type: !51)
!881 = distinct !DISubprogram(name: "print_esc_string", scope: !3, file: !3, line: 313, type: !49, isLocal: true, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !882)
!882 = !{!880}
!883 = !DILocation(line: 313, column: 31, scope: !881, inlinedAt: !884)
!884 = distinct !DILocation(line: 509, column: 19, scope: !879, inlinedAt: !783)
!885 = !DILocation(line: 315, column: 3, scope: !881, inlinedAt: !884)
!886 = !DILocation(line: 315, column: 10, scope: !887, inlinedAt: !884)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 315, column: 3)
!888 = distinct !DILexicalBlock(scope: !881, file: !3, line: 315, column: 3)
!889 = !DILocation(line: 315, column: 3, scope: !888, inlinedAt: !884)
!890 = !DILocation(line: 317, column: 14, scope: !891, inlinedAt: !884)
!891 = distinct !DILexicalBlock(scope: !887, file: !3, line: 316, column: 9)
!892 = !DILocation(line: 317, column: 11, scope: !891, inlinedAt: !884)
!893 = !DILocation(line: 317, column: 7, scope: !891, inlinedAt: !884)
!894 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !895)
!895 = distinct !DILocation(line: 319, column: 7, scope: !891, inlinedAt: !884)
!896 = !DILocation(line: 316, column: 9, scope: !891, inlinedAt: !884)
!897 = !DILocation(line: 315, column: 19, scope: !887, inlinedAt: !884)
!898 = !DILocation(line: 315, column: 3, scope: !887, inlinedAt: !884)
!899 = distinct !{!899, !900, !901}
!900 = !DILocation(line: 315, column: 3, scope: !888)
!901 = !DILocation(line: 319, column: 7, scope: !888)
!902 = !DILocation(line: 510, column: 19, scope: !879, inlinedAt: !783)
!903 = !DILocation(line: 511, column: 19, scope: !879, inlinedAt: !783)
!904 = !DILocation(line: 512, column: 17, scope: !879, inlinedAt: !783)
!905 = !DILocation(line: 518, column: 24, scope: !906, inlinedAt: !783)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 518, column: 19)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 517, column: 13)
!908 = distinct !DILexicalBlock(scope: !766, file: !3, line: 516, column: 15)
!909 = !DILocation(line: 518, column: 19, scope: !907, inlinedAt: !783)
!910 = !DILocation(line: 520, column: 19, scope: !911, inlinedAt: !783)
!911 = distinct !DILexicalBlock(scope: !906, file: !3, line: 519, column: 17)
!912 = !DILocation(line: 522, column: 19, scope: !911, inlinedAt: !783)
!913 = !DILocation(line: 523, column: 19, scope: !911, inlinedAt: !783)
!914 = !DILocation(line: 524, column: 17, scope: !911, inlinedAt: !783)
!915 = !DILocation(line: 528, column: 11, scope: !766, inlinedAt: !783)
!916 = !DILocation(line: 531, column: 51, scope: !766, inlinedAt: !783)
!917 = !DILocation(line: 531, column: 41, scope: !766, inlinedAt: !783)
!918 = !DILocation(line: 531, column: 31, scope: !766, inlinedAt: !783)
!919 = !DILocation(line: 531, column: 21, scope: !766, inlinedAt: !783)
!920 = !DILocation(line: 530, column: 71, scope: !766, inlinedAt: !783)
!921 = !DILocation(line: 530, column: 61, scope: !766, inlinedAt: !783)
!922 = !DILocation(line: 530, column: 51, scope: !766, inlinedAt: !783)
!923 = !DILocation(line: 530, column: 31, scope: !766, inlinedAt: !783)
!924 = !DILocation(line: 529, column: 69, scope: !766, inlinedAt: !783)
!925 = !DILocation(line: 529, column: 29, scope: !766, inlinedAt: !783)
!926 = !DILocation(line: 529, column: 19, scope: !766, inlinedAt: !783)
!927 = !DILocation(line: 530, column: 41, scope: !766, inlinedAt: !783)
!928 = !DILocation(line: 533, column: 11, scope: !766, inlinedAt: !783)
!929 = !DILocation(line: 534, column: 21, scope: !930, inlinedAt: !783)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 533, column: 11)
!931 = distinct !DILexicalBlock(scope: !766, file: !3, line: 533, column: 11)
!932 = !DILocation(line: 534, column: 13, scope: !930, inlinedAt: !783)
!933 = !DILocation(line: 541, column: 57, scope: !934, inlinedAt: !783)
!934 = distinct !DILexicalBlock(scope: !930, file: !3, line: 535, column: 15)
!935 = !DILocation(line: 541, column: 47, scope: !934, inlinedAt: !783)
!936 = !DILocation(line: 541, column: 37, scope: !934, inlinedAt: !783)
!937 = !DILocation(line: 541, column: 27, scope: !934, inlinedAt: !783)
!938 = !DILocation(line: 540, column: 65, scope: !934, inlinedAt: !783)
!939 = !DILocation(line: 540, column: 55, scope: !934, inlinedAt: !783)
!940 = !DILocation(line: 540, column: 45, scope: !934, inlinedAt: !783)
!941 = !DILocation(line: 540, column: 35, scope: !934, inlinedAt: !783)
!942 = !DILocation(line: 540, column: 25, scope: !934, inlinedAt: !783)
!943 = !DILocation(line: 542, column: 17, scope: !934, inlinedAt: !783)
!944 = !DILocation(line: 546, column: 65, scope: !934, inlinedAt: !783)
!945 = !DILocation(line: 546, column: 55, scope: !934, inlinedAt: !783)
!946 = !DILocation(line: 546, column: 45, scope: !934, inlinedAt: !783)
!947 = !DILocation(line: 546, column: 35, scope: !934, inlinedAt: !783)
!948 = !DILocation(line: 546, column: 25, scope: !934, inlinedAt: !783)
!949 = !DILocation(line: 547, column: 17, scope: !934, inlinedAt: !783)
!950 = !DILocation(line: 549, column: 35, scope: !934, inlinedAt: !783)
!951 = !DILocation(line: 549, column: 25, scope: !934, inlinedAt: !783)
!952 = !DILocation(line: 550, column: 17, scope: !934, inlinedAt: !783)
!953 = !DILocation(line: 533, column: 20, scope: !930, inlinedAt: !783)
!954 = !DILocation(line: 533, column: 36, scope: !930, inlinedAt: !783)
!955 = !DILocation(line: 533, column: 11, scope: !930, inlinedAt: !783)
!956 = distinct !{!956, !957, !958}
!957 = !DILocation(line: 533, column: 11, scope: !931)
!958 = !DILocation(line: 553, column: 15, scope: !931)
!959 = !DILocation(line: 556, column: 18, scope: !765, inlinedAt: !783)
!960 = !DILocation(line: 556, column: 15, scope: !766, inlinedAt: !783)
!961 = !DILocation(line: 558, column: 15, scope: !764, inlinedAt: !783)
!962 = !DILocation(line: 559, column: 15, scope: !764, inlinedAt: !783)
!963 = !DILocation(line: 560, column: 24, scope: !763, inlinedAt: !783)
!964 = !DILocation(line: 560, column: 19, scope: !764, inlinedAt: !783)
!965 = !DILocation(line: 562, column: 48, scope: !762, inlinedAt: !783)
!966 = !DILocation(line: 562, column: 36, scope: !762, inlinedAt: !783)
!967 = !DILocation(line: 562, column: 28, scope: !762, inlinedAt: !783)
!968 = !DILocation(line: 563, column: 40, scope: !969, inlinedAt: !783)
!969 = distinct !DILexicalBlock(scope: !762, file: !3, line: 563, column: 23)
!970 = !DILocation(line: 564, column: 35, scope: !969, inlinedAt: !783)
!971 = !DILocation(line: 568, column: 19, scope: !762, inlinedAt: !783)
!972 = !DILocation(line: 569, column: 19, scope: !762, inlinedAt: !783)
!973 = !DILocation(line: 570, column: 17, scope: !762, inlinedAt: !783)
!974 = !DILocation(line: 566, column: 21, scope: !969, inlinedAt: !783)
!975 = !DILocation(line: 576, column: 20, scope: !765, inlinedAt: !783)
!976 = !DILocation(line: 576, column: 13, scope: !765, inlinedAt: !783)
!977 = !DILocation(line: 578, column: 17, scope: !978, inlinedAt: !783)
!978 = distinct !DILexicalBlock(scope: !765, file: !3, line: 577, column: 15)
!979 = !DILocation(line: 579, column: 17, scope: !978, inlinedAt: !783)
!980 = distinct !{!980, !981, !982}
!981 = !DILocation(line: 576, column: 13, scope: !765)
!982 = !DILocation(line: 580, column: 15, scope: !765)
!983 = !DILocation(line: 581, column: 15, scope: !779, inlinedAt: !783)
!984 = !DILocation(line: 581, column: 18, scope: !779, inlinedAt: !783)
!985 = !DILocation(line: 581, column: 15, scope: !766, inlinedAt: !783)
!986 = !DILocation(line: 583, column: 15, scope: !778, inlinedAt: !783)
!987 = !DILocation(line: 585, column: 23, scope: !778, inlinedAt: !783)
!988 = !DILocation(line: 586, column: 19, scope: !777, inlinedAt: !783)
!989 = !DILocation(line: 586, column: 22, scope: !777, inlinedAt: !783)
!990 = !DILocation(line: 586, column: 19, scope: !778, inlinedAt: !783)
!991 = !DILocation(line: 588, column: 19, scope: !776, inlinedAt: !783)
!992 = !DILocation(line: 589, column: 19, scope: !776, inlinedAt: !783)
!993 = !DILocation(line: 590, column: 28, scope: !775, inlinedAt: !783)
!994 = !DILocation(line: 590, column: 23, scope: !776, inlinedAt: !783)
!995 = !DILocation(line: 592, column: 51, scope: !774, inlinedAt: !783)
!996 = !DILocation(line: 592, column: 39, scope: !774, inlinedAt: !783)
!997 = !DILocation(line: 592, column: 32, scope: !774, inlinedAt: !783)
!998 = !DILocation(line: 593, column: 32, scope: !999, inlinedAt: !783)
!999 = distinct !DILexicalBlock(scope: !774, file: !3, line: 593, column: 27)
!1000 = !DILocation(line: 593, column: 27, scope: !774, inlinedAt: !783)
!1001 = !DILocation(line: 600, column: 40, scope: !1002, inlinedAt: !783)
!1002 = distinct !DILexicalBlock(scope: !999, file: !3, line: 600, column: 32)
!1003 = !DILocation(line: 600, column: 32, scope: !999, inlinedAt: !783)
!1004 = !DILocation(line: 601, column: 25, scope: !1002, inlinedAt: !783)
!1005 = !DILocation(line: 604, column: 37, scope: !1002, inlinedAt: !783)
!1006 = !DILocation(line: 605, column: 23, scope: !774, inlinedAt: !783)
!1007 = !DILocation(line: 606, column: 23, scope: !774, inlinedAt: !783)
!1008 = !DILocation(line: 607, column: 21, scope: !774, inlinedAt: !783)
!1009 = !DILocation(line: 613, column: 24, scope: !777, inlinedAt: !783)
!1010 = !DILocation(line: 613, column: 17, scope: !777, inlinedAt: !783)
!1011 = distinct !{!1011, !1012, !1013}
!1012 = !DILocation(line: 613, column: 17, scope: !777)
!1013 = !DILocation(line: 617, column: 19, scope: !777)
!1014 = !DILocation(line: 615, column: 21, scope: !1015, inlinedAt: !783)
!1015 = distinct !DILexicalBlock(scope: !777, file: !3, line: 614, column: 19)
!1016 = !DILocation(line: 620, column: 11, scope: !766, inlinedAt: !783)
!1017 = !DILocation(line: 620, column: 18, scope: !766, inlinedAt: !783)
!1018 = !DILocation(line: 620, column: 28, scope: !766, inlinedAt: !783)
!1019 = !DILocation(line: 622, column: 13, scope: !766, inlinedAt: !783)
!1020 = distinct !{!1020, !1021, !1022}
!1021 = !DILocation(line: 620, column: 11, scope: !766)
!1022 = !DILocation(line: 622, column: 15, scope: !766)
!1023 = !DILocation(line: 625, column: 27, scope: !781, inlinedAt: !783)
!1024 = !DILocation(line: 626, column: 19, scope: !1025, inlinedAt: !783)
!1025 = distinct !DILexicalBlock(scope: !781, file: !3, line: 626, column: 17)
!1026 = !DILocation(line: 626, column: 17, scope: !781, inlinedAt: !783)
!1027 = !DILocation(line: 627, column: 15, scope: !1025, inlinedAt: !783)
!1028 = !DILocation(line: 635, column: 30, scope: !766, inlinedAt: !783)
!1029 = !DILocation(line: 635, column: 25, scope: !766, inlinedAt: !783)
!1030 = !DILocation(line: 635, column: 47, scope: !766, inlinedAt: !783)
!1031 = !DILocation(line: 635, column: 56, scope: !766, inlinedAt: !783)
!1032 = !DILocation(line: 635, column: 51, scope: !766, inlinedAt: !783)
!1033 = !DILocalVariable(name: "start", arg: 1, scope: !1034, file: !3, line: 331, type: !51)
!1034 = distinct !DISubprogram(name: "print_direc", scope: !3, file: !3, line: 331, type: !1035, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !51, !140, !37, !70, !39, !70, !39, !51}
!1037 = !{!1033, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1048, !1049, !1050, !1053, !1057}
!1038 = !DILocalVariable(name: "length", arg: 2, scope: !1034, file: !3, line: 331, type: !140)
!1039 = !DILocalVariable(name: "conversion", arg: 3, scope: !1034, file: !3, line: 331, type: !37)
!1040 = !DILocalVariable(name: "have_field_width", arg: 4, scope: !1034, file: !3, line: 332, type: !70)
!1041 = !DILocalVariable(name: "field_width", arg: 5, scope: !1034, file: !3, line: 332, type: !39)
!1042 = !DILocalVariable(name: "have_precision", arg: 6, scope: !1034, file: !3, line: 333, type: !70)
!1043 = !DILocalVariable(name: "precision", arg: 7, scope: !1034, file: !3, line: 333, type: !39)
!1044 = !DILocalVariable(name: "argument", arg: 8, scope: !1034, file: !3, line: 334, type: !51)
!1045 = !DILocalVariable(name: "p", scope: !1034, file: !3, line: 336, type: !36)
!1046 = !DILocalVariable(name: "q", scope: !1047, file: !3, line: 342, type: !36)
!1047 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 341, column: 3)
!1048 = !DILocalVariable(name: "length_modifier", scope: !1047, file: !3, line: 343, type: !51)
!1049 = !DILocalVariable(name: "length_modifier_len", scope: !1047, file: !3, line: 344, type: !140)
!1050 = !DILocalVariable(name: "arg", scope: !1051, file: !3, line: 377, type: !770)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 376, column: 7)
!1052 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 373, column: 5)
!1053 = !DILocalVariable(name: "arg", scope: !1054, file: !3, line: 400, type: !1055)
!1054 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 399, column: 7)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !771, line: 112, baseType: !1056)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !235, line: 62, baseType: !142)
!1057 = !DILocalVariable(name: "arg", scope: !1058, file: !3, line: 427, type: !1059)
!1058 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 426, column: 7)
!1059 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1060 = !DILocation(line: 331, column: 26, scope: !1034, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 632, column: 11, scope: !766, inlinedAt: !783)
!1062 = !DILocation(line: 331, column: 40, scope: !1034, inlinedAt: !1061)
!1063 = !DILocation(line: 331, column: 53, scope: !1034, inlinedAt: !1061)
!1064 = !DILocation(line: 332, column: 19, scope: !1034, inlinedAt: !1061)
!1065 = !DILocation(line: 332, column: 41, scope: !1034, inlinedAt: !1061)
!1066 = !DILocation(line: 333, column: 19, scope: !1034, inlinedAt: !1061)
!1067 = !DILocation(line: 333, column: 39, scope: !1034, inlinedAt: !1061)
!1068 = !DILocation(line: 334, column: 26, scope: !1034, inlinedAt: !1061)
!1069 = !DILocation(line: 346, column: 13, scope: !1047, inlinedAt: !1061)
!1070 = !DILocation(line: 346, column: 5, scope: !1047, inlinedAt: !1061)
!1071 = !DILocation(line: 344, column: 12, scope: !1047, inlinedAt: !1061)
!1072 = !DILocation(line: 357, column: 9, scope: !1073, inlinedAt: !1061)
!1073 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 347, column: 7)
!1074 = !DILocation(line: 343, column: 17, scope: !1047, inlinedAt: !1061)
!1075 = !DILocation(line: 362, column: 9, scope: !1073, inlinedAt: !1061)
!1076 = !DILocation(line: 365, column: 25, scope: !1047, inlinedAt: !1061)
!1077 = !DILocation(line: 365, column: 47, scope: !1047, inlinedAt: !1061)
!1078 = !DILocation(line: 365, column: 9, scope: !1047, inlinedAt: !1061)
!1079 = !DILocation(line: 336, column: 9, scope: !1034, inlinedAt: !1061)
!1080 = !DILocalVariable(name: "__dest", arg: 1, scope: !1081, file: !1082, line: 45, type: !1085)
!1081 = distinct !DISubprogram(name: "mempcpy", scope: !1082, file: !1082, line: 45, type: !1083, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1089)
!1082 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!35, !1085, !1086, !140}
!1085 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!1086 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1089 = !{!1080, !1090, !1091}
!1090 = !DILocalVariable(name: "__src", arg: 2, scope: !1081, file: !1082, line: 45, type: !1086)
!1091 = !DILocalVariable(name: "__len", arg: 3, scope: !1081, file: !1082, line: 45, type: !140)
!1092 = !DILocation(line: 45, column: 1, scope: !1081, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 366, column: 9, scope: !1047, inlinedAt: !1061)
!1094 = !DILocation(line: 48, column: 57, scope: !1081, inlinedAt: !1093)
!1095 = !DILocation(line: 48, column: 10, scope: !1081, inlinedAt: !1093)
!1096 = !DILocation(line: 342, column: 11, scope: !1047, inlinedAt: !1061)
!1097 = !DILocation(line: 45, column: 1, scope: !1081, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 367, column: 9, scope: !1047, inlinedAt: !1061)
!1099 = !DILocation(line: 48, column: 57, scope: !1081, inlinedAt: !1098)
!1100 = !DILocation(line: 48, column: 10, scope: !1081, inlinedAt: !1098)
!1101 = !DILocation(line: 368, column: 7, scope: !1047, inlinedAt: !1061)
!1102 = !DILocation(line: 368, column: 10, scope: !1047, inlinedAt: !1061)
!1103 = !DILocation(line: 369, column: 8, scope: !1047, inlinedAt: !1061)
!1104 = !DILocation(line: 372, column: 3, scope: !1034, inlinedAt: !1061)
!1105 = !DILocation(line: 377, column: 24, scope: !1051, inlinedAt: !1061)
!1106 = !DILocation(line: 377, column: 18, scope: !1051, inlinedAt: !1061)
!1107 = !DILocation(line: 378, column: 13, scope: !1051, inlinedAt: !1061)
!1108 = !DILocation(line: 380, column: 17, scope: !1109, inlinedAt: !1061)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 379, column: 11)
!1110 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 378, column: 13)
!1111 = !DILocation(line: 381, column: 15, scope: !1112, inlinedAt: !1061)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 380, column: 17)
!1113 = !DILocation(line: 383, column: 15, scope: !1112, inlinedAt: !1061)
!1114 = !DILocation(line: 387, column: 17, scope: !1115, inlinedAt: !1061)
!1115 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 386, column: 11)
!1116 = !DILocation(line: 388, column: 15, scope: !1117, inlinedAt: !1061)
!1117 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 387, column: 17)
!1118 = !DILocation(line: 390, column: 15, scope: !1117, inlinedAt: !1061)
!1119 = !DILocalVariable(name: "s", arg: 1, scope: !1120, file: !3, line: 190, type: !51)
!1120 = distinct !DISubprogram(name: "vstrtoumax", scope: !3, file: !3, line: 190, type: !1121, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!1055, !51}
!1123 = !{!1119, !1124, !1125, !1126}
!1124 = !DILocalVariable(name: "end", scope: !1120, file: !3, line: 190, type: !36)
!1125 = !DILocalVariable(name: "val", scope: !1120, file: !3, line: 190, type: !1055)
!1126 = !DILocalVariable(name: "ch", scope: !1127, file: !3, line: 190, type: !40)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 190, column: 1)
!1128 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 190, column: 1)
!1129 = !DILocation(line: 190, column: 1, scope: !1120, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 400, column: 25, scope: !1054, inlinedAt: !1061)
!1131 = !DILocation(line: 190, column: 1, scope: !1128, inlinedAt: !1130)
!1132 = !DILocation(line: 190, column: 1, scope: !1127, inlinedAt: !1130)
!1133 = !DILocation(line: 190, column: 1, scope: !1134, inlinedAt: !1130)
!1134 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 190, column: 1)
!1135 = !DILocation(line: 190, column: 1, scope: !1136, inlinedAt: !1130)
!1136 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 190, column: 1)
!1137 = !{!868, !868, i64 0}
!1138 = !DILocalVariable(name: "nptr", arg: 1, scope: !1139, file: !1140, line: 336, type: !1143)
!1139 = distinct !DISubprogram(name: "strtoumax", scope: !1140, file: !1140, line: 336, type: !1141, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1145)
!1140 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!1055, !1143, !1144, !39}
!1143 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!1144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !203)
!1145 = !{!1138, !1146, !1147}
!1146 = !DILocalVariable(name: "endptr", arg: 2, scope: !1139, file: !1140, line: 336, type: !1144)
!1147 = !DILocalVariable(name: "base", arg: 3, scope: !1139, file: !1140, line: 336, type: !39)
!1148 = !DILocation(line: 336, column: 1, scope: !1139, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 190, column: 1, scope: !1136, inlinedAt: !1130)
!1150 = !DILocation(line: 339, column: 10, scope: !1139, inlinedAt: !1149)
!1151 = !DILocation(line: 400, column: 19, scope: !1054, inlinedAt: !1061)
!1152 = !DILocation(line: 401, column: 13, scope: !1054, inlinedAt: !1061)
!1153 = !DILocation(line: 403, column: 17, scope: !1154, inlinedAt: !1061)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 402, column: 11)
!1155 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 401, column: 13)
!1156 = !DILocation(line: 404, column: 15, scope: !1157, inlinedAt: !1061)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 403, column: 17)
!1158 = !DILocation(line: 406, column: 15, scope: !1157, inlinedAt: !1061)
!1159 = !DILocation(line: 410, column: 17, scope: !1160, inlinedAt: !1061)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 409, column: 11)
!1161 = !DILocation(line: 411, column: 15, scope: !1162, inlinedAt: !1061)
!1162 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 410, column: 17)
!1163 = !DILocation(line: 413, column: 15, scope: !1162, inlinedAt: !1061)
!1164 = !DILocalVariable(name: "s", arg: 1, scope: !1165, file: !3, line: 191, type: !51)
!1165 = distinct !DISubprogram(name: "vstrtold", scope: !3, file: !3, line: 191, type: !1166, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!1059, !51}
!1168 = !{!1164, !1169, !1170, !1171}
!1169 = !DILocalVariable(name: "end", scope: !1165, file: !3, line: 191, type: !36)
!1170 = !DILocalVariable(name: "val", scope: !1165, file: !3, line: 191, type: !1059)
!1171 = !DILocalVariable(name: "ch", scope: !1172, file: !3, line: 191, type: !40)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 191, column: 1)
!1173 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 191, column: 1)
!1174 = !DILocation(line: 191, column: 1, scope: !1165, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 427, column: 27, scope: !1058, inlinedAt: !1061)
!1176 = !DILocation(line: 191, column: 1, scope: !1173, inlinedAt: !1175)
!1177 = !DILocation(line: 191, column: 1, scope: !1172, inlinedAt: !1175)
!1178 = !DILocation(line: 191, column: 1, scope: !1179, inlinedAt: !1175)
!1179 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 191, column: 1)
!1180 = !DILocation(line: 191, column: 1, scope: !1181, inlinedAt: !1175)
!1181 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 191, column: 1)
!1182 = !DILocation(line: 427, column: 21, scope: !1058, inlinedAt: !1061)
!1183 = !DILocation(line: 428, column: 13, scope: !1058, inlinedAt: !1061)
!1184 = !DILocation(line: 430, column: 17, scope: !1185, inlinedAt: !1061)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 429, column: 11)
!1186 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 428, column: 13)
!1187 = !DILocation(line: 431, column: 15, scope: !1188, inlinedAt: !1061)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 430, column: 17)
!1189 = !DILocation(line: 433, column: 15, scope: !1188, inlinedAt: !1061)
!1190 = !DILocation(line: 437, column: 17, scope: !1191, inlinedAt: !1061)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 436, column: 11)
!1192 = !DILocation(line: 438, column: 15, scope: !1193, inlinedAt: !1061)
!1193 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 437, column: 17)
!1194 = !DILocation(line: 440, column: 15, scope: !1193, inlinedAt: !1061)
!1195 = !DILocation(line: 446, column: 11, scope: !1052, inlinedAt: !1061)
!1196 = !DILocation(line: 447, column: 9, scope: !1197, inlinedAt: !1061)
!1197 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 446, column: 11)
!1198 = !DILocation(line: 449, column: 9, scope: !1197, inlinedAt: !1061)
!1199 = !DILocation(line: 453, column: 11, scope: !1052, inlinedAt: !1061)
!1200 = !DILocation(line: 455, column: 15, scope: !1201, inlinedAt: !1061)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 454, column: 9)
!1202 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 453, column: 11)
!1203 = !DILocation(line: 456, column: 13, scope: !1204, inlinedAt: !1061)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 455, column: 15)
!1205 = !DILocation(line: 458, column: 13, scope: !1204, inlinedAt: !1061)
!1206 = !DILocation(line: 462, column: 15, scope: !1207, inlinedAt: !1061)
!1207 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 461, column: 9)
!1208 = !DILocation(line: 463, column: 13, scope: !1209, inlinedAt: !1061)
!1209 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 462, column: 15)
!1210 = !DILocation(line: 465, column: 13, scope: !1209, inlinedAt: !1061)
!1211 = !DILocation(line: 470, column: 3, scope: !1034, inlinedAt: !1061)
!1212 = !DILocation(line: 636, column: 11, scope: !766, inlinedAt: !783)
!1213 = !DILocation(line: 639, column: 16, scope: !766, inlinedAt: !783)
!1214 = !DILocation(line: 639, column: 13, scope: !766, inlinedAt: !783)
!1215 = !DILocation(line: 640, column: 11, scope: !766, inlinedAt: !783)
!1216 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 643, column: 11, scope: !766, inlinedAt: !783)
!1218 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1217)
!1219 = !DILocation(line: 490, column: 24, scope: !768, inlinedAt: !783)
!1220 = distinct !{!1220, !1221, !1222}
!1221 = !DILocation(line: 490, column: 3, scope: !769)
!1222 = !DILocation(line: 645, column: 5, scope: !769)
!1223 = !DILocation(line: 647, column: 20, scope: !746, inlinedAt: !783)
!1224 = !DILocation(line: 648, column: 1, scope: !746, inlinedAt: !783)
!1225 = !DILocation(line: 654, column: 7, scope: !737)
!1226 = !DILocation(line: 705, column: 12, scope: !784)
!1227 = !DILocation(line: 707, column: 20, scope: !737)
!1228 = !DILocation(line: 707, column: 32, scope: !737)
!1229 = !DILocation(line: 707, column: 24, scope: !737)
!1230 = !DILocation(line: 706, column: 5, scope: !784)
!1231 = !DILocation(line: 709, column: 7, scope: !737)
!1232 = !DILocation(line: 711, column: 12, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !737, file: !3, line: 709, column: 7)
!1234 = !DILocation(line: 712, column: 19, scope: !1233)
!1235 = !DILocation(line: 712, column: 12, scope: !1233)
!1236 = !DILocation(line: 710, column: 5, scope: !1233)
!1237 = !DILocation(line: 714, column: 3, scope: !737)
!1238 = !DILocation(line: 715, column: 1, scope: !737)
!1239 = distinct !DISubprogram(name: "print_esc", scope: !3, file: !3, line: 240, type: !1240, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1242)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!39, !51, !70}
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1254}
!1243 = !DILocalVariable(name: "escstart", arg: 1, scope: !1239, file: !3, line: 240, type: !51)
!1244 = !DILocalVariable(name: "octal_0", arg: 2, scope: !1239, file: !3, line: 240, type: !70)
!1245 = !DILocalVariable(name: "p", scope: !1239, file: !3, line: 242, type: !51)
!1246 = !DILocalVariable(name: "esc_value", scope: !1239, file: !3, line: 243, type: !39)
!1247 = !DILocalVariable(name: "esc_length", scope: !1239, file: !3, line: 244, type: !39)
!1248 = !DILocalVariable(name: "esc_char", scope: !1249, file: !3, line: 272, type: !37)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 271, column: 5)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 270, column: 12)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 268, column: 12)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 257, column: 12)
!1253 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 246, column: 7)
!1254 = !DILocalVariable(name: "uni_value", scope: !1249, file: !3, line: 273, type: !38)
!1255 = !DILocation(line: 240, column: 24, scope: !1239)
!1256 = !DILocation(line: 240, column: 39, scope: !1239)
!1257 = !DILocation(line: 242, column: 28, scope: !1239)
!1258 = !DILocation(line: 242, column: 15, scope: !1239)
!1259 = !DILocation(line: 243, column: 7, scope: !1239)
!1260 = !DILocation(line: 246, column: 7, scope: !1253)
!1261 = !DILocation(line: 246, column: 10, scope: !1253)
!1262 = !DILocation(line: 246, column: 7, scope: !1239)
!1263 = !DILocation(line: 244, column: 7, scope: !1239)
!1264 = !DILocation(line: 249, column: 28, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 249, column: 7)
!1266 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 247, column: 5)
!1267 = !DILocation(line: 250, column: 30, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 249, column: 7)
!1269 = !{!870, !870, i64 0}
!1270 = !DILocation(line: 250, column: 27, scope: !1268)
!1271 = !DILocation(line: 249, column: 7, scope: !1265)
!1272 = !DILocation(line: 252, column: 38, scope: !1268)
!1273 = !DILocation(line: 252, column: 36, scope: !1268)
!1274 = !DILocation(line: 251, column: 26, scope: !1268)
!1275 = !DILocation(line: 254, column: 9, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 253, column: 11)
!1277 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 255, column: 7, scope: !1266)
!1279 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1278)
!1280 = !DILocation(line: 257, column: 12, scope: !1252)
!1281 = !DILocation(line: 262, column: 47, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 262, column: 7)
!1283 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 258, column: 5)
!1284 = !DILocation(line: 262, column: 41, scope: !1282)
!1285 = !DILocation(line: 262, column: 30, scope: !1282)
!1286 = !DILocation(line: 263, column: 30, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 262, column: 7)
!1288 = !DILocation(line: 262, column: 7, scope: !1282)
!1289 = !DILocation(line: 265, column: 37, scope: !1287)
!1290 = !DILocation(line: 265, column: 35, scope: !1287)
!1291 = !DILocation(line: 264, column: 26, scope: !1287)
!1292 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 266, column: 7, scope: !1283)
!1294 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1293)
!1295 = !DILocation(line: 268, column: 12, scope: !1251)
!1296 = !DILocation(line: 268, column: 15, scope: !1251)
!1297 = !DILocation(line: 268, column: 18, scope: !1251)
!1298 = !DILocation(line: 268, column: 12, scope: !1252)
!1299 = !DILocation(line: 269, column: 23, scope: !1251)
!1300 = !DILocalVariable(name: "c", arg: 1, scope: !1301, file: !3, line: 196, type: !37)
!1301 = distinct !DISubprogram(name: "print_esc_char", scope: !3, file: !3, line: 196, type: !1302, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !37}
!1304 = !{!1300}
!1305 = !DILocation(line: 196, column: 22, scope: !1301, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 269, column: 5, scope: !1251)
!1307 = !DILocation(line: 198, column: 3, scope: !1301, inlinedAt: !1306)
!1308 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 201, column: 7, scope: !1310, inlinedAt: !1306)
!1310 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 199, column: 5)
!1311 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1309)
!1312 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 204, column: 7, scope: !1310, inlinedAt: !1306)
!1314 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1313)
!1315 = !DILocation(line: 207, column: 7, scope: !1310, inlinedAt: !1306)
!1316 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 210, column: 7, scope: !1310, inlinedAt: !1306)
!1318 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1317)
!1319 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 213, column: 7, scope: !1310, inlinedAt: !1306)
!1321 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1320)
!1322 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 216, column: 7, scope: !1310, inlinedAt: !1306)
!1324 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1323)
!1325 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 219, column: 7, scope: !1310, inlinedAt: !1306)
!1327 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1326)
!1328 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 222, column: 7, scope: !1310, inlinedAt: !1306)
!1330 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1329)
!1331 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 225, column: 7, scope: !1310, inlinedAt: !1306)
!1333 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1332)
!1334 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 228, column: 7, scope: !1310, inlinedAt: !1306)
!1336 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1335)
!1337 = !DILocation(line: 270, column: 22, scope: !1250)
!1338 = !DILocation(line: 272, column: 12, scope: !1249)
!1339 = !DILocation(line: 273, column: 20, scope: !1249)
!1340 = !DILocation(line: 276, column: 35, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 276, column: 7)
!1342 = !DILocation(line: 276, column: 26, scope: !1341)
!1343 = !DILocation(line: 276, column: 52, scope: !1341)
!1344 = !DILocation(line: 280, column: 17, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 280, column: 15)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 279, column: 9)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 276, column: 7)
!1348 = !DILocation(line: 276, column: 7, scope: !1341)
!1349 = !DILocation(line: 280, column: 15, scope: !1346)
!1350 = !DILocation(line: 281, column: 13, scope: !1345)
!1351 = !DILocation(line: 282, column: 33, scope: !1346)
!1352 = !DILocation(line: 282, column: 40, scope: !1346)
!1353 = !DILocation(line: 282, column: 38, scope: !1346)
!1354 = !DILocation(line: 278, column: 12, scope: !1347)
!1355 = !DILocation(line: 278, column: 26, scope: !1347)
!1356 = !DILocation(line: 277, column: 23, scope: !1347)
!1357 = distinct !{!1357, !1348, !1358}
!1358 = !DILocation(line: 283, column: 9, scope: !1341)
!1359 = !DILocation(line: 290, column: 22, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 290, column: 11)
!1361 = !DILocation(line: 291, column: 12, scope: !1360)
!1362 = !DILocation(line: 292, column: 35, scope: !1360)
!1363 = !DILocation(line: 293, column: 9, scope: !1360)
!1364 = !DILocation(line: 296, column: 27, scope: !1249)
!1365 = !DILocation(line: 296, column: 7, scope: !1249)
!1366 = !DILocation(line: 297, column: 5, scope: !1249)
!1367 = !DILocation(line: 105, column: 23, scope: !857, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 300, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 299, column: 5)
!1370 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1368)
!1371 = !DILocation(line: 301, column: 11, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 301, column: 11)
!1373 = !DILocation(line: 301, column: 11, scope: !1369)
!1374 = !DILocation(line: 107, column: 10, scope: !857, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 303, column: 11, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 302, column: 9)
!1377 = !DILocation(line: 303, column: 11, scope: !1376)
!1378 = !DILocation(line: 304, column: 12, scope: !1376)
!1379 = !DILocation(line: 305, column: 9, scope: !1376)
!1380 = !DILocation(line: 307, column: 12, scope: !1239)
!1381 = !DILocation(line: 307, column: 23, scope: !1239)
!1382 = !DILocation(line: 307, column: 10, scope: !1239)
!1383 = !DILocation(line: 307, column: 3, scope: !1239)
!1384 = !DILocation(line: 252, column: 31, scope: !1268)
!1385 = !DILocation(line: 265, column: 31, scope: !1287)
!1386 = distinct !DISubprogram(name: "vstrtoimax", scope: !3, file: !3, line: 189, type: !1387, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1389)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!770, !51}
!1389 = !{!1390, !1391, !1392, !1393}
!1390 = !DILocalVariable(name: "s", arg: 1, scope: !1386, file: !3, line: 189, type: !51)
!1391 = !DILocalVariable(name: "end", scope: !1386, file: !3, line: 189, type: !36)
!1392 = !DILocalVariable(name: "val", scope: !1386, file: !3, line: 189, type: !770)
!1393 = !DILocalVariable(name: "ch", scope: !1394, file: !3, line: 189, type: !40)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 189, column: 1)
!1395 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 189, column: 1)
!1396 = !DILocation(line: 189, column: 1, scope: !1386)
!1397 = !DILocation(line: 189, column: 1, scope: !1395)
!1398 = !DILocation(line: 189, column: 1, scope: !1394)
!1399 = !DILocation(line: 189, column: 1, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 189, column: 1)
!1401 = !DILocation(line: 189, column: 1, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 189, column: 1)
!1403 = !DILocalVariable(name: "nptr", arg: 1, scope: !1404, file: !1140, line: 324, type: !1143)
!1404 = distinct !DISubprogram(name: "strtoimax", scope: !1140, file: !1140, line: 324, type: !1405, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1407)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!770, !1143, !1144, !39}
!1407 = !{!1403, !1408, !1409}
!1408 = !DILocalVariable(name: "endptr", arg: 2, scope: !1404, file: !1140, line: 324, type: !1144)
!1409 = !DILocalVariable(name: "base", arg: 3, scope: !1404, file: !1140, line: 324, type: !39)
!1410 = !DILocation(line: 324, column: 1, scope: !1404, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 189, column: 1, scope: !1402)
!1412 = !DILocation(line: 327, column: 10, scope: !1404, inlinedAt: !1411)
!1413 = distinct !DISubprogram(name: "verify_numeric", scope: !3, file: !3, line: 145, type: !1414, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1416)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null, !51, !51}
!1416 = !{!1417, !1418}
!1417 = !DILocalVariable(name: "s", arg: 1, scope: !1413, file: !3, line: 145, type: !51)
!1418 = !DILocalVariable(name: "end", arg: 2, scope: !1413, file: !3, line: 145, type: !51)
!1419 = !DILocation(line: 145, column: 29, scope: !1413)
!1420 = !DILocation(line: 145, column: 44, scope: !1413)
!1421 = !DILocation(line: 147, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 147, column: 7)
!1423 = !DILocation(line: 147, column: 7, scope: !1413)
!1424 = !DILocation(line: 149, column: 30, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 148, column: 5)
!1426 = !DILocation(line: 149, column: 7, scope: !1425)
!1427 = !DILocation(line: 151, column: 5, scope: !1425)
!1428 = !DILocation(line: 152, column: 12, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 152, column: 12)
!1430 = !DILocation(line: 152, column: 12, scope: !1422)
!1431 = !DILocation(line: 154, column: 13, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 154, column: 11)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 153, column: 5)
!1434 = !DILocation(line: 154, column: 11, scope: !1433)
!1435 = !DILocation(line: 155, column: 22, scope: !1432)
!1436 = !DILocation(line: 155, column: 57, scope: !1432)
!1437 = !DILocation(line: 155, column: 9, scope: !1432)
!1438 = !DILocation(line: 157, column: 22, scope: !1432)
!1439 = !DILocation(line: 157, column: 63, scope: !1432)
!1440 = !DILocation(line: 157, column: 9, scope: !1432)
!1441 = !DILocation(line: 160, column: 1, scope: !1413)
!1442 = distinct !DISubprogram(name: "c_strtold", scope: !105, file: !105, line: 66, type: !1443, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1445)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1059, !51, !203}
!1445 = !{!1446, !1447, !1448, !1449}
!1446 = !DILocalVariable(name: "nptr", arg: 1, scope: !1442, file: !105, line: 66, type: !51)
!1447 = !DILocalVariable(name: "endptr", arg: 2, scope: !1442, file: !105, line: 66, type: !203)
!1448 = !DILocalVariable(name: "r", scope: !1442, file: !105, line: 68, type: !1059)
!1449 = !DILocalVariable(name: "locale", scope: !1442, file: !105, line: 72, type: !82)
!1450 = !DILocation(line: 66, column: 23, scope: !1442)
!1451 = !DILocation(line: 66, column: 36, scope: !1442)
!1452 = !DILocation(line: 58, column: 8, scope: !1453, inlinedAt: !1457)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !105, line: 58, column: 7)
!1454 = distinct !DISubprogram(name: "c_locale", scope: !105, file: !105, line: 56, type: !1455, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !75)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!82}
!1457 = distinct !DILocation(line: 72, column: 21, scope: !1442)
!1458 = !DILocation(line: 58, column: 7, scope: !1454, inlinedAt: !1457)
!1459 = !DILocation(line: 59, column: 22, scope: !1453, inlinedAt: !1457)
!1460 = !DILocation(line: 59, column: 20, scope: !1453, inlinedAt: !1457)
!1461 = !DILocation(line: 59, column: 5, scope: !1453, inlinedAt: !1457)
!1462 = !DILocation(line: 60, column: 10, scope: !1454, inlinedAt: !1457)
!1463 = !DILocation(line: 72, column: 12, scope: !1442)
!1464 = !DILocation(line: 73, column: 8, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1442, file: !105, line: 73, column: 7)
!1466 = !DILocation(line: 73, column: 7, scope: !1442)
!1467 = !DILocation(line: 75, column: 11, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !105, line: 75, column: 11)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !105, line: 74, column: 5)
!1470 = !DILocation(line: 75, column: 11, scope: !1469)
!1471 = !DILocation(line: 76, column: 17, scope: !1468)
!1472 = !DILocation(line: 76, column: 9, scope: !1468)
!1473 = !DILocation(line: 80, column: 7, scope: !1442)
!1474 = !DILocation(line: 68, column: 10, scope: !1442)
!1475 = !DILocation(line: 111, column: 3, scope: !1442)
!1476 = !DILocation(line: 112, column: 1, scope: !1442)
!1477 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !114, file: !114, line: 41, type: !49, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1478)
!1478 = !{!1479}
!1479 = !DILocalVariable(name: "file", arg: 1, scope: !1477, file: !114, line: 41, type: !51)
!1480 = !DILocation(line: 41, column: 41, scope: !1477)
!1481 = !DILocation(line: 43, column: 13, scope: !1477)
!1482 = !DILocation(line: 44, column: 1, scope: !1477)
!1483 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !114, file: !114, line: 78, type: !1484, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !70}
!1486 = !{!1487}
!1487 = !DILocalVariable(name: "ignore", arg: 1, scope: !1483, file: !114, line: 78, type: !70)
!1488 = !DILocation(line: 78, column: 37, scope: !1483)
!1489 = !DILocation(line: 80, column: 16, scope: !1483)
!1490 = !DILocation(line: 81, column: 1, scope: !1483)
!1491 = distinct !DISubprogram(name: "close_stdout", scope: !114, file: !114, line: 107, type: !1492, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !109, variables: !1494)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null}
!1494 = !{!1495}
!1495 = !DILocalVariable(name: "write_error", scope: !1496, file: !114, line: 112, type: !51)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !114, line: 111, column: 5)
!1497 = distinct !DILexicalBlock(scope: !1491, file: !114, line: 109, column: 7)
!1498 = !DILocation(line: 109, column: 21, scope: !1497)
!1499 = !DILocation(line: 109, column: 7, scope: !1497)
!1500 = !DILocation(line: 109, column: 29, scope: !1497)
!1501 = !DILocation(line: 110, column: 7, scope: !1497)
!1502 = !DILocation(line: 110, column: 12, scope: !1497)
!1503 = !{i8 0, i8 2}
!1504 = !DILocation(line: 114, column: 19, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1496, file: !114, line: 113, column: 11)
!1506 = !DILocation(line: 110, column: 25, scope: !1497)
!1507 = !DILocation(line: 110, column: 28, scope: !1497)
!1508 = !DILocation(line: 110, column: 34, scope: !1497)
!1509 = !DILocation(line: 109, column: 7, scope: !1491)
!1510 = !DILocation(line: 112, column: 33, scope: !1496)
!1511 = !DILocation(line: 112, column: 19, scope: !1496)
!1512 = !DILocation(line: 113, column: 11, scope: !1505)
!1513 = !DILocation(line: 113, column: 11, scope: !1496)
!1514 = !DILocation(line: 114, column: 36, scope: !1505)
!1515 = !DILocation(line: 114, column: 9, scope: !1505)
!1516 = !DILocation(line: 117, column: 9, scope: !1505)
!1517 = !DILocation(line: 119, column: 14, scope: !1496)
!1518 = !DILocation(line: 119, column: 7, scope: !1496)
!1519 = !DILocation(line: 122, column: 22, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1491, file: !114, line: 122, column: 8)
!1521 = !DILocation(line: 122, column: 8, scope: !1520)
!1522 = !DILocation(line: 122, column: 30, scope: !1520)
!1523 = !DILocation(line: 122, column: 8, scope: !1491)
!1524 = !DILocation(line: 123, column: 13, scope: !1520)
!1525 = !DILocation(line: 123, column: 6, scope: !1520)
!1526 = !DILocation(line: 124, column: 1, scope: !1491)
!1527 = distinct !DISubprogram(name: "set_program_name", scope: !128, file: !128, line: 39, type: !49, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1528)
!1528 = !{!1529, !1530, !1531}
!1529 = !DILocalVariable(name: "argv0", arg: 1, scope: !1527, file: !128, line: 39, type: !51)
!1530 = !DILocalVariable(name: "slash", scope: !1527, file: !128, line: 46, type: !51)
!1531 = !DILocalVariable(name: "base", scope: !1527, file: !128, line: 47, type: !51)
!1532 = !DILocation(line: 39, column: 31, scope: !1527)
!1533 = !DILocation(line: 51, column: 13, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1527, file: !128, line: 51, column: 7)
!1535 = !DILocation(line: 51, column: 7, scope: !1527)
!1536 = !DILocation(line: 55, column: 14, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !128, line: 52, column: 5)
!1538 = !DILocation(line: 54, column: 7, scope: !1537)
!1539 = !DILocation(line: 56, column: 7, scope: !1537)
!1540 = !DILocation(line: 59, column: 11, scope: !1527)
!1541 = !DILocation(line: 46, column: 15, scope: !1527)
!1542 = !DILocation(line: 60, column: 17, scope: !1527)
!1543 = !DILocation(line: 60, column: 33, scope: !1527)
!1544 = !DILocation(line: 60, column: 11, scope: !1527)
!1545 = !DILocation(line: 47, column: 15, scope: !1527)
!1546 = !DILocation(line: 61, column: 12, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1527, file: !128, line: 61, column: 7)
!1548 = !DILocation(line: 61, column: 20, scope: !1547)
!1549 = !DILocation(line: 61, column: 25, scope: !1547)
!1550 = !DILocation(line: 61, column: 42, scope: !1547)
!1551 = !DILocation(line: 61, column: 28, scope: !1547)
!1552 = !DILocation(line: 61, column: 61, scope: !1547)
!1553 = !DILocation(line: 61, column: 7, scope: !1527)
!1554 = !DILocation(line: 64, column: 11, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !128, line: 64, column: 11)
!1556 = distinct !DILexicalBlock(scope: !1547, file: !128, line: 62, column: 5)
!1557 = !DILocation(line: 64, column: 36, scope: !1555)
!1558 = !DILocation(line: 64, column: 11, scope: !1556)
!1559 = !DILocation(line: 66, column: 24, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1555, file: !128, line: 65, column: 9)
!1561 = !DILocation(line: 70, column: 41, scope: !1560)
!1562 = !DILocation(line: 72, column: 9, scope: !1560)
!1563 = !DILocation(line: 84, column: 16, scope: !1527)
!1564 = !DILocation(line: 90, column: 27, scope: !1527)
!1565 = !DILocation(line: 92, column: 1, scope: !1527)
!1566 = distinct !DISubprogram(name: "clone_quoting_options", scope: !146, file: !146, line: 114, type: !1567, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1570)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!1569, !1569}
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1570 = !{!1571, !1572, !1573}
!1571 = !DILocalVariable(name: "o", arg: 1, scope: !1566, file: !146, line: 114, type: !1569)
!1572 = !DILocalVariable(name: "e", scope: !1566, file: !146, line: 116, type: !39)
!1573 = !DILocalVariable(name: "p", scope: !1566, file: !146, line: 117, type: !1569)
!1574 = !DILocation(line: 114, column: 48, scope: !1566)
!1575 = !DILocation(line: 116, column: 11, scope: !1566)
!1576 = !DILocation(line: 116, column: 7, scope: !1566)
!1577 = !DILocation(line: 117, column: 40, scope: !1566)
!1578 = !DILocation(line: 117, column: 31, scope: !1566)
!1579 = !DILocation(line: 117, column: 27, scope: !1566)
!1580 = !DILocation(line: 119, column: 9, scope: !1566)
!1581 = !DILocation(line: 120, column: 3, scope: !1566)
!1582 = distinct !DISubprogram(name: "get_quoting_style", scope: !146, file: !146, line: 125, type: !1583, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1587)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!5, !1585}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!1587 = !{!1588}
!1588 = !DILocalVariable(name: "o", arg: 1, scope: !1582, file: !146, line: 125, type: !1585)
!1589 = !DILocation(line: 125, column: 50, scope: !1582)
!1590 = !DILocation(line: 127, column: 11, scope: !1582)
!1591 = !DILocation(line: 127, column: 46, scope: !1582)
!1592 = !{!1593, !709, i64 0}
!1593 = !{!"quoting_options", !709, i64 0, !868, i64 4, !709, i64 8, !708, i64 40, !708, i64 48}
!1594 = !DILocation(line: 127, column: 3, scope: !1582)
!1595 = distinct !DISubprogram(name: "set_quoting_style", scope: !146, file: !146, line: 133, type: !1596, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !1569, !5}
!1598 = !{!1599, !1600}
!1599 = !DILocalVariable(name: "o", arg: 1, scope: !1595, file: !146, line: 133, type: !1569)
!1600 = !DILocalVariable(name: "s", arg: 2, scope: !1595, file: !146, line: 133, type: !5)
!1601 = !DILocation(line: 133, column: 44, scope: !1595)
!1602 = !DILocation(line: 133, column: 66, scope: !1595)
!1603 = !DILocation(line: 135, column: 4, scope: !1595)
!1604 = !DILocation(line: 135, column: 39, scope: !1595)
!1605 = !DILocation(line: 135, column: 45, scope: !1595)
!1606 = !DILocation(line: 136, column: 1, scope: !1595)
!1607 = distinct !DISubprogram(name: "set_char_quoting", scope: !146, file: !146, line: 144, type: !1608, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1610)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!39, !1569, !37, !39}
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1617, !1618}
!1611 = !DILocalVariable(name: "o", arg: 1, scope: !1607, file: !146, line: 144, type: !1569)
!1612 = !DILocalVariable(name: "c", arg: 2, scope: !1607, file: !146, line: 144, type: !37)
!1613 = !DILocalVariable(name: "i", arg: 3, scope: !1607, file: !146, line: 144, type: !39)
!1614 = !DILocalVariable(name: "uc", scope: !1607, file: !146, line: 146, type: !40)
!1615 = !DILocalVariable(name: "p", scope: !1607, file: !146, line: 147, type: !1616)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1617 = !DILocalVariable(name: "shift", scope: !1607, file: !146, line: 149, type: !39)
!1618 = !DILocalVariable(name: "r", scope: !1607, file: !146, line: 150, type: !39)
!1619 = !DILocation(line: 144, column: 43, scope: !1607)
!1620 = !DILocation(line: 144, column: 51, scope: !1607)
!1621 = !DILocation(line: 144, column: 58, scope: !1607)
!1622 = !DILocation(line: 146, column: 17, scope: !1607)
!1623 = !DILocation(line: 148, column: 6, scope: !1607)
!1624 = !DILocation(line: 148, column: 62, scope: !1607)
!1625 = !DILocation(line: 148, column: 57, scope: !1607)
!1626 = !DILocation(line: 147, column: 17, scope: !1607)
!1627 = !DILocation(line: 149, column: 18, scope: !1607)
!1628 = !DILocation(line: 149, column: 15, scope: !1607)
!1629 = !DILocation(line: 149, column: 7, scope: !1607)
!1630 = !DILocation(line: 150, column: 12, scope: !1607)
!1631 = !DILocation(line: 150, column: 15, scope: !1607)
!1632 = !DILocation(line: 150, column: 25, scope: !1607)
!1633 = !DILocation(line: 150, column: 7, scope: !1607)
!1634 = !DILocation(line: 151, column: 13, scope: !1607)
!1635 = !DILocation(line: 151, column: 18, scope: !1607)
!1636 = !DILocation(line: 151, column: 23, scope: !1607)
!1637 = !DILocation(line: 151, column: 6, scope: !1607)
!1638 = !DILocation(line: 152, column: 3, scope: !1607)
!1639 = distinct !DISubprogram(name: "set_quoting_flags", scope: !146, file: !146, line: 160, type: !1640, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1642)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!39, !1569, !39}
!1642 = !{!1643, !1644, !1645}
!1643 = !DILocalVariable(name: "o", arg: 1, scope: !1639, file: !146, line: 160, type: !1569)
!1644 = !DILocalVariable(name: "i", arg: 2, scope: !1639, file: !146, line: 160, type: !39)
!1645 = !DILocalVariable(name: "r", scope: !1639, file: !146, line: 162, type: !39)
!1646 = !DILocation(line: 160, column: 44, scope: !1639)
!1647 = !DILocation(line: 160, column: 51, scope: !1639)
!1648 = !DILocation(line: 163, column: 8, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1639, file: !146, line: 163, column: 7)
!1650 = !DILocation(line: 163, column: 7, scope: !1639)
!1651 = !DILocation(line: 165, column: 10, scope: !1639)
!1652 = !{!1593, !868, i64 4}
!1653 = !DILocation(line: 162, column: 7, scope: !1639)
!1654 = !DILocation(line: 166, column: 12, scope: !1639)
!1655 = !DILocation(line: 167, column: 3, scope: !1639)
!1656 = distinct !DISubprogram(name: "set_custom_quoting", scope: !146, file: !146, line: 171, type: !1657, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1659)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1569, !51, !51}
!1659 = !{!1660, !1661, !1662}
!1660 = !DILocalVariable(name: "o", arg: 1, scope: !1656, file: !146, line: 171, type: !1569)
!1661 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1656, file: !146, line: 172, type: !51)
!1662 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1656, file: !146, line: 172, type: !51)
!1663 = !DILocation(line: 171, column: 45, scope: !1656)
!1664 = !DILocation(line: 172, column: 33, scope: !1656)
!1665 = !DILocation(line: 172, column: 57, scope: !1656)
!1666 = !DILocation(line: 174, column: 8, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1656, file: !146, line: 174, column: 7)
!1668 = !DILocation(line: 174, column: 7, scope: !1656)
!1669 = !DILocation(line: 176, column: 6, scope: !1656)
!1670 = !DILocation(line: 176, column: 12, scope: !1656)
!1671 = !DILocation(line: 177, column: 8, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1656, file: !146, line: 177, column: 7)
!1673 = !DILocation(line: 177, column: 23, scope: !1672)
!1674 = !DILocation(line: 177, column: 19, scope: !1672)
!1675 = !DILocation(line: 178, column: 5, scope: !1672)
!1676 = !DILocation(line: 179, column: 6, scope: !1656)
!1677 = !DILocation(line: 179, column: 17, scope: !1656)
!1678 = !{!1593, !708, i64 40}
!1679 = !DILocation(line: 180, column: 6, scope: !1656)
!1680 = !DILocation(line: 180, column: 18, scope: !1656)
!1681 = !{!1593, !708, i64 48}
!1682 = !DILocation(line: 181, column: 1, scope: !1656)
!1683 = distinct !DISubprogram(name: "quotearg_buffer", scope: !146, file: !146, line: 776, type: !1684, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!140, !36, !140, !51, !140, !1585}
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694}
!1687 = !DILocalVariable(name: "buffer", arg: 1, scope: !1683, file: !146, line: 776, type: !36)
!1688 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1683, file: !146, line: 776, type: !140)
!1689 = !DILocalVariable(name: "arg", arg: 3, scope: !1683, file: !146, line: 777, type: !51)
!1690 = !DILocalVariable(name: "argsize", arg: 4, scope: !1683, file: !146, line: 777, type: !140)
!1691 = !DILocalVariable(name: "o", arg: 5, scope: !1683, file: !146, line: 778, type: !1585)
!1692 = !DILocalVariable(name: "p", scope: !1683, file: !146, line: 780, type: !1585)
!1693 = !DILocalVariable(name: "e", scope: !1683, file: !146, line: 781, type: !39)
!1694 = !DILocalVariable(name: "r", scope: !1683, file: !146, line: 782, type: !140)
!1695 = !DILocation(line: 776, column: 24, scope: !1683)
!1696 = !DILocation(line: 776, column: 39, scope: !1683)
!1697 = !DILocation(line: 777, column: 30, scope: !1683)
!1698 = !DILocation(line: 777, column: 42, scope: !1683)
!1699 = !DILocation(line: 778, column: 48, scope: !1683)
!1700 = !DILocation(line: 780, column: 37, scope: !1683)
!1701 = !DILocation(line: 780, column: 33, scope: !1683)
!1702 = !DILocation(line: 781, column: 11, scope: !1683)
!1703 = !DILocation(line: 781, column: 7, scope: !1683)
!1704 = !DILocation(line: 783, column: 43, scope: !1683)
!1705 = !DILocation(line: 783, column: 53, scope: !1683)
!1706 = !DILocation(line: 783, column: 60, scope: !1683)
!1707 = !DILocation(line: 784, column: 43, scope: !1683)
!1708 = !DILocation(line: 784, column: 58, scope: !1683)
!1709 = !DILocation(line: 782, column: 14, scope: !1683)
!1710 = !DILocation(line: 782, column: 10, scope: !1683)
!1711 = !DILocation(line: 785, column: 9, scope: !1683)
!1712 = !DILocation(line: 786, column: 3, scope: !1683)
!1713 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !146, file: !146, line: 248, type: !1714, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !1718)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!140, !36, !140, !51, !140, !5, !39, !1716, !51, !51}
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1743, !1744, !1745, !1746, !1747, !1750, !1751, !1769, !1772, !1773, !1780}
!1719 = !DILocalVariable(name: "buffer", arg: 1, scope: !1713, file: !146, line: 248, type: !36)
!1720 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1713, file: !146, line: 248, type: !140)
!1721 = !DILocalVariable(name: "arg", arg: 3, scope: !1713, file: !146, line: 249, type: !51)
!1722 = !DILocalVariable(name: "argsize", arg: 4, scope: !1713, file: !146, line: 249, type: !140)
!1723 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1713, file: !146, line: 250, type: !5)
!1724 = !DILocalVariable(name: "flags", arg: 6, scope: !1713, file: !146, line: 250, type: !39)
!1725 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1713, file: !146, line: 251, type: !1716)
!1726 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1713, file: !146, line: 252, type: !51)
!1727 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1713, file: !146, line: 253, type: !51)
!1728 = !DILocalVariable(name: "i", scope: !1713, file: !146, line: 255, type: !140)
!1729 = !DILocalVariable(name: "len", scope: !1713, file: !146, line: 256, type: !140)
!1730 = !DILocalVariable(name: "orig_buffersize", scope: !1713, file: !146, line: 257, type: !140)
!1731 = !DILocalVariable(name: "quote_string", scope: !1713, file: !146, line: 258, type: !51)
!1732 = !DILocalVariable(name: "quote_string_len", scope: !1713, file: !146, line: 259, type: !140)
!1733 = !DILocalVariable(name: "backslash_escapes", scope: !1713, file: !146, line: 260, type: !70)
!1734 = !DILocalVariable(name: "unibyte_locale", scope: !1713, file: !146, line: 261, type: !70)
!1735 = !DILocalVariable(name: "elide_outer_quotes", scope: !1713, file: !146, line: 262, type: !70)
!1736 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1713, file: !146, line: 263, type: !70)
!1737 = !DILocalVariable(name: "encountered_single_quote", scope: !1713, file: !146, line: 264, type: !70)
!1738 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1713, file: !146, line: 265, type: !70)
!1739 = !DILocalVariable(name: "c", scope: !1740, file: !146, line: 394, type: !40)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !146, line: 393, column: 5)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !146, line: 392, column: 3)
!1742 = distinct !DILexicalBlock(scope: !1713, file: !146, line: 392, column: 3)
!1743 = !DILocalVariable(name: "esc", scope: !1740, file: !146, line: 395, type: !40)
!1744 = !DILocalVariable(name: "is_right_quote", scope: !1740, file: !146, line: 396, type: !70)
!1745 = !DILocalVariable(name: "escaping", scope: !1740, file: !146, line: 397, type: !70)
!1746 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1740, file: !146, line: 398, type: !70)
!1747 = !DILocalVariable(name: "m", scope: !1748, file: !146, line: 602, type: !140)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 600, column: 11)
!1749 = distinct !DILexicalBlock(scope: !1740, file: !146, line: 418, column: 9)
!1750 = !DILocalVariable(name: "printable", scope: !1748, file: !146, line: 604, type: !70)
!1751 = !DILocalVariable(name: "mbstate", scope: !1752, file: !146, line: 613, type: !1754)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !146, line: 612, column: 15)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !146, line: 606, column: 17)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1755, line: 6, baseType: !1756)
!1755 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1757, line: 21, baseType: !1758)
!1757 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1757, line: 13, size: 64, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1758, file: !1757, line: 15, baseType: !39, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1758, file: !1757, line: 20, baseType: !1762, size: 32, offset: 32)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1758, file: !1757, line: 16, size: 32, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1762, file: !1757, line: 18, baseType: !38, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1762, file: !1757, line: 19, baseType: !1766, size: 32)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !1767)
!1767 = !{!1768}
!1768 = !DISubrange(count: 4)
!1769 = !DILocalVariable(name: "w", scope: !1770, file: !146, line: 623, type: !1771)
!1770 = distinct !DILexicalBlock(scope: !1752, file: !146, line: 622, column: 19)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !141, line: 90, baseType: !39)
!1772 = !DILocalVariable(name: "bytes", scope: !1770, file: !146, line: 624, type: !140)
!1773 = !DILocalVariable(name: "j", scope: !1774, file: !146, line: 649, type: !140)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !146, line: 648, column: 27)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !146, line: 646, column: 29)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !146, line: 641, column: 23)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !146, line: 633, column: 30)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !146, line: 628, column: 30)
!1779 = distinct !DILexicalBlock(scope: !1770, file: !146, line: 626, column: 25)
!1780 = !DILocalVariable(name: "ilim", scope: !1781, file: !146, line: 676, type: !140)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !146, line: 673, column: 15)
!1782 = distinct !DILexicalBlock(scope: !1748, file: !146, line: 672, column: 17)
!1783 = !DILocation(line: 248, column: 33, scope: !1713)
!1784 = !DILocation(line: 248, column: 48, scope: !1713)
!1785 = !DILocation(line: 249, column: 39, scope: !1713)
!1786 = !DILocation(line: 249, column: 51, scope: !1713)
!1787 = !DILocation(line: 250, column: 46, scope: !1713)
!1788 = !DILocation(line: 250, column: 65, scope: !1713)
!1789 = !DILocation(line: 251, column: 47, scope: !1713)
!1790 = !DILocation(line: 252, column: 39, scope: !1713)
!1791 = !DILocation(line: 253, column: 39, scope: !1713)
!1792 = !DILocation(line: 256, column: 10, scope: !1713)
!1793 = !DILocation(line: 257, column: 10, scope: !1713)
!1794 = !DILocation(line: 258, column: 15, scope: !1713)
!1795 = !DILocation(line: 259, column: 10, scope: !1713)
!1796 = !DILocation(line: 260, column: 8, scope: !1713)
!1797 = !DILocation(line: 261, column: 25, scope: !1713)
!1798 = !DILocation(line: 261, column: 36, scope: !1713)
!1799 = !DILocation(line: 262, column: 8, scope: !1713)
!1800 = !DILocation(line: 263, column: 8, scope: !1713)
!1801 = !DILocation(line: 264, column: 8, scope: !1713)
!1802 = !DILocation(line: 265, column: 8, scope: !1713)
!1803 = !DILocation(line: 265, column: 3, scope: !1713)
!1804 = !DILocation(line: 308, column: 3, scope: !1713)
!1805 = !DILocation(line: 315, column: 11, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1713, file: !146, line: 309, column: 5)
!1807 = !DILocation(line: 315, column: 12, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1806, file: !146, line: 315, column: 11)
!1809 = !DILocation(line: 316, column: 9, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !146, line: 316, column: 9)
!1811 = distinct !DILexicalBlock(scope: !1808, file: !146, line: 316, column: 9)
!1812 = !DILocation(line: 316, column: 9, scope: !1811)
!1813 = !DILocation(line: 354, column: 26, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !146, line: 332, column: 11)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !146, line: 331, column: 13)
!1816 = distinct !DILexicalBlock(scope: !1806, file: !146, line: 330, column: 7)
!1817 = !DILocation(line: 355, column: 27, scope: !1814)
!1818 = !DILocation(line: 356, column: 11, scope: !1814)
!1819 = !DILocation(line: 357, column: 14, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !146, line: 357, column: 13)
!1821 = !DILocation(line: 357, column: 13, scope: !1816)
!1822 = !DILocation(line: 358, column: 43, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !146, line: 358, column: 11)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !146, line: 358, column: 11)
!1825 = !DILocation(line: 358, column: 11, scope: !1824)
!1826 = !DILocation(line: 359, column: 13, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !146, line: 359, column: 13)
!1828 = distinct !DILexicalBlock(scope: !1823, file: !146, line: 359, column: 13)
!1829 = !DILocation(line: 359, column: 13, scope: !1828)
!1830 = !DILocation(line: 358, column: 70, scope: !1823)
!1831 = distinct !{!1831, !1825, !1832}
!1832 = !DILocation(line: 359, column: 13, scope: !1824)
!1833 = !DILocation(line: 362, column: 28, scope: !1816)
!1834 = !DILocation(line: 364, column: 7, scope: !1806)
!1835 = !DILocation(line: 367, column: 7, scope: !1806)
!1836 = !DILocation(line: 370, column: 7, scope: !1806)
!1837 = !DILocation(line: 373, column: 12, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1806, file: !146, line: 373, column: 11)
!1839 = !DILocation(line: 373, column: 11, scope: !1806)
!1840 = !DILocation(line: 378, column: 12, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1806, file: !146, line: 378, column: 11)
!1842 = !DILocation(line: 378, column: 11, scope: !1806)
!1843 = !DILocation(line: 379, column: 9, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !146, line: 379, column: 9)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !146, line: 379, column: 9)
!1846 = !DILocation(line: 379, column: 9, scope: !1845)
!1847 = !DILocation(line: 386, column: 7, scope: !1806)
!1848 = !DILocation(line: 389, column: 7, scope: !1806)
!1849 = !DILocation(line: 255, column: 10, scope: !1713)
!1850 = !DILocation(line: 392, column: 8, scope: !1742)
!1851 = !DILocation(line: 392, column: 27, scope: !1741)
!1852 = !DILocation(line: 392, column: 19, scope: !1741)
!1853 = !DILocation(line: 392, column: 60, scope: !1741)
!1854 = !DILocation(line: 392, column: 3, scope: !1742)
!1855 = !DILocation(line: 392, column: 41, scope: !1741)
!1856 = !DILocation(line: 392, column: 48, scope: !1741)
!1857 = !DILocation(line: 396, column: 12, scope: !1740)
!1858 = !DILocation(line: 397, column: 12, scope: !1740)
!1859 = !DILocation(line: 398, column: 12, scope: !1740)
!1860 = !DILocation(line: 401, column: 11, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1740, file: !146, line: 400, column: 11)
!1862 = !DILocation(line: 403, column: 17, scope: !1861)
!1863 = !DILocation(line: 404, column: 39, scope: !1861)
!1864 = !DILocation(line: 408, column: 32, scope: !1861)
!1865 = !DILocation(line: 404, column: 19, scope: !1861)
!1866 = !DILocation(line: 404, column: 15, scope: !1861)
!1867 = !DILocation(line: 409, column: 11, scope: !1861)
!1868 = !DILocation(line: 409, column: 26, scope: !1861)
!1869 = !DILocation(line: 409, column: 14, scope: !1861)
!1870 = !DILocation(line: 409, column: 63, scope: !1861)
!1871 = !DILocation(line: 400, column: 11, scope: !1740)
!1872 = !DILocation(line: 416, column: 11, scope: !1740)
!1873 = !DILocation(line: 394, column: 21, scope: !1740)
!1874 = !DILocation(line: 417, column: 7, scope: !1740)
!1875 = !DILocation(line: 420, column: 15, scope: !1749)
!1876 = !DILocation(line: 422, column: 15, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !146, line: 422, column: 15)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !146, line: 421, column: 13)
!1879 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 420, column: 15)
!1880 = !DILocation(line: 422, column: 15, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !146, line: 422, column: 15)
!1882 = !DILocation(line: 422, column: 15, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !146, line: 422, column: 15)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !146, line: 422, column: 15)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !146, line: 422, column: 15)
!1886 = !DILocation(line: 422, column: 15, scope: !1884)
!1887 = !DILocation(line: 422, column: 15, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !146, line: 422, column: 15)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !146, line: 422, column: 15)
!1890 = !DILocation(line: 422, column: 15, scope: !1889)
!1891 = !DILocation(line: 422, column: 15, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !146, line: 422, column: 15)
!1893 = distinct !DILexicalBlock(scope: !1885, file: !146, line: 422, column: 15)
!1894 = !DILocation(line: 422, column: 15, scope: !1893)
!1895 = !DILocation(line: 422, column: 15, scope: !1885)
!1896 = !DILocation(line: 422, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !146, line: 422, column: 15)
!1898 = distinct !DILexicalBlock(scope: !1877, file: !146, line: 422, column: 15)
!1899 = !DILocation(line: 422, column: 15, scope: !1898)
!1900 = !DILocation(line: 430, column: 19, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1878, file: !146, line: 429, column: 19)
!1902 = !DILocation(line: 430, column: 24, scope: !1901)
!1903 = !DILocation(line: 430, column: 28, scope: !1901)
!1904 = !DILocation(line: 430, column: 38, scope: !1901)
!1905 = !DILocation(line: 430, column: 48, scope: !1901)
!1906 = !DILocation(line: 430, column: 59, scope: !1901)
!1907 = !DILocation(line: 432, column: 19, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !146, line: 432, column: 19)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !146, line: 432, column: 19)
!1910 = distinct !DILexicalBlock(scope: !1901, file: !146, line: 431, column: 17)
!1911 = !DILocation(line: 432, column: 19, scope: !1909)
!1912 = !DILocation(line: 433, column: 19, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !146, line: 433, column: 19)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !146, line: 433, column: 19)
!1915 = !DILocation(line: 433, column: 19, scope: !1914)
!1916 = !DILocation(line: 434, column: 17, scope: !1910)
!1917 = !DILocation(line: 441, column: 20, scope: !1879)
!1918 = !DILocation(line: 446, column: 11, scope: !1749)
!1919 = !DILocation(line: 449, column: 19, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 447, column: 13)
!1921 = !DILocation(line: 455, column: 19, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1920, file: !146, line: 454, column: 19)
!1923 = !DILocation(line: 455, column: 24, scope: !1922)
!1924 = !DILocation(line: 455, column: 28, scope: !1922)
!1925 = !DILocation(line: 455, column: 38, scope: !1922)
!1926 = !DILocation(line: 455, column: 47, scope: !1922)
!1927 = !DILocation(line: 455, column: 41, scope: !1922)
!1928 = !DILocation(line: 455, column: 52, scope: !1922)
!1929 = !DILocation(line: 454, column: 19, scope: !1920)
!1930 = !DILocation(line: 456, column: 25, scope: !1922)
!1931 = !DILocation(line: 456, column: 17, scope: !1922)
!1932 = !DILocation(line: 463, column: 25, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1922, file: !146, line: 457, column: 19)
!1934 = !DILocation(line: 467, column: 21, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !146, line: 467, column: 21)
!1936 = distinct !DILexicalBlock(scope: !1933, file: !146, line: 467, column: 21)
!1937 = !DILocation(line: 467, column: 21, scope: !1936)
!1938 = !DILocation(line: 468, column: 21, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !146, line: 468, column: 21)
!1940 = distinct !DILexicalBlock(scope: !1933, file: !146, line: 468, column: 21)
!1941 = !DILocation(line: 468, column: 21, scope: !1940)
!1942 = !DILocation(line: 469, column: 21, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !146, line: 469, column: 21)
!1944 = distinct !DILexicalBlock(scope: !1933, file: !146, line: 469, column: 21)
!1945 = !DILocation(line: 469, column: 21, scope: !1944)
!1946 = !DILocation(line: 470, column: 21, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !146, line: 470, column: 21)
!1948 = distinct !DILexicalBlock(scope: !1933, file: !146, line: 470, column: 21)
!1949 = !DILocation(line: 470, column: 21, scope: !1948)
!1950 = !DILocation(line: 471, column: 21, scope: !1933)
!1951 = !DILocation(line: 395, column: 21, scope: !1740)
!1952 = !DILocation(line: 484, column: 31, scope: !1749)
!1953 = !DILocation(line: 485, column: 31, scope: !1749)
!1954 = !DILocation(line: 487, column: 31, scope: !1749)
!1955 = !DILocation(line: 488, column: 31, scope: !1749)
!1956 = !DILocation(line: 489, column: 31, scope: !1749)
!1957 = !DILocation(line: 492, column: 15, scope: !1749)
!1958 = !DILocation(line: 494, column: 19, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !146, line: 493, column: 13)
!1960 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 492, column: 15)
!1961 = !DILocation(line: 501, column: 33, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 501, column: 15)
!1963 = !DILocation(line: 506, column: 15, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 505, column: 15)
!1965 = !DILocation(line: 510, column: 15, scope: !1749)
!1966 = !DILocation(line: 518, column: 26, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 518, column: 15)
!1968 = !DILocation(line: 518, column: 15, scope: !1749)
!1969 = !DILocation(line: 518, column: 40, scope: !1967)
!1970 = !DILocation(line: 518, column: 47, scope: !1967)
!1971 = !DILocation(line: 522, column: 17, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 522, column: 15)
!1973 = !DILocation(line: 518, column: 18, scope: !1967)
!1974 = !DILocation(line: 518, column: 65, scope: !1967)
!1975 = !DILocation(line: 522, column: 15, scope: !1749)
!1976 = !DILocation(line: 526, column: 11, scope: !1749)
!1977 = !DILocation(line: 541, column: 15, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 540, column: 15)
!1979 = !DILocation(line: 548, column: 15, scope: !1749)
!1980 = !DILocation(line: 550, column: 19, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !146, line: 549, column: 13)
!1982 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 548, column: 15)
!1983 = !DILocation(line: 553, column: 19, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1981, file: !146, line: 553, column: 19)
!1985 = !DILocation(line: 553, column: 35, scope: !1984)
!1986 = !DILocation(line: 553, column: 30, scope: !1984)
!1987 = !DILocation(line: 562, column: 15, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !146, line: 562, column: 15)
!1989 = distinct !DILexicalBlock(scope: !1981, file: !146, line: 562, column: 15)
!1990 = !DILocation(line: 562, column: 15, scope: !1989)
!1991 = !DILocation(line: 563, column: 15, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !146, line: 563, column: 15)
!1993 = distinct !DILexicalBlock(scope: !1981, file: !146, line: 563, column: 15)
!1994 = !DILocation(line: 563, column: 15, scope: !1993)
!1995 = !DILocation(line: 564, column: 15, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !146, line: 564, column: 15)
!1997 = distinct !DILexicalBlock(scope: !1981, file: !146, line: 564, column: 15)
!1998 = !DILocation(line: 564, column: 15, scope: !1997)
!1999 = !DILocation(line: 566, column: 13, scope: !1981)
!2000 = !DILocation(line: 606, column: 17, scope: !1748)
!2001 = !DILocation(line: 602, column: 20, scope: !1748)
!2002 = !DILocation(line: 609, column: 29, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1753, file: !146, line: 607, column: 15)
!2004 = !DILocation(line: 609, column: 27, scope: !2003)
!2005 = !DILocation(line: 604, column: 18, scope: !1748)
!2006 = !DILocation(line: 610, column: 15, scope: !2003)
!2007 = !DILocation(line: 613, column: 17, scope: !1752)
!2008 = !DILocation(line: 614, column: 17, scope: !1752)
!2009 = !DILocation(line: 618, column: 29, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1752, file: !146, line: 618, column: 21)
!2011 = !DILocation(line: 618, column: 21, scope: !1752)
!2012 = !DILocation(line: 619, column: 29, scope: !2010)
!2013 = !DILocation(line: 619, column: 19, scope: !2010)
!2014 = !DILocation(line: 621, column: 17, scope: !1752)
!2015 = distinct !{!2015, !2014, !2016}
!2016 = !DILocation(line: 667, column: 44, scope: !1752)
!2017 = !DILocation(line: 623, column: 21, scope: !1770)
!2018 = !DILocation(line: 624, column: 56, scope: !1770)
!2019 = !DILocation(line: 624, column: 50, scope: !1770)
!2020 = !DILocation(line: 625, column: 53, scope: !1770)
!2021 = !DILocation(line: 613, column: 27, scope: !1752)
!2022 = !DILocation(line: 623, column: 29, scope: !1770)
!2023 = !DILocation(line: 624, column: 36, scope: !1770)
!2024 = !DILocation(line: 624, column: 28, scope: !1770)
!2025 = !DILocation(line: 626, column: 25, scope: !1770)
!2026 = !DILocation(line: 636, column: 38, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1777, file: !146, line: 634, column: 23)
!2028 = !DILocation(line: 636, column: 48, scope: !2027)
!2029 = !DILocation(line: 636, column: 51, scope: !2027)
!2030 = !DILocation(line: 636, column: 25, scope: !2027)
!2031 = !DILocation(line: 637, column: 28, scope: !2027)
!2032 = !DILocation(line: 636, column: 34, scope: !2027)
!2033 = distinct !{!2033, !2030, !2031}
!2034 = !DILocation(line: 650, column: 43, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !146, line: 650, column: 29)
!2036 = distinct !DILexicalBlock(scope: !1774, file: !146, line: 650, column: 29)
!2037 = !DILocation(line: 647, column: 29, scope: !1775)
!2038 = !DILocation(line: 649, column: 36, scope: !1774)
!2039 = !DILocation(line: 651, column: 49, scope: !2035)
!2040 = !DILocation(line: 651, column: 39, scope: !2035)
!2041 = !DILocation(line: 651, column: 31, scope: !2035)
!2042 = !DILocation(line: 650, column: 53, scope: !2035)
!2043 = !DILocation(line: 650, column: 29, scope: !2036)
!2044 = distinct !{!2044, !2043, !2045}
!2045 = !DILocation(line: 659, column: 33, scope: !2036)
!2046 = !DILocation(line: 666, column: 19, scope: !1752)
!2047 = !DILocation(line: 662, column: 41, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1776, file: !146, line: 662, column: 29)
!2049 = !DILocation(line: 662, column: 31, scope: !2048)
!2050 = !DILocation(line: 662, column: 29, scope: !1776)
!2051 = !DILocation(line: 664, column: 27, scope: !1776)
!2052 = !DILocation(line: 667, column: 26, scope: !1752)
!2053 = !DILocation(line: 667, column: 24, scope: !1752)
!2054 = !DILocation(line: 666, column: 19, scope: !1770)
!2055 = !DILocation(line: 668, column: 15, scope: !1753)
!2056 = !DILocation(line: 670, column: 40, scope: !1748)
!2057 = !DILocation(line: 672, column: 19, scope: !1782)
!2058 = !DILocation(line: 672, column: 45, scope: !1782)
!2059 = !DILocation(line: 672, column: 23, scope: !1782)
!2060 = !DILocation(line: 676, column: 33, scope: !1781)
!2061 = !DILocation(line: 676, column: 24, scope: !1781)
!2062 = !DILocation(line: 678, column: 17, scope: !1781)
!2063 = !DILocation(line: 680, column: 43, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !146, line: 680, column: 25)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !146, line: 679, column: 19)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !146, line: 678, column: 17)
!2067 = distinct !DILexicalBlock(scope: !1781, file: !146, line: 678, column: 17)
!2068 = !DILocation(line: 682, column: 25, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !146, line: 682, column: 25)
!2070 = distinct !DILexicalBlock(scope: !2064, file: !146, line: 681, column: 23)
!2071 = !DILocation(line: 682, column: 25, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !146, line: 682, column: 25)
!2073 = !DILocation(line: 682, column: 25, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !146, line: 682, column: 25)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !146, line: 682, column: 25)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !146, line: 682, column: 25)
!2077 = !DILocation(line: 682, column: 25, scope: !2075)
!2078 = !DILocation(line: 682, column: 25, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !146, line: 682, column: 25)
!2080 = distinct !DILexicalBlock(scope: !2076, file: !146, line: 682, column: 25)
!2081 = !DILocation(line: 682, column: 25, scope: !2080)
!2082 = !DILocation(line: 682, column: 25, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !146, line: 682, column: 25)
!2084 = distinct !DILexicalBlock(scope: !2076, file: !146, line: 682, column: 25)
!2085 = !DILocation(line: 682, column: 25, scope: !2084)
!2086 = !DILocation(line: 682, column: 25, scope: !2076)
!2087 = !DILocation(line: 682, column: 25, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !146, line: 682, column: 25)
!2089 = distinct !DILexicalBlock(scope: !2069, file: !146, line: 682, column: 25)
!2090 = !DILocation(line: 682, column: 25, scope: !2089)
!2091 = !DILocation(line: 683, column: 25, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !146, line: 683, column: 25)
!2093 = distinct !DILexicalBlock(scope: !2070, file: !146, line: 683, column: 25)
!2094 = !DILocation(line: 683, column: 25, scope: !2093)
!2095 = !DILocation(line: 684, column: 25, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !146, line: 684, column: 25)
!2097 = distinct !DILexicalBlock(scope: !2070, file: !146, line: 684, column: 25)
!2098 = !DILocation(line: 684, column: 25, scope: !2097)
!2099 = !DILocation(line: 685, column: 38, scope: !2070)
!2100 = !DILocation(line: 685, column: 33, scope: !2070)
!2101 = !DILocation(line: 686, column: 23, scope: !2070)
!2102 = !DILocation(line: 687, column: 30, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2064, file: !146, line: 687, column: 30)
!2104 = !DILocation(line: 687, column: 30, scope: !2064)
!2105 = !DILocation(line: 689, column: 25, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !146, line: 689, column: 25)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !146, line: 689, column: 25)
!2108 = distinct !DILexicalBlock(scope: !2103, file: !146, line: 688, column: 23)
!2109 = !DILocation(line: 689, column: 25, scope: !2107)
!2110 = !DILocation(line: 691, column: 23, scope: !2108)
!2111 = !DILocation(line: 692, column: 35, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2065, file: !146, line: 692, column: 25)
!2113 = !DILocation(line: 692, column: 30, scope: !2112)
!2114 = !DILocation(line: 692, column: 25, scope: !2065)
!2115 = !DILocation(line: 694, column: 21, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !146, line: 694, column: 21)
!2117 = distinct !DILexicalBlock(scope: !2065, file: !146, line: 694, column: 21)
!2118 = !DILocation(line: 694, column: 21, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !146, line: 694, column: 21)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !146, line: 694, column: 21)
!2121 = distinct !DILexicalBlock(scope: !2116, file: !146, line: 694, column: 21)
!2122 = !DILocation(line: 694, column: 21, scope: !2120)
!2123 = !DILocation(line: 694, column: 21, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !146, line: 694, column: 21)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !146, line: 694, column: 21)
!2126 = !DILocation(line: 694, column: 21, scope: !2125)
!2127 = !DILocation(line: 694, column: 21, scope: !2121)
!2128 = !DILocation(line: 695, column: 21, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !146, line: 695, column: 21)
!2130 = distinct !DILexicalBlock(scope: !2065, file: !146, line: 695, column: 21)
!2131 = !DILocation(line: 695, column: 21, scope: !2130)
!2132 = !DILocation(line: 696, column: 25, scope: !2065)
!2133 = !DILocation(line: 678, column: 17, scope: !2066)
!2134 = distinct !{!2134, !2135, !2136}
!2135 = !DILocation(line: 678, column: 17, scope: !2067)
!2136 = !DILocation(line: 697, column: 19, scope: !2067)
!2137 = !DILocation(line: 704, column: 34, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1740, file: !146, line: 704, column: 11)
!2139 = !DILocation(line: 706, column: 14, scope: !2138)
!2140 = !DILocation(line: 707, column: 14, scope: !2138)
!2141 = !DILocation(line: 707, column: 35, scope: !2138)
!2142 = !DILocation(line: 707, column: 17, scope: !2138)
!2143 = !DILocation(line: 707, column: 53, scope: !2138)
!2144 = !DILocation(line: 707, column: 47, scope: !2138)
!2145 = !DILocation(line: 707, column: 65, scope: !2138)
!2146 = !DILocation(line: 708, column: 15, scope: !2138)
!2147 = !DILocation(line: 708, column: 11, scope: !2138)
!2148 = !DILocation(line: 704, column: 11, scope: !1740)
!2149 = !DILocation(line: 712, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1740, file: !146, line: 712, column: 7)
!2151 = !DILocation(line: 712, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2150, file: !146, line: 712, column: 7)
!2153 = !DILocation(line: 712, column: 7, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !146, line: 712, column: 7)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !146, line: 712, column: 7)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !146, line: 712, column: 7)
!2157 = !DILocation(line: 712, column: 7, scope: !2155)
!2158 = !DILocation(line: 712, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !146, line: 712, column: 7)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !146, line: 712, column: 7)
!2161 = !DILocation(line: 712, column: 7, scope: !2160)
!2162 = !DILocation(line: 712, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !146, line: 712, column: 7)
!2164 = distinct !DILexicalBlock(scope: !2156, file: !146, line: 712, column: 7)
!2165 = !DILocation(line: 712, column: 7, scope: !2164)
!2166 = !DILocation(line: 712, column: 7, scope: !2156)
!2167 = !DILocation(line: 712, column: 7, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !146, line: 712, column: 7)
!2169 = distinct !DILexicalBlock(scope: !2150, file: !146, line: 712, column: 7)
!2170 = !DILocation(line: 712, column: 7, scope: !2169)
!2171 = !DILocation(line: 715, column: 7, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !146, line: 715, column: 7)
!2173 = distinct !DILexicalBlock(scope: !1740, file: !146, line: 715, column: 7)
!2174 = !DILocation(line: 715, column: 7, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !146, line: 715, column: 7)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !146, line: 715, column: 7)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !146, line: 715, column: 7)
!2178 = !DILocation(line: 715, column: 7, scope: !2176)
!2179 = !DILocation(line: 715, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !146, line: 715, column: 7)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !146, line: 715, column: 7)
!2182 = !DILocation(line: 715, column: 7, scope: !2181)
!2183 = !DILocation(line: 715, column: 7, scope: !2177)
!2184 = !DILocation(line: 716, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !146, line: 716, column: 7)
!2186 = distinct !DILexicalBlock(scope: !1740, file: !146, line: 716, column: 7)
!2187 = !DILocation(line: 716, column: 7, scope: !2186)
!2188 = !DILocation(line: 718, column: 13, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !1740, file: !146, line: 718, column: 11)
!2190 = !DILocation(line: 718, column: 11, scope: !1740)
!2191 = !DILocation(line: 720, column: 5, scope: !1741)
!2192 = !DILocation(line: 392, column: 75, scope: !1741)
!2193 = !DILocation(line: 392, column: 3, scope: !1741)
!2194 = distinct !{!2194, !1854, !2195}
!2195 = !DILocation(line: 720, column: 5, scope: !1742)
!2196 = !DILocation(line: 722, column: 11, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !1713, file: !146, line: 722, column: 7)
!2198 = !DILocation(line: 722, column: 16, scope: !2197)
!2199 = !DILocation(line: 730, column: 51, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1713, file: !146, line: 730, column: 7)
!2201 = !DILocation(line: 731, column: 10, scope: !2200)
!2202 = !DILocation(line: 733, column: 11, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !146, line: 733, column: 11)
!2204 = distinct !DILexicalBlock(scope: !2200, file: !146, line: 732, column: 5)
!2205 = !DILocation(line: 733, column: 11, scope: !2204)
!2206 = !DILocation(line: 734, column: 16, scope: !2203)
!2207 = !DILocation(line: 734, column: 9, scope: !2203)
!2208 = !DILocation(line: 738, column: 18, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2203, file: !146, line: 738, column: 16)
!2210 = !DILocation(line: 738, column: 32, scope: !2209)
!2211 = !DILocation(line: 738, column: 29, scope: !2209)
!2212 = !DILocation(line: 747, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !1713, file: !146, line: 747, column: 7)
!2214 = !DILocation(line: 747, column: 20, scope: !2213)
!2215 = !DILocation(line: 748, column: 12, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !146, line: 748, column: 5)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !146, line: 748, column: 5)
!2218 = !DILocation(line: 748, column: 5, scope: !2217)
!2219 = !DILocation(line: 749, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !146, line: 749, column: 7)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !146, line: 749, column: 7)
!2222 = !DILocation(line: 749, column: 7, scope: !2221)
!2223 = !DILocation(line: 748, column: 39, scope: !2216)
!2224 = distinct !{!2224, !2218, !2225}
!2225 = !DILocation(line: 749, column: 7, scope: !2217)
!2226 = !DILocation(line: 751, column: 11, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !1713, file: !146, line: 751, column: 7)
!2228 = !DILocation(line: 751, column: 7, scope: !1713)
!2229 = !DILocation(line: 752, column: 5, scope: !2227)
!2230 = !DILocation(line: 752, column: 17, scope: !2227)
!2231 = !DILocation(line: 758, column: 21, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !1713, file: !146, line: 758, column: 7)
!2233 = !DILocation(line: 758, column: 54, scope: !2232)
!2234 = !DILocation(line: 758, column: 51, scope: !2232)
!2235 = !DILocation(line: 762, column: 42, scope: !1713)
!2236 = !DILocation(line: 760, column: 10, scope: !1713)
!2237 = !DILocation(line: 760, column: 3, scope: !1713)
!2238 = !DILocation(line: 764, column: 1, scope: !1713)
!2239 = distinct !DISubprogram(name: "gettext_quote", scope: !146, file: !146, line: 199, type: !2240, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!51, !51, !5}
!2242 = !{!2243, !2244, !2245, !2246}
!2243 = !DILocalVariable(name: "msgid", arg: 1, scope: !2239, file: !146, line: 199, type: !51)
!2244 = !DILocalVariable(name: "s", arg: 2, scope: !2239, file: !146, line: 199, type: !5)
!2245 = !DILocalVariable(name: "translation", scope: !2239, file: !146, line: 201, type: !51)
!2246 = !DILocalVariable(name: "locale_code", scope: !2239, file: !146, line: 202, type: !51)
!2247 = !DILocation(line: 199, column: 28, scope: !2239)
!2248 = !DILocation(line: 199, column: 54, scope: !2239)
!2249 = !DILocation(line: 201, column: 29, scope: !2239)
!2250 = !DILocation(line: 201, column: 15, scope: !2239)
!2251 = !DILocation(line: 204, column: 19, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2239, file: !146, line: 204, column: 7)
!2253 = !DILocation(line: 204, column: 7, scope: !2239)
!2254 = !DILocation(line: 225, column: 17, scope: !2239)
!2255 = !DILocation(line: 202, column: 15, scope: !2239)
!2256 = !DILocalVariable(name: "s2", arg: 2, scope: !2257, file: !2258, line: 160, type: !51)
!2257 = distinct !DISubprogram(name: "strcaseeq0", scope: !2258, file: !2258, line: 160, type: !2259, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2261)
!2258 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!39, !51, !51, !37, !37, !37, !37, !37, !37, !37, !37, !37}
!2261 = !{!2262, !2256, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2262 = !DILocalVariable(name: "s1", arg: 1, scope: !2257, file: !2258, line: 160, type: !51)
!2263 = !DILocalVariable(name: "s20", arg: 3, scope: !2257, file: !2258, line: 160, type: !37)
!2264 = !DILocalVariable(name: "s21", arg: 4, scope: !2257, file: !2258, line: 160, type: !37)
!2265 = !DILocalVariable(name: "s22", arg: 5, scope: !2257, file: !2258, line: 160, type: !37)
!2266 = !DILocalVariable(name: "s23", arg: 6, scope: !2257, file: !2258, line: 160, type: !37)
!2267 = !DILocalVariable(name: "s24", arg: 7, scope: !2257, file: !2258, line: 160, type: !37)
!2268 = !DILocalVariable(name: "s25", arg: 8, scope: !2257, file: !2258, line: 160, type: !37)
!2269 = !DILocalVariable(name: "s26", arg: 9, scope: !2257, file: !2258, line: 160, type: !37)
!2270 = !DILocalVariable(name: "s27", arg: 10, scope: !2257, file: !2258, line: 160, type: !37)
!2271 = !DILocalVariable(name: "s28", arg: 11, scope: !2257, file: !2258, line: 160, type: !37)
!2272 = !DILocation(line: 160, column: 41, scope: !2257, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 226, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2239, file: !146, line: 226, column: 7)
!2275 = !DILocation(line: 160, column: 120, scope: !2257, inlinedAt: !2273)
!2276 = !DILocation(line: 160, column: 130, scope: !2257, inlinedAt: !2273)
!2277 = !DILocation(line: 162, column: 7, scope: !2278, inlinedAt: !2273)
!2278 = distinct !DILexicalBlock(scope: !2257, file: !2258, line: 162, column: 7)
!2279 = !DILocalVariable(name: "s2", arg: 2, scope: !2280, file: !2258, line: 146, type: !51)
!2280 = distinct !DISubprogram(name: "strcaseeq1", scope: !2258, file: !2258, line: 146, type: !2281, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!39, !51, !51, !37, !37, !37, !37, !37, !37, !37, !37}
!2283 = !{!2284, !2279, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292}
!2284 = !DILocalVariable(name: "s1", arg: 1, scope: !2280, file: !2258, line: 146, type: !51)
!2285 = !DILocalVariable(name: "s21", arg: 3, scope: !2280, file: !2258, line: 146, type: !37)
!2286 = !DILocalVariable(name: "s22", arg: 4, scope: !2280, file: !2258, line: 146, type: !37)
!2287 = !DILocalVariable(name: "s23", arg: 5, scope: !2280, file: !2258, line: 146, type: !37)
!2288 = !DILocalVariable(name: "s24", arg: 6, scope: !2280, file: !2258, line: 146, type: !37)
!2289 = !DILocalVariable(name: "s25", arg: 7, scope: !2280, file: !2258, line: 146, type: !37)
!2290 = !DILocalVariable(name: "s26", arg: 8, scope: !2280, file: !2258, line: 146, type: !37)
!2291 = !DILocalVariable(name: "s27", arg: 9, scope: !2280, file: !2258, line: 146, type: !37)
!2292 = !DILocalVariable(name: "s28", arg: 10, scope: !2280, file: !2258, line: 146, type: !37)
!2293 = !DILocation(line: 146, column: 41, scope: !2280, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 167, column: 16, scope: !2295, inlinedAt: !2273)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !2258, line: 164, column: 11)
!2296 = distinct !DILexicalBlock(scope: !2278, file: !2258, line: 163, column: 5)
!2297 = !DILocation(line: 146, column: 110, scope: !2280, inlinedAt: !2294)
!2298 = !DILocation(line: 146, column: 120, scope: !2280, inlinedAt: !2294)
!2299 = !DILocation(line: 148, column: 7, scope: !2300, inlinedAt: !2294)
!2300 = distinct !DILexicalBlock(scope: !2280, file: !2258, line: 148, column: 7)
!2301 = !DILocalVariable(name: "s2", arg: 2, scope: !2302, file: !2258, line: 132, type: !51)
!2302 = distinct !DISubprogram(name: "strcaseeq2", scope: !2258, file: !2258, line: 132, type: !2303, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!39, !51, !51, !37, !37, !37, !37, !37, !37, !37}
!2305 = !{!2306, !2301, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2306 = !DILocalVariable(name: "s1", arg: 1, scope: !2302, file: !2258, line: 132, type: !51)
!2307 = !DILocalVariable(name: "s22", arg: 3, scope: !2302, file: !2258, line: 132, type: !37)
!2308 = !DILocalVariable(name: "s23", arg: 4, scope: !2302, file: !2258, line: 132, type: !37)
!2309 = !DILocalVariable(name: "s24", arg: 5, scope: !2302, file: !2258, line: 132, type: !37)
!2310 = !DILocalVariable(name: "s25", arg: 6, scope: !2302, file: !2258, line: 132, type: !37)
!2311 = !DILocalVariable(name: "s26", arg: 7, scope: !2302, file: !2258, line: 132, type: !37)
!2312 = !DILocalVariable(name: "s27", arg: 8, scope: !2302, file: !2258, line: 132, type: !37)
!2313 = !DILocalVariable(name: "s28", arg: 9, scope: !2302, file: !2258, line: 132, type: !37)
!2314 = !DILocation(line: 132, column: 41, scope: !2302, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 153, column: 16, scope: !2316, inlinedAt: !2294)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !2258, line: 150, column: 11)
!2317 = distinct !DILexicalBlock(scope: !2300, file: !2258, line: 149, column: 5)
!2318 = !DILocation(line: 132, column: 100, scope: !2302, inlinedAt: !2315)
!2319 = !DILocation(line: 132, column: 110, scope: !2302, inlinedAt: !2315)
!2320 = !DILocation(line: 134, column: 7, scope: !2321, inlinedAt: !2315)
!2321 = distinct !DILexicalBlock(scope: !2302, file: !2258, line: 134, column: 7)
!2322 = !DILocalVariable(name: "s2", arg: 2, scope: !2323, file: !2258, line: 118, type: !51)
!2323 = distinct !DISubprogram(name: "strcaseeq3", scope: !2258, file: !2258, line: 118, type: !2324, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!39, !51, !51, !37, !37, !37, !37, !37, !37}
!2326 = !{!2327, !2322, !2328, !2329, !2330, !2331, !2332, !2333}
!2327 = !DILocalVariable(name: "s1", arg: 1, scope: !2323, file: !2258, line: 118, type: !51)
!2328 = !DILocalVariable(name: "s23", arg: 3, scope: !2323, file: !2258, line: 118, type: !37)
!2329 = !DILocalVariable(name: "s24", arg: 4, scope: !2323, file: !2258, line: 118, type: !37)
!2330 = !DILocalVariable(name: "s25", arg: 5, scope: !2323, file: !2258, line: 118, type: !37)
!2331 = !DILocalVariable(name: "s26", arg: 6, scope: !2323, file: !2258, line: 118, type: !37)
!2332 = !DILocalVariable(name: "s27", arg: 7, scope: !2323, file: !2258, line: 118, type: !37)
!2333 = !DILocalVariable(name: "s28", arg: 8, scope: !2323, file: !2258, line: 118, type: !37)
!2334 = !DILocation(line: 118, column: 41, scope: !2323, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 139, column: 16, scope: !2336, inlinedAt: !2315)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !2258, line: 136, column: 11)
!2337 = distinct !DILexicalBlock(scope: !2321, file: !2258, line: 135, column: 5)
!2338 = !DILocation(line: 118, column: 90, scope: !2323, inlinedAt: !2335)
!2339 = !DILocation(line: 118, column: 100, scope: !2323, inlinedAt: !2335)
!2340 = !DILocation(line: 120, column: 7, scope: !2341, inlinedAt: !2335)
!2341 = distinct !DILexicalBlock(scope: !2323, file: !2258, line: 120, column: 7)
!2342 = !DILocation(line: 120, column: 7, scope: !2323, inlinedAt: !2335)
!2343 = !DILocalVariable(name: "s2", arg: 2, scope: !2344, file: !2258, line: 104, type: !51)
!2344 = distinct !DISubprogram(name: "strcaseeq4", scope: !2258, file: !2258, line: 104, type: !2345, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!39, !51, !51, !37, !37, !37, !37, !37}
!2347 = !{!2348, !2343, !2349, !2350, !2351, !2352, !2353}
!2348 = !DILocalVariable(name: "s1", arg: 1, scope: !2344, file: !2258, line: 104, type: !51)
!2349 = !DILocalVariable(name: "s24", arg: 3, scope: !2344, file: !2258, line: 104, type: !37)
!2350 = !DILocalVariable(name: "s25", arg: 4, scope: !2344, file: !2258, line: 104, type: !37)
!2351 = !DILocalVariable(name: "s26", arg: 5, scope: !2344, file: !2258, line: 104, type: !37)
!2352 = !DILocalVariable(name: "s27", arg: 6, scope: !2344, file: !2258, line: 104, type: !37)
!2353 = !DILocalVariable(name: "s28", arg: 7, scope: !2344, file: !2258, line: 104, type: !37)
!2354 = !DILocation(line: 104, column: 41, scope: !2344, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 125, column: 16, scope: !2356, inlinedAt: !2335)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !2258, line: 122, column: 11)
!2357 = distinct !DILexicalBlock(scope: !2341, file: !2258, line: 121, column: 5)
!2358 = !DILocation(line: 104, column: 80, scope: !2344, inlinedAt: !2355)
!2359 = !DILocation(line: 104, column: 90, scope: !2344, inlinedAt: !2355)
!2360 = !DILocation(line: 106, column: 7, scope: !2361, inlinedAt: !2355)
!2361 = distinct !DILexicalBlock(scope: !2344, file: !2258, line: 106, column: 7)
!2362 = !DILocation(line: 106, column: 7, scope: !2344, inlinedAt: !2355)
!2363 = !DILocalVariable(name: "s2", arg: 2, scope: !2364, file: !2258, line: 90, type: !51)
!2364 = distinct !DISubprogram(name: "strcaseeq5", scope: !2258, file: !2258, line: 90, type: !2365, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!39, !51, !51, !37, !37, !37, !37}
!2367 = !{!2368, !2363, !2369, !2370, !2371, !2372}
!2368 = !DILocalVariable(name: "s1", arg: 1, scope: !2364, file: !2258, line: 90, type: !51)
!2369 = !DILocalVariable(name: "s25", arg: 3, scope: !2364, file: !2258, line: 90, type: !37)
!2370 = !DILocalVariable(name: "s26", arg: 4, scope: !2364, file: !2258, line: 90, type: !37)
!2371 = !DILocalVariable(name: "s27", arg: 5, scope: !2364, file: !2258, line: 90, type: !37)
!2372 = !DILocalVariable(name: "s28", arg: 6, scope: !2364, file: !2258, line: 90, type: !37)
!2373 = !DILocation(line: 90, column: 41, scope: !2364, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 111, column: 16, scope: !2375, inlinedAt: !2355)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !2258, line: 108, column: 11)
!2376 = distinct !DILexicalBlock(scope: !2361, file: !2258, line: 107, column: 5)
!2377 = !DILocation(line: 90, column: 70, scope: !2364, inlinedAt: !2374)
!2378 = !DILocation(line: 90, column: 80, scope: !2364, inlinedAt: !2374)
!2379 = !DILocation(line: 92, column: 7, scope: !2380, inlinedAt: !2374)
!2380 = distinct !DILexicalBlock(scope: !2364, file: !2258, line: 92, column: 7)
!2381 = !DILocation(line: 92, column: 7, scope: !2364, inlinedAt: !2374)
!2382 = !DILocation(line: 227, column: 12, scope: !2274)
!2383 = !DILocation(line: 227, column: 21, scope: !2274)
!2384 = !DILocation(line: 227, column: 5, scope: !2274)
!2385 = !DILocation(line: 146, column: 41, scope: !2280, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 167, column: 16, scope: !2295, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 228, column: 7, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2239, file: !146, line: 228, column: 7)
!2389 = !DILocation(line: 146, column: 110, scope: !2280, inlinedAt: !2386)
!2390 = !DILocation(line: 146, column: 120, scope: !2280, inlinedAt: !2386)
!2391 = !DILocation(line: 148, column: 7, scope: !2300, inlinedAt: !2386)
!2392 = !DILocation(line: 132, column: 41, scope: !2302, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 153, column: 16, scope: !2316, inlinedAt: !2386)
!2394 = !DILocation(line: 132, column: 100, scope: !2302, inlinedAt: !2393)
!2395 = !DILocation(line: 132, column: 110, scope: !2302, inlinedAt: !2393)
!2396 = !DILocation(line: 134, column: 7, scope: !2321, inlinedAt: !2393)
!2397 = !DILocation(line: 134, column: 7, scope: !2302, inlinedAt: !2393)
!2398 = !DILocation(line: 118, column: 41, scope: !2323, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 139, column: 16, scope: !2336, inlinedAt: !2393)
!2400 = !DILocation(line: 118, column: 90, scope: !2323, inlinedAt: !2399)
!2401 = !DILocation(line: 118, column: 100, scope: !2323, inlinedAt: !2399)
!2402 = !DILocation(line: 120, column: 7, scope: !2341, inlinedAt: !2399)
!2403 = !DILocation(line: 120, column: 7, scope: !2323, inlinedAt: !2399)
!2404 = !DILocation(line: 104, column: 41, scope: !2344, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 125, column: 16, scope: !2356, inlinedAt: !2399)
!2406 = !DILocation(line: 104, column: 80, scope: !2344, inlinedAt: !2405)
!2407 = !DILocation(line: 104, column: 90, scope: !2344, inlinedAt: !2405)
!2408 = !DILocation(line: 106, column: 7, scope: !2361, inlinedAt: !2405)
!2409 = !DILocation(line: 106, column: 7, scope: !2344, inlinedAt: !2405)
!2410 = !DILocation(line: 90, column: 41, scope: !2364, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 111, column: 16, scope: !2375, inlinedAt: !2405)
!2412 = !DILocation(line: 90, column: 70, scope: !2364, inlinedAt: !2411)
!2413 = !DILocation(line: 90, column: 80, scope: !2364, inlinedAt: !2411)
!2414 = !DILocation(line: 92, column: 7, scope: !2380, inlinedAt: !2411)
!2415 = !DILocation(line: 92, column: 7, scope: !2364, inlinedAt: !2411)
!2416 = !DILocalVariable(name: "s2", arg: 2, scope: !2417, file: !2258, line: 76, type: !51)
!2417 = distinct !DISubprogram(name: "strcaseeq6", scope: !2258, file: !2258, line: 76, type: !2418, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!39, !51, !51, !37, !37, !37}
!2420 = !{!2421, !2416, !2422, !2423, !2424}
!2421 = !DILocalVariable(name: "s1", arg: 1, scope: !2417, file: !2258, line: 76, type: !51)
!2422 = !DILocalVariable(name: "s26", arg: 3, scope: !2417, file: !2258, line: 76, type: !37)
!2423 = !DILocalVariable(name: "s27", arg: 4, scope: !2417, file: !2258, line: 76, type: !37)
!2424 = !DILocalVariable(name: "s28", arg: 5, scope: !2417, file: !2258, line: 76, type: !37)
!2425 = !DILocation(line: 76, column: 41, scope: !2417, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 97, column: 16, scope: !2427, inlinedAt: !2411)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !2258, line: 94, column: 11)
!2428 = distinct !DILexicalBlock(scope: !2380, file: !2258, line: 93, column: 5)
!2429 = !DILocation(line: 76, column: 60, scope: !2417, inlinedAt: !2426)
!2430 = !DILocation(line: 76, column: 70, scope: !2417, inlinedAt: !2426)
!2431 = !DILocation(line: 78, column: 7, scope: !2432, inlinedAt: !2426)
!2432 = distinct !DILexicalBlock(scope: !2417, file: !2258, line: 78, column: 7)
!2433 = !DILocation(line: 78, column: 7, scope: !2417, inlinedAt: !2426)
!2434 = !DILocalVariable(name: "s2", arg: 2, scope: !2435, file: !2258, line: 62, type: !51)
!2435 = distinct !DISubprogram(name: "strcaseeq7", scope: !2258, file: !2258, line: 62, type: !2436, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!39, !51, !51, !37, !37}
!2438 = !{!2439, !2434, !2440, !2441}
!2439 = !DILocalVariable(name: "s1", arg: 1, scope: !2435, file: !2258, line: 62, type: !51)
!2440 = !DILocalVariable(name: "s27", arg: 3, scope: !2435, file: !2258, line: 62, type: !37)
!2441 = !DILocalVariable(name: "s28", arg: 4, scope: !2435, file: !2258, line: 62, type: !37)
!2442 = !DILocation(line: 62, column: 41, scope: !2435, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 83, column: 16, scope: !2444, inlinedAt: !2426)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !2258, line: 80, column: 11)
!2445 = distinct !DILexicalBlock(scope: !2432, file: !2258, line: 79, column: 5)
!2446 = !DILocation(line: 62, column: 50, scope: !2435, inlinedAt: !2443)
!2447 = !DILocation(line: 62, column: 60, scope: !2435, inlinedAt: !2443)
!2448 = !DILocation(line: 64, column: 7, scope: !2449, inlinedAt: !2443)
!2449 = distinct !DILexicalBlock(scope: !2435, file: !2258, line: 64, column: 7)
!2450 = !DILocation(line: 228, column: 7, scope: !2239)
!2451 = !DILocation(line: 229, column: 12, scope: !2388)
!2452 = !DILocation(line: 229, column: 21, scope: !2388)
!2453 = !DILocation(line: 229, column: 5, scope: !2388)
!2454 = !DILocation(line: 231, column: 13, scope: !2239)
!2455 = !DILocation(line: 231, column: 11, scope: !2239)
!2456 = !DILocation(line: 231, column: 3, scope: !2239)
!2457 = !DILocation(line: 232, column: 1, scope: !2239)
!2458 = distinct !DISubprogram(name: "quotearg_alloc", scope: !146, file: !146, line: 791, type: !2459, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!36, !51, !140, !1585}
!2461 = !{!2462, !2463, !2464}
!2462 = !DILocalVariable(name: "arg", arg: 1, scope: !2458, file: !146, line: 791, type: !51)
!2463 = !DILocalVariable(name: "argsize", arg: 2, scope: !2458, file: !146, line: 791, type: !140)
!2464 = !DILocalVariable(name: "o", arg: 3, scope: !2458, file: !146, line: 792, type: !1585)
!2465 = !DILocation(line: 791, column: 29, scope: !2458)
!2466 = !DILocation(line: 791, column: 41, scope: !2458)
!2467 = !DILocation(line: 792, column: 47, scope: !2458)
!2468 = !DILocalVariable(name: "arg", arg: 1, scope: !2469, file: !146, line: 804, type: !51)
!2469 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !146, file: !146, line: 804, type: !2470, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2472)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!36, !51, !140, !661, !1585}
!2472 = !{!2468, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480}
!2473 = !DILocalVariable(name: "argsize", arg: 2, scope: !2469, file: !146, line: 804, type: !140)
!2474 = !DILocalVariable(name: "size", arg: 3, scope: !2469, file: !146, line: 804, type: !661)
!2475 = !DILocalVariable(name: "o", arg: 4, scope: !2469, file: !146, line: 805, type: !1585)
!2476 = !DILocalVariable(name: "p", scope: !2469, file: !146, line: 807, type: !1585)
!2477 = !DILocalVariable(name: "e", scope: !2469, file: !146, line: 808, type: !39)
!2478 = !DILocalVariable(name: "flags", scope: !2469, file: !146, line: 810, type: !39)
!2479 = !DILocalVariable(name: "bufsize", scope: !2469, file: !146, line: 811, type: !140)
!2480 = !DILocalVariable(name: "buf", scope: !2469, file: !146, line: 815, type: !36)
!2481 = !DILocation(line: 804, column: 33, scope: !2469, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 794, column: 10, scope: !2458)
!2483 = !DILocation(line: 804, column: 45, scope: !2469, inlinedAt: !2482)
!2484 = !DILocation(line: 804, column: 62, scope: !2469, inlinedAt: !2482)
!2485 = !DILocation(line: 805, column: 51, scope: !2469, inlinedAt: !2482)
!2486 = !DILocation(line: 807, column: 37, scope: !2469, inlinedAt: !2482)
!2487 = !DILocation(line: 807, column: 33, scope: !2469, inlinedAt: !2482)
!2488 = !DILocation(line: 808, column: 11, scope: !2469, inlinedAt: !2482)
!2489 = !DILocation(line: 808, column: 7, scope: !2469, inlinedAt: !2482)
!2490 = !DILocation(line: 810, column: 18, scope: !2469, inlinedAt: !2482)
!2491 = !DILocation(line: 810, column: 24, scope: !2469, inlinedAt: !2482)
!2492 = !DILocation(line: 810, column: 7, scope: !2469, inlinedAt: !2482)
!2493 = !DILocation(line: 811, column: 69, scope: !2469, inlinedAt: !2482)
!2494 = !DILocation(line: 812, column: 53, scope: !2469, inlinedAt: !2482)
!2495 = !DILocation(line: 813, column: 49, scope: !2469, inlinedAt: !2482)
!2496 = !DILocation(line: 814, column: 49, scope: !2469, inlinedAt: !2482)
!2497 = !DILocation(line: 811, column: 20, scope: !2469, inlinedAt: !2482)
!2498 = !DILocation(line: 814, column: 62, scope: !2469, inlinedAt: !2482)
!2499 = !DILocation(line: 811, column: 10, scope: !2469, inlinedAt: !2482)
!2500 = !DILocalVariable(name: "n", arg: 1, scope: !2501, file: !657, line: 220, type: !140)
!2501 = distinct !DISubprogram(name: "xcharalloc", scope: !657, file: !657, line: 220, type: !2502, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!36, !140}
!2504 = !{!2500}
!2505 = !DILocation(line: 220, column: 20, scope: !2501, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 815, column: 15, scope: !2469, inlinedAt: !2482)
!2507 = !DILocation(line: 222, column: 10, scope: !2501, inlinedAt: !2506)
!2508 = !DILocation(line: 815, column: 9, scope: !2469, inlinedAt: !2482)
!2509 = !DILocation(line: 816, column: 60, scope: !2469, inlinedAt: !2482)
!2510 = !DILocation(line: 818, column: 32, scope: !2469, inlinedAt: !2482)
!2511 = !DILocation(line: 818, column: 47, scope: !2469, inlinedAt: !2482)
!2512 = !DILocation(line: 816, column: 3, scope: !2469, inlinedAt: !2482)
!2513 = !DILocation(line: 819, column: 9, scope: !2469, inlinedAt: !2482)
!2514 = !DILocation(line: 794, column: 3, scope: !2458)
!2515 = !DILocation(line: 804, column: 33, scope: !2469)
!2516 = !DILocation(line: 804, column: 45, scope: !2469)
!2517 = !DILocation(line: 804, column: 62, scope: !2469)
!2518 = !DILocation(line: 805, column: 51, scope: !2469)
!2519 = !DILocation(line: 807, column: 37, scope: !2469)
!2520 = !DILocation(line: 807, column: 33, scope: !2469)
!2521 = !DILocation(line: 808, column: 11, scope: !2469)
!2522 = !DILocation(line: 808, column: 7, scope: !2469)
!2523 = !DILocation(line: 810, column: 18, scope: !2469)
!2524 = !DILocation(line: 810, column: 27, scope: !2469)
!2525 = !DILocation(line: 810, column: 24, scope: !2469)
!2526 = !DILocation(line: 810, column: 7, scope: !2469)
!2527 = !DILocation(line: 811, column: 69, scope: !2469)
!2528 = !DILocation(line: 812, column: 53, scope: !2469)
!2529 = !DILocation(line: 813, column: 49, scope: !2469)
!2530 = !DILocation(line: 814, column: 49, scope: !2469)
!2531 = !DILocation(line: 811, column: 20, scope: !2469)
!2532 = !DILocation(line: 814, column: 62, scope: !2469)
!2533 = !DILocation(line: 811, column: 10, scope: !2469)
!2534 = !DILocation(line: 220, column: 20, scope: !2501, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 815, column: 15, scope: !2469)
!2536 = !DILocation(line: 222, column: 10, scope: !2501, inlinedAt: !2535)
!2537 = !DILocation(line: 815, column: 9, scope: !2469)
!2538 = !DILocation(line: 816, column: 60, scope: !2469)
!2539 = !DILocation(line: 818, column: 32, scope: !2469)
!2540 = !DILocation(line: 818, column: 47, scope: !2469)
!2541 = !DILocation(line: 816, column: 3, scope: !2469)
!2542 = !DILocation(line: 819, column: 9, scope: !2469)
!2543 = !DILocation(line: 820, column: 7, scope: !2469)
!2544 = !DILocation(line: 821, column: 11, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2469, file: !146, line: 820, column: 7)
!2546 = !{!869, !869, i64 0}
!2547 = !DILocation(line: 821, column: 5, scope: !2545)
!2548 = !DILocation(line: 822, column: 3, scope: !2469)
!2549 = distinct !DISubprogram(name: "quotearg_free", scope: !146, file: !146, line: 840, type: !1492, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2550)
!2550 = !{!2551, !2552}
!2551 = !DILocalVariable(name: "sv", scope: !2549, file: !146, line: 842, type: !172)
!2552 = !DILocalVariable(name: "i", scope: !2549, file: !146, line: 843, type: !39)
!2553 = !DILocation(line: 842, column: 24, scope: !2549)
!2554 = !DILocation(line: 842, column: 19, scope: !2549)
!2555 = !DILocation(line: 843, column: 7, scope: !2549)
!2556 = !DILocation(line: 844, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !146, line: 844, column: 3)
!2558 = distinct !DILexicalBlock(scope: !2549, file: !146, line: 844, column: 3)
!2559 = !DILocation(line: 844, column: 17, scope: !2557)
!2560 = !DILocation(line: 844, column: 3, scope: !2558)
!2561 = !DILocation(line: 845, column: 17, scope: !2557)
!2562 = !{!2563, !708, i64 8}
!2563 = !{!"slotvec", !869, i64 0, !708, i64 8}
!2564 = !DILocation(line: 845, column: 5, scope: !2557)
!2565 = !DILocation(line: 844, column: 28, scope: !2557)
!2566 = distinct !{!2566, !2560, !2567}
!2567 = !DILocation(line: 845, column: 20, scope: !2558)
!2568 = !DILocation(line: 846, column: 13, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2549, file: !146, line: 846, column: 7)
!2570 = !DILocation(line: 846, column: 17, scope: !2569)
!2571 = !DILocation(line: 846, column: 7, scope: !2549)
!2572 = !DILocation(line: 848, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2569, file: !146, line: 847, column: 5)
!2574 = !DILocation(line: 849, column: 21, scope: !2573)
!2575 = !{!2563, !869, i64 0}
!2576 = !DILocation(line: 850, column: 20, scope: !2573)
!2577 = !DILocation(line: 851, column: 5, scope: !2573)
!2578 = !DILocation(line: 852, column: 10, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2549, file: !146, line: 852, column: 7)
!2580 = !DILocation(line: 852, column: 7, scope: !2549)
!2581 = !DILocation(line: 854, column: 13, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2579, file: !146, line: 853, column: 5)
!2583 = !DILocation(line: 854, column: 7, scope: !2582)
!2584 = !DILocation(line: 855, column: 15, scope: !2582)
!2585 = !DILocation(line: 856, column: 5, scope: !2582)
!2586 = !DILocation(line: 857, column: 10, scope: !2549)
!2587 = !DILocation(line: 858, column: 1, scope: !2549)
!2588 = distinct !DISubprogram(name: "quotearg_n", scope: !146, file: !146, line: 922, type: !2589, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!36, !39, !51}
!2591 = !{!2592, !2593}
!2592 = !DILocalVariable(name: "n", arg: 1, scope: !2588, file: !146, line: 922, type: !39)
!2593 = !DILocalVariable(name: "arg", arg: 2, scope: !2588, file: !146, line: 922, type: !51)
!2594 = !DILocation(line: 922, column: 17, scope: !2588)
!2595 = !DILocation(line: 922, column: 32, scope: !2588)
!2596 = !DILocation(line: 924, column: 10, scope: !2588)
!2597 = !DILocation(line: 924, column: 3, scope: !2588)
!2598 = distinct !DISubprogram(name: "quotearg_n_options", scope: !146, file: !146, line: 869, type: !2599, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!36, !39, !51, !140, !1585}
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2608, !2611, !2613, !2614, !2615}
!2602 = !DILocalVariable(name: "n", arg: 1, scope: !2598, file: !146, line: 869, type: !39)
!2603 = !DILocalVariable(name: "arg", arg: 2, scope: !2598, file: !146, line: 869, type: !51)
!2604 = !DILocalVariable(name: "argsize", arg: 3, scope: !2598, file: !146, line: 869, type: !140)
!2605 = !DILocalVariable(name: "options", arg: 4, scope: !2598, file: !146, line: 870, type: !1585)
!2606 = !DILocalVariable(name: "e", scope: !2598, file: !146, line: 872, type: !39)
!2607 = !DILocalVariable(name: "sv", scope: !2598, file: !146, line: 874, type: !172)
!2608 = !DILocalVariable(name: "preallocated", scope: !2609, file: !146, line: 881, type: !70)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !146, line: 880, column: 5)
!2610 = distinct !DILexicalBlock(scope: !2598, file: !146, line: 879, column: 7)
!2611 = !DILocalVariable(name: "size", scope: !2612, file: !146, line: 894, type: !140)
!2612 = distinct !DILexicalBlock(scope: !2598, file: !146, line: 893, column: 3)
!2613 = !DILocalVariable(name: "val", scope: !2612, file: !146, line: 895, type: !36)
!2614 = !DILocalVariable(name: "flags", scope: !2612, file: !146, line: 897, type: !39)
!2615 = !DILocalVariable(name: "qsize", scope: !2612, file: !146, line: 898, type: !140)
!2616 = !DILocation(line: 869, column: 25, scope: !2598)
!2617 = !DILocation(line: 869, column: 40, scope: !2598)
!2618 = !DILocation(line: 869, column: 52, scope: !2598)
!2619 = !DILocation(line: 870, column: 51, scope: !2598)
!2620 = !DILocation(line: 872, column: 11, scope: !2598)
!2621 = !DILocation(line: 872, column: 7, scope: !2598)
!2622 = !DILocation(line: 874, column: 24, scope: !2598)
!2623 = !DILocation(line: 874, column: 19, scope: !2598)
!2624 = !DILocation(line: 876, column: 9, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2598, file: !146, line: 876, column: 7)
!2626 = !DILocation(line: 876, column: 7, scope: !2598)
!2627 = !DILocation(line: 877, column: 5, scope: !2625)
!2628 = !DILocation(line: 879, column: 7, scope: !2610)
!2629 = !DILocation(line: 879, column: 14, scope: !2610)
!2630 = !DILocation(line: 879, column: 7, scope: !2598)
!2631 = !DILocation(line: 881, column: 31, scope: !2609)
!2632 = !DILocation(line: 883, column: 67, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2609, file: !146, line: 883, column: 11)
!2634 = !DILocation(line: 883, column: 11, scope: !2609)
!2635 = !DILocation(line: 884, column: 9, scope: !2633)
!2636 = !DILocation(line: 886, column: 32, scope: !2609)
!2637 = !DILocation(line: 886, column: 61, scope: !2609)
!2638 = !DILocation(line: 886, column: 58, scope: !2609)
!2639 = !DILocation(line: 886, column: 66, scope: !2609)
!2640 = !DILocation(line: 886, column: 22, scope: !2609)
!2641 = !DILocation(line: 886, column: 15, scope: !2609)
!2642 = !DILocation(line: 887, column: 11, scope: !2609)
!2643 = !DILocation(line: 888, column: 15, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2609, file: !146, line: 887, column: 11)
!2645 = !{i64 0, i64 8, !2546, i64 8, i64 8, !707}
!2646 = !DILocation(line: 888, column: 9, scope: !2644)
!2647 = !DILocation(line: 889, column: 20, scope: !2609)
!2648 = !DILocation(line: 889, column: 18, scope: !2609)
!2649 = !DILocation(line: 889, column: 7, scope: !2609)
!2650 = !DILocation(line: 889, column: 38, scope: !2609)
!2651 = !DILocation(line: 889, column: 31, scope: !2609)
!2652 = !DILocation(line: 889, column: 48, scope: !2609)
!2653 = !DILocation(line: 890, column: 14, scope: !2609)
!2654 = !DILocation(line: 891, column: 5, scope: !2609)
!2655 = !DILocation(line: 894, column: 19, scope: !2612)
!2656 = !DILocation(line: 894, column: 25, scope: !2612)
!2657 = !DILocation(line: 894, column: 12, scope: !2612)
!2658 = !DILocation(line: 895, column: 23, scope: !2612)
!2659 = !DILocation(line: 895, column: 11, scope: !2612)
!2660 = !DILocation(line: 897, column: 26, scope: !2612)
!2661 = !DILocation(line: 897, column: 32, scope: !2612)
!2662 = !DILocation(line: 897, column: 9, scope: !2612)
!2663 = !DILocation(line: 899, column: 55, scope: !2612)
!2664 = !DILocation(line: 900, column: 46, scope: !2612)
!2665 = !DILocation(line: 901, column: 55, scope: !2612)
!2666 = !DILocation(line: 902, column: 55, scope: !2612)
!2667 = !DILocation(line: 898, column: 20, scope: !2612)
!2668 = !DILocation(line: 898, column: 12, scope: !2612)
!2669 = !DILocation(line: 904, column: 14, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2612, file: !146, line: 904, column: 9)
!2671 = !DILocation(line: 904, column: 9, scope: !2612)
!2672 = !DILocation(line: 906, column: 35, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2670, file: !146, line: 905, column: 7)
!2674 = !DILocation(line: 906, column: 20, scope: !2673)
!2675 = !DILocation(line: 907, column: 17, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !146, line: 907, column: 13)
!2677 = !DILocation(line: 907, column: 13, scope: !2673)
!2678 = !DILocation(line: 908, column: 11, scope: !2676)
!2679 = !DILocation(line: 220, column: 20, scope: !2501, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 909, column: 27, scope: !2673)
!2681 = !DILocation(line: 222, column: 10, scope: !2501, inlinedAt: !2680)
!2682 = !DILocation(line: 909, column: 19, scope: !2673)
!2683 = !DILocation(line: 910, column: 69, scope: !2673)
!2684 = !DILocation(line: 912, column: 44, scope: !2673)
!2685 = !DILocation(line: 913, column: 44, scope: !2673)
!2686 = !DILocation(line: 910, column: 9, scope: !2673)
!2687 = !DILocation(line: 914, column: 7, scope: !2673)
!2688 = !DILocation(line: 916, column: 11, scope: !2612)
!2689 = !DILocation(line: 917, column: 5, scope: !2612)
!2690 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !146, file: !146, line: 928, type: !2691, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!36, !39, !51, !140}
!2693 = !{!2694, !2695, !2696}
!2694 = !DILocalVariable(name: "n", arg: 1, scope: !2690, file: !146, line: 928, type: !39)
!2695 = !DILocalVariable(name: "arg", arg: 2, scope: !2690, file: !146, line: 928, type: !51)
!2696 = !DILocalVariable(name: "argsize", arg: 3, scope: !2690, file: !146, line: 928, type: !140)
!2697 = !DILocation(line: 928, column: 21, scope: !2690)
!2698 = !DILocation(line: 928, column: 36, scope: !2690)
!2699 = !DILocation(line: 928, column: 48, scope: !2690)
!2700 = !DILocation(line: 930, column: 10, scope: !2690)
!2701 = !DILocation(line: 930, column: 3, scope: !2690)
!2702 = distinct !DISubprogram(name: "quotearg", scope: !146, file: !146, line: 934, type: !2703, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!36, !51}
!2705 = !{!2706}
!2706 = !DILocalVariable(name: "arg", arg: 1, scope: !2702, file: !146, line: 934, type: !51)
!2707 = !DILocation(line: 934, column: 23, scope: !2702)
!2708 = !DILocation(line: 922, column: 17, scope: !2588, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 936, column: 10, scope: !2702)
!2710 = !DILocation(line: 922, column: 32, scope: !2588, inlinedAt: !2709)
!2711 = !DILocation(line: 924, column: 10, scope: !2588, inlinedAt: !2709)
!2712 = !DILocation(line: 936, column: 3, scope: !2702)
!2713 = distinct !DISubprogram(name: "quotearg_mem", scope: !146, file: !146, line: 940, type: !2714, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!36, !51, !140}
!2716 = !{!2717, !2718}
!2717 = !DILocalVariable(name: "arg", arg: 1, scope: !2713, file: !146, line: 940, type: !51)
!2718 = !DILocalVariable(name: "argsize", arg: 2, scope: !2713, file: !146, line: 940, type: !140)
!2719 = !DILocation(line: 940, column: 27, scope: !2713)
!2720 = !DILocation(line: 940, column: 39, scope: !2713)
!2721 = !DILocation(line: 928, column: 21, scope: !2690, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 942, column: 10, scope: !2713)
!2723 = !DILocation(line: 928, column: 36, scope: !2690, inlinedAt: !2722)
!2724 = !DILocation(line: 928, column: 48, scope: !2690, inlinedAt: !2722)
!2725 = !DILocation(line: 930, column: 10, scope: !2690, inlinedAt: !2722)
!2726 = !DILocation(line: 942, column: 3, scope: !2713)
!2727 = distinct !DISubprogram(name: "quotearg_n_style", scope: !146, file: !146, line: 946, type: !2728, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!36, !39, !5, !51}
!2730 = !{!2731, !2732, !2733, !2734}
!2731 = !DILocalVariable(name: "n", arg: 1, scope: !2727, file: !146, line: 946, type: !39)
!2732 = !DILocalVariable(name: "s", arg: 2, scope: !2727, file: !146, line: 946, type: !5)
!2733 = !DILocalVariable(name: "arg", arg: 3, scope: !2727, file: !146, line: 946, type: !51)
!2734 = !DILocalVariable(name: "o", scope: !2727, file: !146, line: 948, type: !1586)
!2735 = !DILocalVariable(name: "o", scope: !2736, file: !146, line: 187, type: !153)
!2736 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !146, file: !146, line: 185, type: !2737, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!153, !5}
!2739 = !{!2740, !2735}
!2740 = !DILocalVariable(name: "style", arg: 1, scope: !2736, file: !146, line: 185, type: !5)
!2741 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2742 = !DILocation(line: 187, column: 26, scope: !2736, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 948, column: 36, scope: !2727)
!2744 = !DILocation(line: 946, column: 23, scope: !2727)
!2745 = !DILocation(line: 946, column: 45, scope: !2727)
!2746 = !DILocation(line: 946, column: 60, scope: !2727)
!2747 = !DILocation(line: 948, column: 3, scope: !2727)
!2748 = !DILocation(line: 948, column: 32, scope: !2727)
!2749 = !DILocation(line: 185, column: 48, scope: !2736, inlinedAt: !2743)
!2750 = !DILocation(line: 187, column: 3, scope: !2736, inlinedAt: !2743)
!2751 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2752 = !DILocation(line: 188, column: 13, scope: !2753, inlinedAt: !2743)
!2753 = distinct !DILexicalBlock(scope: !2736, file: !146, line: 188, column: 7)
!2754 = !DILocation(line: 188, column: 7, scope: !2736, inlinedAt: !2743)
!2755 = !DILocation(line: 189, column: 5, scope: !2753, inlinedAt: !2743)
!2756 = !{!2757}
!2757 = distinct !{!2757, !2758, !"quoting_options_from_style: argument 0"}
!2758 = distinct !{!2758, !"quoting_options_from_style"}
!2759 = !DILocation(line: 191, column: 10, scope: !2736, inlinedAt: !2743)
!2760 = !DILocation(line: 192, column: 1, scope: !2736, inlinedAt: !2743)
!2761 = !DILocation(line: 949, column: 10, scope: !2727)
!2762 = !DILocation(line: 950, column: 1, scope: !2727)
!2763 = !DILocation(line: 949, column: 3, scope: !2727)
!2764 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !146, file: !146, line: 953, type: !2765, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!36, !39, !5, !51, !140}
!2767 = !{!2768, !2769, !2770, !2771, !2772}
!2768 = !DILocalVariable(name: "n", arg: 1, scope: !2764, file: !146, line: 953, type: !39)
!2769 = !DILocalVariable(name: "s", arg: 2, scope: !2764, file: !146, line: 953, type: !5)
!2770 = !DILocalVariable(name: "arg", arg: 3, scope: !2764, file: !146, line: 954, type: !51)
!2771 = !DILocalVariable(name: "argsize", arg: 4, scope: !2764, file: !146, line: 954, type: !140)
!2772 = !DILocalVariable(name: "o", scope: !2764, file: !146, line: 956, type: !1586)
!2773 = !DILocation(line: 187, column: 26, scope: !2736, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 956, column: 36, scope: !2764)
!2775 = !DILocation(line: 953, column: 27, scope: !2764)
!2776 = !DILocation(line: 953, column: 49, scope: !2764)
!2777 = !DILocation(line: 954, column: 35, scope: !2764)
!2778 = !DILocation(line: 954, column: 47, scope: !2764)
!2779 = !DILocation(line: 956, column: 3, scope: !2764)
!2780 = !DILocation(line: 956, column: 32, scope: !2764)
!2781 = !DILocation(line: 185, column: 48, scope: !2736, inlinedAt: !2774)
!2782 = !DILocation(line: 187, column: 3, scope: !2736, inlinedAt: !2774)
!2783 = !DILocation(line: 188, column: 13, scope: !2753, inlinedAt: !2774)
!2784 = !DILocation(line: 188, column: 7, scope: !2736, inlinedAt: !2774)
!2785 = !DILocation(line: 189, column: 5, scope: !2753, inlinedAt: !2774)
!2786 = !{!2787}
!2787 = distinct !{!2787, !2788, !"quoting_options_from_style: argument 0"}
!2788 = distinct !{!2788, !"quoting_options_from_style"}
!2789 = !DILocation(line: 191, column: 10, scope: !2736, inlinedAt: !2774)
!2790 = !DILocation(line: 192, column: 1, scope: !2736, inlinedAt: !2774)
!2791 = !DILocation(line: 957, column: 10, scope: !2764)
!2792 = !DILocation(line: 958, column: 1, scope: !2764)
!2793 = !DILocation(line: 957, column: 3, scope: !2764)
!2794 = distinct !DISubprogram(name: "quotearg_style", scope: !146, file: !146, line: 961, type: !2795, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!36, !5, !51}
!2797 = !{!2798, !2799}
!2798 = !DILocalVariable(name: "s", arg: 1, scope: !2794, file: !146, line: 961, type: !5)
!2799 = !DILocalVariable(name: "arg", arg: 2, scope: !2794, file: !146, line: 961, type: !51)
!2800 = !DILocation(line: 187, column: 26, scope: !2736, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 948, column: 36, scope: !2727, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 963, column: 10, scope: !2794)
!2803 = !DILocation(line: 961, column: 36, scope: !2794)
!2804 = !DILocation(line: 961, column: 51, scope: !2794)
!2805 = !DILocation(line: 946, column: 23, scope: !2727, inlinedAt: !2802)
!2806 = !DILocation(line: 946, column: 45, scope: !2727, inlinedAt: !2802)
!2807 = !DILocation(line: 946, column: 60, scope: !2727, inlinedAt: !2802)
!2808 = !DILocation(line: 948, column: 3, scope: !2727, inlinedAt: !2802)
!2809 = !DILocation(line: 948, column: 32, scope: !2727, inlinedAt: !2802)
!2810 = !DILocation(line: 185, column: 48, scope: !2736, inlinedAt: !2801)
!2811 = !DILocation(line: 187, column: 3, scope: !2736, inlinedAt: !2801)
!2812 = !DILocation(line: 188, column: 13, scope: !2753, inlinedAt: !2801)
!2813 = !DILocation(line: 188, column: 7, scope: !2736, inlinedAt: !2801)
!2814 = !DILocation(line: 189, column: 5, scope: !2753, inlinedAt: !2801)
!2815 = !{!2816}
!2816 = distinct !{!2816, !2817, !"quoting_options_from_style: argument 0"}
!2817 = distinct !{!2817, !"quoting_options_from_style"}
!2818 = !DILocation(line: 191, column: 10, scope: !2736, inlinedAt: !2801)
!2819 = !DILocation(line: 192, column: 1, scope: !2736, inlinedAt: !2801)
!2820 = !DILocation(line: 949, column: 10, scope: !2727, inlinedAt: !2802)
!2821 = !DILocation(line: 950, column: 1, scope: !2727, inlinedAt: !2802)
!2822 = !DILocation(line: 963, column: 3, scope: !2794)
!2823 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !146, file: !146, line: 967, type: !2824, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!36, !5, !51, !140}
!2826 = !{!2827, !2828, !2829}
!2827 = !DILocalVariable(name: "s", arg: 1, scope: !2823, file: !146, line: 967, type: !5)
!2828 = !DILocalVariable(name: "arg", arg: 2, scope: !2823, file: !146, line: 967, type: !51)
!2829 = !DILocalVariable(name: "argsize", arg: 3, scope: !2823, file: !146, line: 967, type: !140)
!2830 = !DILocation(line: 187, column: 26, scope: !2736, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 956, column: 36, scope: !2764, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 969, column: 10, scope: !2823)
!2833 = !DILocation(line: 967, column: 40, scope: !2823)
!2834 = !DILocation(line: 967, column: 55, scope: !2823)
!2835 = !DILocation(line: 967, column: 67, scope: !2823)
!2836 = !DILocation(line: 953, column: 27, scope: !2764, inlinedAt: !2832)
!2837 = !DILocation(line: 953, column: 49, scope: !2764, inlinedAt: !2832)
!2838 = !DILocation(line: 954, column: 35, scope: !2764, inlinedAt: !2832)
!2839 = !DILocation(line: 954, column: 47, scope: !2764, inlinedAt: !2832)
!2840 = !DILocation(line: 956, column: 3, scope: !2764, inlinedAt: !2832)
!2841 = !DILocation(line: 956, column: 32, scope: !2764, inlinedAt: !2832)
!2842 = !DILocation(line: 185, column: 48, scope: !2736, inlinedAt: !2831)
!2843 = !DILocation(line: 187, column: 3, scope: !2736, inlinedAt: !2831)
!2844 = !DILocation(line: 188, column: 13, scope: !2753, inlinedAt: !2831)
!2845 = !DILocation(line: 188, column: 7, scope: !2736, inlinedAt: !2831)
!2846 = !DILocation(line: 189, column: 5, scope: !2753, inlinedAt: !2831)
!2847 = !{!2848}
!2848 = distinct !{!2848, !2849, !"quoting_options_from_style: argument 0"}
!2849 = distinct !{!2849, !"quoting_options_from_style"}
!2850 = !DILocation(line: 191, column: 10, scope: !2736, inlinedAt: !2831)
!2851 = !DILocation(line: 192, column: 1, scope: !2736, inlinedAt: !2831)
!2852 = !DILocation(line: 957, column: 10, scope: !2764, inlinedAt: !2832)
!2853 = !DILocation(line: 958, column: 1, scope: !2764, inlinedAt: !2832)
!2854 = !DILocation(line: 969, column: 3, scope: !2823)
!2855 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !146, file: !146, line: 973, type: !2856, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!36, !51, !140, !37}
!2858 = !{!2859, !2860, !2861, !2862}
!2859 = !DILocalVariable(name: "arg", arg: 1, scope: !2855, file: !146, line: 973, type: !51)
!2860 = !DILocalVariable(name: "argsize", arg: 2, scope: !2855, file: !146, line: 973, type: !140)
!2861 = !DILocalVariable(name: "ch", arg: 3, scope: !2855, file: !146, line: 973, type: !37)
!2862 = !DILocalVariable(name: "options", scope: !2855, file: !146, line: 975, type: !153)
!2863 = !DILocation(line: 973, column: 32, scope: !2855)
!2864 = !DILocation(line: 973, column: 44, scope: !2855)
!2865 = !DILocation(line: 973, column: 58, scope: !2855)
!2866 = !DILocation(line: 975, column: 3, scope: !2855)
!2867 = !DILocation(line: 976, column: 13, scope: !2855)
!2868 = !{i64 0, i64 4, !844, i64 4, i64 4, !1137, i64 8, i64 32, !844, i64 40, i64 8, !707, i64 48, i64 8, !707}
!2869 = !DILocation(line: 975, column: 26, scope: !2855)
!2870 = !DILocation(line: 144, column: 43, scope: !1607, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 977, column: 3, scope: !2855)
!2872 = !DILocation(line: 144, column: 51, scope: !1607, inlinedAt: !2871)
!2873 = !DILocation(line: 144, column: 58, scope: !1607, inlinedAt: !2871)
!2874 = !DILocation(line: 146, column: 17, scope: !1607, inlinedAt: !2871)
!2875 = !DILocation(line: 148, column: 62, scope: !1607, inlinedAt: !2871)
!2876 = !DILocation(line: 148, column: 57, scope: !1607, inlinedAt: !2871)
!2877 = !DILocation(line: 147, column: 17, scope: !1607, inlinedAt: !2871)
!2878 = !DILocation(line: 149, column: 18, scope: !1607, inlinedAt: !2871)
!2879 = !DILocation(line: 149, column: 15, scope: !1607, inlinedAt: !2871)
!2880 = !DILocation(line: 149, column: 7, scope: !1607, inlinedAt: !2871)
!2881 = !DILocation(line: 150, column: 12, scope: !1607, inlinedAt: !2871)
!2882 = !DILocation(line: 150, column: 15, scope: !1607, inlinedAt: !2871)
!2883 = !DILocation(line: 150, column: 25, scope: !1607, inlinedAt: !2871)
!2884 = !DILocation(line: 150, column: 7, scope: !1607, inlinedAt: !2871)
!2885 = !DILocation(line: 151, column: 18, scope: !1607, inlinedAt: !2871)
!2886 = !DILocation(line: 151, column: 23, scope: !1607, inlinedAt: !2871)
!2887 = !DILocation(line: 151, column: 6, scope: !1607, inlinedAt: !2871)
!2888 = !DILocation(line: 978, column: 10, scope: !2855)
!2889 = !DILocation(line: 979, column: 1, scope: !2855)
!2890 = !DILocation(line: 978, column: 3, scope: !2855)
!2891 = distinct !DISubprogram(name: "quotearg_char", scope: !146, file: !146, line: 982, type: !2892, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!36, !51, !37}
!2894 = !{!2895, !2896}
!2895 = !DILocalVariable(name: "arg", arg: 1, scope: !2891, file: !146, line: 982, type: !51)
!2896 = !DILocalVariable(name: "ch", arg: 2, scope: !2891, file: !146, line: 982, type: !37)
!2897 = !DILocation(line: 982, column: 28, scope: !2891)
!2898 = !DILocation(line: 982, column: 38, scope: !2891)
!2899 = !DILocation(line: 973, column: 32, scope: !2855, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 984, column: 10, scope: !2891)
!2901 = !DILocation(line: 973, column: 44, scope: !2855, inlinedAt: !2900)
!2902 = !DILocation(line: 973, column: 58, scope: !2855, inlinedAt: !2900)
!2903 = !DILocation(line: 975, column: 3, scope: !2855, inlinedAt: !2900)
!2904 = !DILocation(line: 976, column: 13, scope: !2855, inlinedAt: !2900)
!2905 = !DILocation(line: 975, column: 26, scope: !2855, inlinedAt: !2900)
!2906 = !DILocation(line: 144, column: 43, scope: !1607, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 977, column: 3, scope: !2855, inlinedAt: !2900)
!2908 = !DILocation(line: 144, column: 51, scope: !1607, inlinedAt: !2907)
!2909 = !DILocation(line: 144, column: 58, scope: !1607, inlinedAt: !2907)
!2910 = !DILocation(line: 146, column: 17, scope: !1607, inlinedAt: !2907)
!2911 = !DILocation(line: 148, column: 62, scope: !1607, inlinedAt: !2907)
!2912 = !DILocation(line: 148, column: 57, scope: !1607, inlinedAt: !2907)
!2913 = !DILocation(line: 147, column: 17, scope: !1607, inlinedAt: !2907)
!2914 = !DILocation(line: 149, column: 18, scope: !1607, inlinedAt: !2907)
!2915 = !DILocation(line: 149, column: 15, scope: !1607, inlinedAt: !2907)
!2916 = !DILocation(line: 149, column: 7, scope: !1607, inlinedAt: !2907)
!2917 = !DILocation(line: 150, column: 12, scope: !1607, inlinedAt: !2907)
!2918 = !DILocation(line: 150, column: 15, scope: !1607, inlinedAt: !2907)
!2919 = !DILocation(line: 150, column: 25, scope: !1607, inlinedAt: !2907)
!2920 = !DILocation(line: 150, column: 7, scope: !1607, inlinedAt: !2907)
!2921 = !DILocation(line: 151, column: 18, scope: !1607, inlinedAt: !2907)
!2922 = !DILocation(line: 151, column: 23, scope: !1607, inlinedAt: !2907)
!2923 = !DILocation(line: 151, column: 6, scope: !1607, inlinedAt: !2907)
!2924 = !DILocation(line: 978, column: 10, scope: !2855, inlinedAt: !2900)
!2925 = !DILocation(line: 979, column: 1, scope: !2855, inlinedAt: !2900)
!2926 = !DILocation(line: 984, column: 3, scope: !2891)
!2927 = distinct !DISubprogram(name: "quotearg_colon", scope: !146, file: !146, line: 988, type: !2703, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2928)
!2928 = !{!2929}
!2929 = !DILocalVariable(name: "arg", arg: 1, scope: !2927, file: !146, line: 988, type: !51)
!2930 = !DILocation(line: 988, column: 29, scope: !2927)
!2931 = !DILocation(line: 982, column: 28, scope: !2891, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 990, column: 10, scope: !2927)
!2933 = !DILocation(line: 982, column: 38, scope: !2891, inlinedAt: !2932)
!2934 = !DILocation(line: 973, column: 32, scope: !2855, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 984, column: 10, scope: !2891, inlinedAt: !2932)
!2936 = !DILocation(line: 973, column: 44, scope: !2855, inlinedAt: !2935)
!2937 = !DILocation(line: 973, column: 58, scope: !2855, inlinedAt: !2935)
!2938 = !DILocation(line: 975, column: 3, scope: !2855, inlinedAt: !2935)
!2939 = !DILocation(line: 976, column: 13, scope: !2855, inlinedAt: !2935)
!2940 = !DILocation(line: 975, column: 26, scope: !2855, inlinedAt: !2935)
!2941 = !DILocation(line: 144, column: 43, scope: !1607, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 977, column: 3, scope: !2855, inlinedAt: !2935)
!2943 = !DILocation(line: 144, column: 51, scope: !1607, inlinedAt: !2942)
!2944 = !DILocation(line: 144, column: 58, scope: !1607, inlinedAt: !2942)
!2945 = !DILocation(line: 146, column: 17, scope: !1607, inlinedAt: !2942)
!2946 = !DILocation(line: 148, column: 57, scope: !1607, inlinedAt: !2942)
!2947 = !DILocation(line: 147, column: 17, scope: !1607, inlinedAt: !2942)
!2948 = !DILocation(line: 149, column: 7, scope: !1607, inlinedAt: !2942)
!2949 = !DILocation(line: 150, column: 12, scope: !1607, inlinedAt: !2942)
!2950 = !DILocation(line: 151, column: 6, scope: !1607, inlinedAt: !2942)
!2951 = !DILocation(line: 978, column: 10, scope: !2855, inlinedAt: !2935)
!2952 = !DILocation(line: 979, column: 1, scope: !2855, inlinedAt: !2935)
!2953 = !DILocation(line: 990, column: 3, scope: !2927)
!2954 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !146, file: !146, line: 994, type: !2714, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2955)
!2955 = !{!2956, !2957}
!2956 = !DILocalVariable(name: "arg", arg: 1, scope: !2954, file: !146, line: 994, type: !51)
!2957 = !DILocalVariable(name: "argsize", arg: 2, scope: !2954, file: !146, line: 994, type: !140)
!2958 = !DILocation(line: 994, column: 33, scope: !2954)
!2959 = !DILocation(line: 994, column: 45, scope: !2954)
!2960 = !DILocation(line: 973, column: 32, scope: !2855, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 996, column: 10, scope: !2954)
!2962 = !DILocation(line: 973, column: 44, scope: !2855, inlinedAt: !2961)
!2963 = !DILocation(line: 973, column: 58, scope: !2855, inlinedAt: !2961)
!2964 = !DILocation(line: 975, column: 3, scope: !2855, inlinedAt: !2961)
!2965 = !DILocation(line: 976, column: 13, scope: !2855, inlinedAt: !2961)
!2966 = !DILocation(line: 975, column: 26, scope: !2855, inlinedAt: !2961)
!2967 = !DILocation(line: 144, column: 43, scope: !1607, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 977, column: 3, scope: !2855, inlinedAt: !2961)
!2969 = !DILocation(line: 144, column: 51, scope: !1607, inlinedAt: !2968)
!2970 = !DILocation(line: 144, column: 58, scope: !1607, inlinedAt: !2968)
!2971 = !DILocation(line: 146, column: 17, scope: !1607, inlinedAt: !2968)
!2972 = !DILocation(line: 148, column: 57, scope: !1607, inlinedAt: !2968)
!2973 = !DILocation(line: 147, column: 17, scope: !1607, inlinedAt: !2968)
!2974 = !DILocation(line: 149, column: 7, scope: !1607, inlinedAt: !2968)
!2975 = !DILocation(line: 150, column: 12, scope: !1607, inlinedAt: !2968)
!2976 = !DILocation(line: 151, column: 6, scope: !1607, inlinedAt: !2968)
!2977 = !DILocation(line: 978, column: 10, scope: !2855, inlinedAt: !2961)
!2978 = !DILocation(line: 979, column: 1, scope: !2855, inlinedAt: !2961)
!2979 = !DILocation(line: 996, column: 3, scope: !2954)
!2980 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !146, file: !146, line: 1000, type: !2728, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !2981)
!2981 = !{!2982, !2983, !2984, !2985}
!2982 = !DILocalVariable(name: "n", arg: 1, scope: !2980, file: !146, line: 1000, type: !39)
!2983 = !DILocalVariable(name: "s", arg: 2, scope: !2980, file: !146, line: 1000, type: !5)
!2984 = !DILocalVariable(name: "arg", arg: 3, scope: !2980, file: !146, line: 1000, type: !51)
!2985 = !DILocalVariable(name: "options", scope: !2980, file: !146, line: 1002, type: !153)
!2986 = !DILocation(line: 187, column: 26, scope: !2736, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 1003, column: 13, scope: !2980)
!2988 = !DILocation(line: 1000, column: 29, scope: !2980)
!2989 = !DILocation(line: 1000, column: 51, scope: !2980)
!2990 = !DILocation(line: 1000, column: 66, scope: !2980)
!2991 = !DILocation(line: 1002, column: 3, scope: !2980)
!2992 = !DILocation(line: 185, column: 48, scope: !2736, inlinedAt: !2987)
!2993 = !DILocation(line: 187, column: 3, scope: !2736, inlinedAt: !2987)
!2994 = !DILocation(line: 188, column: 13, scope: !2753, inlinedAt: !2987)
!2995 = !DILocation(line: 188, column: 7, scope: !2736, inlinedAt: !2987)
!2996 = !DILocation(line: 189, column: 5, scope: !2753, inlinedAt: !2987)
!2997 = !{!2998}
!2998 = distinct !{!2998, !2999, !"quoting_options_from_style: argument 0"}
!2999 = distinct !{!2999, !"quoting_options_from_style"}
!3000 = !DILocation(line: 191, column: 10, scope: !2736, inlinedAt: !2987)
!3001 = !DILocation(line: 192, column: 1, scope: !2736, inlinedAt: !2987)
!3002 = !DILocation(line: 1003, column: 13, scope: !2980)
!3003 = !DILocation(line: 1002, column: 26, scope: !2980)
!3004 = !DILocation(line: 144, column: 43, scope: !1607, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 1004, column: 3, scope: !2980)
!3006 = !DILocation(line: 144, column: 51, scope: !1607, inlinedAt: !3005)
!3007 = !DILocation(line: 144, column: 58, scope: !1607, inlinedAt: !3005)
!3008 = !DILocation(line: 146, column: 17, scope: !1607, inlinedAt: !3005)
!3009 = !DILocation(line: 148, column: 57, scope: !1607, inlinedAt: !3005)
!3010 = !DILocation(line: 147, column: 17, scope: !1607, inlinedAt: !3005)
!3011 = !DILocation(line: 149, column: 7, scope: !1607, inlinedAt: !3005)
!3012 = !DILocation(line: 150, column: 12, scope: !1607, inlinedAt: !3005)
!3013 = !DILocation(line: 151, column: 6, scope: !1607, inlinedAt: !3005)
!3014 = !DILocation(line: 1005, column: 10, scope: !2980)
!3015 = !DILocation(line: 1006, column: 1, scope: !2980)
!3016 = !DILocation(line: 1005, column: 3, scope: !2980)
!3017 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !146, file: !146, line: 1009, type: !3018, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!36, !39, !51, !51, !51}
!3020 = !{!3021, !3022, !3023, !3024}
!3021 = !DILocalVariable(name: "n", arg: 1, scope: !3017, file: !146, line: 1009, type: !39)
!3022 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3017, file: !146, line: 1009, type: !51)
!3023 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3017, file: !146, line: 1010, type: !51)
!3024 = !DILocalVariable(name: "arg", arg: 4, scope: !3017, file: !146, line: 1010, type: !51)
!3025 = !DILocation(line: 1009, column: 24, scope: !3017)
!3026 = !DILocation(line: 1009, column: 39, scope: !3017)
!3027 = !DILocation(line: 1010, column: 32, scope: !3017)
!3028 = !DILocation(line: 1010, column: 57, scope: !3017)
!3029 = !DILocalVariable(name: "n", arg: 1, scope: !3030, file: !146, line: 1017, type: !39)
!3030 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !146, file: !146, line: 1017, type: !3031, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!36, !39, !51, !51, !51, !140}
!3033 = !{!3029, !3034, !3035, !3036, !3037, !3038}
!3034 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3030, file: !146, line: 1017, type: !51)
!3035 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3030, file: !146, line: 1018, type: !51)
!3036 = !DILocalVariable(name: "arg", arg: 4, scope: !3030, file: !146, line: 1019, type: !51)
!3037 = !DILocalVariable(name: "argsize", arg: 5, scope: !3030, file: !146, line: 1019, type: !140)
!3038 = !DILocalVariable(name: "o", scope: !3030, file: !146, line: 1021, type: !153)
!3039 = !DILocation(line: 1017, column: 28, scope: !3030, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 1012, column: 10, scope: !3017)
!3041 = !DILocation(line: 1017, column: 43, scope: !3030, inlinedAt: !3040)
!3042 = !DILocation(line: 1018, column: 36, scope: !3030, inlinedAt: !3040)
!3043 = !DILocation(line: 1019, column: 36, scope: !3030, inlinedAt: !3040)
!3044 = !DILocation(line: 1019, column: 48, scope: !3030, inlinedAt: !3040)
!3045 = !DILocation(line: 1021, column: 3, scope: !3030, inlinedAt: !3040)
!3046 = !DILocation(line: 1021, column: 30, scope: !3030, inlinedAt: !3040)
!3047 = !DILocation(line: 1021, column: 26, scope: !3030, inlinedAt: !3040)
!3048 = !DILocation(line: 171, column: 45, scope: !1656, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 1022, column: 3, scope: !3030, inlinedAt: !3040)
!3050 = !DILocation(line: 172, column: 33, scope: !1656, inlinedAt: !3049)
!3051 = !DILocation(line: 172, column: 57, scope: !1656, inlinedAt: !3049)
!3052 = !DILocation(line: 176, column: 6, scope: !1656, inlinedAt: !3049)
!3053 = !DILocation(line: 176, column: 12, scope: !1656, inlinedAt: !3049)
!3054 = !DILocation(line: 177, column: 8, scope: !1672, inlinedAt: !3049)
!3055 = !DILocation(line: 177, column: 23, scope: !1672, inlinedAt: !3049)
!3056 = !DILocation(line: 177, column: 19, scope: !1672, inlinedAt: !3049)
!3057 = !DILocation(line: 178, column: 5, scope: !1672, inlinedAt: !3049)
!3058 = !DILocation(line: 179, column: 6, scope: !1656, inlinedAt: !3049)
!3059 = !DILocation(line: 179, column: 17, scope: !1656, inlinedAt: !3049)
!3060 = !DILocation(line: 180, column: 6, scope: !1656, inlinedAt: !3049)
!3061 = !DILocation(line: 180, column: 18, scope: !1656, inlinedAt: !3049)
!3062 = !DILocation(line: 1023, column: 10, scope: !3030, inlinedAt: !3040)
!3063 = !DILocation(line: 1024, column: 1, scope: !3030, inlinedAt: !3040)
!3064 = !DILocation(line: 1012, column: 3, scope: !3017)
!3065 = !DILocation(line: 1017, column: 28, scope: !3030)
!3066 = !DILocation(line: 1017, column: 43, scope: !3030)
!3067 = !DILocation(line: 1018, column: 36, scope: !3030)
!3068 = !DILocation(line: 1019, column: 36, scope: !3030)
!3069 = !DILocation(line: 1019, column: 48, scope: !3030)
!3070 = !DILocation(line: 1021, column: 3, scope: !3030)
!3071 = !DILocation(line: 1021, column: 30, scope: !3030)
!3072 = !DILocation(line: 1021, column: 26, scope: !3030)
!3073 = !DILocation(line: 171, column: 45, scope: !1656, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 1022, column: 3, scope: !3030)
!3075 = !DILocation(line: 172, column: 33, scope: !1656, inlinedAt: !3074)
!3076 = !DILocation(line: 172, column: 57, scope: !1656, inlinedAt: !3074)
!3077 = !DILocation(line: 176, column: 6, scope: !1656, inlinedAt: !3074)
!3078 = !DILocation(line: 176, column: 12, scope: !1656, inlinedAt: !3074)
!3079 = !DILocation(line: 177, column: 8, scope: !1672, inlinedAt: !3074)
!3080 = !DILocation(line: 177, column: 23, scope: !1672, inlinedAt: !3074)
!3081 = !DILocation(line: 177, column: 19, scope: !1672, inlinedAt: !3074)
!3082 = !DILocation(line: 178, column: 5, scope: !1672, inlinedAt: !3074)
!3083 = !DILocation(line: 179, column: 6, scope: !1656, inlinedAt: !3074)
!3084 = !DILocation(line: 179, column: 17, scope: !1656, inlinedAt: !3074)
!3085 = !DILocation(line: 180, column: 6, scope: !1656, inlinedAt: !3074)
!3086 = !DILocation(line: 180, column: 18, scope: !1656, inlinedAt: !3074)
!3087 = !DILocation(line: 1023, column: 10, scope: !3030)
!3088 = !DILocation(line: 1024, column: 1, scope: !3030)
!3089 = !DILocation(line: 1023, column: 3, scope: !3030)
!3090 = distinct !DISubprogram(name: "quotearg_custom", scope: !146, file: !146, line: 1027, type: !3091, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!36, !51, !51, !51}
!3093 = !{!3094, !3095, !3096}
!3094 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3090, file: !146, line: 1027, type: !51)
!3095 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3090, file: !146, line: 1027, type: !51)
!3096 = !DILocalVariable(name: "arg", arg: 3, scope: !3090, file: !146, line: 1028, type: !51)
!3097 = !DILocation(line: 1027, column: 30, scope: !3090)
!3098 = !DILocation(line: 1027, column: 54, scope: !3090)
!3099 = !DILocation(line: 1028, column: 30, scope: !3090)
!3100 = !DILocation(line: 1009, column: 24, scope: !3017, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 1030, column: 10, scope: !3090)
!3102 = !DILocation(line: 1009, column: 39, scope: !3017, inlinedAt: !3101)
!3103 = !DILocation(line: 1010, column: 32, scope: !3017, inlinedAt: !3101)
!3104 = !DILocation(line: 1010, column: 57, scope: !3017, inlinedAt: !3101)
!3105 = !DILocation(line: 1017, column: 28, scope: !3030, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 1012, column: 10, scope: !3017, inlinedAt: !3101)
!3107 = !DILocation(line: 1017, column: 43, scope: !3030, inlinedAt: !3106)
!3108 = !DILocation(line: 1018, column: 36, scope: !3030, inlinedAt: !3106)
!3109 = !DILocation(line: 1019, column: 36, scope: !3030, inlinedAt: !3106)
!3110 = !DILocation(line: 1019, column: 48, scope: !3030, inlinedAt: !3106)
!3111 = !DILocation(line: 1021, column: 3, scope: !3030, inlinedAt: !3106)
!3112 = !DILocation(line: 1021, column: 30, scope: !3030, inlinedAt: !3106)
!3113 = !DILocation(line: 1021, column: 26, scope: !3030, inlinedAt: !3106)
!3114 = !DILocation(line: 171, column: 45, scope: !1656, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 1022, column: 3, scope: !3030, inlinedAt: !3106)
!3116 = !DILocation(line: 172, column: 33, scope: !1656, inlinedAt: !3115)
!3117 = !DILocation(line: 172, column: 57, scope: !1656, inlinedAt: !3115)
!3118 = !DILocation(line: 176, column: 6, scope: !1656, inlinedAt: !3115)
!3119 = !DILocation(line: 176, column: 12, scope: !1656, inlinedAt: !3115)
!3120 = !DILocation(line: 177, column: 8, scope: !1672, inlinedAt: !3115)
!3121 = !DILocation(line: 177, column: 23, scope: !1672, inlinedAt: !3115)
!3122 = !DILocation(line: 177, column: 19, scope: !1672, inlinedAt: !3115)
!3123 = !DILocation(line: 178, column: 5, scope: !1672, inlinedAt: !3115)
!3124 = !DILocation(line: 179, column: 6, scope: !1656, inlinedAt: !3115)
!3125 = !DILocation(line: 179, column: 17, scope: !1656, inlinedAt: !3115)
!3126 = !DILocation(line: 180, column: 6, scope: !1656, inlinedAt: !3115)
!3127 = !DILocation(line: 180, column: 18, scope: !1656, inlinedAt: !3115)
!3128 = !DILocation(line: 1023, column: 10, scope: !3030, inlinedAt: !3106)
!3129 = !DILocation(line: 1024, column: 1, scope: !3030, inlinedAt: !3106)
!3130 = !DILocation(line: 1030, column: 3, scope: !3090)
!3131 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !146, file: !146, line: 1034, type: !3132, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!36, !51, !51, !51, !140}
!3134 = !{!3135, !3136, !3137, !3138}
!3135 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3131, file: !146, line: 1034, type: !51)
!3136 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3131, file: !146, line: 1034, type: !51)
!3137 = !DILocalVariable(name: "arg", arg: 3, scope: !3131, file: !146, line: 1035, type: !51)
!3138 = !DILocalVariable(name: "argsize", arg: 4, scope: !3131, file: !146, line: 1035, type: !140)
!3139 = !DILocation(line: 1034, column: 34, scope: !3131)
!3140 = !DILocation(line: 1034, column: 58, scope: !3131)
!3141 = !DILocation(line: 1035, column: 34, scope: !3131)
!3142 = !DILocation(line: 1035, column: 46, scope: !3131)
!3143 = !DILocation(line: 1017, column: 28, scope: !3030, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 1037, column: 10, scope: !3131)
!3145 = !DILocation(line: 1017, column: 43, scope: !3030, inlinedAt: !3144)
!3146 = !DILocation(line: 1018, column: 36, scope: !3030, inlinedAt: !3144)
!3147 = !DILocation(line: 1019, column: 36, scope: !3030, inlinedAt: !3144)
!3148 = !DILocation(line: 1019, column: 48, scope: !3030, inlinedAt: !3144)
!3149 = !DILocation(line: 1021, column: 3, scope: !3030, inlinedAt: !3144)
!3150 = !DILocation(line: 1021, column: 30, scope: !3030, inlinedAt: !3144)
!3151 = !DILocation(line: 1021, column: 26, scope: !3030, inlinedAt: !3144)
!3152 = !DILocation(line: 171, column: 45, scope: !1656, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 1022, column: 3, scope: !3030, inlinedAt: !3144)
!3154 = !DILocation(line: 172, column: 33, scope: !1656, inlinedAt: !3153)
!3155 = !DILocation(line: 172, column: 57, scope: !1656, inlinedAt: !3153)
!3156 = !DILocation(line: 176, column: 6, scope: !1656, inlinedAt: !3153)
!3157 = !DILocation(line: 176, column: 12, scope: !1656, inlinedAt: !3153)
!3158 = !DILocation(line: 177, column: 8, scope: !1672, inlinedAt: !3153)
!3159 = !DILocation(line: 177, column: 23, scope: !1672, inlinedAt: !3153)
!3160 = !DILocation(line: 177, column: 19, scope: !1672, inlinedAt: !3153)
!3161 = !DILocation(line: 178, column: 5, scope: !1672, inlinedAt: !3153)
!3162 = !DILocation(line: 179, column: 6, scope: !1656, inlinedAt: !3153)
!3163 = !DILocation(line: 179, column: 17, scope: !1656, inlinedAt: !3153)
!3164 = !DILocation(line: 180, column: 6, scope: !1656, inlinedAt: !3153)
!3165 = !DILocation(line: 180, column: 18, scope: !1656, inlinedAt: !3153)
!3166 = !DILocation(line: 1023, column: 10, scope: !3030, inlinedAt: !3144)
!3167 = !DILocation(line: 1024, column: 1, scope: !3030, inlinedAt: !3144)
!3168 = !DILocation(line: 1037, column: 3, scope: !3131)
!3169 = distinct !DISubprogram(name: "quote_n_mem", scope: !146, file: !146, line: 1052, type: !3170, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !3172)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!51, !39, !51, !140}
!3172 = !{!3173, !3174, !3175}
!3173 = !DILocalVariable(name: "n", arg: 1, scope: !3169, file: !146, line: 1052, type: !39)
!3174 = !DILocalVariable(name: "arg", arg: 2, scope: !3169, file: !146, line: 1052, type: !51)
!3175 = !DILocalVariable(name: "argsize", arg: 3, scope: !3169, file: !146, line: 1052, type: !140)
!3176 = !DILocation(line: 1052, column: 18, scope: !3169)
!3177 = !DILocation(line: 1052, column: 33, scope: !3169)
!3178 = !DILocation(line: 1052, column: 45, scope: !3169)
!3179 = !DILocation(line: 1054, column: 10, scope: !3169)
!3180 = !DILocation(line: 1054, column: 3, scope: !3169)
!3181 = distinct !DISubprogram(name: "quote_mem", scope: !146, file: !146, line: 1058, type: !3182, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!51, !51, !140}
!3184 = !{!3185, !3186}
!3185 = !DILocalVariable(name: "arg", arg: 1, scope: !3181, file: !146, line: 1058, type: !51)
!3186 = !DILocalVariable(name: "argsize", arg: 2, scope: !3181, file: !146, line: 1058, type: !140)
!3187 = !DILocation(line: 1058, column: 24, scope: !3181)
!3188 = !DILocation(line: 1058, column: 36, scope: !3181)
!3189 = !DILocation(line: 1052, column: 18, scope: !3169, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 1060, column: 10, scope: !3181)
!3191 = !DILocation(line: 1052, column: 33, scope: !3169, inlinedAt: !3190)
!3192 = !DILocation(line: 1052, column: 45, scope: !3169, inlinedAt: !3190)
!3193 = !DILocation(line: 1054, column: 10, scope: !3169, inlinedAt: !3190)
!3194 = !DILocation(line: 1060, column: 3, scope: !3181)
!3195 = distinct !DISubprogram(name: "quote_n", scope: !146, file: !146, line: 1064, type: !3196, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !3198)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!51, !39, !51}
!3198 = !{!3199, !3200}
!3199 = !DILocalVariable(name: "n", arg: 1, scope: !3195, file: !146, line: 1064, type: !39)
!3200 = !DILocalVariable(name: "arg", arg: 2, scope: !3195, file: !146, line: 1064, type: !51)
!3201 = !DILocation(line: 1064, column: 14, scope: !3195)
!3202 = !DILocation(line: 1064, column: 29, scope: !3195)
!3203 = !DILocation(line: 1052, column: 18, scope: !3169, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 1066, column: 10, scope: !3195)
!3205 = !DILocation(line: 1052, column: 33, scope: !3169, inlinedAt: !3204)
!3206 = !DILocation(line: 1052, column: 45, scope: !3169, inlinedAt: !3204)
!3207 = !DILocation(line: 1054, column: 10, scope: !3169, inlinedAt: !3204)
!3208 = !DILocation(line: 1066, column: 3, scope: !3195)
!3209 = distinct !DISubprogram(name: "quote", scope: !146, file: !146, line: 1070, type: !3210, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !131, variables: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!51, !51}
!3212 = !{!3213}
!3213 = !DILocalVariable(name: "arg", arg: 1, scope: !3209, file: !146, line: 1070, type: !51)
!3214 = !DILocation(line: 1070, column: 20, scope: !3209)
!3215 = !DILocation(line: 1064, column: 14, scope: !3195, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 1072, column: 10, scope: !3209)
!3217 = !DILocation(line: 1064, column: 29, scope: !3195, inlinedAt: !3216)
!3218 = !DILocation(line: 1052, column: 18, scope: !3169, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 1066, column: 10, scope: !3195, inlinedAt: !3216)
!3220 = !DILocation(line: 1052, column: 33, scope: !3169, inlinedAt: !3219)
!3221 = !DILocation(line: 1052, column: 45, scope: !3169, inlinedAt: !3219)
!3222 = !DILocation(line: 1054, column: 10, scope: !3169, inlinedAt: !3219)
!3223 = !DILocation(line: 1072, column: 3, scope: !3209)
!3224 = !DILocation(line: 64, column: 29, scope: !186)
!3225 = !DILocation(line: 65, column: 23, scope: !186)
!3226 = !DILocation(line: 67, column: 23, scope: !186)
!3227 = !DILocation(line: 69, column: 22, scope: !186)
!3228 = !DILocation(line: 77, column: 3, scope: !186)
!3229 = !DILocation(line: 77, column: 8, scope: !186)
!3230 = !DILocation(line: 80, column: 7, scope: !186)
!3231 = !DILocation(line: 82, column: 29, scope: !274)
!3232 = !DILocation(line: 82, column: 19, scope: !274)
!3233 = !DILocation(line: 84, column: 18, scope: !274)
!3234 = !DILocation(line: 84, column: 17, scope: !274)
!3235 = !DILocation(line: 84, column: 15, scope: !274)
!3236 = !DILocation(line: 86, column: 11, scope: !274)
!3237 = !DILocation(line: 88, column: 27, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !187, line: 87, column: 9)
!3239 = distinct !DILexicalBlock(scope: !274, file: !187, line: 86, column: 11)
!3240 = !DILocation(line: 88, column: 25, scope: !3238)
!3241 = !DILocation(line: 89, column: 29, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3238, file: !187, line: 89, column: 15)
!3243 = !DILocation(line: 89, column: 15, scope: !3238)
!3244 = !DILocation(line: 91, column: 29, scope: !3242)
!3245 = !DILocation(line: 91, column: 27, scope: !3242)
!3246 = !DILocation(line: 91, column: 13, scope: !3242)
!3247 = !DILocation(line: 95, column: 5, scope: !274)
!3248 = !DILocation(line: 98, column: 8, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !186, file: !187, line: 98, column: 7)
!3250 = !DILocation(line: 101, column: 11, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !187, line: 101, column: 11)
!3252 = distinct !DILexicalBlock(scope: !3249, file: !187, line: 99, column: 5)
!3253 = !DILocation(line: 101, column: 25, scope: !3251)
!3254 = !DILocation(line: 98, column: 7, scope: !186)
!3255 = !DILocation(line: 102, column: 16, scope: !3251)
!3256 = !DILocation(line: 102, column: 9, scope: !3251)
!3257 = !DILocalVariable(name: "n", arg: 3, scope: !3258, file: !3259, line: 315, type: !39)
!3258 = distinct !DISubprogram(name: "u8_uctomb", scope: !3259, file: !3259, line: 315, type: !3260, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !3270)
!3259 = !DIFile(filename: "./lib/unistr.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!39, !3262, !3266, !39}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !3264, line: 24, baseType: !3265)
!3264 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !235, line: 37, baseType: !40)
!3266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs4_t", file: !3267, line: 25, baseType: !3268)
!3267 = !DIFile(filename: "./lib/unitypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !3264, line: 26, baseType: !3269)
!3269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !235, line: 41, baseType: !38)
!3270 = !{!3271, !3272, !3257}
!3271 = !DILocalVariable(name: "s", arg: 1, scope: !3258, file: !3259, line: 315, type: !3262)
!3272 = !DILocalVariable(name: "uc", arg: 2, scope: !3258, file: !3259, line: 315, type: !3266)
!3273 = !DILocation(line: 315, column: 39, scope: !3258, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 109, column: 11, scope: !186)
!3275 = !DILocation(line: 317, column: 10, scope: !3276, inlinedAt: !3274)
!3276 = distinct !DILexicalBlock(scope: !3258, file: !3259, line: 317, column: 7)
!3277 = !DILocation(line: 317, column: 17, scope: !3276, inlinedAt: !3274)
!3278 = !DILocation(line: 319, column: 14, scope: !3279, inlinedAt: !3274)
!3279 = distinct !DILexicalBlock(scope: !3276, file: !3259, line: 318, column: 5)
!3280 = !DILocation(line: 319, column: 12, scope: !3279, inlinedAt: !3274)
!3281 = !DILocation(line: 78, column: 7, scope: !186)
!3282 = !DILocation(line: 110, column: 7, scope: !186)
!3283 = !DILocation(line: 323, column: 12, scope: !3276, inlinedAt: !3274)
!3284 = !DILocation(line: 110, column: 13, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !186, file: !187, line: 110, column: 7)
!3286 = !DILocation(line: 114, column: 8, scope: !278)
!3287 = !DILocation(line: 111, column: 12, scope: !3285)
!3288 = !DILocation(line: 111, column: 5, scope: !3285)
!3289 = !DILocation(line: 114, column: 7, scope: !186)
!3290 = !DILocation(line: 116, column: 7, scope: !277)
!3291 = !DILocation(line: 116, column: 12, scope: !277)
!3292 = !DILocation(line: 117, column: 7, scope: !277)
!3293 = !DILocation(line: 118, column: 7, scope: !277)
!3294 = !DILocation(line: 119, column: 7, scope: !277)
!3295 = !DILocation(line: 120, column: 7, scope: !277)
!3296 = !DILocation(line: 117, column: 19, scope: !277)
!3297 = !DILocation(line: 123, column: 13, scope: !277)
!3298 = !DILocation(line: 118, column: 14, scope: !277)
!3299 = !DILocation(line: 124, column: 19, scope: !277)
!3300 = !DILocation(line: 119, column: 13, scope: !277)
!3301 = !DILocation(line: 125, column: 14, scope: !277)
!3302 = !DILocation(line: 120, column: 14, scope: !277)
!3303 = !DILocation(line: 126, column: 20, scope: !277)
!3304 = !DILocation(line: 129, column: 20, scope: !277)
!3305 = !DILocation(line: 129, column: 13, scope: !277)
!3306 = !DILocation(line: 121, column: 14, scope: !277)
!3307 = !DILocation(line: 132, column: 11, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !277, file: !187, line: 132, column: 11)
!3309 = !DILocation(line: 132, column: 23, scope: !3308)
!3310 = !DILocation(line: 132, column: 34, scope: !3308)
!3311 = !DILocation(line: 132, column: 27, scope: !3308)
!3312 = !DILocation(line: 138, column: 16, scope: !3308)
!3313 = !DILocation(line: 138, column: 9, scope: !3308)
!3314 = !DILocation(line: 147, column: 20, scope: !277)
!3315 = !DILocation(line: 147, column: 13, scope: !277)
!3316 = !DILocation(line: 148, column: 15, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !277, file: !187, line: 148, column: 11)
!3318 = !DILocation(line: 148, column: 11, scope: !277)
!3319 = !DILocation(line: 149, column: 16, scope: !3317)
!3320 = !DILocation(line: 149, column: 9, scope: !3317)
!3321 = !DILocation(line: 152, column: 31, scope: !277)
!3322 = !DIExpression(DW_OP_deref)
!3323 = !DILocation(line: 152, column: 38, scope: !277)
!3324 = !DILocation(line: 152, column: 14, scope: !277)
!3325 = !DILocation(line: 152, column: 7, scope: !277)
!3326 = !DILocation(line: 153, column: 5, scope: !278)
!3327 = !DILocation(line: 157, column: 10, scope: !186)
!3328 = !DILocation(line: 157, column: 3, scope: !186)
!3329 = !DILocation(line: 158, column: 1, scope: !186)
!3330 = distinct !DISubprogram(name: "fwrite_success_callback", scope: !187, file: !187, line: 163, type: !192, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !3331)
!3331 = !{!3332, !3333, !3334, !3335}
!3332 = !DILocalVariable(name: "buf", arg: 1, scope: !3330, file: !187, line: 163, type: !51)
!3333 = !DILocalVariable(name: "buflen", arg: 2, scope: !3330, file: !187, line: 163, type: !140)
!3334 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3330, file: !187, line: 163, type: !35)
!3335 = !DILocalVariable(name: "stream", scope: !3330, file: !187, line: 165, type: !204)
!3336 = !DILocation(line: 163, column: 38, scope: !3330)
!3337 = !DILocation(line: 163, column: 50, scope: !3330)
!3338 = !DILocation(line: 163, column: 64, scope: !3330)
!3339 = !DILocation(line: 165, column: 18, scope: !3330)
!3340 = !DILocation(line: 165, column: 9, scope: !3330)
!3341 = !DILocation(line: 171, column: 3, scope: !3330)
!3342 = !DILocation(line: 172, column: 3, scope: !3330)
!3343 = distinct !DISubprogram(name: "print_unicode_char", scope: !187, file: !187, line: 208, type: !3344, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{null, !204, !38, !39}
!3346 = !{!3347, !3348, !3349}
!3347 = !DILocalVariable(name: "stream", arg: 1, scope: !3343, file: !187, line: 208, type: !204)
!3348 = !DILocalVariable(name: "code", arg: 2, scope: !3343, file: !187, line: 208, type: !38)
!3349 = !DILocalVariable(name: "exit_on_error", arg: 3, scope: !3343, file: !187, line: 208, type: !39)
!3350 = !DILocation(line: 208, column: 27, scope: !3343)
!3351 = !DILocation(line: 208, column: 48, scope: !3343)
!3352 = !DILocation(line: 208, column: 58, scope: !3343)
!3353 = !DILocation(line: 211, column: 18, scope: !3343)
!3354 = !DILocation(line: 214, column: 18, scope: !3343)
!3355 = !DILocation(line: 210, column: 3, scope: !3343)
!3356 = !DILocation(line: 215, column: 1, scope: !3343)
!3357 = distinct !DISubprogram(name: "fallback_failure_callback", scope: !187, file: !187, line: 191, type: !195, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !3358)
!3358 = !{!3359, !3360, !3361, !3362}
!3359 = !DILocalVariable(name: "code", arg: 1, scope: !3357, file: !187, line: 191, type: !38)
!3360 = !DILocalVariable(name: "msg", arg: 2, scope: !3357, file: !187, line: 192, type: !51)
!3361 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3357, file: !187, line: 193, type: !35)
!3362 = !DILocalVariable(name: "stream", scope: !3357, file: !187, line: 195, type: !204)
!3363 = !DILocation(line: 191, column: 41, scope: !3357)
!3364 = !DILocation(line: 192, column: 40, scope: !3357)
!3365 = !DILocation(line: 193, column: 34, scope: !3357)
!3366 = !DILocation(line: 195, column: 18, scope: !3357)
!3367 = !DILocation(line: 195, column: 9, scope: !3357)
!3368 = !DILocation(line: 197, column: 12, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3357, file: !187, line: 197, column: 7)
!3370 = !DILocation(line: 197, column: 7, scope: !3357)
!3371 = !DILocation(line: 198, column: 5, scope: !3369)
!3372 = !DILocation(line: 200, column: 5, scope: !3369)
!3373 = !DILocation(line: 201, column: 3, scope: !3357)
!3374 = distinct !DISubprogram(name: "exit_failure_callback", scope: !187, file: !187, line: 177, type: !195, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !3375)
!3375 = !{!3376, !3377, !3378}
!3376 = !DILocalVariable(name: "code", arg: 1, scope: !3374, file: !187, line: 177, type: !38)
!3377 = !DILocalVariable(name: "msg", arg: 2, scope: !3374, file: !187, line: 177, type: !51)
!3378 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3374, file: !187, line: 178, type: !35)
!3379 = !DILocation(line: 177, column: 37, scope: !3374)
!3380 = !DILocation(line: 177, column: 55, scope: !3374)
!3381 = !DILocation(line: 178, column: 30, scope: !3374)
!3382 = !DILocation(line: 180, column: 11, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3374, file: !187, line: 180, column: 7)
!3384 = !DILocation(line: 180, column: 7, scope: !3374)
!3385 = !DILocation(line: 181, column: 18, scope: !3383)
!3386 = !DILocation(line: 181, column: 5, scope: !3383)
!3387 = !DILocation(line: 183, column: 18, scope: !3383)
!3388 = !DILocation(line: 184, column: 12, scope: !3383)
!3389 = !DILocation(line: 183, column: 5, scope: !3383)
!3390 = !DILocation(line: 185, column: 3, scope: !3374)
!3391 = distinct !DISubprogram(name: "u8_uctomb_aux", scope: !644, file: !644, line: 24, type: !3260, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !3392)
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DILocalVariable(name: "s", arg: 1, scope: !3391, file: !644, line: 24, type: !3262)
!3394 = !DILocalVariable(name: "uc", arg: 2, scope: !3391, file: !644, line: 24, type: !3266)
!3395 = !DILocalVariable(name: "n", arg: 3, scope: !3391, file: !644, line: 24, type: !39)
!3396 = !DILocalVariable(name: "count", scope: !3391, file: !644, line: 26, type: !39)
!3397 = !DILocation(line: 24, column: 25, scope: !3391)
!3398 = !DILocation(line: 24, column: 35, scope: !3391)
!3399 = !DILocation(line: 24, column: 43, scope: !3391)
!3400 = !DILocation(line: 28, column: 10, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3391, file: !644, line: 28, column: 7)
!3402 = !DILocation(line: 28, column: 7, scope: !3391)
!3403 = !DILocation(line: 31, column: 15, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3401, file: !644, line: 31, column: 12)
!3405 = !DILocation(line: 31, column: 12, scope: !3401)
!3406 = !DILocation(line: 33, column: 15, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3404, file: !644, line: 33, column: 12)
!3408 = !DILocation(line: 33, column: 12, scope: !3404)
!3409 = !DILocation(line: 35, column: 23, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !644, line: 35, column: 11)
!3411 = distinct !DILexicalBlock(scope: !3407, file: !644, line: 34, column: 5)
!3412 = !DILocation(line: 40, column: 15, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3407, file: !644, line: 40, column: 12)
!3414 = !DILocation(line: 40, column: 12, scope: !3407)
!3415 = !DILocation(line: 26, column: 7, scope: !3391)
!3416 = !DILocation(line: 45, column: 9, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3391, file: !644, line: 45, column: 7)
!3418 = !DILocation(line: 45, column: 7, scope: !3391)
!3419 = !DILocation(line: 48, column: 3, scope: !3391)
!3420 = !DILocation(line: 50, column: 20, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3391, file: !644, line: 49, column: 5)
!3422 = !DILocation(line: 50, column: 13, scope: !3421)
!3423 = !DILocation(line: 50, column: 18, scope: !3421)
!3424 = !DILocation(line: 50, column: 48, scope: !3421)
!3425 = !DILocation(line: 50, column: 57, scope: !3421)
!3426 = !DILocation(line: 50, column: 54, scope: !3421)
!3427 = !DILocation(line: 52, column: 20, scope: !3421)
!3428 = !DILocation(line: 52, column: 13, scope: !3421)
!3429 = !DILocation(line: 52, column: 18, scope: !3421)
!3430 = !DILocation(line: 52, column: 48, scope: !3421)
!3431 = !DILocation(line: 52, column: 57, scope: !3421)
!3432 = !DILocation(line: 52, column: 54, scope: !3421)
!3433 = !DILocation(line: 54, column: 20, scope: !3421)
!3434 = !DILocation(line: 54, column: 13, scope: !3421)
!3435 = !DILocation(line: 54, column: 18, scope: !3421)
!3436 = !DILocation(line: 54, column: 48, scope: !3421)
!3437 = !DILocation(line: 55, column: 22, scope: !3421)
!3438 = !DILocation(line: 55, column: 20, scope: !3421)
!3439 = !DILocation(line: 56, column: 5, scope: !3421)
!3440 = !DILocation(line: 58, column: 1, scope: !3391)
!3441 = distinct !DISubprogram(name: "version_etc_arn", scope: !649, file: !649, line: 62, type: !3442, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !3485)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !3444, !51, !51, !51, !3484, !140}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !3446)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 241, size: 1728, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3446, file: !208, line: 242, baseType: !39, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3446, file: !208, line: 247, baseType: !36, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3446, file: !208, line: 248, baseType: !36, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3446, file: !208, line: 249, baseType: !36, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3446, file: !208, line: 250, baseType: !36, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3446, file: !208, line: 251, baseType: !36, size: 64, offset: 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3446, file: !208, line: 252, baseType: !36, size: 64, offset: 384)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3446, file: !208, line: 253, baseType: !36, size: 64, offset: 448)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3446, file: !208, line: 254, baseType: !36, size: 64, offset: 512)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3446, file: !208, line: 256, baseType: !36, size: 64, offset: 576)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3446, file: !208, line: 257, baseType: !36, size: 64, offset: 640)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3446, file: !208, line: 258, baseType: !36, size: 64, offset: 704)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3446, file: !208, line: 260, baseType: !3461, size: 64, offset: 768)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !208, line: 156, size: 192, elements: !3463)
!3463 = !{!3464, !3465, !3467}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3462, file: !208, line: 157, baseType: !3461, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3462, file: !208, line: 158, baseType: !3466, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3462, file: !208, line: 162, baseType: !39, size: 32, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3446, file: !208, line: 262, baseType: !3466, size: 64, offset: 832)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3446, file: !208, line: 264, baseType: !39, size: 32, offset: 896)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3446, file: !208, line: 268, baseType: !39, size: 32, offset: 928)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3446, file: !208, line: 270, baseType: !234, size: 64, offset: 960)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3446, file: !208, line: 274, baseType: !41, size: 16, offset: 1024)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3446, file: !208, line: 275, baseType: !238, size: 8, offset: 1040)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3446, file: !208, line: 276, baseType: !240, size: 8, offset: 1048)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3446, file: !208, line: 280, baseType: !244, size: 64, offset: 1088)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3446, file: !208, line: 289, baseType: !247, size: 64, offset: 1152)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3446, file: !208, line: 297, baseType: !35, size: 64, offset: 1216)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3446, file: !208, line: 298, baseType: !35, size: 64, offset: 1280)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3446, file: !208, line: 299, baseType: !35, size: 64, offset: 1344)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3446, file: !208, line: 300, baseType: !35, size: 64, offset: 1408)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3446, file: !208, line: 302, baseType: !140, size: 64, offset: 1472)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3446, file: !208, line: 303, baseType: !39, size: 32, offset: 1536)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3446, file: !208, line: 305, baseType: !255, size: 160, offset: 1568)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491}
!3486 = !DILocalVariable(name: "stream", arg: 1, scope: !3441, file: !649, line: 62, type: !3444)
!3487 = !DILocalVariable(name: "command_name", arg: 2, scope: !3441, file: !649, line: 63, type: !51)
!3488 = !DILocalVariable(name: "package", arg: 3, scope: !3441, file: !649, line: 63, type: !51)
!3489 = !DILocalVariable(name: "version", arg: 4, scope: !3441, file: !649, line: 64, type: !51)
!3490 = !DILocalVariable(name: "authors", arg: 5, scope: !3441, file: !649, line: 65, type: !3484)
!3491 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3441, file: !649, line: 65, type: !140)
!3492 = !DILocation(line: 62, column: 24, scope: !3441)
!3493 = !DILocation(line: 63, column: 30, scope: !3441)
!3494 = !DILocation(line: 63, column: 56, scope: !3441)
!3495 = !DILocation(line: 64, column: 30, scope: !3441)
!3496 = !DILocation(line: 65, column: 39, scope: !3441)
!3497 = !DILocation(line: 65, column: 55, scope: !3441)
!3498 = !DILocation(line: 67, column: 7, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3441, file: !649, line: 67, column: 7)
!3500 = !DILocation(line: 67, column: 7, scope: !3441)
!3501 = !DILocation(line: 68, column: 5, scope: !3499)
!3502 = !DILocation(line: 70, column: 5, scope: !3499)
!3503 = !DILocation(line: 84, column: 3, scope: !3441)
!3504 = !DILocation(line: 86, column: 3, scope: !3441)
!3505 = !DILocation(line: 95, column: 3, scope: !3441)
!3506 = !DILocation(line: 99, column: 7, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3441, file: !649, line: 96, column: 5)
!3508 = !DILocation(line: 102, column: 7, scope: !3507)
!3509 = !DILocation(line: 103, column: 7, scope: !3507)
!3510 = !DILocation(line: 106, column: 7, scope: !3507)
!3511 = !DILocation(line: 107, column: 7, scope: !3507)
!3512 = !DILocation(line: 110, column: 7, scope: !3507)
!3513 = !DILocation(line: 112, column: 7, scope: !3507)
!3514 = !DILocation(line: 117, column: 7, scope: !3507)
!3515 = !DILocation(line: 119, column: 7, scope: !3507)
!3516 = !DILocation(line: 124, column: 7, scope: !3507)
!3517 = !DILocation(line: 126, column: 7, scope: !3507)
!3518 = !DILocation(line: 131, column: 7, scope: !3507)
!3519 = !DILocation(line: 134, column: 7, scope: !3507)
!3520 = !DILocation(line: 139, column: 7, scope: !3507)
!3521 = !DILocation(line: 142, column: 7, scope: !3507)
!3522 = !DILocation(line: 147, column: 7, scope: !3507)
!3523 = !DILocation(line: 151, column: 7, scope: !3507)
!3524 = !DILocation(line: 156, column: 7, scope: !3507)
!3525 = !DILocation(line: 160, column: 7, scope: !3507)
!3526 = !DILocation(line: 167, column: 7, scope: !3507)
!3527 = !DILocation(line: 171, column: 7, scope: !3507)
!3528 = !DILocation(line: 173, column: 1, scope: !3441)
!3529 = distinct !DISubprogram(name: "version_etc_ar", scope: !649, file: !649, line: 180, type: !3530, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{null, !3444, !51, !51, !51, !3484}
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538}
!3533 = !DILocalVariable(name: "stream", arg: 1, scope: !3529, file: !649, line: 180, type: !3444)
!3534 = !DILocalVariable(name: "command_name", arg: 2, scope: !3529, file: !649, line: 181, type: !51)
!3535 = !DILocalVariable(name: "package", arg: 3, scope: !3529, file: !649, line: 181, type: !51)
!3536 = !DILocalVariable(name: "version", arg: 4, scope: !3529, file: !649, line: 182, type: !51)
!3537 = !DILocalVariable(name: "authors", arg: 5, scope: !3529, file: !649, line: 182, type: !3484)
!3538 = !DILocalVariable(name: "n_authors", scope: !3529, file: !649, line: 184, type: !140)
!3539 = !DILocation(line: 180, column: 23, scope: !3529)
!3540 = !DILocation(line: 181, column: 29, scope: !3529)
!3541 = !DILocation(line: 181, column: 55, scope: !3529)
!3542 = !DILocation(line: 182, column: 29, scope: !3529)
!3543 = !DILocation(line: 182, column: 59, scope: !3529)
!3544 = !DILocation(line: 184, column: 10, scope: !3529)
!3545 = !DILocation(line: 186, column: 8, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3529, file: !649, line: 186, column: 3)
!3547 = !DILocation(line: 186, column: 23, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3546, file: !649, line: 186, column: 3)
!3549 = !DILocation(line: 186, column: 3, scope: !3546)
!3550 = !DILocation(line: 186, column: 52, scope: !3548)
!3551 = distinct !{!3551, !3549, !3552}
!3552 = !DILocation(line: 187, column: 5, scope: !3546)
!3553 = !DILocation(line: 188, column: 3, scope: !3529)
!3554 = !DILocation(line: 189, column: 1, scope: !3529)
!3555 = distinct !DISubprogram(name: "version_etc_va", scope: !649, file: !649, line: 196, type: !3556, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !3565)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{null, !3444, !51, !51, !51, !3558}
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !646, line: 189, size: 192, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3559, file: !646, line: 189, baseType: !38, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3559, file: !646, line: 189, baseType: !38, size: 32, offset: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3559, file: !646, line: 189, baseType: !35, size: 64, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3559, file: !646, line: 189, baseType: !35, size: 64, offset: 128)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572}
!3566 = !DILocalVariable(name: "stream", arg: 1, scope: !3555, file: !649, line: 196, type: !3444)
!3567 = !DILocalVariable(name: "command_name", arg: 2, scope: !3555, file: !649, line: 197, type: !51)
!3568 = !DILocalVariable(name: "package", arg: 3, scope: !3555, file: !649, line: 197, type: !51)
!3569 = !DILocalVariable(name: "version", arg: 4, scope: !3555, file: !649, line: 198, type: !51)
!3570 = !DILocalVariable(name: "authors", arg: 5, scope: !3555, file: !649, line: 198, type: !3558)
!3571 = !DILocalVariable(name: "n_authors", scope: !3555, file: !649, line: 200, type: !140)
!3572 = !DILocalVariable(name: "authtab", scope: !3555, file: !649, line: 201, type: !3573)
!3573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 640, elements: !149)
!3574 = !DILocation(line: 196, column: 23, scope: !3555)
!3575 = !DILocation(line: 197, column: 29, scope: !3555)
!3576 = !DILocation(line: 197, column: 55, scope: !3555)
!3577 = !DILocation(line: 198, column: 29, scope: !3555)
!3578 = !DILocation(line: 198, column: 46, scope: !3555)
!3579 = !DILocation(line: 201, column: 3, scope: !3555)
!3580 = !DILocation(line: 201, column: 15, scope: !3555)
!3581 = !DILocation(line: 200, column: 10, scope: !3555)
!3582 = !DILocation(line: 205, column: 35, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !649, line: 203, column: 3)
!3584 = distinct !DILexicalBlock(scope: !3555, file: !649, line: 203, column: 3)
!3585 = !DILocation(line: 205, column: 14, scope: !3583)
!3586 = !DILocation(line: 205, column: 33, scope: !3583)
!3587 = !DILocation(line: 205, column: 67, scope: !3583)
!3588 = !DILocation(line: 203, column: 3, scope: !3584)
!3589 = !DILocation(line: 208, column: 3, scope: !3555)
!3590 = !DILocation(line: 210, column: 1, scope: !3555)
!3591 = distinct !DISubprogram(name: "version_etc", scope: !649, file: !649, line: 227, type: !3592, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !3444, !51, !51, !51, null}
!3594 = !{!3595, !3596, !3597, !3598, !3599}
!3595 = !DILocalVariable(name: "stream", arg: 1, scope: !3591, file: !649, line: 227, type: !3444)
!3596 = !DILocalVariable(name: "command_name", arg: 2, scope: !3591, file: !649, line: 228, type: !51)
!3597 = !DILocalVariable(name: "package", arg: 3, scope: !3591, file: !649, line: 228, type: !51)
!3598 = !DILocalVariable(name: "version", arg: 4, scope: !3591, file: !649, line: 229, type: !51)
!3599 = !DILocalVariable(name: "authors", scope: !3591, file: !649, line: 231, type: !3600)
!3600 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3601, line: 46, baseType: !3602)
!3601 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3603, line: 48, baseType: !3604)
!3603 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !646, line: 231, baseType: !3605)
!3605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3559, size: 192, elements: !241)
!3606 = !DILocation(line: 227, column: 20, scope: !3591)
!3607 = !DILocation(line: 228, column: 26, scope: !3591)
!3608 = !DILocation(line: 228, column: 52, scope: !3591)
!3609 = !DILocation(line: 229, column: 26, scope: !3591)
!3610 = !DILocation(line: 231, column: 3, scope: !3591)
!3611 = !DILocation(line: 231, column: 11, scope: !3591)
!3612 = !DILocation(line: 233, column: 3, scope: !3591)
!3613 = !DILocation(line: 234, column: 3, scope: !3591)
!3614 = !DILocation(line: 235, column: 3, scope: !3591)
!3615 = !DILocation(line: 236, column: 1, scope: !3591)
!3616 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !649, file: !649, line: 239, type: !1492, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !75)
!3617 = !DILocation(line: 245, column: 3, scope: !3616)
!3618 = !DILocation(line: 251, column: 3, scope: !3616)
!3619 = !DILocation(line: 256, column: 3, scope: !3616)
!3620 = !DILocation(line: 258, column: 1, scope: !3616)
!3621 = distinct !DISubprogram(name: "xnmalloc", scope: !657, file: !657, line: 105, type: !3622, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!35, !140, !140}
!3624 = !{!3625, !3626}
!3625 = !DILocalVariable(name: "n", arg: 1, scope: !3621, file: !657, line: 105, type: !140)
!3626 = !DILocalVariable(name: "s", arg: 2, scope: !3621, file: !657, line: 105, type: !140)
!3627 = !DILocation(line: 105, column: 18, scope: !3621)
!3628 = !DILocation(line: 105, column: 28, scope: !3621)
!3629 = !DILocation(line: 107, column: 7, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3621, file: !657, line: 107, column: 7)
!3631 = !DILocation(line: 107, column: 7, scope: !3621)
!3632 = !DILocation(line: 108, column: 5, scope: !3630)
!3633 = !DILocation(line: 109, column: 21, scope: !3621)
!3634 = !DILocalVariable(name: "n", arg: 1, scope: !3635, file: !3636, line: 39, type: !140)
!3635 = distinct !DISubprogram(name: "xmalloc", scope: !3636, file: !3636, line: 39, type: !3637, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !3639)
!3636 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!35, !140}
!3639 = !{!3634, !3640}
!3640 = !DILocalVariable(name: "p", scope: !3635, file: !3636, line: 41, type: !35)
!3641 = !DILocation(line: 39, column: 17, scope: !3635, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 109, column: 10, scope: !3621)
!3643 = !DILocation(line: 41, column: 13, scope: !3635, inlinedAt: !3642)
!3644 = !DILocation(line: 41, column: 9, scope: !3635, inlinedAt: !3642)
!3645 = !DILocation(line: 42, column: 8, scope: !3646, inlinedAt: !3642)
!3646 = distinct !DILexicalBlock(scope: !3635, file: !3636, line: 42, column: 7)
!3647 = !DILocation(line: 42, column: 15, scope: !3646, inlinedAt: !3642)
!3648 = !DILocation(line: 42, column: 10, scope: !3646, inlinedAt: !3642)
!3649 = !DILocation(line: 43, column: 5, scope: !3646, inlinedAt: !3642)
!3650 = !DILocation(line: 109, column: 3, scope: !3621)
!3651 = !DILocation(line: 39, column: 17, scope: !3635)
!3652 = !DILocation(line: 41, column: 13, scope: !3635)
!3653 = !DILocation(line: 41, column: 9, scope: !3635)
!3654 = !DILocation(line: 42, column: 8, scope: !3646)
!3655 = !DILocation(line: 42, column: 15, scope: !3646)
!3656 = !DILocation(line: 42, column: 10, scope: !3646)
!3657 = !DILocation(line: 43, column: 5, scope: !3646)
!3658 = !DILocation(line: 44, column: 3, scope: !3635)
!3659 = distinct !DISubprogram(name: "xnrealloc", scope: !657, file: !657, line: 118, type: !3660, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!35, !35, !140, !140}
!3662 = !{!3663, !3664, !3665}
!3663 = !DILocalVariable(name: "p", arg: 1, scope: !3659, file: !657, line: 118, type: !35)
!3664 = !DILocalVariable(name: "n", arg: 2, scope: !3659, file: !657, line: 118, type: !140)
!3665 = !DILocalVariable(name: "s", arg: 3, scope: !3659, file: !657, line: 118, type: !140)
!3666 = !DILocation(line: 118, column: 18, scope: !3659)
!3667 = !DILocation(line: 118, column: 28, scope: !3659)
!3668 = !DILocation(line: 118, column: 38, scope: !3659)
!3669 = !DILocation(line: 120, column: 7, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3659, file: !657, line: 120, column: 7)
!3671 = !DILocation(line: 120, column: 7, scope: !3659)
!3672 = !DILocation(line: 121, column: 5, scope: !3670)
!3673 = !DILocation(line: 122, column: 25, scope: !3659)
!3674 = !DILocalVariable(name: "p", arg: 1, scope: !3675, file: !3636, line: 51, type: !35)
!3675 = distinct !DISubprogram(name: "xrealloc", scope: !3636, file: !3636, line: 51, type: !3676, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !3678)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!35, !35, !140}
!3678 = !{!3674, !3679}
!3679 = !DILocalVariable(name: "n", arg: 2, scope: !3675, file: !3636, line: 51, type: !140)
!3680 = !DILocation(line: 51, column: 17, scope: !3675, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 122, column: 10, scope: !3659)
!3682 = !DILocation(line: 51, column: 27, scope: !3675, inlinedAt: !3681)
!3683 = !DILocation(line: 53, column: 8, scope: !3684, inlinedAt: !3681)
!3684 = distinct !DILexicalBlock(scope: !3675, file: !3636, line: 53, column: 7)
!3685 = !DILocation(line: 53, column: 13, scope: !3684, inlinedAt: !3681)
!3686 = !DILocation(line: 53, column: 10, scope: !3684, inlinedAt: !3681)
!3687 = !DILocation(line: 57, column: 7, scope: !3688, inlinedAt: !3681)
!3688 = distinct !DILexicalBlock(scope: !3684, file: !3636, line: 54, column: 5)
!3689 = !DILocation(line: 58, column: 7, scope: !3688, inlinedAt: !3681)
!3690 = !DILocation(line: 61, column: 7, scope: !3675, inlinedAt: !3681)
!3691 = !DILocation(line: 62, column: 8, scope: !3692, inlinedAt: !3681)
!3692 = distinct !DILexicalBlock(scope: !3675, file: !3636, line: 62, column: 7)
!3693 = !DILocation(line: 62, column: 13, scope: !3692, inlinedAt: !3681)
!3694 = !DILocation(line: 62, column: 10, scope: !3692, inlinedAt: !3681)
!3695 = !DILocation(line: 63, column: 5, scope: !3692, inlinedAt: !3681)
!3696 = !DILocation(line: 122, column: 3, scope: !3659)
!3697 = !DILocation(line: 51, column: 17, scope: !3675)
!3698 = !DILocation(line: 51, column: 27, scope: !3675)
!3699 = !DILocation(line: 53, column: 8, scope: !3684)
!3700 = !DILocation(line: 53, column: 13, scope: !3684)
!3701 = !DILocation(line: 53, column: 10, scope: !3684)
!3702 = !DILocation(line: 57, column: 7, scope: !3688)
!3703 = !DILocation(line: 58, column: 7, scope: !3688)
!3704 = !DILocation(line: 61, column: 7, scope: !3675)
!3705 = !DILocation(line: 62, column: 8, scope: !3692)
!3706 = !DILocation(line: 62, column: 13, scope: !3692)
!3707 = !DILocation(line: 62, column: 10, scope: !3692)
!3708 = !DILocation(line: 63, column: 5, scope: !3692)
!3709 = !DILocation(line: 65, column: 1, scope: !3675)
!3710 = !DILocation(line: 180, column: 19, scope: !658)
!3711 = !DILocation(line: 180, column: 30, scope: !658)
!3712 = !DILocation(line: 180, column: 41, scope: !658)
!3713 = !DILocation(line: 182, column: 14, scope: !658)
!3714 = !DILocation(line: 182, column: 10, scope: !658)
!3715 = !DILocation(line: 184, column: 9, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !658, file: !657, line: 184, column: 7)
!3717 = !DILocation(line: 184, column: 7, scope: !658)
!3718 = !DILocation(line: 186, column: 13, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !657, line: 186, column: 11)
!3720 = distinct !DILexicalBlock(scope: !3716, file: !657, line: 185, column: 5)
!3721 = !DILocation(line: 186, column: 11, scope: !3720)
!3722 = !DILocation(line: 194, column: 30, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3719, file: !657, line: 187, column: 9)
!3724 = !DILocation(line: 195, column: 16, scope: !3723)
!3725 = !DILocation(line: 195, column: 13, scope: !3723)
!3726 = !DILocation(line: 196, column: 9, scope: !3723)
!3727 = !DILocation(line: 204, column: 69, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !657, line: 204, column: 11)
!3729 = distinct !DILexicalBlock(scope: !3716, file: !657, line: 199, column: 5)
!3730 = !DILocation(line: 205, column: 11, scope: !3728)
!3731 = !DILocation(line: 204, column: 11, scope: !3729)
!3732 = !DILocation(line: 206, column: 9, scope: !3728)
!3733 = !DILocation(line: 210, column: 7, scope: !658)
!3734 = !DILocation(line: 211, column: 25, scope: !658)
!3735 = !DILocation(line: 51, column: 17, scope: !3675, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 211, column: 10, scope: !658)
!3737 = !DILocation(line: 51, column: 27, scope: !3675, inlinedAt: !3736)
!3738 = !DILocation(line: 53, column: 10, scope: !3684, inlinedAt: !3736)
!3739 = !DILocation(line: 207, column: 14, scope: !3729)
!3740 = !DILocation(line: 207, column: 18, scope: !3729)
!3741 = !DILocation(line: 207, column: 9, scope: !3729)
!3742 = !DILocation(line: 53, column: 8, scope: !3684, inlinedAt: !3736)
!3743 = !DILocation(line: 57, column: 7, scope: !3688, inlinedAt: !3736)
!3744 = !DILocation(line: 58, column: 7, scope: !3688, inlinedAt: !3736)
!3745 = !DILocation(line: 61, column: 7, scope: !3675, inlinedAt: !3736)
!3746 = !DILocation(line: 62, column: 8, scope: !3692, inlinedAt: !3736)
!3747 = !DILocation(line: 62, column: 13, scope: !3692, inlinedAt: !3736)
!3748 = !DILocation(line: 62, column: 10, scope: !3692, inlinedAt: !3736)
!3749 = !DILocation(line: 63, column: 5, scope: !3692, inlinedAt: !3736)
!3750 = !DILocation(line: 211, column: 3, scope: !658)
!3751 = distinct !DISubprogram(name: "xcharalloc", scope: !657, file: !657, line: 220, type: !2502, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !3752)
!3752 = !{!3753}
!3753 = !DILocalVariable(name: "n", arg: 1, scope: !3751, file: !657, line: 220, type: !140)
!3754 = !DILocation(line: 220, column: 20, scope: !3751)
!3755 = !DILocation(line: 39, column: 17, scope: !3635, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 222, column: 10, scope: !3751)
!3757 = !DILocation(line: 41, column: 13, scope: !3635, inlinedAt: !3756)
!3758 = !DILocation(line: 41, column: 9, scope: !3635, inlinedAt: !3756)
!3759 = !DILocation(line: 42, column: 8, scope: !3646, inlinedAt: !3756)
!3760 = !DILocation(line: 42, column: 15, scope: !3646, inlinedAt: !3756)
!3761 = !DILocation(line: 42, column: 10, scope: !3646, inlinedAt: !3756)
!3762 = !DILocation(line: 43, column: 5, scope: !3646, inlinedAt: !3756)
!3763 = !DILocation(line: 222, column: 3, scope: !3751)
!3764 = distinct !DISubprogram(name: "x2realloc", scope: !3636, file: !3636, line: 74, type: !3765, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!35, !35, !661}
!3767 = !{!3768, !3769}
!3768 = !DILocalVariable(name: "p", arg: 1, scope: !3764, file: !3636, line: 74, type: !35)
!3769 = !DILocalVariable(name: "pn", arg: 2, scope: !3764, file: !3636, line: 74, type: !661)
!3770 = !DILocation(line: 74, column: 18, scope: !3764)
!3771 = !DILocation(line: 74, column: 29, scope: !3764)
!3772 = !DILocation(line: 180, column: 19, scope: !658, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 76, column: 10, scope: !3764)
!3774 = !DILocation(line: 180, column: 30, scope: !658, inlinedAt: !3773)
!3775 = !DILocation(line: 180, column: 41, scope: !658, inlinedAt: !3773)
!3776 = !DILocation(line: 182, column: 14, scope: !658, inlinedAt: !3773)
!3777 = !DILocation(line: 182, column: 10, scope: !658, inlinedAt: !3773)
!3778 = !DILocation(line: 184, column: 9, scope: !3716, inlinedAt: !3773)
!3779 = !DILocation(line: 184, column: 7, scope: !658, inlinedAt: !3773)
!3780 = !DILocation(line: 186, column: 13, scope: !3719, inlinedAt: !3773)
!3781 = !DILocation(line: 186, column: 11, scope: !3720, inlinedAt: !3773)
!3782 = !DILocation(line: 210, column: 7, scope: !658, inlinedAt: !3773)
!3783 = !DILocation(line: 51, column: 17, scope: !3675, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 211, column: 10, scope: !658, inlinedAt: !3773)
!3785 = !DILocation(line: 51, column: 27, scope: !3675, inlinedAt: !3784)
!3786 = !DILocation(line: 53, column: 10, scope: !3684, inlinedAt: !3784)
!3787 = !DILocation(line: 205, column: 11, scope: !3728, inlinedAt: !3773)
!3788 = !DILocation(line: 204, column: 11, scope: !3729, inlinedAt: !3773)
!3789 = !DILocation(line: 206, column: 9, scope: !3728, inlinedAt: !3773)
!3790 = !DILocation(line: 207, column: 14, scope: !3729, inlinedAt: !3773)
!3791 = !DILocation(line: 207, column: 18, scope: !3729, inlinedAt: !3773)
!3792 = !DILocation(line: 207, column: 9, scope: !3729, inlinedAt: !3773)
!3793 = !DILocation(line: 53, column: 8, scope: !3684, inlinedAt: !3784)
!3794 = !DILocation(line: 57, column: 7, scope: !3688, inlinedAt: !3784)
!3795 = !DILocation(line: 58, column: 7, scope: !3688, inlinedAt: !3784)
!3796 = !DILocation(line: 61, column: 7, scope: !3675, inlinedAt: !3784)
!3797 = !DILocation(line: 62, column: 8, scope: !3692, inlinedAt: !3784)
!3798 = !DILocation(line: 62, column: 13, scope: !3692, inlinedAt: !3784)
!3799 = !DILocation(line: 62, column: 10, scope: !3692, inlinedAt: !3784)
!3800 = !DILocation(line: 63, column: 5, scope: !3692, inlinedAt: !3784)
!3801 = !DILocation(line: 76, column: 3, scope: !3764)
!3802 = distinct !DISubprogram(name: "xzalloc", scope: !3636, file: !3636, line: 84, type: !3637, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !3803)
!3803 = !{!3804}
!3804 = !DILocalVariable(name: "s", arg: 1, scope: !3802, file: !3636, line: 84, type: !140)
!3805 = !DILocation(line: 84, column: 17, scope: !3802)
!3806 = !DILocation(line: 39, column: 17, scope: !3635, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 86, column: 18, scope: !3802)
!3808 = !DILocation(line: 41, column: 13, scope: !3635, inlinedAt: !3807)
!3809 = !DILocation(line: 41, column: 9, scope: !3635, inlinedAt: !3807)
!3810 = !DILocation(line: 42, column: 8, scope: !3646, inlinedAt: !3807)
!3811 = !DILocation(line: 42, column: 15, scope: !3646, inlinedAt: !3807)
!3812 = !DILocation(line: 42, column: 10, scope: !3646, inlinedAt: !3807)
!3813 = !DILocation(line: 43, column: 5, scope: !3646, inlinedAt: !3807)
!3814 = !DILocation(line: 86, column: 10, scope: !3802)
!3815 = !DILocation(line: 86, column: 3, scope: !3802)
!3816 = distinct !DISubprogram(name: "xcalloc", scope: !3636, file: !3636, line: 93, type: !3622, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !3817)
!3817 = !{!3818, !3819, !3820}
!3818 = !DILocalVariable(name: "n", arg: 1, scope: !3816, file: !3636, line: 93, type: !140)
!3819 = !DILocalVariable(name: "s", arg: 2, scope: !3816, file: !3636, line: 93, type: !140)
!3820 = !DILocalVariable(name: "p", scope: !3816, file: !3636, line: 95, type: !35)
!3821 = !DILocation(line: 93, column: 17, scope: !3816)
!3822 = !DILocation(line: 93, column: 27, scope: !3816)
!3823 = !DILocation(line: 100, column: 7, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3816, file: !3636, line: 100, column: 7)
!3825 = !DILocation(line: 101, column: 7, scope: !3824)
!3826 = !DILocation(line: 101, column: 18, scope: !3824)
!3827 = !DILocation(line: 95, column: 9, scope: !3816)
!3828 = !DILocation(line: 101, column: 16, scope: !3824)
!3829 = !DILocation(line: 100, column: 7, scope: !3816)
!3830 = !DILocation(line: 102, column: 5, scope: !3824)
!3831 = !DILocation(line: 103, column: 3, scope: !3816)
!3832 = distinct !DISubprogram(name: "xmemdup", scope: !3636, file: !3636, line: 111, type: !3833, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !3835)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!35, !1087, !140}
!3835 = !{!3836, !3837}
!3836 = !DILocalVariable(name: "p", arg: 1, scope: !3832, file: !3636, line: 111, type: !1087)
!3837 = !DILocalVariable(name: "s", arg: 2, scope: !3832, file: !3636, line: 111, type: !140)
!3838 = !DILocation(line: 111, column: 22, scope: !3832)
!3839 = !DILocation(line: 111, column: 32, scope: !3832)
!3840 = !DILocation(line: 39, column: 17, scope: !3635, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 113, column: 18, scope: !3832)
!3842 = !DILocation(line: 41, column: 13, scope: !3635, inlinedAt: !3841)
!3843 = !DILocation(line: 41, column: 9, scope: !3635, inlinedAt: !3841)
!3844 = !DILocation(line: 42, column: 8, scope: !3646, inlinedAt: !3841)
!3845 = !DILocation(line: 42, column: 15, scope: !3646, inlinedAt: !3841)
!3846 = !DILocation(line: 42, column: 10, scope: !3646, inlinedAt: !3841)
!3847 = !DILocation(line: 43, column: 5, scope: !3646, inlinedAt: !3841)
!3848 = !DILocation(line: 113, column: 10, scope: !3832)
!3849 = !DILocation(line: 113, column: 3, scope: !3832)
!3850 = distinct !DISubprogram(name: "xstrdup", scope: !3636, file: !3636, line: 119, type: !2703, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !3851)
!3851 = !{!3852}
!3852 = !DILocalVariable(name: "string", arg: 1, scope: !3850, file: !3636, line: 119, type: !51)
!3853 = !DILocation(line: 119, column: 22, scope: !3850)
!3854 = !DILocation(line: 121, column: 27, scope: !3850)
!3855 = !DILocation(line: 121, column: 43, scope: !3850)
!3856 = !DILocation(line: 111, column: 22, scope: !3832, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 121, column: 10, scope: !3850)
!3858 = !DILocation(line: 111, column: 32, scope: !3832, inlinedAt: !3857)
!3859 = !DILocation(line: 39, column: 17, scope: !3635, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 113, column: 18, scope: !3832, inlinedAt: !3857)
!3861 = !DILocation(line: 41, column: 13, scope: !3635, inlinedAt: !3860)
!3862 = !DILocation(line: 41, column: 9, scope: !3635, inlinedAt: !3860)
!3863 = !DILocation(line: 42, column: 8, scope: !3646, inlinedAt: !3860)
!3864 = !DILocation(line: 42, column: 15, scope: !3646, inlinedAt: !3860)
!3865 = !DILocation(line: 42, column: 10, scope: !3646, inlinedAt: !3860)
!3866 = !DILocation(line: 43, column: 5, scope: !3646, inlinedAt: !3860)
!3867 = !DILocation(line: 113, column: 10, scope: !3832, inlinedAt: !3857)
!3868 = !DILocation(line: 121, column: 3, scope: !3850)
!3869 = distinct !DISubprogram(name: "xalloc_die", scope: !3870, file: !3870, line: 32, type: !1492, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !670, variables: !75)
!3870 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3871 = !DILocation(line: 34, column: 10, scope: !3869)
!3872 = !DILocation(line: 34, column: 33, scope: !3869)
!3873 = !DILocation(line: 34, column: 3, scope: !3869)
!3874 = !DILocation(line: 40, column: 3, scope: !3869)
!3875 = distinct !DISubprogram(name: "xprintf", scope: !3876, file: !3876, line: 32, type: !3877, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !3879)
!3876 = !DIFile(filename: "lib/xprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!39, !1143, null}
!3879 = !{!3880, !3881, !3892}
!3880 = !DILocalVariable(name: "format", arg: 1, scope: !3875, file: !3876, line: 32, type: !1143)
!3881 = !DILocalVariable(name: "args", scope: !3875, file: !3876, line: 34, type: !3882)
!3882 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3601, line: 46, baseType: !3883)
!3883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3603, line: 48, baseType: !3884)
!3884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !673, line: 34, baseType: !3885)
!3885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3886, size: 192, elements: !241)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !673, line: 34, size: 192, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3886, file: !673, line: 34, baseType: !38, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3886, file: !673, line: 34, baseType: !38, size: 32, offset: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3886, file: !673, line: 34, baseType: !35, size: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3886, file: !673, line: 34, baseType: !35, size: 64, offset: 128)
!3892 = !DILocalVariable(name: "retval", scope: !3875, file: !3876, line: 35, type: !39)
!3893 = !DILocation(line: 32, column: 31, scope: !3875)
!3894 = !DILocation(line: 34, column: 3, scope: !3875)
!3895 = !DILocation(line: 34, column: 11, scope: !3875)
!3896 = !DILocation(line: 36, column: 3, scope: !3875)
!3897 = !DILocalVariable(name: "format", arg: 1, scope: !3898, file: !3876, line: 46, type: !1143)
!3898 = distinct !DISubprogram(name: "xvprintf", scope: !3876, file: !3876, line: 46, type: !3899, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !3902)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!39, !1143, !3901}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3902 = !{!3897, !3903, !3904}
!3903 = !DILocalVariable(name: "args", arg: 2, scope: !3898, file: !3876, line: 46, type: !3901)
!3904 = !DILocalVariable(name: "retval", scope: !3898, file: !3876, line: 48, type: !39)
!3905 = !DILocation(line: 46, column: 32, scope: !3898, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 37, column: 12, scope: !3875)
!3907 = !DILocation(line: 46, column: 48, scope: !3898, inlinedAt: !3906)
!3908 = !DILocalVariable(name: "__fmt", arg: 1, scope: !3909, file: !3910, line: 114, type: !1143)
!3909 = distinct !DISubprogram(name: "vprintf", scope: !3910, file: !3910, line: 114, type: !3899, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !3911)
!3910 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3911 = !{!3908, !3912}
!3912 = !DILocalVariable(name: "__ap", arg: 2, scope: !3909, file: !3910, line: 114, type: !3901)
!3913 = !DILocation(line: 114, column: 33, scope: !3909, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 48, column: 16, scope: !3898, inlinedAt: !3906)
!3915 = !DILocation(line: 114, column: 51, scope: !3909, inlinedAt: !3914)
!3916 = !DILocation(line: 117, column: 26, scope: !3909, inlinedAt: !3914)
!3917 = !{!3918, !3920}
!3918 = distinct !{!3918, !3919, !"vprintf: argument 0"}
!3919 = distinct !{!3919, !"vprintf"}
!3920 = distinct !{!3920, !3921, !"xvprintf: argument 0"}
!3921 = distinct !{!3921, !"xvprintf"}
!3922 = !DILocation(line: 117, column: 10, scope: !3909, inlinedAt: !3914)
!3923 = !DILocation(line: 48, column: 7, scope: !3898, inlinedAt: !3906)
!3924 = !DILocation(line: 49, column: 14, scope: !3925, inlinedAt: !3906)
!3925 = distinct !DILexicalBlock(scope: !3898, file: !3876, line: 49, column: 7)
!3926 = !DILocation(line: 49, column: 18, scope: !3925, inlinedAt: !3906)
!3927 = !DILocation(line: 49, column: 31, scope: !3925, inlinedAt: !3906)
!3928 = !DILocation(line: 49, column: 23, scope: !3925, inlinedAt: !3906)
!3929 = !DILocation(line: 49, column: 7, scope: !3898, inlinedAt: !3906)
!3930 = !DILocation(line: 50, column: 12, scope: !3925, inlinedAt: !3906)
!3931 = !DILocation(line: 50, column: 26, scope: !3925, inlinedAt: !3906)
!3932 = !DILocation(line: 50, column: 33, scope: !3925, inlinedAt: !3906)
!3933 = !DILocation(line: 50, column: 5, scope: !3925, inlinedAt: !3906)
!3934 = !DILocation(line: 35, column: 7, scope: !3875)
!3935 = !DILocation(line: 38, column: 3, scope: !3875)
!3936 = !DILocation(line: 41, column: 1, scope: !3875)
!3937 = !DILocation(line: 40, column: 3, scope: !3875)
!3938 = !DILocation(line: 46, column: 32, scope: !3898)
!3939 = !DILocation(line: 46, column: 48, scope: !3898)
!3940 = !DILocation(line: 114, column: 33, scope: !3909, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 48, column: 16, scope: !3898)
!3942 = !DILocation(line: 114, column: 51, scope: !3909, inlinedAt: !3941)
!3943 = !DILocation(line: 117, column: 26, scope: !3909, inlinedAt: !3941)
!3944 = !{!3945}
!3945 = distinct !{!3945, !3946, !"vprintf: argument 0"}
!3946 = distinct !{!3946, !"vprintf"}
!3947 = !DILocation(line: 117, column: 10, scope: !3909, inlinedAt: !3941)
!3948 = !DILocation(line: 48, column: 7, scope: !3898)
!3949 = !DILocation(line: 49, column: 14, scope: !3925)
!3950 = !DILocation(line: 49, column: 18, scope: !3925)
!3951 = !DILocation(line: 49, column: 31, scope: !3925)
!3952 = !DILocation(line: 49, column: 23, scope: !3925)
!3953 = !DILocation(line: 49, column: 7, scope: !3898)
!3954 = !DILocation(line: 50, column: 12, scope: !3925)
!3955 = !DILocation(line: 50, column: 26, scope: !3925)
!3956 = !DILocation(line: 50, column: 33, scope: !3925)
!3957 = !DILocation(line: 50, column: 5, scope: !3925)
!3958 = !DILocation(line: 52, column: 3, scope: !3898)
!3959 = distinct !DISubprogram(name: "xfprintf", scope: !3876, file: !3876, line: 58, type: !3960, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4003)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!39, !3962, !1143, null}
!3962 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3963)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !3965)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 241, size: 1728, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3965, file: !208, line: 242, baseType: !39, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3965, file: !208, line: 247, baseType: !36, size: 64, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3965, file: !208, line: 248, baseType: !36, size: 64, offset: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3965, file: !208, line: 249, baseType: !36, size: 64, offset: 192)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3965, file: !208, line: 250, baseType: !36, size: 64, offset: 256)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3965, file: !208, line: 251, baseType: !36, size: 64, offset: 320)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3965, file: !208, line: 252, baseType: !36, size: 64, offset: 384)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3965, file: !208, line: 253, baseType: !36, size: 64, offset: 448)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3965, file: !208, line: 254, baseType: !36, size: 64, offset: 512)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3965, file: !208, line: 256, baseType: !36, size: 64, offset: 576)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3965, file: !208, line: 257, baseType: !36, size: 64, offset: 640)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3965, file: !208, line: 258, baseType: !36, size: 64, offset: 704)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3965, file: !208, line: 260, baseType: !3980, size: 64, offset: 768)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !208, line: 156, size: 192, elements: !3982)
!3982 = !{!3983, !3984, !3986}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3981, file: !208, line: 157, baseType: !3980, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3981, file: !208, line: 158, baseType: !3985, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3981, file: !208, line: 162, baseType: !39, size: 32, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3965, file: !208, line: 262, baseType: !3985, size: 64, offset: 832)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3965, file: !208, line: 264, baseType: !39, size: 32, offset: 896)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3965, file: !208, line: 268, baseType: !39, size: 32, offset: 928)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3965, file: !208, line: 270, baseType: !234, size: 64, offset: 960)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3965, file: !208, line: 274, baseType: !41, size: 16, offset: 1024)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3965, file: !208, line: 275, baseType: !238, size: 8, offset: 1040)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3965, file: !208, line: 276, baseType: !240, size: 8, offset: 1048)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3965, file: !208, line: 280, baseType: !244, size: 64, offset: 1088)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3965, file: !208, line: 289, baseType: !247, size: 64, offset: 1152)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3965, file: !208, line: 297, baseType: !35, size: 64, offset: 1216)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3965, file: !208, line: 298, baseType: !35, size: 64, offset: 1280)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3965, file: !208, line: 299, baseType: !35, size: 64, offset: 1344)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3965, file: !208, line: 300, baseType: !35, size: 64, offset: 1408)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3965, file: !208, line: 302, baseType: !140, size: 64, offset: 1472)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3965, file: !208, line: 303, baseType: !39, size: 32, offset: 1536)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3965, file: !208, line: 305, baseType: !255, size: 160, offset: 1568)
!4003 = !{!4004, !4005, !4006, !4007}
!4004 = !DILocalVariable(name: "stream", arg: 1, scope: !3959, file: !3876, line: 58, type: !3962)
!4005 = !DILocalVariable(name: "format", arg: 2, scope: !3959, file: !3876, line: 58, type: !1143)
!4006 = !DILocalVariable(name: "args", scope: !3959, file: !3876, line: 60, type: !3882)
!4007 = !DILocalVariable(name: "retval", scope: !3959, file: !3876, line: 61, type: !39)
!4008 = !DILocation(line: 58, column: 26, scope: !3959)
!4009 = !DILocation(line: 58, column: 55, scope: !3959)
!4010 = !DILocation(line: 60, column: 3, scope: !3959)
!4011 = !DILocation(line: 60, column: 11, scope: !3959)
!4012 = !DILocation(line: 62, column: 3, scope: !3959)
!4013 = !DILocalVariable(name: "stream", arg: 1, scope: !4014, file: !3876, line: 72, type: !3962)
!4014 = distinct !DISubprogram(name: "xvfprintf", scope: !3876, file: !3876, line: 72, type: !4015, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4017)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!39, !3962, !1143, !3901}
!4017 = !{!4013, !4018, !4019, !4020}
!4018 = !DILocalVariable(name: "format", arg: 2, scope: !4014, file: !3876, line: 72, type: !1143)
!4019 = !DILocalVariable(name: "args", arg: 3, scope: !4014, file: !3876, line: 72, type: !3901)
!4020 = !DILocalVariable(name: "retval", scope: !4014, file: !3876, line: 74, type: !39)
!4021 = !DILocation(line: 72, column: 27, scope: !4014, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 63, column: 12, scope: !3959)
!4023 = !DILocation(line: 72, column: 56, scope: !4014, inlinedAt: !4022)
!4024 = !DILocation(line: 72, column: 72, scope: !4014, inlinedAt: !4022)
!4025 = !DILocalVariable(name: "__stream", arg: 1, scope: !4026, file: !3910, line: 124, type: !3962)
!4026 = distinct !DISubprogram(name: "vfprintf", scope: !3910, file: !3910, line: 124, type: !4015, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4027)
!4027 = !{!4025, !4028, !4029}
!4028 = !DILocalVariable(name: "__fmt", arg: 2, scope: !4026, file: !3910, line: 125, type: !1143)
!4029 = !DILocalVariable(name: "__ap", arg: 3, scope: !4026, file: !3910, line: 125, type: !3901)
!4030 = !DILocation(line: 124, column: 28, scope: !4026, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 74, column: 16, scope: !4014, inlinedAt: !4022)
!4032 = !DILocation(line: 125, column: 27, scope: !4026, inlinedAt: !4031)
!4033 = !DILocation(line: 125, column: 45, scope: !4026, inlinedAt: !4031)
!4034 = !DILocation(line: 127, column: 10, scope: !4026, inlinedAt: !4031)
!4035 = !DILocation(line: 74, column: 7, scope: !4014, inlinedAt: !4022)
!4036 = !DILocation(line: 75, column: 14, scope: !4037, inlinedAt: !4022)
!4037 = distinct !DILexicalBlock(scope: !4014, file: !3876, line: 75, column: 7)
!4038 = !DILocation(line: 75, column: 18, scope: !4037, inlinedAt: !4022)
!4039 = !DILocation(line: 75, column: 23, scope: !4037, inlinedAt: !4022)
!4040 = !DILocation(line: 75, column: 7, scope: !4014, inlinedAt: !4022)
!4041 = !DILocation(line: 76, column: 12, scope: !4037, inlinedAt: !4022)
!4042 = !DILocation(line: 76, column: 26, scope: !4037, inlinedAt: !4022)
!4043 = !DILocation(line: 76, column: 33, scope: !4037, inlinedAt: !4022)
!4044 = !DILocation(line: 76, column: 5, scope: !4037, inlinedAt: !4022)
!4045 = !DILocation(line: 61, column: 7, scope: !3959)
!4046 = !DILocation(line: 64, column: 3, scope: !3959)
!4047 = !DILocation(line: 67, column: 1, scope: !3959)
!4048 = !DILocation(line: 66, column: 3, scope: !3959)
!4049 = !DILocation(line: 72, column: 27, scope: !4014)
!4050 = !DILocation(line: 72, column: 56, scope: !4014)
!4051 = !DILocation(line: 72, column: 72, scope: !4014)
!4052 = !DILocation(line: 124, column: 28, scope: !4026, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 74, column: 16, scope: !4014)
!4054 = !DILocation(line: 125, column: 27, scope: !4026, inlinedAt: !4053)
!4055 = !DILocation(line: 125, column: 45, scope: !4026, inlinedAt: !4053)
!4056 = !DILocation(line: 127, column: 10, scope: !4026, inlinedAt: !4053)
!4057 = !DILocation(line: 74, column: 7, scope: !4014)
!4058 = !DILocation(line: 75, column: 14, scope: !4037)
!4059 = !DILocation(line: 75, column: 18, scope: !4037)
!4060 = !DILocation(line: 75, column: 23, scope: !4037)
!4061 = !DILocation(line: 75, column: 7, scope: !4014)
!4062 = !DILocation(line: 76, column: 12, scope: !4037)
!4063 = !DILocation(line: 76, column: 26, scope: !4037)
!4064 = !DILocation(line: 76, column: 33, scope: !4037)
!4065 = !DILocation(line: 76, column: 5, scope: !4037)
!4066 = !DILocation(line: 78, column: 3, scope: !4014)
!4067 = distinct !DISubprogram(name: "rpl_calloc", scope: !4068, file: !4068, line: 42, type: !3622, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !4069)
!4068 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4069 = !{!4070, !4071, !4072, !4073}
!4070 = !DILocalVariable(name: "n", arg: 1, scope: !4067, file: !4068, line: 42, type: !140)
!4071 = !DILocalVariable(name: "s", arg: 2, scope: !4067, file: !4068, line: 42, type: !140)
!4072 = !DILocalVariable(name: "result", scope: !4067, file: !4068, line: 44, type: !35)
!4073 = !DILocalVariable(name: "bytes", scope: !4074, file: !4068, line: 56, type: !140)
!4074 = distinct !DILexicalBlock(scope: !4075, file: !4068, line: 53, column: 5)
!4075 = distinct !DILexicalBlock(scope: !4067, file: !4068, line: 47, column: 7)
!4076 = !DILocation(line: 42, column: 20, scope: !4067)
!4077 = !DILocation(line: 42, column: 30, scope: !4067)
!4078 = !DILocation(line: 47, column: 9, scope: !4075)
!4079 = !DILocation(line: 47, column: 19, scope: !4075)
!4080 = !DILocation(line: 47, column: 14, scope: !4075)
!4081 = !DILocation(line: 56, column: 24, scope: !4074)
!4082 = !DILocation(line: 56, column: 14, scope: !4074)
!4083 = !DILocation(line: 57, column: 17, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4074, file: !4068, line: 57, column: 11)
!4085 = !DILocation(line: 57, column: 21, scope: !4084)
!4086 = !DILocation(line: 57, column: 11, scope: !4074)
!4087 = !DILocation(line: 59, column: 11, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4084, file: !4068, line: 58, column: 9)
!4089 = !DILocation(line: 59, column: 17, scope: !4088)
!4090 = !DILocation(line: 65, column: 12, scope: !4067)
!4091 = !DILocation(line: 44, column: 9, scope: !4067)
!4092 = !DILocation(line: 72, column: 3, scope: !4067)
!4093 = !DILocation(line: 73, column: 1, scope: !4067)
!4094 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4095, file: !4095, line: 334, type: !4096, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4110)
!4095 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!140, !4098, !51, !140, !4099}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1755, line: 6, baseType: !4101)
!4101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1757, line: 21, baseType: !4102)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1757, line: 13, size: 64, elements: !4103)
!4103 = !{!4104, !4105}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4102, file: !1757, line: 15, baseType: !39, size: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4102, file: !1757, line: 20, baseType: !4106, size: 32, offset: 32)
!4106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4102, file: !1757, line: 16, size: 32, elements: !4107)
!4107 = !{!4108, !4109}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4106, file: !1757, line: 18, baseType: !38, size: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4106, file: !1757, line: 19, baseType: !1766, size: 32)
!4110 = !{!4111, !4112, !4113, !4114, !4115, !4116, !4117}
!4111 = !DILocalVariable(name: "pwc", arg: 1, scope: !4094, file: !4095, line: 334, type: !4098)
!4112 = !DILocalVariable(name: "s", arg: 2, scope: !4094, file: !4095, line: 334, type: !51)
!4113 = !DILocalVariable(name: "n", arg: 3, scope: !4094, file: !4095, line: 334, type: !140)
!4114 = !DILocalVariable(name: "ps", arg: 4, scope: !4094, file: !4095, line: 334, type: !4099)
!4115 = !DILocalVariable(name: "ret", scope: !4094, file: !4095, line: 336, type: !140)
!4116 = !DILocalVariable(name: "wc", scope: !4094, file: !4095, line: 337, type: !1771)
!4117 = !DILocalVariable(name: "uc", scope: !4118, file: !4095, line: 398, type: !40)
!4118 = distinct !DILexicalBlock(scope: !4119, file: !4095, line: 397, column: 5)
!4119 = distinct !DILexicalBlock(scope: !4094, file: !4095, line: 396, column: 7)
!4120 = !DILocation(line: 334, column: 23, scope: !4094)
!4121 = !DILocation(line: 334, column: 40, scope: !4094)
!4122 = !DILocation(line: 334, column: 50, scope: !4094)
!4123 = !DILocation(line: 334, column: 64, scope: !4094)
!4124 = !DILocation(line: 337, column: 3, scope: !4094)
!4125 = !DILocation(line: 353, column: 9, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4094, file: !4095, line: 353, column: 7)
!4127 = !DILocation(line: 353, column: 7, scope: !4094)
!4128 = !DILocation(line: 388, column: 9, scope: !4094)
!4129 = !DILocation(line: 336, column: 10, scope: !4094)
!4130 = !DILocation(line: 396, column: 19, scope: !4119)
!4131 = !DILocation(line: 396, column: 31, scope: !4119)
!4132 = !DILocation(line: 396, column: 26, scope: !4119)
!4133 = !DILocation(line: 396, column: 41, scope: !4119)
!4134 = !DILocation(line: 396, column: 7, scope: !4094)
!4135 = !DILocation(line: 398, column: 26, scope: !4118)
!4136 = !DILocation(line: 398, column: 21, scope: !4118)
!4137 = !DILocation(line: 399, column: 14, scope: !4118)
!4138 = !DILocation(line: 399, column: 12, scope: !4118)
!4139 = !DILocation(line: 405, column: 1, scope: !4094)
!4140 = distinct !DISubprogram(name: "close_stream", scope: !4141, file: !4141, line: 56, type: !4142, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !679, variables: !4184)
!4141 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!39, !4144}
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4146)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 241, size: 1728, elements: !4147)
!4147 = !{!4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4146, file: !208, line: 242, baseType: !39, size: 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4146, file: !208, line: 247, baseType: !36, size: 64, offset: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4146, file: !208, line: 248, baseType: !36, size: 64, offset: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4146, file: !208, line: 249, baseType: !36, size: 64, offset: 192)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4146, file: !208, line: 250, baseType: !36, size: 64, offset: 256)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4146, file: !208, line: 251, baseType: !36, size: 64, offset: 320)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4146, file: !208, line: 252, baseType: !36, size: 64, offset: 384)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4146, file: !208, line: 253, baseType: !36, size: 64, offset: 448)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4146, file: !208, line: 254, baseType: !36, size: 64, offset: 512)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4146, file: !208, line: 256, baseType: !36, size: 64, offset: 576)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4146, file: !208, line: 257, baseType: !36, size: 64, offset: 640)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4146, file: !208, line: 258, baseType: !36, size: 64, offset: 704)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4146, file: !208, line: 260, baseType: !4161, size: 64, offset: 768)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !208, line: 156, size: 192, elements: !4163)
!4163 = !{!4164, !4165, !4167}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4162, file: !208, line: 157, baseType: !4161, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4162, file: !208, line: 158, baseType: !4166, size: 64, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4162, file: !208, line: 162, baseType: !39, size: 32, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4146, file: !208, line: 262, baseType: !4166, size: 64, offset: 832)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4146, file: !208, line: 264, baseType: !39, size: 32, offset: 896)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4146, file: !208, line: 268, baseType: !39, size: 32, offset: 928)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4146, file: !208, line: 270, baseType: !234, size: 64, offset: 960)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4146, file: !208, line: 274, baseType: !41, size: 16, offset: 1024)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4146, file: !208, line: 275, baseType: !238, size: 8, offset: 1040)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4146, file: !208, line: 276, baseType: !240, size: 8, offset: 1048)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4146, file: !208, line: 280, baseType: !244, size: 64, offset: 1088)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4146, file: !208, line: 289, baseType: !247, size: 64, offset: 1152)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4146, file: !208, line: 297, baseType: !35, size: 64, offset: 1216)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4146, file: !208, line: 298, baseType: !35, size: 64, offset: 1280)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4146, file: !208, line: 299, baseType: !35, size: 64, offset: 1344)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4146, file: !208, line: 300, baseType: !35, size: 64, offset: 1408)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4146, file: !208, line: 302, baseType: !140, size: 64, offset: 1472)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4146, file: !208, line: 303, baseType: !39, size: 32, offset: 1536)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4146, file: !208, line: 305, baseType: !255, size: 160, offset: 1568)
!4184 = !{!4185, !4186, !4188, !4189}
!4185 = !DILocalVariable(name: "stream", arg: 1, scope: !4140, file: !4141, line: 56, type: !4144)
!4186 = !DILocalVariable(name: "some_pending", scope: !4140, file: !4141, line: 58, type: !4187)
!4187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!4188 = !DILocalVariable(name: "prev_fail", scope: !4140, file: !4141, line: 59, type: !4187)
!4189 = !DILocalVariable(name: "fclose_fail", scope: !4140, file: !4141, line: 60, type: !4187)
!4190 = !DILocation(line: 56, column: 21, scope: !4140)
!4191 = !DILocation(line: 58, column: 30, scope: !4140)
!4192 = !DILocalVariable(name: "__stream", arg: 1, scope: !4193, file: !858, line: 132, type: !4144)
!4193 = distinct !DISubprogram(name: "ferror_unlocked", scope: !858, file: !858, line: 132, type: !4142, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !679, variables: !4194)
!4194 = !{!4192}
!4195 = !DILocation(line: 132, column: 1, scope: !4193, inlinedAt: !4196)
!4196 = distinct !DILocation(line: 59, column: 27, scope: !4140)
!4197 = !DILocation(line: 134, column: 10, scope: !4193, inlinedAt: !4196)
!4198 = !{!867, !868, i64 0}
!4199 = !DILocation(line: 59, column: 43, scope: !4140)
!4200 = !DILocation(line: 60, column: 29, scope: !4140)
!4201 = !DILocation(line: 60, column: 45, scope: !4140)
!4202 = !DILocation(line: 70, column: 17, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 70, column: 7)
!4204 = !DILocation(line: 58, column: 50, scope: !4140)
!4205 = !DILocation(line: 70, column: 33, scope: !4203)
!4206 = !DILocation(line: 70, column: 53, scope: !4203)
!4207 = !DILocation(line: 70, column: 59, scope: !4203)
!4208 = !DILocation(line: 70, column: 7, scope: !4140)
!4209 = !DILocation(line: 72, column: 11, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4203, file: !4141, line: 71, column: 5)
!4211 = !DILocation(line: 73, column: 9, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4210, file: !4141, line: 72, column: 11)
!4213 = !DILocation(line: 73, column: 15, scope: !4212)
!4214 = !DILocation(line: 78, column: 1, scope: !4140)
!4215 = distinct !DISubprogram(name: "hard_locale", scope: !4216, file: !4216, line: 38, type: !4217, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !4219)
!4216 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!70, !39}
!4219 = !{!4220, !4221, !4222}
!4220 = !DILocalVariable(name: "category", arg: 1, scope: !4215, file: !4216, line: 38, type: !39)
!4221 = !DILocalVariable(name: "hard", scope: !4215, file: !4216, line: 40, type: !70)
!4222 = !DILocalVariable(name: "p", scope: !4215, file: !4216, line: 41, type: !51)
!4223 = !DILocation(line: 38, column: 18, scope: !4215)
!4224 = !DILocation(line: 40, column: 8, scope: !4215)
!4225 = !DILocation(line: 41, column: 19, scope: !4215)
!4226 = !DILocation(line: 41, column: 15, scope: !4215)
!4227 = !DILocation(line: 43, column: 7, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4215, file: !4216, line: 43, column: 7)
!4229 = !DILocation(line: 43, column: 7, scope: !4215)
!4230 = !DILocation(line: 47, column: 15, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !4216, line: 47, column: 15)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !4216, line: 46, column: 9)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !4216, line: 45, column: 11)
!4234 = distinct !DILexicalBlock(scope: !4228, file: !4216, line: 44, column: 5)
!4235 = !DILocation(line: 47, column: 31, scope: !4231)
!4236 = !DILocation(line: 47, column: 36, scope: !4231)
!4237 = !DILocation(line: 47, column: 39, scope: !4231)
!4238 = !DILocation(line: 47, column: 59, scope: !4231)
!4239 = !DILocation(line: 47, column: 15, scope: !4232)
!4240 = !DILocation(line: 48, column: 13, scope: !4231)
!4241 = !DILocation(line: 71, column: 3, scope: !4215)
!4242 = distinct !DISubprogram(name: "locale_charset", scope: !641, file: !641, line: 393, type: !4243, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !298, variables: !4245)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!51}
!4245 = !{!4246, !4247}
!4246 = !DILocalVariable(name: "codeset", scope: !4242, file: !641, line: 395, type: !51)
!4247 = !DILocalVariable(name: "aliases", scope: !4242, file: !641, line: 396, type: !51)
!4248 = !DILocalVariable(name: "buf1", scope: !4249, file: !641, line: 196, type: !4316)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !641, line: 194, column: 21)
!4250 = distinct !DILexicalBlock(scope: !4251, file: !641, line: 193, column: 19)
!4251 = distinct !DILexicalBlock(scope: !4252, file: !641, line: 193, column: 19)
!4252 = distinct !DILexicalBlock(scope: !4253, file: !641, line: 188, column: 17)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !641, line: 181, column: 19)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !641, line: 177, column: 13)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !641, line: 173, column: 15)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !641, line: 161, column: 9)
!4257 = distinct !DILexicalBlock(scope: !4258, file: !641, line: 157, column: 11)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !641, line: 130, column: 5)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !641, line: 129, column: 7)
!4260 = distinct !DISubprogram(name: "get_charset_aliases", scope: !641, file: !641, line: 124, type: !4243, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !298, variables: !4261)
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4268, !4269, !4270, !4271, !4312, !4313, !4314, !4248, !4315, !4319, !4320, !4321}
!4262 = !DILocalVariable(name: "cp", scope: !4260, file: !641, line: 126, type: !51)
!4263 = !DILocalVariable(name: "dir", scope: !4258, file: !641, line: 132, type: !51)
!4264 = !DILocalVariable(name: "base", scope: !4258, file: !641, line: 133, type: !51)
!4265 = !DILocalVariable(name: "file_name", scope: !4258, file: !641, line: 134, type: !36)
!4266 = !DILocalVariable(name: "dir_len", scope: !4267, file: !641, line: 144, type: !140)
!4267 = distinct !DILexicalBlock(scope: !4258, file: !641, line: 143, column: 7)
!4268 = !DILocalVariable(name: "base_len", scope: !4267, file: !641, line: 145, type: !140)
!4269 = !DILocalVariable(name: "add_slash", scope: !4267, file: !641, line: 146, type: !39)
!4270 = !DILocalVariable(name: "fd", scope: !4256, file: !641, line: 162, type: !39)
!4271 = !DILocalVariable(name: "fp", scope: !4254, file: !641, line: 178, type: !4272)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4274)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 241, size: 1728, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4274, file: !208, line: 242, baseType: !39, size: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4274, file: !208, line: 247, baseType: !36, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4274, file: !208, line: 248, baseType: !36, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4274, file: !208, line: 249, baseType: !36, size: 64, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4274, file: !208, line: 250, baseType: !36, size: 64, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4274, file: !208, line: 251, baseType: !36, size: 64, offset: 320)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4274, file: !208, line: 252, baseType: !36, size: 64, offset: 384)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4274, file: !208, line: 253, baseType: !36, size: 64, offset: 448)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4274, file: !208, line: 254, baseType: !36, size: 64, offset: 512)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4274, file: !208, line: 256, baseType: !36, size: 64, offset: 576)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4274, file: !208, line: 257, baseType: !36, size: 64, offset: 640)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4274, file: !208, line: 258, baseType: !36, size: 64, offset: 704)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4274, file: !208, line: 260, baseType: !4289, size: 64, offset: 768)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !208, line: 156, size: 192, elements: !4291)
!4291 = !{!4292, !4293, !4295}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4290, file: !208, line: 157, baseType: !4289, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4290, file: !208, line: 158, baseType: !4294, size: 64, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4290, file: !208, line: 162, baseType: !39, size: 32, offset: 128)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4274, file: !208, line: 262, baseType: !4294, size: 64, offset: 832)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4274, file: !208, line: 264, baseType: !39, size: 32, offset: 896)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4274, file: !208, line: 268, baseType: !39, size: 32, offset: 928)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4274, file: !208, line: 270, baseType: !234, size: 64, offset: 960)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4274, file: !208, line: 274, baseType: !41, size: 16, offset: 1024)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4274, file: !208, line: 275, baseType: !238, size: 8, offset: 1040)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4274, file: !208, line: 276, baseType: !240, size: 8, offset: 1048)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4274, file: !208, line: 280, baseType: !244, size: 64, offset: 1088)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4274, file: !208, line: 289, baseType: !247, size: 64, offset: 1152)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4274, file: !208, line: 297, baseType: !35, size: 64, offset: 1216)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4274, file: !208, line: 298, baseType: !35, size: 64, offset: 1280)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4274, file: !208, line: 299, baseType: !35, size: 64, offset: 1344)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4274, file: !208, line: 300, baseType: !35, size: 64, offset: 1408)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4274, file: !208, line: 302, baseType: !140, size: 64, offset: 1472)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4274, file: !208, line: 303, baseType: !39, size: 32, offset: 1536)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4274, file: !208, line: 305, baseType: !255, size: 160, offset: 1568)
!4312 = !DILocalVariable(name: "res_ptr", scope: !4252, file: !641, line: 190, type: !36)
!4313 = !DILocalVariable(name: "res_size", scope: !4252, file: !641, line: 191, type: !140)
!4314 = !DILocalVariable(name: "c", scope: !4249, file: !641, line: 195, type: !39)
!4315 = !DILocalVariable(name: "buf2", scope: !4249, file: !641, line: 197, type: !4316)
!4316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 408, elements: !4317)
!4317 = !{!4318}
!4318 = !DISubrange(count: 51)
!4319 = !DILocalVariable(name: "l1", scope: !4249, file: !641, line: 198, type: !140)
!4320 = !DILocalVariable(name: "l2", scope: !4249, file: !641, line: 198, type: !140)
!4321 = !DILocalVariable(name: "old_res_ptr", scope: !4249, file: !641, line: 199, type: !36)
!4322 = !DILocation(line: 196, column: 28, scope: !4249, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 589, column: 18, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4242, file: !641, line: 589, column: 3)
!4325 = !DILocation(line: 197, column: 28, scope: !4249, inlinedAt: !4323)
!4326 = !DILocation(line: 403, column: 13, scope: !4242)
!4327 = !DILocation(line: 395, column: 15, scope: !4242)
!4328 = !DILocation(line: 584, column: 15, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4242, file: !641, line: 584, column: 7)
!4330 = !DILocation(line: 584, column: 7, scope: !4242)
!4331 = !DILocation(line: 128, column: 8, scope: !4260, inlinedAt: !4323)
!4332 = !DILocation(line: 126, column: 15, scope: !4260, inlinedAt: !4323)
!4333 = !DILocation(line: 129, column: 10, scope: !4259, inlinedAt: !4323)
!4334 = !DILocation(line: 129, column: 7, scope: !4260, inlinedAt: !4323)
!4335 = !DILocation(line: 138, column: 13, scope: !4258, inlinedAt: !4323)
!4336 = !DILocation(line: 132, column: 19, scope: !4258, inlinedAt: !4323)
!4337 = !DILocation(line: 139, column: 15, scope: !4338, inlinedAt: !4323)
!4338 = distinct !DILexicalBlock(scope: !4258, file: !641, line: 139, column: 11)
!4339 = !DILocation(line: 139, column: 23, scope: !4338, inlinedAt: !4323)
!4340 = !DILocation(line: 139, column: 26, scope: !4338, inlinedAt: !4323)
!4341 = !DILocation(line: 139, column: 33, scope: !4338, inlinedAt: !4323)
!4342 = !DILocation(line: 139, column: 11, scope: !4258, inlinedAt: !4323)
!4343 = !DILocation(line: 140, column: 9, scope: !4338, inlinedAt: !4323)
!4344 = !DILocation(line: 144, column: 26, scope: !4267, inlinedAt: !4323)
!4345 = !DILocation(line: 144, column: 16, scope: !4267, inlinedAt: !4323)
!4346 = !DILocation(line: 145, column: 16, scope: !4267, inlinedAt: !4323)
!4347 = !DILocation(line: 146, column: 34, scope: !4267, inlinedAt: !4323)
!4348 = !DILocation(line: 146, column: 38, scope: !4267, inlinedAt: !4323)
!4349 = !DILocation(line: 146, column: 42, scope: !4267, inlinedAt: !4323)
!4350 = !DILocation(line: 147, column: 48, scope: !4267, inlinedAt: !4323)
!4351 = !DILocation(line: 147, column: 46, scope: !4267, inlinedAt: !4323)
!4352 = !DILocation(line: 147, column: 69, scope: !4267, inlinedAt: !4323)
!4353 = !DILocation(line: 147, column: 30, scope: !4267, inlinedAt: !4323)
!4354 = !DILocation(line: 134, column: 13, scope: !4258, inlinedAt: !4323)
!4355 = !DILocation(line: 148, column: 13, scope: !4267, inlinedAt: !4323)
!4356 = !DILocation(line: 150, column: 13, scope: !4357, inlinedAt: !4323)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !641, line: 149, column: 11)
!4358 = distinct !DILexicalBlock(scope: !4267, file: !641, line: 148, column: 13)
!4359 = !DILocation(line: 151, column: 17, scope: !4357, inlinedAt: !4323)
!4360 = !DILocation(line: 152, column: 34, scope: !4361, inlinedAt: !4323)
!4361 = distinct !DILexicalBlock(scope: !4357, file: !641, line: 151, column: 17)
!4362 = !DILocation(line: 153, column: 41, scope: !4357, inlinedAt: !4323)
!4363 = !DILocation(line: 153, column: 13, scope: !4357, inlinedAt: !4323)
!4364 = !DILocation(line: 157, column: 11, scope: !4258, inlinedAt: !4323)
!4365 = !DILocation(line: 171, column: 16, scope: !4256, inlinedAt: !4323)
!4366 = !DILocation(line: 162, column: 15, scope: !4256, inlinedAt: !4323)
!4367 = !DILocation(line: 173, column: 18, scope: !4255, inlinedAt: !4323)
!4368 = !DILocation(line: 173, column: 15, scope: !4256, inlinedAt: !4323)
!4369 = !DILocation(line: 180, column: 20, scope: !4254, inlinedAt: !4323)
!4370 = !DILocation(line: 178, column: 21, scope: !4254, inlinedAt: !4323)
!4371 = !DILocation(line: 181, column: 22, scope: !4253, inlinedAt: !4323)
!4372 = !DILocation(line: 181, column: 19, scope: !4254, inlinedAt: !4323)
!4373 = !DILocation(line: 184, column: 19, scope: !4374, inlinedAt: !4323)
!4374 = distinct !DILexicalBlock(scope: !4253, file: !641, line: 182, column: 17)
!4375 = !DILocation(line: 186, column: 17, scope: !4374, inlinedAt: !4323)
!4376 = !DILocation(line: 190, column: 25, scope: !4252, inlinedAt: !4323)
!4377 = !DILocation(line: 191, column: 26, scope: !4252, inlinedAt: !4323)
!4378 = !DILocation(line: 193, column: 19, scope: !4252, inlinedAt: !4323)
!4379 = !DILocation(line: 196, column: 23, scope: !4249, inlinedAt: !4323)
!4380 = !DILocation(line: 197, column: 23, scope: !4249, inlinedAt: !4323)
!4381 = !DILocalVariable(name: "__fp", arg: 1, scope: !4382, file: !858, line: 63, type: !4272)
!4382 = distinct !DISubprogram(name: "getc_unlocked", scope: !858, file: !858, line: 63, type: !4383, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !298, variables: !4385)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!39, !4272}
!4385 = !{!4381}
!4386 = !DILocation(line: 63, column: 22, scope: !4382, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 201, column: 27, scope: !4249, inlinedAt: !4323)
!4388 = !DILocation(line: 65, column: 10, scope: !4382, inlinedAt: !4387)
!4389 = !{!867, !708, i64 8}
!4390 = !{!867, !708, i64 16}
!4391 = !DILocation(line: 195, column: 27, scope: !4249, inlinedAt: !4323)
!4392 = !DILocation(line: 202, column: 27, scope: !4249, inlinedAt: !4323)
!4393 = distinct !{!4393, !4394, !4397}
!4394 = !DILocation(line: 209, column: 27, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4396, file: !641, line: 207, column: 25)
!4396 = distinct !DILexicalBlock(scope: !4249, file: !641, line: 206, column: 27)
!4397 = !DILocation(line: 211, column: 58, scope: !4395)
!4398 = !DILocation(line: 65, column: 10, scope: !4382, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 210, column: 33, scope: !4395, inlinedAt: !4323)
!4400 = !DILocation(line: 63, column: 22, scope: !4382, inlinedAt: !4399)
!4401 = !DILocation(line: 210, column: 29, scope: !4395, inlinedAt: !4323)
!4402 = distinct !{!4402, !4403, !4404}
!4403 = !DILocation(line: 193, column: 19, scope: !4251)
!4404 = !DILocation(line: 241, column: 21, scope: !4251)
!4405 = !DILocation(line: 216, column: 23, scope: !4249, inlinedAt: !4323)
!4406 = !DILocation(line: 217, column: 27, scope: !4407, inlinedAt: !4323)
!4407 = distinct !DILexicalBlock(scope: !4249, file: !641, line: 217, column: 27)
!4408 = !DILocation(line: 217, column: 64, scope: !4407, inlinedAt: !4323)
!4409 = !DILocation(line: 217, column: 27, scope: !4249, inlinedAt: !4323)
!4410 = !DILocation(line: 219, column: 28, scope: !4249, inlinedAt: !4323)
!4411 = !DILocation(line: 198, column: 30, scope: !4249, inlinedAt: !4323)
!4412 = !DILocation(line: 220, column: 28, scope: !4249, inlinedAt: !4323)
!4413 = !DILocation(line: 198, column: 34, scope: !4249, inlinedAt: !4323)
!4414 = !DILocation(line: 199, column: 29, scope: !4249, inlinedAt: !4323)
!4415 = !DILocation(line: 222, column: 36, scope: !4416, inlinedAt: !4323)
!4416 = distinct !DILexicalBlock(scope: !4249, file: !641, line: 222, column: 27)
!4417 = !DILocation(line: 222, column: 27, scope: !4249, inlinedAt: !4323)
!4418 = !DILocation(line: 225, column: 63, scope: !4419, inlinedAt: !4323)
!4419 = distinct !DILexicalBlock(scope: !4416, file: !641, line: 223, column: 25)
!4420 = !DILocation(line: 225, column: 46, scope: !4419, inlinedAt: !4323)
!4421 = !DILocation(line: 226, column: 25, scope: !4419, inlinedAt: !4323)
!4422 = !DILocation(line: 229, column: 36, scope: !4423, inlinedAt: !4323)
!4423 = distinct !DILexicalBlock(scope: !4416, file: !641, line: 228, column: 25)
!4424 = !DILocation(line: 230, column: 73, scope: !4423, inlinedAt: !4323)
!4425 = !DILocation(line: 230, column: 46, scope: !4423, inlinedAt: !4323)
!4426 = !DILocation(line: 232, column: 35, scope: !4427, inlinedAt: !4323)
!4427 = distinct !DILexicalBlock(scope: !4249, file: !641, line: 232, column: 27)
!4428 = !DILocation(line: 232, column: 27, scope: !4249, inlinedAt: !4323)
!4429 = !DILocation(line: 236, column: 27, scope: !4430, inlinedAt: !4323)
!4430 = distinct !DILexicalBlock(scope: !4427, file: !641, line: 233, column: 25)
!4431 = !DILocation(line: 237, column: 27, scope: !4430, inlinedAt: !4323)
!4432 = !DILocation(line: 241, column: 21, scope: !4250, inlinedAt: !4323)
!4433 = !DILocation(line: 239, column: 39, scope: !4249, inlinedAt: !4323)
!4434 = !DILocation(line: 239, column: 50, scope: !4249, inlinedAt: !4323)
!4435 = !DILocation(line: 239, column: 61, scope: !4249, inlinedAt: !4323)
!4436 = !DILocalVariable(name: "__dest", arg: 1, scope: !4437, file: !1082, line: 88, type: !4440)
!4437 = distinct !DISubprogram(name: "strcpy", scope: !1082, file: !1082, line: 88, type: !4438, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !298, variables: !4441)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!36, !4440, !1143}
!4440 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!4441 = !{!4436, !4442}
!4442 = !DILocalVariable(name: "__src", arg: 2, scope: !4437, file: !1082, line: 88, type: !1143)
!4443 = !DILocation(line: 88, column: 1, scope: !4437, inlinedAt: !4444)
!4444 = distinct !DILocation(line: 239, column: 23, scope: !4249, inlinedAt: !4323)
!4445 = !DILocation(line: 90, column: 49, scope: !4437, inlinedAt: !4444)
!4446 = !DILocation(line: 90, column: 10, scope: !4437, inlinedAt: !4444)
!4447 = !DILocation(line: 88, column: 1, scope: !4437, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 240, column: 23, scope: !4249, inlinedAt: !4323)
!4449 = !DILocation(line: 90, column: 49, scope: !4437, inlinedAt: !4448)
!4450 = !DILocation(line: 90, column: 10, scope: !4437, inlinedAt: !4448)
!4451 = !DILocation(line: 193, column: 19, scope: !4250, inlinedAt: !4323)
!4452 = !DILocation(line: 242, column: 19, scope: !4252, inlinedAt: !4323)
!4453 = !DILocation(line: 243, column: 32, scope: !4454, inlinedAt: !4323)
!4454 = distinct !DILexicalBlock(scope: !4252, file: !641, line: 243, column: 23)
!4455 = !DILocation(line: 243, column: 23, scope: !4252, inlinedAt: !4323)
!4456 = !DILocation(line: 247, column: 33, scope: !4457, inlinedAt: !4323)
!4457 = distinct !DILexicalBlock(scope: !4454, file: !641, line: 246, column: 21)
!4458 = !DILocation(line: 247, column: 45, scope: !4457, inlinedAt: !4323)
!4459 = !DILocation(line: 253, column: 11, scope: !4256, inlinedAt: !4323)
!4460 = !DILocation(line: 377, column: 23, scope: !4258, inlinedAt: !4323)
!4461 = !DILocation(line: 378, column: 5, scope: !4258, inlinedAt: !4323)
!4462 = !DILocation(line: 396, column: 15, scope: !4242)
!4463 = !DILocation(line: 590, column: 8, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4324, file: !641, line: 589, column: 3)
!4465 = !DILocation(line: 590, column: 17, scope: !4464)
!4466 = !DILocation(line: 589, column: 3, scope: !4324)
!4467 = !DILocation(line: 592, column: 9, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4464, file: !641, line: 592, column: 9)
!4469 = !DILocation(line: 592, column: 35, scope: !4468)
!4470 = !DILocation(line: 593, column: 9, scope: !4468)
!4471 = !DILocation(line: 593, column: 24, scope: !4468)
!4472 = !DILocation(line: 593, column: 31, scope: !4468)
!4473 = !DILocation(line: 593, column: 34, scope: !4468)
!4474 = !DILocation(line: 593, column: 45, scope: !4468)
!4475 = !DILocation(line: 592, column: 9, scope: !4464)
!4476 = !DILocation(line: 595, column: 29, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4468, file: !641, line: 594, column: 7)
!4478 = !DILocation(line: 595, column: 27, scope: !4477)
!4479 = !DILocation(line: 595, column: 46, scope: !4477)
!4480 = !DILocation(line: 596, column: 9, scope: !4477)
!4481 = !DILocation(line: 591, column: 19, scope: !4464)
!4482 = !DILocation(line: 591, column: 36, scope: !4464)
!4483 = !DILocation(line: 591, column: 16, scope: !4464)
!4484 = !DILocation(line: 591, column: 52, scope: !4464)
!4485 = !DILocation(line: 591, column: 69, scope: !4464)
!4486 = !DILocation(line: 591, column: 49, scope: !4464)
!4487 = distinct !{!4487, !4466, !4488}
!4488 = !DILocation(line: 597, column: 7, scope: !4324)
!4489 = !DILocation(line: 602, column: 7, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4242, file: !641, line: 602, column: 7)
!4491 = !DILocation(line: 602, column: 18, scope: !4490)
!4492 = !DILocation(line: 602, column: 7, scope: !4242)
!4493 = !DILocation(line: 612, column: 3, scope: !4242)
!4494 = distinct !DISubprogram(name: "rpl_fclose", scope: !4495, file: !4495, line: 56, type: !4496, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !683, variables: !4538)
!4495 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!39, !4498}
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4500)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 241, size: 1728, elements: !4501)
!4501 = !{!4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4500, file: !208, line: 242, baseType: !39, size: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4500, file: !208, line: 247, baseType: !36, size: 64, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4500, file: !208, line: 248, baseType: !36, size: 64, offset: 128)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4500, file: !208, line: 249, baseType: !36, size: 64, offset: 192)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4500, file: !208, line: 250, baseType: !36, size: 64, offset: 256)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4500, file: !208, line: 251, baseType: !36, size: 64, offset: 320)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4500, file: !208, line: 252, baseType: !36, size: 64, offset: 384)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4500, file: !208, line: 253, baseType: !36, size: 64, offset: 448)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4500, file: !208, line: 254, baseType: !36, size: 64, offset: 512)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4500, file: !208, line: 256, baseType: !36, size: 64, offset: 576)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4500, file: !208, line: 257, baseType: !36, size: 64, offset: 640)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4500, file: !208, line: 258, baseType: !36, size: 64, offset: 704)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4500, file: !208, line: 260, baseType: !4515, size: 64, offset: 768)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !208, line: 156, size: 192, elements: !4517)
!4517 = !{!4518, !4519, !4521}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4516, file: !208, line: 157, baseType: !4515, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4516, file: !208, line: 158, baseType: !4520, size: 64, offset: 64)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4516, file: !208, line: 162, baseType: !39, size: 32, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4500, file: !208, line: 262, baseType: !4520, size: 64, offset: 832)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4500, file: !208, line: 264, baseType: !39, size: 32, offset: 896)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4500, file: !208, line: 268, baseType: !39, size: 32, offset: 928)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4500, file: !208, line: 270, baseType: !234, size: 64, offset: 960)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4500, file: !208, line: 274, baseType: !41, size: 16, offset: 1024)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4500, file: !208, line: 275, baseType: !238, size: 8, offset: 1040)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4500, file: !208, line: 276, baseType: !240, size: 8, offset: 1048)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4500, file: !208, line: 280, baseType: !244, size: 64, offset: 1088)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4500, file: !208, line: 289, baseType: !247, size: 64, offset: 1152)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4500, file: !208, line: 297, baseType: !35, size: 64, offset: 1216)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4500, file: !208, line: 298, baseType: !35, size: 64, offset: 1280)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4500, file: !208, line: 299, baseType: !35, size: 64, offset: 1344)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4500, file: !208, line: 300, baseType: !35, size: 64, offset: 1408)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4500, file: !208, line: 302, baseType: !140, size: 64, offset: 1472)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4500, file: !208, line: 303, baseType: !39, size: 32, offset: 1536)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4500, file: !208, line: 305, baseType: !255, size: 160, offset: 1568)
!4538 = !{!4539, !4540, !4541, !4542}
!4539 = !DILocalVariable(name: "fp", arg: 1, scope: !4494, file: !4495, line: 56, type: !4498)
!4540 = !DILocalVariable(name: "saved_errno", scope: !4494, file: !4495, line: 58, type: !39)
!4541 = !DILocalVariable(name: "fd", scope: !4494, file: !4495, line: 59, type: !39)
!4542 = !DILocalVariable(name: "result", scope: !4494, file: !4495, line: 60, type: !39)
!4543 = !DILocation(line: 56, column: 19, scope: !4494)
!4544 = !DILocation(line: 58, column: 7, scope: !4494)
!4545 = !DILocation(line: 60, column: 7, scope: !4494)
!4546 = !DILocation(line: 63, column: 8, scope: !4494)
!4547 = !DILocation(line: 59, column: 7, scope: !4494)
!4548 = !DILocation(line: 64, column: 10, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4494, file: !4495, line: 64, column: 7)
!4550 = !DILocation(line: 64, column: 7, scope: !4494)
!4551 = !DILocation(line: 65, column: 12, scope: !4549)
!4552 = !DILocation(line: 65, column: 5, scope: !4549)
!4553 = !DILocation(line: 70, column: 9, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4494, file: !4495, line: 70, column: 7)
!4555 = !DILocation(line: 70, column: 23, scope: !4554)
!4556 = !DILocation(line: 70, column: 33, scope: !4554)
!4557 = !DILocation(line: 70, column: 26, scope: !4554)
!4558 = !DILocation(line: 70, column: 59, scope: !4554)
!4559 = !DILocation(line: 71, column: 7, scope: !4554)
!4560 = !DILocation(line: 71, column: 10, scope: !4554)
!4561 = !DILocation(line: 70, column: 7, scope: !4494)
!4562 = !DILocation(line: 98, column: 12, scope: !4494)
!4563 = !DILocation(line: 103, column: 7, scope: !4494)
!4564 = !DILocation(line: 72, column: 19, scope: !4554)
!4565 = !DILocation(line: 103, column: 19, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4494, file: !4495, line: 103, column: 7)
!4567 = !DILocation(line: 105, column: 13, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4566, file: !4495, line: 104, column: 5)
!4569 = !DILocation(line: 107, column: 5, scope: !4568)
!4570 = !DILocation(line: 110, column: 1, scope: !4494)
!4571 = distinct !DISubprogram(name: "rpl_fflush", scope: !4572, file: !4572, line: 127, type: !4573, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !685, variables: !4615)
!4572 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!39, !4575}
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4577)
!4577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 241, size: 1728, elements: !4578)
!4578 = !{!4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4577, file: !208, line: 242, baseType: !39, size: 32)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4577, file: !208, line: 247, baseType: !36, size: 64, offset: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4577, file: !208, line: 248, baseType: !36, size: 64, offset: 128)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4577, file: !208, line: 249, baseType: !36, size: 64, offset: 192)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4577, file: !208, line: 250, baseType: !36, size: 64, offset: 256)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4577, file: !208, line: 251, baseType: !36, size: 64, offset: 320)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4577, file: !208, line: 252, baseType: !36, size: 64, offset: 384)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4577, file: !208, line: 253, baseType: !36, size: 64, offset: 448)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4577, file: !208, line: 254, baseType: !36, size: 64, offset: 512)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4577, file: !208, line: 256, baseType: !36, size: 64, offset: 576)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4577, file: !208, line: 257, baseType: !36, size: 64, offset: 640)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4577, file: !208, line: 258, baseType: !36, size: 64, offset: 704)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4577, file: !208, line: 260, baseType: !4592, size: 64, offset: 768)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !208, line: 156, size: 192, elements: !4594)
!4594 = !{!4595, !4596, !4598}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4593, file: !208, line: 157, baseType: !4592, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4593, file: !208, line: 158, baseType: !4597, size: 64, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4593, file: !208, line: 162, baseType: !39, size: 32, offset: 128)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4577, file: !208, line: 262, baseType: !4597, size: 64, offset: 832)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4577, file: !208, line: 264, baseType: !39, size: 32, offset: 896)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4577, file: !208, line: 268, baseType: !39, size: 32, offset: 928)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4577, file: !208, line: 270, baseType: !234, size: 64, offset: 960)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4577, file: !208, line: 274, baseType: !41, size: 16, offset: 1024)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4577, file: !208, line: 275, baseType: !238, size: 8, offset: 1040)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4577, file: !208, line: 276, baseType: !240, size: 8, offset: 1048)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4577, file: !208, line: 280, baseType: !244, size: 64, offset: 1088)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4577, file: !208, line: 289, baseType: !247, size: 64, offset: 1152)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4577, file: !208, line: 297, baseType: !35, size: 64, offset: 1216)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4577, file: !208, line: 298, baseType: !35, size: 64, offset: 1280)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4577, file: !208, line: 299, baseType: !35, size: 64, offset: 1344)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4577, file: !208, line: 300, baseType: !35, size: 64, offset: 1408)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4577, file: !208, line: 302, baseType: !140, size: 64, offset: 1472)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4577, file: !208, line: 303, baseType: !39, size: 32, offset: 1536)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4577, file: !208, line: 305, baseType: !255, size: 160, offset: 1568)
!4615 = !{!4616}
!4616 = !DILocalVariable(name: "stream", arg: 1, scope: !4571, file: !4572, line: 127, type: !4575)
!4617 = !DILocation(line: 127, column: 19, scope: !4571)
!4618 = !DILocation(line: 148, column: 14, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4571, file: !4572, line: 148, column: 7)
!4620 = !DILocation(line: 148, column: 22, scope: !4619)
!4621 = !DILocation(line: 148, column: 27, scope: !4619)
!4622 = !DILocation(line: 148, column: 7, scope: !4571)
!4623 = !DILocation(line: 149, column: 12, scope: !4619)
!4624 = !DILocation(line: 149, column: 5, scope: !4619)
!4625 = !DILocalVariable(name: "fp", arg: 1, scope: !4626, file: !4572, line: 40, type: !4575)
!4626 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4572, file: !4572, line: 40, type: !4627, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !685, variables: !4629)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{null, !4575}
!4629 = !{!4625}
!4630 = !DILocation(line: 40, column: 48, scope: !4626, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 153, column: 3, scope: !4571)
!4632 = !DILocation(line: 42, column: 11, scope: !4633, inlinedAt: !4631)
!4633 = distinct !DILexicalBlock(scope: !4626, file: !4572, line: 42, column: 7)
!4634 = !DILocation(line: 42, column: 18, scope: !4633, inlinedAt: !4631)
!4635 = !DILocation(line: 42, column: 7, scope: !4626, inlinedAt: !4631)
!4636 = !DILocation(line: 44, column: 5, scope: !4633, inlinedAt: !4631)
!4637 = !DILocation(line: 155, column: 10, scope: !4571)
!4638 = !DILocation(line: 155, column: 3, scope: !4571)
!4639 = !DILocation(line: 229, column: 1, scope: !4571)
!4640 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4641, file: !4641, line: 28, type: !4642, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !687, variables: !4685)
!4641 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!39, !4644, !4684, !39}
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4646)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 241, size: 1728, elements: !4647)
!4647 = !{!4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4646, file: !208, line: 242, baseType: !39, size: 32)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4646, file: !208, line: 247, baseType: !36, size: 64, offset: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4646, file: !208, line: 248, baseType: !36, size: 64, offset: 128)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4646, file: !208, line: 249, baseType: !36, size: 64, offset: 192)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4646, file: !208, line: 250, baseType: !36, size: 64, offset: 256)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4646, file: !208, line: 251, baseType: !36, size: 64, offset: 320)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4646, file: !208, line: 252, baseType: !36, size: 64, offset: 384)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4646, file: !208, line: 253, baseType: !36, size: 64, offset: 448)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4646, file: !208, line: 254, baseType: !36, size: 64, offset: 512)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4646, file: !208, line: 256, baseType: !36, size: 64, offset: 576)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4646, file: !208, line: 257, baseType: !36, size: 64, offset: 640)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4646, file: !208, line: 258, baseType: !36, size: 64, offset: 704)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4646, file: !208, line: 260, baseType: !4661, size: 64, offset: 768)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !208, line: 156, size: 192, elements: !4663)
!4663 = !{!4664, !4665, !4667}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4662, file: !208, line: 157, baseType: !4661, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4662, file: !208, line: 158, baseType: !4666, size: 64, offset: 64)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4662, file: !208, line: 162, baseType: !39, size: 32, offset: 128)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4646, file: !208, line: 262, baseType: !4666, size: 64, offset: 832)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4646, file: !208, line: 264, baseType: !39, size: 32, offset: 896)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4646, file: !208, line: 268, baseType: !39, size: 32, offset: 928)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4646, file: !208, line: 270, baseType: !234, size: 64, offset: 960)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4646, file: !208, line: 274, baseType: !41, size: 16, offset: 1024)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4646, file: !208, line: 275, baseType: !238, size: 8, offset: 1040)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4646, file: !208, line: 276, baseType: !240, size: 8, offset: 1048)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4646, file: !208, line: 280, baseType: !244, size: 64, offset: 1088)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4646, file: !208, line: 289, baseType: !247, size: 64, offset: 1152)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4646, file: !208, line: 297, baseType: !35, size: 64, offset: 1216)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4646, file: !208, line: 298, baseType: !35, size: 64, offset: 1280)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4646, file: !208, line: 299, baseType: !35, size: 64, offset: 1344)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4646, file: !208, line: 300, baseType: !35, size: 64, offset: 1408)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4646, file: !208, line: 302, baseType: !140, size: 64, offset: 1472)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4646, file: !208, line: 303, baseType: !39, size: 32, offset: 1536)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4646, file: !208, line: 305, baseType: !255, size: 160, offset: 1568)
!4684 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3601, line: 57, baseType: !234)
!4685 = !{!4686, !4687, !4688, !4689}
!4686 = !DILocalVariable(name: "fp", arg: 1, scope: !4640, file: !4641, line: 28, type: !4644)
!4687 = !DILocalVariable(name: "offset", arg: 2, scope: !4640, file: !4641, line: 28, type: !4684)
!4688 = !DILocalVariable(name: "whence", arg: 3, scope: !4640, file: !4641, line: 28, type: !39)
!4689 = !DILocalVariable(name: "pos", scope: !4690, file: !4641, line: 116, type: !4684)
!4690 = distinct !DILexicalBlock(scope: !4691, file: !4641, line: 112, column: 5)
!4691 = distinct !DILexicalBlock(scope: !4640, file: !4641, line: 51, column: 7)
!4692 = !DILocation(line: 28, column: 15, scope: !4640)
!4693 = !DILocation(line: 28, column: 25, scope: !4640)
!4694 = !DILocation(line: 28, column: 37, scope: !4640)
!4695 = !DILocation(line: 51, column: 11, scope: !4691)
!4696 = !DILocation(line: 51, column: 31, scope: !4691)
!4697 = !DILocation(line: 51, column: 24, scope: !4691)
!4698 = !DILocation(line: 52, column: 7, scope: !4691)
!4699 = !DILocation(line: 52, column: 14, scope: !4691)
!4700 = !DILocation(line: 52, column: 35, scope: !4691)
!4701 = !{!867, !708, i64 32}
!4702 = !DILocation(line: 52, column: 28, scope: !4691)
!4703 = !DILocation(line: 53, column: 7, scope: !4691)
!4704 = !DILocation(line: 53, column: 14, scope: !4691)
!4705 = !{!867, !708, i64 72}
!4706 = !DILocation(line: 53, column: 28, scope: !4691)
!4707 = !DILocation(line: 51, column: 7, scope: !4640)
!4708 = !DILocation(line: 116, column: 26, scope: !4690)
!4709 = !DILocation(line: 116, column: 19, scope: !4690)
!4710 = !DILocation(line: 116, column: 13, scope: !4690)
!4711 = !DILocation(line: 117, column: 15, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4690, file: !4641, line: 117, column: 11)
!4713 = !DILocation(line: 117, column: 11, scope: !4690)
!4714 = !DILocation(line: 127, column: 11, scope: !4690)
!4715 = !DILocation(line: 127, column: 18, scope: !4690)
!4716 = !DILocation(line: 128, column: 11, scope: !4690)
!4717 = !DILocation(line: 128, column: 19, scope: !4690)
!4718 = !{!867, !869, i64 144}
!4719 = !DILocation(line: 159, column: 7, scope: !4690)
!4720 = !DILocation(line: 161, column: 10, scope: !4640)
!4721 = !DILocation(line: 161, column: 3, scope: !4640)
!4722 = !DILocation(line: 162, column: 1, scope: !4640)
