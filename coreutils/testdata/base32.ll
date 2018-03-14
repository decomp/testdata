; ModuleID = 'coreutils-8.27/src/base32.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.base32_decode_context = type { i32, [8 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"Usage: %s [OPTION]... [FILE]\0ABase%d encode or decode FILE, or standard input, to standard output.\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.2 = private unnamed_addr constant [243 x i8] c"  -d, --decode          decode data\0A  -i, --ignore-garbage  when decoding, ignore non-alphabet characters\0A  -w, --wrap=COLS       wrap encoded lines after COLS character (default 76).\0A                          Use 0 to disable line wrapping\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [268 x i8] c"\0AThe data are encoded as described for the %s alphabet in RFC 4648.\0AWhen decoding, the input may contain newlines in addition to the bytes of\0Athe formal %s alphabet.  Use --ignore-garbage to attempt to recover\0Afrom any other non-alphabet bytes in the encoded stream.\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"base32\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"diw:\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"invalid wrap size\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Simon Josefsson\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"invalid input\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"ignore-garbage\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !69
@.str.21 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@base32_encode.b32str = internal unnamed_addr constant [32 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", align 16, !dbg !75
@b32 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !90
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !105
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !110
@.str.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !114
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !121
@.str.55 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.67, i32 0, i32 0), i8* null], align 16, !dbg !127
@.str.58 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.59 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.60 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.61 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.62 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.63 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.64 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.65 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.66 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.67 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !155
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !162
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !175
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.71 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.72 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.73 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.74 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !180
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !187
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !177
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !189
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.84 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.97 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.98 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.99 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.100 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.101 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.102 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !195
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.120 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.121 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.137 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !204
@.str.3.141 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.142 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.143 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.144 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.145 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.146 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !618 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !622, metadata !623), !dbg !624
  %2 = icmp eq i32 %0, 0, !dbg !625
  br i1 %2, label %8, label %3, !dbg !627

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !628, !tbaa !630
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !628
  %6 = load i8*, i8** @program_name, align 8, !dbg !628, !tbaa !630
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !628
  br label %44, !dbg !628

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !634
  %10 = load i8*, i8** @program_name, align 8, !dbg !634, !tbaa !630
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i32 32) #11, !dbg !634
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !636
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636, !tbaa !630
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !636
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !641
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !641, !tbaa !630
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !641
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !644
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !630
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !644
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !645
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !645, !tbaa !630
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !645
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !646
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !646, !tbaa !630
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !646
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !647
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !647
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !44, metadata !623) #11, !dbg !648
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !44, metadata !623) #11, !dbg !648
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !650
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0)) #11, !dbg !650
  %31 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !651
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !52, metadata !623) #11, !dbg !652
  %32 = icmp eq i8* %31, null, !dbg !653
  br i1 %32, label %39, label %33, !dbg !655

; <label>:33:                                     ; preds = %8
  %34 = tail call i32 @strncmp(i8* nonnull %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #15, !dbg !656
  %35 = icmp eq i32 %34, 0, !dbg !656
  br i1 %35, label %39, label %36, !dbg !657

; <label>:36:                                     ; preds = %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !658
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !658
  br label %39, !dbg !660

; <label>:39:                                     ; preds = %8, %33, %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !661
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !661
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !662
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #11, !dbg !662
  br label %44

; <label>:44:                                     ; preds = %39, %3
  tail call void @exit(i32 %0) #16, !dbg !663
  unreachable, !dbg !663
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !664 {
  %3 = alloca [8192 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !734, metadata !623), !dbg !765
  %4 = alloca [5120 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [5120 x i8]* %4, metadata !742, metadata !623), !dbg !768
  %5 = alloca %struct.base32_decode_context, align 4
  %6 = alloca i64, align 8
  %7 = alloca [30720 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [30720 x i8]* %7, metadata !769, metadata !623), !dbg !788
  %8 = alloca [49152 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [49152 x i8]* %8, metadata !778, metadata !623), !dbg !790
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !669, metadata !623), !dbg !791
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !670, metadata !623), !dbg !792
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !728, metadata !623), !dbg !793
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !729, metadata !623), !dbg !794
  tail call void @llvm.dbg.value(metadata i64 76, i64 0, metadata !730, metadata !623), !dbg !795
  %9 = load i8*, i8** %1, align 8, !dbg !796, !tbaa !630
  tail call void @set_program_name(i8* %9) #11, !dbg !797
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !798
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !799
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !800
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !801
  br label %15, !dbg !802

; <label>:14:                                     ; preds = %22
  br label %15, !dbg !803

; <label>:15:                                     ; preds = %14, %2
  %16 = phi i8 [ 0, %2 ], [ 1, %14 ]
  %17 = phi i8 [ 0, %2 ], [ %20, %14 ]
  %18 = phi i64 [ 76, %2 ], [ %23, %14 ]
  br label %19, !dbg !803

; <label>:19:                                     ; preds = %15, %29
  %20 = phi i8 [ %17, %15 ], [ 1, %29 ]
  %21 = phi i64 [ %18, %15 ], [ %23, %29 ]
  br label %22, !dbg !803

; <label>:22:                                     ; preds = %19, %25
  %23 = phi i64 [ %28, %25 ], [ %21, %19 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !730, metadata !623), !dbg !795
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !729, metadata !623), !dbg !794
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !728, metadata !623), !dbg !793
  %24 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !803
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !671, metadata !623), !dbg !804
  switch i32 %24, label %34 [
    i32 -1, label %35
    i32 100, label %14
    i32 119, label %25
    i32 105, label %29
    i32 -130, label %30
    i32 -131, label %31
  ], !dbg !802, !llvm.loop !805

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** @optarg, align 8, !dbg !807, !tbaa !630
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !809
  %28 = tail call i64 @xdectoumax(i8* %26, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %27, i32 0) #11, !dbg !810
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !730, metadata !623), !dbg !795
  br label %22, !dbg !811, !llvm.loop !805

; <label>:29:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !729, metadata !623), !dbg !794
  br label %19, !dbg !812, !llvm.loop !805

; <label>:30:                                     ; preds = %22
  tail call void @usage(i32 0) #17, !dbg !813
  unreachable, !dbg !813

; <label>:31:                                     ; preds = %22
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !814, !tbaa !630
  %33 = load i8*, i8** @Version, align 8, !dbg !814, !tbaa !630
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !814
  tail call void @exit(i32 0) #16, !dbg !814
  unreachable, !dbg !814

; <label>:34:                                     ; preds = %22
  tail call void @usage(i32 1) #17, !dbg !815
  unreachable, !dbg !815

; <label>:35:                                     ; preds = %22
  %36 = load i32, i32* @optind, align 4, !dbg !816, !tbaa !818
  %37 = sub nsw i32 %0, %36, !dbg !820
  %38 = icmp sgt i32 %37, 1, !dbg !821
  br i1 %38, label %39, label %46, !dbg !822

; <label>:39:                                     ; preds = %35
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !823
  %41 = load i32, i32* @optind, align 4, !dbg !825, !tbaa !818
  %42 = sext i32 %41 to i64, !dbg !826
  %43 = getelementptr inbounds i8*, i8** %1, i64 %42, !dbg !826
  %44 = load i8*, i8** %43, align 8, !dbg !826, !tbaa !630
  %45 = tail call i8* @quote(i8* %44) #11, !dbg !827
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40, i8* %45) #11, !dbg !828
  tail call void @usage(i32 1) #17, !dbg !829
  unreachable, !dbg !829

; <label>:46:                                     ; preds = %35
  %47 = icmp slt i32 %36, %0, !dbg !830
  br i1 %47, label %48, label %52, !dbg !832

; <label>:48:                                     ; preds = %46
  %49 = sext i32 %36 to i64, !dbg !833
  %50 = getelementptr inbounds i8*, i8** %1, i64 %49, !dbg !833
  %51 = load i8*, i8** %50, align 8, !dbg !833, !tbaa !630
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !727, metadata !623), !dbg !834
  br label %52, !dbg !835

; <label>:52:                                     ; preds = %46, %48
  %53 = phi i8* [ %51, %48 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %46 ]
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !727, metadata !623), !dbg !834
  %54 = tail call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #15, !dbg !836
  %55 = icmp eq i32 %54, 0, !dbg !836
  br i1 %55, label %56, label %58, !dbg !838

; <label>:56:                                     ; preds = %52
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !839, !tbaa !630
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %57, i64 0, metadata !672, metadata !623), !dbg !841
  br label %65, !dbg !842

; <label>:58:                                     ; preds = %52
  %59 = tail call %struct._IO_FILE* @fopen(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)), !dbg !843
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %59, i64 0, metadata !672, metadata !623), !dbg !841
  %60 = icmp eq %struct._IO_FILE* %59, null, !dbg !845
  br i1 %60, label %61, label %65, !dbg !847

; <label>:61:                                     ; preds = %58
  %62 = tail call i32* @__errno_location() #18, !dbg !848
  %63 = load i32, i32* %62, align 4, !dbg !848, !tbaa !818
  %64 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %53) #11, !dbg !848
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %64) #11, !dbg !848
  unreachable, !dbg !848

; <label>:65:                                     ; preds = %58, %56
  %66 = phi %struct._IO_FILE* [ %57, %56 ], [ %59, %58 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !672, metadata !623), !dbg !841
  tail call void @fadvise(%struct._IO_FILE* %66, i32 2) #11, !dbg !849
  %67 = icmp eq i8 %16, 0, !dbg !850
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !630
  br i1 %67, label %154, label %69, !dbg !851

; <label>:69:                                     ; preds = %65
  %70 = icmp eq i8 %20, 0, !dbg !852
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !739, metadata !623) #11, !dbg !853
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, i64 0, metadata !740, metadata !623) #11, !dbg !854
  tail call void @llvm.dbg.value(metadata i1 %70, i64 0, metadata !741, metadata !623) #11, !dbg !855
  %71 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !856
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %71) #11, !dbg !856
  %72 = getelementptr inbounds [5120 x i8], [5120 x i8]* %4, i64 0, i64 0, !dbg !857
  call void @llvm.lifetime.start.p0i8(i64 5120, i8* nonnull %72) #11, !dbg !857
  %73 = bitcast %struct.base32_decode_context* %5 to i8*, !dbg !858
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %73) #11, !dbg !858
  tail call void @llvm.dbg.value(metadata %struct.base32_decode_context* %5, i64 0, metadata !747, metadata !623) #11, !dbg !859
  call void @base32_decode_ctx_init(%struct.base32_decode_context* nonnull %5) #11, !dbg !860
  %74 = bitcast i64* %6 to i8*
  %75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %66, i64 0, i32 0
  %76 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %5, i64 0, i32 0
  br label %77, !dbg !861, !llvm.loop !862

; <label>:77:                                     ; preds = %151, %69
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %74) #11, !dbg !865
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !746, metadata !623) #11, !dbg !866
  br label %78, !dbg !867, !llvm.loop !868

; <label>:78:                                     ; preds = %116, %77
  %79 = phi i64 [ 0, %77 ], [ %108, %116 ]
  call void @llvm.dbg.value(metadata i64 %79, i64 0, metadata !746, metadata !623) #11, !dbg !866
  %80 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %79, !dbg !871
  %81 = sub i64 8192, %79, !dbg !871
  %82 = call i64 @fread_unlocked(i8* %80, i64 1, i64 %81, %struct._IO_FILE* %66) #11, !dbg !871
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !756, metadata !623) #11, !dbg !872
  store i64 %82, i64* %6, align 8, !dbg !873, !tbaa !874
  br i1 %70, label %106, label %83, !dbg !876

; <label>:83:                                     ; preds = %78
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !758, metadata !623) #11, !dbg !877
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !758, metadata !623) #11, !dbg !877
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !756, metadata !623) #11, !dbg !872
  %84 = icmp eq i64 %82, 0, !dbg !878
  br i1 %84, label %106, label %85, !dbg !881

; <label>:85:                                     ; preds = %83
  br label %86, !dbg !882

; <label>:86:                                     ; preds = %85, %102
  %87 = phi i64 [ %103, %102 ], [ %82, %85 ]
  %88 = phi i64 [ %104, %102 ], [ 0, %85 ]
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !758, metadata !623) #11, !dbg !877
  %89 = add i64 %88, %79, !dbg !882
  %90 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %89, !dbg !884
  %91 = load i8, i8* %90, align 1, !dbg !884, !tbaa !885
  %92 = call zeroext i1 @isbase32(i8 signext %91) #18, !dbg !886
  %93 = icmp eq i8 %91, 61, !dbg !887
  %94 = or i1 %92, %93, !dbg !888
  br i1 %94, label %95, label %97, !dbg !888

; <label>:95:                                     ; preds = %86
  %96 = add i64 %88, 1, !dbg !889
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !758, metadata !623) #11, !dbg !877
  br label %102, !dbg !890

; <label>:97:                                     ; preds = %86
  %98 = getelementptr inbounds i8, i8* %80, i64 %88, !dbg !891
  %99 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !892
  %100 = add i64 %87, -1, !dbg !893
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !756, metadata !623) #11, !dbg !872
  store i64 %100, i64* %6, align 8, !dbg !893, !tbaa !874
  %101 = sub i64 %100, %88, !dbg !894
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %98, i8* %99, i64 %101, i32 1, i1 false) #11, !dbg !895
  br label %102

; <label>:102:                                    ; preds = %97, %95
  %103 = phi i64 [ %87, %95 ], [ %100, %97 ], !dbg !896
  %104 = phi i64 [ %96, %95 ], [ %88, %97 ]
  call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !758, metadata !623) #11, !dbg !877
  call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !758, metadata !623) #11, !dbg !877
  call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !756, metadata !623) #11, !dbg !872
  %105 = icmp ult i64 %104, %103, !dbg !878
  br i1 %105, label %86, label %106, !dbg !881, !llvm.loop !897

; <label>:106:                                    ; preds = %102, %78, %83
  %107 = phi i64 [ 0, %83 ], [ %82, %78 ], [ %103, %102 ], !dbg !900
  call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !756, metadata !623) #11, !dbg !872
  %108 = add i64 %107, %79, !dbg !901
  call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !746, metadata !623) #11, !dbg !866
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !902, metadata !623) #11, !dbg !908
  %109 = load i32, i32* %75, align 8, !dbg !911, !tbaa !912
  %110 = and i32 %109, 32, !dbg !911
  %111 = icmp eq i32 %110, 0, !dbg !915
  br i1 %111, label %116, label %112, !dbg !916

; <label>:112:                                    ; preds = %106
  %113 = tail call i32* @__errno_location() #18, !dbg !917
  %114 = load i32, i32* %113, align 4, !dbg !917, !tbaa !818
  %115 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !917
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %114, i8* %115) #11, !dbg !917
  unreachable, !dbg !917

; <label>:116:                                    ; preds = %106
  %117 = icmp ult i64 %108, 8192, !dbg !918
  %118 = and i32 %109, 16, !dbg !919
  %119 = icmp eq i32 %118, 0, !dbg !924
  %120 = and i1 %117, %119, !dbg !925
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !922, metadata !623) #11, !dbg !926
  br i1 %120, label %78, label %121, !dbg !925, !llvm.loop !868

; <label>:121:                                    ; preds = %116
  br label %128, !dbg !927

; <label>:122:                                    ; preds = %147
  call void @llvm.dbg.value(metadata i32 %148, i64 0, metadata !757, metadata !623) #11, !dbg !932
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !922, metadata !623) #11, !dbg !933
  %123 = load i32, i32* %75, align 8, !dbg !935, !tbaa !912
  %124 = and i32 %123, 16, !dbg !935
  %125 = icmp eq i32 %124, 0, !dbg !936
  %126 = lshr exact i32 %124, 4, !dbg !937
  %127 = icmp ugt i32 %148, %126, !dbg !938
  br i1 %127, label %151, label %128, !dbg !939, !llvm.loop !940

; <label>:128:                                    ; preds = %121, %122
  %129 = phi i1 [ %125, %122 ], [ %119, %121 ]
  %130 = phi i32 [ %148, %122 ], [ 0, %121 ]
  call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !757, metadata !623) #11, !dbg !932
  %131 = icmp eq i32 %130, 1, !dbg !927
  %132 = load i32, i32* %76, align 4, !dbg !943
  %133 = icmp eq i32 %132, 0, !dbg !944
  %134 = and i1 %131, %133, !dbg !945
  br i1 %134, label %151, label %135, !dbg !945

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 5120, i64 0, metadata !756, metadata !623) #11, !dbg !872
  store i64 5120, i64* %6, align 8, !dbg !946, !tbaa !874
  %136 = icmp eq i32 %130, 0, !dbg !947
  %137 = select i1 %136, i64 %108, i64 0, !dbg !948
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %5, i64 0, metadata !747, metadata !623) #11, !dbg !859
  call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !756, metadata !623) #11, !dbg !872
  %138 = call zeroext i1 @base32_decode_ctx(%struct.base32_decode_context* nonnull %5, i8* nonnull %71, i64 %137, i8* nonnull %72, i64* nonnull %6) #11, !dbg !949
  %139 = load i64, i64* %6, align 8, !dbg !950, !tbaa !874
  call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !756, metadata !623) #11, !dbg !872
  %140 = call i64 @fwrite_unlocked(i8* nonnull %72, i64 1, i64 %139, %struct._IO_FILE* %68) #11, !dbg !950
  %141 = load i64, i64* %6, align 8, !dbg !952, !tbaa !874
  call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !756, metadata !623) #11, !dbg !872
  %142 = icmp ult i64 %140, %141, !dbg !953
  br i1 %142, label %143, label %147, !dbg !954

; <label>:143:                                    ; preds = %135
  %144 = tail call i32* @__errno_location() #18, !dbg !955
  %145 = load i32, i32* %144, align 4, !dbg !955, !tbaa !818
  %146 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !955
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %145, i8* %146) #11, !dbg !955
  unreachable, !dbg !955

; <label>:147:                                    ; preds = %135
  %148 = add i32 %130, 1, !dbg !956
  call void @llvm.dbg.value(metadata i32 %148, i64 0, metadata !757, metadata !623) #11, !dbg !932
  br i1 %138, label %122, label %149, !dbg !957

; <label>:149:                                    ; preds = %147
  %150 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !958
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %150) #11, !dbg !958
  unreachable, !dbg !958

; <label>:151:                                    ; preds = %128, %122
  %152 = phi i1 [ %125, %122 ], [ %129, %128 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74) #11, !dbg !960
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !922, metadata !623) #11, !dbg !961
  br i1 %152, label %77, label %153, !dbg !963, !llvm.loop !862

; <label>:153:                                    ; preds = %151
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %73) #11, !dbg !964
  call void @llvm.lifetime.end.p0i8(i64 5120, i8* nonnull %72) #11, !dbg !964
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %71) #11, !dbg !964
  br label %267, !dbg !965

; <label>:154:                                    ; preds = %65
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !774, metadata !623) #11, !dbg !966
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, i64 0, metadata !775, metadata !623) #11, !dbg !967
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !776, metadata !623) #11, !dbg !968
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !777, metadata !623) #11, !dbg !969
  %155 = getelementptr inbounds [30720 x i8], [30720 x i8]* %7, i64 0, i64 0, !dbg !970
  call void @llvm.lifetime.start.p0i8(i64 30720, i8* nonnull %155) #11, !dbg !970
  %156 = getelementptr inbounds [49152 x i8], [49152 x i8]* %8, i64 0, i64 0, !dbg !971
  call void @llvm.lifetime.start.p0i8(i64 49152, i8* nonnull %156) #11, !dbg !971
  %157 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %66, i64 0, i32 0
  %158 = icmp eq i64 %23, 0
  %159 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 5
  %160 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 6
  br label %161, !dbg !972, !llvm.loop !973

; <label>:161:                                    ; preds = %236, %154
  %162 = phi i64 [ 0, %154 ], [ %232, %236 ]
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !782, metadata !623) #11, !dbg !976
  br label %163, !dbg !977, !llvm.loop !978

; <label>:163:                                    ; preds = %172, %161
  %164 = phi i64 [ 0, %161 ], [ %168, %172 ]
  call void @llvm.dbg.value(metadata i64 %164, i64 0, metadata !782, metadata !623) #11, !dbg !976
  %165 = getelementptr inbounds [30720 x i8], [30720 x i8]* %7, i64 0, i64 %164, !dbg !981
  %166 = sub i64 30720, %164, !dbg !981
  %167 = call i64 @fread_unlocked(i8* %165, i64 1, i64 %166, %struct._IO_FILE* %66) #11, !dbg !981
  call void @llvm.dbg.value(metadata i64 %167, i64 0, metadata !783, metadata !623) #11, !dbg !983
  %168 = add i64 %167, %164, !dbg !984
  call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !782, metadata !623) #11, !dbg !976
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !922, metadata !623) #11, !dbg !985
  %169 = load i32, i32* %157, align 8, !dbg !987, !tbaa !912
  %170 = and i32 %169, 16, !dbg !987
  %171 = icmp eq i32 %170, 0, !dbg !988
  br i1 %171, label %172, label %177, !dbg !989

; <label>:172:                                    ; preds = %163
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !902, metadata !623) #11, !dbg !990
  %173 = and i32 %169, 32, !dbg !992
  %174 = icmp eq i32 %173, 0, !dbg !993
  %175 = icmp ult i64 %168, 30720, !dbg !994
  %176 = and i1 %175, %174, !dbg !995
  br i1 %176, label %163, label %177, !dbg !995, !llvm.loop !978

; <label>:177:                                    ; preds = %172, %163
  %178 = icmp eq i64 %168, 0, !dbg !996
  br i1 %178, label %231, label %179, !dbg !998

; <label>:179:                                    ; preds = %177
  %180 = add i64 %168, 4, !dbg !999
  %181 = udiv i64 %180, 5, !dbg !999
  %182 = shl i64 %181, 3, !dbg !999
  call void @base32_encode(i8* nonnull %155, i64 %168, i8* nonnull %156, i64 %182) #11, !dbg !1001
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !1002, metadata !623) #11, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1007, metadata !623) #11, !dbg !1020
  call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1008, metadata !623) #11, !dbg !1021
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, i64 0, metadata !1010, metadata !623) #11, !dbg !1022
  br i1 %158, label %183, label %191, !dbg !1023

; <label>:183:                                    ; preds = %179
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1024, !tbaa !630
  %185 = call i64 @fwrite_unlocked(i8* nonnull %156, i64 1, i64 %182, %struct._IO_FILE* %184) #11, !dbg !1024
  %186 = icmp ult i64 %185, %182, !dbg !1027
  br i1 %186, label %187, label %231, !dbg !1028

; <label>:187:                                    ; preds = %183
  %188 = tail call i32* @__errno_location() #18, !dbg !1029
  %189 = load i32, i32* %188, align 4, !dbg !1029, !tbaa !818
  %190 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1029
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %189, i8* %190) #11, !dbg !1029
  unreachable, !dbg !1029

; <label>:191:                                    ; preds = %179
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1011, metadata !623) #11, !dbg !1030
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1011, metadata !623) #11, !dbg !1030
  %192 = icmp eq i64 %182, 0, !dbg !1031
  br i1 %192, label %231, label %193, !dbg !1032

; <label>:193:                                    ; preds = %191
  br label %194, !dbg !1033

; <label>:194:                                    ; preds = %193, %227
  %195 = phi i64 [ %228, %227 ], [ %162, %193 ]
  %196 = phi i64 [ %229, %227 ], [ 0, %193 ]
  call void @llvm.dbg.value(metadata i64 %196, i64 0, metadata !1011, metadata !623) #11, !dbg !1030
  %197 = sub i64 %23, %195, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !1012, metadata !623) #11, !dbg !1034
  call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !1017, metadata !623) #11, !dbg !1035
  %198 = sub i64 %182, %196, !dbg !1036
  %199 = icmp ult i64 %197, %198, !dbg !1036
  %200 = select i1 %199, i64 %197, i64 %198, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %200, i64 0, metadata !1017, metadata !623) #11, !dbg !1035
  %201 = icmp eq i64 %200, 0, !dbg !1037
  br i1 %201, label %202, label %215, !dbg !1039

; <label>:202:                                    ; preds = %194
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1040, metadata !623) #11, !dbg !1046
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, i64 0, metadata !1045, metadata !623) #11, !dbg !1050
  %203 = load i8*, i8** %159, align 8, !dbg !1051, !tbaa !1052
  %204 = load i8*, i8** %160, align 8, !dbg !1051, !tbaa !1053
  %205 = icmp ult i8* %203, %204, !dbg !1051
  br i1 %205, label %206, label %208, !dbg !1051, !prof !1054

; <label>:206:                                    ; preds = %202
  %207 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !1051
  store i8* %207, i8** %159, align 8, !dbg !1051, !tbaa !1052
  store i8 10, i8* %203, align 1, !dbg !1051, !tbaa !885
  br label %227, !dbg !1055

; <label>:208:                                    ; preds = %202
  %209 = call i32 @__overflow(%struct._IO_FILE* nonnull %68, i32 10) #11, !dbg !1051
  %210 = icmp eq i32 %209, -1, !dbg !1056
  br i1 %210, label %211, label %227, !dbg !1055

; <label>:211:                                    ; preds = %208
  %212 = tail call i32* @__errno_location() #18, !dbg !1057
  %213 = load i32, i32* %212, align 4, !dbg !1057, !tbaa !818
  %214 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1057
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %213, i8* %214) #11, !dbg !1057
  unreachable, !dbg !1057

; <label>:215:                                    ; preds = %194
  %216 = getelementptr inbounds [49152 x i8], [49152 x i8]* %8, i64 0, i64 %196, !dbg !1058
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1058, !tbaa !630
  %218 = call i64 @fwrite_unlocked(i8* %216, i64 1, i64 %200, %struct._IO_FILE* %217) #11, !dbg !1058
  %219 = icmp ult i64 %218, %200, !dbg !1061
  br i1 %219, label %220, label %224, !dbg !1062

; <label>:220:                                    ; preds = %215
  %221 = tail call i32* @__errno_location() #18, !dbg !1063
  %222 = load i32, i32* %221, align 4, !dbg !1063, !tbaa !818
  %223 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1063
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %222, i8* %223) #11, !dbg !1063
  unreachable, !dbg !1063

; <label>:224:                                    ; preds = %215
  %225 = add i64 %200, %195, !dbg !1064
  %226 = add i64 %200, %196, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %226, i64 0, metadata !1011, metadata !623) #11, !dbg !1030
  br label %227

; <label>:227:                                    ; preds = %224, %208, %206
  %228 = phi i64 [ %225, %224 ], [ 0, %208 ], [ 0, %206 ]
  %229 = phi i64 [ %226, %224 ], [ %196, %208 ], [ %196, %206 ]
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1011, metadata !623) #11, !dbg !1030
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1011, metadata !623) #11, !dbg !1030
  %230 = icmp ult i64 %229, %182, !dbg !1031
  br i1 %230, label %194, label %231, !dbg !1032, !llvm.loop !1066

; <label>:231:                                    ; preds = %227, %191, %183, %177
  %232 = phi i64 [ %162, %177 ], [ %162, %183 ], [ %162, %191 ], [ %228, %227 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !922, metadata !623) #11, !dbg !1069
  %233 = load i32, i32* %157, align 8, !dbg !1071, !tbaa !912
  %234 = and i32 %233, 16, !dbg !1071
  %235 = icmp eq i32 %234, 0, !dbg !1072
  br i1 %235, label %236, label %241, !dbg !1073

; <label>:236:                                    ; preds = %231
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !902, metadata !623) #11, !dbg !1074
  %237 = and i32 %233, 32, !dbg !1076
  %238 = icmp eq i32 %237, 0, !dbg !1077
  %239 = icmp eq i64 %168, 30720, !dbg !1078
  %240 = and i1 %239, %238, !dbg !1079
  br i1 %240, label %161, label %241, !dbg !1079, !llvm.loop !973

; <label>:241:                                    ; preds = %236, %231
  %242 = icmp ne i64 %23, 0, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %232, i64 0, metadata !777, metadata !623) #11, !dbg !969
  %243 = icmp ne i64 %232, 0, !dbg !1082
  %244 = and i1 %242, %243, !dbg !1083
  br i1 %244, label %245, label %258, !dbg !1083

; <label>:245:                                    ; preds = %241
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1040, metadata !623) #11, !dbg !1084
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, i64 0, metadata !1045, metadata !623) #11, !dbg !1086
  %246 = load i8*, i8** %159, align 8, !dbg !1087, !tbaa !1052
  %247 = load i8*, i8** %160, align 8, !dbg !1087, !tbaa !1053
  %248 = icmp ult i8* %246, %247, !dbg !1087
  br i1 %248, label %249, label %251, !dbg !1087, !prof !1054

; <label>:249:                                    ; preds = %245
  %250 = getelementptr inbounds i8, i8* %246, i64 1, !dbg !1087
  store i8* %250, i8** %159, align 8, !dbg !1087, !tbaa !1052
  store i8 10, i8* %246, align 1, !dbg !1087, !tbaa !885
  br label %258, !dbg !1088

; <label>:251:                                    ; preds = %245
  %252 = call i32 @__overflow(%struct._IO_FILE* nonnull %68, i32 10) #11, !dbg !1087
  %253 = icmp eq i32 %252, -1, !dbg !1089
  br i1 %253, label %254, label %258, !dbg !1088

; <label>:254:                                    ; preds = %251
  %255 = tail call i32* @__errno_location() #18, !dbg !1090
  %256 = load i32, i32* %255, align 4, !dbg !1090, !tbaa !818
  %257 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1090
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %256, i8* %257) #11, !dbg !1090
  unreachable, !dbg !1090

; <label>:258:                                    ; preds = %251, %249, %241
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !902, metadata !623) #11, !dbg !1091
  %259 = load i32, i32* %157, align 8, !dbg !1094, !tbaa !912
  %260 = and i32 %259, 32, !dbg !1094
  %261 = icmp eq i32 %260, 0, !dbg !1095
  br i1 %261, label %266, label %262, !dbg !1096

; <label>:262:                                    ; preds = %258
  %263 = tail call i32* @__errno_location() #18, !dbg !1097
  %264 = load i32, i32* %263, align 4, !dbg !1097, !tbaa !818
  %265 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !1097
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %264, i8* %265) #11, !dbg !1097
  unreachable, !dbg !1097

; <label>:266:                                    ; preds = %258
  call void @llvm.lifetime.end.p0i8(i64 49152, i8* nonnull %156) #11, !dbg !1098
  call void @llvm.lifetime.end.p0i8(i64 30720, i8* nonnull %155) #11, !dbg !1098
  br label %267

; <label>:267:                                    ; preds = %266, %153
  %268 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %66) #11, !dbg !1099
  %269 = icmp eq i32 %268, -1, !dbg !1101
  br i1 %269, label %270, label %279, !dbg !1102

; <label>:270:                                    ; preds = %267
  %271 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #15, !dbg !1103
  %272 = icmp eq i32 %271, 0, !dbg !1103
  %273 = tail call i32* @__errno_location() #18, !dbg !1106
  %274 = load i32, i32* %273, align 4, !tbaa !818
  br i1 %272, label %275, label %277, !dbg !1107

; <label>:275:                                    ; preds = %270
  %276 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !1106
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %274, i8* %276) #11, !dbg !1106
  unreachable, !dbg !1106

; <label>:277:                                    ; preds = %270
  %278 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %53) #11, !dbg !1108
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %274, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %278) #11, !dbg !1108
  unreachable, !dbg !1108

; <label>:279:                                    ; preds = %267
  ret i32 0, !dbg !1109
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

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @base32_encode(i8* noalias nocapture readonly, i64, i8* noalias nocapture, i64) local_unnamed_addr #6 !dbg !77 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !98, metadata !623), !dbg !1110
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !99, metadata !623), !dbg !1111
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !100, metadata !623), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !101, metadata !623), !dbg !1113
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !101, metadata !623), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !100, metadata !623), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !99, metadata !623), !dbg !1111
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !98, metadata !623), !dbg !1110
  %5 = icmp ne i64 %1, 0, !dbg !1114
  %6 = icmp ne i64 %3, 0, !dbg !1115
  %7 = and i1 %5, %6, !dbg !1115
  br i1 %7, label %8, label %163, !dbg !1116

; <label>:8:                                      ; preds = %4
  br label %9, !dbg !1117

; <label>:9:                                      ; preds = %8, %156
  %10 = phi i64 [ %154, %156 ], [ %3, %8 ]
  %11 = phi i8* [ %157, %156 ], [ %2, %8 ]
  %12 = phi i64 [ %158, %156 ], [ %1, %8 ]
  %13 = phi i8* [ %162, %156 ], [ %0, %8 ]
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !98, metadata !623), !dbg !1110
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !99, metadata !623), !dbg !1111
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !100, metadata !623), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !101, metadata !623), !dbg !1113
  %14 = load i8, i8* %13, align 1, !dbg !1117, !tbaa !885
  %15 = zext i8 %14 to i64, !dbg !1119
  %16 = lshr i64 %15, 3, !dbg !1120
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %16, !dbg !1121
  %18 = load i8, i8* %17, align 1, !dbg !1121, !tbaa !885
  %19 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1122
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !100, metadata !623), !dbg !1112
  store i8 %18, i8* %11, align 1, !dbg !1123, !tbaa !885
  %20 = icmp eq i64 %10, 1, !dbg !1124
  br i1 %20, label %167, label %21, !dbg !1126

; <label>:21:                                     ; preds = %9
  %22 = load i8, i8* %13, align 1, !dbg !1127, !tbaa !885
  %23 = zext i8 %22 to i32, !dbg !1128
  %24 = shl nuw nsw i32 %23, 2, !dbg !1129
  %25 = icmp ne i64 %12, 1, !dbg !1130
  br i1 %25, label %26, label %31, !dbg !1130

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1131
  %28 = load i8, i8* %27, align 1, !dbg !1131, !tbaa !885
  %29 = zext i8 %28 to i32, !dbg !1132
  %30 = lshr i32 %29, 6, !dbg !1133
  br label %31, !dbg !1130

; <label>:31:                                     ; preds = %21, %26
  %32 = phi i32 [ %30, %26 ], [ 0, %21 ], !dbg !1130
  %33 = add nuw nsw i32 %32, %24, !dbg !1134
  %34 = and i32 %33, 31, !dbg !1135
  %35 = zext i32 %34 to i64, !dbg !1136
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %35, !dbg !1136
  %37 = load i8, i8* %36, align 1, !dbg !1136, !tbaa !885
  %38 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !1137
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !100, metadata !623), !dbg !1112
  store i8 %37, i8* %19, align 1, !dbg !1138, !tbaa !885
  %39 = icmp eq i64 %10, 2, !dbg !1139
  br i1 %39, label %167, label %40, !dbg !1141

; <label>:40:                                     ; preds = %31
  br i1 %25, label %41, label %49, !dbg !1142

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1143
  %43 = load i8, i8* %42, align 1, !dbg !1143, !tbaa !885
  %44 = zext i8 %43 to i64, !dbg !1144
  %45 = lshr i64 %44, 1, !dbg !1145
  %46 = and i64 %45, 31, !dbg !1146
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %46, !dbg !1147
  %48 = load i8, i8* %47, align 1, !dbg !1147, !tbaa !885
  br label %49, !dbg !1142

; <label>:49:                                     ; preds = %40, %41
  %50 = phi i8 [ %48, %41 ], [ 61, %40 ], !dbg !1142
  %51 = getelementptr inbounds i8, i8* %11, i64 3, !dbg !1148
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !100, metadata !623), !dbg !1112
  store i8 %50, i8* %38, align 1, !dbg !1149, !tbaa !885
  %52 = icmp eq i64 %10, 3, !dbg !1150
  br i1 %52, label %167, label %53, !dbg !1152

; <label>:53:                                     ; preds = %49
  br i1 %25, label %54, label %73, !dbg !1153

; <label>:54:                                     ; preds = %53
  %55 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1154
  %56 = load i8, i8* %55, align 1, !dbg !1154, !tbaa !885
  %57 = zext i8 %56 to i32, !dbg !1155
  %58 = shl nuw nsw i32 %57, 4, !dbg !1156
  %59 = add i64 %12, -2, !dbg !1157
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !99, metadata !623), !dbg !1111
  %60 = icmp eq i64 %59, 0, !dbg !1157
  br i1 %60, label %66, label %61, !dbg !1157

; <label>:61:                                     ; preds = %54
  %62 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !1158
  %63 = load i8, i8* %62, align 1, !dbg !1158, !tbaa !885
  %64 = zext i8 %63 to i32, !dbg !1159
  %65 = lshr i32 %64, 4, !dbg !1160
  br label %66, !dbg !1157

; <label>:66:                                     ; preds = %54, %61
  %67 = phi i32 [ %65, %61 ], [ 0, %54 ], !dbg !1157
  %68 = add nuw nsw i32 %67, %58, !dbg !1161
  %69 = and i32 %68, 31, !dbg !1162
  %70 = zext i32 %69 to i64, !dbg !1163
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %70, !dbg !1163
  %72 = load i8, i8* %71, align 1, !dbg !1163, !tbaa !885
  br label %73, !dbg !1153

; <label>:73:                                     ; preds = %53, %66
  %74 = phi i64 [ %59, %66 ], [ 0, %53 ]
  %75 = phi i8 [ %72, %66 ], [ 61, %53 ], !dbg !1153
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !99, metadata !623), !dbg !1111
  %76 = getelementptr inbounds i8, i8* %11, i64 4, !dbg !1164
  tail call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !100, metadata !623), !dbg !1112
  store i8 %75, i8* %51, align 1, !dbg !1165, !tbaa !885
  %77 = icmp eq i64 %10, 4, !dbg !1166
  br i1 %77, label %167, label %78, !dbg !1168

; <label>:78:                                     ; preds = %73
  %79 = icmp eq i64 %74, 0, !dbg !1169
  br i1 %79, label %99, label %80, !dbg !1169

; <label>:80:                                     ; preds = %78
  %81 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !1170
  %82 = load i8, i8* %81, align 1, !dbg !1170, !tbaa !885
  %83 = zext i8 %82 to i32, !dbg !1171
  %84 = shl nuw nsw i32 %83, 1, !dbg !1172
  %85 = add i64 %74, -1, !dbg !1173
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !99, metadata !623), !dbg !1111
  %86 = icmp eq i64 %85, 0, !dbg !1173
  br i1 %86, label %92, label %87, !dbg !1173

; <label>:87:                                     ; preds = %80
  %88 = getelementptr inbounds i8, i8* %13, i64 3, !dbg !1174
  %89 = load i8, i8* %88, align 1, !dbg !1174, !tbaa !885
  %90 = zext i8 %89 to i32, !dbg !1175
  %91 = lshr i32 %90, 7, !dbg !1176
  br label %92, !dbg !1173

; <label>:92:                                     ; preds = %80, %87
  %93 = phi i32 [ %91, %87 ], [ 0, %80 ], !dbg !1173
  %94 = add nuw nsw i32 %93, %84, !dbg !1177
  %95 = and i32 %94, 31, !dbg !1178
  %96 = zext i32 %95 to i64, !dbg !1179
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %96, !dbg !1179
  %98 = load i8, i8* %97, align 1, !dbg !1179, !tbaa !885
  br label %99, !dbg !1169

; <label>:99:                                     ; preds = %78, %92
  %100 = phi i64 [ %85, %92 ], [ 0, %78 ]
  %101 = phi i8 [ %98, %92 ], [ 61, %78 ], !dbg !1169
  tail call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !99, metadata !623), !dbg !1111
  %102 = getelementptr inbounds i8, i8* %11, i64 5, !dbg !1180
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !100, metadata !623), !dbg !1112
  store i8 %101, i8* %76, align 1, !dbg !1181, !tbaa !885
  %103 = icmp eq i64 %10, 5, !dbg !1182
  br i1 %103, label %167, label %104, !dbg !1184

; <label>:104:                                    ; preds = %99
  %105 = icmp ne i64 %100, 0, !dbg !1185
  br i1 %105, label %106, label %114, !dbg !1185

; <label>:106:                                    ; preds = %104
  %107 = getelementptr inbounds i8, i8* %13, i64 3, !dbg !1186
  %108 = load i8, i8* %107, align 1, !dbg !1186, !tbaa !885
  %109 = zext i8 %108 to i64, !dbg !1187
  %110 = lshr i64 %109, 2, !dbg !1188
  %111 = and i64 %110, 31, !dbg !1189
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %111, !dbg !1190
  %113 = load i8, i8* %112, align 1, !dbg !1190, !tbaa !885
  br label %114, !dbg !1185

; <label>:114:                                    ; preds = %104, %106
  %115 = phi i8 [ %113, %106 ], [ 61, %104 ], !dbg !1185
  %116 = getelementptr inbounds i8, i8* %11, i64 6, !dbg !1191
  tail call void @llvm.dbg.value(metadata i8* %116, i64 0, metadata !100, metadata !623), !dbg !1112
  store i8 %115, i8* %102, align 1, !dbg !1192, !tbaa !885
  %117 = icmp eq i64 %10, 6, !dbg !1193
  br i1 %117, label %167, label %118, !dbg !1195

; <label>:118:                                    ; preds = %114
  br i1 %105, label %119, label %138, !dbg !1196

; <label>:119:                                    ; preds = %118
  %120 = getelementptr inbounds i8, i8* %13, i64 3, !dbg !1197
  %121 = load i8, i8* %120, align 1, !dbg !1197, !tbaa !885
  %122 = zext i8 %121 to i32, !dbg !1198
  %123 = shl nuw nsw i32 %122, 3, !dbg !1199
  %124 = add i64 %100, -1, !dbg !1200
  tail call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !99, metadata !623), !dbg !1111
  %125 = icmp eq i64 %124, 0, !dbg !1200
  br i1 %125, label %131, label %126, !dbg !1200

; <label>:126:                                    ; preds = %119
  %127 = getelementptr inbounds i8, i8* %13, i64 4, !dbg !1201
  %128 = load i8, i8* %127, align 1, !dbg !1201, !tbaa !885
  %129 = zext i8 %128 to i32, !dbg !1202
  %130 = lshr i32 %129, 5, !dbg !1203
  br label %131, !dbg !1200

; <label>:131:                                    ; preds = %119, %126
  %132 = phi i32 [ %130, %126 ], [ 0, %119 ], !dbg !1200
  %133 = add nuw nsw i32 %132, %123, !dbg !1204
  %134 = and i32 %133, 31, !dbg !1205
  %135 = zext i32 %134 to i64, !dbg !1206
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %135, !dbg !1206
  %137 = load i8, i8* %136, align 1, !dbg !1206, !tbaa !885
  br label %138, !dbg !1196

; <label>:138:                                    ; preds = %118, %131
  %139 = phi i64 [ %124, %131 ], [ 0, %118 ]
  %140 = phi i8 [ %137, %131 ], [ 61, %118 ], !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !99, metadata !623), !dbg !1111
  %141 = getelementptr inbounds i8, i8* %11, i64 7, !dbg !1207
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !100, metadata !623), !dbg !1112
  store i8 %140, i8* %116, align 1, !dbg !1208, !tbaa !885
  %142 = icmp eq i64 %10, 7, !dbg !1209
  br i1 %142, label %167, label %143, !dbg !1211

; <label>:143:                                    ; preds = %138
  %144 = icmp ne i64 %139, 0, !dbg !1212
  br i1 %144, label %145, label %152, !dbg !1212

; <label>:145:                                    ; preds = %143
  %146 = getelementptr inbounds i8, i8* %13, i64 4, !dbg !1213
  %147 = load i8, i8* %146, align 1, !dbg !1213, !tbaa !885
  %148 = and i8 %147, 31, !dbg !1214
  %149 = zext i8 %148 to i64, !dbg !1215
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %149, !dbg !1215
  %151 = load i8, i8* %150, align 1, !dbg !1215, !tbaa !885
  br label %152, !dbg !1212

; <label>:152:                                    ; preds = %143, %145
  %153 = phi i8 [ %151, %145 ], [ 61, %143 ], !dbg !1212
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !100, metadata !623), !dbg !1112
  store i8 %153, i8* %141, align 1, !dbg !1216, !tbaa !885
  %154 = add i64 %10, -8, !dbg !1217
  tail call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !101, metadata !623), !dbg !1113
  %155 = icmp eq i64 %154, 0, !dbg !1217
  br i1 %155, label %167, label %156, !dbg !1219

; <label>:156:                                    ; preds = %152
  %157 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !1220
  %158 = add i64 %139, -1, !dbg !1221
  tail call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !99, metadata !623), !dbg !1111
  %159 = icmp eq i64 %158, 0, !dbg !1223
  %160 = xor i1 %144, true, !dbg !1223
  %161 = or i1 %159, %160, !dbg !1223
  %162 = getelementptr inbounds i8, i8* %13, i64 5, !dbg !1225
  tail call void @llvm.dbg.value(metadata i8* %162, i64 0, metadata !98, metadata !623), !dbg !1110
  tail call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !101, metadata !623), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !100, metadata !623), !dbg !1112
  br i1 %161, label %165, label %9, !dbg !1116, !llvm.loop !1226

; <label>:163:                                    ; preds = %4
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !101, metadata !623), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !100, metadata !623), !dbg !1112
  %164 = icmp eq i64 %3, 0, !dbg !1228
  br i1 %164, label %167, label %165, !dbg !1230

; <label>:165:                                    ; preds = %156, %163
  %166 = phi i8* [ %2, %163 ], [ %157, %156 ]
  store i8 0, i8* %166, align 1, !dbg !1231, !tbaa !885
  br label %167, !dbg !1232

; <label>:167:                                    ; preds = %9, %31, %49, %73, %99, %114, %138, %152, %163, %165
  ret void, !dbg !1233
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @base32_encode_alloc(i8* nocapture readonly, i64, i8** nocapture) local_unnamed_addr #6 !dbg !1234 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1238, metadata !623), !dbg !1242
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1239, metadata !623), !dbg !1243
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1240, metadata !623), !dbg !1244
  %4 = add i64 %1, 4, !dbg !1245
  %5 = udiv i64 %4, 5, !dbg !1245
  %6 = shl i64 %5, 3, !dbg !1245
  %7 = or i64 %6, 1, !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1241, metadata !623), !dbg !1247
  %8 = icmp ult i64 %7, %1, !dbg !1248
  br i1 %8, label %9, label %10, !dbg !1250

; <label>:9:                                      ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !1251, !tbaa !630
  br label %14, !dbg !1253

; <label>:10:                                     ; preds = %3
  %11 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !1254
  store i8* %11, i8** %2, align 8, !dbg !1255, !tbaa !630
  %12 = icmp eq i8* %11, null, !dbg !1256
  br i1 %12, label %14, label %13, !dbg !1258

; <label>:13:                                     ; preds = %10
  tail call void @base32_encode(i8* %0, i64 %1, i8* nonnull %11, i64 %7), !dbg !1259
  br label %14, !dbg !1260

; <label>:14:                                     ; preds = %10, %13, %9
  %15 = phi i64 [ 0, %9 ], [ %6, %13 ], [ %7, %10 ]
  ret i64 %15, !dbg !1261
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define zeroext i1 @isbase32(i8 signext) local_unnamed_addr #9 !dbg !1262 {
  tail call void @llvm.dbg.value(metadata i8 %0, i64 0, metadata !1266, metadata !623), !dbg !1267
  %2 = zext i8 %0 to i64, !dbg !1268
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %2, !dbg !1268
  %4 = load i8, i8* %3, align 1, !dbg !1268, !tbaa !885
  %5 = icmp sgt i8 %4, -1, !dbg !1269
  ret i1 %5, !dbg !1270
}

; Function Attrs: nounwind sspstrong uwtable
define void @base32_decode_ctx_init(%struct.base32_decode_context* nocapture) local_unnamed_addr #6 !dbg !1271 {
  tail call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, i64 0, metadata !1280, metadata !623), !dbg !1281
  %2 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0, !dbg !1282
  store i32 0, i32* %2, align 4, !dbg !1283, !tbaa !1284
  ret void, !dbg !1286
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @base32_decode_ctx(%struct.base32_decode_context*, i8* noalias, i64, i8* noalias, i64* nocapture) local_unnamed_addr #6 !dbg !1287 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, i64 0, metadata !1291, metadata !623), !dbg !1305
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1292, metadata !623), !dbg !1306
  %8 = ptrtoint i8* %1 to i64
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1293, metadata !623), !dbg !1307
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1294, metadata !623), !dbg !1308
  store i8* %3, i8** %6, align 8, !tbaa !630
  tail call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !1295, metadata !623), !dbg !1309
  %9 = bitcast i64* %7 to i8*, !dbg !1310
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1310
  %10 = load i64, i64* %4, align 8, !dbg !1311, !tbaa !874
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1296, metadata !623), !dbg !1312
  store i64 %10, i64* %7, align 8, !dbg !1312, !tbaa !874
  %11 = icmp ne %struct.base32_decode_context* %0, null, !dbg !1313
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1298, metadata !623), !dbg !1314
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1299, metadata !623), !dbg !1315
  %12 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0
  br i1 %11, label %13, label %17, !dbg !1316

; <label>:13:                                     ; preds = %5
  %14 = load i32, i32* %12, align 4, !dbg !1317, !tbaa !1284
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1299, metadata !623), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1293, metadata !623), !dbg !1307
  %15 = icmp eq i64 %2, 0, !dbg !1320
  %16 = icmp ne i32 %14, 0, !dbg !1321
  br label %17, !dbg !1321

; <label>:17:                                     ; preds = %5, %13
  %18 = phi i1 [ %16, %13 ], [ false, %5 ]
  %19 = phi i1 [ %15, %13 ], [ false, %5 ]
  %20 = or i1 %18, %19
  %21 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 1, i64 0
  %22 = xor i1 %11, true
  br label %23, !dbg !1322

; <label>:23:                                     ; preds = %119, %17
  %24 = phi i64 [ %10, %17 ], [ %122, %119 ], !dbg !1323
  %25 = phi i64 [ %8, %17 ], [ %120, %119 ]
  %26 = phi i64 [ %2, %17 ], [ %121, %119 ]
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1296, metadata !623), !dbg !1312
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1300, metadata !623), !dbg !1324
  br i1 %20, label %40, label %27, !dbg !1325

; <label>:27:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1296, metadata !623), !dbg !1312
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1300, metadata !623), !dbg !1324
  %28 = inttoptr i64 %25 to i8*, !dbg !1327
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1292, metadata !623), !dbg !1306
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !1293, metadata !623), !dbg !1307
  tail call void @llvm.dbg.value(metadata i8** %6, i64 0, metadata !1294, metadata !623), !dbg !1308
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !1296, metadata !623), !dbg !1312
  %29 = call fastcc zeroext i1 @decode_8(i8* %28, i64 %26, i8** nonnull %6, i64* nonnull %7), !dbg !1331
  br i1 %29, label %30, label %40, !dbg !1332

; <label>:30:                                     ; preds = %27
  br label %31, !dbg !1333

; <label>:31:                                     ; preds = %30, %31
  %32 = phi i8* [ %34, %31 ], [ %28, %30 ]
  %33 = phi i64 [ %35, %31 ], [ %26, %30 ]
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1292, metadata !623), !dbg !1306
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1293, metadata !623), !dbg !1307
  %34 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !1333
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1292, metadata !623), !dbg !1306
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1293, metadata !623), !dbg !1307
  %35 = add i64 %33, -8, !dbg !1334
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1293, metadata !623), !dbg !1307
  %36 = load i64, i64* %7, align 8, !dbg !1335, !tbaa !874
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1296, metadata !623), !dbg !1312
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1300, metadata !623), !dbg !1324
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1292, metadata !623), !dbg !1306
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1293, metadata !623), !dbg !1307
  tail call void @llvm.dbg.value(metadata i8** %6, i64 0, metadata !1294, metadata !623), !dbg !1308
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !1296, metadata !623), !dbg !1312
  %37 = call fastcc zeroext i1 @decode_8(i8* %34, i64 %35, i8** nonnull %6, i64* nonnull %7), !dbg !1331
  br i1 %37, label %31, label %38, !dbg !1332, !llvm.loop !1336

; <label>:38:                                     ; preds = %31
  %39 = ptrtoint i8* %34 to i64, !dbg !1333
  br label %40, !dbg !1339

; <label>:40:                                     ; preds = %38, %27, %23
  %41 = phi i64 [ %25, %23 ], [ %25, %27 ], [ %39, %38 ]
  %42 = phi i64 [ %26, %23 ], [ %26, %27 ], [ %35, %38 ]
  %43 = phi i64 [ %24, %23 ], [ %24, %27 ], [ %36, %38 ]
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1300, metadata !623), !dbg !1324
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1293, metadata !623), !dbg !1307
  %44 = icmp eq i64 %42, 0, !dbg !1339
  %45 = xor i1 %44, true, !dbg !1341
  %46 = or i1 %19, %45, !dbg !1341
  br i1 %46, label %47, label %123, !dbg !1341

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1293, metadata !623), !dbg !1307
  %48 = inttoptr i64 %41 to i8*
  br i1 %44, label %57, label %49, !dbg !1342

; <label>:49:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !1292, metadata !623), !dbg !1306
  %50 = load i8, i8* %48, align 1, !dbg !1344, !tbaa !885
  %51 = icmp ne i8 %50, 10, !dbg !1345
  %52 = or i1 %51, %22, !dbg !1346
  br i1 %52, label %57, label %53, !dbg !1346

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !1347
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !1292, metadata !623), !dbg !1306
  %55 = ptrtoint i8* %54 to i64, !dbg !1347
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1293, metadata !623), !dbg !1307
  %56 = add i64 %42, -1, !dbg !1349
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !1293, metadata !623), !dbg !1307
  br label %119

; <label>:57:                                     ; preds = %47, %49
  %58 = load i64, i64* %7, align 8, !dbg !1350, !tbaa !874
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !1296, metadata !623), !dbg !1312
  %59 = load i8*, i8** %6, align 8, !dbg !1351, !tbaa !630
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1294, metadata !623), !dbg !1308
  %60 = sub i64 %58, %43, !dbg !1351
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !1351
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !1294, metadata !623), !dbg !1308
  store i8* %61, i8** %6, align 8, !dbg !1351, !tbaa !630
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1296, metadata !623), !dbg !1312
  store i64 %43, i64* %7, align 8, !dbg !1352, !tbaa !874
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !1292, metadata !623), !dbg !1306
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1293, metadata !623), !dbg !1307
  %62 = getelementptr inbounds i8, i8* %48, i64 %42, !dbg !1353
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1302, metadata !623), !dbg !1354
  br i1 %11, label %63, label %102, !dbg !1355

; <label>:63:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1292, metadata !623), !dbg !1306
  tail call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, i64 0, metadata !1356, metadata !623) #11, !dbg !1372
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1362, metadata !623) #11, !dbg !1375
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1363, metadata !623) #11, !dbg !1376
  %64 = load i32, i32* %12, align 4, !dbg !1377, !tbaa !1284, !noalias !1379
  switch i32 %64, label %76 [
    i32 8, label %65
    i32 0, label %66
  ], !dbg !1382

; <label>:65:                                     ; preds = %63
  store i32 0, i32* %12, align 4, !dbg !1383, !tbaa !1284, !noalias !1379
  br label %66, !dbg !1384

; <label>:66:                                     ; preds = %65, %63
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !1365, metadata !623) #11, !dbg !1385
  %67 = ptrtoint i8* %62 to i64, !dbg !1386
  %68 = sub i64 %67, %41, !dbg !1386
  %69 = icmp sgt i64 %68, 7, !dbg !1388
  br i1 %69, label %70, label %76, !dbg !1389

; <label>:70:                                     ; preds = %66
  %71 = tail call i8* @memchr(i8* %48, i32 10, i64 8) #15, !dbg !1390
  %72 = icmp eq i8* %71, null, !dbg !1391
  br i1 %72, label %73, label %76, !dbg !1392

; <label>:73:                                     ; preds = %70
  %74 = getelementptr inbounds i8, i8* %48, i64 8, !dbg !1393
  %75 = ptrtoint i8* %74 to i64, !dbg !1393
  tail call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !1304, metadata !623), !dbg !1395
  tail call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !1293, metadata !623), !dbg !1307
  br label %111, !dbg !1396

; <label>:76:                                     ; preds = %63, %70, %66
  %77 = phi i32 [ 0, %70 ], [ 0, %66 ], [ %64, %63 ]
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !1368, metadata !623) #11, !dbg !1398
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !1368, metadata !623) #11, !dbg !1398
  %78 = icmp sgt i64 %42, 0, !dbg !1399
  br i1 %78, label %79, label %97, !dbg !1400

; <label>:79:                                     ; preds = %76
  br label %80, !dbg !1401

; <label>:80:                                     ; preds = %79, %88
  %81 = phi i32 [ %77, %79 ], [ %89, %88 ]
  %82 = phi i8* [ %48, %79 ], [ %85, %88 ]
  br label %83, !dbg !1401

; <label>:83:                                     ; preds = %80, %95
  %84 = phi i8* [ %85, %95 ], [ %82, %80 ]
  tail call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !1368, metadata !623) #11, !dbg !1398
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !1401
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1368, metadata !623) #11, !dbg !1398
  %86 = load i8, i8* %84, align 1, !dbg !1402, !tbaa !885
  tail call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1370, metadata !623) #11, !dbg !1403
  %87 = icmp eq i8 %86, 10, !dbg !1404
  br i1 %87, label %95, label %88, !dbg !1406

; <label>:88:                                     ; preds = %83
  %89 = add i32 %81, 1, !dbg !1407
  store i32 %89, i32* %12, align 4, !dbg !1407, !tbaa !1284, !noalias !1379
  %90 = zext i32 %81 to i64, !dbg !1409
  %91 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 1, i64 %90, !dbg !1409
  store i8 %86, i8* %91, align 1, !dbg !1410, !tbaa !885, !noalias !1379
  %92 = icmp ne i32 %89, 8, !dbg !1411
  %93 = icmp ult i8* %85, %62, !dbg !1399
  %94 = and i1 %92, %93, !dbg !1413
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1368, metadata !623) #11, !dbg !1398
  br i1 %94, label %80, label %97, !dbg !1413, !llvm.loop !1414

; <label>:95:                                     ; preds = %83
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1368, metadata !623) #11, !dbg !1398
  %96 = icmp ult i8* %85, %62, !dbg !1399
  br i1 %96, label %83, label %97, !dbg !1400, !llvm.loop !1414

; <label>:97:                                     ; preds = %95, %88, %76
  %98 = phi i32 [ %77, %76 ], [ %81, %95 ], [ %89, %88 ], !dbg !1417
  %99 = phi i8* [ %48, %76 ], [ %85, %88 ], [ %85, %95 ]
  tail call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1368, metadata !623) #11, !dbg !1398
  %100 = ptrtoint i8* %99 to i64, !dbg !1418
  %101 = zext i32 %98 to i64, !dbg !1419
  br label %102

; <label>:102:                                    ; preds = %97, %57
  %103 = phi i64 [ %41, %57 ], [ %100, %97 ]
  %104 = phi i64 [ %42, %57 ], [ %101, %97 ]
  %105 = phi i8* [ %48, %57 ], [ %21, %97 ]
  tail call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !1304, metadata !623), !dbg !1395
  tail call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !1293, metadata !623), !dbg !1307
  %106 = icmp eq i64 %104, 0, !dbg !1420
  br i1 %106, label %123, label %107, !dbg !1421

; <label>:107:                                    ; preds = %102
  %108 = icmp ugt i64 %104, 7, !dbg !1422
  %109 = or i1 %19, %108, !dbg !1396
  %110 = or i1 %109, %22, !dbg !1396
  br i1 %110, label %111, label %123, !dbg !1396

; <label>:111:                                    ; preds = %73, %107
  %112 = phi i64 [ %75, %73 ], [ %103, %107 ]
  %113 = phi i64 [ 8, %73 ], [ %104, %107 ]
  %114 = phi i8* [ %48, %73 ], [ %105, %107 ]
  tail call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !1293, metadata !623), !dbg !1307
  tail call void @llvm.dbg.value(metadata i8** %6, i64 0, metadata !1294, metadata !623), !dbg !1308
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !1296, metadata !623), !dbg !1312
  %115 = call fastcc zeroext i1 @decode_8(i8* %114, i64 %113, i8** nonnull %6, i64* nonnull %7), !dbg !1423
  br i1 %115, label %116, label %123, !dbg !1425

; <label>:116:                                    ; preds = %111
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1292, metadata !1426), !dbg !1306
  %117 = ptrtoint i8* %62 to i64, !dbg !1427
  %118 = sub i64 %117, %112, !dbg !1427
  tail call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !1293, metadata !623), !dbg !1307
  br label %119, !dbg !1322

; <label>:119:                                    ; preds = %116, %53
  %120 = phi i64 [ %112, %116 ], [ %55, %53 ]
  %121 = phi i64 [ %118, %116 ], [ %56, %53 ]
  %122 = load i64, i64* %7, align 8, !dbg !1323, !tbaa !874
  br label %23, !dbg !1323, !llvm.loop !1428

; <label>:123:                                    ; preds = %102, %107, %111, %40
  %124 = phi i64 [ %42, %40 ], [ 0, %102 ], [ 0, %107 ], [ %113, %111 ]
  %125 = load i64, i64* %7, align 8, !dbg !1430, !tbaa !874
  tail call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1296, metadata !623), !dbg !1312
  %126 = load i64, i64* %4, align 8, !dbg !1431, !tbaa !874
  %127 = sub i64 %126, %125, !dbg !1431
  store i64 %127, i64* %4, align 8, !dbg !1431, !tbaa !874
  tail call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !1293, metadata !623), !dbg !1307
  %128 = icmp eq i64 %124, 0, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1433
  ret i1 %128, !dbg !1434
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @decode_8(i8* noalias nocapture readonly, i64, i8** nocapture, i64* nocapture) unnamed_addr #6 !dbg !1435 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1440, metadata !623), !dbg !1445
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1441, metadata !623), !dbg !1446
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1442, metadata !623), !dbg !1447
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !1443, metadata !623), !dbg !1448
  %5 = load i8*, i8** %2, align 8, !dbg !1449, !tbaa !630
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1444, metadata !623), !dbg !1450
  %6 = icmp ult i64 %1, 8, !dbg !1451
  br i1 %6, label %198, label %7, !dbg !1453

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* %0, align 1, !dbg !1454, !tbaa !885
  tail call void @llvm.dbg.value(metadata i8 %8, i64 0, metadata !1266, metadata !623), !dbg !1456
  %9 = zext i8 %8 to i64, !dbg !1458
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %9, !dbg !1458
  %11 = load i8, i8* %10, align 1, !dbg !1458, !tbaa !885
  %12 = icmp sgt i8 %11, -1, !dbg !1459
  br i1 %12, label %13, label %198, !dbg !1460

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1461
  %15 = load i8, i8* %14, align 1, !dbg !1461, !tbaa !885
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1266, metadata !623), !dbg !1462
  %16 = zext i8 %15 to i64, !dbg !1464
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %16, !dbg !1464
  %18 = load i8, i8* %17, align 1, !dbg !1464, !tbaa !885
  %19 = icmp sgt i8 %18, -1, !dbg !1465
  br i1 %19, label %20, label %198, !dbg !1466

; <label>:20:                                     ; preds = %13
  %21 = load i64, i64* %3, align 8, !dbg !1467, !tbaa !874
  %22 = icmp eq i64 %21, 0, !dbg !1467
  br i1 %22, label %33, label %23, !dbg !1469

; <label>:23:                                     ; preds = %20
  %24 = sext i8 %11 to i32, !dbg !1470
  %25 = shl nsw i32 %24, 3, !dbg !1472
  %26 = sext i8 %18 to i32, !dbg !1473
  %27 = lshr i32 %26, 2, !dbg !1474
  %28 = or i32 %27, %25, !dbg !1475
  %29 = trunc i32 %28 to i8, !dbg !1476
  %30 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1477
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1444, metadata !623), !dbg !1450
  store i8 %29, i8* %5, align 1, !dbg !1478, !tbaa !885
  %31 = load i64, i64* %3, align 8, !dbg !1479, !tbaa !874
  %32 = add i64 %31, -1, !dbg !1479
  store i64 %32, i64* %3, align 8, !dbg !1479, !tbaa !874
  br label %33, !dbg !1480

; <label>:33:                                     ; preds = %20, %23
  %34 = phi i64 [ %32, %23 ], [ 0, %20 ]
  %35 = phi i8* [ %30, %23 ], [ %5, %20 ]
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !1444, metadata !623), !dbg !1450
  %36 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1481
  %37 = load i8, i8* %36, align 1, !dbg !1481, !tbaa !885
  %38 = icmp eq i8 %37, 61, !dbg !1483
  br i1 %38, label %39, label %60, !dbg !1484

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1485
  %41 = load i8, i8* %40, align 1, !dbg !1485, !tbaa !885
  %42 = icmp eq i8 %41, 61, !dbg !1488
  br i1 %42, label %43, label %59, !dbg !1489

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1490
  %45 = load i8, i8* %44, align 1, !dbg !1490, !tbaa !885
  %46 = icmp eq i8 %45, 61, !dbg !1491
  br i1 %46, label %47, label %59, !dbg !1492

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1493
  %49 = load i8, i8* %48, align 1, !dbg !1493, !tbaa !885
  %50 = icmp eq i8 %49, 61, !dbg !1494
  br i1 %50, label %51, label %59, !dbg !1495

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1496
  %53 = load i8, i8* %52, align 1, !dbg !1496, !tbaa !885
  %54 = icmp eq i8 %53, 61, !dbg !1497
  br i1 %54, label %55, label %59, !dbg !1498

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1499
  %57 = load i8, i8* %56, align 1, !dbg !1499, !tbaa !885
  %58 = icmp eq i8 %57, 61, !dbg !1500
  br i1 %58, label %196, label %59, !dbg !1501

; <label>:59:                                     ; preds = %55, %51, %47, %43, %39
  store i8* %35, i8** %2, align 8, !dbg !1502, !tbaa !630
  br label %198, !dbg !1502

; <label>:60:                                     ; preds = %33
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1266, metadata !623), !dbg !1504
  %61 = zext i8 %37 to i64, !dbg !1508
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %61, !dbg !1508
  %63 = load i8, i8* %62, align 1, !dbg !1508, !tbaa !885
  %64 = icmp sgt i8 %63, -1, !dbg !1509
  br i1 %64, label %65, label %72, !dbg !1510

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1511
  %67 = load i8, i8* %66, align 1, !dbg !1511, !tbaa !885
  tail call void @llvm.dbg.value(metadata i8 %67, i64 0, metadata !1266, metadata !623), !dbg !1512
  %68 = zext i8 %67 to i64, !dbg !1514
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %68, !dbg !1514
  %70 = load i8, i8* %69, align 1, !dbg !1514, !tbaa !885
  %71 = icmp sgt i8 %70, -1, !dbg !1515
  br i1 %71, label %73, label %72, !dbg !1516

; <label>:72:                                     ; preds = %60, %65
  store i8* %35, i8** %2, align 8, !dbg !1517, !tbaa !630
  br label %198, !dbg !1517

; <label>:73:                                     ; preds = %65
  %74 = icmp eq i64 %34, 0, !dbg !1519
  br i1 %74, label %88, label %75, !dbg !1521

; <label>:75:                                     ; preds = %73
  %76 = sext i8 %18 to i32, !dbg !1522
  %77 = shl nsw i32 %76, 6, !dbg !1524
  %78 = sext i8 %63 to i32, !dbg !1525
  %79 = shl nsw i32 %78, 1, !dbg !1526
  %80 = or i32 %79, %77, !dbg !1527
  %81 = sext i8 %70 to i32, !dbg !1528
  %82 = lshr i32 %81, 4, !dbg !1529
  %83 = or i32 %80, %82, !dbg !1530
  %84 = trunc i32 %83 to i8, !dbg !1531
  %85 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1532
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1444, metadata !623), !dbg !1450
  store i8 %84, i8* %35, align 1, !dbg !1533, !tbaa !885
  %86 = load i64, i64* %3, align 8, !dbg !1534, !tbaa !874
  %87 = add i64 %86, -1, !dbg !1534
  store i64 %87, i64* %3, align 8, !dbg !1534, !tbaa !874
  br label %88, !dbg !1535

; <label>:88:                                     ; preds = %73, %75
  %89 = phi i64 [ %87, %75 ], [ 0, %73 ]
  %90 = phi i8* [ %85, %75 ], [ %35, %73 ]
  tail call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !1444, metadata !623), !dbg !1450
  %91 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1536
  %92 = load i8, i8* %91, align 1, !dbg !1536, !tbaa !885
  %93 = icmp eq i8 %92, 61, !dbg !1538
  br i1 %93, label %94, label %107, !dbg !1539

; <label>:94:                                     ; preds = %88
  %95 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1540
  %96 = load i8, i8* %95, align 1, !dbg !1540, !tbaa !885
  %97 = icmp eq i8 %96, 61, !dbg !1543
  br i1 %97, label %98, label %106, !dbg !1544

; <label>:98:                                     ; preds = %94
  %99 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1545
  %100 = load i8, i8* %99, align 1, !dbg !1545, !tbaa !885
  %101 = icmp eq i8 %100, 61, !dbg !1546
  br i1 %101, label %102, label %106, !dbg !1547

; <label>:102:                                    ; preds = %98
  %103 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1548
  %104 = load i8, i8* %103, align 1, !dbg !1548, !tbaa !885
  %105 = icmp eq i8 %104, 61, !dbg !1549
  br i1 %105, label %196, label %106, !dbg !1550

; <label>:106:                                    ; preds = %102, %98, %94
  store i8* %90, i8** %2, align 8, !dbg !1551, !tbaa !630
  br label %198, !dbg !1551

; <label>:107:                                    ; preds = %88
  tail call void @llvm.dbg.value(metadata i8 %92, i64 0, metadata !1266, metadata !623), !dbg !1553
  %108 = zext i8 %92 to i64, !dbg !1557
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %108, !dbg !1557
  %110 = load i8, i8* %109, align 1, !dbg !1557, !tbaa !885
  %111 = icmp sgt i8 %110, -1, !dbg !1558
  br i1 %111, label %113, label %112, !dbg !1559

; <label>:112:                                    ; preds = %107
  store i8* %90, i8** %2, align 8, !dbg !1560, !tbaa !630
  br label %198, !dbg !1560

; <label>:113:                                    ; preds = %107
  %114 = icmp eq i64 %89, 0, !dbg !1562
  br i1 %114, label %125, label %115, !dbg !1564

; <label>:115:                                    ; preds = %113
  %116 = sext i8 %70 to i32, !dbg !1565
  %117 = shl nsw i32 %116, 4, !dbg !1567
  %118 = sext i8 %110 to i32, !dbg !1568
  %119 = lshr i32 %118, 1, !dbg !1569
  %120 = or i32 %119, %117, !dbg !1570
  %121 = trunc i32 %120 to i8, !dbg !1571
  %122 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1572
  tail call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !1444, metadata !623), !dbg !1450
  store i8 %121, i8* %90, align 1, !dbg !1573, !tbaa !885
  %123 = load i64, i64* %3, align 8, !dbg !1574, !tbaa !874
  %124 = add i64 %123, -1, !dbg !1574
  store i64 %124, i64* %3, align 8, !dbg !1574, !tbaa !874
  br label %125, !dbg !1575

; <label>:125:                                    ; preds = %113, %115
  %126 = phi i64 [ %124, %115 ], [ 0, %113 ]
  %127 = phi i8* [ %122, %115 ], [ %90, %113 ]
  tail call void @llvm.dbg.value(metadata i8* %127, i64 0, metadata !1444, metadata !623), !dbg !1450
  %128 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1576
  %129 = load i8, i8* %128, align 1, !dbg !1576, !tbaa !885
  %130 = icmp eq i8 %129, 61, !dbg !1578
  br i1 %130, label %131, label %140, !dbg !1579

; <label>:131:                                    ; preds = %125
  %132 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1580
  %133 = load i8, i8* %132, align 1, !dbg !1580, !tbaa !885
  %134 = icmp eq i8 %133, 61, !dbg !1583
  br i1 %134, label %135, label %139, !dbg !1584

; <label>:135:                                    ; preds = %131
  %136 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1585
  %137 = load i8, i8* %136, align 1, !dbg !1585, !tbaa !885
  %138 = icmp eq i8 %137, 61, !dbg !1586
  br i1 %138, label %196, label %139, !dbg !1587

; <label>:139:                                    ; preds = %135, %131
  store i8* %127, i8** %2, align 8, !dbg !1588, !tbaa !630
  br label %198, !dbg !1588

; <label>:140:                                    ; preds = %125
  tail call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1266, metadata !623), !dbg !1590
  %141 = zext i8 %129 to i64, !dbg !1594
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %141, !dbg !1594
  %143 = load i8, i8* %142, align 1, !dbg !1594, !tbaa !885
  %144 = icmp sgt i8 %143, -1, !dbg !1595
  br i1 %144, label %145, label %152, !dbg !1596

; <label>:145:                                    ; preds = %140
  %146 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1597
  %147 = load i8, i8* %146, align 1, !dbg !1597, !tbaa !885
  tail call void @llvm.dbg.value(metadata i8 %147, i64 0, metadata !1266, metadata !623), !dbg !1598
  %148 = zext i8 %147 to i64, !dbg !1600
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %148, !dbg !1600
  %150 = load i8, i8* %149, align 1, !dbg !1600, !tbaa !885
  %151 = icmp sgt i8 %150, -1, !dbg !1601
  br i1 %151, label %153, label %152, !dbg !1602

; <label>:152:                                    ; preds = %140, %145
  store i8* %127, i8** %2, align 8, !dbg !1603, !tbaa !630
  br label %198, !dbg !1603

; <label>:153:                                    ; preds = %145
  %154 = icmp eq i64 %126, 0, !dbg !1605
  br i1 %154, label %172, label %155, !dbg !1607

; <label>:155:                                    ; preds = %153
  %156 = load i8, i8* %91, align 1, !dbg !1608, !tbaa !885
  %157 = zext i8 %156 to i64, !dbg !1610
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %157, !dbg !1610
  %159 = load i8, i8* %158, align 1, !dbg !1610, !tbaa !885
  %160 = sext i8 %159 to i32, !dbg !1610
  %161 = shl nsw i32 %160, 7, !dbg !1611
  %162 = sext i8 %143 to i32, !dbg !1612
  %163 = shl nsw i32 %162, 2, !dbg !1613
  %164 = sext i8 %150 to i32, !dbg !1614
  %165 = lshr i32 %164, 3, !dbg !1615
  %166 = or i32 %165, %163, !dbg !1616
  %167 = or i32 %166, %161, !dbg !1617
  %168 = trunc i32 %167 to i8, !dbg !1618
  %169 = getelementptr inbounds i8, i8* %127, i64 1, !dbg !1619
  tail call void @llvm.dbg.value(metadata i8* %169, i64 0, metadata !1444, metadata !623), !dbg !1450
  store i8 %168, i8* %127, align 1, !dbg !1620, !tbaa !885
  %170 = load i64, i64* %3, align 8, !dbg !1621, !tbaa !874
  %171 = add i64 %170, -1, !dbg !1621
  store i64 %171, i64* %3, align 8, !dbg !1621, !tbaa !874
  br label %172, !dbg !1622

; <label>:172:                                    ; preds = %153, %155
  %173 = phi i64 [ %171, %155 ], [ 0, %153 ]
  %174 = phi i8* [ %169, %155 ], [ %127, %153 ]
  tail call void @llvm.dbg.value(metadata i8* %174, i64 0, metadata !1444, metadata !623), !dbg !1450
  %175 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1623
  %176 = load i8, i8* %175, align 1, !dbg !1623, !tbaa !885
  %177 = icmp eq i8 %176, 61, !dbg !1625
  br i1 %177, label %196, label %178, !dbg !1626

; <label>:178:                                    ; preds = %172
  tail call void @llvm.dbg.value(metadata i8 %176, i64 0, metadata !1266, metadata !623), !dbg !1627
  %179 = zext i8 %176 to i64, !dbg !1631
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %179, !dbg !1631
  %181 = load i8, i8* %180, align 1, !dbg !1631, !tbaa !885
  %182 = icmp sgt i8 %181, -1, !dbg !1632
  br i1 %182, label %184, label %183, !dbg !1633

; <label>:183:                                    ; preds = %178
  store i8* %174, i8** %2, align 8, !dbg !1634, !tbaa !630
  br label %198, !dbg !1634

; <label>:184:                                    ; preds = %178
  %185 = icmp eq i64 %173, 0, !dbg !1636
  br i1 %185, label %196, label %186, !dbg !1638

; <label>:186:                                    ; preds = %184
  %187 = load i8, i8* %146, align 1, !dbg !1639, !tbaa !885
  %188 = zext i8 %187 to i64, !dbg !1641
  %189 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %188, !dbg !1641
  %190 = load i8, i8* %189, align 1, !dbg !1641, !tbaa !885
  %191 = shl i8 %190, 5, !dbg !1642
  %192 = or i8 %191, %181, !dbg !1643
  %193 = getelementptr inbounds i8, i8* %174, i64 1, !dbg !1644
  tail call void @llvm.dbg.value(metadata i8* %193, i64 0, metadata !1444, metadata !623), !dbg !1450
  store i8 %192, i8* %174, align 1, !dbg !1645, !tbaa !885
  %194 = load i64, i64* %3, align 8, !dbg !1646, !tbaa !874
  %195 = add i64 %194, -1, !dbg !1646
  store i64 %195, i64* %3, align 8, !dbg !1646, !tbaa !874
  br label %196, !dbg !1647

; <label>:196:                                    ; preds = %55, %102, %135, %184, %172, %186
  %197 = phi i8* [ %35, %55 ], [ %90, %102 ], [ %127, %135 ], [ %193, %186 ], [ %174, %184 ], [ %174, %172 ]
  tail call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !1444, metadata !623), !dbg !1450
  store i8* %197, i8** %2, align 8, !dbg !1648, !tbaa !630
  br label %198, !dbg !1649

; <label>:198:                                    ; preds = %7, %13, %4, %196, %183, %152, %139, %112, %106, %72, %59
  %199 = phi i1 [ false, %59 ], [ true, %196 ], [ false, %106 ], [ false, %139 ], [ false, %183 ], [ false, %152 ], [ false, %112 ], [ false, %72 ], [ false, %4 ], [ false, %13 ], [ false, %7 ]
  ret i1 %199, !dbg !1650
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @base32_decode_alloc_ctx(%struct.base32_decode_context*, i8*, i64, i8** nocapture, i64*) local_unnamed_addr #6 !dbg !1651 {
  %6 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, i64 0, metadata !1655, metadata !623), !dbg !1661
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1656, metadata !623), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1657, metadata !623), !dbg !1663
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !1658, metadata !623), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !1659, metadata !623), !dbg !1665
  %7 = bitcast i64* %6 to i8*, !dbg !1666
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !1666
  %8 = lshr i64 %2, 3, !dbg !1667
  %9 = mul nuw i64 %8, 5, !dbg !1668
  %10 = add i64 %9, 5, !dbg !1669
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1660, metadata !623), !dbg !1670
  store i64 %10, i64* %6, align 8, !dbg !1670, !tbaa !874
  %11 = tail call noalias i8* @malloc(i64 %10) #11, !dbg !1671
  store i8* %11, i8** %3, align 8, !dbg !1672, !tbaa !630
  %12 = icmp eq i8* %11, null, !dbg !1673
  br i1 %12, label %21, label %13, !dbg !1675

; <label>:13:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !1660, metadata !623), !dbg !1670
  %14 = call zeroext i1 @base32_decode_ctx(%struct.base32_decode_context* %0, i8* %1, i64 %2, i8* nonnull %11, i64* nonnull %6), !dbg !1676
  br i1 %14, label %17, label %15, !dbg !1678

; <label>:15:                                     ; preds = %13
  %16 = load i8*, i8** %3, align 8, !dbg !1679, !tbaa !630
  tail call void @free(i8* %16) #11, !dbg !1681
  store i8* null, i8** %3, align 8, !dbg !1682, !tbaa !630
  br label %21, !dbg !1683

; <label>:17:                                     ; preds = %13
  %18 = icmp eq i64* %4, null, !dbg !1684
  br i1 %18, label %21, label %19, !dbg !1686

; <label>:19:                                     ; preds = %17
  %20 = load i64, i64* %6, align 8, !dbg !1687, !tbaa !874
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1660, metadata !623), !dbg !1670
  store i64 %20, i64* %4, align 8, !dbg !1688, !tbaa !874
  br label %21, !dbg !1689

; <label>:21:                                     ; preds = %19, %17, %5, %15
  %22 = phi i1 [ false, %15 ], [ true, %5 ], [ true, %17 ], [ true, %19 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !1690
  ret i1 %22, !dbg !1690
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1691 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1693, metadata !623), !dbg !1694
  store i8* %0, i8** @file_name, align 8, !dbg !1695, !tbaa !630
  ret void, !dbg !1696
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1697 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1701, metadata !623), !dbg !1702
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1703, !tbaa !1704
  ret void, !dbg !1706
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1707 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1712, !tbaa !630
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1713
  %3 = icmp eq i32 %2, 0, !dbg !1714
  br i1 %3, label %21, label %4, !dbg !1715

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1716, !tbaa !1704, !range !1717
  %6 = icmp eq i8 %5, 0, !dbg !1716
  %7 = tail call i32* @__errno_location() #18, !dbg !1718
  br i1 %6, label %11, label %8, !dbg !1720

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1721, !tbaa !818
  %10 = icmp eq i32 %9, 32, !dbg !1722
  br i1 %10, label %21, label %11, !dbg !1723

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 5) #11, !dbg !1724
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1709, metadata !623), !dbg !1725
  %13 = load i8*, i8** @file_name, align 8, !dbg !1726, !tbaa !630
  %14 = icmp eq i8* %13, null, !dbg !1726
  %15 = load i32, i32* %7, align 4, !tbaa !818
  br i1 %14, label %18, label %16, !dbg !1727

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1728
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.45, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1729
  br label %19, !dbg !1729

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.46, i64 0, i64 0), i8* %12) #11, !dbg !1730
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1731, !tbaa !818
  tail call void @_exit(i32 %20) #16, !dbg !1732
  unreachable, !dbg !1732

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1733, !tbaa !630
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1735
  %24 = icmp eq i32 %23, 0, !dbg !1736
  br i1 %24, label %27, label %25, !dbg !1737

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1738, !tbaa !818
  tail call void @_exit(i32 %26) #16, !dbg !1739
  unreachable, !dbg !1739

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1740
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1741 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1749, metadata !623), !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1750, metadata !623), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1751, metadata !623), !dbg !1757
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1752, metadata !623), !dbg !1758
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1759
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1753, metadata !623), !dbg !1759
  ret void, !dbg !1760
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1761 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1805, metadata !623), !dbg !1807
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1806, metadata !623), !dbg !1808
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1809
  br i1 %3, label %7, label %4, !dbg !1811

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !1812
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1749, metadata !623) #11, !dbg !1813
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1750, metadata !623) #11, !dbg !1815
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1751, metadata !623) #11, !dbg !1816
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1752, metadata !623) #11, !dbg !1817
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !1818
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1753, metadata !623) #11, !dbg !1818
  br label %7, !dbg !1819

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1820
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1821 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1823, metadata !623), !dbg !1826
  %2 = icmp eq i8* %0, null, !dbg !1827
  br i1 %2, label %3, label %6, !dbg !1829

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1830, !tbaa !630
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !1832
  tail call void @abort() #16, !dbg !1833
  unreachable, !dbg !1833

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !1834
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1824, metadata !623), !dbg !1835
  %8 = icmp eq i8* %7, null, !dbg !1836
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1837
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1838
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1825, metadata !623), !dbg !1839
  %11 = ptrtoint i8* %10 to i64, !dbg !1840
  %12 = ptrtoint i8* %0 to i64, !dbg !1840
  %13 = sub i64 %11, %12, !dbg !1840
  %14 = icmp sgt i64 %13, 6, !dbg !1842
  br i1 %14, label %15, label %24, !dbg !1843

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1844
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.56, i64 0, i64 0), i64 7) #15, !dbg !1845
  %18 = icmp eq i32 %17, 0, !dbg !1846
  br i1 %18, label %19, label %24, !dbg !1847

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1823, metadata !623), !dbg !1826
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i64 3) #15, !dbg !1848
  %21 = icmp eq i32 %20, 0, !dbg !1851
  br i1 %21, label %22, label %24, !dbg !1852

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1853
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1823, metadata !623), !dbg !1826
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1855, !tbaa !630
  br label %24, !dbg !1856

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1823, metadata !623), !dbg !1826
  store i8* %25, i8** @program_name, align 8, !dbg !1857, !tbaa !630
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1858, !tbaa !630
  ret void, !dbg !1859
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1860 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1865, metadata !623), !dbg !1868
  %2 = tail call i32* @__errno_location() #18, !dbg !1869
  %3 = load i32, i32* %2, align 4, !dbg !1869, !tbaa !818
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1866, metadata !623), !dbg !1870
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1871
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1871
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1871
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1872
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1872
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1867, metadata !623), !dbg !1873
  store i32 %3, i32* %2, align 4, !dbg !1874, !tbaa !818
  ret %struct.quoting_options* %8, !dbg !1875
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1876 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1882, metadata !623), !dbg !1883
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1884
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1884
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1885
  %5 = load i32, i32* %4, align 8, !dbg !1885, !tbaa !1886
  ret i32 %5, !dbg !1888
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1889 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1893, metadata !623), !dbg !1895
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1894, metadata !623), !dbg !1896
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1897
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1897
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1898
  store i32 %1, i32* %5, align 8, !dbg !1899, !tbaa !1886
  ret void, !dbg !1900
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1901 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1905, metadata !623), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1906, metadata !623), !dbg !1914
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1907, metadata !623), !dbg !1915
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1908, metadata !623), !dbg !1916
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1917
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1917
  %6 = lshr i8 %1, 5, !dbg !1918
  %7 = zext i8 %6 to i64, !dbg !1918
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1919
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1909, metadata !623), !dbg !1920
  %9 = and i8 %1, 31, !dbg !1921
  %10 = zext i8 %9 to i32, !dbg !1922
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1911, metadata !623), !dbg !1923
  %11 = load i32, i32* %8, align 4, !dbg !1924, !tbaa !818
  %12 = lshr i32 %11, %10, !dbg !1925
  %13 = and i32 %12, 1, !dbg !1926
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1912, metadata !623), !dbg !1927
  %14 = and i32 %2, 1, !dbg !1928
  %15 = xor i32 %13, %14, !dbg !1929
  %16 = shl i32 %15, %10, !dbg !1930
  %17 = xor i32 %16, %11, !dbg !1931
  store i32 %17, i32* %8, align 4, !dbg !1931, !tbaa !818
  ret i32 %13, !dbg !1932
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1933 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1937, metadata !623), !dbg !1940
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1938, metadata !623), !dbg !1941
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1942
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1937, metadata !623), !dbg !1940
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1937, metadata !623), !dbg !1940
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1945
  %6 = load i32, i32* %5, align 4, !dbg !1945, !tbaa !1946
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1939, metadata !623), !dbg !1947
  store i32 %1, i32* %5, align 4, !dbg !1948, !tbaa !1946
  ret i32 %6, !dbg !1949
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1950 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1954, metadata !623), !dbg !1957
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1955, metadata !623), !dbg !1958
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1956, metadata !623), !dbg !1959
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1960
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1954, metadata !623), !dbg !1957
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1962
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1954, metadata !623), !dbg !1957
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1963
  store i32 10, i32* %6, align 8, !dbg !1964, !tbaa !1886
  %7 = icmp ne i8* %1, null, !dbg !1965
  %8 = icmp ne i8* %2, null, !dbg !1967
  %9 = and i1 %7, %8, !dbg !1968
  br i1 %9, label %11, label %10, !dbg !1968

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !1969
  unreachable, !dbg !1969

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1970
  store i8* %1, i8** %12, align 8, !dbg !1971, !tbaa !1972
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1973
  store i8* %2, i8** %13, align 8, !dbg !1974, !tbaa !1975
  ret void, !dbg !1976
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1977 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1981, metadata !623), !dbg !1989
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1982, metadata !623), !dbg !1990
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1983, metadata !623), !dbg !1991
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1984, metadata !623), !dbg !1992
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1985, metadata !623), !dbg !1993
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1994
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1994
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1986, metadata !623), !dbg !1995
  %8 = tail call i32* @__errno_location() #18, !dbg !1996
  %9 = load i32, i32* %8, align 4, !dbg !1996, !tbaa !818
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1987, metadata !623), !dbg !1997
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1998
  %11 = load i32, i32* %10, align 8, !dbg !1998, !tbaa !1886
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1999
  %13 = load i32, i32* %12, align 4, !dbg !1999, !tbaa !1946
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2000
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2001
  %16 = load i8*, i8** %15, align 8, !dbg !2001, !tbaa !1972
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2002
  %18 = load i8*, i8** %17, align 8, !dbg !2002, !tbaa !1975
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2003
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1988, metadata !623), !dbg !2004
  store i32 %9, i32* %8, align 4, !dbg !2005, !tbaa !818
  ret i64 %19, !dbg !2006
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2007 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2013, metadata !623), !dbg !2077
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2014, metadata !623), !dbg !2078
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2015, metadata !623), !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2016, metadata !623), !dbg !2080
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2017, metadata !623), !dbg !2081
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2018, metadata !623), !dbg !2082
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2019, metadata !623), !dbg !2083
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2020, metadata !623), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2021, metadata !623), !dbg !2085
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2023, metadata !623), !dbg !2086
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2024, metadata !623), !dbg !2087
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2025, metadata !623), !dbg !2088
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2026, metadata !623), !dbg !2089
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2027, metadata !623), !dbg !2090
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2091
  %14 = icmp eq i64 %13, 1, !dbg !2092
  %15 = lshr i32 %5, 1, !dbg !2093
  %16 = trunc i32 %15 to i8, !dbg !2093
  %17 = and i8 %16, 1, !dbg !2093
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2029, metadata !623), !dbg !2093
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2030, metadata !623), !dbg !2094
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2031, metadata !623), !dbg !2095
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2032, metadata !623), !dbg !2096
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2097

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2014, metadata !623), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2032, metadata !623), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2031, metadata !623), !dbg !2095
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2029, metadata !623), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2016, metadata !623), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2027, metadata !623), !dbg !2090
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2026, metadata !623), !dbg !2089
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2025, metadata !623), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2024, metadata !623), !dbg !2087
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2021, metadata !623), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2020, metadata !623), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2017, metadata !623), !dbg !2081
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
  ], !dbg !2098

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2017, metadata !623), !dbg !2081
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2029, metadata !623), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2029, metadata !623), !dbg !2093
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2017, metadata !623), !dbg !2081
  br label %94, !dbg !2099

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2029, metadata !623), !dbg !2093
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2017, metadata !623), !dbg !2081
  %43 = and i8 %36, 1, !dbg !2101
  %44 = icmp eq i8 %43, 0, !dbg !2101
  br i1 %44, label %45, label %94, !dbg !2099

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2103
  br i1 %46, label %94, label %47, !dbg !2106

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2103, !tbaa !885
  br label %94, !dbg !2103

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.68, i64 0, i64 0), i32 %28), !dbg !2107
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2020, metadata !623), !dbg !2084
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), i32 %28), !dbg !2111
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2021, metadata !623), !dbg !2085
  br label %51, !dbg !2112

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2021, metadata !623), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2020, metadata !623), !dbg !2084
  %54 = and i8 %36, 1, !dbg !2113
  %55 = icmp eq i8 %54, 0, !dbg !2113
  br i1 %55, label %56, label %72, !dbg !2115

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2025, metadata !623), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2025, metadata !623), !dbg !2088
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2023, metadata !623), !dbg !2086
  %57 = load i8, i8* %52, align 1, !dbg !2116, !tbaa !885
  %58 = icmp eq i8 %57, 0, !dbg !2119
  br i1 %58, label %72, label %59, !dbg !2119

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2120

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !2025, metadata !623), !dbg !2088
  %64 = icmp ult i64 %63, %40, !dbg !2120
  br i1 %64, label %65, label %67, !dbg !2123

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2120
  store i8 %61, i8* %66, align 1, !dbg !2120, !tbaa !885
  br label %67, !dbg !2120

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2023, metadata !623), !dbg !2086
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2124
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2025, metadata !623), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2025, metadata !623), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2023, metadata !623), !dbg !2086
  %70 = load i8, i8* %69, align 1, !dbg !2116, !tbaa !885
  %71 = icmp eq i8 %70, 0, !dbg !2119
  br i1 %71, label %72, label %60, !dbg !2119, !llvm.loop !2125

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2027, metadata !623), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2025, metadata !623), !dbg !2088
  %74 = call i64 @strlen(i8* %53) #15, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2026, metadata !623), !dbg !2089
  br label %94, !dbg !2128

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2027, metadata !623), !dbg !2090
  br label %76, !dbg !2129

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2027, metadata !623), !dbg !2090
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2029, metadata !623), !dbg !2093
  br label %78, !dbg !2130

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2029, metadata !623), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2027, metadata !623), !dbg !2090
  %81 = and i8 %80, 1, !dbg !2131
  %82 = icmp eq i8 %81, 0, !dbg !2131
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2027, metadata !623), !dbg !2090
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2133
  br label %84, !dbg !2133

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2029, metadata !623), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2027, metadata !623), !dbg !2090
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2017, metadata !623), !dbg !2081
  %87 = and i8 %86, 1, !dbg !2134
  %88 = icmp eq i8 %87, 0, !dbg !2134
  br i1 %88, label %89, label %94, !dbg !2136

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2137
  br i1 %90, label %94, label %91, !dbg !2140

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2137, !tbaa !885
  br label %94, !dbg !2137

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2029, metadata !623), !dbg !2093
  br label %94, !dbg !2141

; <label>:93:                                     ; preds = %27
  call void @abort() #16, !dbg !2142
  unreachable, !dbg !2142

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2029, metadata !623), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2027, metadata !623), !dbg !2090
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !2026, metadata !623), !dbg !2089
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2025, metadata !623), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2021, metadata !623), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !2020, metadata !623), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !2017, metadata !623), !dbg !2081
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2022, metadata !623), !dbg !2143
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
  br label %122, !dbg !2144

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2014, metadata !623), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2032, metadata !623), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2031, metadata !623), !dbg !2095
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2016, metadata !623), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2024, metadata !623), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !2022, metadata !623), !dbg !2143
  %131 = icmp eq i64 %126, -1, !dbg !2145
  br i1 %131, label %134, label %132, !dbg !2146

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2147
  br i1 %133, label %590, label %138, !dbg !2148

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2149
  %136 = load i8, i8* %135, align 1, !dbg !2149, !tbaa !885
  %137 = icmp eq i8 %136, 0, !dbg !2150
  br i1 %137, label %590, label %138, !dbg !2148

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2038, metadata !623), !dbg !2151
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2039, metadata !623), !dbg !2152
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2040, metadata !623), !dbg !2153
  br i1 %108, label %139, label %154, !dbg !2154

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2156
  %141 = and i1 %109, %131, !dbg !2157
  br i1 %141, label %142, label %144, !dbg !2157

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #15, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !2016, metadata !623), !dbg !2080
  br label %144, !dbg !2159

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !2016, metadata !623), !dbg !2080
  %146 = icmp ugt i64 %140, %145, !dbg !2160
  br i1 %146, label %154, label %147, !dbg !2161

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2162
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #15, !dbg !2163
  %150 = icmp ne i32 %149, 0, !dbg !2164
  %151 = or i1 %150, %111, !dbg !2165
  %152 = xor i1 %150, true, !dbg !2165
  %153 = zext i1 %152 to i8, !dbg !2165
  br i1 %151, label %154, label %635, !dbg !2165

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2038, metadata !623), !dbg !2151
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !2016, metadata !623), !dbg !2080
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2166
  %158 = load i8, i8* %157, align 1, !dbg !2166, !tbaa !885
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2033, metadata !623), !dbg !2167
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
  ], !dbg !2168

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2169

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2170

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2039, metadata !623), !dbg !2152
  %162 = and i8 %127, 1, !dbg !2174
  %163 = icmp eq i8 %162, 0, !dbg !2174
  %164 = and i1 %113, %163, !dbg !2174
  br i1 %164, label %165, label %181, !dbg !2174

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2176
  br i1 %166, label %167, label %169, !dbg !2180

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2176
  store i8 39, i8* %168, align 1, !dbg !2176, !tbaa !885
  br label %169, !dbg !2176

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2180
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !2023, metadata !623), !dbg !2086
  %171 = icmp ult i64 %170, %130, !dbg !2181
  br i1 %171, label %172, label %174, !dbg !2184

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2181
  store i8 36, i8* %173, align 1, !dbg !2181, !tbaa !885
  br label %174, !dbg !2181

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !2023, metadata !623), !dbg !2086
  %176 = icmp ult i64 %175, %130, !dbg !2185
  br i1 %176, label %177, label %179, !dbg !2188

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2185
  store i8 39, i8* %178, align 1, !dbg !2185, !tbaa !885
  br label %179, !dbg !2185

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2030, metadata !623), !dbg !2094
  br label %181, !dbg !2189

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !2023, metadata !623), !dbg !2086
  %184 = icmp ult i64 %182, %130, !dbg !2190
  br i1 %184, label %185, label %187, !dbg !2193

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2190
  store i8 92, i8* %186, align 1, !dbg !2190, !tbaa !885
  br label %187, !dbg !2190

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !2023, metadata !623), !dbg !2086
  br i1 %105, label %189, label %470, !dbg !2194

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2196
  %191 = icmp ult i64 %190, %155, !dbg !2197
  br i1 %191, label %192, label %470, !dbg !2198

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2199
  %194 = load i8, i8* %193, align 1, !dbg !2199, !tbaa !885
  %195 = add i8 %194, -48, !dbg !2200
  %196 = icmp ult i8 %195, 10, !dbg !2200
  br i1 %196, label %197, label %470, !dbg !2200

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2201
  br i1 %198, label %199, label %201, !dbg !2205

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2201
  store i8 48, i8* %200, align 1, !dbg !2201, !tbaa !885
  br label %201, !dbg !2201

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !2023, metadata !623), !dbg !2086
  %203 = icmp ult i64 %202, %130, !dbg !2206
  br i1 %203, label %204, label %206, !dbg !2209

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2206
  store i8 48, i8* %205, align 1, !dbg !2206, !tbaa !885
  br label %206, !dbg !2206

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !2023, metadata !623), !dbg !2086
  br label %470, !dbg !2210

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2211

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2212

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2213

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2215

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2217
  %214 = icmp ult i64 %213, %155, !dbg !2218
  br i1 %214, label %215, label %470, !dbg !2219

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2220
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2221
  %218 = load i8, i8* %217, align 1, !dbg !2221, !tbaa !885
  %219 = icmp eq i8 %218, 63, !dbg !2222
  br i1 %219, label %220, label %470, !dbg !2223

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2224
  %222 = load i8, i8* %221, align 1, !dbg !2224, !tbaa !885
  %223 = sext i8 %222 to i32, !dbg !2224
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
  ], !dbg !2225

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2226

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2033, metadata !623), !dbg !2167
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !2022, metadata !623), !dbg !2143
  %226 = icmp ult i64 %124, %130, !dbg !2228
  br i1 %226, label %227, label %229, !dbg !2231

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2228
  store i8 63, i8* %228, align 1, !dbg !2228, !tbaa !885
  br label %229, !dbg !2228

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !2023, metadata !623), !dbg !2086
  %231 = icmp ult i64 %230, %130, !dbg !2232
  br i1 %231, label %232, label %234, !dbg !2235

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2232
  store i8 34, i8* %233, align 1, !dbg !2232, !tbaa !885
  br label %234, !dbg !2232

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !2023, metadata !623), !dbg !2086
  %236 = icmp ult i64 %235, %130, !dbg !2236
  br i1 %236, label %237, label %239, !dbg !2239

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2236
  store i8 34, i8* %238, align 1, !dbg !2236, !tbaa !885
  br label %239, !dbg !2236

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !2023, metadata !623), !dbg !2086
  %241 = icmp ult i64 %240, %130, !dbg !2240
  br i1 %241, label %242, label %244, !dbg !2243

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2240
  store i8 63, i8* %243, align 1, !dbg !2240, !tbaa !885
  br label %244, !dbg !2240

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !2023, metadata !623), !dbg !2086
  br label %470, !dbg !2244

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2037, metadata !623), !dbg !2245
  br label %256, !dbg !2246

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2037, metadata !623), !dbg !2245
  br label %256, !dbg !2247

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2037, metadata !623), !dbg !2245
  br label %254, !dbg !2248

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2037, metadata !623), !dbg !2245
  br label %254, !dbg !2249

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2037, metadata !623), !dbg !2245
  br label %256, !dbg !2250

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2037, metadata !623), !dbg !2245
  br i1 %113, label %252, label %253, !dbg !2251

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2252

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2255

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2037, metadata !623), !dbg !2245
  br i1 %117, label %256, label %635, !dbg !2257

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2037, metadata !623), !dbg !2245
  br i1 %104, label %497, label %470, !dbg !2259

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2260
  br i1 %259, label %260, label %265, !dbg !2262

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2263, !tbaa !885
  %262 = icmp ne i8 %261, 0, !dbg !2264
  %263 = icmp ne i64 %123, 0, !dbg !2265
  %264 = or i1 %263, %262, !dbg !2267
  br i1 %264, label %470, label %271, !dbg !2267

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2268
  %267 = icmp ne i64 %123, 0, !dbg !2265
  %268 = or i1 %267, %266, !dbg !2262
  br i1 %268, label %470, label %271, !dbg !2262

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2265
  br i1 %270, label %271, label %470, !dbg !2269

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2040, metadata !623), !dbg !2153
  br label %272, !dbg !2270

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2040, metadata !623), !dbg !2153
  br i1 %117, label %470, label %635, !dbg !2271

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2031, metadata !623), !dbg !2095
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2040, metadata !623), !dbg !2153
  br i1 %113, label %275, label %470, !dbg !2273

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2274

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2277
  %278 = icmp ne i64 %125, 0, !dbg !2279
  %279 = or i1 %278, %277, !dbg !2280
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !2024, metadata !623), !dbg !2087
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2014, metadata !623), !dbg !2078
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2280
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2280
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2014, metadata !623), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !2024, metadata !623), !dbg !2087
  %282 = icmp ult i64 %124, %281, !dbg !2281
  br i1 %282, label %283, label %285, !dbg !2284

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2281
  store i8 39, i8* %284, align 1, !dbg !2281, !tbaa !885
  br label %285, !dbg !2281

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !2023, metadata !623), !dbg !2086
  %287 = icmp ult i64 %286, %281, !dbg !2285
  br i1 %287, label %288, label %290, !dbg !2288

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2285
  store i8 92, i8* %289, align 1, !dbg !2285, !tbaa !885
  br label %290, !dbg !2285

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !2023, metadata !623), !dbg !2086
  %292 = icmp ult i64 %291, %281, !dbg !2289
  br i1 %292, label %293, label %295, !dbg !2292

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2289
  store i8 39, i8* %294, align 1, !dbg !2289, !tbaa !885
  br label %295, !dbg !2289

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2030, metadata !623), !dbg !2094
  br label %470, !dbg !2293

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2294

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2041, metadata !623), !dbg !2295
  %299 = tail call i16** @__ctype_b_loc() #18, !dbg !2296
  %300 = load i16*, i16** %299, align 8, !dbg !2296, !tbaa !630
  %301 = zext i8 %158 to i64, !dbg !2296
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2296
  %303 = load i16, i16* %302, align 2, !dbg !2296, !tbaa !2298
  %304 = lshr i16 %303, 14, !dbg !2299
  %305 = trunc i16 %304 to i8, !dbg !2299
  %306 = and i8 %305, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2044, metadata !623), !dbg !2300
  br label %362, !dbg !2301

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2302
  store i64 0, i64* %10, align 8, !dbg !2303
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2041, metadata !623), !dbg !2295
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2044, metadata !623), !dbg !2300
  %308 = icmp eq i64 %155, -1, !dbg !2304
  br i1 %308, label %309, label %311, !dbg !2306

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #15, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !2016, metadata !623), !dbg !2080
  br label %311, !dbg !2308

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !2016, metadata !623), !dbg !2080
  br label %313, !dbg !2309, !llvm.loop !2310

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2044, metadata !623), !dbg !2300
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2041, metadata !623), !dbg !2295
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2312
  %316 = add i64 %314, %123, !dbg !2313
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2314
  %318 = sub i64 %312, %316, !dbg !2315
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2045, metadata !623), !dbg !2316
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2063, metadata !623), !dbg !2317
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2066, metadata !623), !dbg !2319
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2320

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2044, metadata !623), !dbg !2300
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2041, metadata !623), !dbg !2295
  %321 = icmp ugt i64 %312, %316, !dbg !2321
  br i1 %321, label %322, label %347, !dbg !2323

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2324

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2041, metadata !623), !dbg !2295
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2324
  %327 = load i8, i8* %326, align 1, !dbg !2324, !tbaa !885
  %328 = icmp eq i8 %327, 0, !dbg !2323
  br i1 %328, label %347, label %329, !dbg !2325

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2041, metadata !623), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2041, metadata !623), !dbg !2295
  %331 = add i64 %330, %123, !dbg !2327
  %332 = icmp ult i64 %331, %312, !dbg !2321
  br i1 %332, label %323, label %347, !dbg !2323, !llvm.loop !2328

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2329
  %335 = and i1 %115, %334, !dbg !2332
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2067, metadata !623), !dbg !2333
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2067, metadata !623), !dbg !2333
  br i1 %335, label %336, label %350, !dbg !2332

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2334

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2067, metadata !623), !dbg !2333
  %339 = add i64 %338, %316, !dbg !2334
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2335
  %341 = load i8, i8* %340, align 1, !dbg !2335, !tbaa !885
  %342 = sext i8 %341 to i32, !dbg !2335
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2336

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2067, metadata !623), !dbg !2333
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2067, metadata !623), !dbg !2333
  %345 = icmp ult i64 %344, %319, !dbg !2329
  br i1 %345, label %337, label %350, !dbg !2338, !llvm.loop !2339

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2341

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2044, metadata !623), !dbg !2300
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2041, metadata !623), !dbg !2295
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2341
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2342, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2063, metadata !623), !dbg !2317
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !2344
  %353 = icmp eq i32 %352, 0, !dbg !2344
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2044, metadata !623), !dbg !2300
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2345
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2044, metadata !623), !dbg !2300
  %355 = add i64 %319, %314, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2041, metadata !623), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2044, metadata !623), !dbg !2300
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2041, metadata !623), !dbg !2295
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2341
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2045, metadata !623), !dbg !2316
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !2347
  %357 = icmp eq i32 %356, 0, !dbg !2348
  br i1 %357, label %313, label %358, !dbg !2349, !llvm.loop !2310

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2350
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2044, metadata !623), !dbg !2300
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2041, metadata !623), !dbg !2295
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2341
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2350
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2044, metadata !623), !dbg !2300
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2041, metadata !623), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !2016, metadata !623), !dbg !2080
  %366 = and i8 %365, 1, !dbg !2351
  %367 = icmp ne i8 %366, 0, !dbg !2351
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2040, metadata !623), !dbg !2153
  %368 = icmp ult i64 %364, 2, !dbg !2352
  %369 = or i1 %367, %112, !dbg !2353
  %370 = and i1 %368, %369, !dbg !2354
  br i1 %370, label %470, label %371, !dbg !2354

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2074, metadata !623), !dbg !2356
  br label %373, !dbg !2357

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2039, metadata !623), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2038, metadata !623), !dbg !2151
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2033, metadata !623), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !2022, metadata !623), !dbg !2143
  br i1 %369, label %426, label %380, !dbg !2358

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2363

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2039, metadata !623), !dbg !2152
  %382 = and i8 %376, 1, !dbg !2366
  %383 = icmp eq i8 %382, 0, !dbg !2366
  %384 = and i1 %113, %383, !dbg !2366
  br i1 %384, label %385, label %401, !dbg !2366

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2368
  br i1 %386, label %387, label %389, !dbg !2372

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2368
  store i8 39, i8* %388, align 1, !dbg !2368, !tbaa !885
  br label %389, !dbg !2368

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !2023, metadata !623), !dbg !2086
  %391 = icmp ult i64 %390, %130, !dbg !2373
  br i1 %391, label %392, label %394, !dbg !2376

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2373
  store i8 36, i8* %393, align 1, !dbg !2373, !tbaa !885
  br label %394, !dbg !2373

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !2023, metadata !623), !dbg !2086
  %396 = icmp ult i64 %395, %130, !dbg !2377
  br i1 %396, label %397, label %399, !dbg !2380

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2377
  store i8 39, i8* %398, align 1, !dbg !2377, !tbaa !885
  br label %399, !dbg !2377

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2030, metadata !623), !dbg !2094
  br label %401, !dbg !2381

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !2023, metadata !623), !dbg !2086
  %404 = icmp ult i64 %402, %130, !dbg !2382
  br i1 %404, label %405, label %407, !dbg !2385

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2382
  store i8 92, i8* %406, align 1, !dbg !2382, !tbaa !885
  br label %407, !dbg !2382

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2023, metadata !623), !dbg !2086
  %409 = icmp ult i64 %408, %130, !dbg !2386
  br i1 %409, label %410, label %414, !dbg !2389

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2386
  %412 = or i8 %411, 48, !dbg !2386
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2386
  store i8 %412, i8* %413, align 1, !dbg !2386, !tbaa !885
  br label %414, !dbg !2386

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !2023, metadata !623), !dbg !2086
  %416 = icmp ult i64 %415, %130, !dbg !2390
  br i1 %416, label %417, label %422, !dbg !2393

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2390
  %419 = and i8 %418, 7, !dbg !2390
  %420 = or i8 %419, 48, !dbg !2390
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2390
  store i8 %420, i8* %421, align 1, !dbg !2390, !tbaa !885
  br label %422, !dbg !2390

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !2023, metadata !623), !dbg !2086
  %424 = and i8 %377, 7, !dbg !2394
  %425 = or i8 %424, 48, !dbg !2395
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2033, metadata !623), !dbg !2167
  br label %435, !dbg !2396

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2397
  %428 = icmp eq i8 %427, 0, !dbg !2397
  br i1 %428, label %435, label %429, !dbg !2399

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2400
  br i1 %430, label %431, label %433, !dbg !2404

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2400
  store i8 92, i8* %432, align 1, !dbg !2400, !tbaa !885
  br label %433, !dbg !2400

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2038, metadata !623), !dbg !2151
  br label %435, !dbg !2405

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2039, metadata !623), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2038, metadata !623), !dbg !2151
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2033, metadata !623), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !2023, metadata !623), !dbg !2086
  %441 = add i64 %374, 1, !dbg !2406
  %442 = icmp ugt i64 %372, %441, !dbg !2408
  br i1 %442, label %443, label %535, !dbg !2409

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2410
  %445 = icmp ne i8 %444, 0, !dbg !2410
  %446 = and i8 %440, 1, !dbg !2410
  %447 = icmp eq i8 %446, 0, !dbg !2410
  %448 = and i1 %445, %447, !dbg !2410
  br i1 %448, label %449, label %460, !dbg !2410

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2413
  br i1 %450, label %451, label %453, !dbg !2417

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2413
  store i8 39, i8* %452, align 1, !dbg !2413, !tbaa !885
  br label %453, !dbg !2413

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2417
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !2023, metadata !623), !dbg !2086
  %455 = icmp ult i64 %454, %130, !dbg !2418
  br i1 %455, label %456, label %458, !dbg !2421

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2418
  store i8 39, i8* %457, align 1, !dbg !2418, !tbaa !885
  br label %458, !dbg !2418

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2030, metadata !623), !dbg !2094
  br label %460, !dbg !2422

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !2023, metadata !623), !dbg !2086
  %463 = icmp ult i64 %461, %130, !dbg !2423
  br i1 %463, label %464, label %466, !dbg !2426

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2423
  store i8 %438, i8* %465, align 1, !dbg !2423, !tbaa !885
  br label %466, !dbg !2423

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !2022, metadata !623), !dbg !2143
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2427
  %469 = load i8, i8* %468, align 1, !dbg !2427, !tbaa !885
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2033, metadata !623), !dbg !2167
  br label %373, !dbg !2428, !llvm.loop !2429

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2014, metadata !623), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2040, metadata !623), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2039, metadata !623), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2038, metadata !623), !dbg !2151
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2033, metadata !623), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2031, metadata !623), !dbg !2095
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !2016, metadata !623), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2024, metadata !623), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !2022, metadata !623), !dbg !2143
  br i1 %106, label %482, label %481, !dbg !2432

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2434

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2435

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2436
  %485 = zext i8 %484 to i64, !dbg !2436
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2437
  %487 = load i32, i32* %486, align 4, !dbg !2437, !tbaa !818
  %488 = and i8 %477, 31, !dbg !2438
  %489 = zext i8 %488 to i32, !dbg !2439
  %490 = shl i32 1, %489, !dbg !2440
  %491 = and i32 %487, %490, !dbg !2440
  %492 = icmp eq i32 %491, 0, !dbg !2440
  %493 = icmp eq i8 %156, 0, !dbg !2441
  %494 = and i1 %493, %492, !dbg !2442
  br i1 %494, label %535, label %497, !dbg !2442

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2441
  br i1 %496, label %535, label %497, !dbg !2443

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2014, metadata !623), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2040, metadata !623), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2033, metadata !623), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2031, metadata !623), !dbg !2095
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !2016, metadata !623), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !2024, metadata !623), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !2022, metadata !623), !dbg !2143
  br i1 %111, label %507, label %635, !dbg !2444

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2039, metadata !623), !dbg !2152
  %508 = and i8 %502, 1, !dbg !2446
  %509 = icmp eq i8 %508, 0, !dbg !2446
  %510 = and i1 %113, %509, !dbg !2446
  br i1 %510, label %511, label %527, !dbg !2446

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2448
  br i1 %512, label %513, label %515, !dbg !2452

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2448
  store i8 39, i8* %514, align 1, !dbg !2448, !tbaa !885
  br label %515, !dbg !2448

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !2023, metadata !623), !dbg !2086
  %517 = icmp ult i64 %516, %506, !dbg !2453
  br i1 %517, label %518, label %520, !dbg !2456

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2453
  store i8 36, i8* %519, align 1, !dbg !2453, !tbaa !885
  br label %520, !dbg !2453

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !2023, metadata !623), !dbg !2086
  %522 = icmp ult i64 %521, %506, !dbg !2457
  br i1 %522, label %523, label %525, !dbg !2460

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2457
  store i8 39, i8* %524, align 1, !dbg !2457, !tbaa !885
  br label %525, !dbg !2457

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2030, metadata !623), !dbg !2094
  br label %527, !dbg !2461

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !2023, metadata !623), !dbg !2086
  %530 = icmp ult i64 %528, %506, !dbg !2462
  br i1 %530, label %531, label %533, !dbg !2465

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2462
  store i8 92, i8* %532, align 1, !dbg !2462, !tbaa !885
  br label %533, !dbg !2462

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2014, metadata !623), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2040, metadata !623), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2039, metadata !623), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2033, metadata !623), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2031, metadata !623), !dbg !2095
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2016, metadata !623), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2024, metadata !623), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2022, metadata !623), !dbg !2143
  br label %562, !dbg !2466

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2014, metadata !623), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2040, metadata !623), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2039, metadata !623), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2033, metadata !623), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2031, metadata !623), !dbg !2095
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !2016, metadata !623), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !2024, metadata !623), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !2022, metadata !623), !dbg !2143
  %546 = and i8 %540, 1, !dbg !2466
  %547 = icmp ne i8 %546, 0, !dbg !2466
  %548 = and i8 %543, 1, !dbg !2466
  %549 = icmp eq i8 %548, 0, !dbg !2466
  %550 = and i1 %547, %549, !dbg !2466
  br i1 %550, label %551, label %562, !dbg !2466

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2469
  br i1 %552, label %553, label %555, !dbg !2473

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2469
  store i8 39, i8* %554, align 1, !dbg !2469, !tbaa !885
  br label %555, !dbg !2469

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !2023, metadata !623), !dbg !2086
  %557 = icmp ult i64 %556, %545, !dbg !2474
  br i1 %557, label %558, label %560, !dbg !2477

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2474
  store i8 39, i8* %559, align 1, !dbg !2474, !tbaa !885
  br label %560, !dbg !2474

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2477
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2030, metadata !623), !dbg !2094
  br label %562, !dbg !2478

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !2023, metadata !623), !dbg !2086
  %572 = icmp ult i64 %570, %563, !dbg !2479
  br i1 %572, label %573, label %575, !dbg !2482

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2479
  store i8 %565, i8* %574, align 1, !dbg !2479, !tbaa !885
  br label %575, !dbg !2479

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !2023, metadata !623), !dbg !2086
  %577 = and i8 %564, 1, !dbg !2483
  %578 = icmp eq i8 %577, 0, !dbg !2483
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2032, metadata !623), !dbg !2096
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2485
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2032, metadata !623), !dbg !2096
  br label %580, !dbg !2486

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !2014, metadata !623), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2032, metadata !623), !dbg !2096
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2031, metadata !623), !dbg !2095
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2030, metadata !623), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !2016, metadata !623), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2024, metadata !623), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !2022, metadata !623), !dbg !2143
  %589 = add i64 %581, 1, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !2022, metadata !623), !dbg !2143
  br label %122, !dbg !2488, !llvm.loop !2489

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2491
  %593 = and i1 %113, %592, !dbg !2493
  %594 = xor i1 %593, true, !dbg !2493
  %595 = or i1 %111, %594, !dbg !2493
  br i1 %595, label %596, label %635, !dbg !2493

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2494
  %598 = xor i1 %597, true, !dbg !2494
  %599 = and i8 %128, 1, !dbg !2496
  %600 = icmp eq i8 %599, 0, !dbg !2496
  %601 = or i1 %600, %598, !dbg !2494
  br i1 %601, label %611, label %602, !dbg !2494

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2497
  %604 = icmp eq i8 %603, 0, !dbg !2497
  br i1 %604, label %607, label %605, !dbg !2500

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2501
  br label %645, !dbg !2502

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2503
  %609 = icmp ne i64 %125, 0, !dbg !2505
  %610 = and i1 %609, %608, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2014, metadata !623), !dbg !2078
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2023, metadata !623), !dbg !2086
  br i1 %610, label %27, label %611, !dbg !2506

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2507
  %613 = and i1 %612, %111, !dbg !2509
  br i1 %613, label %614, label %630, !dbg !2509

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !2025, metadata !623), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2023, metadata !623), !dbg !2086
  %615 = load i8, i8* %99, align 1, !dbg !2510, !tbaa !885
  %616 = icmp eq i8 %615, 0, !dbg !2513
  br i1 %616, label %630, label %617, !dbg !2513

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2514

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !2023, metadata !623), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !2025, metadata !623), !dbg !2088
  %622 = icmp ult i64 %621, %130, !dbg !2514
  br i1 %622, label %623, label %625, !dbg !2517

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2514
  store i8 %619, i8* %624, align 1, !dbg !2514, !tbaa !885
  br label %625, !dbg !2514

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2023, metadata !623), !dbg !2086
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2518
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2025, metadata !623), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !2025, metadata !623), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !2023, metadata !623), !dbg !2086
  %628 = load i8, i8* %627, align 1, !dbg !2510, !tbaa !885
  %629 = icmp eq i8 %628, 0, !dbg !2513
  br i1 %629, label %630, label %618, !dbg !2513, !llvm.loop !2519

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2023, metadata !623), !dbg !2086
  %632 = icmp ult i64 %631, %130, !dbg !2521
  br i1 %632, label %633, label %645, !dbg !2523

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2524
  store i8 0, i8* %634, align 1, !dbg !2525, !tbaa !885
  br label %645, !dbg !2524

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !2014, metadata !623), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !2016, metadata !623), !dbg !2080
  %639 = icmp ne i32 %636, 2, !dbg !2526
  %640 = icmp eq i8 %103, 0, !dbg !2528
  %641 = or i1 %639, %640, !dbg !2529
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2017, metadata !623), !dbg !2081
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !2017, metadata !623), !dbg !2081
  %643 = and i32 %5, -3, !dbg !2530
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2531
  br label %645, !dbg !2532

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2533
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2534 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2538, metadata !623), !dbg !2542
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2539, metadata !623), !dbg !2543
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2544
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2540, metadata !623), !dbg !2545
  %4 = icmp eq i8* %3, %0, !dbg !2546
  br i1 %4, label %5, label %75, !dbg !2548

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2549
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2541, metadata !623), !dbg !2550
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2551, metadata !623), !dbg !2567
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2565, metadata !623), !dbg !2570
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2566, metadata !623), !dbg !2571
  %7 = load i8, i8* %6, align 1, !dbg !2572, !tbaa !885
  %8 = sext i8 %7 to i32, !dbg !2572
  %9 = and i32 %8, -33, !dbg !2572
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2572

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2574, metadata !623), !dbg !2588
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2586, metadata !623), !dbg !2592
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2587, metadata !623), !dbg !2593
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2594
  %12 = load i8, i8* %11, align 1, !dbg !2594, !tbaa !885
  %13 = sext i8 %12 to i32, !dbg !2594
  %14 = and i32 %13, -33, !dbg !2594
  %15 = icmp eq i32 %14, 84, !dbg !2594
  br i1 %15, label %16, label %72, !dbg !2594

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2596, metadata !623), !dbg !2609
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2607, metadata !623), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2608, metadata !623), !dbg !2614
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2615
  %18 = load i8, i8* %17, align 1, !dbg !2615, !tbaa !885
  %19 = sext i8 %18 to i32, !dbg !2615
  %20 = and i32 %19, -33, !dbg !2615
  %21 = icmp eq i32 %20, 70, !dbg !2615
  br i1 %21, label %22, label %72, !dbg !2615

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2617, metadata !623), !dbg !2629
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2627, metadata !623), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2628, metadata !623), !dbg !2634
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2635
  %24 = load i8, i8* %23, align 1, !dbg !2635, !tbaa !885
  %25 = icmp eq i8 %24, 45, !dbg !2635
  br i1 %25, label %26, label %72, !dbg !2637

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2638, metadata !623), !dbg !2649
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2647, metadata !623), !dbg !2653
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2648, metadata !623), !dbg !2654
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2655
  %28 = load i8, i8* %27, align 1, !dbg !2655, !tbaa !885
  %29 = icmp eq i8 %28, 56, !dbg !2655
  br i1 %29, label %30, label %72, !dbg !2657

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2658, metadata !623), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2666, metadata !623), !dbg !2672
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2667, metadata !623), !dbg !2673
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2674
  %32 = load i8, i8* %31, align 1, !dbg !2674, !tbaa !885
  %33 = icmp eq i8 %32, 0, !dbg !2674
  br i1 %33, label %34, label %72, !dbg !2676

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2677, !tbaa !885
  %36 = icmp eq i8 %35, 96, !dbg !2678
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.71, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.72, i64 0, i64 0), !dbg !2677
  br label %75, !dbg !2679

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2574, metadata !623), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2586, metadata !623), !dbg !2684
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2587, metadata !623), !dbg !2685
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2686
  %40 = load i8, i8* %39, align 1, !dbg !2686, !tbaa !885
  %41 = sext i8 %40 to i32, !dbg !2686
  %42 = and i32 %41, -33, !dbg !2686
  %43 = icmp eq i32 %42, 66, !dbg !2686
  br i1 %43, label %44, label %72, !dbg !2686

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2596, metadata !623), !dbg !2687
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2607, metadata !623), !dbg !2689
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2608, metadata !623), !dbg !2690
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2691
  %46 = load i8, i8* %45, align 1, !dbg !2691, !tbaa !885
  %47 = icmp eq i8 %46, 49, !dbg !2691
  br i1 %47, label %48, label %72, !dbg !2692

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2617, metadata !623), !dbg !2693
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2627, metadata !623), !dbg !2695
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2628, metadata !623), !dbg !2696
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2697
  %50 = load i8, i8* %49, align 1, !dbg !2697, !tbaa !885
  %51 = icmp eq i8 %50, 56, !dbg !2697
  br i1 %51, label %52, label %72, !dbg !2698

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2638, metadata !623), !dbg !2699
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2647, metadata !623), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2648, metadata !623), !dbg !2702
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2703
  %54 = load i8, i8* %53, align 1, !dbg !2703, !tbaa !885
  %55 = icmp eq i8 %54, 48, !dbg !2703
  br i1 %55, label %56, label %72, !dbg !2704

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2658, metadata !623), !dbg !2705
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2666, metadata !623), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2667, metadata !623), !dbg !2708
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2709
  %58 = load i8, i8* %57, align 1, !dbg !2709, !tbaa !885
  %59 = icmp eq i8 %58, 51, !dbg !2709
  br i1 %59, label %60, label %72, !dbg !2710

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2711, metadata !623), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2718, metadata !623), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2719, metadata !623), !dbg !2725
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2726
  %62 = load i8, i8* %61, align 1, !dbg !2726, !tbaa !885
  %63 = icmp eq i8 %62, 48, !dbg !2726
  br i1 %63, label %64, label %72, !dbg !2728

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2729, metadata !623), !dbg !2737
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2735, metadata !623), !dbg !2741
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2736, metadata !623), !dbg !2742
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2743
  %66 = load i8, i8* %65, align 1, !dbg !2743, !tbaa !885
  %67 = icmp eq i8 %66, 0, !dbg !2743
  br i1 %67, label %68, label %72, !dbg !2745

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2746, !tbaa !885
  %70 = icmp eq i8 %69, 96, !dbg !2747
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.74, i64 0, i64 0), !dbg !2746
  br label %75, !dbg !2748

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2749
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), !dbg !2750
  br label %75, !dbg !2751

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2752
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #13

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2753 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2757, metadata !623), !dbg !2760
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2758, metadata !623), !dbg !2761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2759, metadata !623), !dbg !2762
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2763, metadata !623) #11, !dbg !2776
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2768, metadata !623) #11, !dbg !2778
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2769, metadata !623) #11, !dbg !2779
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2770, metadata !623) #11, !dbg !2780
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2781
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2781
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2771, metadata !623) #11, !dbg !2782
  %6 = tail call i32* @__errno_location() #18, !dbg !2783
  %7 = load i32, i32* %6, align 4, !dbg !2783, !tbaa !818
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2772, metadata !623) #11, !dbg !2784
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2785
  %9 = load i32, i32* %8, align 4, !dbg !2785, !tbaa !1946
  %10 = or i32 %9, 1, !dbg !2786
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2773, metadata !623) #11, !dbg !2787
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2788
  %12 = load i32, i32* %11, align 8, !dbg !2788, !tbaa !1886
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2789
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2790
  %15 = load i8*, i8** %14, align 8, !dbg !2790, !tbaa !1972
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2791
  %17 = load i8*, i8** %16, align 8, !dbg !2791, !tbaa !1975
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2792
  %19 = add i64 %18, 1, !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2774, metadata !623) #11, !dbg !2794
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2795, metadata !623) #11, !dbg !2800
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2802
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2775, metadata !623) #11, !dbg !2803
  %21 = load i32, i32* %11, align 8, !dbg !2804, !tbaa !1886
  %22 = load i8*, i8** %14, align 8, !dbg !2805, !tbaa !1972
  %23 = load i8*, i8** %16, align 8, !dbg !2806, !tbaa !1975
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2807
  store i32 %7, i32* %6, align 4, !dbg !2808, !tbaa !818
  ret i8* %20, !dbg !2809
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2764 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2763, metadata !623), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2768, metadata !623), !dbg !2811
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2769, metadata !623), !dbg !2812
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2770, metadata !623), !dbg !2813
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2814
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2814
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2771, metadata !623), !dbg !2815
  %7 = tail call i32* @__errno_location() #18, !dbg !2816
  %8 = load i32, i32* %7, align 4, !dbg !2816, !tbaa !818
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2772, metadata !623), !dbg !2817
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2818
  %10 = load i32, i32* %9, align 4, !dbg !2818, !tbaa !1946
  %11 = icmp ne i64* %2, null, !dbg !2819
  %12 = xor i1 %11, true, !dbg !2819
  %13 = zext i1 %12 to i32, !dbg !2819
  %14 = or i32 %10, %13, !dbg !2820
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2773, metadata !623), !dbg !2821
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2822
  %16 = load i32, i32* %15, align 8, !dbg !2822, !tbaa !1886
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2823
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2824
  %19 = load i8*, i8** %18, align 8, !dbg !2824, !tbaa !1972
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2825
  %21 = load i8*, i8** %20, align 8, !dbg !2825, !tbaa !1975
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2826
  %23 = add i64 %22, 1, !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2774, metadata !623), !dbg !2828
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2795, metadata !623) #11, !dbg !2829
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2831
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2775, metadata !623), !dbg !2832
  %25 = load i32, i32* %15, align 8, !dbg !2833, !tbaa !1886
  %26 = load i8*, i8** %18, align 8, !dbg !2834, !tbaa !1972
  %27 = load i8*, i8** %20, align 8, !dbg !2835, !tbaa !1975
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2836
  store i32 %8, i32* %7, align 4, !dbg !2837, !tbaa !818
  br i1 %11, label %29, label %30, !dbg !2838

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2839, !tbaa !874
  br label %30, !dbg !2841

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2842
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2843 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2847, !tbaa !630
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2845, metadata !623), !dbg !2848
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2846, metadata !623), !dbg !2849
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2846, metadata !623), !dbg !2849
  %2 = load i32, i32* @nslots, align 4, !dbg !2850, !tbaa !818
  %3 = icmp sgt i32 %2, 1, !dbg !2853
  br i1 %3, label %4, label %13, !dbg !2854

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2855

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2846, metadata !623), !dbg !2849
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2855
  %8 = load i8*, i8** %7, align 8, !dbg !2855, !tbaa !2856
  tail call void @free(i8* %8) #11, !dbg !2858
  %9 = add nuw i64 %6, 1, !dbg !2859
  %10 = load i32, i32* @nslots, align 4, !dbg !2850, !tbaa !818
  %11 = sext i32 %10 to i64, !dbg !2853
  %12 = icmp slt i64 %9, %11, !dbg !2853
  br i1 %12, label %5, label %13, !dbg !2854, !llvm.loop !2860

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2862
  %15 = load i8*, i8** %14, align 8, !dbg !2862, !tbaa !2856
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2864
  br i1 %16, label %18, label %17, !dbg !2865

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2866
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2868, !tbaa !2869
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2870, !tbaa !2856
  br label %18, !dbg !2871

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2872
  br i1 %19, label %22, label %20, !dbg !2874

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2875
  tail call void @free(i8* %21) #11, !dbg !2877
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2878, !tbaa !630
  br label %22, !dbg !2879

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2880, !tbaa !818
  ret void, !dbg !2881
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2882 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2886, metadata !623), !dbg !2888
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2887, metadata !623), !dbg !2889
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2890
  ret i8* %3, !dbg !2891
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2892 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2896, metadata !623), !dbg !2910
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2897, metadata !623), !dbg !2911
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2898, metadata !623), !dbg !2912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2899, metadata !623), !dbg !2913
  %5 = tail call i32* @__errno_location() #18, !dbg !2914
  %6 = load i32, i32* %5, align 4, !dbg !2914, !tbaa !818
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2900, metadata !623), !dbg !2915
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2916, !tbaa !630
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2901, metadata !623), !dbg !2917
  %8 = icmp slt i32 %0, 0, !dbg !2918
  br i1 %8, label %9, label %10, !dbg !2920

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !2921
  unreachable, !dbg !2921

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2922, !tbaa !818
  %12 = icmp sgt i32 %11, %0, !dbg !2923
  br i1 %12, label %34, label %13, !dbg !2924

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2925
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2926
  br i1 %15, label %16, label %17, !dbg !2928

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !2929
  unreachable, !dbg !2929

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2930
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2930
  %20 = add nsw i32 %0, 1, !dbg !2931
  %21 = sext i32 %20 to i64, !dbg !2932
  %22 = shl nsw i64 %21, 4, !dbg !2933
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2934
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2934
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2901, metadata !623), !dbg !2917
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2935, !tbaa !630
  br i1 %14, label %25, label %26, !dbg !2936

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2937, !tbaa.struct !2939
  br label %26, !dbg !2940

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2941, !tbaa !818
  %28 = sext i32 %27 to i64, !dbg !2942
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2942
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2943
  %31 = sub nsw i32 %20, %27, !dbg !2944
  %32 = sext i32 %31 to i64, !dbg !2945
  %33 = shl nsw i64 %32, 4, !dbg !2946
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2943
  store i32 %20, i32* @nslots, align 4, !dbg !2947, !tbaa !818
  br label %34, !dbg !2948

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2901, metadata !623), !dbg !2917
  %36 = sext i32 %0 to i64, !dbg !2949
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2950
  %38 = load i64, i64* %37, align 8, !dbg !2950, !tbaa !2869
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2905, metadata !623), !dbg !2951
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2952
  %40 = load i8*, i8** %39, align 8, !dbg !2952, !tbaa !2856
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2907, metadata !623), !dbg !2953
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2954
  %42 = load i32, i32* %41, align 4, !dbg !2954, !tbaa !1946
  %43 = or i32 %42, 1, !dbg !2955
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2908, metadata !623), !dbg !2956
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2957
  %45 = load i32, i32* %44, align 8, !dbg !2957, !tbaa !1886
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2958
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2959
  %48 = load i8*, i8** %47, align 8, !dbg !2959, !tbaa !1972
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2960
  %50 = load i8*, i8** %49, align 8, !dbg !2960, !tbaa !1975
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2961
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2909, metadata !623), !dbg !2962
  %52 = icmp ugt i64 %38, %51, !dbg !2963
  br i1 %52, label %63, label %53, !dbg !2965

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2905, metadata !623), !dbg !2951
  store i64 %54, i64* %37, align 8, !dbg !2968, !tbaa !2869
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2969
  br i1 %55, label %57, label %56, !dbg !2971

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2972
  br label %57, !dbg !2972

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2795, metadata !623) #11, !dbg !2973
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2975
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2907, metadata !623), !dbg !2953
  store i8* %58, i8** %39, align 8, !dbg !2976, !tbaa !2856
  %59 = load i32, i32* %44, align 8, !dbg !2977, !tbaa !1886
  %60 = load i8*, i8** %47, align 8, !dbg !2978, !tbaa !1972
  %61 = load i8*, i8** %49, align 8, !dbg !2979, !tbaa !1975
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2980
  br label %63, !dbg !2981

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2907, metadata !623), !dbg !2953
  store i32 %6, i32* %5, align 4, !dbg !2982, !tbaa !818
  ret i8* %64, !dbg !2983
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2984 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2988, metadata !623), !dbg !2991
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2989, metadata !623), !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2990, metadata !623), !dbg !2993
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2994
  ret i8* %4, !dbg !2995
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2996 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3000, metadata !623), !dbg !3001
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2886, metadata !623) #11, !dbg !3002
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2887, metadata !623) #11, !dbg !3004
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3005
  ret i8* %2, !dbg !3006
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3007 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3011, metadata !623), !dbg !3013
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3012, metadata !623), !dbg !3014
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2988, metadata !623) #11, !dbg !3015
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2989, metadata !623) #11, !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2990, metadata !623) #11, !dbg !3018
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3019
  ret i8* %3, !dbg !3020
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3021 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3029, metadata !3035), !dbg !3036
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3025, metadata !623), !dbg !3038
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3026, metadata !623), !dbg !3039
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3027, metadata !623), !dbg !3040
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3041
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3041
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3028, metadata !623), !dbg !3042
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3034, metadata !623) #11, !dbg !3043
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3044
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3044
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3029, metadata !623) #11, !dbg !3036
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3029, metadata !3045) #11, !dbg !3036
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3036
  %8 = icmp eq i32 %1, 10, !dbg !3046
  br i1 %8, label %9, label %10, !dbg !3048

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3049, !noalias !3050
  unreachable, !dbg !3049

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3029, metadata !3045) #11, !dbg !3036
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3053
  store i32 %1, i32* %11, align 8, !dbg !3053, !alias.scope !3050
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3053
  %13 = bitcast i32* %12 to i8*, !dbg !3053
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3053
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3054
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3028, metadata !623), !dbg !3042
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3055
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3056
  ret i8* %14, !dbg !3057
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3058 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3029, metadata !3035), !dbg !3067
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3062, metadata !623), !dbg !3069
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3063, metadata !623), !dbg !3070
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3064, metadata !623), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3065, metadata !623), !dbg !3072
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3073
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3073
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3066, metadata !623), !dbg !3074
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3034, metadata !623) #11, !dbg !3075
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3076
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3076
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3029, metadata !623) #11, !dbg !3067
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3029, metadata !3045) #11, !dbg !3067
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3067
  %9 = icmp eq i32 %1, 10, !dbg !3077
  br i1 %9, label %10, label %11, !dbg !3078

; <label>:10:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3079, !noalias !3080
  unreachable, !dbg !3079

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3029, metadata !3045) #11, !dbg !3067
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3083
  store i32 %1, i32* %12, align 8, !dbg !3083, !alias.scope !3080
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3083
  %14 = bitcast i32* %13 to i8*, !dbg !3083
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3083
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3066, metadata !623), !dbg !3074
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3085
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3086
  ret i8* %15, !dbg !3087
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3088 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3029, metadata !3035), !dbg !3094
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3092, metadata !623), !dbg !3097
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3093, metadata !623), !dbg !3098
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3025, metadata !623) #11, !dbg !3099
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3026, metadata !623) #11, !dbg !3100
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3027, metadata !623) #11, !dbg !3101
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3102
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3102
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3028, metadata !623) #11, !dbg !3103
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3034, metadata !623) #11, !dbg !3104
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3105
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3105
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3029, metadata !623) #11, !dbg !3094
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3029, metadata !3045) #11, !dbg !3094
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3094
  %7 = icmp eq i32 %0, 10, !dbg !3106
  br i1 %7, label %8, label %9, !dbg !3107

; <label>:8:                                      ; preds = %2
  tail call void @abort() #16, !dbg !3108, !noalias !3109
  unreachable, !dbg !3108

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3029, metadata !3045) #11, !dbg !3094
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3112
  store i32 %0, i32* %10, align 8, !dbg !3112, !alias.scope !3109
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3112
  %12 = bitcast i32* %11 to i8*, !dbg !3112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3112
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3028, metadata !623) #11, !dbg !3103
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3114
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3115
  ret i8* %13, !dbg !3116
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3117 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3029, metadata !3035), !dbg !3124
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3121, metadata !623), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3122, metadata !623), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3123, metadata !623), !dbg !3129
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3062, metadata !623) #11, !dbg !3130
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3063, metadata !623) #11, !dbg !3131
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3064, metadata !623) #11, !dbg !3132
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3065, metadata !623) #11, !dbg !3133
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3134
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3134
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3066, metadata !623) #11, !dbg !3135
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3034, metadata !623) #11, !dbg !3136
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3137
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3137
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3029, metadata !623) #11, !dbg !3124
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3029, metadata !3045) #11, !dbg !3124
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3124
  %8 = icmp eq i32 %0, 10, !dbg !3138
  br i1 %8, label %9, label %10, !dbg !3139

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3140, !noalias !3141
  unreachable, !dbg !3140

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3029, metadata !3045) #11, !dbg !3124
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3144
  store i32 %0, i32* %11, align 8, !dbg !3144, !alias.scope !3141
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3144
  %13 = bitcast i32* %12 to i8*, !dbg !3144
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3144
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3145
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3066, metadata !623) #11, !dbg !3135
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3146
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3147
  ret i8* %14, !dbg !3148
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3149 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3153, metadata !623), !dbg !3157
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3154, metadata !623), !dbg !3158
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3155, metadata !623), !dbg !3159
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3160
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3161, !tbaa.struct !3162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3156, metadata !623), !dbg !3163
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1905, metadata !623), !dbg !3164
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1906, metadata !623), !dbg !3166
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1907, metadata !623), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1908, metadata !623), !dbg !3168
  %6 = lshr i8 %2, 5, !dbg !3169
  %7 = zext i8 %6 to i64, !dbg !3169
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3170
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1909, metadata !623), !dbg !3171
  %9 = and i8 %2, 31, !dbg !3172
  %10 = zext i8 %9 to i32, !dbg !3173
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1911, metadata !623), !dbg !3174
  %11 = load i32, i32* %8, align 4, !dbg !3175, !tbaa !818
  %12 = lshr i32 %11, %10, !dbg !3176
  %13 = and i32 %12, 1, !dbg !3177
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1912, metadata !623), !dbg !3178
  %14 = xor i32 %13, 1, !dbg !3179
  %15 = shl i32 %14, %10, !dbg !3180
  %16 = xor i32 %15, %11, !dbg !3181
  store i32 %16, i32* %8, align 4, !dbg !3181, !tbaa !818
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3156, metadata !623), !dbg !3163
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3182
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3183
  ret i8* %17, !dbg !3184
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3185 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3189, metadata !623), !dbg !3191
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3190, metadata !623), !dbg !3192
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3153, metadata !623) #11, !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3154, metadata !623) #11, !dbg !3195
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3155, metadata !623) #11, !dbg !3196
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3197
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3198, !tbaa.struct !3162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3156, metadata !623) #11, !dbg !3199
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1905, metadata !623) #11, !dbg !3200
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1906, metadata !623) #11, !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1907, metadata !623) #11, !dbg !3203
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1908, metadata !623) #11, !dbg !3204
  %5 = lshr i8 %1, 5, !dbg !3205
  %6 = zext i8 %5 to i64, !dbg !3205
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3206
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1909, metadata !623) #11, !dbg !3207
  %8 = and i8 %1, 31, !dbg !3208
  %9 = zext i8 %8 to i32, !dbg !3209
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1911, metadata !623) #11, !dbg !3210
  %10 = load i32, i32* %7, align 4, !dbg !3211, !tbaa !818
  %11 = lshr i32 %10, %9, !dbg !3212
  %12 = and i32 %11, 1, !dbg !3213
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1912, metadata !623) #11, !dbg !3214
  %13 = xor i32 %12, 1, !dbg !3215
  %14 = shl i32 %13, %9, !dbg !3216
  %15 = xor i32 %14, %10, !dbg !3217
  store i32 %15, i32* %7, align 4, !dbg !3217, !tbaa !818
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3156, metadata !623) #11, !dbg !3199
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3218
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3219
  ret i8* %16, !dbg !3220
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3221 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3223, metadata !623), !dbg !3224
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3189, metadata !623) #11, !dbg !3225
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3190, metadata !623) #11, !dbg !3227
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3153, metadata !623) #11, !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3154, metadata !623) #11, !dbg !3230
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3155, metadata !623) #11, !dbg !3231
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3232
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3233, !tbaa.struct !3162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3156, metadata !623) #11, !dbg !3234
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1905, metadata !623) #11, !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1906, metadata !623) #11, !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1907, metadata !623) #11, !dbg !3238
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1908, metadata !623) #11, !dbg !3239
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3240
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1909, metadata !623) #11, !dbg !3241
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1911, metadata !623) #11, !dbg !3242
  %5 = load i32, i32* %4, align 4, !dbg !3243, !tbaa !818
  %6 = or i32 %5, 67108864, !dbg !3244
  store i32 %6, i32* %4, align 4, !dbg !3244, !tbaa !818
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3156, metadata !623) #11, !dbg !3234
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3245
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3246
  ret i8* %7, !dbg !3247
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3248 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3250, metadata !623), !dbg !3252
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3251, metadata !623), !dbg !3253
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3153, metadata !623) #11, !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3154, metadata !623) #11, !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3155, metadata !623) #11, !dbg !3257
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3258
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3258
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3259, !tbaa.struct !3162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3156, metadata !623) #11, !dbg !3260
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1905, metadata !623) #11, !dbg !3261
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1906, metadata !623) #11, !dbg !3263
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1907, metadata !623) #11, !dbg !3264
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1908, metadata !623) #11, !dbg !3265
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3266
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1909, metadata !623) #11, !dbg !3267
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1911, metadata !623) #11, !dbg !3268
  %6 = load i32, i32* %5, align 4, !dbg !3269, !tbaa !818
  %7 = or i32 %6, 67108864, !dbg !3270
  store i32 %7, i32* %5, align 4, !dbg !3270, !tbaa !818
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3156, metadata !623) #11, !dbg !3260
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3271
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3272
  ret i8* %8, !dbg !3273
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3274 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3029, metadata !3035), !dbg !3280
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3276, metadata !623), !dbg !3282
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3277, metadata !623), !dbg !3283
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3278, metadata !623), !dbg !3284
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3285
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3285
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3034, metadata !623) #11, !dbg !3286
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3287
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3287
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3029, metadata !623) #11, !dbg !3280
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3029, metadata !3045) #11, !dbg !3280
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3280
  %9 = icmp eq i32 %1, 10, !dbg !3288
  br i1 %9, label %10, label %11, !dbg !3289

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3290, !noalias !3291
  unreachable, !dbg !3290

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3029, metadata !3045) #11, !dbg !3280
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3294
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3295
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3296
  store i32 %1, i32* %13, align 8, !dbg !3296
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3296
  %15 = bitcast i32* %14 to i8*, !dbg !3296
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3296
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3279, metadata !623), !dbg !3297
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1905, metadata !623), !dbg !3298
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1906, metadata !623), !dbg !3300
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1907, metadata !623), !dbg !3301
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1908, metadata !623), !dbg !3302
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3303
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1909, metadata !623), !dbg !3304
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1911, metadata !623), !dbg !3305
  %17 = load i32, i32* %16, align 4, !dbg !3306, !tbaa !818
  %18 = or i32 %17, 67108864, !dbg !3307
  store i32 %18, i32* %16, align 4, !dbg !3307, !tbaa !818
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3279, metadata !623), !dbg !3297
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3308
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3309
  ret i8* %19, !dbg !3310
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3311 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3315, metadata !623), !dbg !3319
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3316, metadata !623), !dbg !3320
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3317, metadata !623), !dbg !3321
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3318, metadata !623), !dbg !3322
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3323, metadata !623) #11, !dbg !3333
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3328, metadata !623) #11, !dbg !3335
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3329, metadata !623) #11, !dbg !3336
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3330, metadata !623) #11, !dbg !3337
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3331, metadata !623) #11, !dbg !3338
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3339
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3339
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3340, !tbaa.struct !3162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3332, metadata !623) #11, !dbg !3341
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1954, metadata !623) #11, !dbg !3342
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1955, metadata !623) #11, !dbg !3344
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1956, metadata !623) #11, !dbg !3345
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1954, metadata !623) #11, !dbg !3342
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1954, metadata !623) #11, !dbg !3342
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3346
  store i32 10, i32* %7, align 8, !dbg !3347, !tbaa !1886
  %8 = icmp ne i8* %1, null, !dbg !3348
  %9 = icmp ne i8* %2, null, !dbg !3349
  %10 = and i1 %8, %9, !dbg !3350
  br i1 %10, label %12, label %11, !dbg !3350

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3351
  unreachable, !dbg !3351

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3352
  store i8* %1, i8** %13, align 8, !dbg !3353, !tbaa !1972
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3354
  store i8* %2, i8** %14, align 8, !dbg !3355, !tbaa !1975
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3332, metadata !623) #11, !dbg !3341
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3356
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3357
  ret i8* %15, !dbg !3358
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3324 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3323, metadata !623), !dbg !3359
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3328, metadata !623), !dbg !3360
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3329, metadata !623), !dbg !3361
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3330, metadata !623), !dbg !3362
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3331, metadata !623), !dbg !3363
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3364
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3365, !tbaa.struct !3162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3332, metadata !623), !dbg !3366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1954, metadata !623) #11, !dbg !3367
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1955, metadata !623) #11, !dbg !3369
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1956, metadata !623) #11, !dbg !3370
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1954, metadata !623) #11, !dbg !3367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1954, metadata !623) #11, !dbg !3367
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3371
  store i32 10, i32* %8, align 8, !dbg !3372, !tbaa !1886
  %9 = icmp ne i8* %1, null, !dbg !3373
  %10 = icmp ne i8* %2, null, !dbg !3374
  %11 = and i1 %9, %10, !dbg !3375
  br i1 %11, label %13, label %12, !dbg !3375

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !3376
  unreachable, !dbg !3376

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3377
  store i8* %1, i8** %14, align 8, !dbg !3378, !tbaa !1972
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3379
  store i8* %2, i8** %15, align 8, !dbg !3380, !tbaa !1975
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3332, metadata !623), !dbg !3366
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3381
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3382
  ret i8* %16, !dbg !3383
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3384 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3388, metadata !623), !dbg !3391
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3389, metadata !623), !dbg !3392
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3390, metadata !623), !dbg !3393
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3315, metadata !623) #11, !dbg !3394
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3316, metadata !623) #11, !dbg !3396
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3317, metadata !623) #11, !dbg !3397
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3318, metadata !623) #11, !dbg !3398
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3323, metadata !623) #11, !dbg !3399
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3328, metadata !623) #11, !dbg !3401
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3329, metadata !623) #11, !dbg !3402
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3330, metadata !623) #11, !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3331, metadata !623) #11, !dbg !3404
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3405
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3406, !tbaa.struct !3162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3332, metadata !623) #11, !dbg !3407
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1954, metadata !623) #11, !dbg !3408
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1955, metadata !623) #11, !dbg !3410
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1956, metadata !623) #11, !dbg !3411
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1954, metadata !623) #11, !dbg !3408
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1954, metadata !623) #11, !dbg !3408
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3412
  store i32 10, i32* %6, align 8, !dbg !3413, !tbaa !1886
  %7 = icmp ne i8* %0, null, !dbg !3414
  %8 = icmp ne i8* %1, null, !dbg !3415
  %9 = and i1 %7, %8, !dbg !3416
  br i1 %9, label %11, label %10, !dbg !3416

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3417
  unreachable, !dbg !3417

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3418
  store i8* %0, i8** %12, align 8, !dbg !3419, !tbaa !1972
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3420
  store i8* %1, i8** %13, align 8, !dbg !3421, !tbaa !1975
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3332, metadata !623) #11, !dbg !3407
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3422
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3423
  ret i8* %14, !dbg !3424
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3425 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3429, metadata !623), !dbg !3433
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3430, metadata !623), !dbg !3434
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3431, metadata !623), !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3432, metadata !623), !dbg !3436
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3323, metadata !623) #11, !dbg !3437
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3328, metadata !623) #11, !dbg !3439
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3329, metadata !623) #11, !dbg !3440
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3330, metadata !623) #11, !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3331, metadata !623) #11, !dbg !3442
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3443
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3443
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3444, !tbaa.struct !3162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3332, metadata !623) #11, !dbg !3445
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1954, metadata !623) #11, !dbg !3446
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1955, metadata !623) #11, !dbg !3448
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1956, metadata !623) #11, !dbg !3449
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1954, metadata !623) #11, !dbg !3446
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1954, metadata !623) #11, !dbg !3446
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3450
  store i32 10, i32* %7, align 8, !dbg !3451, !tbaa !1886
  %8 = icmp ne i8* %0, null, !dbg !3452
  %9 = icmp ne i8* %1, null, !dbg !3453
  %10 = and i1 %8, %9, !dbg !3454
  br i1 %10, label %12, label %11, !dbg !3454

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3455
  unreachable, !dbg !3455

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3456
  store i8* %0, i8** %13, align 8, !dbg !3457, !tbaa !1972
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3458
  store i8* %1, i8** %14, align 8, !dbg !3459, !tbaa !1975
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3332, metadata !623) #11, !dbg !3445
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3460
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3461
  ret i8* %15, !dbg !3462
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3463 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3467, metadata !623), !dbg !3470
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3468, metadata !623), !dbg !3471
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3469, metadata !623), !dbg !3472
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3473
  ret i8* %4, !dbg !3474
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3475 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3479, metadata !623), !dbg !3481
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3480, metadata !623), !dbg !3482
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3467, metadata !623) #11, !dbg !3483
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3468, metadata !623) #11, !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3469, metadata !623) #11, !dbg !3486
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3487
  ret i8* %3, !dbg !3488
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3489 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3493, metadata !623), !dbg !3495
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3494, metadata !623), !dbg !3496
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3467, metadata !623) #11, !dbg !3497
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3468, metadata !623) #11, !dbg !3499
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3469, metadata !623) #11, !dbg !3500
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3501
  ret i8* %3, !dbg !3502
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3503 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3507, metadata !623), !dbg !3508
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3493, metadata !623) #11, !dbg !3509
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3494, metadata !623) #11, !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3467, metadata !623) #11, !dbg !3512
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3468, metadata !623) #11, !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3469, metadata !623) #11, !dbg !3515
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3516
  ret i8* %2, !dbg !3517
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3518 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3563, metadata !623), !dbg !3569
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3564, metadata !623), !dbg !3570
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3565, metadata !623), !dbg !3571
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3566, metadata !623), !dbg !3572
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3567, metadata !623), !dbg !3573
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3568, metadata !623), !dbg !3574
  %7 = icmp eq i8* %1, null, !dbg !3575
  br i1 %7, label %10, label %8, !dbg !3577

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3578
  br label %12, !dbg !3578

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.82, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3579
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i32 5) #11, !dbg !3580
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3580
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.84, i64 0, i64 0), i32 5) #11, !dbg !3581
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3581
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
  ], !dbg !3582

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !3583
  unreachable, !dbg !3583

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.85, i64 0, i64 0), i32 5) #11, !dbg !3585
  %20 = load i8*, i8** %4, align 8, !dbg !3585, !tbaa !630
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3585
  br label %146, !dbg !3586

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.86, i64 0, i64 0), i32 5) #11, !dbg !3587
  %24 = load i8*, i8** %4, align 8, !dbg !3587, !tbaa !630
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3587
  %26 = load i8*, i8** %25, align 8, !dbg !3587, !tbaa !630
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3587
  br label %146, !dbg !3588

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.87, i64 0, i64 0), i32 5) #11, !dbg !3589
  %30 = load i8*, i8** %4, align 8, !dbg !3589, !tbaa !630
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3589
  %32 = load i8*, i8** %31, align 8, !dbg !3589, !tbaa !630
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3589
  %34 = load i8*, i8** %33, align 8, !dbg !3589, !tbaa !630
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3589
  br label %146, !dbg !3590

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.88, i64 0, i64 0), i32 5) #11, !dbg !3591
  %38 = load i8*, i8** %4, align 8, !dbg !3591, !tbaa !630
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3591
  %40 = load i8*, i8** %39, align 8, !dbg !3591, !tbaa !630
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3591
  %42 = load i8*, i8** %41, align 8, !dbg !3591, !tbaa !630
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3591
  %44 = load i8*, i8** %43, align 8, !dbg !3591, !tbaa !630
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3591
  br label %146, !dbg !3592

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.89, i64 0, i64 0), i32 5) #11, !dbg !3593
  %48 = load i8*, i8** %4, align 8, !dbg !3593, !tbaa !630
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3593
  %50 = load i8*, i8** %49, align 8, !dbg !3593, !tbaa !630
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3593
  %52 = load i8*, i8** %51, align 8, !dbg !3593, !tbaa !630
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3593
  %54 = load i8*, i8** %53, align 8, !dbg !3593, !tbaa !630
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3593
  %56 = load i8*, i8** %55, align 8, !dbg !3593, !tbaa !630
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3593
  br label %146, !dbg !3594

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.90, i64 0, i64 0), i32 5) #11, !dbg !3595
  %60 = load i8*, i8** %4, align 8, !dbg !3595, !tbaa !630
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3595
  %62 = load i8*, i8** %61, align 8, !dbg !3595, !tbaa !630
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3595
  %64 = load i8*, i8** %63, align 8, !dbg !3595, !tbaa !630
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3595
  %66 = load i8*, i8** %65, align 8, !dbg !3595, !tbaa !630
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3595
  %68 = load i8*, i8** %67, align 8, !dbg !3595, !tbaa !630
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3595
  %70 = load i8*, i8** %69, align 8, !dbg !3595, !tbaa !630
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3595
  br label %146, !dbg !3596

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.91, i64 0, i64 0), i32 5) #11, !dbg !3597
  %74 = load i8*, i8** %4, align 8, !dbg !3597, !tbaa !630
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3597
  %76 = load i8*, i8** %75, align 8, !dbg !3597, !tbaa !630
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3597
  %78 = load i8*, i8** %77, align 8, !dbg !3597, !tbaa !630
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3597
  %80 = load i8*, i8** %79, align 8, !dbg !3597, !tbaa !630
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3597
  %82 = load i8*, i8** %81, align 8, !dbg !3597, !tbaa !630
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3597
  %84 = load i8*, i8** %83, align 8, !dbg !3597, !tbaa !630
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3597
  %86 = load i8*, i8** %85, align 8, !dbg !3597, !tbaa !630
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3597
  br label %146, !dbg !3598

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.92, i64 0, i64 0), i32 5) #11, !dbg !3599
  %90 = load i8*, i8** %4, align 8, !dbg !3599, !tbaa !630
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3599
  %92 = load i8*, i8** %91, align 8, !dbg !3599, !tbaa !630
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3599
  %94 = load i8*, i8** %93, align 8, !dbg !3599, !tbaa !630
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3599
  %96 = load i8*, i8** %95, align 8, !dbg !3599, !tbaa !630
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3599
  %98 = load i8*, i8** %97, align 8, !dbg !3599, !tbaa !630
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3599
  %100 = load i8*, i8** %99, align 8, !dbg !3599, !tbaa !630
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3599
  %102 = load i8*, i8** %101, align 8, !dbg !3599, !tbaa !630
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3599
  %104 = load i8*, i8** %103, align 8, !dbg !3599, !tbaa !630
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3599
  br label %146, !dbg !3600

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.93, i64 0, i64 0), i32 5) #11, !dbg !3601
  %108 = load i8*, i8** %4, align 8, !dbg !3601, !tbaa !630
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3601
  %110 = load i8*, i8** %109, align 8, !dbg !3601, !tbaa !630
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3601
  %112 = load i8*, i8** %111, align 8, !dbg !3601, !tbaa !630
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3601
  %114 = load i8*, i8** %113, align 8, !dbg !3601, !tbaa !630
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3601
  %116 = load i8*, i8** %115, align 8, !dbg !3601, !tbaa !630
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3601
  %118 = load i8*, i8** %117, align 8, !dbg !3601, !tbaa !630
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3601
  %120 = load i8*, i8** %119, align 8, !dbg !3601, !tbaa !630
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3601
  %122 = load i8*, i8** %121, align 8, !dbg !3601, !tbaa !630
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3601
  %124 = load i8*, i8** %123, align 8, !dbg !3601, !tbaa !630
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3601
  br label %146, !dbg !3602

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.94, i64 0, i64 0), i32 5) #11, !dbg !3603
  %128 = load i8*, i8** %4, align 8, !dbg !3603, !tbaa !630
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3603
  %130 = load i8*, i8** %129, align 8, !dbg !3603, !tbaa !630
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3603
  %132 = load i8*, i8** %131, align 8, !dbg !3603, !tbaa !630
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3603
  %134 = load i8*, i8** %133, align 8, !dbg !3603, !tbaa !630
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3603
  %136 = load i8*, i8** %135, align 8, !dbg !3603, !tbaa !630
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3603
  %138 = load i8*, i8** %137, align 8, !dbg !3603, !tbaa !630
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3603
  %140 = load i8*, i8** %139, align 8, !dbg !3603, !tbaa !630
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3603
  %142 = load i8*, i8** %141, align 8, !dbg !3603, !tbaa !630
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3603
  %144 = load i8*, i8** %143, align 8, !dbg !3603, !tbaa !630
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3603
  br label %146, !dbg !3604

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3605
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3606 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3610, metadata !623), !dbg !3616
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3611, metadata !623), !dbg !3617
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3612, metadata !623), !dbg !3618
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3613, metadata !623), !dbg !3619
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3614, metadata !623), !dbg !3620
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3615, metadata !623), !dbg !3621
  br label %6, !dbg !3622

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3615, metadata !623), !dbg !3621
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3624
  %9 = load i8*, i8** %8, align 8, !dbg !3624, !tbaa !630
  %10 = icmp eq i8* %9, null, !dbg !3626
  %11 = add i64 %7, 1, !dbg !3627
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3615, metadata !623), !dbg !3621
  br i1 %10, label %12, label %6, !dbg !3626, !llvm.loop !3628

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3630
  ret void, !dbg !3631
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3632 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3643, metadata !623), !dbg !3651
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3644, metadata !623), !dbg !3652
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3645, metadata !623), !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3646, metadata !623), !dbg !3654
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3647, metadata !623), !dbg !3655
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3656
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3656
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3649, metadata !623), !dbg !3657
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3648, metadata !623), !dbg !3658
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3648, metadata !623), !dbg !3658
  %11 = load i32, i32* %8, align 8, !dbg !3659
  %12 = icmp ult i32 %11, 41, !dbg !3659
  br i1 %12, label %13, label %18, !dbg !3659

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3659
  %15 = sext i32 %11 to i64, !dbg !3659
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3659
  %17 = add i32 %11, 8, !dbg !3659
  store i32 %17, i32* %8, align 8, !dbg !3659
  br label %21, !dbg !3659

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3659
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3659
  store i8* %20, i8** %10, align 8, !dbg !3659
  br label %21, !dbg !3659

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3659
  %25 = load i8*, i8** %24, align 8, !dbg !3659
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3662
  store i8* %25, i8** %26, align 16, !dbg !3663, !tbaa !630
  %27 = icmp eq i8* %25, null, !dbg !3664
  br i1 %27, label %30, label %28, !dbg !3665

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3648, metadata !623), !dbg !3658
  %29 = icmp ult i32 %22, 41, !dbg !3659
  br i1 %29, label %35, label %32, !dbg !3659

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3666
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3667
  ret void, !dbg !3667

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3659
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3659
  store i8* %34, i8** %10, align 8, !dbg !3659
  br label %40, !dbg !3659

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3659
  %37 = sext i32 %22 to i64, !dbg !3659
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3659
  %39 = add i32 %22, 8, !dbg !3659
  store i32 %39, i32* %8, align 8, !dbg !3659
  br label %40, !dbg !3659

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3659
  %44 = load i8*, i8** %43, align 8, !dbg !3659
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3662
  store i8* %44, i8** %45, align 8, !dbg !3663, !tbaa !630
  %46 = icmp eq i8* %44, null, !dbg !3664
  br i1 %46, label %30, label %47, !dbg !3665

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3648, metadata !623), !dbg !3658
  %48 = icmp ult i32 %41, 41, !dbg !3659
  br i1 %48, label %52, label %49, !dbg !3659

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3659
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3659
  store i8* %51, i8** %10, align 8, !dbg !3659
  br label %57, !dbg !3659

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3659
  %54 = sext i32 %41 to i64, !dbg !3659
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3659
  %56 = add i32 %41, 8, !dbg !3659
  store i32 %56, i32* %8, align 8, !dbg !3659
  br label %57, !dbg !3659

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3659
  %61 = load i8*, i8** %60, align 8, !dbg !3659
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3662
  store i8* %61, i8** %62, align 16, !dbg !3663, !tbaa !630
  %63 = icmp eq i8* %61, null, !dbg !3664
  br i1 %63, label %30, label %64, !dbg !3665

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3648, metadata !623), !dbg !3658
  %65 = icmp ult i32 %58, 41, !dbg !3659
  br i1 %65, label %69, label %66, !dbg !3659

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3659
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3659
  store i8* %68, i8** %10, align 8, !dbg !3659
  br label %74, !dbg !3659

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3659
  %71 = sext i32 %58 to i64, !dbg !3659
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3659
  %73 = add i32 %58, 8, !dbg !3659
  store i32 %73, i32* %8, align 8, !dbg !3659
  br label %74, !dbg !3659

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3659
  %78 = load i8*, i8** %77, align 8, !dbg !3659
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3662
  store i8* %78, i8** %79, align 8, !dbg !3663, !tbaa !630
  %80 = icmp eq i8* %78, null, !dbg !3664
  br i1 %80, label %30, label %81, !dbg !3665

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3648, metadata !623), !dbg !3658
  %82 = icmp ult i32 %75, 41, !dbg !3659
  br i1 %82, label %86, label %83, !dbg !3659

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3659
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3659
  store i8* %85, i8** %10, align 8, !dbg !3659
  br label %91, !dbg !3659

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3659
  %88 = sext i32 %75 to i64, !dbg !3659
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3659
  %90 = add i32 %75, 8, !dbg !3659
  store i32 %90, i32* %8, align 8, !dbg !3659
  br label %91, !dbg !3659

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3659
  %95 = load i8*, i8** %94, align 8, !dbg !3659
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3662
  store i8* %95, i8** %96, align 16, !dbg !3663, !tbaa !630
  %97 = icmp eq i8* %95, null, !dbg !3664
  br i1 %97, label %30, label %98, !dbg !3665

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3648, metadata !623), !dbg !3658
  %99 = icmp ult i32 %92, 41, !dbg !3659
  br i1 %99, label %103, label %100, !dbg !3659

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3659
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3659
  store i8* %102, i8** %10, align 8, !dbg !3659
  br label %108, !dbg !3659

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3659
  %105 = sext i32 %92 to i64, !dbg !3659
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3659
  %107 = add i32 %92, 8, !dbg !3659
  store i32 %107, i32* %8, align 8, !dbg !3659
  br label %108, !dbg !3659

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3659
  %111 = load i8*, i8** %110, align 8, !dbg !3659
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3662
  store i8* %111, i8** %112, align 8, !dbg !3663, !tbaa !630
  %113 = icmp eq i8* %111, null, !dbg !3664
  br i1 %113, label %30, label %114, !dbg !3665

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3648, metadata !623), !dbg !3658
  %115 = load i8*, i8** %10, align 8, !dbg !3659
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3659
  store i8* %116, i8** %10, align 8, !dbg !3659
  %117 = bitcast i8* %115 to i8**, !dbg !3659
  %118 = load i8*, i8** %117, align 8, !dbg !3659
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3662
  store i8* %118, i8** %119, align 16, !dbg !3663, !tbaa !630
  %120 = icmp eq i8* %118, null, !dbg !3664
  br i1 %120, label %30, label %121, !dbg !3665

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3648, metadata !623), !dbg !3658
  %122 = load i8*, i8** %10, align 8, !dbg !3659
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3659
  store i8* %123, i8** %10, align 8, !dbg !3659
  %124 = bitcast i8* %122 to i8**, !dbg !3659
  %125 = load i8*, i8** %124, align 8, !dbg !3659
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3662
  store i8* %125, i8** %126, align 8, !dbg !3663, !tbaa !630
  %127 = icmp eq i8* %125, null, !dbg !3664
  br i1 %127, label %30, label %128, !dbg !3665

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3648, metadata !623), !dbg !3658
  %129 = load i8*, i8** %10, align 8, !dbg !3659
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3659
  store i8* %130, i8** %10, align 8, !dbg !3659
  %131 = bitcast i8* %129 to i8**, !dbg !3659
  %132 = load i8*, i8** %131, align 8, !dbg !3659
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3662
  store i8* %132, i8** %133, align 16, !dbg !3663, !tbaa !630
  %134 = icmp eq i8* %132, null, !dbg !3664
  br i1 %134, label %30, label %135, !dbg !3665

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3648, metadata !623), !dbg !3658
  %136 = load i8*, i8** %10, align 8, !dbg !3659
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3659
  store i8* %137, i8** %10, align 8, !dbg !3659
  %138 = bitcast i8* %136 to i8**, !dbg !3659
  %139 = load i8*, i8** %138, align 8, !dbg !3659
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3662
  store i8* %139, i8** %140, align 8, !dbg !3663, !tbaa !630
  %141 = icmp eq i8* %139, null, !dbg !3664
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3648, metadata !623), !dbg !3658
  %142 = select i1 %141, i64 9, i64 10, !dbg !3665
  br label %30, !dbg !3665
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3668 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3672, metadata !623), !dbg !3682
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3673, metadata !623), !dbg !3683
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3674, metadata !623), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3675, metadata !623), !dbg !3685
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3686
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3686
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3676, metadata !623), !dbg !3687
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3688
  call void @llvm.va_start(i8* nonnull %6), !dbg !3688
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3689
  call void @llvm.va_end(i8* nonnull %6), !dbg !3690
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3691
  ret void, !dbg !3691
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3692 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.97, i64 0, i64 0), i32 5) #11, !dbg !3693
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.98, i64 0, i64 0)) #11, !dbg !3693
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.99, i64 0, i64 0), i32 5) #11, !dbg !3694
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.100, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.101, i64 0, i64 0)) #11, !dbg !3694
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.102, i64 0, i64 0), i32 5) #11, !dbg !3695
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3695, !tbaa !630
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3695
  ret void, !dbg !3696
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3697 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3701, metadata !623), !dbg !3703
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3702, metadata !623), !dbg !3704
  %3 = udiv i64 9223372036854775807, %1, !dbg !3705
  %4 = icmp ult i64 %3, %0, !dbg !3705
  br i1 %4, label %5, label %6, !dbg !3707

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3708
  unreachable, !dbg !3708

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3709
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3710, metadata !623) #11, !dbg !3717
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3719
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3716, metadata !623) #11, !dbg !3720
  %9 = icmp eq i8* %8, null, !dbg !3721
  %10 = icmp ne i64 %7, 0, !dbg !3723
  %11 = and i1 %10, %9, !dbg !3724
  br i1 %11, label %12, label %13, !dbg !3724

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !3725
  unreachable, !dbg !3725

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3726
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3711 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3710, metadata !623), !dbg !3727
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3728
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3716, metadata !623), !dbg !3729
  %3 = icmp eq i8* %2, null, !dbg !3730
  %4 = icmp ne i64 %0, 0, !dbg !3731
  %5 = and i1 %4, %3, !dbg !3732
  br i1 %5, label %6, label %7, !dbg !3732

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3733
  unreachable, !dbg !3733

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3734
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3735 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3739, metadata !623), !dbg !3742
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3740, metadata !623), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3741, metadata !623), !dbg !3744
  %4 = udiv i64 9223372036854775807, %2, !dbg !3745
  %5 = icmp ult i64 %4, %1, !dbg !3745
  br i1 %5, label %6, label %7, !dbg !3747

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !3748
  unreachable, !dbg !3748

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3749
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3750, metadata !623) #11, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3755, metadata !623) #11, !dbg !3758
  %9 = icmp eq i64 %8, 0, !dbg !3759
  %10 = icmp ne i8* %0, null, !dbg !3761
  %11 = and i1 %10, %9, !dbg !3762
  br i1 %11, label %12, label %13, !dbg !3762

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3763
  br label %19, !dbg !3765

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3766
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3750, metadata !623) #11, !dbg !3756
  %15 = icmp eq i8* %14, null, !dbg !3767
  %16 = icmp ne i64 %8, 0, !dbg !3769
  %17 = and i1 %16, %15, !dbg !3770
  br i1 %17, label %18, label %19, !dbg !3770

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3771
  unreachable, !dbg !3771

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3772
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3751 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3750, metadata !623), !dbg !3773
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3755, metadata !623), !dbg !3774
  %3 = icmp eq i64 %1, 0, !dbg !3775
  %4 = icmp ne i8* %0, null, !dbg !3776
  %5 = and i1 %4, %3, !dbg !3777
  br i1 %5, label %6, label %7, !dbg !3777

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3778
  br label %13, !dbg !3779

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3780
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3750, metadata !623), !dbg !3773
  %9 = icmp eq i8* %8, null, !dbg !3781
  %10 = icmp ne i64 %1, 0, !dbg !3782
  %11 = and i1 %10, %9, !dbg !3783
  br i1 %11, label %12, label %13, !dbg !3783

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3784
  unreachable, !dbg !3784

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3785
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !568 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !573, metadata !623), !dbg !3786
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !574, metadata !623), !dbg !3787
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !575, metadata !623), !dbg !3788
  %4 = load i64, i64* %1, align 8, !dbg !3789, !tbaa !874
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !576, metadata !623), !dbg !3790
  %5 = icmp eq i8* %0, null, !dbg !3791
  br i1 %5, label %6, label %13, !dbg !3793

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3794
  br i1 %7, label %8, label %17, !dbg !3797

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3798
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !576, metadata !623), !dbg !3790
  %10 = icmp ugt i64 %2, 128, !dbg !3800
  %11 = zext i1 %10 to i64, !dbg !3800
  %12 = add nuw nsw i64 %9, %11, !dbg !3801
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !576, metadata !623), !dbg !3790
  br label %17, !dbg !3802

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3803
  %15 = icmp ugt i64 %14, %4, !dbg !3806
  br i1 %15, label %20, label %16, !dbg !3807

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3808
  unreachable, !dbg !3808

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !576, metadata !623), !dbg !3790
  store i64 %18, i64* %1, align 8, !dbg !3809, !tbaa !874
  %19 = mul i64 %18, %2, !dbg !3810
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3750, metadata !623) #11, !dbg !3811
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3755, metadata !623) #11, !dbg !3813
  br label %27, !dbg !3814

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3815
  %22 = add i64 %4, 1, !dbg !3816
  %23 = add i64 %22, %21, !dbg !3817
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !576, metadata !623), !dbg !3790
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !576, metadata !623), !dbg !3790
  store i64 %23, i64* %1, align 8, !dbg !3809, !tbaa !874
  %24 = mul i64 %23, %2, !dbg !3810
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3750, metadata !623) #11, !dbg !3811
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3755, metadata !623) #11, !dbg !3813
  %25 = icmp eq i64 %24, 0, !dbg !3818
  br i1 %25, label %26, label %27, !dbg !3814

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3819
  br label %34, !dbg !3820

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3821
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3750, metadata !623) #11, !dbg !3811
  %30 = icmp eq i8* %29, null, !dbg !3822
  %31 = icmp ne i64 %28, 0, !dbg !3823
  %32 = and i1 %31, %30, !dbg !3824
  br i1 %32, label %33, label %34, !dbg !3824

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #16, !dbg !3825
  unreachable, !dbg !3825

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3826
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !3827 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3829, metadata !623), !dbg !3830
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3710, metadata !623) #11, !dbg !3831
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3833
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3716, metadata !623) #11, !dbg !3834
  %3 = icmp eq i8* %2, null, !dbg !3835
  %4 = icmp ne i64 %0, 0, !dbg !3836
  %5 = and i1 %4, %3, !dbg !3837
  br i1 %5, label %6, label %7, !dbg !3837

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3838
  unreachable, !dbg !3838

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3839
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3840 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3844, metadata !623), !dbg !3846
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3845, metadata !623), !dbg !3847
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !573, metadata !623) #11, !dbg !3848
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !574, metadata !623) #11, !dbg !3850
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !575, metadata !623) #11, !dbg !3851
  %3 = load i64, i64* %1, align 8, !dbg !3852, !tbaa !874
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !576, metadata !623) #11, !dbg !3853
  %4 = icmp eq i8* %0, null, !dbg !3854
  br i1 %4, label %5, label %8, !dbg !3855

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3856
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !576, metadata !623) #11, !dbg !3853
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !576, metadata !623) #11, !dbg !3853
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3857
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !576, metadata !623) #11, !dbg !3853
  store i64 %7, i64* %1, align 8, !dbg !3858, !tbaa !874
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3750, metadata !623) #11, !dbg !3859
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3755, metadata !623) #11, !dbg !3861
  br label %17, !dbg !3862

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3863
  br i1 %9, label %11, label %10, !dbg !3864

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #16, !dbg !3865
  unreachable, !dbg !3865

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3866
  %13 = add i64 %3, 1, !dbg !3867
  %14 = add i64 %13, %12, !dbg !3868
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !576, metadata !623) #11, !dbg !3853
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !576, metadata !623) #11, !dbg !3853
  store i64 %14, i64* %1, align 8, !dbg !3858, !tbaa !874
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3750, metadata !623) #11, !dbg !3859
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3755, metadata !623) #11, !dbg !3861
  %15 = icmp eq i64 %14, 0, !dbg !3869
  br i1 %15, label %16, label %17, !dbg !3862

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3870
  br label %24, !dbg !3871

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3872
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3750, metadata !623) #11, !dbg !3859
  %20 = icmp eq i8* %19, null, !dbg !3873
  %21 = icmp ne i64 %18, 0, !dbg !3874
  %22 = and i1 %21, %20, !dbg !3875
  br i1 %22, label %23, label %24, !dbg !3875

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #16, !dbg !3876
  unreachable, !dbg !3876

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3877
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3878 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3880, metadata !623), !dbg !3881
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3710, metadata !623) #11, !dbg !3882
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3884
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3716, metadata !623) #11, !dbg !3885
  %3 = icmp eq i8* %2, null, !dbg !3886
  %4 = icmp ne i64 %0, 0, !dbg !3887
  %5 = and i1 %4, %3, !dbg !3888
  br i1 %5, label %6, label %7, !dbg !3888

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3889
  unreachable, !dbg !3889

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3890
  ret i8* %2, !dbg !3891
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3892 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3894, metadata !623), !dbg !3897
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3895, metadata !623), !dbg !3898
  %3 = udiv i64 9223372036854775807, %1, !dbg !3899
  %4 = icmp ult i64 %3, %0, !dbg !3899
  br i1 %4, label %8, label %5, !dbg !3901

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3902
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3896, metadata !623), !dbg !3903
  %7 = icmp eq i8* %6, null, !dbg !3904
  br i1 %7, label %8, label %9, !dbg !3905

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !3906
  unreachable, !dbg !3906

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3907
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3908 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3914, metadata !623), !dbg !3916
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3915, metadata !623), !dbg !3917
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3710, metadata !623) #11, !dbg !3918
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3920
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3716, metadata !623) #11, !dbg !3921
  %4 = icmp eq i8* %3, null, !dbg !3922
  %5 = icmp ne i64 %1, 0, !dbg !3923
  %6 = and i1 %5, %4, !dbg !3924
  br i1 %6, label %7, label %8, !dbg !3924

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3925
  unreachable, !dbg !3925

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3926
  ret i8* %3, !dbg !3927
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3928 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3930, metadata !623), !dbg !3931
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !3932
  %3 = add i64 %2, 1, !dbg !3933
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3914, metadata !623) #11, !dbg !3934
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3915, metadata !623) #11, !dbg !3936
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3710, metadata !623) #11, !dbg !3937
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3939
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3716, metadata !623) #11, !dbg !3940
  %5 = icmp eq i8* %4, null, !dbg !3941
  %6 = icmp ne i64 %3, 0, !dbg !3942
  %7 = and i1 %6, %5, !dbg !3943
  br i1 %7, label %8, label %9, !dbg !3943

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3944
  unreachable, !dbg !3944

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3945
  ret i8* %4, !dbg !3946
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3947 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3949, !tbaa !818
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #11, !dbg !3950
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #11, !dbg !3951
  tail call void @abort() #16, !dbg !3952
  unreachable, !dbg !3952
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3953 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3958, metadata !623), !dbg !3968
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3959, metadata !623), !dbg !3969
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3960, metadata !623), !dbg !3970
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3961, metadata !623), !dbg !3971
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3962, metadata !623), !dbg !3972
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3963, metadata !623), !dbg !3973
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3964, metadata !623), !dbg !3974
  %9 = bitcast i64* %8 to i8*, !dbg !3975
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !3975
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !3967, metadata !623), !dbg !3976
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #11, !dbg !3977
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3965, metadata !623), !dbg !3978
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ], !dbg !3979

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #18, !dbg !3980
  br label %26, !dbg !3979

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3983, !tbaa !874
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3967, metadata !623), !dbg !3976
  %15 = icmp ult i64 %14, %2, !dbg !3987
  %16 = icmp ugt i64 %14, %3, !dbg !3988
  %17 = or i1 %15, %16, !dbg !3989
  br i1 %17, label %18, label %35, !dbg !3989

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3965, metadata !623), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3967, metadata !623), !dbg !3976
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3990
  %20 = tail call i32* @__errno_location() #18, !dbg !3993
  %21 = select i1 %19, i32 75, i32 34, !dbg !3994
  store i32 %21, i32* %20, align 4, !tbaa !818
  br label %26, !dbg !3995

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #18, !dbg !3996
  store i32 75, i32* %23, align 4, !dbg !3998, !tbaa !818
  br label %26, !dbg !3996

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #18, !dbg !3999
  store i32 0, i32* %25, align 4, !dbg !4001, !tbaa !818
  br label %26, !dbg !3999

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ], !dbg !3980
  %28 = icmp eq i32 %6, 0, !dbg !4002
  %29 = select i1 %28, i32 1, i32 %6, !dbg !4002
  %30 = load i32, i32* %27, align 4, !dbg !3980, !tbaa !818
  %31 = icmp eq i32 %30, 22, !dbg !4003
  %32 = select i1 %31, i32 0, i32 %30, !dbg !3980
  %33 = call i8* @quote(i8* %0) #11, !dbg !4004
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0), i8* %5, i8* %33) #11, !dbg !4005
  %34 = load i64, i64* %8, align 8, !dbg !4006, !tbaa !874
  br label %35, !dbg !4007

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ], !dbg !4006
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !3967, metadata !623), !dbg !3976
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !4008
  ret i64 %36, !dbg !4009
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4010 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4014, metadata !623), !dbg !4020
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4015, metadata !623), !dbg !4021
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4016, metadata !623), !dbg !4022
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4017, metadata !623), !dbg !4023
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4018, metadata !623), !dbg !4024
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4019, metadata !623), !dbg !4025
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4026
  ret i64 %7, !dbg !4027
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4028 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4034, metadata !623), !dbg !4052
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4035, metadata !623), !dbg !4053
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4036, metadata !623), !dbg !4054
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4037, metadata !623), !dbg !4055
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4038, metadata !623), !dbg !4056
  %7 = bitcast i8** %6 to i8*, !dbg !4057
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4057
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4042, metadata !623), !dbg !4058
  %8 = icmp ult i32 %2, 37, !dbg !4059
  br i1 %8, label %10, label %9, !dbg !4059

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.120, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.121, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #16, !dbg !4059
  unreachable, !dbg !4059

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4062
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4040, metadata !623), !dbg !4063
  %12 = tail call i32* @__errno_location() #18, !dbg !4064
  store i32 0, i32* %12, align 4, !dbg !4065, !tbaa !818
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4043, metadata !623), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4046, metadata !1426), !dbg !4067
  %13 = tail call i16** @__ctype_b_loc() #18, !dbg !4068
  %14 = load i16*, i16** %13, align 8, !tbaa !630
  br label %15, !dbg !4069

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !885
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !4046, metadata !623), !dbg !4067
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4043, metadata !623), !dbg !4066
  %18 = zext i8 %17 to i64, !dbg !4068
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4068
  %20 = load i16, i16* %19, align 2, !dbg !4068, !tbaa !2298
  %21 = and i16 %20, 8192, !dbg !4068
  %22 = icmp eq i16 %21, 0, !dbg !4069
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4070
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4043, metadata !623), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4046, metadata !1426), !dbg !4067
  br i1 %22, label %24, label %15, !dbg !4069, !llvm.loop !4071

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4062
  %26 = icmp eq i8 %17, 45, !dbg !4073
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4075, metadata !623) #11, !dbg !4084
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4082, metadata !623) #11, !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4083, metadata !623) #11, !dbg !4084
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #11, !dbg !4086
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4041, metadata !623), !dbg !4087
  %29 = load i8*, i8** %25, align 8, !dbg !4088, !tbaa !630
  %30 = icmp eq i8* %29, %0, !dbg !4090
  br i1 %30, label %31, label %40, !dbg !4091

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4092
  br i1 %32, label %265, label %33, !dbg !4095

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4096, !tbaa !885
  %35 = icmp eq i8 %34, 0, !dbg !4096
  br i1 %35, label %265, label %36, !dbg !4097

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4096
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #15, !dbg !4098
  %39 = icmp eq i8* %38, null, !dbg !4098
  br i1 %39, label %265, label %47, !dbg !4099

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4100, !tbaa !818
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4102

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4042, metadata !623), !dbg !4058
  br label %43, !dbg !4103

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !4042, metadata !623), !dbg !4058
  %45 = icmp eq i8* %4, null, !dbg !4105
  br i1 %45, label %46, label %47, !dbg !4107

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4041, metadata !623), !dbg !4087
  store i64 %28, i64* %3, align 8, !dbg !4108, !tbaa !874
  br label %265, !dbg !4110

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4111, !tbaa !885
  %51 = sext i8 %50 to i32, !dbg !4111
  %52 = icmp eq i8 %50, 0, !dbg !4112
  br i1 %52, label %262, label %53, !dbg !4113

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4047, metadata !623), !dbg !4114
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4050, metadata !623), !dbg !4115
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #15, !dbg !4116
  %55 = icmp eq i8* %54, null, !dbg !4116
  br i1 %55, label %56, label %58, !dbg !4118

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4041, metadata !623), !dbg !4087
  store i64 %49, i64* %3, align 8, !dbg !4119, !tbaa !874
  %57 = or i32 %48, 2, !dbg !4121
  br label %265, !dbg !4122

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
  ], !dbg !4123

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #15, !dbg !4124
  %61 = icmp eq i8* %60, null, !dbg !4124
  br i1 %61, label %72, label %62, !dbg !4127

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4128
  %64 = load i8, i8* %63, align 1, !dbg !4128, !tbaa !885
  %65 = sext i8 %64 to i32, !dbg !4128
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4129

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4130
  %68 = load i8, i8* %67, align 1, !dbg !4130, !tbaa !885
  %69 = icmp eq i8 %68, 66, !dbg !4133
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4050, metadata !623), !dbg !4115
  %70 = select i1 %69, i64 3, i64 1, !dbg !4134
  br label %72, !dbg !4134

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4047, metadata !623), !dbg !4114
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4050, metadata !623), !dbg !4115
  br label %72, !dbg !4135

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
  ], !dbg !4136

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4137, metadata !623), !dbg !4143
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4146
  %77 = shl i64 %49, 9, !dbg !4148
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4149
  %79 = zext i1 %76 to i32, !dbg !4149
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4051, metadata !623), !dbg !4150
  br label %253, !dbg !4151

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4137, metadata !623), !dbg !4152
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4154
  %82 = shl i64 %49, 10, !dbg !4155
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4156
  %84 = zext i1 %81 to i32, !dbg !4156
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4051, metadata !623), !dbg !4150
  br label %253, !dbg !4157

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4166
  %86 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4168
  %87 = icmp ult i64 %86, %49, !dbg !4169
  %88 = mul i64 %49, %73, !dbg !4171
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4172
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4168
  %90 = icmp ult i64 %86, %89, !dbg !4169
  %91 = mul i64 %89, %73, !dbg !4171
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4172
  %93 = or i1 %87, %90, !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4168
  %94 = icmp ult i64 %86, %92, !dbg !4169
  %95 = mul i64 %92, %73, !dbg !4171
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4172
  %97 = or i1 %93, %94, !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4168
  %98 = icmp ult i64 %86, %96, !dbg !4169
  %99 = mul i64 %96, %73, !dbg !4171
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4172
  %101 = or i1 %97, %98, !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4168
  %102 = icmp ult i64 %86, %100, !dbg !4169
  %103 = mul i64 %100, %73, !dbg !4171
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4172
  %105 = or i1 %101, %102, !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4168
  %106 = icmp ult i64 %86, %104, !dbg !4169
  %107 = mul i64 %104, %73, !dbg !4171
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4172
  %109 = or i1 %105, %106, !dbg !4173
  %110 = zext i1 %109 to i32, !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4166
  br label %253, !dbg !4174

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4177
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4177
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4175
  %112 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4177
  %113 = icmp ult i64 %112, %49, !dbg !4178
  %114 = mul i64 %49, %73, !dbg !4180
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4158, metadata !623), !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4158, metadata !623), !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4177
  %116 = icmp ult i64 %112, %115, !dbg !4178
  %117 = mul i64 %115, %73, !dbg !4180
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4181
  %119 = or i1 %113, %116, !dbg !4182
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4158, metadata !623), !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4158, metadata !623), !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4177
  %120 = icmp ult i64 %112, %118, !dbg !4178
  %121 = mul i64 %118, %73, !dbg !4180
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4181
  %123 = or i1 %119, %120, !dbg !4182
  %124 = zext i1 %123 to i32, !dbg !4182
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4158, metadata !623), !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4158, metadata !623), !dbg !4175
  br label %253, !dbg !4174

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4158, metadata !623), !dbg !4183
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4185
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4185
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4158, metadata !623), !dbg !4183
  %126 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4158, metadata !623), !dbg !4183
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4185
  %127 = icmp ult i64 %126, %49, !dbg !4186
  %128 = mul i64 %49, %73, !dbg !4188
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4189
  %130 = zext i1 %127 to i32, !dbg !4189
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4165, metadata !623), !dbg !4185
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4165, metadata !623), !dbg !4185
  br label %253, !dbg !4174

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4158, metadata !623), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4192
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4192
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4158, metadata !623), !dbg !4190
  %132 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4158, metadata !623), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4192
  %133 = icmp ult i64 %132, %49, !dbg !4193
  %134 = mul i64 %49, %73, !dbg !4195
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4196
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4158, metadata !623), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4158, metadata !623), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4158, metadata !623), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4192
  %136 = icmp ult i64 %132, %135, !dbg !4193
  %137 = mul i64 %135, %73, !dbg !4195
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4196
  %139 = or i1 %133, %136, !dbg !4197
  %140 = zext i1 %139 to i32, !dbg !4197
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4158, metadata !623), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4158, metadata !623), !dbg !4190
  br label %253, !dbg !4174

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4200
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4198
  %142 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4200
  %143 = icmp ult i64 %142, %49, !dbg !4201
  %144 = mul i64 %49, %73, !dbg !4203
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4204
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4200
  %146 = icmp ult i64 %142, %145, !dbg !4201
  %147 = mul i64 %145, %73, !dbg !4203
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4204
  %149 = or i1 %143, %146, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4200
  %150 = icmp ult i64 %142, %148, !dbg !4201
  %151 = mul i64 %148, %73, !dbg !4203
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4204
  %153 = or i1 %149, %150, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4200
  %154 = icmp ult i64 %142, %152, !dbg !4201
  %155 = mul i64 %152, %73, !dbg !4203
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4204
  %157 = or i1 %153, %154, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4200
  %158 = icmp ult i64 %142, %156, !dbg !4201
  %159 = mul i64 %156, %73, !dbg !4203
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4204
  %161 = or i1 %157, %158, !dbg !4205
  %162 = zext i1 %161 to i32, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4198
  br label %253, !dbg !4174

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4208
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4208
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4206
  %164 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4208
  %165 = icmp ult i64 %164, %49, !dbg !4209
  %166 = mul i64 %49, %73, !dbg !4211
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4212
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4208
  %168 = icmp ult i64 %164, %167, !dbg !4209
  %169 = mul i64 %167, %73, !dbg !4211
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4212
  %171 = or i1 %165, %168, !dbg !4213
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4208
  %172 = icmp ult i64 %164, %170, !dbg !4209
  %173 = mul i64 %170, %73, !dbg !4211
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4212
  %175 = or i1 %171, %172, !dbg !4213
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4158, metadata !623), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4208
  %176 = icmp ult i64 %164, %174, !dbg !4209
  %177 = mul i64 %174, %73, !dbg !4211
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4212
  %179 = or i1 %175, %176, !dbg !4213
  %180 = zext i1 %179 to i32, !dbg !4213
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4206
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4158, metadata !623), !dbg !4206
  br label %253, !dbg !4174

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4137, metadata !623), !dbg !4214
  %182 = icmp slt i64 %49, 0, !dbg !4216
  %183 = shl i64 %49, 1, !dbg !4217
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4218
  %185 = lshr i64 %49, 63, !dbg !4218
  %186 = trunc i64 %185 to i32, !dbg !4218
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4051, metadata !623), !dbg !4150
  br label %253, !dbg !4219

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4222
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4222
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4158, metadata !623), !dbg !4220
  %188 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4222
  %189 = icmp ult i64 %188, %49, !dbg !4223
  %190 = mul i64 %49, %73, !dbg !4225
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4226
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4222
  %192 = icmp ult i64 %188, %191, !dbg !4223
  %193 = mul i64 %191, %73, !dbg !4225
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4226
  %195 = or i1 %189, %192, !dbg !4227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4222
  %196 = icmp ult i64 %188, %194, !dbg !4223
  %197 = mul i64 %194, %73, !dbg !4225
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4226
  %199 = or i1 %195, %196, !dbg !4227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4222
  %200 = icmp ult i64 %188, %198, !dbg !4223
  %201 = mul i64 %198, %73, !dbg !4225
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4226
  %203 = or i1 %199, %200, !dbg !4227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4222
  %204 = icmp ult i64 %188, %202, !dbg !4223
  %205 = mul i64 %202, %73, !dbg !4225
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4226
  %207 = or i1 %203, %204, !dbg !4227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4222
  %208 = icmp ult i64 %188, %206, !dbg !4223
  %209 = mul i64 %206, %73, !dbg !4225
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4226
  %211 = or i1 %207, %208, !dbg !4227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4222
  %212 = icmp ult i64 %188, %210, !dbg !4223
  %213 = mul i64 %210, %73, !dbg !4225
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4226
  %215 = or i1 %211, %212, !dbg !4227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4222
  %216 = icmp ult i64 %188, %214, !dbg !4223
  %217 = mul i64 %214, %73, !dbg !4225
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4226
  %219 = or i1 %215, %216, !dbg !4227
  %220 = zext i1 %219 to i32, !dbg !4227
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4220
  br label %253, !dbg !4174

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4230
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4230
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4228
  %222 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4230
  %223 = icmp ult i64 %222, %49, !dbg !4231
  %224 = mul i64 %49, %73, !dbg !4233
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4234
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4230
  %226 = icmp ult i64 %222, %225, !dbg !4231
  %227 = mul i64 %225, %73, !dbg !4233
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4234
  %229 = or i1 %223, %226, !dbg !4235
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4230
  %230 = icmp ult i64 %222, %228, !dbg !4231
  %231 = mul i64 %228, %73, !dbg !4233
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4234
  %233 = or i1 %229, %230, !dbg !4235
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4230
  %234 = icmp ult i64 %222, %232, !dbg !4231
  %235 = mul i64 %232, %73, !dbg !4233
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4234
  %237 = or i1 %233, %234, !dbg !4235
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4230
  %238 = icmp ult i64 %222, %236, !dbg !4231
  %239 = mul i64 %236, %73, !dbg !4233
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4234
  %241 = or i1 %237, %238, !dbg !4235
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4230
  %242 = icmp ult i64 %222, %240, !dbg !4231
  %243 = mul i64 %240, %73, !dbg !4233
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4234
  %245 = or i1 %241, %242, !dbg !4235
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !623), !dbg !4230
  %246 = icmp ult i64 %222, %244, !dbg !4231
  %247 = mul i64 %244, %73, !dbg !4233
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4234
  %249 = or i1 %245, %246, !dbg !4235
  %250 = zext i1 %249 to i32, !dbg !4235
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4158, metadata !623), !dbg !4228
  br label %253, !dbg !4174

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4041, metadata !623), !dbg !4087
  store i64 %49, i64* %3, align 8, !dbg !4236, !tbaa !874
  %252 = or i32 %48, 2, !dbg !4237
  br label %265, !dbg !4238

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !4051, metadata !623), !dbg !4150
  %256 = or i32 %255, %48, !dbg !4174
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !4042, metadata !623), !dbg !4058
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4239
  store i8* %257, i8** %25, align 8, !dbg !4239, !tbaa !630
  %258 = load i8, i8* %257, align 1, !dbg !4240, !tbaa !885
  %259 = icmp eq i8 %258, 0, !dbg !4240
  %260 = or i32 %256, 2, !dbg !4242
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !4042, metadata !623), !dbg !4058
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4243
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4042, metadata !623), !dbg !4058
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4042, metadata !623), !dbg !4058
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !4042, metadata !623), !dbg !4058
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !4041, metadata !623), !dbg !4087
  store i64 %263, i64* %3, align 8, !dbg !4244, !tbaa !874
  br label %265, !dbg !4245

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4246
  ret i32 %266, !dbg !4246
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4247 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4250, metadata !623), !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4251, metadata !623), !dbg !4257
  %3 = icmp eq i64 %0, 0, !dbg !4258
  %4 = icmp eq i64 %1, 0, !dbg !4259
  %5 = or i1 %3, %4, !dbg !4260
  br i1 %5, label %12, label %6, !dbg !4260

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4261
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4253, metadata !623), !dbg !4262
  %8 = udiv i64 %7, %1, !dbg !4263
  %9 = icmp eq i64 %8, %0, !dbg !4265
  br i1 %9, label %12, label %10, !dbg !4266

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #18, !dbg !4267
  store i32 12, i32* %11, align 4, !dbg !4269, !tbaa !818
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4250, metadata !623), !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4251, metadata !623), !dbg !4257
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4270
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4252, metadata !623), !dbg !4271
  br label %16, !dbg !4272

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4273
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4274 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4319, metadata !623), !dbg !4323
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4320, metadata !623), !dbg !4324
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4322, metadata !623), !dbg !4325
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4326
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4321, metadata !623), !dbg !4327
  %3 = icmp slt i32 %2, 0, !dbg !4328
  br i1 %3, label %4, label %6, !dbg !4330

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4331
  br label %24, !dbg !4332

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4333
  %8 = icmp eq i32 %7, 0, !dbg !4333
  br i1 %8, label %13, label %9, !dbg !4335

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4336
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4337
  %12 = icmp eq i64 %11, -1, !dbg !4338
  br i1 %12, label %16, label %13, !dbg !4339

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4340
  %15 = icmp eq i32 %14, 0, !dbg !4340
  br i1 %15, label %16, label %18, !dbg !4341

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4320, metadata !623), !dbg !4324
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4342
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4322, metadata !623), !dbg !4325
  br label %24, !dbg !4343

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #18, !dbg !4344
  %20 = load i32, i32* %19, align 4, !dbg !4344, !tbaa !818
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4320, metadata !623), !dbg !4324
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4320, metadata !623), !dbg !4324
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4342
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4322, metadata !623), !dbg !4325
  %22 = icmp eq i32 %20, 0, !dbg !4345
  br i1 %22, label %24, label %23, !dbg !4343

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4347, !tbaa !818
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4322, metadata !623), !dbg !4325
  br label %24, !dbg !4349

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4350
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4351 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4396, metadata !623), !dbg !4397
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4398
  br i1 %2, label %6, label %3, !dbg !4400

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4401
  %5 = icmp eq i32 %4, 0, !dbg !4401
  br i1 %5, label %6, label %8, !dbg !4402

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4403
  br label %17, !dbg !4404

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4405, metadata !623) #11, !dbg !4410
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4412
  %10 = load i32, i32* %9, align 8, !dbg !4412, !tbaa !912
  %11 = and i32 %10, 256, !dbg !4414
  %12 = icmp eq i32 %11, 0, !dbg !4414
  br i1 %12, label %15, label %13, !dbg !4415

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4416
  br label %15, !dbg !4416

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4417
  br label %17, !dbg !4418

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4419
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4420 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4465, metadata !623), !dbg !4471
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4466, metadata !623), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4467, metadata !623), !dbg !4473
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4474
  %5 = load i8*, i8** %4, align 8, !dbg !4474, !tbaa !4475
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4476
  %7 = load i8*, i8** %6, align 8, !dbg !4476, !tbaa !4477
  %8 = icmp eq i8* %5, %7, !dbg !4478
  br i1 %8, label %9, label %28, !dbg !4479

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4480
  %11 = load i8*, i8** %10, align 8, !dbg !4480, !tbaa !1052
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4481
  %13 = load i8*, i8** %12, align 8, !dbg !4481, !tbaa !4482
  %14 = icmp eq i8* %11, %13, !dbg !4483
  br i1 %14, label %15, label %28, !dbg !4484

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4485
  %17 = load i8*, i8** %16, align 8, !dbg !4485, !tbaa !4486
  %18 = icmp eq i8* %17, null, !dbg !4487
  br i1 %18, label %19, label %28, !dbg !4488

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4489
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4490
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4468, metadata !623), !dbg !4491
  %22 = icmp eq i64 %21, -1, !dbg !4492
  br i1 %22, label %30, label %23, !dbg !4494

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4495
  %25 = load i32, i32* %24, align 8, !dbg !4496, !tbaa !912
  %26 = and i32 %25, -17, !dbg !4496
  store i32 %26, i32* %24, align 8, !dbg !4496, !tbaa !912
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4497
  store i64 %21, i64* %27, align 8, !dbg !4498, !tbaa !4499
  br label %30, !dbg !4500

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4501
  br label %30, !dbg !4502

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4503
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4504 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4521, metadata !623), !dbg !4530
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4522, metadata !623), !dbg !4531
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4523, metadata !623), !dbg !4532
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4524, metadata !623), !dbg !4533
  %6 = bitcast i32* %5 to i8*, !dbg !4534
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4534
  %7 = icmp eq i32* %0, null, !dbg !4535
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4521, metadata !623), !dbg !4530
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4537
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4521, metadata !623), !dbg !4530
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4538
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4525, metadata !623), !dbg !4539
  %10 = icmp ugt i64 %9, -3, !dbg !4540
  %11 = icmp ne i64 %2, 0, !dbg !4541
  %12 = and i1 %11, %10, !dbg !4542
  br i1 %12, label %13, label %18, !dbg !4542

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4543
  br i1 %14, label %18, label %15, !dbg !4544

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4545, !tbaa !885
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4527, metadata !623), !dbg !4546
  %17 = zext i8 %16 to i32, !dbg !4547
  store i32 %17, i32* %8, align 4, !dbg !4548, !tbaa !818
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4549
  ret i64 %19, !dbg !4549
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4550 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4595, metadata !623), !dbg !4600
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4601
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4602, metadata !623), !dbg !4605
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4607
  %4 = load i32, i32* %3, align 8, !dbg !4607, !tbaa !912
  %5 = and i32 %4, 32, !dbg !4607
  %6 = icmp eq i32 %5, 0, !dbg !4608
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4609
  %8 = icmp ne i32 %7, 0, !dbg !4610
  br i1 %6, label %9, label %19, !dbg !4611

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4613
  %11 = xor i1 %8, true, !dbg !4614
  %12 = or i1 %10, %11, !dbg !4614
  %13 = sext i1 %8 to i32, !dbg !4614
  br i1 %12, label %22, label %14, !dbg !4614

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !4615
  %16 = load i32, i32* %15, align 4, !dbg !4615, !tbaa !818
  %17 = icmp ne i32 %16, 9, !dbg !4616
  %18 = sext i1 %17 to i32, !dbg !4617
  br label %22, !dbg !4617

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4618

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !4620
  store i32 0, i32* %21, align 4, !dbg !4622, !tbaa !818
  br label %22, !dbg !4620

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4623
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4624 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4629, metadata !623), !dbg !4632
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4630, metadata !623), !dbg !4633
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4634
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4631, metadata !623), !dbg !4635
  %3 = icmp eq i8* %2, null, !dbg !4636
  br i1 %3, label %11, label %4, !dbg !4638

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0)) #15, !dbg !4639
  %6 = icmp eq i32 %5, 0, !dbg !4644
  br i1 %6, label %10, label %7, !dbg !4645

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i64 0, i64 0)) #15, !dbg !4646
  %9 = icmp eq i32 %8, 0, !dbg !4647
  br i1 %9, label %10, label %11, !dbg !4648

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4630, metadata !623), !dbg !4633
  br label %11, !dbg !4649

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4650
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4651 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4657, metadata !623), !dbg !4731
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4724, metadata !623), !dbg !4734
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4735
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4655, metadata !623), !dbg !4736
  %4 = icmp eq i8* %3, null, !dbg !4737
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), i8* %3, !dbg !4739
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4655, metadata !623), !dbg !4736
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4740, !tbaa !630
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4671, metadata !623) #11, !dbg !4741
  %7 = icmp eq i8* %6, null, !dbg !4742
  br i1 %7, label %8, label %123, !dbg !4743

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.141, i64 0, i64 0)) #11, !dbg !4744
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4672, metadata !623) #11, !dbg !4745
  %10 = icmp eq i8* %9, null, !dbg !4746
  br i1 %10, label %14, label %11, !dbg !4748

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4749, !tbaa !885
  %13 = icmp eq i8 %12, 0, !dbg !4750
  br i1 %13, label %14, label %15, !dbg !4751

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4752

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.142, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4672, metadata !623) #11, !dbg !4745
  %17 = tail call i64 @strlen(i8* nonnull %16) #15, !dbg !4753
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4675, metadata !623) #11, !dbg !4754
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4677, metadata !623) #11, !dbg !4755
  %18 = icmp eq i64 %17, 0, !dbg !4756
  br i1 %18, label %24, label %19, !dbg !4757

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4758
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4758
  %22 = load i8, i8* %21, align 1, !dbg !4758, !tbaa !885
  %23 = icmp ne i8 %22, 47, !dbg !4758
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4759
  %27 = add i64 %17, 14, !dbg !4760
  %28 = add i64 %27, %26, !dbg !4761
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4762
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4674, metadata !623) #11, !dbg !4763
  %30 = icmp eq i8* %29, null, !dbg !4764
  br i1 %30, label %121, label %31, !dbg !4764

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4765
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4768

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4769, !tbaa !885
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4771
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.143, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4772
  br label %37, !dbg !4773

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4771
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.143, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4772
  br label %37, !dbg !4773

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4774
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4679, metadata !623) #11, !dbg !4775
  %39 = icmp slt i32 %38, 0, !dbg !4776
  br i1 %39, label %119, label %40, !dbg !4777

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.144, i64 0, i64 0)) #11, !dbg !4778
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4680, metadata !623) #11, !dbg !4779
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4780
  br i1 %42, label %43, label %45, !dbg !4781

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !4782
  br label %119, !dbg !4784

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4721, metadata !623) #11, !dbg !4785
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4722, metadata !623) #11, !dbg !4786
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4787

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4788

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4721, metadata !623) #11, !dbg !4785
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4722, metadata !623) #11, !dbg !4786
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4788
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4789
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4790, metadata !623) #11, !dbg !4795
  %54 = load i8*, i8** %48, align 8, !dbg !4797, !tbaa !4477
  %55 = load i8*, i8** %49, align 8, !dbg !4797, !tbaa !4475
  %56 = icmp ult i8* %54, %55, !dbg !4797
  br i1 %56, label %59, label %57, !dbg !4797, !prof !1054

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4797
  br label %63, !dbg !4797

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4797
  store i8* %60, i8** %48, align 8, !dbg !4797, !tbaa !4477
  %61 = load i8, i8* %54, align 1, !dbg !4797, !tbaa !885
  %62 = zext i8 %61 to i32, !dbg !4797
  br label %63, !dbg !4797

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4797
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4723, metadata !623) #11, !dbg !4798
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4799, !llvm.loop !4800

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4805

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4790, metadata !623) #11, !dbg !4807
  %67 = load i8*, i8** %48, align 8, !dbg !4805, !tbaa !4477
  %68 = load i8*, i8** %49, align 8, !dbg !4805, !tbaa !4475
  %69 = icmp ult i8* %67, %68, !dbg !4805
  br i1 %69, label %72, label %70, !dbg !4805, !prof !1054

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4805
  br label %76, !dbg !4805

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4805
  store i8* %73, i8** %48, align 8, !dbg !4805, !tbaa !4477
  %74 = load i8, i8* %67, align 1, !dbg !4805, !tbaa !885
  %75 = zext i8 %74 to i32, !dbg !4805
  br label %76, !dbg !4805

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4805
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4723, metadata !623) #11, !dbg !4798
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4808, !llvm.loop !4809

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !4812
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.145, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !4813
  %81 = icmp slt i32 %80, 2, !dbg !4815
  br i1 %81, label %112, label %82, !dbg !4816

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #15, !dbg !4817
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4728, metadata !623) #11, !dbg !4818
  %84 = call i64 @strlen(i8* nonnull %47) #15, !dbg !4819
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4729, metadata !623) #11, !dbg !4820
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4730, metadata !623) #11, !dbg !4821
  %85 = icmp eq i64 %51, 0, !dbg !4822
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4824

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4722, metadata !623) #11, !dbg !4786
  %90 = add i64 %87, 2, !dbg !4825
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !4827
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4721, metadata !623) #11, !dbg !4785
  br label %96, !dbg !4828

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4829
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4722, metadata !623) #11, !dbg !4786
  %94 = add i64 %93, 1, !dbg !4831
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !4832
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4721, metadata !623) #11, !dbg !4785
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4721, metadata !623) #11, !dbg !4785
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4722, metadata !623) #11, !dbg !4786
  %99 = icmp eq i8* %98, null, !dbg !4833
  br i1 %99, label %100, label %102, !dbg !4835

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4722, metadata !623) #11, !dbg !4786
  call void @free(i8* %52) #11, !dbg !4836
  br label %112, !dbg !4838

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4839
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4839
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4840
  %104 = xor i64 %84, -1, !dbg !4841
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4841
  %106 = xor i64 %83, -1, !dbg !4842
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4842
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4843, metadata !623) #11, !dbg !4850
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4849, metadata !623) #11, !dbg !4850
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !4852
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !4853
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4843, metadata !623) #11, !dbg !4854
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4849, metadata !623) #11, !dbg !4854
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !4856
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !4857
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4721, metadata !623) #11, !dbg !4785
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4722, metadata !623) #11, !dbg !4786
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4839
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4839
  br label %50, !dbg !4858, !llvm.loop !4809

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4839
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4839
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4859
  %116 = icmp eq i64 %113, 0, !dbg !4860
  br i1 %116, label %119, label %117, !dbg !4862

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4863
  store i8 0, i8* %118, align 1, !dbg !4865, !tbaa !885
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4671, metadata !623) #11, !dbg !4741
  call void @free(i8* %29) #11, !dbg !4866
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4671, metadata !623) #11, !dbg !4741
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4867, !tbaa !630
  br label %123, !dbg !4868

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4671, metadata !623) #11, !dbg !4741
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4656, metadata !623), !dbg !4869
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4656, metadata !623), !dbg !4869
  %125 = load i8, i8* %124, align 1, !dbg !4870, !tbaa !885
  %126 = icmp eq i8 %125, 0, !dbg !4872
  br i1 %126, label %152, label %127, !dbg !4873

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4874

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4656, metadata !623), !dbg !4869
  %131 = call i32 @strcmp(i8* %5, i8* %130) #15, !dbg !4874
  %132 = icmp eq i32 %131, 0, !dbg !4876
  br i1 %132, label %139, label %133, !dbg !4877

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4878
  br i1 %134, label %135, label %143, !dbg !4879

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4880
  %137 = load i8, i8* %136, align 1, !dbg !4880, !tbaa !885
  %138 = icmp eq i8 %137, 0, !dbg !4881
  br i1 %138, label %139, label %143, !dbg !4882

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #15, !dbg !4883
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4885
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4886
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4655, metadata !623), !dbg !4736
  br label %152, !dbg !4887

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #15, !dbg !4888
  %145 = add i64 %144, 1, !dbg !4889
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4890
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4656, metadata !623), !dbg !4869
  %147 = call i64 @strlen(i8* %146) #15, !dbg !4891
  %148 = add i64 %147, 1, !dbg !4892
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4893
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4656, metadata !623), !dbg !4869
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4656, metadata !623), !dbg !4869
  %150 = load i8, i8* %149, align 1, !dbg !4870, !tbaa !885
  %151 = icmp eq i8 %150, 0, !dbg !4872
  br i1 %151, label %152, label %128, !dbg !4873, !llvm.loop !4894

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4655, metadata !623), !dbg !4736
  %154 = load i8, i8* %153, align 1, !dbg !4896, !tbaa !885
  %155 = icmp eq i8 %154, 0, !dbg !4898
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.146, i64 0, i64 0), i8* %153, !dbg !4899
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4655, metadata !623), !dbg !4736
  ret i8* %156, !dbg !4900
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

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2, !71, !86, !107, !116, !552, !123, !129, !555, !197, !563, !580, !582, !593, !597, !599, !601, !603, !605, !608, !610, !206}
!llvm.ident = !{!612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612}
!llvm.module.flags = !{!613, !614, !615, !616, !617}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 47, type: !56, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !33)
!3 = !DIFile(filename: "src/base64.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!28 = !{!29, !31, !32}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34, !0}
!34 = !DIGlobalVariableExpression(var: !35)
!35 = distinct !DIGlobalVariable(name: "infomap", scope: !36, file: !37, line: 632, type: !53, isLocal: true, isDefinition: true)
!36 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !37, file: !37, line: 630, type: !38, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !42)
!37 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!42 = !{!43, !44, !45, !52}
!43 = !DILocalVariable(name: "program", arg: 1, scope: !36, file: !37, line: 630, type: !40)
!44 = !DILocalVariable(name: "node", scope: !36, file: !37, line: 642, type: !40)
!45 = !DILocalVariable(name: "map_prog", scope: !36, file: !37, line: 643, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !36, file: !37, line: 632, size: 128, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !48, file: !37, line: 632, baseType: !40, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !48, file: !37, line: 632, baseType: !40, size: 64, offset: 64)
!52 = !DILocalVariable(name: "lc_messages", scope: !36, file: !37, line: 655, type: !40)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 896, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 7)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 1536, elements: !67)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !59, line: 50, size: 256, elements: !60)
!59 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!60 = !{!61, !62, !64, !66}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !58, file: !59, line: 52, baseType: !40, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !58, file: !59, line: 55, baseType: !63, size: 32, offset: 64)
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !58, file: !59, line: 56, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !58, file: !59, line: 57, baseType: !63, size: 32, offset: 192)
!67 = !{!68}
!68 = !DISubrange(count: 6)
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "Version", scope: !71, file: !72, line: 2, type: !40, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, globals: !74)
!72 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!73 = !{}
!74 = !{!69}
!75 = !DIGlobalVariableExpression(var: !76)
!76 = distinct !DIGlobalVariable(name: "b32str", scope: !77, file: !78, line: 68, type: !102, isLocal: true, isDefinition: true)
!77 = distinct !DISubprogram(name: "base32_encode", scope: !78, file: !78, line: 65, type: !79, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !97)
!78 = !DIFile(filename: "lib/base32.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81, !82, !85, !82}
!81 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 62, baseType: !84)
!83 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !88, globals: !89)
!87 = !DIFile(filename: "./lib/base32.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{!31, !29}
!89 = !{!75, !90}
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "b32", scope: !86, file: !78, line: 209, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2048, elements: !95)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!95 = !{!96}
!96 = !DISubrange(count: 256)
!97 = !{!98, !99, !100, !101}
!98 = !DILocalVariable(name: "in", arg: 1, scope: !77, file: !78, line: 65, type: !81)
!99 = !DILocalVariable(name: "inlen", arg: 2, scope: !77, file: !78, line: 65, type: !82)
!100 = !DILocalVariable(name: "out", arg: 3, scope: !77, file: !78, line: 66, type: !85)
!101 = !DILocalVariable(name: "outlen", arg: 4, scope: !77, file: !78, line: 66, type: !82)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 32)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "file_name", scope: !107, file: !112, line: 36, type: !40, isLocal: true, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, globals: !109)
!108 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!105, !110}
!110 = !DIGlobalVariableExpression(var: !111)
!111 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !107, file: !112, line: 46, type: !113, isLocal: true, isDefinition: true)
!112 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!113 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!114 = !DIGlobalVariableExpression(var: !115)
!115 = distinct !DIGlobalVariable(name: "exit_failure", scope: !116, file: !119, line: 24, type: !120, isLocal: false, isDefinition: true)
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, globals: !118)
!117 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!118 = !{!114}
!119 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!120 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!121 = !DIGlobalVariableExpression(var: !122)
!122 = distinct !DIGlobalVariable(name: "program_name", scope: !123, file: !126, line: 33, type: !40, isLocal: false, isDefinition: true)
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !88, globals: !125)
!124 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = !{!121}
!126 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !129, file: !157, line: 77, type: !191, isLocal: false, isDefinition: true)
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
!152 = !{!63, !153, !82, !29}
!153 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!154 = !{!127, !155, !162, !175, !177, !180, !187, !189}
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
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !157, line: 63, baseType: !63, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !164, file: !157, line: 67, baseType: !169, size: 256, offset: 64)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 256, elements: !171)
!170 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!171 = !{!172}
!172 = !DISubrange(count: 8)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !164, file: !157, line: 70, baseType: !40, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !164, file: !157, line: 73, baseType: !40, size: 64, offset: 384)
!175 = !DIGlobalVariableExpression(var: !176)
!176 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !129, file: !157, line: 108, type: !164, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "slot0", scope: !129, file: !157, line: 834, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !95)
!180 = !DIGlobalVariableExpression(var: !181)
!181 = distinct !DIGlobalVariable(name: "slotvec", scope: !129, file: !157, line: 837, type: !182, isLocal: true, isDefinition: true)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !157, line: 826, size: 128, elements: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !183, file: !157, line: 828, baseType: !82, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !183, file: !157, line: 829, baseType: !29, size: 64, offset: 64)
!187 = !DIGlobalVariableExpression(var: !188)
!188 = distinct !DIGlobalVariable(name: "nslots", scope: !129, file: !157, line: 835, type: !63, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "slotvec0", scope: !129, file: !157, line: 836, type: !183, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 704, elements: !193)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!193 = !{!194}
!194 = !DISubrange(count: 11)
!195 = !DIGlobalVariableExpression(var: !196)
!196 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !197, file: !200, line: 26, type: !201, isLocal: false, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, globals: !199)
!198 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!199 = !{!195}
!200 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 376, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 47)
!204 = !DIGlobalVariableExpression(var: !205)
!205 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !206, file: !550, line: 120, type: !551, isLocal: true, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !208, retainedTypes: !547, globals: !549)
!207 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!208 = !{!209}
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !210, line: 41, size: 32, elements: !211)
!210 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546}
!212 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!213 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!214 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!215 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!216 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!217 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!218 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!219 = !DIEnumerator(name: "DAY_1", value: 131079)
!220 = !DIEnumerator(name: "DAY_2", value: 131080)
!221 = !DIEnumerator(name: "DAY_3", value: 131081)
!222 = !DIEnumerator(name: "DAY_4", value: 131082)
!223 = !DIEnumerator(name: "DAY_5", value: 131083)
!224 = !DIEnumerator(name: "DAY_6", value: 131084)
!225 = !DIEnumerator(name: "DAY_7", value: 131085)
!226 = !DIEnumerator(name: "ABMON_1", value: 131086)
!227 = !DIEnumerator(name: "ABMON_2", value: 131087)
!228 = !DIEnumerator(name: "ABMON_3", value: 131088)
!229 = !DIEnumerator(name: "ABMON_4", value: 131089)
!230 = !DIEnumerator(name: "ABMON_5", value: 131090)
!231 = !DIEnumerator(name: "ABMON_6", value: 131091)
!232 = !DIEnumerator(name: "ABMON_7", value: 131092)
!233 = !DIEnumerator(name: "ABMON_8", value: 131093)
!234 = !DIEnumerator(name: "ABMON_9", value: 131094)
!235 = !DIEnumerator(name: "ABMON_10", value: 131095)
!236 = !DIEnumerator(name: "ABMON_11", value: 131096)
!237 = !DIEnumerator(name: "ABMON_12", value: 131097)
!238 = !DIEnumerator(name: "MON_1", value: 131098)
!239 = !DIEnumerator(name: "MON_2", value: 131099)
!240 = !DIEnumerator(name: "MON_3", value: 131100)
!241 = !DIEnumerator(name: "MON_4", value: 131101)
!242 = !DIEnumerator(name: "MON_5", value: 131102)
!243 = !DIEnumerator(name: "MON_6", value: 131103)
!244 = !DIEnumerator(name: "MON_7", value: 131104)
!245 = !DIEnumerator(name: "MON_8", value: 131105)
!246 = !DIEnumerator(name: "MON_9", value: 131106)
!247 = !DIEnumerator(name: "MON_10", value: 131107)
!248 = !DIEnumerator(name: "MON_11", value: 131108)
!249 = !DIEnumerator(name: "MON_12", value: 131109)
!250 = !DIEnumerator(name: "AM_STR", value: 131110)
!251 = !DIEnumerator(name: "PM_STR", value: 131111)
!252 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!253 = !DIEnumerator(name: "D_FMT", value: 131113)
!254 = !DIEnumerator(name: "T_FMT", value: 131114)
!255 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!256 = !DIEnumerator(name: "ERA", value: 131116)
!257 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!258 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!259 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!260 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!261 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!262 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!263 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!264 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!265 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!266 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!267 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!268 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!269 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!270 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!271 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!272 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!273 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!274 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!275 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!276 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!277 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!278 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!279 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!280 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!281 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!282 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!283 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!284 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!285 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!286 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!287 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!288 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!289 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!290 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!291 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!292 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!293 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!294 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!295 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!296 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!297 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!298 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!299 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!300 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!301 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!302 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!303 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!304 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!305 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!306 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!307 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!308 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!309 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!310 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!311 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!312 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!313 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!314 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!315 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!316 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!317 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!318 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!319 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!320 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!321 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!322 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!323 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!324 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!325 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!326 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!327 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!328 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!329 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!330 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!331 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!332 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!333 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!334 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!335 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!336 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!337 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!338 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!339 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!340 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!341 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!342 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!343 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!344 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!345 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!346 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!347 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!348 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!349 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!350 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!351 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!352 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!353 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!354 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!355 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!356 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!357 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!358 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!359 = !DIEnumerator(name: "CODESET", value: 14)
!360 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!361 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!362 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!363 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!406 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!407 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!408 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!409 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!410 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!411 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!412 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!413 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!414 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!415 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!416 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!425 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!431 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!432 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!433 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!434 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!435 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!436 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!437 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!438 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!439 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!440 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!441 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!442 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!443 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!444 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!445 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!446 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!447 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!448 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!449 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!450 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!451 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!452 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!453 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!470 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!471 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!474 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!475 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!476 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!477 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!478 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!479 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!480 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!481 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!482 = !DIEnumerator(name: "THOUSEP", value: 65537)
!483 = !DIEnumerator(name: "__GROUPING", value: 65538)
!484 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!485 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!486 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!487 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!488 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!489 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!490 = !DIEnumerator(name: "__YESSTR", value: 327682)
!491 = !DIEnumerator(name: "__NOSTR", value: 327683)
!492 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!493 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!494 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!495 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!496 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!497 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!498 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!499 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!500 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!501 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!502 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!503 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!504 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!505 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!506 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!507 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!508 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!509 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!510 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!511 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!512 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!513 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!514 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!515 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!516 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!517 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!518 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!519 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!520 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!521 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!522 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!523 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!524 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!525 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!526 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!527 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!528 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!545 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!546 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!547 = !{!31, !29, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!549 = !{!204}
!550 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !554)
!553 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !{!19}
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !557, retainedTypes: !562)
!556 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = !{!558}
!558 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !559, line: 41, size: 32, elements: !560)
!559 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = !{!561}
!561 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!562 = !{!31}
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !565, retainedTypes: !579)
!564 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = !{!566}
!566 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !568, file: !567, line: 192, size: 32, elements: !577)
!567 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = distinct !DISubprogram(name: "x2nrealloc", scope: !567, file: !567, line: 180, type: !569, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !572)
!569 = !DISubroutineType(types: !570)
!570 = !{!31, !31, !571, !82}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!572 = !{!573, !574, !575, !576}
!573 = !DILocalVariable(name: "p", arg: 1, scope: !568, file: !567, line: 180, type: !31)
!574 = !DILocalVariable(name: "pn", arg: 2, scope: !568, file: !567, line: 180, type: !571)
!575 = !DILocalVariable(name: "s", arg: 3, scope: !568, file: !567, line: 180, type: !82)
!576 = !DILocalVariable(name: "n", scope: !568, file: !567, line: 182, type: !82)
!577 = !{!578}
!578 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!579 = !{!82, !29, !31}
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73)
!581 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !584)
!583 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = !{!585}
!585 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !586, line: 26, size: 32, elements: !587)
!586 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = !{!588, !589, !590, !591, !592}
!588 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!589 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!590 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!591 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!592 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !595, retainedTypes: !596)
!594 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!595 = !{!585, !137}
!596 = !{!63, !153}
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !562)
!598 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = distinct !DICompileUnit(language: DW_LANG_C99, file: !600, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73)
!600 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !602, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !562)
!602 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !562)
!604 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !607)
!606 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!607 = !{!82}
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73)
!609 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73)
!611 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!613 = !{i32 2, !"Dwarf Version", i32 4}
!614 = !{i32 2, !"Debug Info Version", i32 3}
!615 = !{i32 1, !"wchar_size", i32 4}
!616 = !{i32 7, !"PIC Level", i32 2}
!617 = !{i32 7, !"PIE Level", i32 2}
!618 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !619, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !621)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !63}
!621 = !{!622}
!622 = !DILocalVariable(name: "status", arg: 1, scope: !618, file: !3, line: 59, type: !63)
!623 = !DIExpression()
!624 = !DILocation(line: 59, column: 12, scope: !618)
!625 = !DILocation(line: 61, column: 14, scope: !626)
!626 = distinct !DILexicalBlock(scope: !618, file: !3, line: 61, column: 7)
!627 = !DILocation(line: 61, column: 7, scope: !618)
!628 = !DILocation(line: 62, column: 5, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !3, line: 62, column: 5)
!630 = !{!631, !631, i64 0}
!631 = !{!"any pointer", !632, i64 0}
!632 = !{!"omnipotent char", !633, i64 0}
!633 = !{!"Simple C/C++ TBAA"}
!634 = !DILocation(line: 65, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !626, file: !3, line: 64, column: 5)
!636 = !DILocation(line: 580, column: 3, scope: !637, inlinedAt: !640)
!637 = distinct !DISubprogram(name: "emit_stdin_note", scope: !37, file: !37, line: 578, type: !638, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !73)
!638 = !DISubroutineType(types: !639)
!639 = !{null}
!640 = distinct !DILocation(line: 70, column: 7, scope: !635)
!641 = !DILocation(line: 587, column: 3, scope: !642, inlinedAt: !643)
!642 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !37, file: !37, line: 585, type: !638, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !73)
!643 = distinct !DILocation(line: 71, column: 7, scope: !635)
!644 = !DILocation(line: 73, column: 7, scope: !635)
!645 = !DILocation(line: 80, column: 7, scope: !635)
!646 = !DILocation(line: 81, column: 7, scope: !635)
!647 = !DILocation(line: 82, column: 7, scope: !635)
!648 = !DILocation(line: 642, column: 15, scope: !36, inlinedAt: !649)
!649 = distinct !DILocation(line: 89, column: 7, scope: !635)
!650 = !DILocation(line: 651, column: 3, scope: !36, inlinedAt: !649)
!651 = !DILocation(line: 655, column: 29, scope: !36, inlinedAt: !649)
!652 = !DILocation(line: 655, column: 15, scope: !36, inlinedAt: !649)
!653 = !DILocation(line: 656, column: 7, scope: !654, inlinedAt: !649)
!654 = distinct !DILexicalBlock(scope: !36, file: !37, line: 656, column: 7)
!655 = !DILocation(line: 656, column: 19, scope: !654, inlinedAt: !649)
!656 = !DILocation(line: 656, column: 22, scope: !654, inlinedAt: !649)
!657 = !DILocation(line: 656, column: 7, scope: !36, inlinedAt: !649)
!658 = !DILocation(line: 662, column: 7, scope: !659, inlinedAt: !649)
!659 = distinct !DILexicalBlock(scope: !654, file: !37, line: 657, column: 5)
!660 = !DILocation(line: 664, column: 5, scope: !659, inlinedAt: !649)
!661 = !DILocation(line: 665, column: 3, scope: !36, inlinedAt: !649)
!662 = !DILocation(line: 667, column: 3, scope: !36, inlinedAt: !649)
!663 = !DILocation(line: 92, column: 3, scope: !618)
!664 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 264, type: !665, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !668)
!665 = !DISubroutineType(types: !666)
!666 = !{!63, !63, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!668 = !{!669, !670, !671, !672, !727, !728, !729, !730}
!669 = !DILocalVariable(name: "argc", arg: 1, scope: !664, file: !3, line: 264, type: !63)
!670 = !DILocalVariable(name: "argv", arg: 2, scope: !664, file: !3, line: 264, type: !667)
!671 = !DILocalVariable(name: "opt", scope: !664, file: !3, line: 266, type: !63)
!672 = !DILocalVariable(name: "input_fh", scope: !664, file: !3, line: 267, type: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !675, line: 7, baseType: !676)
!675 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 241, size: 1728, elements: !678)
!677 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !699, !700, !701, !702, !706, !707, !708, !712, !715, !717, !718, !719, !720, !721, !722, !723}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !676, file: !677, line: 242, baseType: !63, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !676, file: !677, line: 247, baseType: !29, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !676, file: !677, line: 248, baseType: !29, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !676, file: !677, line: 249, baseType: !29, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !676, file: !677, line: 250, baseType: !29, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !676, file: !677, line: 251, baseType: !29, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !676, file: !677, line: 252, baseType: !29, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !676, file: !677, line: 253, baseType: !29, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !676, file: !677, line: 254, baseType: !29, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !676, file: !677, line: 256, baseType: !29, size: 64, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !676, file: !677, line: 257, baseType: !29, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !676, file: !677, line: 258, baseType: !29, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !676, file: !677, line: 260, baseType: !692, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !677, line: 156, size: 192, elements: !694)
!694 = !{!695, !696, !698}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !693, file: !677, line: 157, baseType: !692, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !693, file: !677, line: 158, baseType: !697, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !693, file: !677, line: 162, baseType: !63, size: 32, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !676, file: !677, line: 262, baseType: !697, size: 64, offset: 832)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !676, file: !677, line: 264, baseType: !63, size: 32, offset: 896)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !676, file: !677, line: 268, baseType: !63, size: 32, offset: 928)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !676, file: !677, line: 270, baseType: !703, size: 64, offset: 960)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !704, line: 140, baseType: !705)
!704 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!705 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !676, file: !677, line: 274, baseType: !153, size: 16, offset: 1024)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !676, file: !677, line: 275, baseType: !94, size: 8, offset: 1040)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !676, file: !677, line: 276, baseType: !709, size: 8, offset: 1048)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 1)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !676, file: !677, line: 280, baseType: !713, size: 64, offset: 1088)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !677, line: 150, baseType: null)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !676, file: !677, line: 289, baseType: !716, size: 64, offset: 1152)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !704, line: 141, baseType: !705)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !676, file: !677, line: 297, baseType: !31, size: 64, offset: 1216)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !676, file: !677, line: 298, baseType: !31, size: 64, offset: 1280)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !676, file: !677, line: 299, baseType: !31, size: 64, offset: 1344)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !676, file: !677, line: 300, baseType: !31, size: 64, offset: 1408)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !676, file: !677, line: 302, baseType: !82, size: 64, offset: 1472)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !676, file: !677, line: 303, baseType: !63, size: 32, offset: 1536)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !676, file: !677, line: 305, baseType: !724, size: 160, offset: 1568)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 20)
!727 = !DILocalVariable(name: "infile", scope: !664, file: !3, line: 268, type: !40)
!728 = !DILocalVariable(name: "decode", scope: !664, file: !3, line: 271, type: !113)
!729 = !DILocalVariable(name: "ignore_garbage", scope: !664, file: !3, line: 273, type: !113)
!730 = !DILocalVariable(name: "wrap_column", scope: !664, file: !3, line: 275, type: !731)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !732, line: 112, baseType: !733)
!732 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !704, line: 62, baseType: !84)
!734 = !DILocalVariable(name: "inbuf", scope: !735, file: !3, line: 207, type: !762)
!735 = distinct !DISubprogram(name: "do_decode", scope: !3, file: !3, line: 205, type: !736, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !673, !673, !113}
!738 = !{!739, !740, !741, !734, !742, !746, !747, !754, !756, !757, !758}
!739 = !DILocalVariable(name: "in", arg: 1, scope: !735, file: !3, line: 205, type: !673)
!740 = !DILocalVariable(name: "out", arg: 2, scope: !735, file: !3, line: 205, type: !673)
!741 = !DILocalVariable(name: "ignore_garbage", arg: 3, scope: !735, file: !3, line: 205, type: !113)
!742 = !DILocalVariable(name: "outbuf", scope: !735, file: !3, line: 208, type: !743)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 40960, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 5120)
!746 = !DILocalVariable(name: "sum", scope: !735, file: !3, line: 209, type: !82)
!747 = !DILocalVariable(name: "ctx", scope: !735, file: !3, line: 210, type: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !749, line: 31, size: 96, elements: !750)
!749 = !DIFile(filename: "./lib/base32.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !748, file: !749, line: 33, baseType: !170, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !748, file: !749, line: 34, baseType: !753, size: 64, offset: 32)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !171)
!754 = !DILocalVariable(name: "ok", scope: !755, file: !3, line: 216, type: !113)
!755 = distinct !DILexicalBlock(scope: !735, file: !3, line: 215, column: 5)
!756 = !DILocalVariable(name: "n", scope: !755, file: !3, line: 217, type: !82)
!757 = !DILocalVariable(name: "k", scope: !755, file: !3, line: 218, type: !170)
!758 = !DILocalVariable(name: "i", scope: !759, file: !3, line: 227, type: !82)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 226, column: 13)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 225, column: 15)
!761 = distinct !DILexicalBlock(scope: !755, file: !3, line: 222, column: 9)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 65536, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 8192)
!765 = !DILocation(line: 207, column: 8, scope: !735, inlinedAt: !766)
!766 = distinct !DILocation(line: 336, column: 5, scope: !767)
!767 = distinct !DILexicalBlock(scope: !664, file: !3, line: 335, column: 7)
!768 = !DILocation(line: 208, column: 8, scope: !735, inlinedAt: !766)
!769 = !DILocalVariable(name: "inbuf", scope: !770, file: !3, line: 168, type: !785)
!770 = distinct !DISubprogram(name: "do_encode", scope: !3, file: !3, line: 165, type: !771, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !673, !673, !731}
!773 = !{!774, !775, !776, !777, !769, !778, !782, !783}
!774 = !DILocalVariable(name: "in", arg: 1, scope: !770, file: !3, line: 165, type: !673)
!775 = !DILocalVariable(name: "out", arg: 2, scope: !770, file: !3, line: 165, type: !673)
!776 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !770, file: !3, line: 165, type: !731)
!777 = !DILocalVariable(name: "current_column", scope: !770, file: !3, line: 167, type: !82)
!778 = !DILocalVariable(name: "outbuf", scope: !770, file: !3, line: 169, type: !779)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 393216, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 49152)
!782 = !DILocalVariable(name: "sum", scope: !770, file: !3, line: 170, type: !82)
!783 = !DILocalVariable(name: "n", scope: !784, file: !3, line: 174, type: !82)
!784 = distinct !DILexicalBlock(scope: !770, file: !3, line: 173, column: 5)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 245760, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 30720)
!788 = !DILocation(line: 168, column: 8, scope: !770, inlinedAt: !789)
!789 = distinct !DILocation(line: 338, column: 5, scope: !767)
!790 = !DILocation(line: 169, column: 8, scope: !770, inlinedAt: !789)
!791 = !DILocation(line: 264, column: 11, scope: !664)
!792 = !DILocation(line: 264, column: 24, scope: !664)
!793 = !DILocation(line: 271, column: 8, scope: !664)
!794 = !DILocation(line: 273, column: 8, scope: !664)
!795 = !DILocation(line: 275, column: 13, scope: !664)
!796 = !DILocation(line: 278, column: 21, scope: !664)
!797 = !DILocation(line: 278, column: 3, scope: !664)
!798 = !DILocation(line: 279, column: 3, scope: !664)
!799 = !DILocation(line: 280, column: 3, scope: !664)
!800 = !DILocation(line: 281, column: 3, scope: !664)
!801 = !DILocation(line: 283, column: 3, scope: !664)
!802 = !DILocation(line: 285, column: 3, scope: !664)
!803 = !DILocation(line: 285, column: 17, scope: !664)
!804 = !DILocation(line: 266, column: 7, scope: !664)
!805 = distinct !{!805, !802, !806}
!806 = !DILocation(line: 308, column: 7, scope: !664)
!807 = !DILocation(line: 293, column: 35, scope: !808)
!808 = distinct !DILexicalBlock(scope: !664, file: !3, line: 287, column: 7)
!809 = !DILocation(line: 294, column: 35, scope: !808)
!810 = !DILocation(line: 293, column: 23, scope: !808)
!811 = !DILocation(line: 295, column: 9, scope: !808)
!812 = !DILocation(line: 299, column: 9, scope: !808)
!813 = !DILocation(line: 301, column: 7, scope: !808)
!814 = !DILocation(line: 303, column: 7, scope: !808)
!815 = !DILocation(line: 306, column: 9, scope: !808)
!816 = !DILocation(line: 310, column: 14, scope: !817)
!817 = distinct !DILexicalBlock(scope: !664, file: !3, line: 310, column: 7)
!818 = !{!819, !819, i64 0}
!819 = !{!"int", !632, i64 0}
!820 = !DILocation(line: 310, column: 12, scope: !817)
!821 = !DILocation(line: 310, column: 21, scope: !817)
!822 = !DILocation(line: 310, column: 7, scope: !664)
!823 = !DILocation(line: 312, column: 20, scope: !824)
!824 = distinct !DILexicalBlock(scope: !817, file: !3, line: 311, column: 5)
!825 = !DILocation(line: 312, column: 55, scope: !824)
!826 = !DILocation(line: 312, column: 50, scope: !824)
!827 = !DILocation(line: 312, column: 43, scope: !824)
!828 = !DILocation(line: 312, column: 7, scope: !824)
!829 = !DILocation(line: 313, column: 7, scope: !824)
!830 = !DILocation(line: 316, column: 14, scope: !831)
!831 = distinct !DILexicalBlock(scope: !664, file: !3, line: 316, column: 7)
!832 = !DILocation(line: 316, column: 7, scope: !664)
!833 = !DILocation(line: 317, column: 14, scope: !831)
!834 = !DILocation(line: 268, column: 15, scope: !664)
!835 = !DILocation(line: 317, column: 5, scope: !831)
!836 = !DILocation(line: 321, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !664, file: !3, line: 321, column: 7)
!838 = !DILocation(line: 321, column: 7, scope: !664)
!839 = !DILocation(line: 324, column: 18, scope: !840)
!840 = distinct !DILexicalBlock(scope: !837, file: !3, line: 322, column: 5)
!841 = !DILocation(line: 267, column: 9, scope: !664)
!842 = !DILocation(line: 325, column: 5, scope: !840)
!843 = !DILocation(line: 328, column: 18, scope: !844)
!844 = distinct !DILexicalBlock(scope: !837, file: !3, line: 327, column: 5)
!845 = !DILocation(line: 329, column: 20, scope: !846)
!846 = distinct !DILexicalBlock(scope: !844, file: !3, line: 329, column: 11)
!847 = !DILocation(line: 329, column: 11, scope: !844)
!848 = !DILocation(line: 330, column: 9, scope: !846)
!849 = !DILocation(line: 333, column: 3, scope: !664)
!850 = !DILocation(line: 335, column: 7, scope: !767)
!851 = !DILocation(line: 335, column: 7, scope: !664)
!852 = !DILocation(line: 336, column: 34, scope: !767)
!853 = !DILocation(line: 205, column: 18, scope: !735, inlinedAt: !766)
!854 = !DILocation(line: 205, column: 28, scope: !735, inlinedAt: !766)
!855 = !DILocation(line: 205, column: 38, scope: !735, inlinedAt: !766)
!856 = !DILocation(line: 207, column: 3, scope: !735, inlinedAt: !766)
!857 = !DILocation(line: 208, column: 3, scope: !735, inlinedAt: !766)
!858 = !DILocation(line: 210, column: 3, scope: !735, inlinedAt: !766)
!859 = !DILocation(line: 210, column: 30, scope: !735, inlinedAt: !766)
!860 = !DILocation(line: 212, column: 3, scope: !735, inlinedAt: !766)
!861 = !DILocation(line: 214, column: 3, scope: !735, inlinedAt: !766)
!862 = distinct !{!862, !863, !864}
!863 = !DILocation(line: 214, column: 3, scope: !735)
!864 = !DILocation(line: 260, column: 20, scope: !735)
!865 = !DILocation(line: 217, column: 7, scope: !755, inlinedAt: !766)
!866 = !DILocation(line: 209, column: 10, scope: !735, inlinedAt: !766)
!867 = !DILocation(line: 221, column: 7, scope: !755, inlinedAt: !766)
!868 = distinct !{!868, !869, !870}
!869 = !DILocation(line: 221, column: 7, scope: !755)
!870 = !DILocation(line: 240, column: 61, scope: !755)
!871 = !DILocation(line: 223, column: 15, scope: !761, inlinedAt: !766)
!872 = !DILocation(line: 217, column: 14, scope: !755, inlinedAt: !766)
!873 = !DILocation(line: 223, column: 13, scope: !761, inlinedAt: !766)
!874 = !{!875, !875, i64 0}
!875 = !{!"long", !632, i64 0}
!876 = !DILocation(line: 225, column: 15, scope: !761, inlinedAt: !766)
!877 = !DILocation(line: 227, column: 22, scope: !759, inlinedAt: !766)
!878 = !DILocation(line: 228, column: 38, scope: !879, inlinedAt: !766)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 228, column: 15)
!880 = distinct !DILexicalBlock(scope: !759, file: !3, line: 228, column: 15)
!881 = !DILocation(line: 228, column: 33, scope: !879, inlinedAt: !766)
!882 = !DILocation(line: 229, column: 39, scope: !883, inlinedAt: !766)
!883 = distinct !DILexicalBlock(scope: !879, file: !3, line: 229, column: 21)
!884 = !DILocation(line: 229, column: 29, scope: !883, inlinedAt: !766)
!885 = !{!632, !632, i64 0}
!886 = !DILocation(line: 229, column: 21, scope: !883, inlinedAt: !766)
!887 = !DILocation(line: 229, column: 63, scope: !883, inlinedAt: !766)
!888 = !DILocation(line: 229, column: 45, scope: !883, inlinedAt: !766)
!889 = !DILocation(line: 230, column: 20, scope: !883, inlinedAt: !766)
!890 = !DILocation(line: 230, column: 19, scope: !883, inlinedAt: !766)
!891 = !DILocation(line: 232, column: 40, scope: !883, inlinedAt: !766)
!892 = !DILocation(line: 232, column: 61, scope: !883, inlinedAt: !766)
!893 = !DILocation(line: 232, column: 66, scope: !883, inlinedAt: !766)
!894 = !DILocation(line: 232, column: 70, scope: !883, inlinedAt: !766)
!895 = !DILocation(line: 232, column: 19, scope: !883, inlinedAt: !766)
!896 = !DILocation(line: 228, column: 27, scope: !879, inlinedAt: !766)
!897 = distinct !{!897, !898, !899}
!898 = !DILocation(line: 228, column: 15, scope: !880)
!899 = !DILocation(line: 232, column: 73, scope: !880)
!900 = !DILocation(line: 235, column: 18, scope: !761, inlinedAt: !766)
!901 = !DILocation(line: 235, column: 15, scope: !761, inlinedAt: !766)
!902 = !DILocalVariable(name: "__stream", arg: 1, scope: !903, file: !904, line: 132, type: !673)
!903 = distinct !DISubprogram(name: "ferror_unlocked", scope: !904, file: !904, line: 132, type: !905, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !907)
!904 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!905 = !DISubroutineType(types: !906)
!906 = !{!63, !673}
!907 = !{!902}
!908 = !DILocation(line: 132, column: 1, scope: !903, inlinedAt: !909)
!909 = distinct !DILocation(line: 237, column: 15, scope: !910, inlinedAt: !766)
!910 = distinct !DILexicalBlock(scope: !761, file: !3, line: 237, column: 15)
!911 = !DILocation(line: 134, column: 10, scope: !903, inlinedAt: !909)
!912 = !{!913, !819, i64 0}
!913 = !{!"_IO_FILE", !819, i64 0, !631, i64 8, !631, i64 16, !631, i64 24, !631, i64 32, !631, i64 40, !631, i64 48, !631, i64 56, !631, i64 64, !631, i64 72, !631, i64 80, !631, i64 88, !631, i64 96, !631, i64 104, !819, i64 112, !819, i64 116, !875, i64 120, !914, i64 128, !632, i64 130, !632, i64 131, !631, i64 136, !875, i64 144, !631, i64 152, !631, i64 160, !631, i64 168, !631, i64 176, !875, i64 184, !819, i64 192, !632, i64 196}
!914 = !{!"short", !632, i64 0}
!915 = !DILocation(line: 237, column: 15, scope: !910, inlinedAt: !766)
!916 = !DILocation(line: 237, column: 15, scope: !761, inlinedAt: !766)
!917 = !DILocation(line: 238, column: 13, scope: !910, inlinedAt: !766)
!918 = !DILocation(line: 240, column: 18, scope: !755, inlinedAt: !766)
!919 = !DILocation(line: 127, column: 10, scope: !920, inlinedAt: !923)
!920 = distinct !DISubprogram(name: "feof_unlocked", scope: !904, file: !904, line: 125, type: !905, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !921)
!921 = !{!922}
!922 = !DILocalVariable(name: "__stream", arg: 1, scope: !920, file: !904, line: 125, type: !673)
!923 = distinct !DILocation(line: 240, column: 52, scope: !755, inlinedAt: !766)
!924 = !DILocation(line: 240, column: 51, scope: !755, inlinedAt: !766)
!925 = !DILocation(line: 240, column: 48, scope: !755, inlinedAt: !766)
!926 = !DILocation(line: 125, column: 1, scope: !920, inlinedAt: !923)
!927 = !DILocation(line: 248, column: 17, scope: !928, inlinedAt: !766)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 248, column: 15)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 247, column: 9)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 246, column: 7)
!931 = distinct !DILexicalBlock(scope: !755, file: !3, line: 246, column: 7)
!932 = !DILocation(line: 218, column: 20, scope: !755, inlinedAt: !766)
!933 = !DILocation(line: 125, column: 1, scope: !920, inlinedAt: !934)
!934 = distinct !DILocation(line: 246, column: 29, scope: !930, inlinedAt: !766)
!935 = !DILocation(line: 127, column: 10, scope: !920, inlinedAt: !934)
!936 = !DILocation(line: 246, column: 28, scope: !930, inlinedAt: !766)
!937 = !DILocation(line: 246, column: 25, scope: !930, inlinedAt: !766)
!938 = !DILocation(line: 246, column: 21, scope: !930, inlinedAt: !766)
!939 = !DILocation(line: 246, column: 7, scope: !931, inlinedAt: !766)
!940 = distinct !{!940, !941, !942}
!941 = !DILocation(line: 246, column: 7, scope: !931)
!942 = !DILocation(line: 258, column: 9, scope: !931)
!943 = !DILocation(line: 248, column: 29, scope: !928, inlinedAt: !766)
!944 = !DILocation(line: 248, column: 31, scope: !928, inlinedAt: !766)
!945 = !DILocation(line: 248, column: 22, scope: !928, inlinedAt: !766)
!946 = !DILocation(line: 250, column: 13, scope: !929, inlinedAt: !766)
!947 = !DILocation(line: 251, column: 49, scope: !929, inlinedAt: !766)
!948 = !DILocation(line: 251, column: 47, scope: !929, inlinedAt: !766)
!949 = !DILocation(line: 251, column: 16, scope: !929, inlinedAt: !766)
!950 = !DILocation(line: 253, column: 15, scope: !951, inlinedAt: !766)
!951 = distinct !DILexicalBlock(scope: !929, file: !3, line: 253, column: 15)
!952 = !DILocation(line: 253, column: 44, scope: !951, inlinedAt: !766)
!953 = !DILocation(line: 253, column: 42, scope: !951, inlinedAt: !766)
!954 = !DILocation(line: 253, column: 15, scope: !929, inlinedAt: !766)
!955 = !DILocation(line: 254, column: 13, scope: !951, inlinedAt: !766)
!956 = !DILocation(line: 246, column: 41, scope: !930, inlinedAt: !766)
!957 = !DILocation(line: 256, column: 15, scope: !929, inlinedAt: !766)
!958 = !DILocation(line: 257, column: 13, scope: !959, inlinedAt: !766)
!959 = distinct !DILexicalBlock(scope: !929, file: !3, line: 256, column: 15)
!960 = !DILocation(line: 259, column: 5, scope: !735, inlinedAt: !766)
!961 = !DILocation(line: 125, column: 1, scope: !920, inlinedAt: !962)
!962 = distinct !DILocation(line: 260, column: 11, scope: !735, inlinedAt: !766)
!963 = !DILocation(line: 259, column: 5, scope: !755, inlinedAt: !766)
!964 = !DILocation(line: 261, column: 1, scope: !735, inlinedAt: !766)
!965 = !DILocation(line: 336, column: 5, scope: !767)
!966 = !DILocation(line: 165, column: 18, scope: !770, inlinedAt: !789)
!967 = !DILocation(line: 165, column: 28, scope: !770, inlinedAt: !789)
!968 = !DILocation(line: 165, column: 43, scope: !770, inlinedAt: !789)
!969 = !DILocation(line: 167, column: 10, scope: !770, inlinedAt: !789)
!970 = !DILocation(line: 168, column: 3, scope: !770, inlinedAt: !789)
!971 = !DILocation(line: 169, column: 3, scope: !770, inlinedAt: !789)
!972 = !DILocation(line: 172, column: 3, scope: !770, inlinedAt: !789)
!973 = distinct !{!973, !974, !975}
!974 = !DILocation(line: 172, column: 3, scope: !770)
!975 = !DILocation(line: 194, column: 60, scope: !770)
!976 = !DILocation(line: 170, column: 10, scope: !770, inlinedAt: !789)
!977 = !DILocation(line: 177, column: 7, scope: !784, inlinedAt: !789)
!978 = distinct !{!978, !979, !980}
!979 = !DILocation(line: 177, column: 7, scope: !784)
!980 = !DILocation(line: 182, column: 63, scope: !784)
!981 = !DILocation(line: 179, column: 15, scope: !982, inlinedAt: !789)
!982 = distinct !DILexicalBlock(scope: !784, file: !3, line: 178, column: 9)
!983 = !DILocation(line: 174, column: 14, scope: !784, inlinedAt: !789)
!984 = !DILocation(line: 180, column: 15, scope: !982, inlinedAt: !789)
!985 = !DILocation(line: 125, column: 1, scope: !920, inlinedAt: !986)
!986 = distinct !DILocation(line: 182, column: 15, scope: !784, inlinedAt: !789)
!987 = !DILocation(line: 127, column: 10, scope: !920, inlinedAt: !986)
!988 = !DILocation(line: 182, column: 15, scope: !784, inlinedAt: !789)
!989 = !DILocation(line: 182, column: 25, scope: !784, inlinedAt: !789)
!990 = !DILocation(line: 132, column: 1, scope: !903, inlinedAt: !991)
!991 = distinct !DILocation(line: 182, column: 29, scope: !784, inlinedAt: !789)
!992 = !DILocation(line: 134, column: 10, scope: !903, inlinedAt: !991)
!993 = !DILocation(line: 182, column: 29, scope: !784, inlinedAt: !789)
!994 = !DILocation(line: 182, column: 48, scope: !784, inlinedAt: !789)
!995 = !DILocation(line: 182, column: 41, scope: !784, inlinedAt: !789)
!996 = !DILocation(line: 184, column: 15, scope: !997, inlinedAt: !789)
!997 = distinct !DILexicalBlock(scope: !784, file: !3, line: 184, column: 11)
!998 = !DILocation(line: 184, column: 11, scope: !784, inlinedAt: !789)
!999 = !DILocation(line: 188, column: 44, scope: !1000, inlinedAt: !789)
!1000 = distinct !DILexicalBlock(scope: !997, file: !3, line: 185, column: 9)
!1001 = !DILocation(line: 188, column: 11, scope: !1000, inlinedAt: !789)
!1002 = !DILocalVariable(name: "buffer", arg: 1, scope: !1003, file: !3, line: 130, type: !40)
!1003 = distinct !DISubprogram(name: "wrap_write", scope: !3, file: !3, line: 130, type: !1004, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !40, !82, !731, !571, !673}
!1006 = !{!1002, !1007, !1008, !1009, !1010, !1011, !1012, !1017}
!1007 = !DILocalVariable(name: "len", arg: 2, scope: !1003, file: !3, line: 130, type: !82)
!1008 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1003, file: !3, line: 131, type: !731)
!1009 = !DILocalVariable(name: "current_column", arg: 4, scope: !1003, file: !3, line: 131, type: !571)
!1010 = !DILocalVariable(name: "out", arg: 5, scope: !1003, file: !3, line: 131, type: !673)
!1011 = !DILocalVariable(name: "written", scope: !1003, file: !3, line: 133, type: !82)
!1012 = !DILocalVariable(name: "cols_remaining", scope: !1013, file: !3, line: 144, type: !731)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 143, column: 7)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 142, column: 5)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 142, column: 5)
!1016 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 135, column: 7)
!1017 = !DILocalVariable(name: "to_write", scope: !1013, file: !3, line: 145, type: !82)
!1018 = !DILocation(line: 130, column: 25, scope: !1003, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 190, column: 11, scope: !1000, inlinedAt: !789)
!1020 = !DILocation(line: 130, column: 40, scope: !1003, inlinedAt: !1019)
!1021 = !DILocation(line: 131, column: 23, scope: !1003, inlinedAt: !1019)
!1022 = !DILocation(line: 131, column: 66, scope: !1003, inlinedAt: !1019)
!1023 = !DILocation(line: 135, column: 7, scope: !1003, inlinedAt: !1019)
!1024 = !DILocation(line: 138, column: 11, scope: !1025, inlinedAt: !1019)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 138, column: 11)
!1026 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 136, column: 5)
!1027 = !DILocation(line: 138, column: 43, scope: !1025, inlinedAt: !1019)
!1028 = !DILocation(line: 138, column: 11, scope: !1026, inlinedAt: !1019)
!1029 = !DILocation(line: 139, column: 9, scope: !1025, inlinedAt: !1019)
!1030 = !DILocation(line: 133, column: 10, scope: !1003, inlinedAt: !1019)
!1031 = !DILocation(line: 142, column: 31, scope: !1014, inlinedAt: !1019)
!1032 = !DILocation(line: 142, column: 5, scope: !1015, inlinedAt: !1019)
!1033 = !DILocation(line: 144, column: 48, scope: !1013, inlinedAt: !1019)
!1034 = !DILocation(line: 144, column: 19, scope: !1013, inlinedAt: !1019)
!1035 = !DILocation(line: 145, column: 16, scope: !1013, inlinedAt: !1019)
!1036 = !DILocation(line: 146, column: 20, scope: !1013, inlinedAt: !1019)
!1037 = !DILocation(line: 148, column: 22, scope: !1038, inlinedAt: !1019)
!1038 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 148, column: 13)
!1039 = !DILocation(line: 148, column: 13, scope: !1013, inlinedAt: !1019)
!1040 = !DILocalVariable(name: "__c", arg: 1, scope: !1041, file: !904, line: 88, type: !63)
!1041 = distinct !DISubprogram(name: "fputc_unlocked", scope: !904, file: !904, line: 88, type: !1042, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!63, !63, !673}
!1044 = !{!1040, !1045}
!1045 = !DILocalVariable(name: "__stream", arg: 2, scope: !1041, file: !904, line: 88, type: !673)
!1046 = !DILocation(line: 88, column: 21, scope: !1041, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 150, column: 17, scope: !1048, inlinedAt: !1019)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 150, column: 17)
!1049 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 149, column: 11)
!1050 = !DILocation(line: 88, column: 32, scope: !1041, inlinedAt: !1047)
!1051 = !DILocation(line: 90, column: 10, scope: !1041, inlinedAt: !1047)
!1052 = !{!913, !631, i64 40}
!1053 = !{!913, !631, i64 48}
!1054 = !{!"branch_weights", i32 2000, i32 1}
!1055 = !DILocation(line: 150, column: 17, scope: !1049, inlinedAt: !1019)
!1056 = !DILocation(line: 150, column: 35, scope: !1048, inlinedAt: !1019)
!1057 = !DILocation(line: 151, column: 15, scope: !1048, inlinedAt: !1019)
!1058 = !DILocation(line: 156, column: 17, scope: !1059, inlinedAt: !1019)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 156, column: 17)
!1060 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 155, column: 11)
!1061 = !DILocation(line: 156, column: 64, scope: !1059, inlinedAt: !1019)
!1062 = !DILocation(line: 156, column: 17, scope: !1060, inlinedAt: !1019)
!1063 = !DILocation(line: 157, column: 15, scope: !1059, inlinedAt: !1019)
!1064 = !DILocation(line: 158, column: 29, scope: !1060, inlinedAt: !1019)
!1065 = !DILocation(line: 159, column: 21, scope: !1060, inlinedAt: !1019)
!1066 = distinct !{!1066, !1067, !1068}
!1067 = !DILocation(line: 142, column: 5, scope: !1015)
!1068 = !DILocation(line: 161, column: 7, scope: !1015)
!1069 = !DILocation(line: 125, column: 1, scope: !920, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 194, column: 11, scope: !770, inlinedAt: !789)
!1071 = !DILocation(line: 127, column: 10, scope: !920, inlinedAt: !1070)
!1072 = !DILocation(line: 194, column: 11, scope: !770, inlinedAt: !789)
!1073 = !DILocation(line: 194, column: 21, scope: !770, inlinedAt: !789)
!1074 = !DILocation(line: 132, column: 1, scope: !903, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 194, column: 25, scope: !770, inlinedAt: !789)
!1076 = !DILocation(line: 134, column: 10, scope: !903, inlinedAt: !1075)
!1077 = !DILocation(line: 194, column: 25, scope: !770, inlinedAt: !789)
!1078 = !DILocation(line: 194, column: 44, scope: !770, inlinedAt: !789)
!1079 = !DILocation(line: 194, column: 37, scope: !770, inlinedAt: !789)
!1080 = !DILocation(line: 197, column: 7, scope: !1081, inlinedAt: !789)
!1081 = distinct !DILexicalBlock(scope: !770, file: !3, line: 197, column: 7)
!1082 = !DILocation(line: 197, column: 37, scope: !1081, inlinedAt: !789)
!1083 = !DILocation(line: 197, column: 19, scope: !1081, inlinedAt: !789)
!1084 = !DILocation(line: 88, column: 21, scope: !1041, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 197, column: 44, scope: !1081, inlinedAt: !789)
!1086 = !DILocation(line: 88, column: 32, scope: !1041, inlinedAt: !1085)
!1087 = !DILocation(line: 90, column: 10, scope: !1041, inlinedAt: !1085)
!1088 = !DILocation(line: 197, column: 7, scope: !770, inlinedAt: !789)
!1089 = !DILocation(line: 197, column: 62, scope: !1081, inlinedAt: !789)
!1090 = !DILocation(line: 198, column: 5, scope: !1081, inlinedAt: !789)
!1091 = !DILocation(line: 132, column: 1, scope: !903, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 200, column: 7, scope: !1093, inlinedAt: !789)
!1093 = distinct !DILexicalBlock(scope: !770, file: !3, line: 200, column: 7)
!1094 = !DILocation(line: 134, column: 10, scope: !903, inlinedAt: !1092)
!1095 = !DILocation(line: 200, column: 7, scope: !1093, inlinedAt: !789)
!1096 = !DILocation(line: 200, column: 7, scope: !770, inlinedAt: !789)
!1097 = !DILocation(line: 201, column: 5, scope: !1093, inlinedAt: !789)
!1098 = !DILocation(line: 202, column: 1, scope: !770, inlinedAt: !789)
!1099 = !DILocation(line: 340, column: 7, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !664, file: !3, line: 340, column: 7)
!1101 = !DILocation(line: 340, column: 25, scope: !1100)
!1102 = !DILocation(line: 340, column: 7, scope: !664)
!1103 = !DILocation(line: 342, column: 11, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 342, column: 11)
!1105 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 341, column: 5)
!1106 = !DILocation(line: 343, column: 9, scope: !1104)
!1107 = !DILocation(line: 342, column: 11, scope: !1105)
!1108 = !DILocation(line: 345, column: 9, scope: !1104)
!1109 = !DILocation(line: 349, column: 1, scope: !664)
!1110 = !DILocation(line: 65, column: 37, scope: !77)
!1111 = !DILocation(line: 65, column: 48, scope: !77)
!1112 = !DILocation(line: 66, column: 31, scope: !77)
!1113 = !DILocation(line: 66, column: 43, scope: !77)
!1114 = !DILocation(line: 71, column: 10, scope: !77)
!1115 = !DILocation(line: 71, column: 16, scope: !77)
!1116 = !DILocation(line: 71, column: 3, scope: !77)
!1117 = !DILocation(line: 73, column: 34, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !77, file: !78, line: 72, column: 5)
!1119 = !DILocation(line: 73, column: 24, scope: !1118)
!1120 = !DILocation(line: 73, column: 41, scope: !1118)
!1121 = !DILocation(line: 73, column: 16, scope: !1118)
!1122 = !DILocation(line: 73, column: 11, scope: !1118)
!1123 = !DILocation(line: 73, column: 14, scope: !1118)
!1124 = !DILocation(line: 74, column: 12, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1118, file: !78, line: 74, column: 11)
!1126 = !DILocation(line: 74, column: 11, scope: !1118)
!1127 = !DILocation(line: 76, column: 35, scope: !1118)
!1128 = !DILocation(line: 76, column: 25, scope: !1118)
!1129 = !DILocation(line: 76, column: 42, scope: !1118)
!1130 = !DILocation(line: 77, column: 27, scope: !1118)
!1131 = !DILocation(line: 77, column: 47, scope: !1118)
!1132 = !DILocation(line: 77, column: 37, scope: !1118)
!1133 = !DILocation(line: 77, column: 54, scope: !1118)
!1134 = !DILocation(line: 77, column: 24, scope: !1118)
!1135 = !DILocation(line: 78, column: 23, scope: !1118)
!1136 = !DILocation(line: 76, column: 16, scope: !1118)
!1137 = !DILocation(line: 76, column: 11, scope: !1118)
!1138 = !DILocation(line: 76, column: 14, scope: !1118)
!1139 = !DILocation(line: 79, column: 12, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1118, file: !78, line: 79, column: 11)
!1141 = !DILocation(line: 79, column: 11, scope: !1118)
!1142 = !DILocation(line: 82, column: 10, scope: !1118)
!1143 = !DILocation(line: 83, column: 30, scope: !1118)
!1144 = !DILocation(line: 83, column: 20, scope: !1118)
!1145 = !DILocation(line: 83, column: 37, scope: !1118)
!1146 = !DILocation(line: 83, column: 43, scope: !1118)
!1147 = !DILocation(line: 83, column: 12, scope: !1118)
!1148 = !DILocation(line: 81, column: 11, scope: !1118)
!1149 = !DILocation(line: 81, column: 14, scope: !1118)
!1150 = !DILocation(line: 85, column: 12, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1118, file: !78, line: 85, column: 11)
!1152 = !DILocation(line: 85, column: 11, scope: !1118)
!1153 = !DILocation(line: 88, column: 10, scope: !1118)
!1154 = !DILocation(line: 89, column: 31, scope: !1118)
!1155 = !DILocation(line: 89, column: 21, scope: !1118)
!1156 = !DILocation(line: 89, column: 38, scope: !1118)
!1157 = !DILocation(line: 90, column: 23, scope: !1118)
!1158 = !DILocation(line: 90, column: 43, scope: !1118)
!1159 = !DILocation(line: 90, column: 33, scope: !1118)
!1160 = !DILocation(line: 90, column: 50, scope: !1118)
!1161 = !DILocation(line: 90, column: 20, scope: !1118)
!1162 = !DILocation(line: 91, column: 19, scope: !1118)
!1163 = !DILocation(line: 89, column: 12, scope: !1118)
!1164 = !DILocation(line: 87, column: 11, scope: !1118)
!1165 = !DILocation(line: 87, column: 14, scope: !1118)
!1166 = !DILocation(line: 93, column: 12, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1118, file: !78, line: 93, column: 11)
!1168 = !DILocation(line: 93, column: 11, scope: !1118)
!1169 = !DILocation(line: 96, column: 10, scope: !1118)
!1170 = !DILocation(line: 97, column: 31, scope: !1118)
!1171 = !DILocation(line: 97, column: 21, scope: !1118)
!1172 = !DILocation(line: 97, column: 38, scope: !1118)
!1173 = !DILocation(line: 98, column: 23, scope: !1118)
!1174 = !DILocation(line: 98, column: 43, scope: !1118)
!1175 = !DILocation(line: 98, column: 33, scope: !1118)
!1176 = !DILocation(line: 98, column: 50, scope: !1118)
!1177 = !DILocation(line: 98, column: 20, scope: !1118)
!1178 = !DILocation(line: 99, column: 19, scope: !1118)
!1179 = !DILocation(line: 97, column: 12, scope: !1118)
!1180 = !DILocation(line: 95, column: 11, scope: !1118)
!1181 = !DILocation(line: 95, column: 14, scope: !1118)
!1182 = !DILocation(line: 101, column: 12, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1118, file: !78, line: 101, column: 11)
!1184 = !DILocation(line: 101, column: 11, scope: !1118)
!1185 = !DILocation(line: 104, column: 10, scope: !1118)
!1186 = !DILocation(line: 105, column: 30, scope: !1118)
!1187 = !DILocation(line: 105, column: 20, scope: !1118)
!1188 = !DILocation(line: 105, column: 37, scope: !1118)
!1189 = !DILocation(line: 105, column: 43, scope: !1118)
!1190 = !DILocation(line: 105, column: 12, scope: !1118)
!1191 = !DILocation(line: 103, column: 11, scope: !1118)
!1192 = !DILocation(line: 103, column: 14, scope: !1118)
!1193 = !DILocation(line: 107, column: 12, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1118, file: !78, line: 107, column: 11)
!1195 = !DILocation(line: 107, column: 11, scope: !1118)
!1196 = !DILocation(line: 110, column: 10, scope: !1118)
!1197 = !DILocation(line: 111, column: 31, scope: !1118)
!1198 = !DILocation(line: 111, column: 21, scope: !1118)
!1199 = !DILocation(line: 111, column: 38, scope: !1118)
!1200 = !DILocation(line: 112, column: 23, scope: !1118)
!1201 = !DILocation(line: 112, column: 43, scope: !1118)
!1202 = !DILocation(line: 112, column: 33, scope: !1118)
!1203 = !DILocation(line: 112, column: 50, scope: !1118)
!1204 = !DILocation(line: 112, column: 20, scope: !1118)
!1205 = !DILocation(line: 113, column: 19, scope: !1118)
!1206 = !DILocation(line: 111, column: 12, scope: !1118)
!1207 = !DILocation(line: 109, column: 11, scope: !1118)
!1208 = !DILocation(line: 109, column: 14, scope: !1118)
!1209 = !DILocation(line: 115, column: 12, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1118, file: !78, line: 115, column: 11)
!1211 = !DILocation(line: 115, column: 11, scope: !1118)
!1212 = !DILocation(line: 117, column: 16, scope: !1118)
!1213 = !DILocation(line: 117, column: 41, scope: !1118)
!1214 = !DILocation(line: 117, column: 48, scope: !1118)
!1215 = !DILocation(line: 117, column: 24, scope: !1118)
!1216 = !DILocation(line: 117, column: 14, scope: !1118)
!1217 = !DILocation(line: 118, column: 12, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1118, file: !78, line: 118, column: 11)
!1219 = !DILocation(line: 118, column: 11, scope: !1118)
!1220 = !DILocation(line: 117, column: 11, scope: !1118)
!1221 = !DILocation(line: 121, column: 14, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1118, file: !78, line: 120, column: 11)
!1223 = !DILocation(line: 122, column: 11, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1118, file: !78, line: 122, column: 11)
!1225 = !DILocation(line: 123, column: 12, scope: !1224)
!1226 = distinct !{!1226, !1116, !1227}
!1227 = !DILocation(line: 124, column: 5, scope: !77)
!1228 = !DILocation(line: 126, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !77, file: !78, line: 126, column: 7)
!1230 = !DILocation(line: 126, column: 7, scope: !77)
!1231 = !DILocation(line: 127, column: 10, scope: !1229)
!1232 = !DILocation(line: 127, column: 5, scope: !1229)
!1233 = !DILocation(line: 128, column: 1, scope: !77)
!1234 = distinct !DISubprogram(name: "base32_encode_alloc", scope: !78, file: !78, line: 140, type: !1235, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1237)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!82, !40, !82, !667}
!1237 = !{!1238, !1239, !1240, !1241}
!1238 = !DILocalVariable(name: "in", arg: 1, scope: !1234, file: !78, line: 140, type: !40)
!1239 = !DILocalVariable(name: "inlen", arg: 2, scope: !1234, file: !78, line: 140, type: !82)
!1240 = !DILocalVariable(name: "out", arg: 3, scope: !1234, file: !78, line: 140, type: !667)
!1241 = !DILocalVariable(name: "outlen", scope: !1234, file: !78, line: 142, type: !82)
!1242 = !DILocation(line: 140, column: 34, scope: !1234)
!1243 = !DILocation(line: 140, column: 45, scope: !1234)
!1244 = !DILocation(line: 140, column: 59, scope: !1234)
!1245 = !DILocation(line: 142, column: 23, scope: !1234)
!1246 = !DILocation(line: 142, column: 21, scope: !1234)
!1247 = !DILocation(line: 142, column: 10, scope: !1234)
!1248 = !DILocation(line: 150, column: 13, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1234, file: !78, line: 150, column: 7)
!1250 = !DILocation(line: 150, column: 7, scope: !1234)
!1251 = !DILocation(line: 152, column: 12, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !78, line: 151, column: 5)
!1253 = !DILocation(line: 153, column: 7, scope: !1252)
!1254 = !DILocation(line: 156, column: 10, scope: !1234)
!1255 = !DILocation(line: 156, column: 8, scope: !1234)
!1256 = !DILocation(line: 157, column: 8, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1234, file: !78, line: 157, column: 7)
!1258 = !DILocation(line: 157, column: 7, scope: !1234)
!1259 = !DILocation(line: 160, column: 3, scope: !1234)
!1260 = !DILocation(line: 162, column: 3, scope: !1234)
!1261 = !DILocation(line: 163, column: 1, scope: !1234)
!1262 = distinct !DISubprogram(name: "isbase32", scope: !78, file: !78, line: 286, type: !1263, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!113, !30}
!1265 = !{!1266}
!1266 = !DILocalVariable(name: "ch", arg: 1, scope: !1262, file: !78, line: 286, type: !30)
!1267 = !DILocation(line: 286, column: 16, scope: !1262)
!1268 = !DILocation(line: 288, column: 49, scope: !1262)
!1269 = !DILocation(line: 288, column: 46, scope: !1262)
!1270 = !DILocation(line: 288, column: 3, scope: !1262)
!1271 = distinct !DISubprogram(name: "base32_decode_ctx_init", scope: !78, file: !78, line: 293, type: !1272, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1279)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !749, line: 31, size: 96, elements: !1276)
!1276 = !{!1277, !1278}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1275, file: !749, line: 33, baseType: !170, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1275, file: !749, line: 34, baseType: !753, size: 64, offset: 32)
!1279 = !{!1280}
!1280 = !DILocalVariable(name: "ctx", arg: 1, scope: !1271, file: !78, line: 293, type: !1274)
!1281 = !DILocation(line: 293, column: 55, scope: !1271)
!1282 = !DILocation(line: 295, column: 8, scope: !1271)
!1283 = !DILocation(line: 295, column: 10, scope: !1271)
!1284 = !{!1285, !819, i64 0}
!1285 = !{!"base32_decode_context", !819, i64 0, !632, i64 4}
!1286 = !DILocation(line: 296, column: 1, scope: !1271)
!1287 = distinct !DISubprogram(name: "base32_decode_ctx", scope: !78, file: !78, line: 470, type: !1288, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1290)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!113, !1274, !81, !82, !85, !571}
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1302, !1304}
!1291 = !DILocalVariable(name: "ctx", arg: 1, scope: !1287, file: !78, line: 470, type: !1274)
!1292 = !DILocalVariable(name: "in", arg: 2, scope: !1287, file: !78, line: 471, type: !81)
!1293 = !DILocalVariable(name: "inlen", arg: 3, scope: !1287, file: !78, line: 471, type: !82)
!1294 = !DILocalVariable(name: "out", arg: 4, scope: !1287, file: !78, line: 472, type: !85)
!1295 = !DILocalVariable(name: "outlen", arg: 5, scope: !1287, file: !78, line: 472, type: !571)
!1296 = !DILocalVariable(name: "outleft", scope: !1287, file: !78, line: 474, type: !82)
!1297 = !DILocalVariable(name: "ignore_newlines", scope: !1287, file: !78, line: 475, type: !113)
!1298 = !DILocalVariable(name: "flush_ctx", scope: !1287, file: !78, line: 476, type: !113)
!1299 = !DILocalVariable(name: "ctx_i", scope: !1287, file: !78, line: 477, type: !170)
!1300 = !DILocalVariable(name: "outleft_save", scope: !1301, file: !78, line: 488, type: !82)
!1301 = distinct !DILexicalBlock(scope: !1287, file: !78, line: 487, column: 5)
!1302 = !DILocalVariable(name: "in_end", scope: !1303, file: !78, line: 521, type: !40)
!1303 = distinct !DILexicalBlock(scope: !1301, file: !78, line: 520, column: 7)
!1304 = !DILocalVariable(name: "non_nl", scope: !1303, file: !78, line: 522, type: !40)
!1305 = !DILocation(line: 470, column: 50, scope: !1287)
!1306 = !DILocation(line: 471, column: 41, scope: !1287)
!1307 = !DILocation(line: 471, column: 52, scope: !1287)
!1308 = !DILocation(line: 472, column: 35, scope: !1287)
!1309 = !DILocation(line: 472, column: 48, scope: !1287)
!1310 = !DILocation(line: 474, column: 3, scope: !1287)
!1311 = !DILocation(line: 474, column: 20, scope: !1287)
!1312 = !DILocation(line: 474, column: 10, scope: !1287)
!1313 = !DILocation(line: 475, column: 30, scope: !1287)
!1314 = !DILocation(line: 476, column: 8, scope: !1287)
!1315 = !DILocation(line: 477, column: 16, scope: !1287)
!1316 = !DILocation(line: 479, column: 7, scope: !1287)
!1317 = !DILocation(line: 481, column: 20, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !78, line: 480, column: 5)
!1319 = distinct !DILexicalBlock(scope: !1287, file: !78, line: 479, column: 7)
!1320 = !DILocation(line: 482, column: 25, scope: !1318)
!1321 = !DILocation(line: 483, column: 5, scope: !1318)
!1322 = !DILocation(line: 486, column: 3, scope: !1287)
!1323 = !DILocation(line: 488, column: 29, scope: !1301)
!1324 = !DILocation(line: 488, column: 14, scope: !1301)
!1325 = !DILocation(line: 489, column: 22, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1301, file: !78, line: 489, column: 11)
!1327 = !DILocation(line: 496, column: 30, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !78, line: 496, column: 19)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !78, line: 492, column: 13)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !78, line: 490, column: 9)
!1331 = !DILocation(line: 496, column: 20, scope: !1328)
!1332 = !DILocation(line: 496, column: 19, scope: !1329)
!1333 = !DILocation(line: 499, column: 18, scope: !1329)
!1334 = !DILocation(line: 500, column: 21, scope: !1329)
!1335 = !DILocation(line: 495, column: 30, scope: !1329)
!1336 = distinct !{!1336, !1337, !1338}
!1337 = !DILocation(line: 491, column: 11, scope: !1330)
!1338 = !DILocation(line: 501, column: 13, scope: !1330)
!1339 = !DILocation(line: 504, column: 17, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1301, file: !78, line: 504, column: 11)
!1341 = !DILocation(line: 504, column: 22, scope: !1340)
!1342 = !DILocation(line: 509, column: 17, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1301, file: !78, line: 509, column: 11)
!1344 = !DILocation(line: 509, column: 20, scope: !1343)
!1345 = !DILocation(line: 509, column: 24, scope: !1343)
!1346 = !DILocation(line: 509, column: 32, scope: !1343)
!1347 = !DILocation(line: 511, column: 11, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1343, file: !78, line: 510, column: 9)
!1349 = !DILocation(line: 512, column: 11, scope: !1348)
!1350 = !DILocation(line: 517, column: 29, scope: !1301)
!1351 = !DILocation(line: 517, column: 11, scope: !1301)
!1352 = !DILocation(line: 518, column: 15, scope: !1301)
!1353 = !DILocation(line: 521, column: 33, scope: !1303)
!1354 = !DILocation(line: 521, column: 21, scope: !1303)
!1355 = !DILocation(line: 524, column: 13, scope: !1303)
!1356 = !DILocalVariable(name: "ctx", arg: 1, scope: !1357, file: !78, line: 306, type: !1274)
!1357 = distinct !DISubprogram(name: "get_8", scope: !78, file: !78, line: 306, type: !1358, isLocal: true, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1361)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!29, !1274, !1360, !81, !571}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1361 = !{!1356, !1362, !1363, !1364, !1365, !1368, !1370}
!1362 = !DILocalVariable(name: "in", arg: 2, scope: !1357, file: !78, line: 307, type: !1360)
!1363 = !DILocalVariable(name: "in_end", arg: 3, scope: !1357, file: !78, line: 307, type: !81)
!1364 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1357, file: !78, line: 308, type: !571)
!1365 = !DILocalVariable(name: "t", scope: !1366, file: !78, line: 315, type: !40)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !78, line: 314, column: 5)
!1367 = distinct !DILexicalBlock(scope: !1357, file: !78, line: 313, column: 7)
!1368 = !DILocalVariable(name: "p", scope: !1369, file: !78, line: 327, type: !40)
!1369 = distinct !DILexicalBlock(scope: !1357, file: !78, line: 325, column: 3)
!1370 = !DILocalVariable(name: "c", scope: !1371, file: !78, line: 330, type: !30)
!1371 = distinct !DILexicalBlock(scope: !1369, file: !78, line: 329, column: 7)
!1372 = !DILocation(line: 306, column: 38, scope: !1357, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 525, column: 20, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1303, file: !78, line: 524, column: 13)
!1375 = !DILocation(line: 307, column: 30, scope: !1357, inlinedAt: !1373)
!1376 = !DILocation(line: 307, column: 55, scope: !1357, inlinedAt: !1373)
!1377 = !DILocation(line: 310, column: 12, scope: !1378, inlinedAt: !1373)
!1378 = distinct !DILexicalBlock(scope: !1357, file: !78, line: 310, column: 7)
!1379 = !{!1380}
!1380 = distinct !{!1380, !1381, !"get_8: argument 0"}
!1381 = distinct !{!1381, !"get_8"}
!1382 = !DILocation(line: 310, column: 7, scope: !1357, inlinedAt: !1373)
!1383 = !DILocation(line: 311, column: 12, scope: !1378, inlinedAt: !1373)
!1384 = !DILocation(line: 313, column: 7, scope: !1357, inlinedAt: !1373)
!1385 = !DILocation(line: 315, column: 19, scope: !1366, inlinedAt: !1373)
!1386 = !DILocation(line: 316, column: 23, scope: !1387, inlinedAt: !1373)
!1387 = distinct !DILexicalBlock(scope: !1366, file: !78, line: 316, column: 11)
!1388 = !DILocation(line: 316, column: 13, scope: !1387, inlinedAt: !1373)
!1389 = !DILocation(line: 316, column: 29, scope: !1387, inlinedAt: !1373)
!1390 = !DILocation(line: 316, column: 32, scope: !1387, inlinedAt: !1373)
!1391 = !DILocation(line: 316, column: 52, scope: !1387, inlinedAt: !1373)
!1392 = !DILocation(line: 316, column: 11, scope: !1366, inlinedAt: !1373)
!1393 = !DILocation(line: 319, column: 15, scope: !1394, inlinedAt: !1373)
!1394 = distinct !DILexicalBlock(scope: !1387, file: !78, line: 317, column: 9)
!1395 = !DILocation(line: 522, column: 21, scope: !1303)
!1396 = !DILocation(line: 532, column: 38, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1303, file: !78, line: 532, column: 13)
!1398 = !DILocation(line: 327, column: 17, scope: !1369, inlinedAt: !1373)
!1399 = !DILocation(line: 328, column: 14, scope: !1369, inlinedAt: !1373)
!1400 = !DILocation(line: 328, column: 5, scope: !1369, inlinedAt: !1373)
!1401 = !DILocation(line: 330, column: 20, scope: !1371, inlinedAt: !1373)
!1402 = !DILocation(line: 330, column: 18, scope: !1371, inlinedAt: !1373)
!1403 = !DILocation(line: 330, column: 14, scope: !1371, inlinedAt: !1373)
!1404 = !DILocation(line: 331, column: 15, scope: !1405, inlinedAt: !1373)
!1405 = distinct !DILexicalBlock(scope: !1371, file: !78, line: 331, column: 13)
!1406 = !DILocation(line: 331, column: 13, scope: !1371, inlinedAt: !1373)
!1407 = !DILocation(line: 333, column: 28, scope: !1408, inlinedAt: !1373)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !78, line: 332, column: 11)
!1409 = !DILocation(line: 333, column: 13, scope: !1408, inlinedAt: !1373)
!1410 = !DILocation(line: 333, column: 32, scope: !1408, inlinedAt: !1373)
!1411 = !DILocation(line: 334, column: 24, scope: !1412, inlinedAt: !1373)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !78, line: 334, column: 17)
!1413 = !DILocation(line: 334, column: 17, scope: !1408, inlinedAt: !1373)
!1414 = distinct !{!1414, !1415, !1416}
!1415 = !DILocation(line: 328, column: 5, scope: !1369)
!1416 = !DILocation(line: 337, column: 7, scope: !1369)
!1417 = !DILocation(line: 340, column: 27, scope: !1369, inlinedAt: !1373)
!1418 = !DILocation(line: 339, column: 9, scope: !1369, inlinedAt: !1373)
!1419 = !DILocation(line: 340, column: 22, scope: !1369, inlinedAt: !1373)
!1420 = !DILocation(line: 532, column: 19, scope: !1397)
!1421 = !DILocation(line: 532, column: 24, scope: !1397)
!1422 = !DILocation(line: 532, column: 34, scope: !1397)
!1423 = !DILocation(line: 537, column: 14, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1303, file: !78, line: 537, column: 13)
!1425 = !DILocation(line: 537, column: 13, scope: !1303)
!1426 = !DIExpression(DW_OP_deref)
!1427 = !DILocation(line: 540, column: 24, scope: !1303)
!1428 = distinct !{!1428, !1322, !1429}
!1429 = !DILocation(line: 542, column: 5, scope: !1287)
!1430 = !DILocation(line: 544, column: 14, scope: !1287)
!1431 = !DILocation(line: 544, column: 11, scope: !1287)
!1432 = !DILocation(line: 546, column: 16, scope: !1287)
!1433 = !DILocation(line: 547, column: 1, scope: !1287)
!1434 = !DILocation(line: 546, column: 3, scope: !1287)
!1435 = distinct !DISubprogram(name: "decode_8", scope: !78, file: !78, line: 360, type: !1436, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1439)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!113, !81, !82, !1438, !571}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1439 = !{!1440, !1441, !1442, !1443, !1444}
!1440 = !DILocalVariable(name: "in", arg: 1, scope: !1435, file: !78, line: 360, type: !81)
!1441 = !DILocalVariable(name: "inlen", arg: 2, scope: !1435, file: !78, line: 360, type: !82)
!1442 = !DILocalVariable(name: "outp", arg: 3, scope: !1435, file: !78, line: 361, type: !1438)
!1443 = !DILocalVariable(name: "outleft", arg: 4, scope: !1435, file: !78, line: 361, type: !571)
!1444 = !DILocalVariable(name: "out", scope: !1435, file: !78, line: 363, type: !29)
!1445 = !DILocation(line: 360, column: 32, scope: !1435)
!1446 = !DILocation(line: 360, column: 43, scope: !1435)
!1447 = !DILocation(line: 361, column: 27, scope: !1435)
!1448 = !DILocation(line: 361, column: 41, scope: !1435)
!1449 = !DILocation(line: 363, column: 15, scope: !1435)
!1450 = !DILocation(line: 363, column: 9, scope: !1435)
!1451 = !DILocation(line: 364, column: 13, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1435, file: !78, line: 364, column: 7)
!1453 = !DILocation(line: 364, column: 7, scope: !1435)
!1454 = !DILocation(line: 367, column: 18, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1435, file: !78, line: 367, column: 7)
!1456 = !DILocation(line: 286, column: 16, scope: !1262, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 367, column: 8, scope: !1455)
!1458 = !DILocation(line: 288, column: 49, scope: !1262, inlinedAt: !1457)
!1459 = !DILocation(line: 288, column: 46, scope: !1262, inlinedAt: !1457)
!1460 = !DILocation(line: 367, column: 25, scope: !1455)
!1461 = !DILocation(line: 367, column: 39, scope: !1455)
!1462 = !DILocation(line: 286, column: 16, scope: !1262, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 367, column: 29, scope: !1455)
!1464 = !DILocation(line: 288, column: 49, scope: !1262, inlinedAt: !1463)
!1465 = !DILocation(line: 288, column: 46, scope: !1262, inlinedAt: !1463)
!1466 = !DILocation(line: 367, column: 7, scope: !1435)
!1467 = !DILocation(line: 370, column: 7, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1435, file: !78, line: 370, column: 7)
!1469 = !DILocation(line: 370, column: 7, scope: !1435)
!1470 = !DILocation(line: 372, column: 18, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !78, line: 371, column: 5)
!1472 = !DILocation(line: 372, column: 40, scope: !1471)
!1473 = !DILocation(line: 373, column: 20, scope: !1471)
!1474 = !DILocation(line: 373, column: 42, scope: !1471)
!1475 = !DILocation(line: 373, column: 17, scope: !1471)
!1476 = !DILocation(line: 372, column: 16, scope: !1471)
!1477 = !DILocation(line: 372, column: 11, scope: !1471)
!1478 = !DILocation(line: 372, column: 14, scope: !1471)
!1479 = !DILocation(line: 374, column: 7, scope: !1471)
!1480 = !DILocation(line: 375, column: 5, scope: !1471)
!1481 = !DILocation(line: 377, column: 7, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1435, file: !78, line: 377, column: 7)
!1483 = !DILocation(line: 377, column: 13, scope: !1482)
!1484 = !DILocation(line: 377, column: 7, scope: !1435)
!1485 = !DILocation(line: 379, column: 11, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !78, line: 379, column: 11)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !78, line: 378, column: 5)
!1488 = !DILocation(line: 379, column: 17, scope: !1486)
!1489 = !DILocation(line: 379, column: 24, scope: !1486)
!1490 = !DILocation(line: 379, column: 27, scope: !1486)
!1491 = !DILocation(line: 379, column: 33, scope: !1486)
!1492 = !DILocation(line: 379, column: 40, scope: !1486)
!1493 = !DILocation(line: 379, column: 43, scope: !1486)
!1494 = !DILocation(line: 379, column: 49, scope: !1486)
!1495 = !DILocation(line: 380, column: 11, scope: !1486)
!1496 = !DILocation(line: 380, column: 14, scope: !1486)
!1497 = !DILocation(line: 380, column: 20, scope: !1486)
!1498 = !DILocation(line: 380, column: 27, scope: !1486)
!1499 = !DILocation(line: 380, column: 30, scope: !1486)
!1500 = !DILocation(line: 380, column: 36, scope: !1486)
!1501 = !DILocation(line: 379, column: 11, scope: !1487)
!1502 = !DILocation(line: 381, column: 9, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1486, file: !78, line: 381, column: 9)
!1504 = !DILocation(line: 286, column: 16, scope: !1262, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 385, column: 12, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !78, line: 385, column: 11)
!1507 = distinct !DILexicalBlock(scope: !1482, file: !78, line: 384, column: 5)
!1508 = !DILocation(line: 288, column: 49, scope: !1262, inlinedAt: !1505)
!1509 = !DILocation(line: 288, column: 46, scope: !1262, inlinedAt: !1505)
!1510 = !DILocation(line: 385, column: 29, scope: !1506)
!1511 = !DILocation(line: 385, column: 43, scope: !1506)
!1512 = !DILocation(line: 286, column: 16, scope: !1262, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 385, column: 33, scope: !1506)
!1514 = !DILocation(line: 288, column: 49, scope: !1262, inlinedAt: !1513)
!1515 = !DILocation(line: 288, column: 46, scope: !1262, inlinedAt: !1513)
!1516 = !DILocation(line: 385, column: 11, scope: !1507)
!1517 = !DILocation(line: 386, column: 9, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1506, file: !78, line: 386, column: 9)
!1519 = !DILocation(line: 388, column: 11, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1507, file: !78, line: 388, column: 11)
!1521 = !DILocation(line: 388, column: 11, scope: !1507)
!1522 = !DILocation(line: 390, column: 22, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1520, file: !78, line: 389, column: 9)
!1524 = !DILocation(line: 390, column: 44, scope: !1523)
!1525 = !DILocation(line: 391, column: 24, scope: !1523)
!1526 = !DILocation(line: 391, column: 46, scope: !1523)
!1527 = !DILocation(line: 391, column: 21, scope: !1523)
!1528 = !DILocation(line: 392, column: 24, scope: !1523)
!1529 = !DILocation(line: 392, column: 46, scope: !1523)
!1530 = !DILocation(line: 392, column: 21, scope: !1523)
!1531 = !DILocation(line: 390, column: 20, scope: !1523)
!1532 = !DILocation(line: 390, column: 15, scope: !1523)
!1533 = !DILocation(line: 390, column: 18, scope: !1523)
!1534 = !DILocation(line: 393, column: 11, scope: !1523)
!1535 = !DILocation(line: 394, column: 9, scope: !1523)
!1536 = !DILocation(line: 396, column: 11, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1507, file: !78, line: 396, column: 11)
!1538 = !DILocation(line: 396, column: 17, scope: !1537)
!1539 = !DILocation(line: 396, column: 11, scope: !1507)
!1540 = !DILocation(line: 398, column: 15, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !78, line: 398, column: 15)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !78, line: 397, column: 9)
!1543 = !DILocation(line: 398, column: 21, scope: !1541)
!1544 = !DILocation(line: 398, column: 28, scope: !1541)
!1545 = !DILocation(line: 398, column: 31, scope: !1541)
!1546 = !DILocation(line: 398, column: 37, scope: !1541)
!1547 = !DILocation(line: 398, column: 44, scope: !1541)
!1548 = !DILocation(line: 398, column: 47, scope: !1541)
!1549 = !DILocation(line: 398, column: 53, scope: !1541)
!1550 = !DILocation(line: 398, column: 15, scope: !1542)
!1551 = !DILocation(line: 399, column: 13, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1541, file: !78, line: 399, column: 13)
!1553 = !DILocation(line: 286, column: 16, scope: !1262, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 403, column: 16, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !78, line: 403, column: 15)
!1556 = distinct !DILexicalBlock(scope: !1537, file: !78, line: 402, column: 9)
!1557 = !DILocation(line: 288, column: 49, scope: !1262, inlinedAt: !1554)
!1558 = !DILocation(line: 288, column: 46, scope: !1262, inlinedAt: !1554)
!1559 = !DILocation(line: 403, column: 15, scope: !1556)
!1560 = !DILocation(line: 404, column: 13, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1555, file: !78, line: 404, column: 13)
!1562 = !DILocation(line: 406, column: 15, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1556, file: !78, line: 406, column: 15)
!1564 = !DILocation(line: 406, column: 15, scope: !1556)
!1565 = !DILocation(line: 408, column: 26, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1563, file: !78, line: 407, column: 13)
!1567 = !DILocation(line: 408, column: 48, scope: !1566)
!1568 = !DILocation(line: 409, column: 28, scope: !1566)
!1569 = !DILocation(line: 409, column: 50, scope: !1566)
!1570 = !DILocation(line: 409, column: 25, scope: !1566)
!1571 = !DILocation(line: 408, column: 24, scope: !1566)
!1572 = !DILocation(line: 408, column: 19, scope: !1566)
!1573 = !DILocation(line: 408, column: 22, scope: !1566)
!1574 = !DILocation(line: 410, column: 15, scope: !1566)
!1575 = !DILocation(line: 411, column: 13, scope: !1566)
!1576 = !DILocation(line: 413, column: 15, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1556, file: !78, line: 413, column: 15)
!1578 = !DILocation(line: 413, column: 21, scope: !1577)
!1579 = !DILocation(line: 413, column: 15, scope: !1556)
!1580 = !DILocation(line: 415, column: 19, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !78, line: 415, column: 19)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !78, line: 414, column: 13)
!1583 = !DILocation(line: 415, column: 25, scope: !1581)
!1584 = !DILocation(line: 415, column: 32, scope: !1581)
!1585 = !DILocation(line: 415, column: 35, scope: !1581)
!1586 = !DILocation(line: 415, column: 41, scope: !1581)
!1587 = !DILocation(line: 415, column: 19, scope: !1582)
!1588 = !DILocation(line: 416, column: 17, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1581, file: !78, line: 416, column: 17)
!1590 = !DILocation(line: 286, column: 16, scope: !1262, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 420, column: 20, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !78, line: 420, column: 19)
!1593 = distinct !DILexicalBlock(scope: !1577, file: !78, line: 419, column: 13)
!1594 = !DILocation(line: 288, column: 49, scope: !1262, inlinedAt: !1591)
!1595 = !DILocation(line: 288, column: 46, scope: !1262, inlinedAt: !1591)
!1596 = !DILocation(line: 420, column: 37, scope: !1592)
!1597 = !DILocation(line: 420, column: 51, scope: !1592)
!1598 = !DILocation(line: 286, column: 16, scope: !1262, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 420, column: 41, scope: !1592)
!1600 = !DILocation(line: 288, column: 49, scope: !1262, inlinedAt: !1599)
!1601 = !DILocation(line: 288, column: 46, scope: !1262, inlinedAt: !1599)
!1602 = !DILocation(line: 420, column: 19, scope: !1593)
!1603 = !DILocation(line: 421, column: 17, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1592, file: !78, line: 421, column: 17)
!1605 = !DILocation(line: 423, column: 19, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1593, file: !78, line: 423, column: 19)
!1607 = !DILocation(line: 423, column: 19, scope: !1593)
!1608 = !DILocation(line: 425, column: 44, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !78, line: 424, column: 17)
!1610 = !DILocation(line: 425, column: 30, scope: !1609)
!1611 = !DILocation(line: 425, column: 52, scope: !1609)
!1612 = !DILocation(line: 426, column: 32, scope: !1609)
!1613 = !DILocation(line: 426, column: 54, scope: !1609)
!1614 = !DILocation(line: 427, column: 32, scope: !1609)
!1615 = !DILocation(line: 427, column: 54, scope: !1609)
!1616 = !DILocation(line: 426, column: 29, scope: !1609)
!1617 = !DILocation(line: 427, column: 29, scope: !1609)
!1618 = !DILocation(line: 425, column: 28, scope: !1609)
!1619 = !DILocation(line: 425, column: 23, scope: !1609)
!1620 = !DILocation(line: 425, column: 26, scope: !1609)
!1621 = !DILocation(line: 428, column: 19, scope: !1609)
!1622 = !DILocation(line: 429, column: 17, scope: !1609)
!1623 = !DILocation(line: 431, column: 19, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1593, file: !78, line: 431, column: 19)
!1625 = !DILocation(line: 431, column: 25, scope: !1624)
!1626 = !DILocation(line: 431, column: 19, scope: !1593)
!1627 = !DILocation(line: 286, column: 16, scope: !1262, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 433, column: 24, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !78, line: 433, column: 23)
!1630 = distinct !DILexicalBlock(scope: !1624, file: !78, line: 432, column: 17)
!1631 = !DILocation(line: 288, column: 49, scope: !1262, inlinedAt: !1628)
!1632 = !DILocation(line: 288, column: 46, scope: !1262, inlinedAt: !1628)
!1633 = !DILocation(line: 433, column: 23, scope: !1630)
!1634 = !DILocation(line: 434, column: 21, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1629, file: !78, line: 434, column: 21)
!1636 = !DILocation(line: 436, column: 23, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1630, file: !78, line: 436, column: 23)
!1638 = !DILocation(line: 436, column: 23, scope: !1630)
!1639 = !DILocation(line: 438, column: 48, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !78, line: 437, column: 21)
!1641 = !DILocation(line: 438, column: 34, scope: !1640)
!1642 = !DILocation(line: 438, column: 56, scope: !1640)
!1643 = !DILocation(line: 439, column: 33, scope: !1640)
!1644 = !DILocation(line: 438, column: 27, scope: !1640)
!1645 = !DILocation(line: 438, column: 30, scope: !1640)
!1646 = !DILocation(line: 440, column: 23, scope: !1640)
!1647 = !DILocation(line: 441, column: 21, scope: !1640)
!1648 = !DILocation(line: 447, column: 9, scope: !1435)
!1649 = !DILocation(line: 448, column: 3, scope: !1435)
!1650 = !DILocation(line: 449, column: 1, scope: !1435)
!1651 = distinct !DISubprogram(name: "base32_decode_alloc_ctx", scope: !78, file: !78, line: 561, type: !1652, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !1654)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!113, !1274, !40, !82, !667, !571}
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660}
!1655 = !DILocalVariable(name: "ctx", arg: 1, scope: !1651, file: !78, line: 561, type: !1274)
!1656 = !DILocalVariable(name: "in", arg: 2, scope: !1651, file: !78, line: 562, type: !40)
!1657 = !DILocalVariable(name: "inlen", arg: 3, scope: !1651, file: !78, line: 562, type: !82)
!1658 = !DILocalVariable(name: "out", arg: 4, scope: !1651, file: !78, line: 562, type: !667)
!1659 = !DILocalVariable(name: "outlen", arg: 5, scope: !1651, file: !78, line: 563, type: !571)
!1660 = !DILocalVariable(name: "needlen", scope: !1651, file: !78, line: 570, type: !82)
!1661 = !DILocation(line: 561, column: 56, scope: !1651)
!1662 = !DILocation(line: 562, column: 38, scope: !1651)
!1663 = !DILocation(line: 562, column: 49, scope: !1651)
!1664 = !DILocation(line: 562, column: 63, scope: !1651)
!1665 = !DILocation(line: 563, column: 34, scope: !1651)
!1666 = !DILocation(line: 570, column: 3, scope: !1651)
!1667 = !DILocation(line: 570, column: 31, scope: !1651)
!1668 = !DILocation(line: 570, column: 22, scope: !1651)
!1669 = !DILocation(line: 570, column: 36, scope: !1651)
!1670 = !DILocation(line: 570, column: 10, scope: !1651)
!1671 = !DILocation(line: 572, column: 10, scope: !1651)
!1672 = !DILocation(line: 572, column: 8, scope: !1651)
!1673 = !DILocation(line: 573, column: 8, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1651, file: !78, line: 573, column: 7)
!1675 = !DILocation(line: 573, column: 7, scope: !1651)
!1676 = !DILocation(line: 576, column: 8, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1651, file: !78, line: 576, column: 7)
!1678 = !DILocation(line: 576, column: 7, scope: !1651)
!1679 = !DILocation(line: 578, column: 13, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !78, line: 577, column: 5)
!1681 = !DILocation(line: 578, column: 7, scope: !1680)
!1682 = !DILocation(line: 579, column: 12, scope: !1680)
!1683 = !DILocation(line: 580, column: 7, scope: !1680)
!1684 = !DILocation(line: 583, column: 7, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1651, file: !78, line: 583, column: 7)
!1686 = !DILocation(line: 583, column: 7, scope: !1651)
!1687 = !DILocation(line: 584, column: 15, scope: !1685)
!1688 = !DILocation(line: 584, column: 13, scope: !1685)
!1689 = !DILocation(line: 584, column: 5, scope: !1685)
!1690 = !DILocation(line: 587, column: 1, scope: !1651)
!1691 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !112, file: !112, line: 41, type: !38, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1692)
!1692 = !{!1693}
!1693 = !DILocalVariable(name: "file", arg: 1, scope: !1691, file: !112, line: 41, type: !40)
!1694 = !DILocation(line: 41, column: 41, scope: !1691)
!1695 = !DILocation(line: 43, column: 13, scope: !1691)
!1696 = !DILocation(line: 44, column: 1, scope: !1691)
!1697 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !112, file: !112, line: 78, type: !1698, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1700)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null, !113}
!1700 = !{!1701}
!1701 = !DILocalVariable(name: "ignore", arg: 1, scope: !1697, file: !112, line: 78, type: !113)
!1702 = !DILocation(line: 78, column: 37, scope: !1697)
!1703 = !DILocation(line: 80, column: 16, scope: !1697)
!1704 = !{!1705, !1705, i64 0}
!1705 = !{!"_Bool", !632, i64 0}
!1706 = !DILocation(line: 81, column: 1, scope: !1697)
!1707 = distinct !DISubprogram(name: "close_stdout", scope: !112, file: !112, line: 107, type: !638, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1708)
!1708 = !{!1709}
!1709 = !DILocalVariable(name: "write_error", scope: !1710, file: !112, line: 112, type: !40)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !112, line: 111, column: 5)
!1711 = distinct !DILexicalBlock(scope: !1707, file: !112, line: 109, column: 7)
!1712 = !DILocation(line: 109, column: 21, scope: !1711)
!1713 = !DILocation(line: 109, column: 7, scope: !1711)
!1714 = !DILocation(line: 109, column: 29, scope: !1711)
!1715 = !DILocation(line: 110, column: 7, scope: !1711)
!1716 = !DILocation(line: 110, column: 12, scope: !1711)
!1717 = !{i8 0, i8 2}
!1718 = !DILocation(line: 114, column: 19, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1710, file: !112, line: 113, column: 11)
!1720 = !DILocation(line: 110, column: 25, scope: !1711)
!1721 = !DILocation(line: 110, column: 28, scope: !1711)
!1722 = !DILocation(line: 110, column: 34, scope: !1711)
!1723 = !DILocation(line: 109, column: 7, scope: !1707)
!1724 = !DILocation(line: 112, column: 33, scope: !1710)
!1725 = !DILocation(line: 112, column: 19, scope: !1710)
!1726 = !DILocation(line: 113, column: 11, scope: !1719)
!1727 = !DILocation(line: 113, column: 11, scope: !1710)
!1728 = !DILocation(line: 114, column: 36, scope: !1719)
!1729 = !DILocation(line: 114, column: 9, scope: !1719)
!1730 = !DILocation(line: 117, column: 9, scope: !1719)
!1731 = !DILocation(line: 119, column: 14, scope: !1710)
!1732 = !DILocation(line: 119, column: 7, scope: !1710)
!1733 = !DILocation(line: 122, column: 22, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1707, file: !112, line: 122, column: 8)
!1735 = !DILocation(line: 122, column: 8, scope: !1734)
!1736 = !DILocation(line: 122, column: 30, scope: !1734)
!1737 = !DILocation(line: 122, column: 8, scope: !1707)
!1738 = !DILocation(line: 123, column: 13, scope: !1734)
!1739 = !DILocation(line: 123, column: 6, scope: !1734)
!1740 = !DILocation(line: 124, column: 1, scope: !1707)
!1741 = distinct !DISubprogram(name: "fdadvise", scope: !1742, file: !1742, line: 31, type: !1743, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !1748)
!1742 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !63, !1745, !1745, !1747}
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1746, line: 57, baseType: !703)
!1746 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1748 = !{!1749, !1750, !1751, !1752, !1753}
!1749 = !DILocalVariable(name: "fd", arg: 1, scope: !1741, file: !1742, line: 31, type: !63)
!1750 = !DILocalVariable(name: "offset", arg: 2, scope: !1741, file: !1742, line: 31, type: !1745)
!1751 = !DILocalVariable(name: "len", arg: 3, scope: !1741, file: !1742, line: 31, type: !1745)
!1752 = !DILocalVariable(name: "advice", arg: 4, scope: !1741, file: !1742, line: 31, type: !1747)
!1753 = !DILocalVariable(name: "__x", scope: !1754, file: !1742, line: 34, type: !63)
!1754 = distinct !DILexicalBlock(scope: !1741, file: !1742, line: 34, column: 3)
!1755 = !DILocation(line: 31, column: 15, scope: !1741)
!1756 = !DILocation(line: 31, column: 25, scope: !1741)
!1757 = !DILocation(line: 31, column: 39, scope: !1741)
!1758 = !DILocation(line: 31, column: 54, scope: !1741)
!1759 = !DILocation(line: 34, column: 3, scope: !1754)
!1760 = !DILocation(line: 36, column: 1, scope: !1741)
!1761 = distinct !DISubprogram(name: "fadvise", scope: !1742, file: !1742, line: 39, type: !1762, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !1804)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1764, !1747}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !675, line: 7, baseType: !1766)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 241, size: 1728, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1766, file: !677, line: 242, baseType: !63, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1766, file: !677, line: 247, baseType: !29, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1766, file: !677, line: 248, baseType: !29, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1766, file: !677, line: 249, baseType: !29, size: 64, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1766, file: !677, line: 250, baseType: !29, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1766, file: !677, line: 251, baseType: !29, size: 64, offset: 320)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1766, file: !677, line: 252, baseType: !29, size: 64, offset: 384)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1766, file: !677, line: 253, baseType: !29, size: 64, offset: 448)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1766, file: !677, line: 254, baseType: !29, size: 64, offset: 512)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1766, file: !677, line: 256, baseType: !29, size: 64, offset: 576)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1766, file: !677, line: 257, baseType: !29, size: 64, offset: 640)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1766, file: !677, line: 258, baseType: !29, size: 64, offset: 704)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1766, file: !677, line: 260, baseType: !1781, size: 64, offset: 768)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !677, line: 156, size: 192, elements: !1783)
!1783 = !{!1784, !1785, !1787}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1782, file: !677, line: 157, baseType: !1781, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1782, file: !677, line: 158, baseType: !1786, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1782, file: !677, line: 162, baseType: !63, size: 32, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1766, file: !677, line: 262, baseType: !1786, size: 64, offset: 832)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1766, file: !677, line: 264, baseType: !63, size: 32, offset: 896)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1766, file: !677, line: 268, baseType: !63, size: 32, offset: 928)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1766, file: !677, line: 270, baseType: !703, size: 64, offset: 960)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1766, file: !677, line: 274, baseType: !153, size: 16, offset: 1024)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1766, file: !677, line: 275, baseType: !94, size: 8, offset: 1040)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1766, file: !677, line: 276, baseType: !709, size: 8, offset: 1048)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1766, file: !677, line: 280, baseType: !713, size: 64, offset: 1088)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1766, file: !677, line: 289, baseType: !716, size: 64, offset: 1152)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1766, file: !677, line: 297, baseType: !31, size: 64, offset: 1216)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1766, file: !677, line: 298, baseType: !31, size: 64, offset: 1280)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1766, file: !677, line: 299, baseType: !31, size: 64, offset: 1344)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1766, file: !677, line: 300, baseType: !31, size: 64, offset: 1408)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1766, file: !677, line: 302, baseType: !82, size: 64, offset: 1472)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1766, file: !677, line: 303, baseType: !63, size: 32, offset: 1536)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1766, file: !677, line: 305, baseType: !724, size: 160, offset: 1568)
!1804 = !{!1805, !1806}
!1805 = !DILocalVariable(name: "fp", arg: 1, scope: !1761, file: !1742, line: 39, type: !1764)
!1806 = !DILocalVariable(name: "advice", arg: 2, scope: !1761, file: !1742, line: 39, type: !1747)
!1807 = !DILocation(line: 39, column: 16, scope: !1761)
!1808 = !DILocation(line: 39, column: 30, scope: !1761)
!1809 = !DILocation(line: 41, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1761, file: !1742, line: 41, column: 7)
!1811 = !DILocation(line: 41, column: 7, scope: !1761)
!1812 = !DILocation(line: 42, column: 15, scope: !1810)
!1813 = !DILocation(line: 31, column: 15, scope: !1741, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 42, column: 5, scope: !1810)
!1815 = !DILocation(line: 31, column: 25, scope: !1741, inlinedAt: !1814)
!1816 = !DILocation(line: 31, column: 39, scope: !1741, inlinedAt: !1814)
!1817 = !DILocation(line: 31, column: 54, scope: !1741, inlinedAt: !1814)
!1818 = !DILocation(line: 34, column: 3, scope: !1754, inlinedAt: !1814)
!1819 = !DILocation(line: 42, column: 5, scope: !1810)
!1820 = !DILocation(line: 43, column: 1, scope: !1761)
!1821 = distinct !DISubprogram(name: "set_program_name", scope: !126, file: !126, line: 39, type: !38, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !123, variables: !1822)
!1822 = !{!1823, !1824, !1825}
!1823 = !DILocalVariable(name: "argv0", arg: 1, scope: !1821, file: !126, line: 39, type: !40)
!1824 = !DILocalVariable(name: "slash", scope: !1821, file: !126, line: 46, type: !40)
!1825 = !DILocalVariable(name: "base", scope: !1821, file: !126, line: 47, type: !40)
!1826 = !DILocation(line: 39, column: 31, scope: !1821)
!1827 = !DILocation(line: 51, column: 13, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1821, file: !126, line: 51, column: 7)
!1829 = !DILocation(line: 51, column: 7, scope: !1821)
!1830 = !DILocation(line: 55, column: 14, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1828, file: !126, line: 52, column: 5)
!1832 = !DILocation(line: 54, column: 7, scope: !1831)
!1833 = !DILocation(line: 56, column: 7, scope: !1831)
!1834 = !DILocation(line: 59, column: 11, scope: !1821)
!1835 = !DILocation(line: 46, column: 15, scope: !1821)
!1836 = !DILocation(line: 60, column: 17, scope: !1821)
!1837 = !DILocation(line: 60, column: 33, scope: !1821)
!1838 = !DILocation(line: 60, column: 11, scope: !1821)
!1839 = !DILocation(line: 47, column: 15, scope: !1821)
!1840 = !DILocation(line: 61, column: 12, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1821, file: !126, line: 61, column: 7)
!1842 = !DILocation(line: 61, column: 20, scope: !1841)
!1843 = !DILocation(line: 61, column: 25, scope: !1841)
!1844 = !DILocation(line: 61, column: 42, scope: !1841)
!1845 = !DILocation(line: 61, column: 28, scope: !1841)
!1846 = !DILocation(line: 61, column: 61, scope: !1841)
!1847 = !DILocation(line: 61, column: 7, scope: !1821)
!1848 = !DILocation(line: 64, column: 11, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !126, line: 64, column: 11)
!1850 = distinct !DILexicalBlock(scope: !1841, file: !126, line: 62, column: 5)
!1851 = !DILocation(line: 64, column: 36, scope: !1849)
!1852 = !DILocation(line: 64, column: 11, scope: !1850)
!1853 = !DILocation(line: 66, column: 24, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1849, file: !126, line: 65, column: 9)
!1855 = !DILocation(line: 70, column: 41, scope: !1854)
!1856 = !DILocation(line: 72, column: 9, scope: !1854)
!1857 = !DILocation(line: 84, column: 16, scope: !1821)
!1858 = !DILocation(line: 90, column: 27, scope: !1821)
!1859 = !DILocation(line: 92, column: 1, scope: !1821)
!1860 = distinct !DISubprogram(name: "clone_quoting_options", scope: !157, file: !157, line: 114, type: !1861, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1864)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1863, !1863}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1864 = !{!1865, !1866, !1867}
!1865 = !DILocalVariable(name: "o", arg: 1, scope: !1860, file: !157, line: 114, type: !1863)
!1866 = !DILocalVariable(name: "e", scope: !1860, file: !157, line: 116, type: !63)
!1867 = !DILocalVariable(name: "p", scope: !1860, file: !157, line: 117, type: !1863)
!1868 = !DILocation(line: 114, column: 48, scope: !1860)
!1869 = !DILocation(line: 116, column: 11, scope: !1860)
!1870 = !DILocation(line: 116, column: 7, scope: !1860)
!1871 = !DILocation(line: 117, column: 40, scope: !1860)
!1872 = !DILocation(line: 117, column: 31, scope: !1860)
!1873 = !DILocation(line: 117, column: 27, scope: !1860)
!1874 = !DILocation(line: 119, column: 9, scope: !1860)
!1875 = !DILocation(line: 120, column: 3, scope: !1860)
!1876 = distinct !DISubprogram(name: "get_quoting_style", scope: !157, file: !157, line: 125, type: !1877, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1881)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!5, !1879}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1881 = !{!1882}
!1882 = !DILocalVariable(name: "o", arg: 1, scope: !1876, file: !157, line: 125, type: !1879)
!1883 = !DILocation(line: 125, column: 50, scope: !1876)
!1884 = !DILocation(line: 127, column: 11, scope: !1876)
!1885 = !DILocation(line: 127, column: 46, scope: !1876)
!1886 = !{!1887, !632, i64 0}
!1887 = !{!"quoting_options", !632, i64 0, !819, i64 4, !632, i64 8, !631, i64 40, !631, i64 48}
!1888 = !DILocation(line: 127, column: 3, scope: !1876)
!1889 = distinct !DISubprogram(name: "set_quoting_style", scope: !157, file: !157, line: 133, type: !1890, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !1863, !5}
!1892 = !{!1893, !1894}
!1893 = !DILocalVariable(name: "o", arg: 1, scope: !1889, file: !157, line: 133, type: !1863)
!1894 = !DILocalVariable(name: "s", arg: 2, scope: !1889, file: !157, line: 133, type: !5)
!1895 = !DILocation(line: 133, column: 44, scope: !1889)
!1896 = !DILocation(line: 133, column: 66, scope: !1889)
!1897 = !DILocation(line: 135, column: 4, scope: !1889)
!1898 = !DILocation(line: 135, column: 39, scope: !1889)
!1899 = !DILocation(line: 135, column: 45, scope: !1889)
!1900 = !DILocation(line: 136, column: 1, scope: !1889)
!1901 = distinct !DISubprogram(name: "set_char_quoting", scope: !157, file: !157, line: 144, type: !1902, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!63, !1863, !30, !63}
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1911, !1912}
!1905 = !DILocalVariable(name: "o", arg: 1, scope: !1901, file: !157, line: 144, type: !1863)
!1906 = !DILocalVariable(name: "c", arg: 2, scope: !1901, file: !157, line: 144, type: !30)
!1907 = !DILocalVariable(name: "i", arg: 3, scope: !1901, file: !157, line: 144, type: !63)
!1908 = !DILocalVariable(name: "uc", scope: !1901, file: !157, line: 146, type: !32)
!1909 = !DILocalVariable(name: "p", scope: !1901, file: !157, line: 147, type: !1910)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!1911 = !DILocalVariable(name: "shift", scope: !1901, file: !157, line: 149, type: !63)
!1912 = !DILocalVariable(name: "r", scope: !1901, file: !157, line: 150, type: !63)
!1913 = !DILocation(line: 144, column: 43, scope: !1901)
!1914 = !DILocation(line: 144, column: 51, scope: !1901)
!1915 = !DILocation(line: 144, column: 58, scope: !1901)
!1916 = !DILocation(line: 146, column: 17, scope: !1901)
!1917 = !DILocation(line: 148, column: 6, scope: !1901)
!1918 = !DILocation(line: 148, column: 62, scope: !1901)
!1919 = !DILocation(line: 148, column: 57, scope: !1901)
!1920 = !DILocation(line: 147, column: 17, scope: !1901)
!1921 = !DILocation(line: 149, column: 18, scope: !1901)
!1922 = !DILocation(line: 149, column: 15, scope: !1901)
!1923 = !DILocation(line: 149, column: 7, scope: !1901)
!1924 = !DILocation(line: 150, column: 12, scope: !1901)
!1925 = !DILocation(line: 150, column: 15, scope: !1901)
!1926 = !DILocation(line: 150, column: 25, scope: !1901)
!1927 = !DILocation(line: 150, column: 7, scope: !1901)
!1928 = !DILocation(line: 151, column: 13, scope: !1901)
!1929 = !DILocation(line: 151, column: 18, scope: !1901)
!1930 = !DILocation(line: 151, column: 23, scope: !1901)
!1931 = !DILocation(line: 151, column: 6, scope: !1901)
!1932 = !DILocation(line: 152, column: 3, scope: !1901)
!1933 = distinct !DISubprogram(name: "set_quoting_flags", scope: !157, file: !157, line: 160, type: !1934, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1936)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!63, !1863, !63}
!1936 = !{!1937, !1938, !1939}
!1937 = !DILocalVariable(name: "o", arg: 1, scope: !1933, file: !157, line: 160, type: !1863)
!1938 = !DILocalVariable(name: "i", arg: 2, scope: !1933, file: !157, line: 160, type: !63)
!1939 = !DILocalVariable(name: "r", scope: !1933, file: !157, line: 162, type: !63)
!1940 = !DILocation(line: 160, column: 44, scope: !1933)
!1941 = !DILocation(line: 160, column: 51, scope: !1933)
!1942 = !DILocation(line: 163, column: 8, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1933, file: !157, line: 163, column: 7)
!1944 = !DILocation(line: 163, column: 7, scope: !1933)
!1945 = !DILocation(line: 165, column: 10, scope: !1933)
!1946 = !{!1887, !819, i64 4}
!1947 = !DILocation(line: 162, column: 7, scope: !1933)
!1948 = !DILocation(line: 166, column: 12, scope: !1933)
!1949 = !DILocation(line: 167, column: 3, scope: !1933)
!1950 = distinct !DISubprogram(name: "set_custom_quoting", scope: !157, file: !157, line: 171, type: !1951, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !1863, !40, !40}
!1953 = !{!1954, !1955, !1956}
!1954 = !DILocalVariable(name: "o", arg: 1, scope: !1950, file: !157, line: 171, type: !1863)
!1955 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1950, file: !157, line: 172, type: !40)
!1956 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1950, file: !157, line: 172, type: !40)
!1957 = !DILocation(line: 171, column: 45, scope: !1950)
!1958 = !DILocation(line: 172, column: 33, scope: !1950)
!1959 = !DILocation(line: 172, column: 57, scope: !1950)
!1960 = !DILocation(line: 174, column: 8, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1950, file: !157, line: 174, column: 7)
!1962 = !DILocation(line: 174, column: 7, scope: !1950)
!1963 = !DILocation(line: 176, column: 6, scope: !1950)
!1964 = !DILocation(line: 176, column: 12, scope: !1950)
!1965 = !DILocation(line: 177, column: 8, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1950, file: !157, line: 177, column: 7)
!1967 = !DILocation(line: 177, column: 23, scope: !1966)
!1968 = !DILocation(line: 177, column: 19, scope: !1966)
!1969 = !DILocation(line: 178, column: 5, scope: !1966)
!1970 = !DILocation(line: 179, column: 6, scope: !1950)
!1971 = !DILocation(line: 179, column: 17, scope: !1950)
!1972 = !{!1887, !631, i64 40}
!1973 = !DILocation(line: 180, column: 6, scope: !1950)
!1974 = !DILocation(line: 180, column: 18, scope: !1950)
!1975 = !{!1887, !631, i64 48}
!1976 = !DILocation(line: 181, column: 1, scope: !1950)
!1977 = distinct !DISubprogram(name: "quotearg_buffer", scope: !157, file: !157, line: 776, type: !1978, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !1980)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!82, !29, !82, !40, !82, !1879}
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988}
!1981 = !DILocalVariable(name: "buffer", arg: 1, scope: !1977, file: !157, line: 776, type: !29)
!1982 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1977, file: !157, line: 776, type: !82)
!1983 = !DILocalVariable(name: "arg", arg: 3, scope: !1977, file: !157, line: 777, type: !40)
!1984 = !DILocalVariable(name: "argsize", arg: 4, scope: !1977, file: !157, line: 777, type: !82)
!1985 = !DILocalVariable(name: "o", arg: 5, scope: !1977, file: !157, line: 778, type: !1879)
!1986 = !DILocalVariable(name: "p", scope: !1977, file: !157, line: 780, type: !1879)
!1987 = !DILocalVariable(name: "e", scope: !1977, file: !157, line: 781, type: !63)
!1988 = !DILocalVariable(name: "r", scope: !1977, file: !157, line: 782, type: !82)
!1989 = !DILocation(line: 776, column: 24, scope: !1977)
!1990 = !DILocation(line: 776, column: 39, scope: !1977)
!1991 = !DILocation(line: 777, column: 30, scope: !1977)
!1992 = !DILocation(line: 777, column: 42, scope: !1977)
!1993 = !DILocation(line: 778, column: 48, scope: !1977)
!1994 = !DILocation(line: 780, column: 37, scope: !1977)
!1995 = !DILocation(line: 780, column: 33, scope: !1977)
!1996 = !DILocation(line: 781, column: 11, scope: !1977)
!1997 = !DILocation(line: 781, column: 7, scope: !1977)
!1998 = !DILocation(line: 783, column: 43, scope: !1977)
!1999 = !DILocation(line: 783, column: 53, scope: !1977)
!2000 = !DILocation(line: 783, column: 60, scope: !1977)
!2001 = !DILocation(line: 784, column: 43, scope: !1977)
!2002 = !DILocation(line: 784, column: 58, scope: !1977)
!2003 = !DILocation(line: 782, column: 14, scope: !1977)
!2004 = !DILocation(line: 782, column: 10, scope: !1977)
!2005 = !DILocation(line: 785, column: 9, scope: !1977)
!2006 = !DILocation(line: 786, column: 3, scope: !1977)
!2007 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !157, file: !157, line: 248, type: !2008, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2012)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!82, !29, !82, !40, !82, !5, !63, !2010, !40, !40}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!2012 = !{!2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2037, !2038, !2039, !2040, !2041, !2044, !2045, !2063, !2066, !2067, !2074}
!2013 = !DILocalVariable(name: "buffer", arg: 1, scope: !2007, file: !157, line: 248, type: !29)
!2014 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2007, file: !157, line: 248, type: !82)
!2015 = !DILocalVariable(name: "arg", arg: 3, scope: !2007, file: !157, line: 249, type: !40)
!2016 = !DILocalVariable(name: "argsize", arg: 4, scope: !2007, file: !157, line: 249, type: !82)
!2017 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2007, file: !157, line: 250, type: !5)
!2018 = !DILocalVariable(name: "flags", arg: 6, scope: !2007, file: !157, line: 250, type: !63)
!2019 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2007, file: !157, line: 251, type: !2010)
!2020 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2007, file: !157, line: 252, type: !40)
!2021 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2007, file: !157, line: 253, type: !40)
!2022 = !DILocalVariable(name: "i", scope: !2007, file: !157, line: 255, type: !82)
!2023 = !DILocalVariable(name: "len", scope: !2007, file: !157, line: 256, type: !82)
!2024 = !DILocalVariable(name: "orig_buffersize", scope: !2007, file: !157, line: 257, type: !82)
!2025 = !DILocalVariable(name: "quote_string", scope: !2007, file: !157, line: 258, type: !40)
!2026 = !DILocalVariable(name: "quote_string_len", scope: !2007, file: !157, line: 259, type: !82)
!2027 = !DILocalVariable(name: "backslash_escapes", scope: !2007, file: !157, line: 260, type: !113)
!2028 = !DILocalVariable(name: "unibyte_locale", scope: !2007, file: !157, line: 261, type: !113)
!2029 = !DILocalVariable(name: "elide_outer_quotes", scope: !2007, file: !157, line: 262, type: !113)
!2030 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2007, file: !157, line: 263, type: !113)
!2031 = !DILocalVariable(name: "encountered_single_quote", scope: !2007, file: !157, line: 264, type: !113)
!2032 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2007, file: !157, line: 265, type: !113)
!2033 = !DILocalVariable(name: "c", scope: !2034, file: !157, line: 394, type: !32)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !157, line: 393, column: 5)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !157, line: 392, column: 3)
!2036 = distinct !DILexicalBlock(scope: !2007, file: !157, line: 392, column: 3)
!2037 = !DILocalVariable(name: "esc", scope: !2034, file: !157, line: 395, type: !32)
!2038 = !DILocalVariable(name: "is_right_quote", scope: !2034, file: !157, line: 396, type: !113)
!2039 = !DILocalVariable(name: "escaping", scope: !2034, file: !157, line: 397, type: !113)
!2040 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2034, file: !157, line: 398, type: !113)
!2041 = !DILocalVariable(name: "m", scope: !2042, file: !157, line: 602, type: !82)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !157, line: 600, column: 11)
!2043 = distinct !DILexicalBlock(scope: !2034, file: !157, line: 418, column: 9)
!2044 = !DILocalVariable(name: "printable", scope: !2042, file: !157, line: 604, type: !113)
!2045 = !DILocalVariable(name: "mbstate", scope: !2046, file: !157, line: 613, type: !2048)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !157, line: 612, column: 15)
!2047 = distinct !DILexicalBlock(scope: !2042, file: !157, line: 606, column: 17)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2049, line: 6, baseType: !2050)
!2049 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2051, line: 21, baseType: !2052)
!2051 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2051, line: 13, size: 64, elements: !2053)
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2052, file: !2051, line: 15, baseType: !63, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2052, file: !2051, line: 20, baseType: !2056, size: 32, offset: 32)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2052, file: !2051, line: 16, size: 32, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2056, file: !2051, line: 18, baseType: !170, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2056, file: !2051, line: 19, baseType: !2060, size: 32)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !2061)
!2061 = !{!2062}
!2062 = !DISubrange(count: 4)
!2063 = !DILocalVariable(name: "w", scope: !2064, file: !157, line: 623, type: !2065)
!2064 = distinct !DILexicalBlock(scope: !2046, file: !157, line: 622, column: 19)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !83, line: 90, baseType: !63)
!2066 = !DILocalVariable(name: "bytes", scope: !2064, file: !157, line: 624, type: !82)
!2067 = !DILocalVariable(name: "j", scope: !2068, file: !157, line: 649, type: !82)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !157, line: 648, column: 27)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !157, line: 646, column: 29)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !157, line: 641, column: 23)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !157, line: 633, column: 30)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !157, line: 628, column: 30)
!2073 = distinct !DILexicalBlock(scope: !2064, file: !157, line: 626, column: 25)
!2074 = !DILocalVariable(name: "ilim", scope: !2075, file: !157, line: 676, type: !82)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !157, line: 673, column: 15)
!2076 = distinct !DILexicalBlock(scope: !2042, file: !157, line: 672, column: 17)
!2077 = !DILocation(line: 248, column: 33, scope: !2007)
!2078 = !DILocation(line: 248, column: 48, scope: !2007)
!2079 = !DILocation(line: 249, column: 39, scope: !2007)
!2080 = !DILocation(line: 249, column: 51, scope: !2007)
!2081 = !DILocation(line: 250, column: 46, scope: !2007)
!2082 = !DILocation(line: 250, column: 65, scope: !2007)
!2083 = !DILocation(line: 251, column: 47, scope: !2007)
!2084 = !DILocation(line: 252, column: 39, scope: !2007)
!2085 = !DILocation(line: 253, column: 39, scope: !2007)
!2086 = !DILocation(line: 256, column: 10, scope: !2007)
!2087 = !DILocation(line: 257, column: 10, scope: !2007)
!2088 = !DILocation(line: 258, column: 15, scope: !2007)
!2089 = !DILocation(line: 259, column: 10, scope: !2007)
!2090 = !DILocation(line: 260, column: 8, scope: !2007)
!2091 = !DILocation(line: 261, column: 25, scope: !2007)
!2092 = !DILocation(line: 261, column: 36, scope: !2007)
!2093 = !DILocation(line: 262, column: 8, scope: !2007)
!2094 = !DILocation(line: 263, column: 8, scope: !2007)
!2095 = !DILocation(line: 264, column: 8, scope: !2007)
!2096 = !DILocation(line: 265, column: 8, scope: !2007)
!2097 = !DILocation(line: 265, column: 3, scope: !2007)
!2098 = !DILocation(line: 308, column: 3, scope: !2007)
!2099 = !DILocation(line: 315, column: 11, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2007, file: !157, line: 309, column: 5)
!2101 = !DILocation(line: 315, column: 12, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2100, file: !157, line: 315, column: 11)
!2103 = !DILocation(line: 316, column: 9, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !157, line: 316, column: 9)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !157, line: 316, column: 9)
!2106 = !DILocation(line: 316, column: 9, scope: !2105)
!2107 = !DILocation(line: 354, column: 26, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !157, line: 332, column: 11)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !157, line: 331, column: 13)
!2110 = distinct !DILexicalBlock(scope: !2100, file: !157, line: 330, column: 7)
!2111 = !DILocation(line: 355, column: 27, scope: !2108)
!2112 = !DILocation(line: 356, column: 11, scope: !2108)
!2113 = !DILocation(line: 357, column: 14, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !157, line: 357, column: 13)
!2115 = !DILocation(line: 357, column: 13, scope: !2110)
!2116 = !DILocation(line: 358, column: 43, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !157, line: 358, column: 11)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !157, line: 358, column: 11)
!2119 = !DILocation(line: 358, column: 11, scope: !2118)
!2120 = !DILocation(line: 359, column: 13, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !157, line: 359, column: 13)
!2122 = distinct !DILexicalBlock(scope: !2117, file: !157, line: 359, column: 13)
!2123 = !DILocation(line: 359, column: 13, scope: !2122)
!2124 = !DILocation(line: 358, column: 70, scope: !2117)
!2125 = distinct !{!2125, !2119, !2126}
!2126 = !DILocation(line: 359, column: 13, scope: !2118)
!2127 = !DILocation(line: 362, column: 28, scope: !2110)
!2128 = !DILocation(line: 364, column: 7, scope: !2100)
!2129 = !DILocation(line: 367, column: 7, scope: !2100)
!2130 = !DILocation(line: 370, column: 7, scope: !2100)
!2131 = !DILocation(line: 373, column: 12, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2100, file: !157, line: 373, column: 11)
!2133 = !DILocation(line: 373, column: 11, scope: !2100)
!2134 = !DILocation(line: 378, column: 12, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2100, file: !157, line: 378, column: 11)
!2136 = !DILocation(line: 378, column: 11, scope: !2100)
!2137 = !DILocation(line: 379, column: 9, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !157, line: 379, column: 9)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !157, line: 379, column: 9)
!2140 = !DILocation(line: 379, column: 9, scope: !2139)
!2141 = !DILocation(line: 386, column: 7, scope: !2100)
!2142 = !DILocation(line: 389, column: 7, scope: !2100)
!2143 = !DILocation(line: 255, column: 10, scope: !2007)
!2144 = !DILocation(line: 392, column: 8, scope: !2036)
!2145 = !DILocation(line: 392, column: 27, scope: !2035)
!2146 = !DILocation(line: 392, column: 19, scope: !2035)
!2147 = !DILocation(line: 392, column: 60, scope: !2035)
!2148 = !DILocation(line: 392, column: 3, scope: !2036)
!2149 = !DILocation(line: 392, column: 41, scope: !2035)
!2150 = !DILocation(line: 392, column: 48, scope: !2035)
!2151 = !DILocation(line: 396, column: 12, scope: !2034)
!2152 = !DILocation(line: 397, column: 12, scope: !2034)
!2153 = !DILocation(line: 398, column: 12, scope: !2034)
!2154 = !DILocation(line: 401, column: 11, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2034, file: !157, line: 400, column: 11)
!2156 = !DILocation(line: 403, column: 17, scope: !2155)
!2157 = !DILocation(line: 404, column: 39, scope: !2155)
!2158 = !DILocation(line: 408, column: 32, scope: !2155)
!2159 = !DILocation(line: 404, column: 19, scope: !2155)
!2160 = !DILocation(line: 404, column: 15, scope: !2155)
!2161 = !DILocation(line: 409, column: 11, scope: !2155)
!2162 = !DILocation(line: 409, column: 26, scope: !2155)
!2163 = !DILocation(line: 409, column: 14, scope: !2155)
!2164 = !DILocation(line: 409, column: 63, scope: !2155)
!2165 = !DILocation(line: 400, column: 11, scope: !2034)
!2166 = !DILocation(line: 416, column: 11, scope: !2034)
!2167 = !DILocation(line: 394, column: 21, scope: !2034)
!2168 = !DILocation(line: 417, column: 7, scope: !2034)
!2169 = !DILocation(line: 420, column: 15, scope: !2043)
!2170 = !DILocation(line: 422, column: 15, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !157, line: 422, column: 15)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !157, line: 421, column: 13)
!2173 = distinct !DILexicalBlock(scope: !2043, file: !157, line: 420, column: 15)
!2174 = !DILocation(line: 422, column: 15, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2171, file: !157, line: 422, column: 15)
!2176 = !DILocation(line: 422, column: 15, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !157, line: 422, column: 15)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !157, line: 422, column: 15)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !157, line: 422, column: 15)
!2180 = !DILocation(line: 422, column: 15, scope: !2178)
!2181 = !DILocation(line: 422, column: 15, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !157, line: 422, column: 15)
!2183 = distinct !DILexicalBlock(scope: !2179, file: !157, line: 422, column: 15)
!2184 = !DILocation(line: 422, column: 15, scope: !2183)
!2185 = !DILocation(line: 422, column: 15, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !157, line: 422, column: 15)
!2187 = distinct !DILexicalBlock(scope: !2179, file: !157, line: 422, column: 15)
!2188 = !DILocation(line: 422, column: 15, scope: !2187)
!2189 = !DILocation(line: 422, column: 15, scope: !2179)
!2190 = !DILocation(line: 422, column: 15, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !157, line: 422, column: 15)
!2192 = distinct !DILexicalBlock(scope: !2171, file: !157, line: 422, column: 15)
!2193 = !DILocation(line: 422, column: 15, scope: !2192)
!2194 = !DILocation(line: 430, column: 19, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2172, file: !157, line: 429, column: 19)
!2196 = !DILocation(line: 430, column: 24, scope: !2195)
!2197 = !DILocation(line: 430, column: 28, scope: !2195)
!2198 = !DILocation(line: 430, column: 38, scope: !2195)
!2199 = !DILocation(line: 430, column: 48, scope: !2195)
!2200 = !DILocation(line: 430, column: 59, scope: !2195)
!2201 = !DILocation(line: 432, column: 19, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !157, line: 432, column: 19)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !157, line: 432, column: 19)
!2204 = distinct !DILexicalBlock(scope: !2195, file: !157, line: 431, column: 17)
!2205 = !DILocation(line: 432, column: 19, scope: !2203)
!2206 = !DILocation(line: 433, column: 19, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !157, line: 433, column: 19)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !157, line: 433, column: 19)
!2209 = !DILocation(line: 433, column: 19, scope: !2208)
!2210 = !DILocation(line: 434, column: 17, scope: !2204)
!2211 = !DILocation(line: 441, column: 20, scope: !2173)
!2212 = !DILocation(line: 446, column: 11, scope: !2043)
!2213 = !DILocation(line: 449, column: 19, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2043, file: !157, line: 447, column: 13)
!2215 = !DILocation(line: 455, column: 19, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2214, file: !157, line: 454, column: 19)
!2217 = !DILocation(line: 455, column: 24, scope: !2216)
!2218 = !DILocation(line: 455, column: 28, scope: !2216)
!2219 = !DILocation(line: 455, column: 38, scope: !2216)
!2220 = !DILocation(line: 455, column: 47, scope: !2216)
!2221 = !DILocation(line: 455, column: 41, scope: !2216)
!2222 = !DILocation(line: 455, column: 52, scope: !2216)
!2223 = !DILocation(line: 454, column: 19, scope: !2214)
!2224 = !DILocation(line: 456, column: 25, scope: !2216)
!2225 = !DILocation(line: 456, column: 17, scope: !2216)
!2226 = !DILocation(line: 463, column: 25, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2216, file: !157, line: 457, column: 19)
!2228 = !DILocation(line: 467, column: 21, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !157, line: 467, column: 21)
!2230 = distinct !DILexicalBlock(scope: !2227, file: !157, line: 467, column: 21)
!2231 = !DILocation(line: 467, column: 21, scope: !2230)
!2232 = !DILocation(line: 468, column: 21, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !157, line: 468, column: 21)
!2234 = distinct !DILexicalBlock(scope: !2227, file: !157, line: 468, column: 21)
!2235 = !DILocation(line: 468, column: 21, scope: !2234)
!2236 = !DILocation(line: 469, column: 21, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !157, line: 469, column: 21)
!2238 = distinct !DILexicalBlock(scope: !2227, file: !157, line: 469, column: 21)
!2239 = !DILocation(line: 469, column: 21, scope: !2238)
!2240 = !DILocation(line: 470, column: 21, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !157, line: 470, column: 21)
!2242 = distinct !DILexicalBlock(scope: !2227, file: !157, line: 470, column: 21)
!2243 = !DILocation(line: 470, column: 21, scope: !2242)
!2244 = !DILocation(line: 471, column: 21, scope: !2227)
!2245 = !DILocation(line: 395, column: 21, scope: !2034)
!2246 = !DILocation(line: 484, column: 31, scope: !2043)
!2247 = !DILocation(line: 485, column: 31, scope: !2043)
!2248 = !DILocation(line: 487, column: 31, scope: !2043)
!2249 = !DILocation(line: 488, column: 31, scope: !2043)
!2250 = !DILocation(line: 489, column: 31, scope: !2043)
!2251 = !DILocation(line: 492, column: 15, scope: !2043)
!2252 = !DILocation(line: 494, column: 19, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !157, line: 493, column: 13)
!2254 = distinct !DILexicalBlock(scope: !2043, file: !157, line: 492, column: 15)
!2255 = !DILocation(line: 501, column: 33, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2043, file: !157, line: 501, column: 15)
!2257 = !DILocation(line: 506, column: 15, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2043, file: !157, line: 505, column: 15)
!2259 = !DILocation(line: 510, column: 15, scope: !2043)
!2260 = !DILocation(line: 518, column: 26, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2043, file: !157, line: 518, column: 15)
!2262 = !DILocation(line: 518, column: 15, scope: !2043)
!2263 = !DILocation(line: 518, column: 40, scope: !2261)
!2264 = !DILocation(line: 518, column: 47, scope: !2261)
!2265 = !DILocation(line: 522, column: 17, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2043, file: !157, line: 522, column: 15)
!2267 = !DILocation(line: 518, column: 18, scope: !2261)
!2268 = !DILocation(line: 518, column: 65, scope: !2261)
!2269 = !DILocation(line: 522, column: 15, scope: !2043)
!2270 = !DILocation(line: 526, column: 11, scope: !2043)
!2271 = !DILocation(line: 541, column: 15, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2043, file: !157, line: 540, column: 15)
!2273 = !DILocation(line: 548, column: 15, scope: !2043)
!2274 = !DILocation(line: 550, column: 19, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !157, line: 549, column: 13)
!2276 = distinct !DILexicalBlock(scope: !2043, file: !157, line: 548, column: 15)
!2277 = !DILocation(line: 553, column: 19, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2275, file: !157, line: 553, column: 19)
!2279 = !DILocation(line: 553, column: 35, scope: !2278)
!2280 = !DILocation(line: 553, column: 30, scope: !2278)
!2281 = !DILocation(line: 562, column: 15, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !157, line: 562, column: 15)
!2283 = distinct !DILexicalBlock(scope: !2275, file: !157, line: 562, column: 15)
!2284 = !DILocation(line: 562, column: 15, scope: !2283)
!2285 = !DILocation(line: 563, column: 15, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !157, line: 563, column: 15)
!2287 = distinct !DILexicalBlock(scope: !2275, file: !157, line: 563, column: 15)
!2288 = !DILocation(line: 563, column: 15, scope: !2287)
!2289 = !DILocation(line: 564, column: 15, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !157, line: 564, column: 15)
!2291 = distinct !DILexicalBlock(scope: !2275, file: !157, line: 564, column: 15)
!2292 = !DILocation(line: 564, column: 15, scope: !2291)
!2293 = !DILocation(line: 566, column: 13, scope: !2275)
!2294 = !DILocation(line: 606, column: 17, scope: !2042)
!2295 = !DILocation(line: 602, column: 20, scope: !2042)
!2296 = !DILocation(line: 609, column: 29, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2047, file: !157, line: 607, column: 15)
!2298 = !{!914, !914, i64 0}
!2299 = !DILocation(line: 609, column: 27, scope: !2297)
!2300 = !DILocation(line: 604, column: 18, scope: !2042)
!2301 = !DILocation(line: 610, column: 15, scope: !2297)
!2302 = !DILocation(line: 613, column: 17, scope: !2046)
!2303 = !DILocation(line: 614, column: 17, scope: !2046)
!2304 = !DILocation(line: 618, column: 29, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2046, file: !157, line: 618, column: 21)
!2306 = !DILocation(line: 618, column: 21, scope: !2046)
!2307 = !DILocation(line: 619, column: 29, scope: !2305)
!2308 = !DILocation(line: 619, column: 19, scope: !2305)
!2309 = !DILocation(line: 621, column: 17, scope: !2046)
!2310 = distinct !{!2310, !2309, !2311}
!2311 = !DILocation(line: 667, column: 44, scope: !2046)
!2312 = !DILocation(line: 623, column: 21, scope: !2064)
!2313 = !DILocation(line: 624, column: 56, scope: !2064)
!2314 = !DILocation(line: 624, column: 50, scope: !2064)
!2315 = !DILocation(line: 625, column: 53, scope: !2064)
!2316 = !DILocation(line: 613, column: 27, scope: !2046)
!2317 = !DILocation(line: 623, column: 29, scope: !2064)
!2318 = !DILocation(line: 624, column: 36, scope: !2064)
!2319 = !DILocation(line: 624, column: 28, scope: !2064)
!2320 = !DILocation(line: 626, column: 25, scope: !2064)
!2321 = !DILocation(line: 636, column: 38, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2071, file: !157, line: 634, column: 23)
!2323 = !DILocation(line: 636, column: 48, scope: !2322)
!2324 = !DILocation(line: 636, column: 51, scope: !2322)
!2325 = !DILocation(line: 636, column: 25, scope: !2322)
!2326 = !DILocation(line: 637, column: 28, scope: !2322)
!2327 = !DILocation(line: 636, column: 34, scope: !2322)
!2328 = distinct !{!2328, !2325, !2326}
!2329 = !DILocation(line: 650, column: 43, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !157, line: 650, column: 29)
!2331 = distinct !DILexicalBlock(scope: !2068, file: !157, line: 650, column: 29)
!2332 = !DILocation(line: 647, column: 29, scope: !2069)
!2333 = !DILocation(line: 649, column: 36, scope: !2068)
!2334 = !DILocation(line: 651, column: 49, scope: !2330)
!2335 = !DILocation(line: 651, column: 39, scope: !2330)
!2336 = !DILocation(line: 651, column: 31, scope: !2330)
!2337 = !DILocation(line: 650, column: 53, scope: !2330)
!2338 = !DILocation(line: 650, column: 29, scope: !2331)
!2339 = distinct !{!2339, !2338, !2340}
!2340 = !DILocation(line: 659, column: 33, scope: !2331)
!2341 = !DILocation(line: 666, column: 19, scope: !2046)
!2342 = !DILocation(line: 662, column: 41, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2070, file: !157, line: 662, column: 29)
!2344 = !DILocation(line: 662, column: 31, scope: !2343)
!2345 = !DILocation(line: 662, column: 29, scope: !2070)
!2346 = !DILocation(line: 664, column: 27, scope: !2070)
!2347 = !DILocation(line: 667, column: 26, scope: !2046)
!2348 = !DILocation(line: 667, column: 24, scope: !2046)
!2349 = !DILocation(line: 666, column: 19, scope: !2064)
!2350 = !DILocation(line: 668, column: 15, scope: !2047)
!2351 = !DILocation(line: 670, column: 40, scope: !2042)
!2352 = !DILocation(line: 672, column: 19, scope: !2076)
!2353 = !DILocation(line: 672, column: 45, scope: !2076)
!2354 = !DILocation(line: 672, column: 23, scope: !2076)
!2355 = !DILocation(line: 676, column: 33, scope: !2075)
!2356 = !DILocation(line: 676, column: 24, scope: !2075)
!2357 = !DILocation(line: 678, column: 17, scope: !2075)
!2358 = !DILocation(line: 680, column: 43, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !157, line: 680, column: 25)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !157, line: 679, column: 19)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !157, line: 678, column: 17)
!2362 = distinct !DILexicalBlock(scope: !2075, file: !157, line: 678, column: 17)
!2363 = !DILocation(line: 682, column: 25, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !157, line: 682, column: 25)
!2365 = distinct !DILexicalBlock(scope: !2359, file: !157, line: 681, column: 23)
!2366 = !DILocation(line: 682, column: 25, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !157, line: 682, column: 25)
!2368 = !DILocation(line: 682, column: 25, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !157, line: 682, column: 25)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !157, line: 682, column: 25)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !157, line: 682, column: 25)
!2372 = !DILocation(line: 682, column: 25, scope: !2370)
!2373 = !DILocation(line: 682, column: 25, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !157, line: 682, column: 25)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !157, line: 682, column: 25)
!2376 = !DILocation(line: 682, column: 25, scope: !2375)
!2377 = !DILocation(line: 682, column: 25, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !157, line: 682, column: 25)
!2379 = distinct !DILexicalBlock(scope: !2371, file: !157, line: 682, column: 25)
!2380 = !DILocation(line: 682, column: 25, scope: !2379)
!2381 = !DILocation(line: 682, column: 25, scope: !2371)
!2382 = !DILocation(line: 682, column: 25, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !157, line: 682, column: 25)
!2384 = distinct !DILexicalBlock(scope: !2364, file: !157, line: 682, column: 25)
!2385 = !DILocation(line: 682, column: 25, scope: !2384)
!2386 = !DILocation(line: 683, column: 25, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !157, line: 683, column: 25)
!2388 = distinct !DILexicalBlock(scope: !2365, file: !157, line: 683, column: 25)
!2389 = !DILocation(line: 683, column: 25, scope: !2388)
!2390 = !DILocation(line: 684, column: 25, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !157, line: 684, column: 25)
!2392 = distinct !DILexicalBlock(scope: !2365, file: !157, line: 684, column: 25)
!2393 = !DILocation(line: 684, column: 25, scope: !2392)
!2394 = !DILocation(line: 685, column: 38, scope: !2365)
!2395 = !DILocation(line: 685, column: 33, scope: !2365)
!2396 = !DILocation(line: 686, column: 23, scope: !2365)
!2397 = !DILocation(line: 687, column: 30, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2359, file: !157, line: 687, column: 30)
!2399 = !DILocation(line: 687, column: 30, scope: !2359)
!2400 = !DILocation(line: 689, column: 25, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !157, line: 689, column: 25)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !157, line: 689, column: 25)
!2403 = distinct !DILexicalBlock(scope: !2398, file: !157, line: 688, column: 23)
!2404 = !DILocation(line: 689, column: 25, scope: !2402)
!2405 = !DILocation(line: 691, column: 23, scope: !2403)
!2406 = !DILocation(line: 692, column: 35, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2360, file: !157, line: 692, column: 25)
!2408 = !DILocation(line: 692, column: 30, scope: !2407)
!2409 = !DILocation(line: 692, column: 25, scope: !2360)
!2410 = !DILocation(line: 694, column: 21, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !157, line: 694, column: 21)
!2412 = distinct !DILexicalBlock(scope: !2360, file: !157, line: 694, column: 21)
!2413 = !DILocation(line: 694, column: 21, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !157, line: 694, column: 21)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !157, line: 694, column: 21)
!2416 = distinct !DILexicalBlock(scope: !2411, file: !157, line: 694, column: 21)
!2417 = !DILocation(line: 694, column: 21, scope: !2415)
!2418 = !DILocation(line: 694, column: 21, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !157, line: 694, column: 21)
!2420 = distinct !DILexicalBlock(scope: !2416, file: !157, line: 694, column: 21)
!2421 = !DILocation(line: 694, column: 21, scope: !2420)
!2422 = !DILocation(line: 694, column: 21, scope: !2416)
!2423 = !DILocation(line: 695, column: 21, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !157, line: 695, column: 21)
!2425 = distinct !DILexicalBlock(scope: !2360, file: !157, line: 695, column: 21)
!2426 = !DILocation(line: 695, column: 21, scope: !2425)
!2427 = !DILocation(line: 696, column: 25, scope: !2360)
!2428 = !DILocation(line: 678, column: 17, scope: !2361)
!2429 = distinct !{!2429, !2430, !2431}
!2430 = !DILocation(line: 678, column: 17, scope: !2362)
!2431 = !DILocation(line: 697, column: 19, scope: !2362)
!2432 = !DILocation(line: 704, column: 34, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2034, file: !157, line: 704, column: 11)
!2434 = !DILocation(line: 706, column: 14, scope: !2433)
!2435 = !DILocation(line: 707, column: 14, scope: !2433)
!2436 = !DILocation(line: 707, column: 35, scope: !2433)
!2437 = !DILocation(line: 707, column: 17, scope: !2433)
!2438 = !DILocation(line: 707, column: 53, scope: !2433)
!2439 = !DILocation(line: 707, column: 47, scope: !2433)
!2440 = !DILocation(line: 707, column: 65, scope: !2433)
!2441 = !DILocation(line: 708, column: 15, scope: !2433)
!2442 = !DILocation(line: 708, column: 11, scope: !2433)
!2443 = !DILocation(line: 704, column: 11, scope: !2034)
!2444 = !DILocation(line: 712, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2034, file: !157, line: 712, column: 7)
!2446 = !DILocation(line: 712, column: 7, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2445, file: !157, line: 712, column: 7)
!2448 = !DILocation(line: 712, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !157, line: 712, column: 7)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !157, line: 712, column: 7)
!2451 = distinct !DILexicalBlock(scope: !2447, file: !157, line: 712, column: 7)
!2452 = !DILocation(line: 712, column: 7, scope: !2450)
!2453 = !DILocation(line: 712, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !157, line: 712, column: 7)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !157, line: 712, column: 7)
!2456 = !DILocation(line: 712, column: 7, scope: !2455)
!2457 = !DILocation(line: 712, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !157, line: 712, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2451, file: !157, line: 712, column: 7)
!2460 = !DILocation(line: 712, column: 7, scope: !2459)
!2461 = !DILocation(line: 712, column: 7, scope: !2451)
!2462 = !DILocation(line: 712, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !157, line: 712, column: 7)
!2464 = distinct !DILexicalBlock(scope: !2445, file: !157, line: 712, column: 7)
!2465 = !DILocation(line: 712, column: 7, scope: !2464)
!2466 = !DILocation(line: 715, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !157, line: 715, column: 7)
!2468 = distinct !DILexicalBlock(scope: !2034, file: !157, line: 715, column: 7)
!2469 = !DILocation(line: 715, column: 7, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !157, line: 715, column: 7)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !157, line: 715, column: 7)
!2472 = distinct !DILexicalBlock(scope: !2467, file: !157, line: 715, column: 7)
!2473 = !DILocation(line: 715, column: 7, scope: !2471)
!2474 = !DILocation(line: 715, column: 7, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !157, line: 715, column: 7)
!2476 = distinct !DILexicalBlock(scope: !2472, file: !157, line: 715, column: 7)
!2477 = !DILocation(line: 715, column: 7, scope: !2476)
!2478 = !DILocation(line: 715, column: 7, scope: !2472)
!2479 = !DILocation(line: 716, column: 7, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !157, line: 716, column: 7)
!2481 = distinct !DILexicalBlock(scope: !2034, file: !157, line: 716, column: 7)
!2482 = !DILocation(line: 716, column: 7, scope: !2481)
!2483 = !DILocation(line: 718, column: 13, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2034, file: !157, line: 718, column: 11)
!2485 = !DILocation(line: 718, column: 11, scope: !2034)
!2486 = !DILocation(line: 720, column: 5, scope: !2035)
!2487 = !DILocation(line: 392, column: 75, scope: !2035)
!2488 = !DILocation(line: 392, column: 3, scope: !2035)
!2489 = distinct !{!2489, !2148, !2490}
!2490 = !DILocation(line: 720, column: 5, scope: !2036)
!2491 = !DILocation(line: 722, column: 11, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2007, file: !157, line: 722, column: 7)
!2493 = !DILocation(line: 722, column: 16, scope: !2492)
!2494 = !DILocation(line: 730, column: 51, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2007, file: !157, line: 730, column: 7)
!2496 = !DILocation(line: 731, column: 10, scope: !2495)
!2497 = !DILocation(line: 733, column: 11, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !157, line: 733, column: 11)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !157, line: 732, column: 5)
!2500 = !DILocation(line: 733, column: 11, scope: !2499)
!2501 = !DILocation(line: 734, column: 16, scope: !2498)
!2502 = !DILocation(line: 734, column: 9, scope: !2498)
!2503 = !DILocation(line: 738, column: 18, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2498, file: !157, line: 738, column: 16)
!2505 = !DILocation(line: 738, column: 32, scope: !2504)
!2506 = !DILocation(line: 738, column: 29, scope: !2504)
!2507 = !DILocation(line: 747, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2007, file: !157, line: 747, column: 7)
!2509 = !DILocation(line: 747, column: 20, scope: !2508)
!2510 = !DILocation(line: 748, column: 12, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !157, line: 748, column: 5)
!2512 = distinct !DILexicalBlock(scope: !2508, file: !157, line: 748, column: 5)
!2513 = !DILocation(line: 748, column: 5, scope: !2512)
!2514 = !DILocation(line: 749, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !157, line: 749, column: 7)
!2516 = distinct !DILexicalBlock(scope: !2511, file: !157, line: 749, column: 7)
!2517 = !DILocation(line: 749, column: 7, scope: !2516)
!2518 = !DILocation(line: 748, column: 39, scope: !2511)
!2519 = distinct !{!2519, !2513, !2520}
!2520 = !DILocation(line: 749, column: 7, scope: !2512)
!2521 = !DILocation(line: 751, column: 11, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2007, file: !157, line: 751, column: 7)
!2523 = !DILocation(line: 751, column: 7, scope: !2007)
!2524 = !DILocation(line: 752, column: 5, scope: !2522)
!2525 = !DILocation(line: 752, column: 17, scope: !2522)
!2526 = !DILocation(line: 758, column: 21, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2007, file: !157, line: 758, column: 7)
!2528 = !DILocation(line: 758, column: 54, scope: !2527)
!2529 = !DILocation(line: 758, column: 51, scope: !2527)
!2530 = !DILocation(line: 762, column: 42, scope: !2007)
!2531 = !DILocation(line: 760, column: 10, scope: !2007)
!2532 = !DILocation(line: 760, column: 3, scope: !2007)
!2533 = !DILocation(line: 764, column: 1, scope: !2007)
!2534 = distinct !DISubprogram(name: "gettext_quote", scope: !157, file: !157, line: 199, type: !2535, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!40, !40, !5}
!2537 = !{!2538, !2539, !2540, !2541}
!2538 = !DILocalVariable(name: "msgid", arg: 1, scope: !2534, file: !157, line: 199, type: !40)
!2539 = !DILocalVariable(name: "s", arg: 2, scope: !2534, file: !157, line: 199, type: !5)
!2540 = !DILocalVariable(name: "translation", scope: !2534, file: !157, line: 201, type: !40)
!2541 = !DILocalVariable(name: "locale_code", scope: !2534, file: !157, line: 202, type: !40)
!2542 = !DILocation(line: 199, column: 28, scope: !2534)
!2543 = !DILocation(line: 199, column: 54, scope: !2534)
!2544 = !DILocation(line: 201, column: 29, scope: !2534)
!2545 = !DILocation(line: 201, column: 15, scope: !2534)
!2546 = !DILocation(line: 204, column: 19, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2534, file: !157, line: 204, column: 7)
!2548 = !DILocation(line: 204, column: 7, scope: !2534)
!2549 = !DILocation(line: 225, column: 17, scope: !2534)
!2550 = !DILocation(line: 202, column: 15, scope: !2534)
!2551 = !DILocalVariable(name: "s2", arg: 2, scope: !2552, file: !2553, line: 160, type: !40)
!2552 = distinct !DISubprogram(name: "strcaseeq0", scope: !2553, file: !2553, line: 160, type: !2554, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2556)
!2553 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!63, !40, !40, !30, !30, !30, !30, !30, !30, !30, !30, !30}
!2556 = !{!2557, !2551, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566}
!2557 = !DILocalVariable(name: "s1", arg: 1, scope: !2552, file: !2553, line: 160, type: !40)
!2558 = !DILocalVariable(name: "s20", arg: 3, scope: !2552, file: !2553, line: 160, type: !30)
!2559 = !DILocalVariable(name: "s21", arg: 4, scope: !2552, file: !2553, line: 160, type: !30)
!2560 = !DILocalVariable(name: "s22", arg: 5, scope: !2552, file: !2553, line: 160, type: !30)
!2561 = !DILocalVariable(name: "s23", arg: 6, scope: !2552, file: !2553, line: 160, type: !30)
!2562 = !DILocalVariable(name: "s24", arg: 7, scope: !2552, file: !2553, line: 160, type: !30)
!2563 = !DILocalVariable(name: "s25", arg: 8, scope: !2552, file: !2553, line: 160, type: !30)
!2564 = !DILocalVariable(name: "s26", arg: 9, scope: !2552, file: !2553, line: 160, type: !30)
!2565 = !DILocalVariable(name: "s27", arg: 10, scope: !2552, file: !2553, line: 160, type: !30)
!2566 = !DILocalVariable(name: "s28", arg: 11, scope: !2552, file: !2553, line: 160, type: !30)
!2567 = !DILocation(line: 160, column: 41, scope: !2552, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 226, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2534, file: !157, line: 226, column: 7)
!2570 = !DILocation(line: 160, column: 120, scope: !2552, inlinedAt: !2568)
!2571 = !DILocation(line: 160, column: 130, scope: !2552, inlinedAt: !2568)
!2572 = !DILocation(line: 162, column: 7, scope: !2573, inlinedAt: !2568)
!2573 = distinct !DILexicalBlock(scope: !2552, file: !2553, line: 162, column: 7)
!2574 = !DILocalVariable(name: "s2", arg: 2, scope: !2575, file: !2553, line: 146, type: !40)
!2575 = distinct !DISubprogram(name: "strcaseeq1", scope: !2553, file: !2553, line: 146, type: !2576, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2578)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!63, !40, !40, !30, !30, !30, !30, !30, !30, !30, !30}
!2578 = !{!2579, !2574, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587}
!2579 = !DILocalVariable(name: "s1", arg: 1, scope: !2575, file: !2553, line: 146, type: !40)
!2580 = !DILocalVariable(name: "s21", arg: 3, scope: !2575, file: !2553, line: 146, type: !30)
!2581 = !DILocalVariable(name: "s22", arg: 4, scope: !2575, file: !2553, line: 146, type: !30)
!2582 = !DILocalVariable(name: "s23", arg: 5, scope: !2575, file: !2553, line: 146, type: !30)
!2583 = !DILocalVariable(name: "s24", arg: 6, scope: !2575, file: !2553, line: 146, type: !30)
!2584 = !DILocalVariable(name: "s25", arg: 7, scope: !2575, file: !2553, line: 146, type: !30)
!2585 = !DILocalVariable(name: "s26", arg: 8, scope: !2575, file: !2553, line: 146, type: !30)
!2586 = !DILocalVariable(name: "s27", arg: 9, scope: !2575, file: !2553, line: 146, type: !30)
!2587 = !DILocalVariable(name: "s28", arg: 10, scope: !2575, file: !2553, line: 146, type: !30)
!2588 = !DILocation(line: 146, column: 41, scope: !2575, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 167, column: 16, scope: !2590, inlinedAt: !2568)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !2553, line: 164, column: 11)
!2591 = distinct !DILexicalBlock(scope: !2573, file: !2553, line: 163, column: 5)
!2592 = !DILocation(line: 146, column: 110, scope: !2575, inlinedAt: !2589)
!2593 = !DILocation(line: 146, column: 120, scope: !2575, inlinedAt: !2589)
!2594 = !DILocation(line: 148, column: 7, scope: !2595, inlinedAt: !2589)
!2595 = distinct !DILexicalBlock(scope: !2575, file: !2553, line: 148, column: 7)
!2596 = !DILocalVariable(name: "s2", arg: 2, scope: !2597, file: !2553, line: 132, type: !40)
!2597 = distinct !DISubprogram(name: "strcaseeq2", scope: !2553, file: !2553, line: 132, type: !2598, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!63, !40, !40, !30, !30, !30, !30, !30, !30, !30}
!2600 = !{!2601, !2596, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2601 = !DILocalVariable(name: "s1", arg: 1, scope: !2597, file: !2553, line: 132, type: !40)
!2602 = !DILocalVariable(name: "s22", arg: 3, scope: !2597, file: !2553, line: 132, type: !30)
!2603 = !DILocalVariable(name: "s23", arg: 4, scope: !2597, file: !2553, line: 132, type: !30)
!2604 = !DILocalVariable(name: "s24", arg: 5, scope: !2597, file: !2553, line: 132, type: !30)
!2605 = !DILocalVariable(name: "s25", arg: 6, scope: !2597, file: !2553, line: 132, type: !30)
!2606 = !DILocalVariable(name: "s26", arg: 7, scope: !2597, file: !2553, line: 132, type: !30)
!2607 = !DILocalVariable(name: "s27", arg: 8, scope: !2597, file: !2553, line: 132, type: !30)
!2608 = !DILocalVariable(name: "s28", arg: 9, scope: !2597, file: !2553, line: 132, type: !30)
!2609 = !DILocation(line: 132, column: 41, scope: !2597, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 153, column: 16, scope: !2611, inlinedAt: !2589)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !2553, line: 150, column: 11)
!2612 = distinct !DILexicalBlock(scope: !2595, file: !2553, line: 149, column: 5)
!2613 = !DILocation(line: 132, column: 100, scope: !2597, inlinedAt: !2610)
!2614 = !DILocation(line: 132, column: 110, scope: !2597, inlinedAt: !2610)
!2615 = !DILocation(line: 134, column: 7, scope: !2616, inlinedAt: !2610)
!2616 = distinct !DILexicalBlock(scope: !2597, file: !2553, line: 134, column: 7)
!2617 = !DILocalVariable(name: "s2", arg: 2, scope: !2618, file: !2553, line: 118, type: !40)
!2618 = distinct !DISubprogram(name: "strcaseeq3", scope: !2553, file: !2553, line: 118, type: !2619, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!63, !40, !40, !30, !30, !30, !30, !30, !30}
!2621 = !{!2622, !2617, !2623, !2624, !2625, !2626, !2627, !2628}
!2622 = !DILocalVariable(name: "s1", arg: 1, scope: !2618, file: !2553, line: 118, type: !40)
!2623 = !DILocalVariable(name: "s23", arg: 3, scope: !2618, file: !2553, line: 118, type: !30)
!2624 = !DILocalVariable(name: "s24", arg: 4, scope: !2618, file: !2553, line: 118, type: !30)
!2625 = !DILocalVariable(name: "s25", arg: 5, scope: !2618, file: !2553, line: 118, type: !30)
!2626 = !DILocalVariable(name: "s26", arg: 6, scope: !2618, file: !2553, line: 118, type: !30)
!2627 = !DILocalVariable(name: "s27", arg: 7, scope: !2618, file: !2553, line: 118, type: !30)
!2628 = !DILocalVariable(name: "s28", arg: 8, scope: !2618, file: !2553, line: 118, type: !30)
!2629 = !DILocation(line: 118, column: 41, scope: !2618, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 139, column: 16, scope: !2631, inlinedAt: !2610)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !2553, line: 136, column: 11)
!2632 = distinct !DILexicalBlock(scope: !2616, file: !2553, line: 135, column: 5)
!2633 = !DILocation(line: 118, column: 90, scope: !2618, inlinedAt: !2630)
!2634 = !DILocation(line: 118, column: 100, scope: !2618, inlinedAt: !2630)
!2635 = !DILocation(line: 120, column: 7, scope: !2636, inlinedAt: !2630)
!2636 = distinct !DILexicalBlock(scope: !2618, file: !2553, line: 120, column: 7)
!2637 = !DILocation(line: 120, column: 7, scope: !2618, inlinedAt: !2630)
!2638 = !DILocalVariable(name: "s2", arg: 2, scope: !2639, file: !2553, line: 104, type: !40)
!2639 = distinct !DISubprogram(name: "strcaseeq4", scope: !2553, file: !2553, line: 104, type: !2640, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!63, !40, !40, !30, !30, !30, !30, !30}
!2642 = !{!2643, !2638, !2644, !2645, !2646, !2647, !2648}
!2643 = !DILocalVariable(name: "s1", arg: 1, scope: !2639, file: !2553, line: 104, type: !40)
!2644 = !DILocalVariable(name: "s24", arg: 3, scope: !2639, file: !2553, line: 104, type: !30)
!2645 = !DILocalVariable(name: "s25", arg: 4, scope: !2639, file: !2553, line: 104, type: !30)
!2646 = !DILocalVariable(name: "s26", arg: 5, scope: !2639, file: !2553, line: 104, type: !30)
!2647 = !DILocalVariable(name: "s27", arg: 6, scope: !2639, file: !2553, line: 104, type: !30)
!2648 = !DILocalVariable(name: "s28", arg: 7, scope: !2639, file: !2553, line: 104, type: !30)
!2649 = !DILocation(line: 104, column: 41, scope: !2639, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 125, column: 16, scope: !2651, inlinedAt: !2630)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !2553, line: 122, column: 11)
!2652 = distinct !DILexicalBlock(scope: !2636, file: !2553, line: 121, column: 5)
!2653 = !DILocation(line: 104, column: 80, scope: !2639, inlinedAt: !2650)
!2654 = !DILocation(line: 104, column: 90, scope: !2639, inlinedAt: !2650)
!2655 = !DILocation(line: 106, column: 7, scope: !2656, inlinedAt: !2650)
!2656 = distinct !DILexicalBlock(scope: !2639, file: !2553, line: 106, column: 7)
!2657 = !DILocation(line: 106, column: 7, scope: !2639, inlinedAt: !2650)
!2658 = !DILocalVariable(name: "s2", arg: 2, scope: !2659, file: !2553, line: 90, type: !40)
!2659 = distinct !DISubprogram(name: "strcaseeq5", scope: !2553, file: !2553, line: 90, type: !2660, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!63, !40, !40, !30, !30, !30, !30}
!2662 = !{!2663, !2658, !2664, !2665, !2666, !2667}
!2663 = !DILocalVariable(name: "s1", arg: 1, scope: !2659, file: !2553, line: 90, type: !40)
!2664 = !DILocalVariable(name: "s25", arg: 3, scope: !2659, file: !2553, line: 90, type: !30)
!2665 = !DILocalVariable(name: "s26", arg: 4, scope: !2659, file: !2553, line: 90, type: !30)
!2666 = !DILocalVariable(name: "s27", arg: 5, scope: !2659, file: !2553, line: 90, type: !30)
!2667 = !DILocalVariable(name: "s28", arg: 6, scope: !2659, file: !2553, line: 90, type: !30)
!2668 = !DILocation(line: 90, column: 41, scope: !2659, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 111, column: 16, scope: !2670, inlinedAt: !2650)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !2553, line: 108, column: 11)
!2671 = distinct !DILexicalBlock(scope: !2656, file: !2553, line: 107, column: 5)
!2672 = !DILocation(line: 90, column: 70, scope: !2659, inlinedAt: !2669)
!2673 = !DILocation(line: 90, column: 80, scope: !2659, inlinedAt: !2669)
!2674 = !DILocation(line: 92, column: 7, scope: !2675, inlinedAt: !2669)
!2675 = distinct !DILexicalBlock(scope: !2659, file: !2553, line: 92, column: 7)
!2676 = !DILocation(line: 92, column: 7, scope: !2659, inlinedAt: !2669)
!2677 = !DILocation(line: 227, column: 12, scope: !2569)
!2678 = !DILocation(line: 227, column: 21, scope: !2569)
!2679 = !DILocation(line: 227, column: 5, scope: !2569)
!2680 = !DILocation(line: 146, column: 41, scope: !2575, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 167, column: 16, scope: !2590, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 228, column: 7, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2534, file: !157, line: 228, column: 7)
!2684 = !DILocation(line: 146, column: 110, scope: !2575, inlinedAt: !2681)
!2685 = !DILocation(line: 146, column: 120, scope: !2575, inlinedAt: !2681)
!2686 = !DILocation(line: 148, column: 7, scope: !2595, inlinedAt: !2681)
!2687 = !DILocation(line: 132, column: 41, scope: !2597, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 153, column: 16, scope: !2611, inlinedAt: !2681)
!2689 = !DILocation(line: 132, column: 100, scope: !2597, inlinedAt: !2688)
!2690 = !DILocation(line: 132, column: 110, scope: !2597, inlinedAt: !2688)
!2691 = !DILocation(line: 134, column: 7, scope: !2616, inlinedAt: !2688)
!2692 = !DILocation(line: 134, column: 7, scope: !2597, inlinedAt: !2688)
!2693 = !DILocation(line: 118, column: 41, scope: !2618, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 139, column: 16, scope: !2631, inlinedAt: !2688)
!2695 = !DILocation(line: 118, column: 90, scope: !2618, inlinedAt: !2694)
!2696 = !DILocation(line: 118, column: 100, scope: !2618, inlinedAt: !2694)
!2697 = !DILocation(line: 120, column: 7, scope: !2636, inlinedAt: !2694)
!2698 = !DILocation(line: 120, column: 7, scope: !2618, inlinedAt: !2694)
!2699 = !DILocation(line: 104, column: 41, scope: !2639, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 125, column: 16, scope: !2651, inlinedAt: !2694)
!2701 = !DILocation(line: 104, column: 80, scope: !2639, inlinedAt: !2700)
!2702 = !DILocation(line: 104, column: 90, scope: !2639, inlinedAt: !2700)
!2703 = !DILocation(line: 106, column: 7, scope: !2656, inlinedAt: !2700)
!2704 = !DILocation(line: 106, column: 7, scope: !2639, inlinedAt: !2700)
!2705 = !DILocation(line: 90, column: 41, scope: !2659, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 111, column: 16, scope: !2670, inlinedAt: !2700)
!2707 = !DILocation(line: 90, column: 70, scope: !2659, inlinedAt: !2706)
!2708 = !DILocation(line: 90, column: 80, scope: !2659, inlinedAt: !2706)
!2709 = !DILocation(line: 92, column: 7, scope: !2675, inlinedAt: !2706)
!2710 = !DILocation(line: 92, column: 7, scope: !2659, inlinedAt: !2706)
!2711 = !DILocalVariable(name: "s2", arg: 2, scope: !2712, file: !2553, line: 76, type: !40)
!2712 = distinct !DISubprogram(name: "strcaseeq6", scope: !2553, file: !2553, line: 76, type: !2713, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!63, !40, !40, !30, !30, !30}
!2715 = !{!2716, !2711, !2717, !2718, !2719}
!2716 = !DILocalVariable(name: "s1", arg: 1, scope: !2712, file: !2553, line: 76, type: !40)
!2717 = !DILocalVariable(name: "s26", arg: 3, scope: !2712, file: !2553, line: 76, type: !30)
!2718 = !DILocalVariable(name: "s27", arg: 4, scope: !2712, file: !2553, line: 76, type: !30)
!2719 = !DILocalVariable(name: "s28", arg: 5, scope: !2712, file: !2553, line: 76, type: !30)
!2720 = !DILocation(line: 76, column: 41, scope: !2712, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 97, column: 16, scope: !2722, inlinedAt: !2706)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !2553, line: 94, column: 11)
!2723 = distinct !DILexicalBlock(scope: !2675, file: !2553, line: 93, column: 5)
!2724 = !DILocation(line: 76, column: 60, scope: !2712, inlinedAt: !2721)
!2725 = !DILocation(line: 76, column: 70, scope: !2712, inlinedAt: !2721)
!2726 = !DILocation(line: 78, column: 7, scope: !2727, inlinedAt: !2721)
!2727 = distinct !DILexicalBlock(scope: !2712, file: !2553, line: 78, column: 7)
!2728 = !DILocation(line: 78, column: 7, scope: !2712, inlinedAt: !2721)
!2729 = !DILocalVariable(name: "s2", arg: 2, scope: !2730, file: !2553, line: 62, type: !40)
!2730 = distinct !DISubprogram(name: "strcaseeq7", scope: !2553, file: !2553, line: 62, type: !2731, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!63, !40, !40, !30, !30}
!2733 = !{!2734, !2729, !2735, !2736}
!2734 = !DILocalVariable(name: "s1", arg: 1, scope: !2730, file: !2553, line: 62, type: !40)
!2735 = !DILocalVariable(name: "s27", arg: 3, scope: !2730, file: !2553, line: 62, type: !30)
!2736 = !DILocalVariable(name: "s28", arg: 4, scope: !2730, file: !2553, line: 62, type: !30)
!2737 = !DILocation(line: 62, column: 41, scope: !2730, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 83, column: 16, scope: !2739, inlinedAt: !2721)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !2553, line: 80, column: 11)
!2740 = distinct !DILexicalBlock(scope: !2727, file: !2553, line: 79, column: 5)
!2741 = !DILocation(line: 62, column: 50, scope: !2730, inlinedAt: !2738)
!2742 = !DILocation(line: 62, column: 60, scope: !2730, inlinedAt: !2738)
!2743 = !DILocation(line: 64, column: 7, scope: !2744, inlinedAt: !2738)
!2744 = distinct !DILexicalBlock(scope: !2730, file: !2553, line: 64, column: 7)
!2745 = !DILocation(line: 228, column: 7, scope: !2534)
!2746 = !DILocation(line: 229, column: 12, scope: !2683)
!2747 = !DILocation(line: 229, column: 21, scope: !2683)
!2748 = !DILocation(line: 229, column: 5, scope: !2683)
!2749 = !DILocation(line: 231, column: 13, scope: !2534)
!2750 = !DILocation(line: 231, column: 11, scope: !2534)
!2751 = !DILocation(line: 231, column: 3, scope: !2534)
!2752 = !DILocation(line: 232, column: 1, scope: !2534)
!2753 = distinct !DISubprogram(name: "quotearg_alloc", scope: !157, file: !157, line: 791, type: !2754, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2756)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!29, !40, !82, !1879}
!2756 = !{!2757, !2758, !2759}
!2757 = !DILocalVariable(name: "arg", arg: 1, scope: !2753, file: !157, line: 791, type: !40)
!2758 = !DILocalVariable(name: "argsize", arg: 2, scope: !2753, file: !157, line: 791, type: !82)
!2759 = !DILocalVariable(name: "o", arg: 3, scope: !2753, file: !157, line: 792, type: !1879)
!2760 = !DILocation(line: 791, column: 29, scope: !2753)
!2761 = !DILocation(line: 791, column: 41, scope: !2753)
!2762 = !DILocation(line: 792, column: 47, scope: !2753)
!2763 = !DILocalVariable(name: "arg", arg: 1, scope: !2764, file: !157, line: 804, type: !40)
!2764 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !157, file: !157, line: 804, type: !2765, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!29, !40, !82, !571, !1879}
!2767 = !{!2763, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775}
!2768 = !DILocalVariable(name: "argsize", arg: 2, scope: !2764, file: !157, line: 804, type: !82)
!2769 = !DILocalVariable(name: "size", arg: 3, scope: !2764, file: !157, line: 804, type: !571)
!2770 = !DILocalVariable(name: "o", arg: 4, scope: !2764, file: !157, line: 805, type: !1879)
!2771 = !DILocalVariable(name: "p", scope: !2764, file: !157, line: 807, type: !1879)
!2772 = !DILocalVariable(name: "e", scope: !2764, file: !157, line: 808, type: !63)
!2773 = !DILocalVariable(name: "flags", scope: !2764, file: !157, line: 810, type: !63)
!2774 = !DILocalVariable(name: "bufsize", scope: !2764, file: !157, line: 811, type: !82)
!2775 = !DILocalVariable(name: "buf", scope: !2764, file: !157, line: 815, type: !29)
!2776 = !DILocation(line: 804, column: 33, scope: !2764, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 794, column: 10, scope: !2753)
!2778 = !DILocation(line: 804, column: 45, scope: !2764, inlinedAt: !2777)
!2779 = !DILocation(line: 804, column: 62, scope: !2764, inlinedAt: !2777)
!2780 = !DILocation(line: 805, column: 51, scope: !2764, inlinedAt: !2777)
!2781 = !DILocation(line: 807, column: 37, scope: !2764, inlinedAt: !2777)
!2782 = !DILocation(line: 807, column: 33, scope: !2764, inlinedAt: !2777)
!2783 = !DILocation(line: 808, column: 11, scope: !2764, inlinedAt: !2777)
!2784 = !DILocation(line: 808, column: 7, scope: !2764, inlinedAt: !2777)
!2785 = !DILocation(line: 810, column: 18, scope: !2764, inlinedAt: !2777)
!2786 = !DILocation(line: 810, column: 24, scope: !2764, inlinedAt: !2777)
!2787 = !DILocation(line: 810, column: 7, scope: !2764, inlinedAt: !2777)
!2788 = !DILocation(line: 811, column: 69, scope: !2764, inlinedAt: !2777)
!2789 = !DILocation(line: 812, column: 53, scope: !2764, inlinedAt: !2777)
!2790 = !DILocation(line: 813, column: 49, scope: !2764, inlinedAt: !2777)
!2791 = !DILocation(line: 814, column: 49, scope: !2764, inlinedAt: !2777)
!2792 = !DILocation(line: 811, column: 20, scope: !2764, inlinedAt: !2777)
!2793 = !DILocation(line: 814, column: 62, scope: !2764, inlinedAt: !2777)
!2794 = !DILocation(line: 811, column: 10, scope: !2764, inlinedAt: !2777)
!2795 = !DILocalVariable(name: "n", arg: 1, scope: !2796, file: !567, line: 220, type: !82)
!2796 = distinct !DISubprogram(name: "xcharalloc", scope: !567, file: !567, line: 220, type: !2797, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!29, !82}
!2799 = !{!2795}
!2800 = !DILocation(line: 220, column: 20, scope: !2796, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 815, column: 15, scope: !2764, inlinedAt: !2777)
!2802 = !DILocation(line: 222, column: 10, scope: !2796, inlinedAt: !2801)
!2803 = !DILocation(line: 815, column: 9, scope: !2764, inlinedAt: !2777)
!2804 = !DILocation(line: 816, column: 60, scope: !2764, inlinedAt: !2777)
!2805 = !DILocation(line: 818, column: 32, scope: !2764, inlinedAt: !2777)
!2806 = !DILocation(line: 818, column: 47, scope: !2764, inlinedAt: !2777)
!2807 = !DILocation(line: 816, column: 3, scope: !2764, inlinedAt: !2777)
!2808 = !DILocation(line: 819, column: 9, scope: !2764, inlinedAt: !2777)
!2809 = !DILocation(line: 794, column: 3, scope: !2753)
!2810 = !DILocation(line: 804, column: 33, scope: !2764)
!2811 = !DILocation(line: 804, column: 45, scope: !2764)
!2812 = !DILocation(line: 804, column: 62, scope: !2764)
!2813 = !DILocation(line: 805, column: 51, scope: !2764)
!2814 = !DILocation(line: 807, column: 37, scope: !2764)
!2815 = !DILocation(line: 807, column: 33, scope: !2764)
!2816 = !DILocation(line: 808, column: 11, scope: !2764)
!2817 = !DILocation(line: 808, column: 7, scope: !2764)
!2818 = !DILocation(line: 810, column: 18, scope: !2764)
!2819 = !DILocation(line: 810, column: 27, scope: !2764)
!2820 = !DILocation(line: 810, column: 24, scope: !2764)
!2821 = !DILocation(line: 810, column: 7, scope: !2764)
!2822 = !DILocation(line: 811, column: 69, scope: !2764)
!2823 = !DILocation(line: 812, column: 53, scope: !2764)
!2824 = !DILocation(line: 813, column: 49, scope: !2764)
!2825 = !DILocation(line: 814, column: 49, scope: !2764)
!2826 = !DILocation(line: 811, column: 20, scope: !2764)
!2827 = !DILocation(line: 814, column: 62, scope: !2764)
!2828 = !DILocation(line: 811, column: 10, scope: !2764)
!2829 = !DILocation(line: 220, column: 20, scope: !2796, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 815, column: 15, scope: !2764)
!2831 = !DILocation(line: 222, column: 10, scope: !2796, inlinedAt: !2830)
!2832 = !DILocation(line: 815, column: 9, scope: !2764)
!2833 = !DILocation(line: 816, column: 60, scope: !2764)
!2834 = !DILocation(line: 818, column: 32, scope: !2764)
!2835 = !DILocation(line: 818, column: 47, scope: !2764)
!2836 = !DILocation(line: 816, column: 3, scope: !2764)
!2837 = !DILocation(line: 819, column: 9, scope: !2764)
!2838 = !DILocation(line: 820, column: 7, scope: !2764)
!2839 = !DILocation(line: 821, column: 11, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2764, file: !157, line: 820, column: 7)
!2841 = !DILocation(line: 821, column: 5, scope: !2840)
!2842 = !DILocation(line: 822, column: 3, scope: !2764)
!2843 = distinct !DISubprogram(name: "quotearg_free", scope: !157, file: !157, line: 840, type: !638, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2844)
!2844 = !{!2845, !2846}
!2845 = !DILocalVariable(name: "sv", scope: !2843, file: !157, line: 842, type: !182)
!2846 = !DILocalVariable(name: "i", scope: !2843, file: !157, line: 843, type: !63)
!2847 = !DILocation(line: 842, column: 24, scope: !2843)
!2848 = !DILocation(line: 842, column: 19, scope: !2843)
!2849 = !DILocation(line: 843, column: 7, scope: !2843)
!2850 = !DILocation(line: 844, column: 19, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !157, line: 844, column: 3)
!2852 = distinct !DILexicalBlock(scope: !2843, file: !157, line: 844, column: 3)
!2853 = !DILocation(line: 844, column: 17, scope: !2851)
!2854 = !DILocation(line: 844, column: 3, scope: !2852)
!2855 = !DILocation(line: 845, column: 17, scope: !2851)
!2856 = !{!2857, !631, i64 8}
!2857 = !{!"slotvec", !875, i64 0, !631, i64 8}
!2858 = !DILocation(line: 845, column: 5, scope: !2851)
!2859 = !DILocation(line: 844, column: 28, scope: !2851)
!2860 = distinct !{!2860, !2854, !2861}
!2861 = !DILocation(line: 845, column: 20, scope: !2852)
!2862 = !DILocation(line: 846, column: 13, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2843, file: !157, line: 846, column: 7)
!2864 = !DILocation(line: 846, column: 17, scope: !2863)
!2865 = !DILocation(line: 846, column: 7, scope: !2843)
!2866 = !DILocation(line: 848, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !157, line: 847, column: 5)
!2868 = !DILocation(line: 849, column: 21, scope: !2867)
!2869 = !{!2857, !875, i64 0}
!2870 = !DILocation(line: 850, column: 20, scope: !2867)
!2871 = !DILocation(line: 851, column: 5, scope: !2867)
!2872 = !DILocation(line: 852, column: 10, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2843, file: !157, line: 852, column: 7)
!2874 = !DILocation(line: 852, column: 7, scope: !2843)
!2875 = !DILocation(line: 854, column: 13, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !157, line: 853, column: 5)
!2877 = !DILocation(line: 854, column: 7, scope: !2876)
!2878 = !DILocation(line: 855, column: 15, scope: !2876)
!2879 = !DILocation(line: 856, column: 5, scope: !2876)
!2880 = !DILocation(line: 857, column: 10, scope: !2843)
!2881 = !DILocation(line: 858, column: 1, scope: !2843)
!2882 = distinct !DISubprogram(name: "quotearg_n", scope: !157, file: !157, line: 922, type: !2883, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!29, !63, !40}
!2885 = !{!2886, !2887}
!2886 = !DILocalVariable(name: "n", arg: 1, scope: !2882, file: !157, line: 922, type: !63)
!2887 = !DILocalVariable(name: "arg", arg: 2, scope: !2882, file: !157, line: 922, type: !40)
!2888 = !DILocation(line: 922, column: 17, scope: !2882)
!2889 = !DILocation(line: 922, column: 32, scope: !2882)
!2890 = !DILocation(line: 924, column: 10, scope: !2882)
!2891 = !DILocation(line: 924, column: 3, scope: !2882)
!2892 = distinct !DISubprogram(name: "quotearg_n_options", scope: !157, file: !157, line: 869, type: !2893, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!29, !63, !40, !82, !1879}
!2895 = !{!2896, !2897, !2898, !2899, !2900, !2901, !2902, !2905, !2907, !2908, !2909}
!2896 = !DILocalVariable(name: "n", arg: 1, scope: !2892, file: !157, line: 869, type: !63)
!2897 = !DILocalVariable(name: "arg", arg: 2, scope: !2892, file: !157, line: 869, type: !40)
!2898 = !DILocalVariable(name: "argsize", arg: 3, scope: !2892, file: !157, line: 869, type: !82)
!2899 = !DILocalVariable(name: "options", arg: 4, scope: !2892, file: !157, line: 870, type: !1879)
!2900 = !DILocalVariable(name: "e", scope: !2892, file: !157, line: 872, type: !63)
!2901 = !DILocalVariable(name: "sv", scope: !2892, file: !157, line: 874, type: !182)
!2902 = !DILocalVariable(name: "preallocated", scope: !2903, file: !157, line: 881, type: !113)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !157, line: 880, column: 5)
!2904 = distinct !DILexicalBlock(scope: !2892, file: !157, line: 879, column: 7)
!2905 = !DILocalVariable(name: "size", scope: !2906, file: !157, line: 894, type: !82)
!2906 = distinct !DILexicalBlock(scope: !2892, file: !157, line: 893, column: 3)
!2907 = !DILocalVariable(name: "val", scope: !2906, file: !157, line: 895, type: !29)
!2908 = !DILocalVariable(name: "flags", scope: !2906, file: !157, line: 897, type: !63)
!2909 = !DILocalVariable(name: "qsize", scope: !2906, file: !157, line: 898, type: !82)
!2910 = !DILocation(line: 869, column: 25, scope: !2892)
!2911 = !DILocation(line: 869, column: 40, scope: !2892)
!2912 = !DILocation(line: 869, column: 52, scope: !2892)
!2913 = !DILocation(line: 870, column: 51, scope: !2892)
!2914 = !DILocation(line: 872, column: 11, scope: !2892)
!2915 = !DILocation(line: 872, column: 7, scope: !2892)
!2916 = !DILocation(line: 874, column: 24, scope: !2892)
!2917 = !DILocation(line: 874, column: 19, scope: !2892)
!2918 = !DILocation(line: 876, column: 9, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2892, file: !157, line: 876, column: 7)
!2920 = !DILocation(line: 876, column: 7, scope: !2892)
!2921 = !DILocation(line: 877, column: 5, scope: !2919)
!2922 = !DILocation(line: 879, column: 7, scope: !2904)
!2923 = !DILocation(line: 879, column: 14, scope: !2904)
!2924 = !DILocation(line: 879, column: 7, scope: !2892)
!2925 = !DILocation(line: 881, column: 31, scope: !2903)
!2926 = !DILocation(line: 883, column: 67, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2903, file: !157, line: 883, column: 11)
!2928 = !DILocation(line: 883, column: 11, scope: !2903)
!2929 = !DILocation(line: 884, column: 9, scope: !2927)
!2930 = !DILocation(line: 886, column: 32, scope: !2903)
!2931 = !DILocation(line: 886, column: 61, scope: !2903)
!2932 = !DILocation(line: 886, column: 58, scope: !2903)
!2933 = !DILocation(line: 886, column: 66, scope: !2903)
!2934 = !DILocation(line: 886, column: 22, scope: !2903)
!2935 = !DILocation(line: 886, column: 15, scope: !2903)
!2936 = !DILocation(line: 887, column: 11, scope: !2903)
!2937 = !DILocation(line: 888, column: 15, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2903, file: !157, line: 887, column: 11)
!2939 = !{i64 0, i64 8, !874, i64 8, i64 8, !630}
!2940 = !DILocation(line: 888, column: 9, scope: !2938)
!2941 = !DILocation(line: 889, column: 20, scope: !2903)
!2942 = !DILocation(line: 889, column: 18, scope: !2903)
!2943 = !DILocation(line: 889, column: 7, scope: !2903)
!2944 = !DILocation(line: 889, column: 38, scope: !2903)
!2945 = !DILocation(line: 889, column: 31, scope: !2903)
!2946 = !DILocation(line: 889, column: 48, scope: !2903)
!2947 = !DILocation(line: 890, column: 14, scope: !2903)
!2948 = !DILocation(line: 891, column: 5, scope: !2903)
!2949 = !DILocation(line: 894, column: 19, scope: !2906)
!2950 = !DILocation(line: 894, column: 25, scope: !2906)
!2951 = !DILocation(line: 894, column: 12, scope: !2906)
!2952 = !DILocation(line: 895, column: 23, scope: !2906)
!2953 = !DILocation(line: 895, column: 11, scope: !2906)
!2954 = !DILocation(line: 897, column: 26, scope: !2906)
!2955 = !DILocation(line: 897, column: 32, scope: !2906)
!2956 = !DILocation(line: 897, column: 9, scope: !2906)
!2957 = !DILocation(line: 899, column: 55, scope: !2906)
!2958 = !DILocation(line: 900, column: 46, scope: !2906)
!2959 = !DILocation(line: 901, column: 55, scope: !2906)
!2960 = !DILocation(line: 902, column: 55, scope: !2906)
!2961 = !DILocation(line: 898, column: 20, scope: !2906)
!2962 = !DILocation(line: 898, column: 12, scope: !2906)
!2963 = !DILocation(line: 904, column: 14, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2906, file: !157, line: 904, column: 9)
!2965 = !DILocation(line: 904, column: 9, scope: !2906)
!2966 = !DILocation(line: 906, column: 35, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2964, file: !157, line: 905, column: 7)
!2968 = !DILocation(line: 906, column: 20, scope: !2967)
!2969 = !DILocation(line: 907, column: 17, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2967, file: !157, line: 907, column: 13)
!2971 = !DILocation(line: 907, column: 13, scope: !2967)
!2972 = !DILocation(line: 908, column: 11, scope: !2970)
!2973 = !DILocation(line: 220, column: 20, scope: !2796, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 909, column: 27, scope: !2967)
!2975 = !DILocation(line: 222, column: 10, scope: !2796, inlinedAt: !2974)
!2976 = !DILocation(line: 909, column: 19, scope: !2967)
!2977 = !DILocation(line: 910, column: 69, scope: !2967)
!2978 = !DILocation(line: 912, column: 44, scope: !2967)
!2979 = !DILocation(line: 913, column: 44, scope: !2967)
!2980 = !DILocation(line: 910, column: 9, scope: !2967)
!2981 = !DILocation(line: 914, column: 7, scope: !2967)
!2982 = !DILocation(line: 916, column: 11, scope: !2906)
!2983 = !DILocation(line: 917, column: 5, scope: !2906)
!2984 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !157, file: !157, line: 928, type: !2985, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!29, !63, !40, !82}
!2987 = !{!2988, !2989, !2990}
!2988 = !DILocalVariable(name: "n", arg: 1, scope: !2984, file: !157, line: 928, type: !63)
!2989 = !DILocalVariable(name: "arg", arg: 2, scope: !2984, file: !157, line: 928, type: !40)
!2990 = !DILocalVariable(name: "argsize", arg: 3, scope: !2984, file: !157, line: 928, type: !82)
!2991 = !DILocation(line: 928, column: 21, scope: !2984)
!2992 = !DILocation(line: 928, column: 36, scope: !2984)
!2993 = !DILocation(line: 928, column: 48, scope: !2984)
!2994 = !DILocation(line: 930, column: 10, scope: !2984)
!2995 = !DILocation(line: 930, column: 3, scope: !2984)
!2996 = distinct !DISubprogram(name: "quotearg", scope: !157, file: !157, line: 934, type: !2997, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!29, !40}
!2999 = !{!3000}
!3000 = !DILocalVariable(name: "arg", arg: 1, scope: !2996, file: !157, line: 934, type: !40)
!3001 = !DILocation(line: 934, column: 23, scope: !2996)
!3002 = !DILocation(line: 922, column: 17, scope: !2882, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 936, column: 10, scope: !2996)
!3004 = !DILocation(line: 922, column: 32, scope: !2882, inlinedAt: !3003)
!3005 = !DILocation(line: 924, column: 10, scope: !2882, inlinedAt: !3003)
!3006 = !DILocation(line: 936, column: 3, scope: !2996)
!3007 = distinct !DISubprogram(name: "quotearg_mem", scope: !157, file: !157, line: 940, type: !3008, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!29, !40, !82}
!3010 = !{!3011, !3012}
!3011 = !DILocalVariable(name: "arg", arg: 1, scope: !3007, file: !157, line: 940, type: !40)
!3012 = !DILocalVariable(name: "argsize", arg: 2, scope: !3007, file: !157, line: 940, type: !82)
!3013 = !DILocation(line: 940, column: 27, scope: !3007)
!3014 = !DILocation(line: 940, column: 39, scope: !3007)
!3015 = !DILocation(line: 928, column: 21, scope: !2984, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 942, column: 10, scope: !3007)
!3017 = !DILocation(line: 928, column: 36, scope: !2984, inlinedAt: !3016)
!3018 = !DILocation(line: 928, column: 48, scope: !2984, inlinedAt: !3016)
!3019 = !DILocation(line: 930, column: 10, scope: !2984, inlinedAt: !3016)
!3020 = !DILocation(line: 942, column: 3, scope: !3007)
!3021 = distinct !DISubprogram(name: "quotearg_n_style", scope: !157, file: !157, line: 946, type: !3022, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!29, !63, !5, !40}
!3024 = !{!3025, !3026, !3027, !3028}
!3025 = !DILocalVariable(name: "n", arg: 1, scope: !3021, file: !157, line: 946, type: !63)
!3026 = !DILocalVariable(name: "s", arg: 2, scope: !3021, file: !157, line: 946, type: !5)
!3027 = !DILocalVariable(name: "arg", arg: 3, scope: !3021, file: !157, line: 946, type: !40)
!3028 = !DILocalVariable(name: "o", scope: !3021, file: !157, line: 948, type: !1880)
!3029 = !DILocalVariable(name: "o", scope: !3030, file: !157, line: 187, type: !164)
!3030 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !157, file: !157, line: 185, type: !3031, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!164, !5}
!3033 = !{!3034, !3029}
!3034 = !DILocalVariable(name: "style", arg: 1, scope: !3030, file: !157, line: 185, type: !5)
!3035 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3036 = !DILocation(line: 187, column: 26, scope: !3030, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 948, column: 36, scope: !3021)
!3038 = !DILocation(line: 946, column: 23, scope: !3021)
!3039 = !DILocation(line: 946, column: 45, scope: !3021)
!3040 = !DILocation(line: 946, column: 60, scope: !3021)
!3041 = !DILocation(line: 948, column: 3, scope: !3021)
!3042 = !DILocation(line: 948, column: 32, scope: !3021)
!3043 = !DILocation(line: 185, column: 48, scope: !3030, inlinedAt: !3037)
!3044 = !DILocation(line: 187, column: 3, scope: !3030, inlinedAt: !3037)
!3045 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3046 = !DILocation(line: 188, column: 13, scope: !3047, inlinedAt: !3037)
!3047 = distinct !DILexicalBlock(scope: !3030, file: !157, line: 188, column: 7)
!3048 = !DILocation(line: 188, column: 7, scope: !3030, inlinedAt: !3037)
!3049 = !DILocation(line: 189, column: 5, scope: !3047, inlinedAt: !3037)
!3050 = !{!3051}
!3051 = distinct !{!3051, !3052, !"quoting_options_from_style: argument 0"}
!3052 = distinct !{!3052, !"quoting_options_from_style"}
!3053 = !DILocation(line: 191, column: 10, scope: !3030, inlinedAt: !3037)
!3054 = !DILocation(line: 192, column: 1, scope: !3030, inlinedAt: !3037)
!3055 = !DILocation(line: 949, column: 10, scope: !3021)
!3056 = !DILocation(line: 950, column: 1, scope: !3021)
!3057 = !DILocation(line: 949, column: 3, scope: !3021)
!3058 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !157, file: !157, line: 953, type: !3059, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!29, !63, !5, !40, !82}
!3061 = !{!3062, !3063, !3064, !3065, !3066}
!3062 = !DILocalVariable(name: "n", arg: 1, scope: !3058, file: !157, line: 953, type: !63)
!3063 = !DILocalVariable(name: "s", arg: 2, scope: !3058, file: !157, line: 953, type: !5)
!3064 = !DILocalVariable(name: "arg", arg: 3, scope: !3058, file: !157, line: 954, type: !40)
!3065 = !DILocalVariable(name: "argsize", arg: 4, scope: !3058, file: !157, line: 954, type: !82)
!3066 = !DILocalVariable(name: "o", scope: !3058, file: !157, line: 956, type: !1880)
!3067 = !DILocation(line: 187, column: 26, scope: !3030, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 956, column: 36, scope: !3058)
!3069 = !DILocation(line: 953, column: 27, scope: !3058)
!3070 = !DILocation(line: 953, column: 49, scope: !3058)
!3071 = !DILocation(line: 954, column: 35, scope: !3058)
!3072 = !DILocation(line: 954, column: 47, scope: !3058)
!3073 = !DILocation(line: 956, column: 3, scope: !3058)
!3074 = !DILocation(line: 956, column: 32, scope: !3058)
!3075 = !DILocation(line: 185, column: 48, scope: !3030, inlinedAt: !3068)
!3076 = !DILocation(line: 187, column: 3, scope: !3030, inlinedAt: !3068)
!3077 = !DILocation(line: 188, column: 13, scope: !3047, inlinedAt: !3068)
!3078 = !DILocation(line: 188, column: 7, scope: !3030, inlinedAt: !3068)
!3079 = !DILocation(line: 189, column: 5, scope: !3047, inlinedAt: !3068)
!3080 = !{!3081}
!3081 = distinct !{!3081, !3082, !"quoting_options_from_style: argument 0"}
!3082 = distinct !{!3082, !"quoting_options_from_style"}
!3083 = !DILocation(line: 191, column: 10, scope: !3030, inlinedAt: !3068)
!3084 = !DILocation(line: 192, column: 1, scope: !3030, inlinedAt: !3068)
!3085 = !DILocation(line: 957, column: 10, scope: !3058)
!3086 = !DILocation(line: 958, column: 1, scope: !3058)
!3087 = !DILocation(line: 957, column: 3, scope: !3058)
!3088 = distinct !DISubprogram(name: "quotearg_style", scope: !157, file: !157, line: 961, type: !3089, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!29, !5, !40}
!3091 = !{!3092, !3093}
!3092 = !DILocalVariable(name: "s", arg: 1, scope: !3088, file: !157, line: 961, type: !5)
!3093 = !DILocalVariable(name: "arg", arg: 2, scope: !3088, file: !157, line: 961, type: !40)
!3094 = !DILocation(line: 187, column: 26, scope: !3030, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 948, column: 36, scope: !3021, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 963, column: 10, scope: !3088)
!3097 = !DILocation(line: 961, column: 36, scope: !3088)
!3098 = !DILocation(line: 961, column: 51, scope: !3088)
!3099 = !DILocation(line: 946, column: 23, scope: !3021, inlinedAt: !3096)
!3100 = !DILocation(line: 946, column: 45, scope: !3021, inlinedAt: !3096)
!3101 = !DILocation(line: 946, column: 60, scope: !3021, inlinedAt: !3096)
!3102 = !DILocation(line: 948, column: 3, scope: !3021, inlinedAt: !3096)
!3103 = !DILocation(line: 948, column: 32, scope: !3021, inlinedAt: !3096)
!3104 = !DILocation(line: 185, column: 48, scope: !3030, inlinedAt: !3095)
!3105 = !DILocation(line: 187, column: 3, scope: !3030, inlinedAt: !3095)
!3106 = !DILocation(line: 188, column: 13, scope: !3047, inlinedAt: !3095)
!3107 = !DILocation(line: 188, column: 7, scope: !3030, inlinedAt: !3095)
!3108 = !DILocation(line: 189, column: 5, scope: !3047, inlinedAt: !3095)
!3109 = !{!3110}
!3110 = distinct !{!3110, !3111, !"quoting_options_from_style: argument 0"}
!3111 = distinct !{!3111, !"quoting_options_from_style"}
!3112 = !DILocation(line: 191, column: 10, scope: !3030, inlinedAt: !3095)
!3113 = !DILocation(line: 192, column: 1, scope: !3030, inlinedAt: !3095)
!3114 = !DILocation(line: 949, column: 10, scope: !3021, inlinedAt: !3096)
!3115 = !DILocation(line: 950, column: 1, scope: !3021, inlinedAt: !3096)
!3116 = !DILocation(line: 963, column: 3, scope: !3088)
!3117 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !157, file: !157, line: 967, type: !3118, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!29, !5, !40, !82}
!3120 = !{!3121, !3122, !3123}
!3121 = !DILocalVariable(name: "s", arg: 1, scope: !3117, file: !157, line: 967, type: !5)
!3122 = !DILocalVariable(name: "arg", arg: 2, scope: !3117, file: !157, line: 967, type: !40)
!3123 = !DILocalVariable(name: "argsize", arg: 3, scope: !3117, file: !157, line: 967, type: !82)
!3124 = !DILocation(line: 187, column: 26, scope: !3030, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 956, column: 36, scope: !3058, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 969, column: 10, scope: !3117)
!3127 = !DILocation(line: 967, column: 40, scope: !3117)
!3128 = !DILocation(line: 967, column: 55, scope: !3117)
!3129 = !DILocation(line: 967, column: 67, scope: !3117)
!3130 = !DILocation(line: 953, column: 27, scope: !3058, inlinedAt: !3126)
!3131 = !DILocation(line: 953, column: 49, scope: !3058, inlinedAt: !3126)
!3132 = !DILocation(line: 954, column: 35, scope: !3058, inlinedAt: !3126)
!3133 = !DILocation(line: 954, column: 47, scope: !3058, inlinedAt: !3126)
!3134 = !DILocation(line: 956, column: 3, scope: !3058, inlinedAt: !3126)
!3135 = !DILocation(line: 956, column: 32, scope: !3058, inlinedAt: !3126)
!3136 = !DILocation(line: 185, column: 48, scope: !3030, inlinedAt: !3125)
!3137 = !DILocation(line: 187, column: 3, scope: !3030, inlinedAt: !3125)
!3138 = !DILocation(line: 188, column: 13, scope: !3047, inlinedAt: !3125)
!3139 = !DILocation(line: 188, column: 7, scope: !3030, inlinedAt: !3125)
!3140 = !DILocation(line: 189, column: 5, scope: !3047, inlinedAt: !3125)
!3141 = !{!3142}
!3142 = distinct !{!3142, !3143, !"quoting_options_from_style: argument 0"}
!3143 = distinct !{!3143, !"quoting_options_from_style"}
!3144 = !DILocation(line: 191, column: 10, scope: !3030, inlinedAt: !3125)
!3145 = !DILocation(line: 192, column: 1, scope: !3030, inlinedAt: !3125)
!3146 = !DILocation(line: 957, column: 10, scope: !3058, inlinedAt: !3126)
!3147 = !DILocation(line: 958, column: 1, scope: !3058, inlinedAt: !3126)
!3148 = !DILocation(line: 969, column: 3, scope: !3117)
!3149 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !157, file: !157, line: 973, type: !3150, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3152)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!29, !40, !82, !30}
!3152 = !{!3153, !3154, !3155, !3156}
!3153 = !DILocalVariable(name: "arg", arg: 1, scope: !3149, file: !157, line: 973, type: !40)
!3154 = !DILocalVariable(name: "argsize", arg: 2, scope: !3149, file: !157, line: 973, type: !82)
!3155 = !DILocalVariable(name: "ch", arg: 3, scope: !3149, file: !157, line: 973, type: !30)
!3156 = !DILocalVariable(name: "options", scope: !3149, file: !157, line: 975, type: !164)
!3157 = !DILocation(line: 973, column: 32, scope: !3149)
!3158 = !DILocation(line: 973, column: 44, scope: !3149)
!3159 = !DILocation(line: 973, column: 58, scope: !3149)
!3160 = !DILocation(line: 975, column: 3, scope: !3149)
!3161 = !DILocation(line: 976, column: 13, scope: !3149)
!3162 = !{i64 0, i64 4, !885, i64 4, i64 4, !818, i64 8, i64 32, !885, i64 40, i64 8, !630, i64 48, i64 8, !630}
!3163 = !DILocation(line: 975, column: 26, scope: !3149)
!3164 = !DILocation(line: 144, column: 43, scope: !1901, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 977, column: 3, scope: !3149)
!3166 = !DILocation(line: 144, column: 51, scope: !1901, inlinedAt: !3165)
!3167 = !DILocation(line: 144, column: 58, scope: !1901, inlinedAt: !3165)
!3168 = !DILocation(line: 146, column: 17, scope: !1901, inlinedAt: !3165)
!3169 = !DILocation(line: 148, column: 62, scope: !1901, inlinedAt: !3165)
!3170 = !DILocation(line: 148, column: 57, scope: !1901, inlinedAt: !3165)
!3171 = !DILocation(line: 147, column: 17, scope: !1901, inlinedAt: !3165)
!3172 = !DILocation(line: 149, column: 18, scope: !1901, inlinedAt: !3165)
!3173 = !DILocation(line: 149, column: 15, scope: !1901, inlinedAt: !3165)
!3174 = !DILocation(line: 149, column: 7, scope: !1901, inlinedAt: !3165)
!3175 = !DILocation(line: 150, column: 12, scope: !1901, inlinedAt: !3165)
!3176 = !DILocation(line: 150, column: 15, scope: !1901, inlinedAt: !3165)
!3177 = !DILocation(line: 150, column: 25, scope: !1901, inlinedAt: !3165)
!3178 = !DILocation(line: 150, column: 7, scope: !1901, inlinedAt: !3165)
!3179 = !DILocation(line: 151, column: 18, scope: !1901, inlinedAt: !3165)
!3180 = !DILocation(line: 151, column: 23, scope: !1901, inlinedAt: !3165)
!3181 = !DILocation(line: 151, column: 6, scope: !1901, inlinedAt: !3165)
!3182 = !DILocation(line: 978, column: 10, scope: !3149)
!3183 = !DILocation(line: 979, column: 1, scope: !3149)
!3184 = !DILocation(line: 978, column: 3, scope: !3149)
!3185 = distinct !DISubprogram(name: "quotearg_char", scope: !157, file: !157, line: 982, type: !3186, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!29, !40, !30}
!3188 = !{!3189, !3190}
!3189 = !DILocalVariable(name: "arg", arg: 1, scope: !3185, file: !157, line: 982, type: !40)
!3190 = !DILocalVariable(name: "ch", arg: 2, scope: !3185, file: !157, line: 982, type: !30)
!3191 = !DILocation(line: 982, column: 28, scope: !3185)
!3192 = !DILocation(line: 982, column: 38, scope: !3185)
!3193 = !DILocation(line: 973, column: 32, scope: !3149, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 984, column: 10, scope: !3185)
!3195 = !DILocation(line: 973, column: 44, scope: !3149, inlinedAt: !3194)
!3196 = !DILocation(line: 973, column: 58, scope: !3149, inlinedAt: !3194)
!3197 = !DILocation(line: 975, column: 3, scope: !3149, inlinedAt: !3194)
!3198 = !DILocation(line: 976, column: 13, scope: !3149, inlinedAt: !3194)
!3199 = !DILocation(line: 975, column: 26, scope: !3149, inlinedAt: !3194)
!3200 = !DILocation(line: 144, column: 43, scope: !1901, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 977, column: 3, scope: !3149, inlinedAt: !3194)
!3202 = !DILocation(line: 144, column: 51, scope: !1901, inlinedAt: !3201)
!3203 = !DILocation(line: 144, column: 58, scope: !1901, inlinedAt: !3201)
!3204 = !DILocation(line: 146, column: 17, scope: !1901, inlinedAt: !3201)
!3205 = !DILocation(line: 148, column: 62, scope: !1901, inlinedAt: !3201)
!3206 = !DILocation(line: 148, column: 57, scope: !1901, inlinedAt: !3201)
!3207 = !DILocation(line: 147, column: 17, scope: !1901, inlinedAt: !3201)
!3208 = !DILocation(line: 149, column: 18, scope: !1901, inlinedAt: !3201)
!3209 = !DILocation(line: 149, column: 15, scope: !1901, inlinedAt: !3201)
!3210 = !DILocation(line: 149, column: 7, scope: !1901, inlinedAt: !3201)
!3211 = !DILocation(line: 150, column: 12, scope: !1901, inlinedAt: !3201)
!3212 = !DILocation(line: 150, column: 15, scope: !1901, inlinedAt: !3201)
!3213 = !DILocation(line: 150, column: 25, scope: !1901, inlinedAt: !3201)
!3214 = !DILocation(line: 150, column: 7, scope: !1901, inlinedAt: !3201)
!3215 = !DILocation(line: 151, column: 18, scope: !1901, inlinedAt: !3201)
!3216 = !DILocation(line: 151, column: 23, scope: !1901, inlinedAt: !3201)
!3217 = !DILocation(line: 151, column: 6, scope: !1901, inlinedAt: !3201)
!3218 = !DILocation(line: 978, column: 10, scope: !3149, inlinedAt: !3194)
!3219 = !DILocation(line: 979, column: 1, scope: !3149, inlinedAt: !3194)
!3220 = !DILocation(line: 984, column: 3, scope: !3185)
!3221 = distinct !DISubprogram(name: "quotearg_colon", scope: !157, file: !157, line: 988, type: !2997, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3222)
!3222 = !{!3223}
!3223 = !DILocalVariable(name: "arg", arg: 1, scope: !3221, file: !157, line: 988, type: !40)
!3224 = !DILocation(line: 988, column: 29, scope: !3221)
!3225 = !DILocation(line: 982, column: 28, scope: !3185, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 990, column: 10, scope: !3221)
!3227 = !DILocation(line: 982, column: 38, scope: !3185, inlinedAt: !3226)
!3228 = !DILocation(line: 973, column: 32, scope: !3149, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 984, column: 10, scope: !3185, inlinedAt: !3226)
!3230 = !DILocation(line: 973, column: 44, scope: !3149, inlinedAt: !3229)
!3231 = !DILocation(line: 973, column: 58, scope: !3149, inlinedAt: !3229)
!3232 = !DILocation(line: 975, column: 3, scope: !3149, inlinedAt: !3229)
!3233 = !DILocation(line: 976, column: 13, scope: !3149, inlinedAt: !3229)
!3234 = !DILocation(line: 975, column: 26, scope: !3149, inlinedAt: !3229)
!3235 = !DILocation(line: 144, column: 43, scope: !1901, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 977, column: 3, scope: !3149, inlinedAt: !3229)
!3237 = !DILocation(line: 144, column: 51, scope: !1901, inlinedAt: !3236)
!3238 = !DILocation(line: 144, column: 58, scope: !1901, inlinedAt: !3236)
!3239 = !DILocation(line: 146, column: 17, scope: !1901, inlinedAt: !3236)
!3240 = !DILocation(line: 148, column: 57, scope: !1901, inlinedAt: !3236)
!3241 = !DILocation(line: 147, column: 17, scope: !1901, inlinedAt: !3236)
!3242 = !DILocation(line: 149, column: 7, scope: !1901, inlinedAt: !3236)
!3243 = !DILocation(line: 150, column: 12, scope: !1901, inlinedAt: !3236)
!3244 = !DILocation(line: 151, column: 6, scope: !1901, inlinedAt: !3236)
!3245 = !DILocation(line: 978, column: 10, scope: !3149, inlinedAt: !3229)
!3246 = !DILocation(line: 979, column: 1, scope: !3149, inlinedAt: !3229)
!3247 = !DILocation(line: 990, column: 3, scope: !3221)
!3248 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !157, file: !157, line: 994, type: !3008, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3249)
!3249 = !{!3250, !3251}
!3250 = !DILocalVariable(name: "arg", arg: 1, scope: !3248, file: !157, line: 994, type: !40)
!3251 = !DILocalVariable(name: "argsize", arg: 2, scope: !3248, file: !157, line: 994, type: !82)
!3252 = !DILocation(line: 994, column: 33, scope: !3248)
!3253 = !DILocation(line: 994, column: 45, scope: !3248)
!3254 = !DILocation(line: 973, column: 32, scope: !3149, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 996, column: 10, scope: !3248)
!3256 = !DILocation(line: 973, column: 44, scope: !3149, inlinedAt: !3255)
!3257 = !DILocation(line: 973, column: 58, scope: !3149, inlinedAt: !3255)
!3258 = !DILocation(line: 975, column: 3, scope: !3149, inlinedAt: !3255)
!3259 = !DILocation(line: 976, column: 13, scope: !3149, inlinedAt: !3255)
!3260 = !DILocation(line: 975, column: 26, scope: !3149, inlinedAt: !3255)
!3261 = !DILocation(line: 144, column: 43, scope: !1901, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 977, column: 3, scope: !3149, inlinedAt: !3255)
!3263 = !DILocation(line: 144, column: 51, scope: !1901, inlinedAt: !3262)
!3264 = !DILocation(line: 144, column: 58, scope: !1901, inlinedAt: !3262)
!3265 = !DILocation(line: 146, column: 17, scope: !1901, inlinedAt: !3262)
!3266 = !DILocation(line: 148, column: 57, scope: !1901, inlinedAt: !3262)
!3267 = !DILocation(line: 147, column: 17, scope: !1901, inlinedAt: !3262)
!3268 = !DILocation(line: 149, column: 7, scope: !1901, inlinedAt: !3262)
!3269 = !DILocation(line: 150, column: 12, scope: !1901, inlinedAt: !3262)
!3270 = !DILocation(line: 151, column: 6, scope: !1901, inlinedAt: !3262)
!3271 = !DILocation(line: 978, column: 10, scope: !3149, inlinedAt: !3255)
!3272 = !DILocation(line: 979, column: 1, scope: !3149, inlinedAt: !3255)
!3273 = !DILocation(line: 996, column: 3, scope: !3248)
!3274 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !157, file: !157, line: 1000, type: !3022, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3275)
!3275 = !{!3276, !3277, !3278, !3279}
!3276 = !DILocalVariable(name: "n", arg: 1, scope: !3274, file: !157, line: 1000, type: !63)
!3277 = !DILocalVariable(name: "s", arg: 2, scope: !3274, file: !157, line: 1000, type: !5)
!3278 = !DILocalVariable(name: "arg", arg: 3, scope: !3274, file: !157, line: 1000, type: !40)
!3279 = !DILocalVariable(name: "options", scope: !3274, file: !157, line: 1002, type: !164)
!3280 = !DILocation(line: 187, column: 26, scope: !3030, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 1003, column: 13, scope: !3274)
!3282 = !DILocation(line: 1000, column: 29, scope: !3274)
!3283 = !DILocation(line: 1000, column: 51, scope: !3274)
!3284 = !DILocation(line: 1000, column: 66, scope: !3274)
!3285 = !DILocation(line: 1002, column: 3, scope: !3274)
!3286 = !DILocation(line: 185, column: 48, scope: !3030, inlinedAt: !3281)
!3287 = !DILocation(line: 187, column: 3, scope: !3030, inlinedAt: !3281)
!3288 = !DILocation(line: 188, column: 13, scope: !3047, inlinedAt: !3281)
!3289 = !DILocation(line: 188, column: 7, scope: !3030, inlinedAt: !3281)
!3290 = !DILocation(line: 189, column: 5, scope: !3047, inlinedAt: !3281)
!3291 = !{!3292}
!3292 = distinct !{!3292, !3293, !"quoting_options_from_style: argument 0"}
!3293 = distinct !{!3293, !"quoting_options_from_style"}
!3294 = !DILocation(line: 191, column: 10, scope: !3030, inlinedAt: !3281)
!3295 = !DILocation(line: 192, column: 1, scope: !3030, inlinedAt: !3281)
!3296 = !DILocation(line: 1003, column: 13, scope: !3274)
!3297 = !DILocation(line: 1002, column: 26, scope: !3274)
!3298 = !DILocation(line: 144, column: 43, scope: !1901, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 1004, column: 3, scope: !3274)
!3300 = !DILocation(line: 144, column: 51, scope: !1901, inlinedAt: !3299)
!3301 = !DILocation(line: 144, column: 58, scope: !1901, inlinedAt: !3299)
!3302 = !DILocation(line: 146, column: 17, scope: !1901, inlinedAt: !3299)
!3303 = !DILocation(line: 148, column: 57, scope: !1901, inlinedAt: !3299)
!3304 = !DILocation(line: 147, column: 17, scope: !1901, inlinedAt: !3299)
!3305 = !DILocation(line: 149, column: 7, scope: !1901, inlinedAt: !3299)
!3306 = !DILocation(line: 150, column: 12, scope: !1901, inlinedAt: !3299)
!3307 = !DILocation(line: 151, column: 6, scope: !1901, inlinedAt: !3299)
!3308 = !DILocation(line: 1005, column: 10, scope: !3274)
!3309 = !DILocation(line: 1006, column: 1, scope: !3274)
!3310 = !DILocation(line: 1005, column: 3, scope: !3274)
!3311 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !157, file: !157, line: 1009, type: !3312, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!29, !63, !40, !40, !40}
!3314 = !{!3315, !3316, !3317, !3318}
!3315 = !DILocalVariable(name: "n", arg: 1, scope: !3311, file: !157, line: 1009, type: !63)
!3316 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3311, file: !157, line: 1009, type: !40)
!3317 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3311, file: !157, line: 1010, type: !40)
!3318 = !DILocalVariable(name: "arg", arg: 4, scope: !3311, file: !157, line: 1010, type: !40)
!3319 = !DILocation(line: 1009, column: 24, scope: !3311)
!3320 = !DILocation(line: 1009, column: 39, scope: !3311)
!3321 = !DILocation(line: 1010, column: 32, scope: !3311)
!3322 = !DILocation(line: 1010, column: 57, scope: !3311)
!3323 = !DILocalVariable(name: "n", arg: 1, scope: !3324, file: !157, line: 1017, type: !63)
!3324 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !157, file: !157, line: 1017, type: !3325, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3327)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!29, !63, !40, !40, !40, !82}
!3327 = !{!3323, !3328, !3329, !3330, !3331, !3332}
!3328 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3324, file: !157, line: 1017, type: !40)
!3329 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3324, file: !157, line: 1018, type: !40)
!3330 = !DILocalVariable(name: "arg", arg: 4, scope: !3324, file: !157, line: 1019, type: !40)
!3331 = !DILocalVariable(name: "argsize", arg: 5, scope: !3324, file: !157, line: 1019, type: !82)
!3332 = !DILocalVariable(name: "o", scope: !3324, file: !157, line: 1021, type: !164)
!3333 = !DILocation(line: 1017, column: 28, scope: !3324, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 1012, column: 10, scope: !3311)
!3335 = !DILocation(line: 1017, column: 43, scope: !3324, inlinedAt: !3334)
!3336 = !DILocation(line: 1018, column: 36, scope: !3324, inlinedAt: !3334)
!3337 = !DILocation(line: 1019, column: 36, scope: !3324, inlinedAt: !3334)
!3338 = !DILocation(line: 1019, column: 48, scope: !3324, inlinedAt: !3334)
!3339 = !DILocation(line: 1021, column: 3, scope: !3324, inlinedAt: !3334)
!3340 = !DILocation(line: 1021, column: 30, scope: !3324, inlinedAt: !3334)
!3341 = !DILocation(line: 1021, column: 26, scope: !3324, inlinedAt: !3334)
!3342 = !DILocation(line: 171, column: 45, scope: !1950, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 1022, column: 3, scope: !3324, inlinedAt: !3334)
!3344 = !DILocation(line: 172, column: 33, scope: !1950, inlinedAt: !3343)
!3345 = !DILocation(line: 172, column: 57, scope: !1950, inlinedAt: !3343)
!3346 = !DILocation(line: 176, column: 6, scope: !1950, inlinedAt: !3343)
!3347 = !DILocation(line: 176, column: 12, scope: !1950, inlinedAt: !3343)
!3348 = !DILocation(line: 177, column: 8, scope: !1966, inlinedAt: !3343)
!3349 = !DILocation(line: 177, column: 23, scope: !1966, inlinedAt: !3343)
!3350 = !DILocation(line: 177, column: 19, scope: !1966, inlinedAt: !3343)
!3351 = !DILocation(line: 178, column: 5, scope: !1966, inlinedAt: !3343)
!3352 = !DILocation(line: 179, column: 6, scope: !1950, inlinedAt: !3343)
!3353 = !DILocation(line: 179, column: 17, scope: !1950, inlinedAt: !3343)
!3354 = !DILocation(line: 180, column: 6, scope: !1950, inlinedAt: !3343)
!3355 = !DILocation(line: 180, column: 18, scope: !1950, inlinedAt: !3343)
!3356 = !DILocation(line: 1023, column: 10, scope: !3324, inlinedAt: !3334)
!3357 = !DILocation(line: 1024, column: 1, scope: !3324, inlinedAt: !3334)
!3358 = !DILocation(line: 1012, column: 3, scope: !3311)
!3359 = !DILocation(line: 1017, column: 28, scope: !3324)
!3360 = !DILocation(line: 1017, column: 43, scope: !3324)
!3361 = !DILocation(line: 1018, column: 36, scope: !3324)
!3362 = !DILocation(line: 1019, column: 36, scope: !3324)
!3363 = !DILocation(line: 1019, column: 48, scope: !3324)
!3364 = !DILocation(line: 1021, column: 3, scope: !3324)
!3365 = !DILocation(line: 1021, column: 30, scope: !3324)
!3366 = !DILocation(line: 1021, column: 26, scope: !3324)
!3367 = !DILocation(line: 171, column: 45, scope: !1950, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 1022, column: 3, scope: !3324)
!3369 = !DILocation(line: 172, column: 33, scope: !1950, inlinedAt: !3368)
!3370 = !DILocation(line: 172, column: 57, scope: !1950, inlinedAt: !3368)
!3371 = !DILocation(line: 176, column: 6, scope: !1950, inlinedAt: !3368)
!3372 = !DILocation(line: 176, column: 12, scope: !1950, inlinedAt: !3368)
!3373 = !DILocation(line: 177, column: 8, scope: !1966, inlinedAt: !3368)
!3374 = !DILocation(line: 177, column: 23, scope: !1966, inlinedAt: !3368)
!3375 = !DILocation(line: 177, column: 19, scope: !1966, inlinedAt: !3368)
!3376 = !DILocation(line: 178, column: 5, scope: !1966, inlinedAt: !3368)
!3377 = !DILocation(line: 179, column: 6, scope: !1950, inlinedAt: !3368)
!3378 = !DILocation(line: 179, column: 17, scope: !1950, inlinedAt: !3368)
!3379 = !DILocation(line: 180, column: 6, scope: !1950, inlinedAt: !3368)
!3380 = !DILocation(line: 180, column: 18, scope: !1950, inlinedAt: !3368)
!3381 = !DILocation(line: 1023, column: 10, scope: !3324)
!3382 = !DILocation(line: 1024, column: 1, scope: !3324)
!3383 = !DILocation(line: 1023, column: 3, scope: !3324)
!3384 = distinct !DISubprogram(name: "quotearg_custom", scope: !157, file: !157, line: 1027, type: !3385, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!29, !40, !40, !40}
!3387 = !{!3388, !3389, !3390}
!3388 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3384, file: !157, line: 1027, type: !40)
!3389 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3384, file: !157, line: 1027, type: !40)
!3390 = !DILocalVariable(name: "arg", arg: 3, scope: !3384, file: !157, line: 1028, type: !40)
!3391 = !DILocation(line: 1027, column: 30, scope: !3384)
!3392 = !DILocation(line: 1027, column: 54, scope: !3384)
!3393 = !DILocation(line: 1028, column: 30, scope: !3384)
!3394 = !DILocation(line: 1009, column: 24, scope: !3311, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 1030, column: 10, scope: !3384)
!3396 = !DILocation(line: 1009, column: 39, scope: !3311, inlinedAt: !3395)
!3397 = !DILocation(line: 1010, column: 32, scope: !3311, inlinedAt: !3395)
!3398 = !DILocation(line: 1010, column: 57, scope: !3311, inlinedAt: !3395)
!3399 = !DILocation(line: 1017, column: 28, scope: !3324, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 1012, column: 10, scope: !3311, inlinedAt: !3395)
!3401 = !DILocation(line: 1017, column: 43, scope: !3324, inlinedAt: !3400)
!3402 = !DILocation(line: 1018, column: 36, scope: !3324, inlinedAt: !3400)
!3403 = !DILocation(line: 1019, column: 36, scope: !3324, inlinedAt: !3400)
!3404 = !DILocation(line: 1019, column: 48, scope: !3324, inlinedAt: !3400)
!3405 = !DILocation(line: 1021, column: 3, scope: !3324, inlinedAt: !3400)
!3406 = !DILocation(line: 1021, column: 30, scope: !3324, inlinedAt: !3400)
!3407 = !DILocation(line: 1021, column: 26, scope: !3324, inlinedAt: !3400)
!3408 = !DILocation(line: 171, column: 45, scope: !1950, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 1022, column: 3, scope: !3324, inlinedAt: !3400)
!3410 = !DILocation(line: 172, column: 33, scope: !1950, inlinedAt: !3409)
!3411 = !DILocation(line: 172, column: 57, scope: !1950, inlinedAt: !3409)
!3412 = !DILocation(line: 176, column: 6, scope: !1950, inlinedAt: !3409)
!3413 = !DILocation(line: 176, column: 12, scope: !1950, inlinedAt: !3409)
!3414 = !DILocation(line: 177, column: 8, scope: !1966, inlinedAt: !3409)
!3415 = !DILocation(line: 177, column: 23, scope: !1966, inlinedAt: !3409)
!3416 = !DILocation(line: 177, column: 19, scope: !1966, inlinedAt: !3409)
!3417 = !DILocation(line: 178, column: 5, scope: !1966, inlinedAt: !3409)
!3418 = !DILocation(line: 179, column: 6, scope: !1950, inlinedAt: !3409)
!3419 = !DILocation(line: 179, column: 17, scope: !1950, inlinedAt: !3409)
!3420 = !DILocation(line: 180, column: 6, scope: !1950, inlinedAt: !3409)
!3421 = !DILocation(line: 180, column: 18, scope: !1950, inlinedAt: !3409)
!3422 = !DILocation(line: 1023, column: 10, scope: !3324, inlinedAt: !3400)
!3423 = !DILocation(line: 1024, column: 1, scope: !3324, inlinedAt: !3400)
!3424 = !DILocation(line: 1030, column: 3, scope: !3384)
!3425 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !157, file: !157, line: 1034, type: !3426, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!29, !40, !40, !40, !82}
!3428 = !{!3429, !3430, !3431, !3432}
!3429 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3425, file: !157, line: 1034, type: !40)
!3430 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3425, file: !157, line: 1034, type: !40)
!3431 = !DILocalVariable(name: "arg", arg: 3, scope: !3425, file: !157, line: 1035, type: !40)
!3432 = !DILocalVariable(name: "argsize", arg: 4, scope: !3425, file: !157, line: 1035, type: !82)
!3433 = !DILocation(line: 1034, column: 34, scope: !3425)
!3434 = !DILocation(line: 1034, column: 58, scope: !3425)
!3435 = !DILocation(line: 1035, column: 34, scope: !3425)
!3436 = !DILocation(line: 1035, column: 46, scope: !3425)
!3437 = !DILocation(line: 1017, column: 28, scope: !3324, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 1037, column: 10, scope: !3425)
!3439 = !DILocation(line: 1017, column: 43, scope: !3324, inlinedAt: !3438)
!3440 = !DILocation(line: 1018, column: 36, scope: !3324, inlinedAt: !3438)
!3441 = !DILocation(line: 1019, column: 36, scope: !3324, inlinedAt: !3438)
!3442 = !DILocation(line: 1019, column: 48, scope: !3324, inlinedAt: !3438)
!3443 = !DILocation(line: 1021, column: 3, scope: !3324, inlinedAt: !3438)
!3444 = !DILocation(line: 1021, column: 30, scope: !3324, inlinedAt: !3438)
!3445 = !DILocation(line: 1021, column: 26, scope: !3324, inlinedAt: !3438)
!3446 = !DILocation(line: 171, column: 45, scope: !1950, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 1022, column: 3, scope: !3324, inlinedAt: !3438)
!3448 = !DILocation(line: 172, column: 33, scope: !1950, inlinedAt: !3447)
!3449 = !DILocation(line: 172, column: 57, scope: !1950, inlinedAt: !3447)
!3450 = !DILocation(line: 176, column: 6, scope: !1950, inlinedAt: !3447)
!3451 = !DILocation(line: 176, column: 12, scope: !1950, inlinedAt: !3447)
!3452 = !DILocation(line: 177, column: 8, scope: !1966, inlinedAt: !3447)
!3453 = !DILocation(line: 177, column: 23, scope: !1966, inlinedAt: !3447)
!3454 = !DILocation(line: 177, column: 19, scope: !1966, inlinedAt: !3447)
!3455 = !DILocation(line: 178, column: 5, scope: !1966, inlinedAt: !3447)
!3456 = !DILocation(line: 179, column: 6, scope: !1950, inlinedAt: !3447)
!3457 = !DILocation(line: 179, column: 17, scope: !1950, inlinedAt: !3447)
!3458 = !DILocation(line: 180, column: 6, scope: !1950, inlinedAt: !3447)
!3459 = !DILocation(line: 180, column: 18, scope: !1950, inlinedAt: !3447)
!3460 = !DILocation(line: 1023, column: 10, scope: !3324, inlinedAt: !3438)
!3461 = !DILocation(line: 1024, column: 1, scope: !3324, inlinedAt: !3438)
!3462 = !DILocation(line: 1037, column: 3, scope: !3425)
!3463 = distinct !DISubprogram(name: "quote_n_mem", scope: !157, file: !157, line: 1052, type: !3464, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!40, !63, !40, !82}
!3466 = !{!3467, !3468, !3469}
!3467 = !DILocalVariable(name: "n", arg: 1, scope: !3463, file: !157, line: 1052, type: !63)
!3468 = !DILocalVariable(name: "arg", arg: 2, scope: !3463, file: !157, line: 1052, type: !40)
!3469 = !DILocalVariable(name: "argsize", arg: 3, scope: !3463, file: !157, line: 1052, type: !82)
!3470 = !DILocation(line: 1052, column: 18, scope: !3463)
!3471 = !DILocation(line: 1052, column: 33, scope: !3463)
!3472 = !DILocation(line: 1052, column: 45, scope: !3463)
!3473 = !DILocation(line: 1054, column: 10, scope: !3463)
!3474 = !DILocation(line: 1054, column: 3, scope: !3463)
!3475 = distinct !DISubprogram(name: "quote_mem", scope: !157, file: !157, line: 1058, type: !3476, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!40, !40, !82}
!3478 = !{!3479, !3480}
!3479 = !DILocalVariable(name: "arg", arg: 1, scope: !3475, file: !157, line: 1058, type: !40)
!3480 = !DILocalVariable(name: "argsize", arg: 2, scope: !3475, file: !157, line: 1058, type: !82)
!3481 = !DILocation(line: 1058, column: 24, scope: !3475)
!3482 = !DILocation(line: 1058, column: 36, scope: !3475)
!3483 = !DILocation(line: 1052, column: 18, scope: !3463, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 1060, column: 10, scope: !3475)
!3485 = !DILocation(line: 1052, column: 33, scope: !3463, inlinedAt: !3484)
!3486 = !DILocation(line: 1052, column: 45, scope: !3463, inlinedAt: !3484)
!3487 = !DILocation(line: 1054, column: 10, scope: !3463, inlinedAt: !3484)
!3488 = !DILocation(line: 1060, column: 3, scope: !3475)
!3489 = distinct !DISubprogram(name: "quote_n", scope: !157, file: !157, line: 1064, type: !3490, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!40, !63, !40}
!3492 = !{!3493, !3494}
!3493 = !DILocalVariable(name: "n", arg: 1, scope: !3489, file: !157, line: 1064, type: !63)
!3494 = !DILocalVariable(name: "arg", arg: 2, scope: !3489, file: !157, line: 1064, type: !40)
!3495 = !DILocation(line: 1064, column: 14, scope: !3489)
!3496 = !DILocation(line: 1064, column: 29, scope: !3489)
!3497 = !DILocation(line: 1052, column: 18, scope: !3463, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 1066, column: 10, scope: !3489)
!3499 = !DILocation(line: 1052, column: 33, scope: !3463, inlinedAt: !3498)
!3500 = !DILocation(line: 1052, column: 45, scope: !3463, inlinedAt: !3498)
!3501 = !DILocation(line: 1054, column: 10, scope: !3463, inlinedAt: !3498)
!3502 = !DILocation(line: 1066, column: 3, scope: !3489)
!3503 = distinct !DISubprogram(name: "quote", scope: !157, file: !157, line: 1070, type: !3504, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!40, !40}
!3506 = !{!3507}
!3507 = !DILocalVariable(name: "arg", arg: 1, scope: !3503, file: !157, line: 1070, type: !40)
!3508 = !DILocation(line: 1070, column: 20, scope: !3503)
!3509 = !DILocation(line: 1064, column: 14, scope: !3489, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 1072, column: 10, scope: !3503)
!3511 = !DILocation(line: 1064, column: 29, scope: !3489, inlinedAt: !3510)
!3512 = !DILocation(line: 1052, column: 18, scope: !3463, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 1066, column: 10, scope: !3489, inlinedAt: !3510)
!3514 = !DILocation(line: 1052, column: 33, scope: !3463, inlinedAt: !3513)
!3515 = !DILocation(line: 1052, column: 45, scope: !3463, inlinedAt: !3513)
!3516 = !DILocation(line: 1054, column: 10, scope: !3463, inlinedAt: !3513)
!3517 = !DILocation(line: 1072, column: 3, scope: !3503)
!3518 = distinct !DISubprogram(name: "version_etc_arn", scope: !559, file: !559, line: 62, type: !3519, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3562)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{null, !3521, !40, !40, !40, !3561, !82}
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !675, line: 7, baseType: !3523)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 241, size: 1728, elements: !3524)
!3524 = !{!3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3523, file: !677, line: 242, baseType: !63, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3523, file: !677, line: 247, baseType: !29, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3523, file: !677, line: 248, baseType: !29, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3523, file: !677, line: 249, baseType: !29, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3523, file: !677, line: 250, baseType: !29, size: 64, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3523, file: !677, line: 251, baseType: !29, size: 64, offset: 320)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3523, file: !677, line: 252, baseType: !29, size: 64, offset: 384)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3523, file: !677, line: 253, baseType: !29, size: 64, offset: 448)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3523, file: !677, line: 254, baseType: !29, size: 64, offset: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3523, file: !677, line: 256, baseType: !29, size: 64, offset: 576)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3523, file: !677, line: 257, baseType: !29, size: 64, offset: 640)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3523, file: !677, line: 258, baseType: !29, size: 64, offset: 704)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3523, file: !677, line: 260, baseType: !3538, size: 64, offset: 768)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !677, line: 156, size: 192, elements: !3540)
!3540 = !{!3541, !3542, !3544}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3539, file: !677, line: 157, baseType: !3538, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3539, file: !677, line: 158, baseType: !3543, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3539, file: !677, line: 162, baseType: !63, size: 32, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3523, file: !677, line: 262, baseType: !3543, size: 64, offset: 832)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3523, file: !677, line: 264, baseType: !63, size: 32, offset: 896)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3523, file: !677, line: 268, baseType: !63, size: 32, offset: 928)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3523, file: !677, line: 270, baseType: !703, size: 64, offset: 960)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3523, file: !677, line: 274, baseType: !153, size: 16, offset: 1024)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3523, file: !677, line: 275, baseType: !94, size: 8, offset: 1040)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3523, file: !677, line: 276, baseType: !709, size: 8, offset: 1048)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3523, file: !677, line: 280, baseType: !713, size: 64, offset: 1088)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3523, file: !677, line: 289, baseType: !716, size: 64, offset: 1152)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3523, file: !677, line: 297, baseType: !31, size: 64, offset: 1216)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3523, file: !677, line: 298, baseType: !31, size: 64, offset: 1280)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3523, file: !677, line: 299, baseType: !31, size: 64, offset: 1344)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3523, file: !677, line: 300, baseType: !31, size: 64, offset: 1408)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3523, file: !677, line: 302, baseType: !82, size: 64, offset: 1472)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3523, file: !677, line: 303, baseType: !63, size: 32, offset: 1536)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3523, file: !677, line: 305, baseType: !724, size: 160, offset: 1568)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!3562 = !{!3563, !3564, !3565, !3566, !3567, !3568}
!3563 = !DILocalVariable(name: "stream", arg: 1, scope: !3518, file: !559, line: 62, type: !3521)
!3564 = !DILocalVariable(name: "command_name", arg: 2, scope: !3518, file: !559, line: 63, type: !40)
!3565 = !DILocalVariable(name: "package", arg: 3, scope: !3518, file: !559, line: 63, type: !40)
!3566 = !DILocalVariable(name: "version", arg: 4, scope: !3518, file: !559, line: 64, type: !40)
!3567 = !DILocalVariable(name: "authors", arg: 5, scope: !3518, file: !559, line: 65, type: !3561)
!3568 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3518, file: !559, line: 65, type: !82)
!3569 = !DILocation(line: 62, column: 24, scope: !3518)
!3570 = !DILocation(line: 63, column: 30, scope: !3518)
!3571 = !DILocation(line: 63, column: 56, scope: !3518)
!3572 = !DILocation(line: 64, column: 30, scope: !3518)
!3573 = !DILocation(line: 65, column: 39, scope: !3518)
!3574 = !DILocation(line: 65, column: 55, scope: !3518)
!3575 = !DILocation(line: 67, column: 7, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3518, file: !559, line: 67, column: 7)
!3577 = !DILocation(line: 67, column: 7, scope: !3518)
!3578 = !DILocation(line: 68, column: 5, scope: !3576)
!3579 = !DILocation(line: 70, column: 5, scope: !3576)
!3580 = !DILocation(line: 84, column: 3, scope: !3518)
!3581 = !DILocation(line: 86, column: 3, scope: !3518)
!3582 = !DILocation(line: 95, column: 3, scope: !3518)
!3583 = !DILocation(line: 99, column: 7, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3518, file: !559, line: 96, column: 5)
!3585 = !DILocation(line: 102, column: 7, scope: !3584)
!3586 = !DILocation(line: 103, column: 7, scope: !3584)
!3587 = !DILocation(line: 106, column: 7, scope: !3584)
!3588 = !DILocation(line: 107, column: 7, scope: !3584)
!3589 = !DILocation(line: 110, column: 7, scope: !3584)
!3590 = !DILocation(line: 112, column: 7, scope: !3584)
!3591 = !DILocation(line: 117, column: 7, scope: !3584)
!3592 = !DILocation(line: 119, column: 7, scope: !3584)
!3593 = !DILocation(line: 124, column: 7, scope: !3584)
!3594 = !DILocation(line: 126, column: 7, scope: !3584)
!3595 = !DILocation(line: 131, column: 7, scope: !3584)
!3596 = !DILocation(line: 134, column: 7, scope: !3584)
!3597 = !DILocation(line: 139, column: 7, scope: !3584)
!3598 = !DILocation(line: 142, column: 7, scope: !3584)
!3599 = !DILocation(line: 147, column: 7, scope: !3584)
!3600 = !DILocation(line: 151, column: 7, scope: !3584)
!3601 = !DILocation(line: 156, column: 7, scope: !3584)
!3602 = !DILocation(line: 160, column: 7, scope: !3584)
!3603 = !DILocation(line: 167, column: 7, scope: !3584)
!3604 = !DILocation(line: 171, column: 7, scope: !3584)
!3605 = !DILocation(line: 173, column: 1, scope: !3518)
!3606 = distinct !DISubprogram(name: "version_etc_ar", scope: !559, file: !559, line: 180, type: !3607, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{null, !3521, !40, !40, !40, !3561}
!3609 = !{!3610, !3611, !3612, !3613, !3614, !3615}
!3610 = !DILocalVariable(name: "stream", arg: 1, scope: !3606, file: !559, line: 180, type: !3521)
!3611 = !DILocalVariable(name: "command_name", arg: 2, scope: !3606, file: !559, line: 181, type: !40)
!3612 = !DILocalVariable(name: "package", arg: 3, scope: !3606, file: !559, line: 181, type: !40)
!3613 = !DILocalVariable(name: "version", arg: 4, scope: !3606, file: !559, line: 182, type: !40)
!3614 = !DILocalVariable(name: "authors", arg: 5, scope: !3606, file: !559, line: 182, type: !3561)
!3615 = !DILocalVariable(name: "n_authors", scope: !3606, file: !559, line: 184, type: !82)
!3616 = !DILocation(line: 180, column: 23, scope: !3606)
!3617 = !DILocation(line: 181, column: 29, scope: !3606)
!3618 = !DILocation(line: 181, column: 55, scope: !3606)
!3619 = !DILocation(line: 182, column: 29, scope: !3606)
!3620 = !DILocation(line: 182, column: 59, scope: !3606)
!3621 = !DILocation(line: 184, column: 10, scope: !3606)
!3622 = !DILocation(line: 186, column: 8, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3606, file: !559, line: 186, column: 3)
!3624 = !DILocation(line: 186, column: 23, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3623, file: !559, line: 186, column: 3)
!3626 = !DILocation(line: 186, column: 3, scope: !3623)
!3627 = !DILocation(line: 186, column: 52, scope: !3625)
!3628 = distinct !{!3628, !3626, !3629}
!3629 = !DILocation(line: 187, column: 5, scope: !3623)
!3630 = !DILocation(line: 188, column: 3, scope: !3606)
!3631 = !DILocation(line: 189, column: 1, scope: !3606)
!3632 = distinct !DISubprogram(name: "version_etc_va", scope: !559, file: !559, line: 196, type: !3633, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3642)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{null, !3521, !40, !40, !40, !3635}
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !556, line: 189, size: 192, elements: !3637)
!3637 = !{!3638, !3639, !3640, !3641}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3636, file: !556, line: 189, baseType: !170, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3636, file: !556, line: 189, baseType: !170, size: 32, offset: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3636, file: !556, line: 189, baseType: !31, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3636, file: !556, line: 189, baseType: !31, size: 64, offset: 128)
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648, !3649}
!3643 = !DILocalVariable(name: "stream", arg: 1, scope: !3632, file: !559, line: 196, type: !3521)
!3644 = !DILocalVariable(name: "command_name", arg: 2, scope: !3632, file: !559, line: 197, type: !40)
!3645 = !DILocalVariable(name: "package", arg: 3, scope: !3632, file: !559, line: 197, type: !40)
!3646 = !DILocalVariable(name: "version", arg: 4, scope: !3632, file: !559, line: 198, type: !40)
!3647 = !DILocalVariable(name: "authors", arg: 5, scope: !3632, file: !559, line: 198, type: !3635)
!3648 = !DILocalVariable(name: "n_authors", scope: !3632, file: !559, line: 200, type: !82)
!3649 = !DILocalVariable(name: "authtab", scope: !3632, file: !559, line: 201, type: !3650)
!3650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 640, elements: !160)
!3651 = !DILocation(line: 196, column: 23, scope: !3632)
!3652 = !DILocation(line: 197, column: 29, scope: !3632)
!3653 = !DILocation(line: 197, column: 55, scope: !3632)
!3654 = !DILocation(line: 198, column: 29, scope: !3632)
!3655 = !DILocation(line: 198, column: 46, scope: !3632)
!3656 = !DILocation(line: 201, column: 3, scope: !3632)
!3657 = !DILocation(line: 201, column: 15, scope: !3632)
!3658 = !DILocation(line: 200, column: 10, scope: !3632)
!3659 = !DILocation(line: 205, column: 35, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !559, line: 203, column: 3)
!3661 = distinct !DILexicalBlock(scope: !3632, file: !559, line: 203, column: 3)
!3662 = !DILocation(line: 205, column: 14, scope: !3660)
!3663 = !DILocation(line: 205, column: 33, scope: !3660)
!3664 = !DILocation(line: 205, column: 67, scope: !3660)
!3665 = !DILocation(line: 203, column: 3, scope: !3661)
!3666 = !DILocation(line: 208, column: 3, scope: !3632)
!3667 = !DILocation(line: 210, column: 1, scope: !3632)
!3668 = distinct !DISubprogram(name: "version_etc", scope: !559, file: !559, line: 227, type: !3669, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3671)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !3521, !40, !40, !40, null}
!3671 = !{!3672, !3673, !3674, !3675, !3676}
!3672 = !DILocalVariable(name: "stream", arg: 1, scope: !3668, file: !559, line: 227, type: !3521)
!3673 = !DILocalVariable(name: "command_name", arg: 2, scope: !3668, file: !559, line: 228, type: !40)
!3674 = !DILocalVariable(name: "package", arg: 3, scope: !3668, file: !559, line: 228, type: !40)
!3675 = !DILocalVariable(name: "version", arg: 4, scope: !3668, file: !559, line: 229, type: !40)
!3676 = !DILocalVariable(name: "authors", scope: !3668, file: !559, line: 231, type: !3677)
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1746, line: 46, baseType: !3678)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3679, line: 48, baseType: !3680)
!3679 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !556, line: 231, baseType: !3681)
!3681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3636, size: 192, elements: !710)
!3682 = !DILocation(line: 227, column: 20, scope: !3668)
!3683 = !DILocation(line: 228, column: 26, scope: !3668)
!3684 = !DILocation(line: 228, column: 52, scope: !3668)
!3685 = !DILocation(line: 229, column: 26, scope: !3668)
!3686 = !DILocation(line: 231, column: 3, scope: !3668)
!3687 = !DILocation(line: 231, column: 11, scope: !3668)
!3688 = !DILocation(line: 233, column: 3, scope: !3668)
!3689 = !DILocation(line: 234, column: 3, scope: !3668)
!3690 = !DILocation(line: 235, column: 3, scope: !3668)
!3691 = !DILocation(line: 236, column: 1, scope: !3668)
!3692 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !559, file: !559, line: 239, type: !638, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !73)
!3693 = !DILocation(line: 245, column: 3, scope: !3692)
!3694 = !DILocation(line: 251, column: 3, scope: !3692)
!3695 = !DILocation(line: 256, column: 3, scope: !3692)
!3696 = !DILocation(line: 258, column: 1, scope: !3692)
!3697 = distinct !DISubprogram(name: "xnmalloc", scope: !567, file: !567, line: 105, type: !3698, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!31, !82, !82}
!3700 = !{!3701, !3702}
!3701 = !DILocalVariable(name: "n", arg: 1, scope: !3697, file: !567, line: 105, type: !82)
!3702 = !DILocalVariable(name: "s", arg: 2, scope: !3697, file: !567, line: 105, type: !82)
!3703 = !DILocation(line: 105, column: 18, scope: !3697)
!3704 = !DILocation(line: 105, column: 28, scope: !3697)
!3705 = !DILocation(line: 107, column: 7, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3697, file: !567, line: 107, column: 7)
!3707 = !DILocation(line: 107, column: 7, scope: !3697)
!3708 = !DILocation(line: 108, column: 5, scope: !3706)
!3709 = !DILocation(line: 109, column: 21, scope: !3697)
!3710 = !DILocalVariable(name: "n", arg: 1, scope: !3711, file: !3712, line: 39, type: !82)
!3711 = distinct !DISubprogram(name: "xmalloc", scope: !3712, file: !3712, line: 39, type: !3713, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3715)
!3712 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!31, !82}
!3715 = !{!3710, !3716}
!3716 = !DILocalVariable(name: "p", scope: !3711, file: !3712, line: 41, type: !31)
!3717 = !DILocation(line: 39, column: 17, scope: !3711, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 109, column: 10, scope: !3697)
!3719 = !DILocation(line: 41, column: 13, scope: !3711, inlinedAt: !3718)
!3720 = !DILocation(line: 41, column: 9, scope: !3711, inlinedAt: !3718)
!3721 = !DILocation(line: 42, column: 8, scope: !3722, inlinedAt: !3718)
!3722 = distinct !DILexicalBlock(scope: !3711, file: !3712, line: 42, column: 7)
!3723 = !DILocation(line: 42, column: 15, scope: !3722, inlinedAt: !3718)
!3724 = !DILocation(line: 42, column: 10, scope: !3722, inlinedAt: !3718)
!3725 = !DILocation(line: 43, column: 5, scope: !3722, inlinedAt: !3718)
!3726 = !DILocation(line: 109, column: 3, scope: !3697)
!3727 = !DILocation(line: 39, column: 17, scope: !3711)
!3728 = !DILocation(line: 41, column: 13, scope: !3711)
!3729 = !DILocation(line: 41, column: 9, scope: !3711)
!3730 = !DILocation(line: 42, column: 8, scope: !3722)
!3731 = !DILocation(line: 42, column: 15, scope: !3722)
!3732 = !DILocation(line: 42, column: 10, scope: !3722)
!3733 = !DILocation(line: 43, column: 5, scope: !3722)
!3734 = !DILocation(line: 44, column: 3, scope: !3711)
!3735 = distinct !DISubprogram(name: "xnrealloc", scope: !567, file: !567, line: 118, type: !3736, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!31, !31, !82, !82}
!3738 = !{!3739, !3740, !3741}
!3739 = !DILocalVariable(name: "p", arg: 1, scope: !3735, file: !567, line: 118, type: !31)
!3740 = !DILocalVariable(name: "n", arg: 2, scope: !3735, file: !567, line: 118, type: !82)
!3741 = !DILocalVariable(name: "s", arg: 3, scope: !3735, file: !567, line: 118, type: !82)
!3742 = !DILocation(line: 118, column: 18, scope: !3735)
!3743 = !DILocation(line: 118, column: 28, scope: !3735)
!3744 = !DILocation(line: 118, column: 38, scope: !3735)
!3745 = !DILocation(line: 120, column: 7, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3735, file: !567, line: 120, column: 7)
!3747 = !DILocation(line: 120, column: 7, scope: !3735)
!3748 = !DILocation(line: 121, column: 5, scope: !3746)
!3749 = !DILocation(line: 122, column: 25, scope: !3735)
!3750 = !DILocalVariable(name: "p", arg: 1, scope: !3751, file: !3712, line: 51, type: !31)
!3751 = distinct !DISubprogram(name: "xrealloc", scope: !3712, file: !3712, line: 51, type: !3752, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3754)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!31, !31, !82}
!3754 = !{!3750, !3755}
!3755 = !DILocalVariable(name: "n", arg: 2, scope: !3751, file: !3712, line: 51, type: !82)
!3756 = !DILocation(line: 51, column: 17, scope: !3751, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 122, column: 10, scope: !3735)
!3758 = !DILocation(line: 51, column: 27, scope: !3751, inlinedAt: !3757)
!3759 = !DILocation(line: 53, column: 8, scope: !3760, inlinedAt: !3757)
!3760 = distinct !DILexicalBlock(scope: !3751, file: !3712, line: 53, column: 7)
!3761 = !DILocation(line: 53, column: 13, scope: !3760, inlinedAt: !3757)
!3762 = !DILocation(line: 53, column: 10, scope: !3760, inlinedAt: !3757)
!3763 = !DILocation(line: 57, column: 7, scope: !3764, inlinedAt: !3757)
!3764 = distinct !DILexicalBlock(scope: !3760, file: !3712, line: 54, column: 5)
!3765 = !DILocation(line: 58, column: 7, scope: !3764, inlinedAt: !3757)
!3766 = !DILocation(line: 61, column: 7, scope: !3751, inlinedAt: !3757)
!3767 = !DILocation(line: 62, column: 8, scope: !3768, inlinedAt: !3757)
!3768 = distinct !DILexicalBlock(scope: !3751, file: !3712, line: 62, column: 7)
!3769 = !DILocation(line: 62, column: 13, scope: !3768, inlinedAt: !3757)
!3770 = !DILocation(line: 62, column: 10, scope: !3768, inlinedAt: !3757)
!3771 = !DILocation(line: 63, column: 5, scope: !3768, inlinedAt: !3757)
!3772 = !DILocation(line: 122, column: 3, scope: !3735)
!3773 = !DILocation(line: 51, column: 17, scope: !3751)
!3774 = !DILocation(line: 51, column: 27, scope: !3751)
!3775 = !DILocation(line: 53, column: 8, scope: !3760)
!3776 = !DILocation(line: 53, column: 13, scope: !3760)
!3777 = !DILocation(line: 53, column: 10, scope: !3760)
!3778 = !DILocation(line: 57, column: 7, scope: !3764)
!3779 = !DILocation(line: 58, column: 7, scope: !3764)
!3780 = !DILocation(line: 61, column: 7, scope: !3751)
!3781 = !DILocation(line: 62, column: 8, scope: !3768)
!3782 = !DILocation(line: 62, column: 13, scope: !3768)
!3783 = !DILocation(line: 62, column: 10, scope: !3768)
!3784 = !DILocation(line: 63, column: 5, scope: !3768)
!3785 = !DILocation(line: 65, column: 1, scope: !3751)
!3786 = !DILocation(line: 180, column: 19, scope: !568)
!3787 = !DILocation(line: 180, column: 30, scope: !568)
!3788 = !DILocation(line: 180, column: 41, scope: !568)
!3789 = !DILocation(line: 182, column: 14, scope: !568)
!3790 = !DILocation(line: 182, column: 10, scope: !568)
!3791 = !DILocation(line: 184, column: 9, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !568, file: !567, line: 184, column: 7)
!3793 = !DILocation(line: 184, column: 7, scope: !568)
!3794 = !DILocation(line: 186, column: 13, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !567, line: 186, column: 11)
!3796 = distinct !DILexicalBlock(scope: !3792, file: !567, line: 185, column: 5)
!3797 = !DILocation(line: 186, column: 11, scope: !3796)
!3798 = !DILocation(line: 194, column: 30, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3795, file: !567, line: 187, column: 9)
!3800 = !DILocation(line: 195, column: 16, scope: !3799)
!3801 = !DILocation(line: 195, column: 13, scope: !3799)
!3802 = !DILocation(line: 196, column: 9, scope: !3799)
!3803 = !DILocation(line: 204, column: 69, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !567, line: 204, column: 11)
!3805 = distinct !DILexicalBlock(scope: !3792, file: !567, line: 199, column: 5)
!3806 = !DILocation(line: 205, column: 11, scope: !3804)
!3807 = !DILocation(line: 204, column: 11, scope: !3805)
!3808 = !DILocation(line: 206, column: 9, scope: !3804)
!3809 = !DILocation(line: 210, column: 7, scope: !568)
!3810 = !DILocation(line: 211, column: 25, scope: !568)
!3811 = !DILocation(line: 51, column: 17, scope: !3751, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 211, column: 10, scope: !568)
!3813 = !DILocation(line: 51, column: 27, scope: !3751, inlinedAt: !3812)
!3814 = !DILocation(line: 53, column: 10, scope: !3760, inlinedAt: !3812)
!3815 = !DILocation(line: 207, column: 14, scope: !3805)
!3816 = !DILocation(line: 207, column: 18, scope: !3805)
!3817 = !DILocation(line: 207, column: 9, scope: !3805)
!3818 = !DILocation(line: 53, column: 8, scope: !3760, inlinedAt: !3812)
!3819 = !DILocation(line: 57, column: 7, scope: !3764, inlinedAt: !3812)
!3820 = !DILocation(line: 58, column: 7, scope: !3764, inlinedAt: !3812)
!3821 = !DILocation(line: 61, column: 7, scope: !3751, inlinedAt: !3812)
!3822 = !DILocation(line: 62, column: 8, scope: !3768, inlinedAt: !3812)
!3823 = !DILocation(line: 62, column: 13, scope: !3768, inlinedAt: !3812)
!3824 = !DILocation(line: 62, column: 10, scope: !3768, inlinedAt: !3812)
!3825 = !DILocation(line: 63, column: 5, scope: !3768, inlinedAt: !3812)
!3826 = !DILocation(line: 211, column: 3, scope: !568)
!3827 = distinct !DISubprogram(name: "xcharalloc", scope: !567, file: !567, line: 220, type: !2797, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3828)
!3828 = !{!3829}
!3829 = !DILocalVariable(name: "n", arg: 1, scope: !3827, file: !567, line: 220, type: !82)
!3830 = !DILocation(line: 220, column: 20, scope: !3827)
!3831 = !DILocation(line: 39, column: 17, scope: !3711, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 222, column: 10, scope: !3827)
!3833 = !DILocation(line: 41, column: 13, scope: !3711, inlinedAt: !3832)
!3834 = !DILocation(line: 41, column: 9, scope: !3711, inlinedAt: !3832)
!3835 = !DILocation(line: 42, column: 8, scope: !3722, inlinedAt: !3832)
!3836 = !DILocation(line: 42, column: 15, scope: !3722, inlinedAt: !3832)
!3837 = !DILocation(line: 42, column: 10, scope: !3722, inlinedAt: !3832)
!3838 = !DILocation(line: 43, column: 5, scope: !3722, inlinedAt: !3832)
!3839 = !DILocation(line: 222, column: 3, scope: !3827)
!3840 = distinct !DISubprogram(name: "x2realloc", scope: !3712, file: !3712, line: 74, type: !3841, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!31, !31, !571}
!3843 = !{!3844, !3845}
!3844 = !DILocalVariable(name: "p", arg: 1, scope: !3840, file: !3712, line: 74, type: !31)
!3845 = !DILocalVariable(name: "pn", arg: 2, scope: !3840, file: !3712, line: 74, type: !571)
!3846 = !DILocation(line: 74, column: 18, scope: !3840)
!3847 = !DILocation(line: 74, column: 29, scope: !3840)
!3848 = !DILocation(line: 180, column: 19, scope: !568, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 76, column: 10, scope: !3840)
!3850 = !DILocation(line: 180, column: 30, scope: !568, inlinedAt: !3849)
!3851 = !DILocation(line: 180, column: 41, scope: !568, inlinedAt: !3849)
!3852 = !DILocation(line: 182, column: 14, scope: !568, inlinedAt: !3849)
!3853 = !DILocation(line: 182, column: 10, scope: !568, inlinedAt: !3849)
!3854 = !DILocation(line: 184, column: 9, scope: !3792, inlinedAt: !3849)
!3855 = !DILocation(line: 184, column: 7, scope: !568, inlinedAt: !3849)
!3856 = !DILocation(line: 186, column: 13, scope: !3795, inlinedAt: !3849)
!3857 = !DILocation(line: 186, column: 11, scope: !3796, inlinedAt: !3849)
!3858 = !DILocation(line: 210, column: 7, scope: !568, inlinedAt: !3849)
!3859 = !DILocation(line: 51, column: 17, scope: !3751, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 211, column: 10, scope: !568, inlinedAt: !3849)
!3861 = !DILocation(line: 51, column: 27, scope: !3751, inlinedAt: !3860)
!3862 = !DILocation(line: 53, column: 10, scope: !3760, inlinedAt: !3860)
!3863 = !DILocation(line: 205, column: 11, scope: !3804, inlinedAt: !3849)
!3864 = !DILocation(line: 204, column: 11, scope: !3805, inlinedAt: !3849)
!3865 = !DILocation(line: 206, column: 9, scope: !3804, inlinedAt: !3849)
!3866 = !DILocation(line: 207, column: 14, scope: !3805, inlinedAt: !3849)
!3867 = !DILocation(line: 207, column: 18, scope: !3805, inlinedAt: !3849)
!3868 = !DILocation(line: 207, column: 9, scope: !3805, inlinedAt: !3849)
!3869 = !DILocation(line: 53, column: 8, scope: !3760, inlinedAt: !3860)
!3870 = !DILocation(line: 57, column: 7, scope: !3764, inlinedAt: !3860)
!3871 = !DILocation(line: 58, column: 7, scope: !3764, inlinedAt: !3860)
!3872 = !DILocation(line: 61, column: 7, scope: !3751, inlinedAt: !3860)
!3873 = !DILocation(line: 62, column: 8, scope: !3768, inlinedAt: !3860)
!3874 = !DILocation(line: 62, column: 13, scope: !3768, inlinedAt: !3860)
!3875 = !DILocation(line: 62, column: 10, scope: !3768, inlinedAt: !3860)
!3876 = !DILocation(line: 63, column: 5, scope: !3768, inlinedAt: !3860)
!3877 = !DILocation(line: 76, column: 3, scope: !3840)
!3878 = distinct !DISubprogram(name: "xzalloc", scope: !3712, file: !3712, line: 84, type: !3713, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3879)
!3879 = !{!3880}
!3880 = !DILocalVariable(name: "s", arg: 1, scope: !3878, file: !3712, line: 84, type: !82)
!3881 = !DILocation(line: 84, column: 17, scope: !3878)
!3882 = !DILocation(line: 39, column: 17, scope: !3711, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 86, column: 18, scope: !3878)
!3884 = !DILocation(line: 41, column: 13, scope: !3711, inlinedAt: !3883)
!3885 = !DILocation(line: 41, column: 9, scope: !3711, inlinedAt: !3883)
!3886 = !DILocation(line: 42, column: 8, scope: !3722, inlinedAt: !3883)
!3887 = !DILocation(line: 42, column: 15, scope: !3722, inlinedAt: !3883)
!3888 = !DILocation(line: 42, column: 10, scope: !3722, inlinedAt: !3883)
!3889 = !DILocation(line: 43, column: 5, scope: !3722, inlinedAt: !3883)
!3890 = !DILocation(line: 86, column: 10, scope: !3878)
!3891 = !DILocation(line: 86, column: 3, scope: !3878)
!3892 = distinct !DISubprogram(name: "xcalloc", scope: !3712, file: !3712, line: 93, type: !3698, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3893)
!3893 = !{!3894, !3895, !3896}
!3894 = !DILocalVariable(name: "n", arg: 1, scope: !3892, file: !3712, line: 93, type: !82)
!3895 = !DILocalVariable(name: "s", arg: 2, scope: !3892, file: !3712, line: 93, type: !82)
!3896 = !DILocalVariable(name: "p", scope: !3892, file: !3712, line: 95, type: !31)
!3897 = !DILocation(line: 93, column: 17, scope: !3892)
!3898 = !DILocation(line: 93, column: 27, scope: !3892)
!3899 = !DILocation(line: 100, column: 7, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3892, file: !3712, line: 100, column: 7)
!3901 = !DILocation(line: 101, column: 7, scope: !3900)
!3902 = !DILocation(line: 101, column: 18, scope: !3900)
!3903 = !DILocation(line: 95, column: 9, scope: !3892)
!3904 = !DILocation(line: 101, column: 16, scope: !3900)
!3905 = !DILocation(line: 100, column: 7, scope: !3892)
!3906 = !DILocation(line: 102, column: 5, scope: !3900)
!3907 = !DILocation(line: 103, column: 3, scope: !3892)
!3908 = distinct !DISubprogram(name: "xmemdup", scope: !3712, file: !3712, line: 111, type: !3909, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3913)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!31, !3911, !82}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3913 = !{!3914, !3915}
!3914 = !DILocalVariable(name: "p", arg: 1, scope: !3908, file: !3712, line: 111, type: !3911)
!3915 = !DILocalVariable(name: "s", arg: 2, scope: !3908, file: !3712, line: 111, type: !82)
!3916 = !DILocation(line: 111, column: 22, scope: !3908)
!3917 = !DILocation(line: 111, column: 32, scope: !3908)
!3918 = !DILocation(line: 39, column: 17, scope: !3711, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 113, column: 18, scope: !3908)
!3920 = !DILocation(line: 41, column: 13, scope: !3711, inlinedAt: !3919)
!3921 = !DILocation(line: 41, column: 9, scope: !3711, inlinedAt: !3919)
!3922 = !DILocation(line: 42, column: 8, scope: !3722, inlinedAt: !3919)
!3923 = !DILocation(line: 42, column: 15, scope: !3722, inlinedAt: !3919)
!3924 = !DILocation(line: 42, column: 10, scope: !3722, inlinedAt: !3919)
!3925 = !DILocation(line: 43, column: 5, scope: !3722, inlinedAt: !3919)
!3926 = !DILocation(line: 113, column: 10, scope: !3908)
!3927 = !DILocation(line: 113, column: 3, scope: !3908)
!3928 = distinct !DISubprogram(name: "xstrdup", scope: !3712, file: !3712, line: 119, type: !2997, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3929)
!3929 = !{!3930}
!3930 = !DILocalVariable(name: "string", arg: 1, scope: !3928, file: !3712, line: 119, type: !40)
!3931 = !DILocation(line: 119, column: 22, scope: !3928)
!3932 = !DILocation(line: 121, column: 27, scope: !3928)
!3933 = !DILocation(line: 121, column: 43, scope: !3928)
!3934 = !DILocation(line: 111, column: 22, scope: !3908, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 121, column: 10, scope: !3928)
!3936 = !DILocation(line: 111, column: 32, scope: !3908, inlinedAt: !3935)
!3937 = !DILocation(line: 39, column: 17, scope: !3711, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 113, column: 18, scope: !3908, inlinedAt: !3935)
!3939 = !DILocation(line: 41, column: 13, scope: !3711, inlinedAt: !3938)
!3940 = !DILocation(line: 41, column: 9, scope: !3711, inlinedAt: !3938)
!3941 = !DILocation(line: 42, column: 8, scope: !3722, inlinedAt: !3938)
!3942 = !DILocation(line: 42, column: 15, scope: !3722, inlinedAt: !3938)
!3943 = !DILocation(line: 42, column: 10, scope: !3722, inlinedAt: !3938)
!3944 = !DILocation(line: 43, column: 5, scope: !3722, inlinedAt: !3938)
!3945 = !DILocation(line: 113, column: 10, scope: !3908, inlinedAt: !3935)
!3946 = !DILocation(line: 121, column: 3, scope: !3928)
!3947 = distinct !DISubprogram(name: "xalloc_die", scope: !3948, file: !3948, line: 32, type: !638, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !580, variables: !73)
!3948 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3949 = !DILocation(line: 34, column: 10, scope: !3947)
!3950 = !DILocation(line: 34, column: 33, scope: !3947)
!3951 = !DILocation(line: 34, column: 3, scope: !3947)
!3952 = !DILocation(line: 40, column: 3, scope: !3947)
!3953 = distinct !DISubprogram(name: "xnumtoumax", scope: !3954, file: !3954, line: 36, type: !3955, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !3957)
!3954 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!731, !40, !63, !731, !731, !40, !40, !63}
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3967}
!3958 = !DILocalVariable(name: "n_str", arg: 1, scope: !3953, file: !3954, line: 36, type: !40)
!3959 = !DILocalVariable(name: "base", arg: 2, scope: !3953, file: !3954, line: 36, type: !63)
!3960 = !DILocalVariable(name: "min", arg: 3, scope: !3953, file: !3954, line: 36, type: !731)
!3961 = !DILocalVariable(name: "max", arg: 4, scope: !3953, file: !3954, line: 36, type: !731)
!3962 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3953, file: !3954, line: 37, type: !40)
!3963 = !DILocalVariable(name: "err", arg: 6, scope: !3953, file: !3954, line: 37, type: !40)
!3964 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3953, file: !3954, line: 37, type: !63)
!3965 = !DILocalVariable(name: "s_err", scope: !3953, file: !3954, line: 39, type: !3966)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !586, line: 39, baseType: !585)
!3967 = !DILocalVariable(name: "tnum", scope: !3953, file: !3954, line: 41, type: !731)
!3968 = !DILocation(line: 36, column: 26, scope: !3953)
!3969 = !DILocation(line: 36, column: 37, scope: !3953)
!3970 = !DILocation(line: 36, column: 57, scope: !3953)
!3971 = !DILocation(line: 36, column: 76, scope: !3953)
!3972 = !DILocation(line: 37, column: 26, scope: !3953)
!3973 = !DILocation(line: 37, column: 48, scope: !3953)
!3974 = !DILocation(line: 37, column: 57, scope: !3953)
!3975 = !DILocation(line: 41, column: 3, scope: !3953)
!3976 = !DILocation(line: 41, column: 17, scope: !3953)
!3977 = !DILocation(line: 42, column: 11, scope: !3953)
!3978 = !DILocation(line: 39, column: 16, scope: !3953)
!3979 = !DILocation(line: 44, column: 7, scope: !3953)
!3980 = !DILocation(line: 69, column: 50, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3982, file: !3954, line: 67, column: 5)
!3982 = distinct !DILexicalBlock(scope: !3953, file: !3954, line: 66, column: 7)
!3983 = !DILocation(line: 46, column: 11, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3985, file: !3954, line: 46, column: 11)
!3985 = distinct !DILexicalBlock(scope: !3986, file: !3954, line: 45, column: 5)
!3986 = distinct !DILexicalBlock(scope: !3953, file: !3954, line: 44, column: 7)
!3987 = !DILocation(line: 46, column: 16, scope: !3984)
!3988 = !DILocation(line: 46, column: 29, scope: !3984)
!3989 = !DILocation(line: 46, column: 22, scope: !3984)
!3990 = !DILocation(line: 51, column: 20, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !3954, line: 51, column: 15)
!3992 = distinct !DILexicalBlock(scope: !3984, file: !3954, line: 47, column: 9)
!3993 = !DILocation(line: 52, column: 13, scope: !3991)
!3994 = !DILocation(line: 51, column: 15, scope: !3992)
!3995 = !DILocation(line: 59, column: 9, scope: !3992)
!3996 = !DILocation(line: 62, column: 5, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3986, file: !3954, line: 61, column: 12)
!3998 = !DILocation(line: 62, column: 11, scope: !3997)
!3999 = !DILocation(line: 64, column: 5, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3997, file: !3954, line: 63, column: 12)
!4001 = !DILocation(line: 64, column: 11, scope: !4000)
!4002 = !DILocation(line: 69, column: 14, scope: !3981)
!4003 = !DILocation(line: 69, column: 56, scope: !3981)
!4004 = !DILocation(line: 70, column: 29, scope: !3981)
!4005 = !DILocation(line: 69, column: 7, scope: !3981)
!4006 = !DILocation(line: 73, column: 10, scope: !3953)
!4007 = !DILocation(line: 71, column: 5, scope: !3981)
!4008 = !DILocation(line: 74, column: 1, scope: !3953)
!4009 = !DILocation(line: 73, column: 3, scope: !3953)
!4010 = distinct !DISubprogram(name: "xdectoumax", scope: !3954, file: !3954, line: 82, type: !4011, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!731, !40, !731, !731, !40, !40, !63}
!4013 = !{!4014, !4015, !4016, !4017, !4018, !4019}
!4014 = !DILocalVariable(name: "n_str", arg: 1, scope: !4010, file: !3954, line: 82, type: !40)
!4015 = !DILocalVariable(name: "min", arg: 2, scope: !4010, file: !3954, line: 82, type: !731)
!4016 = !DILocalVariable(name: "max", arg: 3, scope: !4010, file: !3954, line: 82, type: !731)
!4017 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4010, file: !3954, line: 83, type: !40)
!4018 = !DILocalVariable(name: "err", arg: 5, scope: !4010, file: !3954, line: 83, type: !40)
!4019 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4010, file: !3954, line: 83, type: !63)
!4020 = !DILocation(line: 82, column: 26, scope: !4010)
!4021 = !DILocation(line: 82, column: 47, scope: !4010)
!4022 = !DILocation(line: 82, column: 66, scope: !4010)
!4023 = !DILocation(line: 83, column: 26, scope: !4010)
!4024 = !DILocation(line: 83, column: 48, scope: !4010)
!4025 = !DILocation(line: 83, column: 57, scope: !4010)
!4026 = !DILocation(line: 85, column: 10, scope: !4010)
!4027 = !DILocation(line: 85, column: 3, scope: !4010)
!4028 = distinct !DISubprogram(name: "xstrtoumax", scope: !4029, file: !4029, line: 88, type: !4030, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !4033)
!4029 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!3966, !40, !667, !63, !4032, !40}
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!4033 = !{!4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4046, !4047, !4050, !4051}
!4034 = !DILocalVariable(name: "s", arg: 1, scope: !4028, file: !4029, line: 88, type: !40)
!4035 = !DILocalVariable(name: "ptr", arg: 2, scope: !4028, file: !4029, line: 88, type: !667)
!4036 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4028, file: !4029, line: 88, type: !63)
!4037 = !DILocalVariable(name: "val", arg: 4, scope: !4028, file: !4029, line: 89, type: !4032)
!4038 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4028, file: !4029, line: 89, type: !40)
!4039 = !DILocalVariable(name: "t_ptr", scope: !4028, file: !4029, line: 91, type: !29)
!4040 = !DILocalVariable(name: "p", scope: !4028, file: !4029, line: 92, type: !667)
!4041 = !DILocalVariable(name: "tmp", scope: !4028, file: !4029, line: 93, type: !731)
!4042 = !DILocalVariable(name: "err", scope: !4028, file: !4029, line: 94, type: !3966)
!4043 = !DILocalVariable(name: "q", scope: !4044, file: !4029, line: 104, type: !40)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !4029, line: 103, column: 5)
!4045 = distinct !DILexicalBlock(scope: !4028, file: !4029, line: 102, column: 7)
!4046 = !DILocalVariable(name: "ch", scope: !4044, file: !4029, line: 105, type: !32)
!4047 = !DILocalVariable(name: "base", scope: !4048, file: !4029, line: 141, type: !63)
!4048 = distinct !DILexicalBlock(scope: !4049, file: !4029, line: 140, column: 5)
!4049 = distinct !DILexicalBlock(scope: !4028, file: !4029, line: 139, column: 7)
!4050 = !DILocalVariable(name: "suffixes", scope: !4048, file: !4029, line: 142, type: !63)
!4051 = !DILocalVariable(name: "overflow", scope: !4048, file: !4029, line: 143, type: !3966)
!4052 = !DILocation(line: 88, column: 24, scope: !4028)
!4053 = !DILocation(line: 88, column: 34, scope: !4028)
!4054 = !DILocation(line: 88, column: 43, scope: !4028)
!4055 = !DILocation(line: 89, column: 24, scope: !4028)
!4056 = !DILocation(line: 89, column: 41, scope: !4028)
!4057 = !DILocation(line: 91, column: 3, scope: !4028)
!4058 = !DILocation(line: 94, column: 16, scope: !4028)
!4059 = !DILocation(line: 96, column: 3, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4061, file: !4029, line: 96, column: 3)
!4061 = distinct !DILexicalBlock(scope: !4028, file: !4029, line: 96, column: 3)
!4062 = !DILocation(line: 98, column: 8, scope: !4028)
!4063 = !DILocation(line: 92, column: 10, scope: !4028)
!4064 = !DILocation(line: 100, column: 3, scope: !4028)
!4065 = !DILocation(line: 100, column: 9, scope: !4028)
!4066 = !DILocation(line: 104, column: 19, scope: !4044)
!4067 = !DILocation(line: 105, column: 21, scope: !4044)
!4068 = !DILocation(line: 106, column: 14, scope: !4044)
!4069 = !DILocation(line: 106, column: 7, scope: !4044)
!4070 = !DILocation(line: 107, column: 15, scope: !4044)
!4071 = distinct !{!4071, !4069, !4072}
!4072 = !DILocation(line: 107, column: 17, scope: !4044)
!4073 = !DILocation(line: 108, column: 14, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4044, file: !4029, line: 108, column: 11)
!4075 = !DILocalVariable(name: "nptr", arg: 1, scope: !4076, file: !4077, line: 336, type: !81)
!4076 = distinct !DISubprogram(name: "strtoumax", scope: !4077, file: !4077, line: 336, type: !4078, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !4081)
!4077 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!731, !81, !4080, !63}
!4080 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !667)
!4081 = !{!4075, !4082, !4083}
!4082 = !DILocalVariable(name: "endptr", arg: 2, scope: !4076, file: !4077, line: 336, type: !4080)
!4083 = !DILocalVariable(name: "base", arg: 3, scope: !4076, file: !4077, line: 336, type: !63)
!4084 = !DILocation(line: 336, column: 1, scope: !4076, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 112, column: 9, scope: !4028)
!4086 = !DILocation(line: 339, column: 10, scope: !4076, inlinedAt: !4085)
!4087 = !DILocation(line: 93, column: 14, scope: !4028)
!4088 = !DILocation(line: 114, column: 7, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4028, file: !4029, line: 114, column: 7)
!4090 = !DILocation(line: 114, column: 10, scope: !4089)
!4091 = !DILocation(line: 114, column: 7, scope: !4028)
!4092 = !DILocation(line: 118, column: 11, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !4029, line: 118, column: 11)
!4094 = distinct !DILexicalBlock(scope: !4089, file: !4029, line: 115, column: 5)
!4095 = !DILocation(line: 118, column: 26, scope: !4093)
!4096 = !DILocation(line: 118, column: 29, scope: !4093)
!4097 = !DILocation(line: 118, column: 33, scope: !4093)
!4098 = !DILocation(line: 118, column: 36, scope: !4093)
!4099 = !DILocation(line: 118, column: 11, scope: !4094)
!4100 = !DILocation(line: 123, column: 12, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4089, file: !4029, line: 123, column: 12)
!4102 = !DILocation(line: 123, column: 12, scope: !4089)
!4103 = !DILocation(line: 128, column: 5, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4101, file: !4029, line: 124, column: 5)
!4105 = !DILocation(line: 133, column: 8, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4028, file: !4029, line: 133, column: 7)
!4107 = !DILocation(line: 133, column: 7, scope: !4028)
!4108 = !DILocation(line: 135, column: 12, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4106, file: !4029, line: 134, column: 5)
!4110 = !DILocation(line: 136, column: 7, scope: !4109)
!4111 = !DILocation(line: 139, column: 7, scope: !4049)
!4112 = !DILocation(line: 139, column: 11, scope: !4049)
!4113 = !DILocation(line: 139, column: 7, scope: !4028)
!4114 = !DILocation(line: 141, column: 11, scope: !4048)
!4115 = !DILocation(line: 142, column: 11, scope: !4048)
!4116 = !DILocation(line: 145, column: 12, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4048, file: !4029, line: 145, column: 11)
!4118 = !DILocation(line: 145, column: 11, scope: !4048)
!4119 = !DILocation(line: 147, column: 16, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4117, file: !4029, line: 146, column: 9)
!4121 = !DILocation(line: 148, column: 22, scope: !4120)
!4122 = !DILocation(line: 148, column: 11, scope: !4120)
!4123 = !DILocation(line: 151, column: 7, scope: !4048)
!4124 = !DILocation(line: 163, column: 15, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !4029, line: 163, column: 15)
!4126 = distinct !DILexicalBlock(scope: !4048, file: !4029, line: 152, column: 9)
!4127 = !DILocation(line: 163, column: 15, scope: !4126)
!4128 = !DILocation(line: 164, column: 21, scope: !4125)
!4129 = !DILocation(line: 164, column: 13, scope: !4125)
!4130 = !DILocation(line: 167, column: 21, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4132, file: !4029, line: 167, column: 21)
!4132 = distinct !DILexicalBlock(scope: !4125, file: !4029, line: 165, column: 15)
!4133 = !DILocation(line: 167, column: 29, scope: !4131)
!4134 = !DILocation(line: 167, column: 21, scope: !4132)
!4135 = !DILocation(line: 175, column: 17, scope: !4132)
!4136 = !DILocation(line: 179, column: 7, scope: !4048)
!4137 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4138, file: !4029, line: 60, type: !63)
!4138 = distinct !DISubprogram(name: "bkm_scale", scope: !4029, file: !4029, line: 60, type: !4139, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !4141)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!3966, !4032, !63}
!4141 = !{!4142, !4137}
!4142 = !DILocalVariable(name: "x", arg: 1, scope: !4138, file: !4029, line: 60, type: !4032)
!4143 = !DILocation(line: 60, column: 31, scope: !4138, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 182, column: 22, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4048, file: !4029, line: 180, column: 9)
!4146 = !DILocation(line: 67, column: 39, scope: !4147, inlinedAt: !4144)
!4147 = distinct !DILexicalBlock(scope: !4138, file: !4029, line: 67, column: 7)
!4148 = !DILocation(line: 72, column: 6, scope: !4138, inlinedAt: !4144)
!4149 = !DILocation(line: 67, column: 7, scope: !4138, inlinedAt: !4144)
!4150 = !DILocation(line: 143, column: 20, scope: !4048)
!4151 = !DILocation(line: 183, column: 11, scope: !4145)
!4152 = !DILocation(line: 60, column: 31, scope: !4138, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 189, column: 22, scope: !4145)
!4154 = !DILocation(line: 67, column: 39, scope: !4147, inlinedAt: !4153)
!4155 = !DILocation(line: 72, column: 6, scope: !4138, inlinedAt: !4153)
!4156 = !DILocation(line: 67, column: 7, scope: !4138, inlinedAt: !4153)
!4157 = !DILocation(line: 190, column: 11, scope: !4145)
!4158 = !DILocalVariable(name: "power", arg: 3, scope: !4159, file: !4029, line: 77, type: !63)
!4159 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4029, file: !4029, line: 77, type: !4160, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !4162)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!3966, !4032, !63, !63}
!4162 = !{!4163, !4164, !4158, !4165}
!4163 = !DILocalVariable(name: "x", arg: 1, scope: !4159, file: !4029, line: 77, type: !4032)
!4164 = !DILocalVariable(name: "base", arg: 2, scope: !4159, file: !4029, line: 77, type: !63)
!4165 = !DILocalVariable(name: "err", scope: !4159, file: !4029, line: 79, type: !3966)
!4166 = !DILocation(line: 77, column: 50, scope: !4159, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 197, column: 22, scope: !4145)
!4168 = !DILocation(line: 79, column: 16, scope: !4159, inlinedAt: !4167)
!4169 = !DILocation(line: 67, column: 39, scope: !4147, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 81, column: 12, scope: !4159, inlinedAt: !4167)
!4171 = !DILocation(line: 72, column: 6, scope: !4138, inlinedAt: !4170)
!4172 = !DILocation(line: 67, column: 7, scope: !4138, inlinedAt: !4170)
!4173 = !DILocation(line: 81, column: 9, scope: !4159, inlinedAt: !4167)
!4174 = !DILocation(line: 241, column: 11, scope: !4048)
!4175 = !DILocation(line: 77, column: 50, scope: !4159, inlinedAt: !4176)
!4176 = distinct !DILocation(line: 202, column: 22, scope: !4145)
!4177 = !DILocation(line: 79, column: 16, scope: !4159, inlinedAt: !4176)
!4178 = !DILocation(line: 67, column: 39, scope: !4147, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 81, column: 12, scope: !4159, inlinedAt: !4176)
!4180 = !DILocation(line: 72, column: 6, scope: !4138, inlinedAt: !4179)
!4181 = !DILocation(line: 67, column: 7, scope: !4138, inlinedAt: !4179)
!4182 = !DILocation(line: 81, column: 9, scope: !4159, inlinedAt: !4176)
!4183 = !DILocation(line: 77, column: 50, scope: !4159, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 207, column: 22, scope: !4145)
!4185 = !DILocation(line: 79, column: 16, scope: !4159, inlinedAt: !4184)
!4186 = !DILocation(line: 67, column: 39, scope: !4147, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 81, column: 12, scope: !4159, inlinedAt: !4184)
!4188 = !DILocation(line: 72, column: 6, scope: !4138, inlinedAt: !4187)
!4189 = !DILocation(line: 67, column: 7, scope: !4138, inlinedAt: !4187)
!4190 = !DILocation(line: 77, column: 50, scope: !4159, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 212, column: 22, scope: !4145)
!4192 = !DILocation(line: 79, column: 16, scope: !4159, inlinedAt: !4191)
!4193 = !DILocation(line: 67, column: 39, scope: !4147, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 81, column: 12, scope: !4159, inlinedAt: !4191)
!4195 = !DILocation(line: 72, column: 6, scope: !4138, inlinedAt: !4194)
!4196 = !DILocation(line: 67, column: 7, scope: !4138, inlinedAt: !4194)
!4197 = !DILocation(line: 81, column: 9, scope: !4159, inlinedAt: !4191)
!4198 = !DILocation(line: 77, column: 50, scope: !4159, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 216, column: 22, scope: !4145)
!4200 = !DILocation(line: 79, column: 16, scope: !4159, inlinedAt: !4199)
!4201 = !DILocation(line: 67, column: 39, scope: !4147, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 81, column: 12, scope: !4159, inlinedAt: !4199)
!4203 = !DILocation(line: 72, column: 6, scope: !4138, inlinedAt: !4202)
!4204 = !DILocation(line: 67, column: 7, scope: !4138, inlinedAt: !4202)
!4205 = !DILocation(line: 81, column: 9, scope: !4159, inlinedAt: !4199)
!4206 = !DILocation(line: 77, column: 50, scope: !4159, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 221, column: 22, scope: !4145)
!4208 = !DILocation(line: 79, column: 16, scope: !4159, inlinedAt: !4207)
!4209 = !DILocation(line: 67, column: 39, scope: !4147, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 81, column: 12, scope: !4159, inlinedAt: !4207)
!4211 = !DILocation(line: 72, column: 6, scope: !4138, inlinedAt: !4210)
!4212 = !DILocation(line: 67, column: 7, scope: !4138, inlinedAt: !4210)
!4213 = !DILocation(line: 81, column: 9, scope: !4159, inlinedAt: !4207)
!4214 = !DILocation(line: 60, column: 31, scope: !4138, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 225, column: 22, scope: !4145)
!4216 = !DILocation(line: 67, column: 39, scope: !4147, inlinedAt: !4215)
!4217 = !DILocation(line: 72, column: 6, scope: !4138, inlinedAt: !4215)
!4218 = !DILocation(line: 67, column: 7, scope: !4138, inlinedAt: !4215)
!4219 = !DILocation(line: 226, column: 11, scope: !4145)
!4220 = !DILocation(line: 77, column: 50, scope: !4159, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 229, column: 22, scope: !4145)
!4222 = !DILocation(line: 79, column: 16, scope: !4159, inlinedAt: !4221)
!4223 = !DILocation(line: 67, column: 39, scope: !4147, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 81, column: 12, scope: !4159, inlinedAt: !4221)
!4225 = !DILocation(line: 72, column: 6, scope: !4138, inlinedAt: !4224)
!4226 = !DILocation(line: 67, column: 7, scope: !4138, inlinedAt: !4224)
!4227 = !DILocation(line: 81, column: 9, scope: !4159, inlinedAt: !4221)
!4228 = !DILocation(line: 77, column: 50, scope: !4159, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 233, column: 22, scope: !4145)
!4230 = !DILocation(line: 79, column: 16, scope: !4159, inlinedAt: !4229)
!4231 = !DILocation(line: 67, column: 39, scope: !4147, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 81, column: 12, scope: !4159, inlinedAt: !4229)
!4233 = !DILocation(line: 72, column: 6, scope: !4138, inlinedAt: !4232)
!4234 = !DILocation(line: 67, column: 7, scope: !4138, inlinedAt: !4232)
!4235 = !DILocation(line: 81, column: 9, scope: !4159, inlinedAt: !4229)
!4236 = !DILocation(line: 237, column: 16, scope: !4145)
!4237 = !DILocation(line: 238, column: 22, scope: !4145)
!4238 = !DILocation(line: 238, column: 11, scope: !4145)
!4239 = !DILocation(line: 242, column: 10, scope: !4048)
!4240 = !DILocation(line: 243, column: 11, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4048, file: !4029, line: 243, column: 11)
!4242 = !DILocation(line: 244, column: 13, scope: !4241)
!4243 = !DILocation(line: 243, column: 11, scope: !4048)
!4244 = !DILocation(line: 247, column: 8, scope: !4028)
!4245 = !DILocation(line: 248, column: 3, scope: !4028)
!4246 = !DILocation(line: 249, column: 1, scope: !4028)
!4247 = distinct !DISubprogram(name: "rpl_calloc", scope: !4248, file: !4248, line: 42, type: !3698, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4249)
!4248 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4249 = !{!4250, !4251, !4252, !4253}
!4250 = !DILocalVariable(name: "n", arg: 1, scope: !4247, file: !4248, line: 42, type: !82)
!4251 = !DILocalVariable(name: "s", arg: 2, scope: !4247, file: !4248, line: 42, type: !82)
!4252 = !DILocalVariable(name: "result", scope: !4247, file: !4248, line: 44, type: !31)
!4253 = !DILocalVariable(name: "bytes", scope: !4254, file: !4248, line: 56, type: !82)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !4248, line: 53, column: 5)
!4255 = distinct !DILexicalBlock(scope: !4247, file: !4248, line: 47, column: 7)
!4256 = !DILocation(line: 42, column: 20, scope: !4247)
!4257 = !DILocation(line: 42, column: 30, scope: !4247)
!4258 = !DILocation(line: 47, column: 9, scope: !4255)
!4259 = !DILocation(line: 47, column: 19, scope: !4255)
!4260 = !DILocation(line: 47, column: 14, scope: !4255)
!4261 = !DILocation(line: 56, column: 24, scope: !4254)
!4262 = !DILocation(line: 56, column: 14, scope: !4254)
!4263 = !DILocation(line: 57, column: 17, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4254, file: !4248, line: 57, column: 11)
!4265 = !DILocation(line: 57, column: 21, scope: !4264)
!4266 = !DILocation(line: 57, column: 11, scope: !4254)
!4267 = !DILocation(line: 59, column: 11, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4264, file: !4248, line: 58, column: 9)
!4269 = !DILocation(line: 59, column: 17, scope: !4268)
!4270 = !DILocation(line: 65, column: 12, scope: !4247)
!4271 = !DILocation(line: 44, column: 9, scope: !4247)
!4272 = !DILocation(line: 72, column: 3, scope: !4247)
!4273 = !DILocation(line: 73, column: 1, scope: !4247)
!4274 = distinct !DISubprogram(name: "rpl_fclose", scope: !4275, file: !4275, line: 56, type: !4276, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !4318)
!4275 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!63, !4278}
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !675, line: 7, baseType: !4280)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 241, size: 1728, elements: !4281)
!4281 = !{!4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4280, file: !677, line: 242, baseType: !63, size: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4280, file: !677, line: 247, baseType: !29, size: 64, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4280, file: !677, line: 248, baseType: !29, size: 64, offset: 128)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4280, file: !677, line: 249, baseType: !29, size: 64, offset: 192)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4280, file: !677, line: 250, baseType: !29, size: 64, offset: 256)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4280, file: !677, line: 251, baseType: !29, size: 64, offset: 320)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4280, file: !677, line: 252, baseType: !29, size: 64, offset: 384)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4280, file: !677, line: 253, baseType: !29, size: 64, offset: 448)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4280, file: !677, line: 254, baseType: !29, size: 64, offset: 512)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4280, file: !677, line: 256, baseType: !29, size: 64, offset: 576)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4280, file: !677, line: 257, baseType: !29, size: 64, offset: 640)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4280, file: !677, line: 258, baseType: !29, size: 64, offset: 704)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4280, file: !677, line: 260, baseType: !4295, size: 64, offset: 768)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !677, line: 156, size: 192, elements: !4297)
!4297 = !{!4298, !4299, !4301}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4296, file: !677, line: 157, baseType: !4295, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4296, file: !677, line: 158, baseType: !4300, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4296, file: !677, line: 162, baseType: !63, size: 32, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4280, file: !677, line: 262, baseType: !4300, size: 64, offset: 832)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4280, file: !677, line: 264, baseType: !63, size: 32, offset: 896)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4280, file: !677, line: 268, baseType: !63, size: 32, offset: 928)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4280, file: !677, line: 270, baseType: !703, size: 64, offset: 960)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4280, file: !677, line: 274, baseType: !153, size: 16, offset: 1024)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4280, file: !677, line: 275, baseType: !94, size: 8, offset: 1040)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4280, file: !677, line: 276, baseType: !709, size: 8, offset: 1048)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4280, file: !677, line: 280, baseType: !713, size: 64, offset: 1088)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4280, file: !677, line: 289, baseType: !716, size: 64, offset: 1152)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4280, file: !677, line: 297, baseType: !31, size: 64, offset: 1216)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4280, file: !677, line: 298, baseType: !31, size: 64, offset: 1280)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4280, file: !677, line: 299, baseType: !31, size: 64, offset: 1344)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4280, file: !677, line: 300, baseType: !31, size: 64, offset: 1408)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4280, file: !677, line: 302, baseType: !82, size: 64, offset: 1472)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4280, file: !677, line: 303, baseType: !63, size: 32, offset: 1536)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4280, file: !677, line: 305, baseType: !724, size: 160, offset: 1568)
!4318 = !{!4319, !4320, !4321, !4322}
!4319 = !DILocalVariable(name: "fp", arg: 1, scope: !4274, file: !4275, line: 56, type: !4278)
!4320 = !DILocalVariable(name: "saved_errno", scope: !4274, file: !4275, line: 58, type: !63)
!4321 = !DILocalVariable(name: "fd", scope: !4274, file: !4275, line: 59, type: !63)
!4322 = !DILocalVariable(name: "result", scope: !4274, file: !4275, line: 60, type: !63)
!4323 = !DILocation(line: 56, column: 19, scope: !4274)
!4324 = !DILocation(line: 58, column: 7, scope: !4274)
!4325 = !DILocation(line: 60, column: 7, scope: !4274)
!4326 = !DILocation(line: 63, column: 8, scope: !4274)
!4327 = !DILocation(line: 59, column: 7, scope: !4274)
!4328 = !DILocation(line: 64, column: 10, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4274, file: !4275, line: 64, column: 7)
!4330 = !DILocation(line: 64, column: 7, scope: !4274)
!4331 = !DILocation(line: 65, column: 12, scope: !4329)
!4332 = !DILocation(line: 65, column: 5, scope: !4329)
!4333 = !DILocation(line: 70, column: 9, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4274, file: !4275, line: 70, column: 7)
!4335 = !DILocation(line: 70, column: 23, scope: !4334)
!4336 = !DILocation(line: 70, column: 33, scope: !4334)
!4337 = !DILocation(line: 70, column: 26, scope: !4334)
!4338 = !DILocation(line: 70, column: 59, scope: !4334)
!4339 = !DILocation(line: 71, column: 7, scope: !4334)
!4340 = !DILocation(line: 71, column: 10, scope: !4334)
!4341 = !DILocation(line: 70, column: 7, scope: !4274)
!4342 = !DILocation(line: 98, column: 12, scope: !4274)
!4343 = !DILocation(line: 103, column: 7, scope: !4274)
!4344 = !DILocation(line: 72, column: 19, scope: !4334)
!4345 = !DILocation(line: 103, column: 19, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4274, file: !4275, line: 103, column: 7)
!4347 = !DILocation(line: 105, column: 13, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4346, file: !4275, line: 104, column: 5)
!4349 = !DILocation(line: 107, column: 5, scope: !4348)
!4350 = !DILocation(line: 110, column: 1, scope: !4274)
!4351 = distinct !DISubprogram(name: "rpl_fflush", scope: !4352, file: !4352, line: 127, type: !4353, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !4395)
!4352 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!63, !4355}
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !675, line: 7, baseType: !4357)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 241, size: 1728, elements: !4358)
!4358 = !{!4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4357, file: !677, line: 242, baseType: !63, size: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4357, file: !677, line: 247, baseType: !29, size: 64, offset: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4357, file: !677, line: 248, baseType: !29, size: 64, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4357, file: !677, line: 249, baseType: !29, size: 64, offset: 192)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4357, file: !677, line: 250, baseType: !29, size: 64, offset: 256)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4357, file: !677, line: 251, baseType: !29, size: 64, offset: 320)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4357, file: !677, line: 252, baseType: !29, size: 64, offset: 384)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4357, file: !677, line: 253, baseType: !29, size: 64, offset: 448)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4357, file: !677, line: 254, baseType: !29, size: 64, offset: 512)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4357, file: !677, line: 256, baseType: !29, size: 64, offset: 576)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4357, file: !677, line: 257, baseType: !29, size: 64, offset: 640)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4357, file: !677, line: 258, baseType: !29, size: 64, offset: 704)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4357, file: !677, line: 260, baseType: !4372, size: 64, offset: 768)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !677, line: 156, size: 192, elements: !4374)
!4374 = !{!4375, !4376, !4378}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4373, file: !677, line: 157, baseType: !4372, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4373, file: !677, line: 158, baseType: !4377, size: 64, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4373, file: !677, line: 162, baseType: !63, size: 32, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4357, file: !677, line: 262, baseType: !4377, size: 64, offset: 832)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4357, file: !677, line: 264, baseType: !63, size: 32, offset: 896)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4357, file: !677, line: 268, baseType: !63, size: 32, offset: 928)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4357, file: !677, line: 270, baseType: !703, size: 64, offset: 960)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4357, file: !677, line: 274, baseType: !153, size: 16, offset: 1024)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4357, file: !677, line: 275, baseType: !94, size: 8, offset: 1040)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4357, file: !677, line: 276, baseType: !709, size: 8, offset: 1048)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4357, file: !677, line: 280, baseType: !713, size: 64, offset: 1088)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4357, file: !677, line: 289, baseType: !716, size: 64, offset: 1152)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4357, file: !677, line: 297, baseType: !31, size: 64, offset: 1216)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4357, file: !677, line: 298, baseType: !31, size: 64, offset: 1280)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4357, file: !677, line: 299, baseType: !31, size: 64, offset: 1344)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4357, file: !677, line: 300, baseType: !31, size: 64, offset: 1408)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4357, file: !677, line: 302, baseType: !82, size: 64, offset: 1472)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4357, file: !677, line: 303, baseType: !63, size: 32, offset: 1536)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4357, file: !677, line: 305, baseType: !724, size: 160, offset: 1568)
!4395 = !{!4396}
!4396 = !DILocalVariable(name: "stream", arg: 1, scope: !4351, file: !4352, line: 127, type: !4355)
!4397 = !DILocation(line: 127, column: 19, scope: !4351)
!4398 = !DILocation(line: 148, column: 14, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4351, file: !4352, line: 148, column: 7)
!4400 = !DILocation(line: 148, column: 22, scope: !4399)
!4401 = !DILocation(line: 148, column: 27, scope: !4399)
!4402 = !DILocation(line: 148, column: 7, scope: !4351)
!4403 = !DILocation(line: 149, column: 12, scope: !4399)
!4404 = !DILocation(line: 149, column: 5, scope: !4399)
!4405 = !DILocalVariable(name: "fp", arg: 1, scope: !4406, file: !4352, line: 40, type: !4355)
!4406 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4352, file: !4352, line: 40, type: !4407, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !4409)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{null, !4355}
!4409 = !{!4405}
!4410 = !DILocation(line: 40, column: 48, scope: !4406, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 153, column: 3, scope: !4351)
!4412 = !DILocation(line: 42, column: 11, scope: !4413, inlinedAt: !4411)
!4413 = distinct !DILexicalBlock(scope: !4406, file: !4352, line: 42, column: 7)
!4414 = !DILocation(line: 42, column: 18, scope: !4413, inlinedAt: !4411)
!4415 = !DILocation(line: 42, column: 7, scope: !4406, inlinedAt: !4411)
!4416 = !DILocation(line: 44, column: 5, scope: !4413, inlinedAt: !4411)
!4417 = !DILocation(line: 155, column: 10, scope: !4351)
!4418 = !DILocation(line: 155, column: 3, scope: !4351)
!4419 = !DILocation(line: 229, column: 1, scope: !4351)
!4420 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4421, file: !4421, line: 28, type: !4422, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4464)
!4421 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!63, !4424, !1745, !63}
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !675, line: 7, baseType: !4426)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 241, size: 1728, elements: !4427)
!4427 = !{!4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4426, file: !677, line: 242, baseType: !63, size: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4426, file: !677, line: 247, baseType: !29, size: 64, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4426, file: !677, line: 248, baseType: !29, size: 64, offset: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4426, file: !677, line: 249, baseType: !29, size: 64, offset: 192)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4426, file: !677, line: 250, baseType: !29, size: 64, offset: 256)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4426, file: !677, line: 251, baseType: !29, size: 64, offset: 320)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4426, file: !677, line: 252, baseType: !29, size: 64, offset: 384)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4426, file: !677, line: 253, baseType: !29, size: 64, offset: 448)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4426, file: !677, line: 254, baseType: !29, size: 64, offset: 512)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4426, file: !677, line: 256, baseType: !29, size: 64, offset: 576)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4426, file: !677, line: 257, baseType: !29, size: 64, offset: 640)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4426, file: !677, line: 258, baseType: !29, size: 64, offset: 704)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4426, file: !677, line: 260, baseType: !4441, size: 64, offset: 768)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !677, line: 156, size: 192, elements: !4443)
!4443 = !{!4444, !4445, !4447}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4442, file: !677, line: 157, baseType: !4441, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4442, file: !677, line: 158, baseType: !4446, size: 64, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4442, file: !677, line: 162, baseType: !63, size: 32, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4426, file: !677, line: 262, baseType: !4446, size: 64, offset: 832)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4426, file: !677, line: 264, baseType: !63, size: 32, offset: 896)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4426, file: !677, line: 268, baseType: !63, size: 32, offset: 928)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4426, file: !677, line: 270, baseType: !703, size: 64, offset: 960)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4426, file: !677, line: 274, baseType: !153, size: 16, offset: 1024)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4426, file: !677, line: 275, baseType: !94, size: 8, offset: 1040)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4426, file: !677, line: 276, baseType: !709, size: 8, offset: 1048)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4426, file: !677, line: 280, baseType: !713, size: 64, offset: 1088)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4426, file: !677, line: 289, baseType: !716, size: 64, offset: 1152)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4426, file: !677, line: 297, baseType: !31, size: 64, offset: 1216)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4426, file: !677, line: 298, baseType: !31, size: 64, offset: 1280)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4426, file: !677, line: 299, baseType: !31, size: 64, offset: 1344)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4426, file: !677, line: 300, baseType: !31, size: 64, offset: 1408)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4426, file: !677, line: 302, baseType: !82, size: 64, offset: 1472)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4426, file: !677, line: 303, baseType: !63, size: 32, offset: 1536)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4426, file: !677, line: 305, baseType: !724, size: 160, offset: 1568)
!4464 = !{!4465, !4466, !4467, !4468}
!4465 = !DILocalVariable(name: "fp", arg: 1, scope: !4420, file: !4421, line: 28, type: !4424)
!4466 = !DILocalVariable(name: "offset", arg: 2, scope: !4420, file: !4421, line: 28, type: !1745)
!4467 = !DILocalVariable(name: "whence", arg: 3, scope: !4420, file: !4421, line: 28, type: !63)
!4468 = !DILocalVariable(name: "pos", scope: !4469, file: !4421, line: 116, type: !1745)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !4421, line: 112, column: 5)
!4470 = distinct !DILexicalBlock(scope: !4420, file: !4421, line: 51, column: 7)
!4471 = !DILocation(line: 28, column: 15, scope: !4420)
!4472 = !DILocation(line: 28, column: 25, scope: !4420)
!4473 = !DILocation(line: 28, column: 37, scope: !4420)
!4474 = !DILocation(line: 51, column: 11, scope: !4470)
!4475 = !{!913, !631, i64 16}
!4476 = !DILocation(line: 51, column: 31, scope: !4470)
!4477 = !{!913, !631, i64 8}
!4478 = !DILocation(line: 51, column: 24, scope: !4470)
!4479 = !DILocation(line: 52, column: 7, scope: !4470)
!4480 = !DILocation(line: 52, column: 14, scope: !4470)
!4481 = !DILocation(line: 52, column: 35, scope: !4470)
!4482 = !{!913, !631, i64 32}
!4483 = !DILocation(line: 52, column: 28, scope: !4470)
!4484 = !DILocation(line: 53, column: 7, scope: !4470)
!4485 = !DILocation(line: 53, column: 14, scope: !4470)
!4486 = !{!913, !631, i64 72}
!4487 = !DILocation(line: 53, column: 28, scope: !4470)
!4488 = !DILocation(line: 51, column: 7, scope: !4420)
!4489 = !DILocation(line: 116, column: 26, scope: !4469)
!4490 = !DILocation(line: 116, column: 19, scope: !4469)
!4491 = !DILocation(line: 116, column: 13, scope: !4469)
!4492 = !DILocation(line: 117, column: 15, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4469, file: !4421, line: 117, column: 11)
!4494 = !DILocation(line: 117, column: 11, scope: !4469)
!4495 = !DILocation(line: 127, column: 11, scope: !4469)
!4496 = !DILocation(line: 127, column: 18, scope: !4469)
!4497 = !DILocation(line: 128, column: 11, scope: !4469)
!4498 = !DILocation(line: 128, column: 19, scope: !4469)
!4499 = !{!913, !875, i64 144}
!4500 = !DILocation(line: 159, column: 7, scope: !4469)
!4501 = !DILocation(line: 161, column: 10, scope: !4420)
!4502 = !DILocation(line: 161, column: 3, scope: !4420)
!4503 = !DILocation(line: 162, column: 1, scope: !4420)
!4504 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4505, file: !4505, line: 334, type: !4506, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !4520)
!4505 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!82, !4508, !40, !82, !4509}
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2049, line: 6, baseType: !4511)
!4511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2051, line: 21, baseType: !4512)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2051, line: 13, size: 64, elements: !4513)
!4513 = !{!4514, !4515}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4512, file: !2051, line: 15, baseType: !63, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4512, file: !2051, line: 20, baseType: !4516, size: 32, offset: 32)
!4516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4512, file: !2051, line: 16, size: 32, elements: !4517)
!4517 = !{!4518, !4519}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4516, file: !2051, line: 18, baseType: !170, size: 32)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4516, file: !2051, line: 19, baseType: !2060, size: 32)
!4520 = !{!4521, !4522, !4523, !4524, !4525, !4526, !4527}
!4521 = !DILocalVariable(name: "pwc", arg: 1, scope: !4504, file: !4505, line: 334, type: !4508)
!4522 = !DILocalVariable(name: "s", arg: 2, scope: !4504, file: !4505, line: 334, type: !40)
!4523 = !DILocalVariable(name: "n", arg: 3, scope: !4504, file: !4505, line: 334, type: !82)
!4524 = !DILocalVariable(name: "ps", arg: 4, scope: !4504, file: !4505, line: 334, type: !4509)
!4525 = !DILocalVariable(name: "ret", scope: !4504, file: !4505, line: 336, type: !82)
!4526 = !DILocalVariable(name: "wc", scope: !4504, file: !4505, line: 337, type: !2065)
!4527 = !DILocalVariable(name: "uc", scope: !4528, file: !4505, line: 398, type: !32)
!4528 = distinct !DILexicalBlock(scope: !4529, file: !4505, line: 397, column: 5)
!4529 = distinct !DILexicalBlock(scope: !4504, file: !4505, line: 396, column: 7)
!4530 = !DILocation(line: 334, column: 23, scope: !4504)
!4531 = !DILocation(line: 334, column: 40, scope: !4504)
!4532 = !DILocation(line: 334, column: 50, scope: !4504)
!4533 = !DILocation(line: 334, column: 64, scope: !4504)
!4534 = !DILocation(line: 337, column: 3, scope: !4504)
!4535 = !DILocation(line: 353, column: 9, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4504, file: !4505, line: 353, column: 7)
!4537 = !DILocation(line: 353, column: 7, scope: !4504)
!4538 = !DILocation(line: 388, column: 9, scope: !4504)
!4539 = !DILocation(line: 336, column: 10, scope: !4504)
!4540 = !DILocation(line: 396, column: 19, scope: !4529)
!4541 = !DILocation(line: 396, column: 31, scope: !4529)
!4542 = !DILocation(line: 396, column: 26, scope: !4529)
!4543 = !DILocation(line: 396, column: 41, scope: !4529)
!4544 = !DILocation(line: 396, column: 7, scope: !4504)
!4545 = !DILocation(line: 398, column: 26, scope: !4528)
!4546 = !DILocation(line: 398, column: 21, scope: !4528)
!4547 = !DILocation(line: 399, column: 14, scope: !4528)
!4548 = !DILocation(line: 399, column: 12, scope: !4528)
!4549 = !DILocation(line: 405, column: 1, scope: !4504)
!4550 = distinct !DISubprogram(name: "close_stream", scope: !4551, file: !4551, line: 56, type: !4552, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !4594)
!4551 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!63, !4554}
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !675, line: 7, baseType: !4556)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 241, size: 1728, elements: !4557)
!4557 = !{!4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4556, file: !677, line: 242, baseType: !63, size: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4556, file: !677, line: 247, baseType: !29, size: 64, offset: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4556, file: !677, line: 248, baseType: !29, size: 64, offset: 128)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4556, file: !677, line: 249, baseType: !29, size: 64, offset: 192)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4556, file: !677, line: 250, baseType: !29, size: 64, offset: 256)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4556, file: !677, line: 251, baseType: !29, size: 64, offset: 320)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4556, file: !677, line: 252, baseType: !29, size: 64, offset: 384)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4556, file: !677, line: 253, baseType: !29, size: 64, offset: 448)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4556, file: !677, line: 254, baseType: !29, size: 64, offset: 512)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4556, file: !677, line: 256, baseType: !29, size: 64, offset: 576)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4556, file: !677, line: 257, baseType: !29, size: 64, offset: 640)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4556, file: !677, line: 258, baseType: !29, size: 64, offset: 704)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4556, file: !677, line: 260, baseType: !4571, size: 64, offset: 768)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !677, line: 156, size: 192, elements: !4573)
!4573 = !{!4574, !4575, !4577}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4572, file: !677, line: 157, baseType: !4571, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4572, file: !677, line: 158, baseType: !4576, size: 64, offset: 64)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4572, file: !677, line: 162, baseType: !63, size: 32, offset: 128)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4556, file: !677, line: 262, baseType: !4576, size: 64, offset: 832)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4556, file: !677, line: 264, baseType: !63, size: 32, offset: 896)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4556, file: !677, line: 268, baseType: !63, size: 32, offset: 928)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4556, file: !677, line: 270, baseType: !703, size: 64, offset: 960)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4556, file: !677, line: 274, baseType: !153, size: 16, offset: 1024)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4556, file: !677, line: 275, baseType: !94, size: 8, offset: 1040)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4556, file: !677, line: 276, baseType: !709, size: 8, offset: 1048)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4556, file: !677, line: 280, baseType: !713, size: 64, offset: 1088)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4556, file: !677, line: 289, baseType: !716, size: 64, offset: 1152)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4556, file: !677, line: 297, baseType: !31, size: 64, offset: 1216)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4556, file: !677, line: 298, baseType: !31, size: 64, offset: 1280)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4556, file: !677, line: 299, baseType: !31, size: 64, offset: 1344)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4556, file: !677, line: 300, baseType: !31, size: 64, offset: 1408)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4556, file: !677, line: 302, baseType: !82, size: 64, offset: 1472)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4556, file: !677, line: 303, baseType: !63, size: 32, offset: 1536)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4556, file: !677, line: 305, baseType: !724, size: 160, offset: 1568)
!4594 = !{!4595, !4596, !4598, !4599}
!4595 = !DILocalVariable(name: "stream", arg: 1, scope: !4550, file: !4551, line: 56, type: !4554)
!4596 = !DILocalVariable(name: "some_pending", scope: !4550, file: !4551, line: 58, type: !4597)
!4597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!4598 = !DILocalVariable(name: "prev_fail", scope: !4550, file: !4551, line: 59, type: !4597)
!4599 = !DILocalVariable(name: "fclose_fail", scope: !4550, file: !4551, line: 60, type: !4597)
!4600 = !DILocation(line: 56, column: 21, scope: !4550)
!4601 = !DILocation(line: 58, column: 30, scope: !4550)
!4602 = !DILocalVariable(name: "__stream", arg: 1, scope: !4603, file: !904, line: 132, type: !4554)
!4603 = distinct !DISubprogram(name: "ferror_unlocked", scope: !904, file: !904, line: 132, type: !4552, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !4604)
!4604 = !{!4602}
!4605 = !DILocation(line: 132, column: 1, scope: !4603, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 59, column: 27, scope: !4550)
!4607 = !DILocation(line: 134, column: 10, scope: !4603, inlinedAt: !4606)
!4608 = !DILocation(line: 59, column: 43, scope: !4550)
!4609 = !DILocation(line: 60, column: 29, scope: !4550)
!4610 = !DILocation(line: 60, column: 45, scope: !4550)
!4611 = !DILocation(line: 70, column: 17, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4550, file: !4551, line: 70, column: 7)
!4613 = !DILocation(line: 58, column: 50, scope: !4550)
!4614 = !DILocation(line: 70, column: 33, scope: !4612)
!4615 = !DILocation(line: 70, column: 53, scope: !4612)
!4616 = !DILocation(line: 70, column: 59, scope: !4612)
!4617 = !DILocation(line: 70, column: 7, scope: !4550)
!4618 = !DILocation(line: 72, column: 11, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4612, file: !4551, line: 71, column: 5)
!4620 = !DILocation(line: 73, column: 9, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4619, file: !4551, line: 72, column: 11)
!4622 = !DILocation(line: 73, column: 15, scope: !4621)
!4623 = !DILocation(line: 78, column: 1, scope: !4550)
!4624 = distinct !DISubprogram(name: "hard_locale", scope: !4625, file: !4625, line: 38, type: !4626, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !4628)
!4625 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!113, !63}
!4628 = !{!4629, !4630, !4631}
!4629 = !DILocalVariable(name: "category", arg: 1, scope: !4624, file: !4625, line: 38, type: !63)
!4630 = !DILocalVariable(name: "hard", scope: !4624, file: !4625, line: 40, type: !113)
!4631 = !DILocalVariable(name: "p", scope: !4624, file: !4625, line: 41, type: !40)
!4632 = !DILocation(line: 38, column: 18, scope: !4624)
!4633 = !DILocation(line: 40, column: 8, scope: !4624)
!4634 = !DILocation(line: 41, column: 19, scope: !4624)
!4635 = !DILocation(line: 41, column: 15, scope: !4624)
!4636 = !DILocation(line: 43, column: 7, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4624, file: !4625, line: 43, column: 7)
!4638 = !DILocation(line: 43, column: 7, scope: !4624)
!4639 = !DILocation(line: 47, column: 15, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !4625, line: 47, column: 15)
!4641 = distinct !DILexicalBlock(scope: !4642, file: !4625, line: 46, column: 9)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !4625, line: 45, column: 11)
!4643 = distinct !DILexicalBlock(scope: !4637, file: !4625, line: 44, column: 5)
!4644 = !DILocation(line: 47, column: 31, scope: !4640)
!4645 = !DILocation(line: 47, column: 36, scope: !4640)
!4646 = !DILocation(line: 47, column: 39, scope: !4640)
!4647 = !DILocation(line: 47, column: 59, scope: !4640)
!4648 = !DILocation(line: 47, column: 15, scope: !4641)
!4649 = !DILocation(line: 48, column: 13, scope: !4640)
!4650 = !DILocation(line: 71, column: 3, scope: !4624)
!4651 = distinct !DISubprogram(name: "locale_charset", scope: !550, file: !550, line: 393, type: !4652, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !206, variables: !4654)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!40}
!4654 = !{!4655, !4656}
!4655 = !DILocalVariable(name: "codeset", scope: !4651, file: !550, line: 395, type: !40)
!4656 = !DILocalVariable(name: "aliases", scope: !4651, file: !550, line: 396, type: !40)
!4657 = !DILocalVariable(name: "buf1", scope: !4658, file: !550, line: 196, type: !4725)
!4658 = distinct !DILexicalBlock(scope: !4659, file: !550, line: 194, column: 21)
!4659 = distinct !DILexicalBlock(scope: !4660, file: !550, line: 193, column: 19)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !550, line: 193, column: 19)
!4661 = distinct !DILexicalBlock(scope: !4662, file: !550, line: 188, column: 17)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !550, line: 181, column: 19)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !550, line: 177, column: 13)
!4664 = distinct !DILexicalBlock(scope: !4665, file: !550, line: 173, column: 15)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !550, line: 161, column: 9)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !550, line: 157, column: 11)
!4667 = distinct !DILexicalBlock(scope: !4668, file: !550, line: 130, column: 5)
!4668 = distinct !DILexicalBlock(scope: !4669, file: !550, line: 129, column: 7)
!4669 = distinct !DISubprogram(name: "get_charset_aliases", scope: !550, file: !550, line: 124, type: !4652, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !206, variables: !4670)
!4670 = !{!4671, !4672, !4673, !4674, !4675, !4677, !4678, !4679, !4680, !4721, !4722, !4723, !4657, !4724, !4728, !4729, !4730}
!4671 = !DILocalVariable(name: "cp", scope: !4669, file: !550, line: 126, type: !40)
!4672 = !DILocalVariable(name: "dir", scope: !4667, file: !550, line: 132, type: !40)
!4673 = !DILocalVariable(name: "base", scope: !4667, file: !550, line: 133, type: !40)
!4674 = !DILocalVariable(name: "file_name", scope: !4667, file: !550, line: 134, type: !29)
!4675 = !DILocalVariable(name: "dir_len", scope: !4676, file: !550, line: 144, type: !82)
!4676 = distinct !DILexicalBlock(scope: !4667, file: !550, line: 143, column: 7)
!4677 = !DILocalVariable(name: "base_len", scope: !4676, file: !550, line: 145, type: !82)
!4678 = !DILocalVariable(name: "add_slash", scope: !4676, file: !550, line: 146, type: !63)
!4679 = !DILocalVariable(name: "fd", scope: !4665, file: !550, line: 162, type: !63)
!4680 = !DILocalVariable(name: "fp", scope: !4663, file: !550, line: 178, type: !4681)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !675, line: 7, baseType: !4683)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 241, size: 1728, elements: !4684)
!4684 = !{!4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4683, file: !677, line: 242, baseType: !63, size: 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4683, file: !677, line: 247, baseType: !29, size: 64, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4683, file: !677, line: 248, baseType: !29, size: 64, offset: 128)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4683, file: !677, line: 249, baseType: !29, size: 64, offset: 192)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4683, file: !677, line: 250, baseType: !29, size: 64, offset: 256)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4683, file: !677, line: 251, baseType: !29, size: 64, offset: 320)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4683, file: !677, line: 252, baseType: !29, size: 64, offset: 384)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4683, file: !677, line: 253, baseType: !29, size: 64, offset: 448)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4683, file: !677, line: 254, baseType: !29, size: 64, offset: 512)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4683, file: !677, line: 256, baseType: !29, size: 64, offset: 576)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4683, file: !677, line: 257, baseType: !29, size: 64, offset: 640)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4683, file: !677, line: 258, baseType: !29, size: 64, offset: 704)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4683, file: !677, line: 260, baseType: !4698, size: 64, offset: 768)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !677, line: 156, size: 192, elements: !4700)
!4700 = !{!4701, !4702, !4704}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4699, file: !677, line: 157, baseType: !4698, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4699, file: !677, line: 158, baseType: !4703, size: 64, offset: 64)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4699, file: !677, line: 162, baseType: !63, size: 32, offset: 128)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4683, file: !677, line: 262, baseType: !4703, size: 64, offset: 832)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4683, file: !677, line: 264, baseType: !63, size: 32, offset: 896)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4683, file: !677, line: 268, baseType: !63, size: 32, offset: 928)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4683, file: !677, line: 270, baseType: !703, size: 64, offset: 960)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4683, file: !677, line: 274, baseType: !153, size: 16, offset: 1024)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4683, file: !677, line: 275, baseType: !94, size: 8, offset: 1040)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4683, file: !677, line: 276, baseType: !709, size: 8, offset: 1048)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4683, file: !677, line: 280, baseType: !713, size: 64, offset: 1088)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4683, file: !677, line: 289, baseType: !716, size: 64, offset: 1152)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4683, file: !677, line: 297, baseType: !31, size: 64, offset: 1216)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4683, file: !677, line: 298, baseType: !31, size: 64, offset: 1280)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4683, file: !677, line: 299, baseType: !31, size: 64, offset: 1344)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4683, file: !677, line: 300, baseType: !31, size: 64, offset: 1408)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4683, file: !677, line: 302, baseType: !82, size: 64, offset: 1472)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4683, file: !677, line: 303, baseType: !63, size: 32, offset: 1536)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4683, file: !677, line: 305, baseType: !724, size: 160, offset: 1568)
!4721 = !DILocalVariable(name: "res_ptr", scope: !4661, file: !550, line: 190, type: !29)
!4722 = !DILocalVariable(name: "res_size", scope: !4661, file: !550, line: 191, type: !82)
!4723 = !DILocalVariable(name: "c", scope: !4658, file: !550, line: 195, type: !63)
!4724 = !DILocalVariable(name: "buf2", scope: !4658, file: !550, line: 197, type: !4725)
!4725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 408, elements: !4726)
!4726 = !{!4727}
!4727 = !DISubrange(count: 51)
!4728 = !DILocalVariable(name: "l1", scope: !4658, file: !550, line: 198, type: !82)
!4729 = !DILocalVariable(name: "l2", scope: !4658, file: !550, line: 198, type: !82)
!4730 = !DILocalVariable(name: "old_res_ptr", scope: !4658, file: !550, line: 199, type: !29)
!4731 = !DILocation(line: 196, column: 28, scope: !4658, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 589, column: 18, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4651, file: !550, line: 589, column: 3)
!4734 = !DILocation(line: 197, column: 28, scope: !4658, inlinedAt: !4732)
!4735 = !DILocation(line: 403, column: 13, scope: !4651)
!4736 = !DILocation(line: 395, column: 15, scope: !4651)
!4737 = !DILocation(line: 584, column: 15, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4651, file: !550, line: 584, column: 7)
!4739 = !DILocation(line: 584, column: 7, scope: !4651)
!4740 = !DILocation(line: 128, column: 8, scope: !4669, inlinedAt: !4732)
!4741 = !DILocation(line: 126, column: 15, scope: !4669, inlinedAt: !4732)
!4742 = !DILocation(line: 129, column: 10, scope: !4668, inlinedAt: !4732)
!4743 = !DILocation(line: 129, column: 7, scope: !4669, inlinedAt: !4732)
!4744 = !DILocation(line: 138, column: 13, scope: !4667, inlinedAt: !4732)
!4745 = !DILocation(line: 132, column: 19, scope: !4667, inlinedAt: !4732)
!4746 = !DILocation(line: 139, column: 15, scope: !4747, inlinedAt: !4732)
!4747 = distinct !DILexicalBlock(scope: !4667, file: !550, line: 139, column: 11)
!4748 = !DILocation(line: 139, column: 23, scope: !4747, inlinedAt: !4732)
!4749 = !DILocation(line: 139, column: 26, scope: !4747, inlinedAt: !4732)
!4750 = !DILocation(line: 139, column: 33, scope: !4747, inlinedAt: !4732)
!4751 = !DILocation(line: 139, column: 11, scope: !4667, inlinedAt: !4732)
!4752 = !DILocation(line: 140, column: 9, scope: !4747, inlinedAt: !4732)
!4753 = !DILocation(line: 144, column: 26, scope: !4676, inlinedAt: !4732)
!4754 = !DILocation(line: 144, column: 16, scope: !4676, inlinedAt: !4732)
!4755 = !DILocation(line: 145, column: 16, scope: !4676, inlinedAt: !4732)
!4756 = !DILocation(line: 146, column: 34, scope: !4676, inlinedAt: !4732)
!4757 = !DILocation(line: 146, column: 38, scope: !4676, inlinedAt: !4732)
!4758 = !DILocation(line: 146, column: 42, scope: !4676, inlinedAt: !4732)
!4759 = !DILocation(line: 147, column: 48, scope: !4676, inlinedAt: !4732)
!4760 = !DILocation(line: 147, column: 46, scope: !4676, inlinedAt: !4732)
!4761 = !DILocation(line: 147, column: 69, scope: !4676, inlinedAt: !4732)
!4762 = !DILocation(line: 147, column: 30, scope: !4676, inlinedAt: !4732)
!4763 = !DILocation(line: 134, column: 13, scope: !4667, inlinedAt: !4732)
!4764 = !DILocation(line: 148, column: 13, scope: !4676, inlinedAt: !4732)
!4765 = !DILocation(line: 150, column: 13, scope: !4766, inlinedAt: !4732)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !550, line: 149, column: 11)
!4767 = distinct !DILexicalBlock(scope: !4676, file: !550, line: 148, column: 13)
!4768 = !DILocation(line: 151, column: 17, scope: !4766, inlinedAt: !4732)
!4769 = !DILocation(line: 152, column: 34, scope: !4770, inlinedAt: !4732)
!4770 = distinct !DILexicalBlock(scope: !4766, file: !550, line: 151, column: 17)
!4771 = !DILocation(line: 153, column: 41, scope: !4766, inlinedAt: !4732)
!4772 = !DILocation(line: 153, column: 13, scope: !4766, inlinedAt: !4732)
!4773 = !DILocation(line: 157, column: 11, scope: !4667, inlinedAt: !4732)
!4774 = !DILocation(line: 171, column: 16, scope: !4665, inlinedAt: !4732)
!4775 = !DILocation(line: 162, column: 15, scope: !4665, inlinedAt: !4732)
!4776 = !DILocation(line: 173, column: 18, scope: !4664, inlinedAt: !4732)
!4777 = !DILocation(line: 173, column: 15, scope: !4665, inlinedAt: !4732)
!4778 = !DILocation(line: 180, column: 20, scope: !4663, inlinedAt: !4732)
!4779 = !DILocation(line: 178, column: 21, scope: !4663, inlinedAt: !4732)
!4780 = !DILocation(line: 181, column: 22, scope: !4662, inlinedAt: !4732)
!4781 = !DILocation(line: 181, column: 19, scope: !4663, inlinedAt: !4732)
!4782 = !DILocation(line: 184, column: 19, scope: !4783, inlinedAt: !4732)
!4783 = distinct !DILexicalBlock(scope: !4662, file: !550, line: 182, column: 17)
!4784 = !DILocation(line: 186, column: 17, scope: !4783, inlinedAt: !4732)
!4785 = !DILocation(line: 190, column: 25, scope: !4661, inlinedAt: !4732)
!4786 = !DILocation(line: 191, column: 26, scope: !4661, inlinedAt: !4732)
!4787 = !DILocation(line: 193, column: 19, scope: !4661, inlinedAt: !4732)
!4788 = !DILocation(line: 196, column: 23, scope: !4658, inlinedAt: !4732)
!4789 = !DILocation(line: 197, column: 23, scope: !4658, inlinedAt: !4732)
!4790 = !DILocalVariable(name: "__fp", arg: 1, scope: !4791, file: !904, line: 63, type: !4681)
!4791 = distinct !DISubprogram(name: "getc_unlocked", scope: !904, file: !904, line: 63, type: !4792, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !206, variables: !4794)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!63, !4681}
!4794 = !{!4790}
!4795 = !DILocation(line: 63, column: 22, scope: !4791, inlinedAt: !4796)
!4796 = distinct !DILocation(line: 201, column: 27, scope: !4658, inlinedAt: !4732)
!4797 = !DILocation(line: 65, column: 10, scope: !4791, inlinedAt: !4796)
!4798 = !DILocation(line: 195, column: 27, scope: !4658, inlinedAt: !4732)
!4799 = !DILocation(line: 202, column: 27, scope: !4658, inlinedAt: !4732)
!4800 = distinct !{!4800, !4801, !4804}
!4801 = !DILocation(line: 209, column: 27, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4803, file: !550, line: 207, column: 25)
!4803 = distinct !DILexicalBlock(scope: !4658, file: !550, line: 206, column: 27)
!4804 = !DILocation(line: 211, column: 58, scope: !4802)
!4805 = !DILocation(line: 65, column: 10, scope: !4791, inlinedAt: !4806)
!4806 = distinct !DILocation(line: 210, column: 33, scope: !4802, inlinedAt: !4732)
!4807 = !DILocation(line: 63, column: 22, scope: !4791, inlinedAt: !4806)
!4808 = !DILocation(line: 210, column: 29, scope: !4802, inlinedAt: !4732)
!4809 = distinct !{!4809, !4810, !4811}
!4810 = !DILocation(line: 193, column: 19, scope: !4660)
!4811 = !DILocation(line: 241, column: 21, scope: !4660)
!4812 = !DILocation(line: 216, column: 23, scope: !4658, inlinedAt: !4732)
!4813 = !DILocation(line: 217, column: 27, scope: !4814, inlinedAt: !4732)
!4814 = distinct !DILexicalBlock(scope: !4658, file: !550, line: 217, column: 27)
!4815 = !DILocation(line: 217, column: 64, scope: !4814, inlinedAt: !4732)
!4816 = !DILocation(line: 217, column: 27, scope: !4658, inlinedAt: !4732)
!4817 = !DILocation(line: 219, column: 28, scope: !4658, inlinedAt: !4732)
!4818 = !DILocation(line: 198, column: 30, scope: !4658, inlinedAt: !4732)
!4819 = !DILocation(line: 220, column: 28, scope: !4658, inlinedAt: !4732)
!4820 = !DILocation(line: 198, column: 34, scope: !4658, inlinedAt: !4732)
!4821 = !DILocation(line: 199, column: 29, scope: !4658, inlinedAt: !4732)
!4822 = !DILocation(line: 222, column: 36, scope: !4823, inlinedAt: !4732)
!4823 = distinct !DILexicalBlock(scope: !4658, file: !550, line: 222, column: 27)
!4824 = !DILocation(line: 222, column: 27, scope: !4658, inlinedAt: !4732)
!4825 = !DILocation(line: 225, column: 63, scope: !4826, inlinedAt: !4732)
!4826 = distinct !DILexicalBlock(scope: !4823, file: !550, line: 223, column: 25)
!4827 = !DILocation(line: 225, column: 46, scope: !4826, inlinedAt: !4732)
!4828 = !DILocation(line: 226, column: 25, scope: !4826, inlinedAt: !4732)
!4829 = !DILocation(line: 229, column: 36, scope: !4830, inlinedAt: !4732)
!4830 = distinct !DILexicalBlock(scope: !4823, file: !550, line: 228, column: 25)
!4831 = !DILocation(line: 230, column: 73, scope: !4830, inlinedAt: !4732)
!4832 = !DILocation(line: 230, column: 46, scope: !4830, inlinedAt: !4732)
!4833 = !DILocation(line: 232, column: 35, scope: !4834, inlinedAt: !4732)
!4834 = distinct !DILexicalBlock(scope: !4658, file: !550, line: 232, column: 27)
!4835 = !DILocation(line: 232, column: 27, scope: !4658, inlinedAt: !4732)
!4836 = !DILocation(line: 236, column: 27, scope: !4837, inlinedAt: !4732)
!4837 = distinct !DILexicalBlock(scope: !4834, file: !550, line: 233, column: 25)
!4838 = !DILocation(line: 237, column: 27, scope: !4837, inlinedAt: !4732)
!4839 = !DILocation(line: 241, column: 21, scope: !4659, inlinedAt: !4732)
!4840 = !DILocation(line: 239, column: 39, scope: !4658, inlinedAt: !4732)
!4841 = !DILocation(line: 239, column: 50, scope: !4658, inlinedAt: !4732)
!4842 = !DILocation(line: 239, column: 61, scope: !4658, inlinedAt: !4732)
!4843 = !DILocalVariable(name: "__dest", arg: 1, scope: !4844, file: !4845, line: 88, type: !85)
!4844 = distinct !DISubprogram(name: "strcpy", scope: !4845, file: !4845, line: 88, type: !4846, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !206, variables: !4848)
!4845 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!29, !85, !81}
!4848 = !{!4843, !4849}
!4849 = !DILocalVariable(name: "__src", arg: 2, scope: !4844, file: !4845, line: 88, type: !81)
!4850 = !DILocation(line: 88, column: 1, scope: !4844, inlinedAt: !4851)
!4851 = distinct !DILocation(line: 239, column: 23, scope: !4658, inlinedAt: !4732)
!4852 = !DILocation(line: 90, column: 49, scope: !4844, inlinedAt: !4851)
!4853 = !DILocation(line: 90, column: 10, scope: !4844, inlinedAt: !4851)
!4854 = !DILocation(line: 88, column: 1, scope: !4844, inlinedAt: !4855)
!4855 = distinct !DILocation(line: 240, column: 23, scope: !4658, inlinedAt: !4732)
!4856 = !DILocation(line: 90, column: 49, scope: !4844, inlinedAt: !4855)
!4857 = !DILocation(line: 90, column: 10, scope: !4844, inlinedAt: !4855)
!4858 = !DILocation(line: 193, column: 19, scope: !4659, inlinedAt: !4732)
!4859 = !DILocation(line: 242, column: 19, scope: !4661, inlinedAt: !4732)
!4860 = !DILocation(line: 243, column: 32, scope: !4861, inlinedAt: !4732)
!4861 = distinct !DILexicalBlock(scope: !4661, file: !550, line: 243, column: 23)
!4862 = !DILocation(line: 243, column: 23, scope: !4661, inlinedAt: !4732)
!4863 = !DILocation(line: 247, column: 33, scope: !4864, inlinedAt: !4732)
!4864 = distinct !DILexicalBlock(scope: !4861, file: !550, line: 246, column: 21)
!4865 = !DILocation(line: 247, column: 45, scope: !4864, inlinedAt: !4732)
!4866 = !DILocation(line: 253, column: 11, scope: !4665, inlinedAt: !4732)
!4867 = !DILocation(line: 377, column: 23, scope: !4667, inlinedAt: !4732)
!4868 = !DILocation(line: 378, column: 5, scope: !4667, inlinedAt: !4732)
!4869 = !DILocation(line: 396, column: 15, scope: !4651)
!4870 = !DILocation(line: 590, column: 8, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4733, file: !550, line: 589, column: 3)
!4872 = !DILocation(line: 590, column: 17, scope: !4871)
!4873 = !DILocation(line: 589, column: 3, scope: !4733)
!4874 = !DILocation(line: 592, column: 9, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4871, file: !550, line: 592, column: 9)
!4876 = !DILocation(line: 592, column: 35, scope: !4875)
!4877 = !DILocation(line: 593, column: 9, scope: !4875)
!4878 = !DILocation(line: 593, column: 24, scope: !4875)
!4879 = !DILocation(line: 593, column: 31, scope: !4875)
!4880 = !DILocation(line: 593, column: 34, scope: !4875)
!4881 = !DILocation(line: 593, column: 45, scope: !4875)
!4882 = !DILocation(line: 592, column: 9, scope: !4871)
!4883 = !DILocation(line: 595, column: 29, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4875, file: !550, line: 594, column: 7)
!4885 = !DILocation(line: 595, column: 27, scope: !4884)
!4886 = !DILocation(line: 595, column: 46, scope: !4884)
!4887 = !DILocation(line: 596, column: 9, scope: !4884)
!4888 = !DILocation(line: 591, column: 19, scope: !4871)
!4889 = !DILocation(line: 591, column: 36, scope: !4871)
!4890 = !DILocation(line: 591, column: 16, scope: !4871)
!4891 = !DILocation(line: 591, column: 52, scope: !4871)
!4892 = !DILocation(line: 591, column: 69, scope: !4871)
!4893 = !DILocation(line: 591, column: 49, scope: !4871)
!4894 = distinct !{!4894, !4873, !4895}
!4895 = !DILocation(line: 597, column: 7, scope: !4733)
!4896 = !DILocation(line: 602, column: 7, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4651, file: !550, line: 602, column: 7)
!4898 = !DILocation(line: 602, column: 18, scope: !4897)
!4899 = !DILocation(line: 602, column: 7, scope: !4651)
!4900 = !DILocation(line: 612, column: 3, scope: !4651)
