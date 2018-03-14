; ModuleID = 'coreutils-8.27/src/base64.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.base64_decode_context = type { i32, [4 x i8] }
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
@.str.6 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
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
@b64c = internal unnamed_addr constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16, !dbg !75
@b64 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !81
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !92
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !97
@.str.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !101
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !108
@.str.55 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.67, i32 0, i32 0), i8* null], align 16, !dbg !114
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !145
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !152
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !165
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.71 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.72 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.73 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.74 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !170
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !177
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !167
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !179
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !185
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.120 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.121 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.137 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !194
@.str.3.141 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.142 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.143 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.144 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.145 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.146 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !608 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !612, metadata !613), !dbg !614
  %2 = icmp eq i32 %0, 0, !dbg !615
  br i1 %2, label %8, label %3, !dbg !617

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !618, !tbaa !620
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !618
  %6 = load i8*, i8** @program_name, align 8, !dbg !618, !tbaa !620
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !618
  br label %44, !dbg !618

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !624
  %10 = load i8*, i8** @program_name, align 8, !dbg !624, !tbaa !620
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i32 64) #11, !dbg !624
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !626
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !626, !tbaa !620
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !626
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !631
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !620
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !631
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !634
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !620
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !634
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !635
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !620
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !635
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !636
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636, !tbaa !620
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !636
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !637
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !637
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !44, metadata !613) #11, !dbg !638
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !44, metadata !613) #11, !dbg !638
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !640
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0)) #11, !dbg !640
  %31 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !641
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !52, metadata !613) #11, !dbg !642
  %32 = icmp eq i8* %31, null, !dbg !643
  br i1 %32, label %39, label %33, !dbg !645

; <label>:33:                                     ; preds = %8
  %34 = tail call i32 @strncmp(i8* nonnull %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #15, !dbg !646
  %35 = icmp eq i32 %34, 0, !dbg !646
  br i1 %35, label %39, label %36, !dbg !647

; <label>:36:                                     ; preds = %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !648
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !648
  br label %39, !dbg !650

; <label>:39:                                     ; preds = %8, %33, %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !651
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !651
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !652
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #11, !dbg !652
  br label %44

; <label>:44:                                     ; preds = %39, %3
  tail call void @exit(i32 %0) #16, !dbg !653
  unreachable, !dbg !653
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !654 {
  %3 = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !724, metadata !613), !dbg !757
  %4 = alloca [3072 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [3072 x i8]* %4, metadata !732, metadata !613), !dbg !760
  %5 = alloca %struct.base64_decode_context, align 4
  %6 = alloca i64, align 8
  %7 = alloca [30720 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [30720 x i8]* %7, metadata !761, metadata !613), !dbg !780
  %8 = alloca [40960 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [40960 x i8]* %8, metadata !770, metadata !613), !dbg !782
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !659, metadata !613), !dbg !783
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !660, metadata !613), !dbg !784
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !718, metadata !613), !dbg !785
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !719, metadata !613), !dbg !786
  tail call void @llvm.dbg.value(metadata i64 76, i64 0, metadata !720, metadata !613), !dbg !787
  %9 = load i8*, i8** %1, align 8, !dbg !788, !tbaa !620
  tail call void @set_program_name(i8* %9) #11, !dbg !789
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !790
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !791
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !792
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !793
  br label %15, !dbg !794

; <label>:14:                                     ; preds = %22
  br label %15, !dbg !795

; <label>:15:                                     ; preds = %14, %2
  %16 = phi i8 [ 0, %2 ], [ 1, %14 ]
  %17 = phi i8 [ 0, %2 ], [ %20, %14 ]
  %18 = phi i64 [ 76, %2 ], [ %23, %14 ]
  br label %19, !dbg !795

; <label>:19:                                     ; preds = %15, %29
  %20 = phi i8 [ %17, %15 ], [ 1, %29 ]
  %21 = phi i64 [ %18, %15 ], [ %23, %29 ]
  br label %22, !dbg !795

; <label>:22:                                     ; preds = %19, %25
  %23 = phi i64 [ %28, %25 ], [ %21, %19 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !720, metadata !613), !dbg !787
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !719, metadata !613), !dbg !786
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !718, metadata !613), !dbg !785
  %24 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !795
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !661, metadata !613), !dbg !796
  switch i32 %24, label %34 [
    i32 -1, label %35
    i32 100, label %14
    i32 119, label %25
    i32 105, label %29
    i32 -130, label %30
    i32 -131, label %31
  ], !dbg !794, !llvm.loop !797

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** @optarg, align 8, !dbg !799, !tbaa !620
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !801
  %28 = tail call i64 @xdectoumax(i8* %26, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %27, i32 0) #11, !dbg !802
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !720, metadata !613), !dbg !787
  br label %22, !dbg !803, !llvm.loop !797

; <label>:29:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !719, metadata !613), !dbg !786
  br label %19, !dbg !804, !llvm.loop !797

; <label>:30:                                     ; preds = %22
  tail call void @usage(i32 0) #17, !dbg !805
  unreachable, !dbg !805

; <label>:31:                                     ; preds = %22
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !806, !tbaa !620
  %33 = load i8*, i8** @Version, align 8, !dbg !806, !tbaa !620
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !806
  tail call void @exit(i32 0) #16, !dbg !806
  unreachable, !dbg !806

; <label>:34:                                     ; preds = %22
  tail call void @usage(i32 1) #17, !dbg !807
  unreachable, !dbg !807

; <label>:35:                                     ; preds = %22
  %36 = load i32, i32* @optind, align 4, !dbg !808, !tbaa !810
  %37 = sub nsw i32 %0, %36, !dbg !812
  %38 = icmp sgt i32 %37, 1, !dbg !813
  br i1 %38, label %39, label %46, !dbg !814

; <label>:39:                                     ; preds = %35
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !815
  %41 = load i32, i32* @optind, align 4, !dbg !817, !tbaa !810
  %42 = sext i32 %41 to i64, !dbg !818
  %43 = getelementptr inbounds i8*, i8** %1, i64 %42, !dbg !818
  %44 = load i8*, i8** %43, align 8, !dbg !818, !tbaa !620
  %45 = tail call i8* @quote(i8* %44) #11, !dbg !819
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40, i8* %45) #11, !dbg !820
  tail call void @usage(i32 1) #17, !dbg !821
  unreachable, !dbg !821

; <label>:46:                                     ; preds = %35
  %47 = icmp slt i32 %36, %0, !dbg !822
  br i1 %47, label %48, label %52, !dbg !824

; <label>:48:                                     ; preds = %46
  %49 = sext i32 %36 to i64, !dbg !825
  %50 = getelementptr inbounds i8*, i8** %1, i64 %49, !dbg !825
  %51 = load i8*, i8** %50, align 8, !dbg !825, !tbaa !620
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !717, metadata !613), !dbg !826
  br label %52, !dbg !827

; <label>:52:                                     ; preds = %46, %48
  %53 = phi i8* [ %51, %48 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %46 ]
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !717, metadata !613), !dbg !826
  %54 = tail call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #15, !dbg !828
  %55 = icmp eq i32 %54, 0, !dbg !828
  br i1 %55, label %56, label %58, !dbg !830

; <label>:56:                                     ; preds = %52
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !831, !tbaa !620
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %57, i64 0, metadata !662, metadata !613), !dbg !833
  br label %65, !dbg !834

; <label>:58:                                     ; preds = %52
  %59 = tail call %struct._IO_FILE* @fopen(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)), !dbg !835
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %59, i64 0, metadata !662, metadata !613), !dbg !833
  %60 = icmp eq %struct._IO_FILE* %59, null, !dbg !837
  br i1 %60, label %61, label %65, !dbg !839

; <label>:61:                                     ; preds = %58
  %62 = tail call i32* @__errno_location() #18, !dbg !840
  %63 = load i32, i32* %62, align 4, !dbg !840, !tbaa !810
  %64 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %53) #11, !dbg !840
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %64) #11, !dbg !840
  unreachable, !dbg !840

; <label>:65:                                     ; preds = %58, %56
  %66 = phi %struct._IO_FILE* [ %57, %56 ], [ %59, %58 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !662, metadata !613), !dbg !833
  tail call void @fadvise(%struct._IO_FILE* %66, i32 2) #11, !dbg !841
  %67 = icmp eq i8 %16, 0, !dbg !842
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !620
  br i1 %67, label %154, label %69, !dbg !843

; <label>:69:                                     ; preds = %65
  %70 = icmp eq i8 %20, 0, !dbg !844
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !729, metadata !613) #11, !dbg !845
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, i64 0, metadata !730, metadata !613) #11, !dbg !846
  tail call void @llvm.dbg.value(metadata i1 %70, i64 0, metadata !731, metadata !613) #11, !dbg !847
  %71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !848
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %71) #11, !dbg !848
  %72 = getelementptr inbounds [3072 x i8], [3072 x i8]* %4, i64 0, i64 0, !dbg !849
  call void @llvm.lifetime.start.p0i8(i64 3072, i8* nonnull %72) #11, !dbg !849
  %73 = bitcast %struct.base64_decode_context* %5 to i8*, !dbg !850
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %73) #11, !dbg !850
  tail call void @llvm.dbg.value(metadata %struct.base64_decode_context* %5, i64 0, metadata !737, metadata !613) #11, !dbg !851
  call void @base64_decode_ctx_init(%struct.base64_decode_context* nonnull %5) #11, !dbg !852
  %74 = bitcast i64* %6 to i8*
  %75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %66, i64 0, i32 0
  %76 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %5, i64 0, i32 0
  br label %77, !dbg !853, !llvm.loop !854

; <label>:77:                                     ; preds = %151, %69
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %74) #11, !dbg !857
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !736, metadata !613) #11, !dbg !858
  br label %78, !dbg !859, !llvm.loop !860

; <label>:78:                                     ; preds = %116, %77
  %79 = phi i64 [ 0, %77 ], [ %108, %116 ]
  call void @llvm.dbg.value(metadata i64 %79, i64 0, metadata !736, metadata !613) #11, !dbg !858
  %80 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 %79, !dbg !863
  %81 = sub i64 4096, %79, !dbg !863
  %82 = call i64 @fread_unlocked(i8* %80, i64 1, i64 %81, %struct._IO_FILE* %66) #11, !dbg !863
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !748, metadata !613) #11, !dbg !864
  store i64 %82, i64* %6, align 8, !dbg !865, !tbaa !866
  br i1 %70, label %106, label %83, !dbg !868

; <label>:83:                                     ; preds = %78
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !750, metadata !613) #11, !dbg !869
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !750, metadata !613) #11, !dbg !869
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !748, metadata !613) #11, !dbg !864
  %84 = icmp eq i64 %82, 0, !dbg !870
  br i1 %84, label %106, label %85, !dbg !873

; <label>:85:                                     ; preds = %83
  br label %86, !dbg !874

; <label>:86:                                     ; preds = %85, %102
  %87 = phi i64 [ %103, %102 ], [ %82, %85 ]
  %88 = phi i64 [ %104, %102 ], [ 0, %85 ]
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !750, metadata !613) #11, !dbg !869
  %89 = add i64 %88, %79, !dbg !874
  %90 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 %89, !dbg !876
  %91 = load i8, i8* %90, align 1, !dbg !876, !tbaa !877
  %92 = call zeroext i1 @isbase64(i8 signext %91) #18, !dbg !878
  %93 = icmp eq i8 %91, 61, !dbg !879
  %94 = or i1 %92, %93, !dbg !880
  br i1 %94, label %95, label %97, !dbg !880

; <label>:95:                                     ; preds = %86
  %96 = add i64 %88, 1, !dbg !881
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !750, metadata !613) #11, !dbg !869
  br label %102, !dbg !882

; <label>:97:                                     ; preds = %86
  %98 = getelementptr inbounds i8, i8* %80, i64 %88, !dbg !883
  %99 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !884
  %100 = add i64 %87, -1, !dbg !885
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !748, metadata !613) #11, !dbg !864
  store i64 %100, i64* %6, align 8, !dbg !885, !tbaa !866
  %101 = sub i64 %100, %88, !dbg !886
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %98, i8* %99, i64 %101, i32 1, i1 false) #11, !dbg !887
  br label %102

; <label>:102:                                    ; preds = %97, %95
  %103 = phi i64 [ %87, %95 ], [ %100, %97 ], !dbg !888
  %104 = phi i64 [ %96, %95 ], [ %88, %97 ]
  call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !750, metadata !613) #11, !dbg !869
  call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !750, metadata !613) #11, !dbg !869
  call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !748, metadata !613) #11, !dbg !864
  %105 = icmp ult i64 %104, %103, !dbg !870
  br i1 %105, label %86, label %106, !dbg !873, !llvm.loop !889

; <label>:106:                                    ; preds = %102, %78, %83
  %107 = phi i64 [ 0, %83 ], [ %82, %78 ], [ %103, %102 ], !dbg !892
  call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !748, metadata !613) #11, !dbg !864
  %108 = add i64 %107, %79, !dbg !893
  call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !736, metadata !613) #11, !dbg !858
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !894, metadata !613) #11, !dbg !900
  %109 = load i32, i32* %75, align 8, !dbg !903, !tbaa !904
  %110 = and i32 %109, 32, !dbg !903
  %111 = icmp eq i32 %110, 0, !dbg !907
  br i1 %111, label %116, label %112, !dbg !908

; <label>:112:                                    ; preds = %106
  %113 = tail call i32* @__errno_location() #18, !dbg !909
  %114 = load i32, i32* %113, align 4, !dbg !909, !tbaa !810
  %115 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !909
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %114, i8* %115) #11, !dbg !909
  unreachable, !dbg !909

; <label>:116:                                    ; preds = %106
  %117 = icmp ult i64 %108, 4096, !dbg !910
  %118 = and i32 %109, 16, !dbg !911
  %119 = icmp eq i32 %118, 0, !dbg !916
  %120 = and i1 %117, %119, !dbg !917
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !914, metadata !613) #11, !dbg !918
  br i1 %120, label %78, label %121, !dbg !917, !llvm.loop !860

; <label>:121:                                    ; preds = %116
  br label %128, !dbg !919

; <label>:122:                                    ; preds = %147
  call void @llvm.dbg.value(metadata i32 %148, i64 0, metadata !749, metadata !613) #11, !dbg !924
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !914, metadata !613) #11, !dbg !925
  %123 = load i32, i32* %75, align 8, !dbg !927, !tbaa !904
  %124 = and i32 %123, 16, !dbg !927
  %125 = icmp eq i32 %124, 0, !dbg !928
  %126 = lshr exact i32 %124, 4, !dbg !929
  %127 = icmp ugt i32 %148, %126, !dbg !930
  br i1 %127, label %151, label %128, !dbg !931, !llvm.loop !932

; <label>:128:                                    ; preds = %121, %122
  %129 = phi i1 [ %125, %122 ], [ %119, %121 ]
  %130 = phi i32 [ %148, %122 ], [ 0, %121 ]
  call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !749, metadata !613) #11, !dbg !924
  %131 = icmp eq i32 %130, 1, !dbg !919
  %132 = load i32, i32* %76, align 4, !dbg !935
  %133 = icmp eq i32 %132, 0, !dbg !936
  %134 = and i1 %131, %133, !dbg !937
  br i1 %134, label %151, label %135, !dbg !937

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 3072, i64 0, metadata !748, metadata !613) #11, !dbg !864
  store i64 3072, i64* %6, align 8, !dbg !938, !tbaa !866
  %136 = icmp eq i32 %130, 0, !dbg !939
  %137 = select i1 %136, i64 %108, i64 0, !dbg !940
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %5, i64 0, metadata !737, metadata !613) #11, !dbg !851
  call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !748, metadata !613) #11, !dbg !864
  %138 = call zeroext i1 @base64_decode_ctx(%struct.base64_decode_context* nonnull %5, i8* nonnull %71, i64 %137, i8* nonnull %72, i64* nonnull %6) #11, !dbg !941
  %139 = load i64, i64* %6, align 8, !dbg !942, !tbaa !866
  call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !748, metadata !613) #11, !dbg !864
  %140 = call i64 @fwrite_unlocked(i8* nonnull %72, i64 1, i64 %139, %struct._IO_FILE* %68) #11, !dbg !942
  %141 = load i64, i64* %6, align 8, !dbg !944, !tbaa !866
  call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !748, metadata !613) #11, !dbg !864
  %142 = icmp ult i64 %140, %141, !dbg !945
  br i1 %142, label %143, label %147, !dbg !946

; <label>:143:                                    ; preds = %135
  %144 = tail call i32* @__errno_location() #18, !dbg !947
  %145 = load i32, i32* %144, align 4, !dbg !947, !tbaa !810
  %146 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !947
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %145, i8* %146) #11, !dbg !947
  unreachable, !dbg !947

; <label>:147:                                    ; preds = %135
  %148 = add i32 %130, 1, !dbg !948
  call void @llvm.dbg.value(metadata i32 %148, i64 0, metadata !749, metadata !613) #11, !dbg !924
  br i1 %138, label %122, label %149, !dbg !949

; <label>:149:                                    ; preds = %147
  %150 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !950
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %150) #11, !dbg !950
  unreachable, !dbg !950

; <label>:151:                                    ; preds = %128, %122
  %152 = phi i1 [ %125, %122 ], [ %129, %128 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74) #11, !dbg !952
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !914, metadata !613) #11, !dbg !953
  br i1 %152, label %77, label %153, !dbg !955, !llvm.loop !854

; <label>:153:                                    ; preds = %151
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73) #11, !dbg !956
  call void @llvm.lifetime.end.p0i8(i64 3072, i8* nonnull %72) #11, !dbg !956
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %71) #11, !dbg !956
  br label %267, !dbg !957

; <label>:154:                                    ; preds = %65
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !766, metadata !613) #11, !dbg !958
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, i64 0, metadata !767, metadata !613) #11, !dbg !959
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !768, metadata !613) #11, !dbg !960
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !769, metadata !613) #11, !dbg !961
  %155 = getelementptr inbounds [30720 x i8], [30720 x i8]* %7, i64 0, i64 0, !dbg !962
  call void @llvm.lifetime.start.p0i8(i64 30720, i8* nonnull %155) #11, !dbg !962
  %156 = getelementptr inbounds [40960 x i8], [40960 x i8]* %8, i64 0, i64 0, !dbg !963
  call void @llvm.lifetime.start.p0i8(i64 40960, i8* nonnull %156) #11, !dbg !963
  %157 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %66, i64 0, i32 0
  %158 = icmp eq i64 %23, 0
  %159 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 5
  %160 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 6
  br label %161, !dbg !964, !llvm.loop !965

; <label>:161:                                    ; preds = %236, %154
  %162 = phi i64 [ 0, %154 ], [ %232, %236 ]
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !774, metadata !613) #11, !dbg !968
  br label %163, !dbg !969, !llvm.loop !970

; <label>:163:                                    ; preds = %172, %161
  %164 = phi i64 [ 0, %161 ], [ %168, %172 ]
  call void @llvm.dbg.value(metadata i64 %164, i64 0, metadata !774, metadata !613) #11, !dbg !968
  %165 = getelementptr inbounds [30720 x i8], [30720 x i8]* %7, i64 0, i64 %164, !dbg !973
  %166 = sub i64 30720, %164, !dbg !973
  %167 = call i64 @fread_unlocked(i8* %165, i64 1, i64 %166, %struct._IO_FILE* %66) #11, !dbg !973
  call void @llvm.dbg.value(metadata i64 %167, i64 0, metadata !775, metadata !613) #11, !dbg !975
  %168 = add i64 %167, %164, !dbg !976
  call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !774, metadata !613) #11, !dbg !968
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !914, metadata !613) #11, !dbg !977
  %169 = load i32, i32* %157, align 8, !dbg !979, !tbaa !904
  %170 = and i32 %169, 16, !dbg !979
  %171 = icmp eq i32 %170, 0, !dbg !980
  br i1 %171, label %172, label %177, !dbg !981

; <label>:172:                                    ; preds = %163
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !894, metadata !613) #11, !dbg !982
  %173 = and i32 %169, 32, !dbg !984
  %174 = icmp eq i32 %173, 0, !dbg !985
  %175 = icmp ult i64 %168, 30720, !dbg !986
  %176 = and i1 %175, %174, !dbg !987
  br i1 %176, label %163, label %177, !dbg !987, !llvm.loop !970

; <label>:177:                                    ; preds = %172, %163
  %178 = icmp eq i64 %168, 0, !dbg !988
  br i1 %178, label %231, label %179, !dbg !990

; <label>:179:                                    ; preds = %177
  %180 = add i64 %168, 2, !dbg !991
  %181 = udiv i64 %180, 3, !dbg !991
  %182 = shl i64 %181, 2, !dbg !991
  call void @base64_encode(i8* nonnull %155, i64 %168, i8* nonnull %156, i64 %182) #11, !dbg !993
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !994, metadata !613) #11, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !999, metadata !613) #11, !dbg !1012
  call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1000, metadata !613) #11, !dbg !1013
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, i64 0, metadata !1002, metadata !613) #11, !dbg !1014
  br i1 %158, label %183, label %191, !dbg !1015

; <label>:183:                                    ; preds = %179
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1016, !tbaa !620
  %185 = call i64 @fwrite_unlocked(i8* nonnull %156, i64 1, i64 %182, %struct._IO_FILE* %184) #11, !dbg !1016
  %186 = icmp ult i64 %185, %182, !dbg !1019
  br i1 %186, label %187, label %231, !dbg !1020

; <label>:187:                                    ; preds = %183
  %188 = tail call i32* @__errno_location() #18, !dbg !1021
  %189 = load i32, i32* %188, align 4, !dbg !1021, !tbaa !810
  %190 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1021
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %189, i8* %190) #11, !dbg !1021
  unreachable, !dbg !1021

; <label>:191:                                    ; preds = %179
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1003, metadata !613) #11, !dbg !1022
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1003, metadata !613) #11, !dbg !1022
  %192 = icmp eq i64 %182, 0, !dbg !1023
  br i1 %192, label %231, label %193, !dbg !1024

; <label>:193:                                    ; preds = %191
  br label %194, !dbg !1025

; <label>:194:                                    ; preds = %193, %227
  %195 = phi i64 [ %228, %227 ], [ %162, %193 ]
  %196 = phi i64 [ %229, %227 ], [ 0, %193 ]
  call void @llvm.dbg.value(metadata i64 %196, i64 0, metadata !1003, metadata !613) #11, !dbg !1022
  %197 = sub i64 %23, %195, !dbg !1025
  call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !1004, metadata !613) #11, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !1009, metadata !613) #11, !dbg !1027
  %198 = sub i64 %182, %196, !dbg !1028
  %199 = icmp ult i64 %197, %198, !dbg !1028
  %200 = select i1 %199, i64 %197, i64 %198, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %200, i64 0, metadata !1009, metadata !613) #11, !dbg !1027
  %201 = icmp eq i64 %200, 0, !dbg !1029
  br i1 %201, label %202, label %215, !dbg !1031

; <label>:202:                                    ; preds = %194
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1032, metadata !613) #11, !dbg !1038
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, i64 0, metadata !1037, metadata !613) #11, !dbg !1042
  %203 = load i8*, i8** %159, align 8, !dbg !1043, !tbaa !1044
  %204 = load i8*, i8** %160, align 8, !dbg !1043, !tbaa !1045
  %205 = icmp ult i8* %203, %204, !dbg !1043
  br i1 %205, label %206, label %208, !dbg !1043, !prof !1046

; <label>:206:                                    ; preds = %202
  %207 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !1043
  store i8* %207, i8** %159, align 8, !dbg !1043, !tbaa !1044
  store i8 10, i8* %203, align 1, !dbg !1043, !tbaa !877
  br label %227, !dbg !1047

; <label>:208:                                    ; preds = %202
  %209 = call i32 @__overflow(%struct._IO_FILE* nonnull %68, i32 10) #11, !dbg !1043
  %210 = icmp eq i32 %209, -1, !dbg !1048
  br i1 %210, label %211, label %227, !dbg !1047

; <label>:211:                                    ; preds = %208
  %212 = tail call i32* @__errno_location() #18, !dbg !1049
  %213 = load i32, i32* %212, align 4, !dbg !1049, !tbaa !810
  %214 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1049
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %213, i8* %214) #11, !dbg !1049
  unreachable, !dbg !1049

; <label>:215:                                    ; preds = %194
  %216 = getelementptr inbounds [40960 x i8], [40960 x i8]* %8, i64 0, i64 %196, !dbg !1050
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1050, !tbaa !620
  %218 = call i64 @fwrite_unlocked(i8* %216, i64 1, i64 %200, %struct._IO_FILE* %217) #11, !dbg !1050
  %219 = icmp ult i64 %218, %200, !dbg !1053
  br i1 %219, label %220, label %224, !dbg !1054

; <label>:220:                                    ; preds = %215
  %221 = tail call i32* @__errno_location() #18, !dbg !1055
  %222 = load i32, i32* %221, align 4, !dbg !1055, !tbaa !810
  %223 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1055
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %222, i8* %223) #11, !dbg !1055
  unreachable, !dbg !1055

; <label>:224:                                    ; preds = %215
  %225 = add i64 %200, %195, !dbg !1056
  %226 = add i64 %200, %196, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %226, i64 0, metadata !1003, metadata !613) #11, !dbg !1022
  br label %227

; <label>:227:                                    ; preds = %224, %208, %206
  %228 = phi i64 [ %225, %224 ], [ 0, %208 ], [ 0, %206 ]
  %229 = phi i64 [ %226, %224 ], [ %196, %208 ], [ %196, %206 ]
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1003, metadata !613) #11, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1003, metadata !613) #11, !dbg !1022
  %230 = icmp ult i64 %229, %182, !dbg !1023
  br i1 %230, label %194, label %231, !dbg !1024, !llvm.loop !1058

; <label>:231:                                    ; preds = %227, %191, %183, %177
  %232 = phi i64 [ %162, %177 ], [ %162, %183 ], [ %162, %191 ], [ %228, %227 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !914, metadata !613) #11, !dbg !1061
  %233 = load i32, i32* %157, align 8, !dbg !1063, !tbaa !904
  %234 = and i32 %233, 16, !dbg !1063
  %235 = icmp eq i32 %234, 0, !dbg !1064
  br i1 %235, label %236, label %241, !dbg !1065

; <label>:236:                                    ; preds = %231
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !894, metadata !613) #11, !dbg !1066
  %237 = and i32 %233, 32, !dbg !1068
  %238 = icmp eq i32 %237, 0, !dbg !1069
  %239 = icmp eq i64 %168, 30720, !dbg !1070
  %240 = and i1 %239, %238, !dbg !1071
  br i1 %240, label %161, label %241, !dbg !1071, !llvm.loop !965

; <label>:241:                                    ; preds = %236, %231
  %242 = icmp ne i64 %23, 0, !dbg !1072
  call void @llvm.dbg.value(metadata i64 %232, i64 0, metadata !769, metadata !613) #11, !dbg !961
  %243 = icmp ne i64 %232, 0, !dbg !1074
  %244 = and i1 %242, %243, !dbg !1075
  br i1 %244, label %245, label %258, !dbg !1075

; <label>:245:                                    ; preds = %241
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1032, metadata !613) #11, !dbg !1076
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, i64 0, metadata !1037, metadata !613) #11, !dbg !1078
  %246 = load i8*, i8** %159, align 8, !dbg !1079, !tbaa !1044
  %247 = load i8*, i8** %160, align 8, !dbg !1079, !tbaa !1045
  %248 = icmp ult i8* %246, %247, !dbg !1079
  br i1 %248, label %249, label %251, !dbg !1079, !prof !1046

; <label>:249:                                    ; preds = %245
  %250 = getelementptr inbounds i8, i8* %246, i64 1, !dbg !1079
  store i8* %250, i8** %159, align 8, !dbg !1079, !tbaa !1044
  store i8 10, i8* %246, align 1, !dbg !1079, !tbaa !877
  br label %258, !dbg !1080

; <label>:251:                                    ; preds = %245
  %252 = call i32 @__overflow(%struct._IO_FILE* nonnull %68, i32 10) #11, !dbg !1079
  %253 = icmp eq i32 %252, -1, !dbg !1081
  br i1 %253, label %254, label %258, !dbg !1080

; <label>:254:                                    ; preds = %251
  %255 = tail call i32* @__errno_location() #18, !dbg !1082
  %256 = load i32, i32* %255, align 4, !dbg !1082, !tbaa !810
  %257 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1082
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %256, i8* %257) #11, !dbg !1082
  unreachable, !dbg !1082

; <label>:258:                                    ; preds = %251, %249, %241
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, i64 0, metadata !894, metadata !613) #11, !dbg !1083
  %259 = load i32, i32* %157, align 8, !dbg !1086, !tbaa !904
  %260 = and i32 %259, 32, !dbg !1086
  %261 = icmp eq i32 %260, 0, !dbg !1087
  br i1 %261, label %266, label %262, !dbg !1088

; <label>:262:                                    ; preds = %258
  %263 = tail call i32* @__errno_location() #18, !dbg !1089
  %264 = load i32, i32* %263, align 4, !dbg !1089, !tbaa !810
  %265 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !1089
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %264, i8* %265) #11, !dbg !1089
  unreachable, !dbg !1089

; <label>:266:                                    ; preds = %258
  call void @llvm.lifetime.end.p0i8(i64 40960, i8* nonnull %156) #11, !dbg !1090
  call void @llvm.lifetime.end.p0i8(i64 30720, i8* nonnull %155) #11, !dbg !1090
  br label %267

; <label>:267:                                    ; preds = %266, %153
  %268 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %66) #11, !dbg !1091
  %269 = icmp eq i32 %268, -1, !dbg !1093
  br i1 %269, label %270, label %279, !dbg !1094

; <label>:270:                                    ; preds = %267
  %271 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #15, !dbg !1095
  %272 = icmp eq i32 %271, 0, !dbg !1095
  %273 = tail call i32* @__errno_location() #18, !dbg !1098
  %274 = load i32, i32* %273, align 4, !tbaa !810
  br i1 %272, label %275, label %277, !dbg !1099

; <label>:275:                                    ; preds = %270
  %276 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !1098
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %274, i8* %276) #11, !dbg !1098
  unreachable, !dbg !1098

; <label>:277:                                    ; preds = %270
  %278 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %53) #11, !dbg !1100
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %274, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %278) #11, !dbg !1100
  unreachable, !dbg !1100

; <label>:279:                                    ; preds = %267
  ret i32 0, !dbg !1101
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
define void @base64_encode(i8* noalias nocapture readonly, i64, i8* noalias nocapture, i64) local_unnamed_addr #6 !dbg !1102 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1108, metadata !613), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1109, metadata !613), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1110, metadata !613), !dbg !1114
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1111, metadata !613), !dbg !1115
  %5 = and i64 %3, 3, !dbg !1116
  %6 = icmp eq i64 %5, 0, !dbg !1118
  br i1 %6, label %7, label %55, !dbg !1119

; <label>:7:                                      ; preds = %4
  %8 = lshr i64 %3, 2, !dbg !1120
  %9 = mul nuw i64 %8, 3, !dbg !1121
  %10 = icmp eq i64 %9, %1, !dbg !1122
  br i1 %10, label %11, label %55, !dbg !1123

; <label>:11:                                     ; preds = %7
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1124, metadata !613), !dbg !1131
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1129, metadata !613), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1130, metadata !613), !dbg !1135
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1130, metadata !613), !dbg !1135
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1129, metadata !613), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1124, metadata !613), !dbg !1131
  %12 = icmp eq i64 %1, 0, !dbg !1136
  br i1 %12, label %140, label %13, !dbg !1136

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1137

; <label>:14:                                     ; preds = %13, %14
  %15 = phi i8* [ %51, %14 ], [ %2, %13 ]
  %16 = phi i64 [ %52, %14 ], [ %1, %13 ]
  %17 = phi i8* [ %53, %14 ], [ %0, %13 ]
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1124, metadata !613), !dbg !1131
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1129, metadata !613), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1130, metadata !613), !dbg !1135
  %18 = load i8, i8* %17, align 1, !dbg !1137, !tbaa !877, !alias.scope !1139, !noalias !1142
  %19 = zext i8 %18 to i64, !dbg !1144
  %20 = lshr i64 %19, 2, !dbg !1145
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %20, !dbg !1146
  %22 = load i8, i8* %21, align 1, !dbg !1146, !tbaa !877, !noalias !1147
  %23 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1148
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1130, metadata !613), !dbg !1135
  store i8 %22, i8* %15, align 1, !dbg !1149, !tbaa !877, !alias.scope !1142, !noalias !1139
  %24 = zext i8 %18 to i32, !dbg !1150
  %25 = shl nuw nsw i32 %24, 4, !dbg !1151
  %26 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1152
  %27 = load i8, i8* %26, align 1, !dbg !1152, !tbaa !877, !alias.scope !1139, !noalias !1142
  %28 = zext i8 %27 to i32, !dbg !1153
  %29 = lshr i32 %28, 4, !dbg !1154
  %30 = and i32 %25, 48, !dbg !1155
  %31 = or i32 %29, %30, !dbg !1155
  %32 = zext i32 %31 to i64, !dbg !1156
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %32, !dbg !1156
  %34 = load i8, i8* %33, align 1, !dbg !1156, !tbaa !877, !noalias !1147
  %35 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !1157
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !1130, metadata !613), !dbg !1135
  store i8 %34, i8* %23, align 1, !dbg !1158, !tbaa !877, !alias.scope !1142, !noalias !1139
  %36 = shl nuw nsw i32 %28, 2, !dbg !1159
  %37 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1160
  %38 = load i8, i8* %37, align 1, !dbg !1160, !tbaa !877, !alias.scope !1139, !noalias !1142
  %39 = zext i8 %38 to i32, !dbg !1161
  %40 = lshr i32 %39, 6, !dbg !1162
  %41 = and i32 %36, 60, !dbg !1163
  %42 = or i32 %40, %41, !dbg !1163
  %43 = zext i32 %42 to i64, !dbg !1164
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %43, !dbg !1164
  %45 = load i8, i8* %44, align 1, !dbg !1164, !tbaa !877, !noalias !1147
  %46 = getelementptr inbounds i8, i8* %15, i64 3, !dbg !1165
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !1130, metadata !613), !dbg !1135
  store i8 %45, i8* %35, align 1, !dbg !1166, !tbaa !877, !alias.scope !1142, !noalias !1139
  %47 = and i8 %38, 63, !dbg !1167
  %48 = zext i8 %47 to i64, !dbg !1168
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %48, !dbg !1168
  %50 = load i8, i8* %49, align 1, !dbg !1168, !tbaa !877, !noalias !1147
  %51 = getelementptr inbounds i8, i8* %15, i64 4, !dbg !1169
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1130, metadata !613), !dbg !1135
  store i8 %50, i8* %46, align 1, !dbg !1170, !tbaa !877, !alias.scope !1142, !noalias !1139
  %52 = add i64 %16, -3, !dbg !1171
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1129, metadata !613), !dbg !1134
  %53 = getelementptr inbounds i8, i8* %17, i64 3, !dbg !1172
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1124, metadata !613), !dbg !1131
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1130, metadata !613), !dbg !1135
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1129, metadata !613), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1124, metadata !613), !dbg !1131
  %54 = icmp eq i64 %52, 0, !dbg !1136
  br i1 %54, label %140, label %14, !dbg !1136, !llvm.loop !1173

; <label>:55:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1111, metadata !613), !dbg !1115
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1110, metadata !613), !dbg !1114
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1109, metadata !613), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1108, metadata !613), !dbg !1112
  %56 = icmp ne i64 %1, 0, !dbg !1176
  %57 = icmp ne i64 %3, 0, !dbg !1177
  %58 = and i1 %56, %57, !dbg !1177
  br i1 %58, label %59, label %136, !dbg !1178

; <label>:59:                                     ; preds = %55
  br label %60, !dbg !1179

; <label>:60:                                     ; preds = %59, %129
  %61 = phi i64 [ %127, %129 ], [ %3, %59 ]
  %62 = phi i8* [ %130, %129 ], [ %2, %59 ]
  %63 = phi i64 [ %131, %129 ], [ %1, %59 ]
  %64 = phi i8* [ %135, %129 ], [ %0, %59 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1108, metadata !613), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1109, metadata !613), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1110, metadata !613), !dbg !1114
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1111, metadata !613), !dbg !1115
  %65 = load i8, i8* %64, align 1, !dbg !1179, !tbaa !877
  %66 = zext i8 %65 to i64, !dbg !1181
  %67 = lshr i64 %66, 2, !dbg !1182
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %67, !dbg !1183
  %69 = load i8, i8* %68, align 1, !dbg !1183, !tbaa !877
  %70 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1184
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1110, metadata !613), !dbg !1114
  store i8 %69, i8* %62, align 1, !dbg !1185, !tbaa !877
  %71 = icmp eq i64 %61, 1, !dbg !1186
  br i1 %71, label %140, label %72, !dbg !1188

; <label>:72:                                     ; preds = %60
  %73 = load i8, i8* %64, align 1, !dbg !1189, !tbaa !877
  %74 = zext i8 %73 to i32, !dbg !1190
  %75 = shl nuw nsw i32 %74, 4, !dbg !1191
  %76 = icmp ne i64 %63, 1, !dbg !1192
  br i1 %76, label %77, label %82, !dbg !1192

; <label>:77:                                     ; preds = %72
  %78 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !1193
  %79 = load i8, i8* %78, align 1, !dbg !1193, !tbaa !877
  %80 = zext i8 %79 to i32, !dbg !1194
  %81 = lshr i32 %80, 4, !dbg !1195
  br label %82, !dbg !1192

; <label>:82:                                     ; preds = %72, %77
  %83 = phi i32 [ %81, %77 ], [ 0, %72 ], !dbg !1192
  %84 = add nuw nsw i32 %83, %75, !dbg !1196
  %85 = and i32 %84, 63, !dbg !1197
  %86 = zext i32 %85 to i64, !dbg !1198
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %86, !dbg !1198
  %88 = load i8, i8* %87, align 1, !dbg !1198, !tbaa !877
  %89 = getelementptr inbounds i8, i8* %62, i64 2, !dbg !1199
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1110, metadata !613), !dbg !1114
  store i8 %88, i8* %70, align 1, !dbg !1200, !tbaa !877
  %90 = icmp eq i64 %61, 2, !dbg !1201
  br i1 %90, label %140, label %91, !dbg !1203

; <label>:91:                                     ; preds = %82
  br i1 %76, label %92, label %111, !dbg !1204

; <label>:92:                                     ; preds = %91
  %93 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !1205
  %94 = load i8, i8* %93, align 1, !dbg !1205, !tbaa !877
  %95 = zext i8 %94 to i32, !dbg !1206
  %96 = shl nuw nsw i32 %95, 2, !dbg !1207
  %97 = add i64 %63, -2, !dbg !1208
  tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !1109, metadata !613), !dbg !1113
  %98 = icmp eq i64 %97, 0, !dbg !1208
  br i1 %98, label %104, label %99, !dbg !1208

; <label>:99:                                     ; preds = %92
  %100 = getelementptr inbounds i8, i8* %64, i64 2, !dbg !1209
  %101 = load i8, i8* %100, align 1, !dbg !1209, !tbaa !877
  %102 = zext i8 %101 to i32, !dbg !1210
  %103 = lshr i32 %102, 6, !dbg !1211
  br label %104, !dbg !1208

; <label>:104:                                    ; preds = %92, %99
  %105 = phi i32 [ %103, %99 ], [ 0, %92 ], !dbg !1208
  %106 = add nuw nsw i32 %105, %96, !dbg !1212
  %107 = and i32 %106, 63, !dbg !1213
  %108 = zext i32 %107 to i64, !dbg !1214
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %108, !dbg !1214
  %110 = load i8, i8* %109, align 1, !dbg !1214, !tbaa !877
  br label %111, !dbg !1204

; <label>:111:                                    ; preds = %91, %104
  %112 = phi i64 [ %97, %104 ], [ 0, %91 ]
  %113 = phi i8 [ %110, %104 ], [ 61, %91 ], !dbg !1204
  tail call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !1109, metadata !613), !dbg !1113
  %114 = getelementptr inbounds i8, i8* %62, i64 3, !dbg !1215
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !1110, metadata !613), !dbg !1114
  store i8 %113, i8* %89, align 1, !dbg !1216, !tbaa !877
  %115 = icmp eq i64 %61, 3, !dbg !1217
  br i1 %115, label %140, label %116, !dbg !1219

; <label>:116:                                    ; preds = %111
  %117 = icmp ne i64 %112, 0, !dbg !1220
  br i1 %117, label %118, label %125, !dbg !1220

; <label>:118:                                    ; preds = %116
  %119 = getelementptr inbounds i8, i8* %64, i64 2, !dbg !1221
  %120 = load i8, i8* %119, align 1, !dbg !1221, !tbaa !877
  %121 = and i8 %120, 63, !dbg !1222
  %122 = zext i8 %121 to i64, !dbg !1223
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %122, !dbg !1223
  %124 = load i8, i8* %123, align 1, !dbg !1223, !tbaa !877
  br label %125, !dbg !1220

; <label>:125:                                    ; preds = %116, %118
  %126 = phi i8 [ %124, %118 ], [ 61, %116 ], !dbg !1220
  tail call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1110, metadata !613), !dbg !1114
  store i8 %126, i8* %114, align 1, !dbg !1224, !tbaa !877
  %127 = add i64 %61, -4, !dbg !1225
  tail call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1111, metadata !613), !dbg !1115
  %128 = icmp eq i64 %127, 0, !dbg !1225
  br i1 %128, label %140, label %129, !dbg !1227

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds i8, i8* %62, i64 4, !dbg !1228
  %131 = add i64 %112, -1, !dbg !1229
  tail call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1109, metadata !613), !dbg !1113
  %132 = icmp eq i64 %131, 0, !dbg !1231
  %133 = xor i1 %117, true, !dbg !1231
  %134 = or i1 %132, %133, !dbg !1231
  %135 = getelementptr inbounds i8, i8* %64, i64 3, !dbg !1233
  tail call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !1108, metadata !613), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1111, metadata !613), !dbg !1115
  tail call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1110, metadata !613), !dbg !1114
  br i1 %134, label %138, label %60, !dbg !1178, !llvm.loop !1234

; <label>:136:                                    ; preds = %55
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1111, metadata !613), !dbg !1115
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1110, metadata !613), !dbg !1114
  %137 = icmp eq i64 %3, 0, !dbg !1236
  br i1 %137, label %140, label %138, !dbg !1238

; <label>:138:                                    ; preds = %129, %136
  %139 = phi i8* [ %2, %136 ], [ %130, %129 ]
  store i8 0, i8* %139, align 1, !dbg !1239, !tbaa !877
  br label %140, !dbg !1240

; <label>:140:                                    ; preds = %60, %82, %111, %125, %14, %11, %136, %138
  ret void, !dbg !1241
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @base64_encode_alloc(i8* nocapture readonly, i64, i8** nocapture) local_unnamed_addr #6 !dbg !1242 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1246, metadata !613), !dbg !1250
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1247, metadata !613), !dbg !1251
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1248, metadata !613), !dbg !1252
  %4 = add i64 %1, 2, !dbg !1253
  %5 = udiv i64 %4, 3, !dbg !1253
  %6 = shl i64 %5, 2, !dbg !1253
  %7 = or i64 %6, 1, !dbg !1254
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1249, metadata !613), !dbg !1255
  %8 = icmp ult i64 %7, %1, !dbg !1256
  br i1 %8, label %9, label %10, !dbg !1258

; <label>:9:                                      ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !1259, !tbaa !620
  br label %14, !dbg !1261

; <label>:10:                                     ; preds = %3
  %11 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !1262
  store i8* %11, i8** %2, align 8, !dbg !1263, !tbaa !620
  %12 = icmp eq i8* %11, null, !dbg !1264
  br i1 %12, label %14, label %13, !dbg !1266

; <label>:13:                                     ; preds = %10
  tail call void @base64_encode(i8* %0, i64 %1, i8* nonnull %11, i64 %7), !dbg !1267
  br label %14, !dbg !1268

; <label>:14:                                     ; preds = %10, %13, %9
  %15 = phi i64 [ 0, %9 ], [ %6, %13 ], [ %7, %10 ]
  ret i64 %15, !dbg !1269
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define zeroext i1 @isbase64(i8 signext) local_unnamed_addr #9 !dbg !1270 {
  tail call void @llvm.dbg.value(metadata i8 %0, i64 0, metadata !1274, metadata !613), !dbg !1275
  %2 = zext i8 %0 to i64, !dbg !1276
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %2, !dbg !1276
  %4 = load i8, i8* %3, align 1, !dbg !1276, !tbaa !877
  %5 = icmp sgt i8 %4, -1, !dbg !1277
  ret i1 %5, !dbg !1278
}

; Function Attrs: nounwind sspstrong uwtable
define void @base64_decode_ctx_init(%struct.base64_decode_context* nocapture) local_unnamed_addr #6 !dbg !1279 {
  tail call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, i64 0, metadata !1288, metadata !613), !dbg !1289
  %2 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0, !dbg !1290
  store i32 0, i32* %2, align 4, !dbg !1291, !tbaa !1292
  ret void, !dbg !1294
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @base64_decode_ctx(%struct.base64_decode_context*, i8* noalias, i64, i8* noalias, i64* nocapture) local_unnamed_addr #6 !dbg !1295 {
  tail call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, i64 0, metadata !1299, metadata !613), !dbg !1313
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1300, metadata !613), !dbg !1314
  %6 = ptrtoint i8* %1 to i64
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1301, metadata !613), !dbg !1315
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1302, metadata !613), !dbg !1316
  tail call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !1303, metadata !613), !dbg !1317
  %7 = load i64, i64* %4, align 8, !dbg !1318, !tbaa !866
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1304, metadata !613), !dbg !1319
  %8 = icmp ne %struct.base64_decode_context* %0, null, !dbg !1320
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1306, metadata !613), !dbg !1321
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1307, metadata !613), !dbg !1322
  %9 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0
  br i1 %8, label %10, label %14, !dbg !1323

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %9, align 4, !dbg !1324, !tbaa !1292
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !1307, metadata !613), !dbg !1322
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1301, metadata !613), !dbg !1315
  %12 = icmp eq i64 %2, 0, !dbg !1327
  %13 = icmp ne i32 %11, 0, !dbg !1328
  br label %14, !dbg !1328

; <label>:14:                                     ; preds = %5, %10
  %15 = phi i1 [ %13, %10 ], [ false, %5 ]
  %16 = phi i1 [ %12, %10 ], [ false, %5 ]
  %17 = or i1 %15, %16
  %18 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 1, i64 0
  %19 = xor i1 %8, true
  br label %20, !dbg !1329

; <label>:20:                                     ; preds = %288, %14
  %21 = phi i64 [ %6, %14 ], [ %289, %288 ]
  %22 = phi i64 [ %2, %14 ], [ %290, %288 ]
  %23 = phi i8* [ %3, %14 ], [ %291, %288 ]
  %24 = phi i64 [ %7, %14 ], [ %292, %288 ]
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1304, metadata !613), !dbg !1319
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1308, metadata !613), !dbg !1330
  %25 = icmp ult i64 %22, 2, !dbg !1331
  %26 = or i1 %17, %25, !dbg !1348
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1304, metadata !613), !dbg !1319
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1308, metadata !613), !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1301, metadata !613), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1339, metadata !613), !dbg !1349
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1342, metadata !613), !dbg !1350
  br i1 %26, label %121, label %27, !dbg !1348

; <label>:27:                                     ; preds = %20
  br label %28, !dbg !1351

; <label>:28:                                     ; preds = %27, %114
  %29 = phi i64 [ %118, %114 ], [ %21, %27 ]
  %30 = phi i64 [ %115, %114 ], [ %24, %27 ]
  %31 = phi i8* [ %116, %114 ], [ %23, %27 ]
  %32 = phi i64 [ %119, %114 ], [ %22, %27 ]
  %33 = inttoptr i64 %29 to i8*, !dbg !1351
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1301, metadata !613), !dbg !1315
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !1342, metadata !613), !dbg !1350
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1304, metadata !613), !dbg !1319
  %34 = load i8, i8* %33, align 1, !dbg !1352, !tbaa !877, !alias.scope !1354
  tail call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1274, metadata !613), !dbg !1357
  %35 = zext i8 %34 to i64, !dbg !1359
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %35, !dbg !1359
  %37 = load i8, i8* %36, align 1, !dbg !1359, !tbaa !877, !noalias !1354
  %38 = icmp sgt i8 %37, -1, !dbg !1360
  br i1 %38, label %39, label %130, !dbg !1361

; <label>:39:                                     ; preds = %28
  %40 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !1362
  %41 = load i8, i8* %40, align 1, !dbg !1362, !tbaa !877, !alias.scope !1354
  tail call void @llvm.dbg.value(metadata i8 %41, i64 0, metadata !1274, metadata !613), !dbg !1363
  %42 = zext i8 %41 to i64, !dbg !1365
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %42, !dbg !1365
  %44 = load i8, i8* %43, align 1, !dbg !1365, !tbaa !877, !noalias !1354
  %45 = icmp sgt i8 %44, -1, !dbg !1366
  br i1 %45, label %46, label %130, !dbg !1367

; <label>:46:                                     ; preds = %39
  %47 = icmp eq i64 %30, 0, !dbg !1368
  br i1 %47, label %57, label %48, !dbg !1370

; <label>:48:                                     ; preds = %46
  %49 = sext i8 %37 to i32, !dbg !1371
  %50 = shl nsw i32 %49, 2, !dbg !1373
  %51 = sext i8 %44 to i32, !dbg !1374
  %52 = lshr i32 %51, 4, !dbg !1375
  %53 = or i32 %52, %50, !dbg !1376
  %54 = trunc i32 %53 to i8, !dbg !1377
  %55 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1378
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !1342, metadata !613), !dbg !1350
  store i8 %54, i8* %31, align 1, !dbg !1379, !tbaa !877, !noalias !1354
  %56 = add i64 %30, -1, !dbg !1380
  br label %57, !dbg !1381

; <label>:57:                                     ; preds = %48, %46
  %58 = phi i64 [ 0, %46 ], [ %56, %48 ]
  %59 = phi i8* [ %31, %46 ], [ %55, %48 ]
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1342, metadata !613), !dbg !1350
  %60 = icmp eq i64 %32, 2, !dbg !1382
  br i1 %60, label %130, label %61, !dbg !1384

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !1385
  %63 = load i8, i8* %62, align 1, !dbg !1385, !tbaa !877, !alias.scope !1354
  %64 = icmp eq i8 %63, 61, !dbg !1387
  br i1 %64, label %65, label %71, !dbg !1388

; <label>:65:                                     ; preds = %61
  %66 = icmp eq i64 %32, 4, !dbg !1389
  br i1 %66, label %67, label %130, !dbg !1392

; <label>:67:                                     ; preds = %65
  %68 = getelementptr inbounds i8, i8* %33, i64 3, !dbg !1393
  %69 = load i8, i8* %68, align 1, !dbg !1393, !tbaa !877, !alias.scope !1354
  %70 = icmp eq i8 %69, 61, !dbg !1395
  br i1 %70, label %109, label %130, !dbg !1396

; <label>:71:                                     ; preds = %61
  tail call void @llvm.dbg.value(metadata i8 %63, i64 0, metadata !1274, metadata !613), !dbg !1397
  %72 = zext i8 %63 to i64, !dbg !1401
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %72, !dbg !1401
  %74 = load i8, i8* %73, align 1, !dbg !1401, !tbaa !877, !noalias !1354
  %75 = icmp sgt i8 %74, -1, !dbg !1402
  br i1 %75, label %76, label %130, !dbg !1403

; <label>:76:                                     ; preds = %71
  %77 = icmp eq i64 %58, 0, !dbg !1404
  br i1 %77, label %87, label %78, !dbg !1406

; <label>:78:                                     ; preds = %76
  %79 = sext i8 %44 to i32, !dbg !1407
  %80 = shl nsw i32 %79, 4, !dbg !1409
  %81 = sext i8 %74 to i32, !dbg !1410
  %82 = lshr i32 %81, 2, !dbg !1411
  %83 = or i32 %82, %80, !dbg !1412
  %84 = trunc i32 %83 to i8, !dbg !1413
  %85 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1414
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1342, metadata !613), !dbg !1350
  store i8 %84, i8* %59, align 1, !dbg !1415, !tbaa !877, !noalias !1354
  %86 = add i64 %58, -1, !dbg !1416
  br label %87, !dbg !1417

; <label>:87:                                     ; preds = %78, %76
  %88 = phi i64 [ 0, %76 ], [ %86, %78 ]
  %89 = phi i8* [ %59, %76 ], [ %85, %78 ]
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1342, metadata !613), !dbg !1350
  %90 = icmp eq i64 %32, 3, !dbg !1418
  br i1 %90, label %130, label %91, !dbg !1420

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds i8, i8* %33, i64 3, !dbg !1421
  %93 = load i8, i8* %92, align 1, !dbg !1421, !tbaa !877, !alias.scope !1354
  %94 = icmp eq i8 %93, 61, !dbg !1423
  br i1 %94, label %95, label %97, !dbg !1424

; <label>:95:                                     ; preds = %91
  %96 = icmp eq i64 %32, 4, !dbg !1425
  br i1 %96, label %109, label %130, !dbg !1428

; <label>:97:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i8 %93, i64 0, metadata !1274, metadata !613), !dbg !1429
  %98 = zext i8 %93 to i64, !dbg !1433
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %98, !dbg !1433
  %100 = load i8, i8* %99, align 1, !dbg !1433, !tbaa !877, !noalias !1354
  %101 = icmp sgt i8 %100, -1, !dbg !1434
  br i1 %101, label %102, label %130, !dbg !1435

; <label>:102:                                    ; preds = %97
  %103 = icmp eq i64 %88, 0, !dbg !1436
  br i1 %103, label %114, label %104, !dbg !1438

; <label>:104:                                    ; preds = %102
  %105 = shl i8 %74, 6, !dbg !1439
  %106 = or i8 %100, %105, !dbg !1441
  %107 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1442
  tail call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !1342, metadata !613), !dbg !1350
  store i8 %106, i8* %89, align 1, !dbg !1443, !tbaa !877, !noalias !1354
  %108 = add i64 %88, -1, !dbg !1444
  br label %114, !dbg !1445

; <label>:109:                                    ; preds = %95, %67
  %110 = phi i64 [ %88, %95 ], [ %58, %67 ]
  %111 = phi i8* [ %89, %95 ], [ %59, %67 ]
  tail call void @llvm.dbg.value(metadata i8* %116, i64 0, metadata !1342, metadata !613), !dbg !1350
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1300, metadata !613), !dbg !1314
  %112 = getelementptr inbounds i8, i8* %33, i64 4, !dbg !1446
  tail call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !1300, metadata !613), !dbg !1314
  %113 = ptrtoint i8* %112 to i64, !dbg !1446
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1301, metadata !613), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !1301, metadata !613), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %115, i64 0, metadata !1304, metadata !613), !dbg !1319
  tail call void @llvm.dbg.value(metadata i64 %115, i64 0, metadata !1308, metadata !613), !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !1301, metadata !613), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !1339, metadata !613), !dbg !1349
  tail call void @llvm.dbg.value(metadata i8* %116, i64 0, metadata !1342, metadata !613), !dbg !1350
  br label %121, !dbg !1447

; <label>:114:                                    ; preds = %104, %102
  %115 = phi i64 [ %88, %102 ], [ %108, %104 ]
  %116 = phi i8* [ %89, %102 ], [ %107, %104 ]
  tail call void @llvm.dbg.value(metadata i8* %116, i64 0, metadata !1342, metadata !613), !dbg !1350
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1300, metadata !613), !dbg !1314
  %117 = getelementptr inbounds i8, i8* %33, i64 4, !dbg !1446
  tail call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !1300, metadata !613), !dbg !1314
  %118 = ptrtoint i8* %117 to i64, !dbg !1446
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1301, metadata !613), !dbg !1315
  %119 = add i64 %32, -4, !dbg !1448
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !1301, metadata !613), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %115, i64 0, metadata !1304, metadata !613), !dbg !1319
  tail call void @llvm.dbg.value(metadata i64 %115, i64 0, metadata !1308, metadata !613), !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !1301, metadata !613), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !1339, metadata !613), !dbg !1349
  tail call void @llvm.dbg.value(metadata i8* %116, i64 0, metadata !1342, metadata !613), !dbg !1350
  %120 = icmp ult i64 %119, 2, !dbg !1331
  br i1 %120, label %121, label %28, !dbg !1447, !llvm.loop !1449

; <label>:121:                                    ; preds = %114, %109, %20
  %122 = phi i64 [ %21, %20 ], [ %113, %109 ], [ %118, %114 ]
  %123 = phi i64 [ %22, %20 ], [ 0, %109 ], [ %119, %114 ]
  %124 = phi i8* [ %23, %20 ], [ %111, %109 ], [ %116, %114 ]
  %125 = phi i64 [ %24, %20 ], [ %110, %109 ], [ %115, %114 ]
  tail call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1308, metadata !613), !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1301, metadata !613), !dbg !1315
  %126 = icmp eq i64 %123, 0, !dbg !1452
  %127 = xor i1 %126, true, !dbg !1454
  %128 = or i1 %16, %127, !dbg !1454
  br i1 %128, label %129, label %293, !dbg !1454

; <label>:129:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1301, metadata !613), !dbg !1315
  br i1 %126, label %144, label %130, !dbg !1455

; <label>:130:                                    ; preds = %97, %87, %71, %57, %28, %39, %95, %67, %65, %129
  %131 = phi i64 [ %122, %129 ], [ %29, %65 ], [ %29, %67 ], [ %29, %95 ], [ %29, %39 ], [ %29, %28 ], [ %29, %57 ], [ %29, %71 ], [ %29, %87 ], [ %29, %97 ]
  %132 = phi i64 [ %123, %129 ], [ %32, %65 ], [ 4, %67 ], [ %32, %95 ], [ %32, %97 ], [ 3, %87 ], [ %32, %71 ], [ 2, %57 ], [ %32, %28 ], [ %32, %39 ]
  %133 = phi i8* [ %124, %129 ], [ %59, %65 ], [ %59, %67 ], [ %89, %95 ], [ %89, %97 ], [ %89, %87 ], [ %59, %71 ], [ %59, %57 ], [ %31, %28 ], [ %31, %39 ]
  %134 = phi i64 [ %125, %129 ], [ %58, %65 ], [ %58, %67 ], [ %88, %95 ], [ %88, %97 ], [ %88, %87 ], [ %58, %71 ], [ %58, %57 ], [ %30, %28 ], [ %30, %39 ]
  %135 = phi i64 [ %125, %129 ], [ %30, %65 ], [ %30, %67 ], [ %30, %95 ], [ %30, %39 ], [ %30, %28 ], [ %30, %57 ], [ %30, %71 ], [ %30, %87 ], [ %30, %97 ]
  %136 = inttoptr i64 %131 to i8*, !dbg !1457
  tail call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !1300, metadata !613), !dbg !1314
  %137 = load i8, i8* %136, align 1, !dbg !1458, !tbaa !877
  %138 = icmp ne i8 %137, 10, !dbg !1459
  %139 = or i1 %138, %19, !dbg !1460
  br i1 %139, label %144, label %140, !dbg !1460

; <label>:140:                                    ; preds = %130
  %141 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1461
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1300, metadata !613), !dbg !1314
  %142 = ptrtoint i8* %141 to i64, !dbg !1461
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1301, metadata !613), !dbg !1315
  %143 = add i64 %132, -1, !dbg !1463
  tail call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1301, metadata !613), !dbg !1315
  br label %288

; <label>:144:                                    ; preds = %130, %129
  %145 = phi i64 [ %131, %130 ], [ %122, %129 ]
  %146 = phi i64 [ %132, %130 ], [ 0, %129 ]
  %147 = phi i8* [ %133, %130 ], [ %124, %129 ]
  %148 = phi i64 [ %134, %130 ], [ %125, %129 ]
  %149 = phi i64 [ %135, %130 ], [ %125, %129 ]
  tail call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1304, metadata !613), !dbg !1319
  tail call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !1302, metadata !613), !dbg !1316
  %150 = sub i64 %148, %149, !dbg !1464
  %151 = getelementptr inbounds i8, i8* %147, i64 %150, !dbg !1464
  tail call void @llvm.dbg.value(metadata i8* %151, i64 0, metadata !1302, metadata !613), !dbg !1316
  tail call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1304, metadata !613), !dbg !1319
  %152 = inttoptr i64 %145 to i8*, !dbg !1465
  tail call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !1300, metadata !613), !dbg !1314
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1301, metadata !613), !dbg !1315
  %153 = getelementptr inbounds i8, i8* %152, i64 %146, !dbg !1466
  tail call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !1310, metadata !613), !dbg !1467
  br i1 %8, label %154, label %193, !dbg !1468

; <label>:154:                                    ; preds = %144
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1300, metadata !613), !dbg !1314
  tail call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, i64 0, metadata !1469, metadata !613) #11, !dbg !1485
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1475, metadata !613) #11, !dbg !1488
  tail call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !1476, metadata !613) #11, !dbg !1489
  %155 = load i32, i32* %9, align 4, !dbg !1490, !tbaa !1292, !noalias !1492
  switch i32 %155, label %167 [
    i32 4, label %156
    i32 0, label %157
  ], !dbg !1495

; <label>:156:                                    ; preds = %154
  store i32 0, i32* %9, align 4, !dbg !1496, !tbaa !1292, !noalias !1492
  br label %157, !dbg !1497

; <label>:157:                                    ; preds = %156, %154
  tail call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !1478, metadata !613) #11, !dbg !1498
  %158 = ptrtoint i8* %153 to i64, !dbg !1499
  %159 = sub i64 %158, %145, !dbg !1499
  %160 = icmp sgt i64 %159, 3, !dbg !1501
  br i1 %160, label %161, label %167, !dbg !1502

; <label>:161:                                    ; preds = %157
  %162 = tail call i8* @memchr(i8* %152, i32 10, i64 4) #15, !dbg !1503
  %163 = icmp eq i8* %162, null, !dbg !1504
  br i1 %163, label %164, label %167, !dbg !1505

; <label>:164:                                    ; preds = %161
  %165 = getelementptr inbounds i8, i8* %152, i64 4, !dbg !1506
  %166 = ptrtoint i8* %165 to i64, !dbg !1506
  tail call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !1312, metadata !613), !dbg !1508
  tail call void @llvm.dbg.value(metadata i64 %195, i64 0, metadata !1301, metadata !613), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %195, i64 0, metadata !1301, metadata !613), !dbg !1315
  tail call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !1338, metadata !613), !dbg !1509
  tail call void @llvm.dbg.value(metadata i64 %195, i64 0, metadata !1339, metadata !613), !dbg !1512
  tail call void @llvm.dbg.value(metadata i8* %151, i64 0, metadata !1342, metadata !613), !dbg !1513
  br label %204, !dbg !1514

; <label>:167:                                    ; preds = %154, %161, %157
  %168 = phi i32 [ 0, %161 ], [ 0, %157 ], [ %155, %154 ]
  tail call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !1481, metadata !613) #11, !dbg !1515
  tail call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !1481, metadata !613) #11, !dbg !1515
  %169 = icmp sgt i64 %146, 0, !dbg !1516
  br i1 %169, label %170, label %188, !dbg !1517

; <label>:170:                                    ; preds = %167
  br label %171, !dbg !1518

; <label>:171:                                    ; preds = %170, %179
  %172 = phi i32 [ %168, %170 ], [ %180, %179 ]
  %173 = phi i8* [ %152, %170 ], [ %176, %179 ]
  br label %174, !dbg !1518

; <label>:174:                                    ; preds = %171, %186
  %175 = phi i8* [ %176, %186 ], [ %173, %171 ]
  tail call void @llvm.dbg.value(metadata i8* %175, i64 0, metadata !1481, metadata !613) #11, !dbg !1515
  %176 = getelementptr inbounds i8, i8* %175, i64 1, !dbg !1518
  tail call void @llvm.dbg.value(metadata i8* %176, i64 0, metadata !1481, metadata !613) #11, !dbg !1515
  %177 = load i8, i8* %175, align 1, !dbg !1519, !tbaa !877
  tail call void @llvm.dbg.value(metadata i8 %177, i64 0, metadata !1483, metadata !613) #11, !dbg !1520
  %178 = icmp eq i8 %177, 10, !dbg !1521
  br i1 %178, label %186, label %179, !dbg !1523

; <label>:179:                                    ; preds = %174
  %180 = add i32 %172, 1, !dbg !1524
  store i32 %180, i32* %9, align 4, !dbg !1524, !tbaa !1292, !noalias !1492
  %181 = zext i32 %172 to i64, !dbg !1526
  %182 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 1, i64 %181, !dbg !1526
  store i8 %177, i8* %182, align 1, !dbg !1527, !tbaa !877, !noalias !1492
  %183 = icmp ne i32 %180, 4, !dbg !1528
  %184 = icmp ult i8* %176, %153, !dbg !1516
  %185 = and i1 %183, %184, !dbg !1530
  tail call void @llvm.dbg.value(metadata i8* %176, i64 0, metadata !1481, metadata !613) #11, !dbg !1515
  br i1 %185, label %171, label %188, !dbg !1530, !llvm.loop !1531

; <label>:186:                                    ; preds = %174
  tail call void @llvm.dbg.value(metadata i8* %176, i64 0, metadata !1481, metadata !613) #11, !dbg !1515
  %187 = icmp ult i8* %176, %153, !dbg !1516
  br i1 %187, label %174, label %188, !dbg !1517, !llvm.loop !1531

; <label>:188:                                    ; preds = %186, %179, %167
  %189 = phi i32 [ %168, %167 ], [ %172, %186 ], [ %180, %179 ], !dbg !1534
  %190 = phi i8* [ %152, %167 ], [ %176, %179 ], [ %176, %186 ]
  tail call void @llvm.dbg.value(metadata i8* %190, i64 0, metadata !1481, metadata !613) #11, !dbg !1515
  %191 = ptrtoint i8* %190 to i64, !dbg !1535
  %192 = zext i32 %189 to i64, !dbg !1536
  br label %193

; <label>:193:                                    ; preds = %188, %144
  %194 = phi i64 [ %145, %144 ], [ %191, %188 ]
  %195 = phi i64 [ %146, %144 ], [ %192, %188 ]
  %196 = phi i8* [ %152, %144 ], [ %18, %188 ]
  tail call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !1312, metadata !613), !dbg !1508
  tail call void @llvm.dbg.value(metadata i64 %195, i64 0, metadata !1301, metadata !613), !dbg !1315
  %197 = icmp eq i64 %195, 0, !dbg !1537
  br i1 %197, label %293, label %198, !dbg !1539

; <label>:198:                                    ; preds = %193
  %199 = icmp ugt i64 %195, 3, !dbg !1540
  %200 = or i1 %16, %199, !dbg !1541
  %201 = or i1 %200, %19, !dbg !1541
  br i1 %201, label %202, label %293, !dbg !1541

; <label>:202:                                    ; preds = %198
  tail call void @llvm.dbg.value(metadata i64 %195, i64 0, metadata !1301, metadata !613), !dbg !1315
  tail call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !1338, metadata !613), !dbg !1509
  tail call void @llvm.dbg.value(metadata i64 %195, i64 0, metadata !1339, metadata !613), !dbg !1512
  tail call void @llvm.dbg.value(metadata i8* %151, i64 0, metadata !1342, metadata !613), !dbg !1513
  %203 = icmp ult i64 %195, 2, !dbg !1542
  br i1 %203, label %293, label %204, !dbg !1514

; <label>:204:                                    ; preds = %164, %202
  %205 = phi i8* [ %152, %164 ], [ %196, %202 ]
  %206 = phi i64 [ 4, %164 ], [ %195, %202 ]
  %207 = phi i64 [ %166, %164 ], [ %194, %202 ]
  %208 = load i8, i8* %205, align 1, !dbg !1543, !tbaa !877, !alias.scope !1544
  tail call void @llvm.dbg.value(metadata i8 %208, i64 0, metadata !1274, metadata !613), !dbg !1547
  %209 = zext i8 %208 to i64, !dbg !1549
  %210 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %209, !dbg !1549
  %211 = load i8, i8* %210, align 1, !dbg !1549, !tbaa !877, !noalias !1544
  %212 = icmp sgt i8 %211, -1, !dbg !1550
  br i1 %212, label %213, label %293, !dbg !1551

; <label>:213:                                    ; preds = %204
  %214 = getelementptr inbounds i8, i8* %205, i64 1, !dbg !1552
  %215 = load i8, i8* %214, align 1, !dbg !1552, !tbaa !877, !alias.scope !1544
  tail call void @llvm.dbg.value(metadata i8 %215, i64 0, metadata !1274, metadata !613), !dbg !1553
  %216 = zext i8 %215 to i64, !dbg !1555
  %217 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %216, !dbg !1555
  %218 = load i8, i8* %217, align 1, !dbg !1555, !tbaa !877, !noalias !1544
  %219 = icmp sgt i8 %218, -1, !dbg !1556
  br i1 %219, label %220, label %293, !dbg !1557

; <label>:220:                                    ; preds = %213
  %221 = icmp eq i64 %149, 0, !dbg !1558
  br i1 %221, label %231, label %222, !dbg !1559

; <label>:222:                                    ; preds = %220
  %223 = sext i8 %211 to i32, !dbg !1560
  %224 = shl nsw i32 %223, 2, !dbg !1561
  %225 = sext i8 %218 to i32, !dbg !1562
  %226 = lshr i32 %225, 4, !dbg !1563
  %227 = or i32 %226, %224, !dbg !1564
  %228 = trunc i32 %227 to i8, !dbg !1565
  %229 = getelementptr inbounds i8, i8* %151, i64 1, !dbg !1566
  tail call void @llvm.dbg.value(metadata i8* %229, i64 0, metadata !1342, metadata !613), !dbg !1513
  store i8 %228, i8* %151, align 1, !dbg !1567, !tbaa !877, !noalias !1544
  %230 = add i64 %149, -1, !dbg !1568
  br label %231, !dbg !1569

; <label>:231:                                    ; preds = %222, %220
  %232 = phi i64 [ 0, %220 ], [ %230, %222 ]
  %233 = phi i8* [ %151, %220 ], [ %229, %222 ]
  tail call void @llvm.dbg.value(metadata i8* %233, i64 0, metadata !1342, metadata !613), !dbg !1513
  %234 = icmp eq i64 %206, 2, !dbg !1570
  br i1 %234, label %293, label %235, !dbg !1571

; <label>:235:                                    ; preds = %231
  %236 = getelementptr inbounds i8, i8* %205, i64 2, !dbg !1572
  %237 = load i8, i8* %236, align 1, !dbg !1572, !tbaa !877, !alias.scope !1544
  %238 = icmp eq i8 %237, 61, !dbg !1573
  br i1 %238, label %239, label %245, !dbg !1574

; <label>:239:                                    ; preds = %235
  %240 = icmp eq i64 %206, 4, !dbg !1575
  br i1 %240, label %241, label %293, !dbg !1576

; <label>:241:                                    ; preds = %239
  %242 = getelementptr inbounds i8, i8* %205, i64 3, !dbg !1577
  %243 = load i8, i8* %242, align 1, !dbg !1577, !tbaa !877, !alias.scope !1544
  %244 = icmp eq i8 %243, 61, !dbg !1578
  br i1 %244, label %283, label %293, !dbg !1579

; <label>:245:                                    ; preds = %235
  tail call void @llvm.dbg.value(metadata i8 %237, i64 0, metadata !1274, metadata !613), !dbg !1580
  %246 = zext i8 %237 to i64, !dbg !1582
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %246, !dbg !1582
  %248 = load i8, i8* %247, align 1, !dbg !1582, !tbaa !877, !noalias !1544
  %249 = icmp sgt i8 %248, -1, !dbg !1583
  br i1 %249, label %250, label %293, !dbg !1584

; <label>:250:                                    ; preds = %245
  %251 = icmp eq i64 %232, 0, !dbg !1585
  br i1 %251, label %261, label %252, !dbg !1586

; <label>:252:                                    ; preds = %250
  %253 = sext i8 %218 to i32, !dbg !1587
  %254 = shl nsw i32 %253, 4, !dbg !1588
  %255 = sext i8 %248 to i32, !dbg !1589
  %256 = lshr i32 %255, 2, !dbg !1590
  %257 = or i32 %256, %254, !dbg !1591
  %258 = trunc i32 %257 to i8, !dbg !1592
  %259 = getelementptr inbounds i8, i8* %233, i64 1, !dbg !1593
  tail call void @llvm.dbg.value(metadata i8* %259, i64 0, metadata !1342, metadata !613), !dbg !1513
  store i8 %258, i8* %233, align 1, !dbg !1594, !tbaa !877, !noalias !1544
  %260 = add i64 %232, -1, !dbg !1595
  br label %261, !dbg !1596

; <label>:261:                                    ; preds = %252, %250
  %262 = phi i64 [ 0, %250 ], [ %260, %252 ]
  %263 = phi i8* [ %233, %250 ], [ %259, %252 ]
  tail call void @llvm.dbg.value(metadata i8* %263, i64 0, metadata !1342, metadata !613), !dbg !1513
  %264 = icmp eq i64 %206, 3, !dbg !1597
  br i1 %264, label %293, label %265, !dbg !1598

; <label>:265:                                    ; preds = %261
  %266 = getelementptr inbounds i8, i8* %205, i64 3, !dbg !1599
  %267 = load i8, i8* %266, align 1, !dbg !1599, !tbaa !877, !alias.scope !1544
  %268 = icmp eq i8 %267, 61, !dbg !1600
  br i1 %268, label %269, label %271, !dbg !1601

; <label>:269:                                    ; preds = %265
  %270 = icmp eq i64 %206, 4, !dbg !1602
  br i1 %270, label %283, label %293, !dbg !1603

; <label>:271:                                    ; preds = %265
  tail call void @llvm.dbg.value(metadata i8 %267, i64 0, metadata !1274, metadata !613), !dbg !1604
  %272 = zext i8 %267 to i64, !dbg !1606
  %273 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %272, !dbg !1606
  %274 = load i8, i8* %273, align 1, !dbg !1606, !tbaa !877, !noalias !1544
  %275 = icmp sgt i8 %274, -1, !dbg !1607
  br i1 %275, label %276, label %293, !dbg !1608

; <label>:276:                                    ; preds = %271
  %277 = icmp eq i64 %262, 0, !dbg !1609
  br i1 %277, label %283, label %278, !dbg !1610

; <label>:278:                                    ; preds = %276
  %279 = shl i8 %248, 6, !dbg !1611
  %280 = or i8 %274, %279, !dbg !1612
  %281 = getelementptr inbounds i8, i8* %263, i64 1, !dbg !1613
  tail call void @llvm.dbg.value(metadata i8* %281, i64 0, metadata !1342, metadata !613), !dbg !1513
  store i8 %280, i8* %263, align 1, !dbg !1614, !tbaa !877, !noalias !1544
  %282 = add i64 %262, -1, !dbg !1615
  br label %283, !dbg !1616

; <label>:283:                                    ; preds = %278, %276, %269, %241
  %284 = phi i64 [ %232, %241 ], [ %262, %269 ], [ %262, %276 ], [ %282, %278 ]
  %285 = phi i8* [ %233, %241 ], [ %263, %269 ], [ %263, %276 ], [ %281, %278 ]
  tail call void @llvm.dbg.value(metadata i8* %285, i64 0, metadata !1342, metadata !613), !dbg !1513
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1300, metadata !1617), !dbg !1314
  %286 = ptrtoint i8* %153 to i64, !dbg !1618
  %287 = sub i64 %286, %207, !dbg !1618
  tail call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1301, metadata !613), !dbg !1315
  br label %288, !dbg !1329

; <label>:288:                                    ; preds = %283, %140
  %289 = phi i64 [ %207, %283 ], [ %142, %140 ]
  %290 = phi i64 [ %287, %283 ], [ %143, %140 ]
  %291 = phi i8* [ %285, %283 ], [ %133, %140 ]
  %292 = phi i64 [ %284, %283 ], [ %134, %140 ]
  br label %20, !dbg !1319, !llvm.loop !1619

; <label>:293:                                    ; preds = %271, %269, %261, %245, %241, %239, %231, %204, %213, %202, %193, %198, %121
  %294 = phi i64 [ %125, %121 ], [ %149, %193 ], [ %149, %198 ], [ %262, %271 ], [ %262, %269 ], [ %262, %261 ], [ %232, %245 ], [ %232, %241 ], [ %232, %239 ], [ %232, %231 ], [ %149, %204 ], [ %149, %213 ], [ %149, %202 ]
  %295 = phi i64 [ %123, %121 ], [ 0, %193 ], [ 0, %198 ], [ %206, %271 ], [ %206, %269 ], [ 3, %261 ], [ %206, %245 ], [ 3, %241 ], [ %206, %239 ], [ 3, %231 ], [ %206, %204 ], [ %206, %213 ], [ 3, %202 ]
  tail call void @llvm.dbg.value(metadata i64 %284, i64 0, metadata !1304, metadata !613), !dbg !1319
  %296 = load i64, i64* %4, align 8, !dbg !1621, !tbaa !866
  %297 = sub i64 %296, %294, !dbg !1621
  store i64 %297, i64* %4, align 8, !dbg !1621, !tbaa !866
  tail call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1301, metadata !613), !dbg !1315
  %298 = icmp eq i64 %295, 0, !dbg !1622
  ret i1 %298, !dbg !1623
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @base64_decode_alloc_ctx(%struct.base64_decode_context*, i8*, i64, i8** nocapture, i64*) local_unnamed_addr #6 !dbg !1624 {
  %6 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, i64 0, metadata !1628, metadata !613), !dbg !1634
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1629, metadata !613), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1630, metadata !613), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !1631, metadata !613), !dbg !1637
  tail call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !1632, metadata !613), !dbg !1638
  %7 = bitcast i64* %6 to i8*, !dbg !1639
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !1639
  %8 = lshr i64 %2, 2, !dbg !1640
  %9 = mul nuw i64 %8, 3, !dbg !1641
  %10 = add i64 %9, 3, !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1633, metadata !613), !dbg !1643
  store i64 %10, i64* %6, align 8, !dbg !1643, !tbaa !866
  %11 = tail call noalias i8* @malloc(i64 %10) #11, !dbg !1644
  store i8* %11, i8** %3, align 8, !dbg !1645, !tbaa !620
  %12 = icmp eq i8* %11, null, !dbg !1646
  br i1 %12, label %21, label %13, !dbg !1648

; <label>:13:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !1633, metadata !613), !dbg !1643
  %14 = call zeroext i1 @base64_decode_ctx(%struct.base64_decode_context* %0, i8* %1, i64 %2, i8* nonnull %11, i64* nonnull %6), !dbg !1649
  br i1 %14, label %17, label %15, !dbg !1651

; <label>:15:                                     ; preds = %13
  %16 = load i8*, i8** %3, align 8, !dbg !1652, !tbaa !620
  tail call void @free(i8* %16) #11, !dbg !1654
  store i8* null, i8** %3, align 8, !dbg !1655, !tbaa !620
  br label %21, !dbg !1656

; <label>:17:                                     ; preds = %13
  %18 = icmp eq i64* %4, null, !dbg !1657
  br i1 %18, label %21, label %19, !dbg !1659

; <label>:19:                                     ; preds = %17
  %20 = load i64, i64* %6, align 8, !dbg !1660, !tbaa !866
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1633, metadata !613), !dbg !1643
  store i64 %20, i64* %4, align 8, !dbg !1661, !tbaa !866
  br label %21, !dbg !1662

; <label>:21:                                     ; preds = %19, %17, %5, %15
  %22 = phi i1 [ false, %15 ], [ true, %5 ], [ true, %17 ], [ true, %19 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !1663
  ret i1 %22, !dbg !1663
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1664 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1666, metadata !613), !dbg !1667
  store i8* %0, i8** @file_name, align 8, !dbg !1668, !tbaa !620
  ret void, !dbg !1669
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1670 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1674, metadata !613), !dbg !1675
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1676, !tbaa !1677
  ret void, !dbg !1679
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1680 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1685, !tbaa !620
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1686
  %3 = icmp eq i32 %2, 0, !dbg !1687
  br i1 %3, label %21, label %4, !dbg !1688

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1689, !tbaa !1677, !range !1690
  %6 = icmp eq i8 %5, 0, !dbg !1689
  %7 = tail call i32* @__errno_location() #18, !dbg !1691
  br i1 %6, label %11, label %8, !dbg !1693

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1694, !tbaa !810
  %10 = icmp eq i32 %9, 32, !dbg !1695
  br i1 %10, label %21, label %11, !dbg !1696

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 5) #11, !dbg !1697
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1682, metadata !613), !dbg !1698
  %13 = load i8*, i8** @file_name, align 8, !dbg !1699, !tbaa !620
  %14 = icmp eq i8* %13, null, !dbg !1699
  %15 = load i32, i32* %7, align 4, !tbaa !810
  br i1 %14, label %18, label %16, !dbg !1700

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1701
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.45, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1702
  br label %19, !dbg !1702

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.46, i64 0, i64 0), i8* %12) #11, !dbg !1703
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1704, !tbaa !810
  tail call void @_exit(i32 %20) #16, !dbg !1705
  unreachable, !dbg !1705

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1706, !tbaa !620
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1708
  %24 = icmp eq i32 %23, 0, !dbg !1709
  br i1 %24, label %27, label %25, !dbg !1710

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1711, !tbaa !810
  tail call void @_exit(i32 %26) #16, !dbg !1712
  unreachable, !dbg !1712

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1713
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1714 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1722, metadata !613), !dbg !1728
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1723, metadata !613), !dbg !1729
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1724, metadata !613), !dbg !1730
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1725, metadata !613), !dbg !1731
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1732
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1726, metadata !613), !dbg !1732
  ret void, !dbg !1733
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1734 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1778, metadata !613), !dbg !1780
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1779, metadata !613), !dbg !1781
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1782
  br i1 %3, label %7, label %4, !dbg !1784

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !1785
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1722, metadata !613) #11, !dbg !1786
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1723, metadata !613) #11, !dbg !1788
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1724, metadata !613) #11, !dbg !1789
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1725, metadata !613) #11, !dbg !1790
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !1791
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1726, metadata !613) #11, !dbg !1791
  br label %7, !dbg !1792

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1793
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1794 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1796, metadata !613), !dbg !1799
  %2 = icmp eq i8* %0, null, !dbg !1800
  br i1 %2, label %3, label %6, !dbg !1802

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1803, !tbaa !620
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #19, !dbg !1805
  tail call void @abort() #16, !dbg !1806
  unreachable, !dbg !1806

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !1807
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1797, metadata !613), !dbg !1808
  %8 = icmp eq i8* %7, null, !dbg !1809
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1810
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1811
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1798, metadata !613), !dbg !1812
  %11 = ptrtoint i8* %10 to i64, !dbg !1813
  %12 = ptrtoint i8* %0 to i64, !dbg !1813
  %13 = sub i64 %11, %12, !dbg !1813
  %14 = icmp sgt i64 %13, 6, !dbg !1815
  br i1 %14, label %15, label %24, !dbg !1816

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1817
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.56, i64 0, i64 0), i64 7) #15, !dbg !1818
  %18 = icmp eq i32 %17, 0, !dbg !1819
  br i1 %18, label %19, label %24, !dbg !1820

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1796, metadata !613), !dbg !1799
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i64 3) #15, !dbg !1821
  %21 = icmp eq i32 %20, 0, !dbg !1824
  br i1 %21, label %22, label %24, !dbg !1825

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1826
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1796, metadata !613), !dbg !1799
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1828, !tbaa !620
  br label %24, !dbg !1829

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1796, metadata !613), !dbg !1799
  store i8* %25, i8** @program_name, align 8, !dbg !1830, !tbaa !620
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1831, !tbaa !620
  ret void, !dbg !1832
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1833 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1838, metadata !613), !dbg !1841
  %2 = tail call i32* @__errno_location() #18, !dbg !1842
  %3 = load i32, i32* %2, align 4, !dbg !1842, !tbaa !810
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1839, metadata !613), !dbg !1843
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1844
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1844
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1844
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1845
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1845
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1840, metadata !613), !dbg !1846
  store i32 %3, i32* %2, align 4, !dbg !1847, !tbaa !810
  ret %struct.quoting_options* %8, !dbg !1848
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1849 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1855, metadata !613), !dbg !1856
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1857
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1857
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1858
  %5 = load i32, i32* %4, align 8, !dbg !1858, !tbaa !1859
  ret i32 %5, !dbg !1861
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1862 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1866, metadata !613), !dbg !1868
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1867, metadata !613), !dbg !1869
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1870
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1870
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1871
  store i32 %1, i32* %5, align 8, !dbg !1872, !tbaa !1859
  ret void, !dbg !1873
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1874 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1878, metadata !613), !dbg !1886
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1879, metadata !613), !dbg !1887
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1880, metadata !613), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1881, metadata !613), !dbg !1889
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1890
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1890
  %6 = lshr i8 %1, 5, !dbg !1891
  %7 = zext i8 %6 to i64, !dbg !1891
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1892
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1882, metadata !613), !dbg !1893
  %9 = and i8 %1, 31, !dbg !1894
  %10 = zext i8 %9 to i32, !dbg !1895
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1884, metadata !613), !dbg !1896
  %11 = load i32, i32* %8, align 4, !dbg !1897, !tbaa !810
  %12 = lshr i32 %11, %10, !dbg !1898
  %13 = and i32 %12, 1, !dbg !1899
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1885, metadata !613), !dbg !1900
  %14 = and i32 %2, 1, !dbg !1901
  %15 = xor i32 %13, %14, !dbg !1902
  %16 = shl i32 %15, %10, !dbg !1903
  %17 = xor i32 %16, %11, !dbg !1904
  store i32 %17, i32* %8, align 4, !dbg !1904, !tbaa !810
  ret i32 %13, !dbg !1905
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1906 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1910, metadata !613), !dbg !1913
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1911, metadata !613), !dbg !1914
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1910, metadata !613), !dbg !1913
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1910, metadata !613), !dbg !1913
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1918
  %6 = load i32, i32* %5, align 4, !dbg !1918, !tbaa !1919
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1912, metadata !613), !dbg !1920
  store i32 %1, i32* %5, align 4, !dbg !1921, !tbaa !1919
  ret i32 %6, !dbg !1922
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1923 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1927, metadata !613), !dbg !1930
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1928, metadata !613), !dbg !1931
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1929, metadata !613), !dbg !1932
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1933
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1927, metadata !613), !dbg !1930
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1935
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1927, metadata !613), !dbg !1930
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1936
  store i32 10, i32* %6, align 8, !dbg !1937, !tbaa !1859
  %7 = icmp ne i8* %1, null, !dbg !1938
  %8 = icmp ne i8* %2, null, !dbg !1940
  %9 = and i1 %7, %8, !dbg !1941
  br i1 %9, label %11, label %10, !dbg !1941

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !1942
  unreachable, !dbg !1942

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1943
  store i8* %1, i8** %12, align 8, !dbg !1944, !tbaa !1945
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1946
  store i8* %2, i8** %13, align 8, !dbg !1947, !tbaa !1948
  ret void, !dbg !1949
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1950 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1954, metadata !613), !dbg !1962
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1955, metadata !613), !dbg !1963
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1956, metadata !613), !dbg !1964
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1957, metadata !613), !dbg !1965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1958, metadata !613), !dbg !1966
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1967
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1959, metadata !613), !dbg !1968
  %8 = tail call i32* @__errno_location() #18, !dbg !1969
  %9 = load i32, i32* %8, align 4, !dbg !1969, !tbaa !810
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1960, metadata !613), !dbg !1970
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1971
  %11 = load i32, i32* %10, align 8, !dbg !1971, !tbaa !1859
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1972
  %13 = load i32, i32* %12, align 4, !dbg !1972, !tbaa !1919
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1973
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1974
  %16 = load i8*, i8** %15, align 8, !dbg !1974, !tbaa !1945
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1975
  %18 = load i8*, i8** %17, align 8, !dbg !1975, !tbaa !1948
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1976
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1961, metadata !613), !dbg !1977
  store i32 %9, i32* %8, align 4, !dbg !1978, !tbaa !810
  ret i64 %19, !dbg !1979
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1980 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1986, metadata !613), !dbg !2047
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1987, metadata !613), !dbg !2048
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1988, metadata !613), !dbg !2049
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1989, metadata !613), !dbg !2050
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1990, metadata !613), !dbg !2051
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1991, metadata !613), !dbg !2052
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1992, metadata !613), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1993, metadata !613), !dbg !2054
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1994, metadata !613), !dbg !2055
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1996, metadata !613), !dbg !2056
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1997, metadata !613), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1998, metadata !613), !dbg !2058
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1999, metadata !613), !dbg !2059
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2000, metadata !613), !dbg !2060
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2061
  %14 = icmp eq i64 %13, 1, !dbg !2062
  %15 = lshr i32 %5, 1, !dbg !2063
  %16 = trunc i32 %15 to i8, !dbg !2063
  %17 = and i8 %16, 1, !dbg !2063
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2002, metadata !613), !dbg !2063
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2003, metadata !613), !dbg !2064
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2004, metadata !613), !dbg !2065
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2005, metadata !613), !dbg !2066
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2067

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1987, metadata !613), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2005, metadata !613), !dbg !2066
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2004, metadata !613), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2002, metadata !613), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1989, metadata !613), !dbg !2050
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2000, metadata !613), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1999, metadata !613), !dbg !2059
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1998, metadata !613), !dbg !2058
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1997, metadata !613), !dbg !2057
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1994, metadata !613), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1993, metadata !613), !dbg !2054
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1990, metadata !613), !dbg !2051
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
  ], !dbg !2068

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1990, metadata !613), !dbg !2051
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2002, metadata !613), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2002, metadata !613), !dbg !2063
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1990, metadata !613), !dbg !2051
  br label %94, !dbg !2069

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2002, metadata !613), !dbg !2063
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1990, metadata !613), !dbg !2051
  %43 = and i8 %36, 1, !dbg !2071
  %44 = icmp eq i8 %43, 0, !dbg !2071
  br i1 %44, label %45, label %94, !dbg !2069

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2073
  br i1 %46, label %94, label %47, !dbg !2076

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2073, !tbaa !877
  br label %94, !dbg !2073

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.68, i64 0, i64 0), i32 %28), !dbg !2077
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1993, metadata !613), !dbg !2054
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), i32 %28), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1994, metadata !613), !dbg !2055
  br label %51, !dbg !2082

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1994, metadata !613), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1993, metadata !613), !dbg !2054
  %54 = and i8 %36, 1, !dbg !2083
  %55 = icmp eq i8 %54, 0, !dbg !2083
  br i1 %55, label %56, label %72, !dbg !2085

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1998, metadata !613), !dbg !2058
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1998, metadata !613), !dbg !2058
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1996, metadata !613), !dbg !2056
  %57 = load i8, i8* %52, align 1, !dbg !2086, !tbaa !877
  %58 = icmp eq i8 %57, 0, !dbg !2089
  br i1 %58, label %72, label %59, !dbg !2089

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2090

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1998, metadata !613), !dbg !2058
  %64 = icmp ult i64 %63, %40, !dbg !2090
  br i1 %64, label %65, label %67, !dbg !2093

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2090
  store i8 %61, i8* %66, align 1, !dbg !2090, !tbaa !877
  br label %67, !dbg !2090

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1996, metadata !613), !dbg !2056
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2094
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1998, metadata !613), !dbg !2058
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1998, metadata !613), !dbg !2058
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1996, metadata !613), !dbg !2056
  %70 = load i8, i8* %69, align 1, !dbg !2086, !tbaa !877
  %71 = icmp eq i8 %70, 0, !dbg !2089
  br i1 %71, label %72, label %60, !dbg !2089, !llvm.loop !2095

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2000, metadata !613), !dbg !2060
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1998, metadata !613), !dbg !2058
  %74 = call i64 @strlen(i8* %53) #15, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1999, metadata !613), !dbg !2059
  br label %94, !dbg !2098

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2000, metadata !613), !dbg !2060
  br label %76, !dbg !2099

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !2000, metadata !613), !dbg !2060
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2002, metadata !613), !dbg !2063
  br label %78, !dbg !2100

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2002, metadata !613), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !2000, metadata !613), !dbg !2060
  %81 = and i8 %80, 1, !dbg !2101
  %82 = icmp eq i8 %81, 0, !dbg !2101
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2000, metadata !613), !dbg !2060
  %83 = select i1 %82, i8 1, i8 %79, !dbg !2103
  br label %84, !dbg !2103

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2002, metadata !613), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !2000, metadata !613), !dbg !2060
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1990, metadata !613), !dbg !2051
  %87 = and i8 %86, 1, !dbg !2104
  %88 = icmp eq i8 %87, 0, !dbg !2104
  br i1 %88, label %89, label %94, !dbg !2106

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !2107
  br i1 %90, label %94, label %91, !dbg !2110

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !2107, !tbaa !877
  br label %94, !dbg !2107

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2002, metadata !613), !dbg !2063
  br label %94, !dbg !2111

; <label>:93:                                     ; preds = %27
  call void @abort() #16, !dbg !2112
  unreachable, !dbg !2112

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2002, metadata !613), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !2000, metadata !613), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1999, metadata !613), !dbg !2059
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1998, metadata !613), !dbg !2058
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1994, metadata !613), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1993, metadata !613), !dbg !2054
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1990, metadata !613), !dbg !2051
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1995, metadata !613), !dbg !2113
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
  br label %122, !dbg !2114

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1987, metadata !613), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2005, metadata !613), !dbg !2066
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2004, metadata !613), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1989, metadata !613), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1997, metadata !613), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1995, metadata !613), !dbg !2113
  %131 = icmp eq i64 %126, -1, !dbg !2115
  br i1 %131, label %134, label %132, !dbg !2116

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !2117
  br i1 %133, label %590, label %138, !dbg !2118

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2119
  %136 = load i8, i8* %135, align 1, !dbg !2119, !tbaa !877
  %137 = icmp eq i8 %136, 0, !dbg !2120
  br i1 %137, label %590, label %138, !dbg !2118

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2011, metadata !613), !dbg !2121
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2012, metadata !613), !dbg !2122
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2013, metadata !613), !dbg !2123
  br i1 %108, label %139, label %154, !dbg !2124

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !2126
  %141 = and i1 %109, %131, !dbg !2127
  br i1 %141, label %142, label %144, !dbg !2127

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #15, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1989, metadata !613), !dbg !2050
  br label %144, !dbg !2129

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1989, metadata !613), !dbg !2050
  %146 = icmp ugt i64 %140, %145, !dbg !2130
  br i1 %146, label %154, label %147, !dbg !2131

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2132
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #15, !dbg !2133
  %150 = icmp ne i32 %149, 0, !dbg !2134
  %151 = or i1 %150, %111, !dbg !2135
  %152 = xor i1 %150, true, !dbg !2135
  %153 = zext i1 %152 to i8, !dbg !2135
  br i1 %151, label %154, label %635, !dbg !2135

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2011, metadata !613), !dbg !2121
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1989, metadata !613), !dbg !2050
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2136
  %158 = load i8, i8* %157, align 1, !dbg !2136, !tbaa !877
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2006, metadata !613), !dbg !2137
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
  ], !dbg !2138

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !2139

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !2140

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2012, metadata !613), !dbg !2122
  %162 = and i8 %127, 1, !dbg !2144
  %163 = icmp eq i8 %162, 0, !dbg !2144
  %164 = and i1 %113, %163, !dbg !2144
  br i1 %164, label %165, label %181, !dbg !2144

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2146
  br i1 %166, label %167, label %169, !dbg !2150

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2146
  store i8 39, i8* %168, align 1, !dbg !2146, !tbaa !877
  br label %169, !dbg !2146

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1996, metadata !613), !dbg !2056
  %171 = icmp ult i64 %170, %130, !dbg !2151
  br i1 %171, label %172, label %174, !dbg !2154

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2151
  store i8 36, i8* %173, align 1, !dbg !2151, !tbaa !877
  br label %174, !dbg !2151

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1996, metadata !613), !dbg !2056
  %176 = icmp ult i64 %175, %130, !dbg !2155
  br i1 %176, label %177, label %179, !dbg !2158

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2155
  store i8 39, i8* %178, align 1, !dbg !2155, !tbaa !877
  br label %179, !dbg !2155

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2003, metadata !613), !dbg !2064
  br label %181, !dbg !2159

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1996, metadata !613), !dbg !2056
  %184 = icmp ult i64 %182, %130, !dbg !2160
  br i1 %184, label %185, label %187, !dbg !2163

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2160
  store i8 92, i8* %186, align 1, !dbg !2160, !tbaa !877
  br label %187, !dbg !2160

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1996, metadata !613), !dbg !2056
  br i1 %105, label %189, label %470, !dbg !2164

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !2166
  %191 = icmp ult i64 %190, %155, !dbg !2167
  br i1 %191, label %192, label %470, !dbg !2168

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2169
  %194 = load i8, i8* %193, align 1, !dbg !2169, !tbaa !877
  %195 = add i8 %194, -48, !dbg !2170
  %196 = icmp ult i8 %195, 10, !dbg !2170
  br i1 %196, label %197, label %470, !dbg !2170

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2171
  br i1 %198, label %199, label %201, !dbg !2175

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2171
  store i8 48, i8* %200, align 1, !dbg !2171, !tbaa !877
  br label %201, !dbg !2171

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1996, metadata !613), !dbg !2056
  %203 = icmp ult i64 %202, %130, !dbg !2176
  br i1 %203, label %204, label %206, !dbg !2179

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2176
  store i8 48, i8* %205, align 1, !dbg !2176, !tbaa !877
  br label %206, !dbg !2176

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1996, metadata !613), !dbg !2056
  br label %470, !dbg !2180

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !2181

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2182

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !2183

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !2185

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !2187
  %214 = icmp ult i64 %213, %155, !dbg !2188
  br i1 %214, label %215, label %470, !dbg !2189

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !2190
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2191
  %218 = load i8, i8* %217, align 1, !dbg !2191, !tbaa !877
  %219 = icmp eq i8 %218, 63, !dbg !2192
  br i1 %219, label %220, label %470, !dbg !2193

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2194
  %222 = load i8, i8* %221, align 1, !dbg !2194, !tbaa !877
  %223 = sext i8 %222 to i32, !dbg !2194
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
  ], !dbg !2195

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !2196

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !2006, metadata !613), !dbg !2137
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1995, metadata !613), !dbg !2113
  %226 = icmp ult i64 %124, %130, !dbg !2198
  br i1 %226, label %227, label %229, !dbg !2201

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2198
  store i8 63, i8* %228, align 1, !dbg !2198, !tbaa !877
  br label %229, !dbg !2198

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1996, metadata !613), !dbg !2056
  %231 = icmp ult i64 %230, %130, !dbg !2202
  br i1 %231, label %232, label %234, !dbg !2205

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2202
  store i8 34, i8* %233, align 1, !dbg !2202, !tbaa !877
  br label %234, !dbg !2202

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1996, metadata !613), !dbg !2056
  %236 = icmp ult i64 %235, %130, !dbg !2206
  br i1 %236, label %237, label %239, !dbg !2209

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2206
  store i8 34, i8* %238, align 1, !dbg !2206, !tbaa !877
  br label %239, !dbg !2206

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1996, metadata !613), !dbg !2056
  %241 = icmp ult i64 %240, %130, !dbg !2210
  br i1 %241, label %242, label %244, !dbg !2213

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2210
  store i8 63, i8* %243, align 1, !dbg !2210, !tbaa !877
  br label %244, !dbg !2210

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1996, metadata !613), !dbg !2056
  br label %470, !dbg !2214

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2010, metadata !613), !dbg !2215
  br label %256, !dbg !2216

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2010, metadata !613), !dbg !2215
  br label %256, !dbg !2217

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2010, metadata !613), !dbg !2215
  br label %254, !dbg !2218

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2010, metadata !613), !dbg !2215
  br label %254, !dbg !2219

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2010, metadata !613), !dbg !2215
  br label %256, !dbg !2220

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !2010, metadata !613), !dbg !2215
  br i1 %113, label %252, label %253, !dbg !2221

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !2222

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !2225

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !2010, metadata !613), !dbg !2215
  br i1 %117, label %256, label %635, !dbg !2227

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !2010, metadata !613), !dbg !2215
  br i1 %104, label %497, label %470, !dbg !2229

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !2230
  br i1 %259, label %260, label %265, !dbg !2232

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !2233, !tbaa !877
  %262 = icmp ne i8 %261, 0, !dbg !2234
  %263 = icmp ne i64 %123, 0, !dbg !2235
  %264 = or i1 %263, %262, !dbg !2237
  br i1 %264, label %470, label %271, !dbg !2237

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !2238
  %267 = icmp ne i64 %123, 0, !dbg !2235
  %268 = or i1 %267, %266, !dbg !2232
  br i1 %268, label %470, label %271, !dbg !2232

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !2235
  br i1 %270, label %271, label %470, !dbg !2239

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2013, metadata !613), !dbg !2123
  br label %272, !dbg !2240

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !2013, metadata !613), !dbg !2123
  br i1 %117, label %470, label %635, !dbg !2241

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2004, metadata !613), !dbg !2065
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2013, metadata !613), !dbg !2123
  br i1 %113, label %275, label %470, !dbg !2243

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !2244

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !2247
  %278 = icmp ne i64 %125, 0, !dbg !2249
  %279 = or i1 %278, %277, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1997, metadata !613), !dbg !2057
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1987, metadata !613), !dbg !2048
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !2250
  %281 = select i1 %279, i64 %130, i64 0, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1987, metadata !613), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1997, metadata !613), !dbg !2057
  %282 = icmp ult i64 %124, %281, !dbg !2251
  br i1 %282, label %283, label %285, !dbg !2254

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2251
  store i8 39, i8* %284, align 1, !dbg !2251, !tbaa !877
  br label %285, !dbg !2251

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1996, metadata !613), !dbg !2056
  %287 = icmp ult i64 %286, %281, !dbg !2255
  br i1 %287, label %288, label %290, !dbg !2258

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !2255
  store i8 92, i8* %289, align 1, !dbg !2255, !tbaa !877
  br label %290, !dbg !2255

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1996, metadata !613), !dbg !2056
  %292 = icmp ult i64 %291, %281, !dbg !2259
  br i1 %292, label %293, label %295, !dbg !2262

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !2259
  store i8 39, i8* %294, align 1, !dbg !2259, !tbaa !877
  br label %295, !dbg !2259

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2003, metadata !613), !dbg !2064
  br label %470, !dbg !2263

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !2264

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2014, metadata !613), !dbg !2265
  %299 = tail call i16** @__ctype_b_loc() #18, !dbg !2266
  %300 = load i16*, i16** %299, align 8, !dbg !2266, !tbaa !620
  %301 = zext i8 %158 to i64, !dbg !2266
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !2266
  %303 = load i16, i16* %302, align 2, !dbg !2266, !tbaa !2268
  %304 = lshr i16 %303, 14, !dbg !2269
  %305 = trunc i16 %304 to i8, !dbg !2269
  %306 = and i8 %305, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !2017, metadata !613), !dbg !2270
  br label %362, !dbg !2271

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2272
  store i64 0, i64* %10, align 8, !dbg !2273
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2014, metadata !613), !dbg !2265
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2017, metadata !613), !dbg !2270
  %308 = icmp eq i64 %155, -1, !dbg !2274
  br i1 %308, label %309, label %311, !dbg !2276

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #15, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1989, metadata !613), !dbg !2050
  br label %311, !dbg !2278

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1989, metadata !613), !dbg !2050
  br label %313, !dbg !2279, !llvm.loop !2280

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !2017, metadata !613), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2014, metadata !613), !dbg !2265
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2282
  %316 = add i64 %314, %123, !dbg !2283
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !2284
  %318 = sub i64 %312, %316, !dbg !2285
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2018, metadata !613), !dbg !2286
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2033, metadata !613), !dbg !2287
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !2036, metadata !613), !dbg !2289
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !2290

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2017, metadata !613), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2014, metadata !613), !dbg !2265
  %321 = icmp ugt i64 %312, %316, !dbg !2291
  br i1 %321, label %322, label %347, !dbg !2293

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !2294

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !2014, metadata !613), !dbg !2265
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !2294
  %327 = load i8, i8* %326, align 1, !dbg !2294, !tbaa !877
  %328 = icmp eq i8 %327, 0, !dbg !2293
  br i1 %328, label %347, label %329, !dbg !2295

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2014, metadata !613), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !2014, metadata !613), !dbg !2265
  %331 = add i64 %330, %123, !dbg !2297
  %332 = icmp ult i64 %331, %312, !dbg !2291
  br i1 %332, label %323, label %347, !dbg !2293, !llvm.loop !2298

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !2299
  %335 = and i1 %115, %334, !dbg !2302
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2037, metadata !613), !dbg !2303
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2037, metadata !613), !dbg !2303
  br i1 %335, label %336, label %350, !dbg !2302

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !2304

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !2037, metadata !613), !dbg !2303
  %339 = add i64 %338, %316, !dbg !2304
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !2305
  %341 = load i8, i8* %340, align 1, !dbg !2305, !tbaa !877
  %342 = sext i8 %341 to i32, !dbg !2305
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !2306

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2037, metadata !613), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !2037, metadata !613), !dbg !2303
  %345 = icmp ult i64 %344, %319, !dbg !2299
  br i1 %345, label %337, label %350, !dbg !2308, !llvm.loop !2309

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !2311

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2017, metadata !613), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2014, metadata !613), !dbg !2265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2311
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !2312, !tbaa !810
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !2033, metadata !613), !dbg !2287
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !2314
  %353 = icmp eq i32 %352, 0, !dbg !2314
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2017, metadata !613), !dbg !2270
  %354 = select i1 %353, i8 0, i8 %315, !dbg !2315
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2017, metadata !613), !dbg !2270
  %355 = add i64 %319, %314, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2014, metadata !613), !dbg !2265
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2017, metadata !613), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2014, metadata !613), !dbg !2265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2311
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2018, metadata !613), !dbg !2286
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !2317
  %357 = icmp eq i32 %356, 0, !dbg !2318
  br i1 %357, label %313, label %358, !dbg !2319, !llvm.loop !2280

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2320
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !2017, metadata !613), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !2014, metadata !613), !dbg !2265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !2311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !2320
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !2017, metadata !613), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !2014, metadata !613), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1989, metadata !613), !dbg !2050
  %366 = and i8 %365, 1, !dbg !2321
  %367 = icmp ne i8 %366, 0, !dbg !2321
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !2013, metadata !613), !dbg !2123
  %368 = icmp ult i64 %364, 2, !dbg !2322
  %369 = or i1 %367, %112, !dbg !2323
  %370 = and i1 %368, %369, !dbg !2324
  br i1 %370, label %470, label %371, !dbg !2324

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !2044, metadata !613), !dbg !2326
  br label %373, !dbg !2327

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !2012, metadata !613), !dbg !2122
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !2011, metadata !613), !dbg !2121
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !2006, metadata !613), !dbg !2137
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1995, metadata !613), !dbg !2113
  br i1 %369, label %426, label %380, !dbg !2328

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !2333

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2012, metadata !613), !dbg !2122
  %382 = and i8 %376, 1, !dbg !2336
  %383 = icmp eq i8 %382, 0, !dbg !2336
  %384 = and i1 %113, %383, !dbg !2336
  br i1 %384, label %385, label %401, !dbg !2336

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !2338
  br i1 %386, label %387, label %389, !dbg !2342

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2338
  store i8 39, i8* %388, align 1, !dbg !2338, !tbaa !877
  br label %389, !dbg !2338

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1996, metadata !613), !dbg !2056
  %391 = icmp ult i64 %390, %130, !dbg !2343
  br i1 %391, label %392, label %394, !dbg !2346

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2343
  store i8 36, i8* %393, align 1, !dbg !2343, !tbaa !877
  br label %394, !dbg !2343

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1996, metadata !613), !dbg !2056
  %396 = icmp ult i64 %395, %130, !dbg !2347
  br i1 %396, label %397, label %399, !dbg !2350

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2347
  store i8 39, i8* %398, align 1, !dbg !2347, !tbaa !877
  br label %399, !dbg !2347

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2003, metadata !613), !dbg !2064
  br label %401, !dbg !2351

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1996, metadata !613), !dbg !2056
  %404 = icmp ult i64 %402, %130, !dbg !2352
  br i1 %404, label %405, label %407, !dbg !2355

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !2352
  store i8 92, i8* %406, align 1, !dbg !2352, !tbaa !877
  br label %407, !dbg !2352

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1996, metadata !613), !dbg !2056
  %409 = icmp ult i64 %408, %130, !dbg !2356
  br i1 %409, label %410, label %414, !dbg !2359

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !2356
  %412 = or i8 %411, 48, !dbg !2356
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2356
  store i8 %412, i8* %413, align 1, !dbg !2356, !tbaa !877
  br label %414, !dbg !2356

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1996, metadata !613), !dbg !2056
  %416 = icmp ult i64 %415, %130, !dbg !2360
  br i1 %416, label %417, label %422, !dbg !2363

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !2360
  %419 = and i8 %418, 7, !dbg !2360
  %420 = or i8 %419, 48, !dbg !2360
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !2360
  store i8 %420, i8* %421, align 1, !dbg !2360, !tbaa !877
  br label %422, !dbg !2360

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1996, metadata !613), !dbg !2056
  %424 = and i8 %377, 7, !dbg !2364
  %425 = or i8 %424, 48, !dbg !2365
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2006, metadata !613), !dbg !2137
  br label %435, !dbg !2366

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !2367
  %428 = icmp eq i8 %427, 0, !dbg !2367
  br i1 %428, label %435, label %429, !dbg !2369

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !2370
  br i1 %430, label %431, label %433, !dbg !2374

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !2370
  store i8 92, i8* %432, align 1, !dbg !2370, !tbaa !877
  br label %433, !dbg !2370

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2011, metadata !613), !dbg !2121
  br label %435, !dbg !2375

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !2012, metadata !613), !dbg !2122
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !2011, metadata !613), !dbg !2121
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !2006, metadata !613), !dbg !2137
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1996, metadata !613), !dbg !2056
  %441 = add i64 %374, 1, !dbg !2376
  %442 = icmp ugt i64 %372, %441, !dbg !2378
  br i1 %442, label %443, label %535, !dbg !2379

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !2380
  %445 = icmp ne i8 %444, 0, !dbg !2380
  %446 = and i8 %440, 1, !dbg !2380
  %447 = icmp eq i8 %446, 0, !dbg !2380
  %448 = and i1 %445, %447, !dbg !2380
  br i1 %448, label %449, label %460, !dbg !2380

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !2383
  br i1 %450, label %451, label %453, !dbg !2387

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !2383
  store i8 39, i8* %452, align 1, !dbg !2383, !tbaa !877
  br label %453, !dbg !2383

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1996, metadata !613), !dbg !2056
  %455 = icmp ult i64 %454, %130, !dbg !2388
  br i1 %455, label %456, label %458, !dbg !2391

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2388
  store i8 39, i8* %457, align 1, !dbg !2388, !tbaa !877
  br label %458, !dbg !2388

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2003, metadata !613), !dbg !2064
  br label %460, !dbg !2392

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1996, metadata !613), !dbg !2056
  %463 = icmp ult i64 %461, %130, !dbg !2393
  br i1 %463, label %464, label %466, !dbg !2396

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !2393
  store i8 %438, i8* %465, align 1, !dbg !2393, !tbaa !877
  br label %466, !dbg !2393

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1995, metadata !613), !dbg !2113
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !2397
  %469 = load i8, i8* %468, align 1, !dbg !2397, !tbaa !877
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !2006, metadata !613), !dbg !2137
  br label %373, !dbg !2398, !llvm.loop !2399

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1987, metadata !613), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !2013, metadata !613), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !2012, metadata !613), !dbg !2122
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !2011, metadata !613), !dbg !2121
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !2006, metadata !613), !dbg !2137
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !2004, metadata !613), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1989, metadata !613), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1997, metadata !613), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1995, metadata !613), !dbg !2113
  br i1 %106, label %482, label %481, !dbg !2402

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !2404

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !2405

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !2406
  %485 = zext i8 %484 to i64, !dbg !2406
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !2407
  %487 = load i32, i32* %486, align 4, !dbg !2407, !tbaa !810
  %488 = and i8 %477, 31, !dbg !2408
  %489 = zext i8 %488 to i32, !dbg !2409
  %490 = shl i32 1, %489, !dbg !2410
  %491 = and i32 %487, %490, !dbg !2410
  %492 = icmp eq i32 %491, 0, !dbg !2410
  %493 = icmp eq i8 %156, 0, !dbg !2411
  %494 = and i1 %493, %492, !dbg !2412
  br i1 %494, label %535, label %497, !dbg !2412

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !2411
  br i1 %496, label %535, label %497, !dbg !2413

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1987, metadata !613), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !2013, metadata !613), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !2006, metadata !613), !dbg !2137
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !2004, metadata !613), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1989, metadata !613), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1997, metadata !613), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1995, metadata !613), !dbg !2113
  br i1 %111, label %507, label %635, !dbg !2414

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2012, metadata !613), !dbg !2122
  %508 = and i8 %502, 1, !dbg !2416
  %509 = icmp eq i8 %508, 0, !dbg !2416
  %510 = and i1 %113, %509, !dbg !2416
  br i1 %510, label %511, label %527, !dbg !2416

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !2418
  br i1 %512, label %513, label %515, !dbg !2422

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !2418
  store i8 39, i8* %514, align 1, !dbg !2418, !tbaa !877
  br label %515, !dbg !2418

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1996, metadata !613), !dbg !2056
  %517 = icmp ult i64 %516, %506, !dbg !2423
  br i1 %517, label %518, label %520, !dbg !2426

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !2423
  store i8 36, i8* %519, align 1, !dbg !2423, !tbaa !877
  br label %520, !dbg !2423

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1996, metadata !613), !dbg !2056
  %522 = icmp ult i64 %521, %506, !dbg !2427
  br i1 %522, label %523, label %525, !dbg !2430

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !2427
  store i8 39, i8* %524, align 1, !dbg !2427, !tbaa !877
  br label %525, !dbg !2427

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2003, metadata !613), !dbg !2064
  br label %527, !dbg !2431

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1996, metadata !613), !dbg !2056
  %530 = icmp ult i64 %528, %506, !dbg !2432
  br i1 %530, label %531, label %533, !dbg !2435

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2432
  store i8 92, i8* %532, align 1, !dbg !2432, !tbaa !877
  br label %533, !dbg !2432

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1987, metadata !613), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2013, metadata !613), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2012, metadata !613), !dbg !2122
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2006, metadata !613), !dbg !2137
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2004, metadata !613), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1989, metadata !613), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1997, metadata !613), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1995, metadata !613), !dbg !2113
  br label %562, !dbg !2436

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1987, metadata !613), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !2013, metadata !613), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !2012, metadata !613), !dbg !2122
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !2006, metadata !613), !dbg !2137
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !2004, metadata !613), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1989, metadata !613), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1997, metadata !613), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1995, metadata !613), !dbg !2113
  %546 = and i8 %540, 1, !dbg !2436
  %547 = icmp ne i8 %546, 0, !dbg !2436
  %548 = and i8 %543, 1, !dbg !2436
  %549 = icmp eq i8 %548, 0, !dbg !2436
  %550 = and i1 %547, %549, !dbg !2436
  br i1 %550, label %551, label %562, !dbg !2436

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !2439
  br i1 %552, label %553, label %555, !dbg !2443

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !2439
  store i8 39, i8* %554, align 1, !dbg !2439, !tbaa !877
  br label %555, !dbg !2439

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1996, metadata !613), !dbg !2056
  %557 = icmp ult i64 %556, %545, !dbg !2444
  br i1 %557, label %558, label %560, !dbg !2447

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !2444
  store i8 39, i8* %559, align 1, !dbg !2444, !tbaa !877
  br label %560, !dbg !2444

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2003, metadata !613), !dbg !2064
  br label %562, !dbg !2448

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1996, metadata !613), !dbg !2056
  %572 = icmp ult i64 %570, %563, !dbg !2449
  br i1 %572, label %573, label %575, !dbg !2452

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !2449
  store i8 %565, i8* %574, align 1, !dbg !2449, !tbaa !877
  br label %575, !dbg !2449

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1996, metadata !613), !dbg !2056
  %577 = and i8 %564, 1, !dbg !2453
  %578 = icmp eq i8 %577, 0, !dbg !2453
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2005, metadata !613), !dbg !2066
  %579 = select i1 %578, i8 0, i8 %129, !dbg !2455
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !2005, metadata !613), !dbg !2066
  br label %580, !dbg !2456

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1987, metadata !613), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !2005, metadata !613), !dbg !2066
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2004, metadata !613), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !2003, metadata !613), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1989, metadata !613), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1997, metadata !613), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1995, metadata !613), !dbg !2113
  %589 = add i64 %581, 1, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1995, metadata !613), !dbg !2113
  br label %122, !dbg !2458, !llvm.loop !2459

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !2461
  %593 = and i1 %113, %592, !dbg !2463
  %594 = xor i1 %593, true, !dbg !2463
  %595 = or i1 %111, %594, !dbg !2463
  br i1 %595, label %596, label %635, !dbg !2463

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !2464
  %598 = xor i1 %597, true, !dbg !2464
  %599 = and i8 %128, 1, !dbg !2466
  %600 = icmp eq i8 %599, 0, !dbg !2466
  %601 = or i1 %600, %598, !dbg !2464
  br i1 %601, label %611, label %602, !dbg !2464

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !2467
  %604 = icmp eq i8 %603, 0, !dbg !2467
  br i1 %604, label %607, label %605, !dbg !2470

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !2471
  br label %645, !dbg !2472

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !2473
  %609 = icmp ne i64 %125, 0, !dbg !2475
  %610 = and i1 %609, %608, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1987, metadata !613), !dbg !2048
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1996, metadata !613), !dbg !2056
  br i1 %610, label %27, label %611, !dbg !2476

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !2477
  %613 = and i1 %612, %111, !dbg !2479
  br i1 %613, label %614, label %630, !dbg !2479

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1998, metadata !613), !dbg !2058
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1996, metadata !613), !dbg !2056
  %615 = load i8, i8* %99, align 1, !dbg !2480, !tbaa !877
  %616 = icmp eq i8 %615, 0, !dbg !2483
  br i1 %616, label %630, label %617, !dbg !2483

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !2484

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1996, metadata !613), !dbg !2056
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1998, metadata !613), !dbg !2058
  %622 = icmp ult i64 %621, %130, !dbg !2484
  br i1 %622, label %623, label %625, !dbg !2487

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2484
  store i8 %619, i8* %624, align 1, !dbg !2484, !tbaa !877
  br label %625, !dbg !2484

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1996, metadata !613), !dbg !2056
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !2488
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1998, metadata !613), !dbg !2058
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1998, metadata !613), !dbg !2058
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1996, metadata !613), !dbg !2056
  %628 = load i8, i8* %627, align 1, !dbg !2480, !tbaa !877
  %629 = icmp eq i8 %628, 0, !dbg !2483
  br i1 %629, label %630, label %618, !dbg !2483, !llvm.loop !2489

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1996, metadata !613), !dbg !2056
  %632 = icmp ult i64 %631, %130, !dbg !2491
  br i1 %632, label %633, label %645, !dbg !2493

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !2494
  store i8 0, i8* %634, align 1, !dbg !2495, !tbaa !877
  br label %645, !dbg !2494

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1987, metadata !613), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1989, metadata !613), !dbg !2050
  %639 = icmp ne i32 %636, 2, !dbg !2496
  %640 = icmp eq i8 %103, 0, !dbg !2498
  %641 = or i1 %639, %640, !dbg !2499
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1990, metadata !613), !dbg !2051
  %642 = select i1 %641, i32 %636, i32 4, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1990, metadata !613), !dbg !2051
  %643 = and i32 %5, -3, !dbg !2500
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !2501
  br label %645, !dbg !2502

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !2503
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2504 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2508, metadata !613), !dbg !2512
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2509, metadata !613), !dbg !2513
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2514
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2510, metadata !613), !dbg !2515
  %4 = icmp eq i8* %3, %0, !dbg !2516
  br i1 %4, label %5, label %75, !dbg !2518

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2519
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2511, metadata !613), !dbg !2520
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2521, metadata !613), !dbg !2537
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2535, metadata !613), !dbg !2540
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2536, metadata !613), !dbg !2541
  %7 = load i8, i8* %6, align 1, !dbg !2542, !tbaa !877
  %8 = sext i8 %7 to i32, !dbg !2542
  %9 = and i32 %8, -33, !dbg !2542
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2542

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2544, metadata !613), !dbg !2558
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2556, metadata !613), !dbg !2562
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2557, metadata !613), !dbg !2563
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2564
  %12 = load i8, i8* %11, align 1, !dbg !2564, !tbaa !877
  %13 = sext i8 %12 to i32, !dbg !2564
  %14 = and i32 %13, -33, !dbg !2564
  %15 = icmp eq i32 %14, 84, !dbg !2564
  br i1 %15, label %16, label %72, !dbg !2564

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2566, metadata !613), !dbg !2579
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2577, metadata !613), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2578, metadata !613), !dbg !2584
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2585
  %18 = load i8, i8* %17, align 1, !dbg !2585, !tbaa !877
  %19 = sext i8 %18 to i32, !dbg !2585
  %20 = and i32 %19, -33, !dbg !2585
  %21 = icmp eq i32 %20, 70, !dbg !2585
  br i1 %21, label %22, label %72, !dbg !2585

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2587, metadata !613), !dbg !2599
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2597, metadata !613), !dbg !2603
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2598, metadata !613), !dbg !2604
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2605
  %24 = load i8, i8* %23, align 1, !dbg !2605, !tbaa !877
  %25 = icmp eq i8 %24, 45, !dbg !2605
  br i1 %25, label %26, label %72, !dbg !2607

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2608, metadata !613), !dbg !2619
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2617, metadata !613), !dbg !2623
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2618, metadata !613), !dbg !2624
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2625
  %28 = load i8, i8* %27, align 1, !dbg !2625, !tbaa !877
  %29 = icmp eq i8 %28, 56, !dbg !2625
  br i1 %29, label %30, label %72, !dbg !2627

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2628, metadata !613), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2636, metadata !613), !dbg !2642
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2637, metadata !613), !dbg !2643
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2644
  %32 = load i8, i8* %31, align 1, !dbg !2644, !tbaa !877
  %33 = icmp eq i8 %32, 0, !dbg !2644
  br i1 %33, label %34, label %72, !dbg !2646

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2647, !tbaa !877
  %36 = icmp eq i8 %35, 96, !dbg !2648
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.71, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.72, i64 0, i64 0), !dbg !2647
  br label %75, !dbg !2649

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2544, metadata !613), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2556, metadata !613), !dbg !2654
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2557, metadata !613), !dbg !2655
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2656
  %40 = load i8, i8* %39, align 1, !dbg !2656, !tbaa !877
  %41 = sext i8 %40 to i32, !dbg !2656
  %42 = and i32 %41, -33, !dbg !2656
  %43 = icmp eq i32 %42, 66, !dbg !2656
  br i1 %43, label %44, label %72, !dbg !2656

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2566, metadata !613), !dbg !2657
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2577, metadata !613), !dbg !2659
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2578, metadata !613), !dbg !2660
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2661
  %46 = load i8, i8* %45, align 1, !dbg !2661, !tbaa !877
  %47 = icmp eq i8 %46, 49, !dbg !2661
  br i1 %47, label %48, label %72, !dbg !2662

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2587, metadata !613), !dbg !2663
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2597, metadata !613), !dbg !2665
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2598, metadata !613), !dbg !2666
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2667
  %50 = load i8, i8* %49, align 1, !dbg !2667, !tbaa !877
  %51 = icmp eq i8 %50, 56, !dbg !2667
  br i1 %51, label %52, label %72, !dbg !2668

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2608, metadata !613), !dbg !2669
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2617, metadata !613), !dbg !2671
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2618, metadata !613), !dbg !2672
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2673
  %54 = load i8, i8* %53, align 1, !dbg !2673, !tbaa !877
  %55 = icmp eq i8 %54, 48, !dbg !2673
  br i1 %55, label %56, label %72, !dbg !2674

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2628, metadata !613), !dbg !2675
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2636, metadata !613), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2637, metadata !613), !dbg !2678
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2679
  %58 = load i8, i8* %57, align 1, !dbg !2679, !tbaa !877
  %59 = icmp eq i8 %58, 51, !dbg !2679
  br i1 %59, label %60, label %72, !dbg !2680

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2681, metadata !613), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2688, metadata !613), !dbg !2694
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2689, metadata !613), !dbg !2695
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2696
  %62 = load i8, i8* %61, align 1, !dbg !2696, !tbaa !877
  %63 = icmp eq i8 %62, 48, !dbg !2696
  br i1 %63, label %64, label %72, !dbg !2698

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2699, metadata !613), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2705, metadata !613), !dbg !2711
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2706, metadata !613), !dbg !2712
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2713
  %66 = load i8, i8* %65, align 1, !dbg !2713, !tbaa !877
  %67 = icmp eq i8 %66, 0, !dbg !2713
  br i1 %67, label %68, label %72, !dbg !2715

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2716, !tbaa !877
  %70 = icmp eq i8 %69, 96, !dbg !2717
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.74, i64 0, i64 0), !dbg !2716
  br label %75, !dbg !2718

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2719
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), !dbg !2720
  br label %75, !dbg !2721

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2722
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2723 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2727, metadata !613), !dbg !2730
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2728, metadata !613), !dbg !2731
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2729, metadata !613), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2733, metadata !613) #11, !dbg !2746
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2738, metadata !613) #11, !dbg !2748
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2739, metadata !613) #11, !dbg !2749
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2740, metadata !613) #11, !dbg !2750
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2751
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2751
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2741, metadata !613) #11, !dbg !2752
  %6 = tail call i32* @__errno_location() #18, !dbg !2753
  %7 = load i32, i32* %6, align 4, !dbg !2753, !tbaa !810
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2742, metadata !613) #11, !dbg !2754
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2755
  %9 = load i32, i32* %8, align 4, !dbg !2755, !tbaa !1919
  %10 = or i32 %9, 1, !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2743, metadata !613) #11, !dbg !2757
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2758
  %12 = load i32, i32* %11, align 8, !dbg !2758, !tbaa !1859
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2759
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2760
  %15 = load i8*, i8** %14, align 8, !dbg !2760, !tbaa !1945
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2761
  %17 = load i8*, i8** %16, align 8, !dbg !2761, !tbaa !1948
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2762
  %19 = add i64 %18, 1, !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2744, metadata !613) #11, !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2765, metadata !613) #11, !dbg !2770
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2772
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2745, metadata !613) #11, !dbg !2773
  %21 = load i32, i32* %11, align 8, !dbg !2774, !tbaa !1859
  %22 = load i8*, i8** %14, align 8, !dbg !2775, !tbaa !1945
  %23 = load i8*, i8** %16, align 8, !dbg !2776, !tbaa !1948
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2777
  store i32 %7, i32* %6, align 4, !dbg !2778, !tbaa !810
  ret i8* %20, !dbg !2779
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2734 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2733, metadata !613), !dbg !2780
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2738, metadata !613), !dbg !2781
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2739, metadata !613), !dbg !2782
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2740, metadata !613), !dbg !2783
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2784
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2784
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2741, metadata !613), !dbg !2785
  %7 = tail call i32* @__errno_location() #18, !dbg !2786
  %8 = load i32, i32* %7, align 4, !dbg !2786, !tbaa !810
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2742, metadata !613), !dbg !2787
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2788
  %10 = load i32, i32* %9, align 4, !dbg !2788, !tbaa !1919
  %11 = icmp ne i64* %2, null, !dbg !2789
  %12 = xor i1 %11, true, !dbg !2789
  %13 = zext i1 %12 to i32, !dbg !2789
  %14 = or i32 %10, %13, !dbg !2790
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2743, metadata !613), !dbg !2791
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2792
  %16 = load i32, i32* %15, align 8, !dbg !2792, !tbaa !1859
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2793
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2794
  %19 = load i8*, i8** %18, align 8, !dbg !2794, !tbaa !1945
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2795
  %21 = load i8*, i8** %20, align 8, !dbg !2795, !tbaa !1948
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2796
  %23 = add i64 %22, 1, !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2744, metadata !613), !dbg !2798
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2765, metadata !613) #11, !dbg !2799
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2801
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2745, metadata !613), !dbg !2802
  %25 = load i32, i32* %15, align 8, !dbg !2803, !tbaa !1859
  %26 = load i8*, i8** %18, align 8, !dbg !2804, !tbaa !1945
  %27 = load i8*, i8** %20, align 8, !dbg !2805, !tbaa !1948
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2806
  store i32 %8, i32* %7, align 4, !dbg !2807, !tbaa !810
  br i1 %11, label %29, label %30, !dbg !2808

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2809, !tbaa !866
  br label %30, !dbg !2811

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2812
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2813 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2817, !tbaa !620
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2815, metadata !613), !dbg !2818
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2816, metadata !613), !dbg !2819
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2816, metadata !613), !dbg !2819
  %2 = load i32, i32* @nslots, align 4, !dbg !2820, !tbaa !810
  %3 = icmp sgt i32 %2, 1, !dbg !2823
  br i1 %3, label %4, label %13, !dbg !2824

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2825

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2816, metadata !613), !dbg !2819
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2825
  %8 = load i8*, i8** %7, align 8, !dbg !2825, !tbaa !2826
  tail call void @free(i8* %8) #11, !dbg !2828
  %9 = add nuw i64 %6, 1, !dbg !2829
  %10 = load i32, i32* @nslots, align 4, !dbg !2820, !tbaa !810
  %11 = sext i32 %10 to i64, !dbg !2823
  %12 = icmp slt i64 %9, %11, !dbg !2823
  br i1 %12, label %5, label %13, !dbg !2824, !llvm.loop !2830

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2832
  %15 = load i8*, i8** %14, align 8, !dbg !2832, !tbaa !2826
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2834
  br i1 %16, label %18, label %17, !dbg !2835

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !2836
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2838, !tbaa !2839
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2840, !tbaa !2826
  br label %18, !dbg !2841

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2842
  br i1 %19, label %22, label %20, !dbg !2844

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2845
  tail call void @free(i8* %21) #11, !dbg !2847
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2848, !tbaa !620
  br label %22, !dbg !2849

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2850, !tbaa !810
  ret void, !dbg !2851
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2852 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2856, metadata !613), !dbg !2858
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2857, metadata !613), !dbg !2859
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2860
  ret i8* %3, !dbg !2861
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2862 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2866, metadata !613), !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2867, metadata !613), !dbg !2881
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2868, metadata !613), !dbg !2882
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2869, metadata !613), !dbg !2883
  %5 = tail call i32* @__errno_location() #18, !dbg !2884
  %6 = load i32, i32* %5, align 4, !dbg !2884, !tbaa !810
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2870, metadata !613), !dbg !2885
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2886, !tbaa !620
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2871, metadata !613), !dbg !2887
  %8 = icmp slt i32 %0, 0, !dbg !2888
  br i1 %8, label %9, label %10, !dbg !2890

; <label>:9:                                      ; preds = %4
  tail call void @abort() #16, !dbg !2891
  unreachable, !dbg !2891

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2892, !tbaa !810
  %12 = icmp sgt i32 %11, %0, !dbg !2893
  br i1 %12, label %34, label %13, !dbg !2894

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2895
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2896
  br i1 %15, label %16, label %17, !dbg !2898

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !2899
  unreachable, !dbg !2899

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2900
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2900
  %20 = add nsw i32 %0, 1, !dbg !2901
  %21 = sext i32 %20 to i64, !dbg !2902
  %22 = shl nsw i64 %21, 4, !dbg !2903
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2904
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2904
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2871, metadata !613), !dbg !2887
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2905, !tbaa !620
  br i1 %14, label %25, label %26, !dbg !2906

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2907, !tbaa.struct !2909
  br label %26, !dbg !2910

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2911, !tbaa !810
  %28 = sext i32 %27 to i64, !dbg !2912
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2912
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2913
  %31 = sub nsw i32 %20, %27, !dbg !2914
  %32 = sext i32 %31 to i64, !dbg !2915
  %33 = shl nsw i64 %32, 4, !dbg !2916
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2913
  store i32 %20, i32* @nslots, align 4, !dbg !2917, !tbaa !810
  br label %34, !dbg !2918

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2871, metadata !613), !dbg !2887
  %36 = sext i32 %0 to i64, !dbg !2919
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2920
  %38 = load i64, i64* %37, align 8, !dbg !2920, !tbaa !2839
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2875, metadata !613), !dbg !2921
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2922
  %40 = load i8*, i8** %39, align 8, !dbg !2922, !tbaa !2826
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2877, metadata !613), !dbg !2923
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2924
  %42 = load i32, i32* %41, align 4, !dbg !2924, !tbaa !1919
  %43 = or i32 %42, 1, !dbg !2925
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2878, metadata !613), !dbg !2926
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2927
  %45 = load i32, i32* %44, align 8, !dbg !2927, !tbaa !1859
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2928
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2929
  %48 = load i8*, i8** %47, align 8, !dbg !2929, !tbaa !1945
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2930
  %50 = load i8*, i8** %49, align 8, !dbg !2930, !tbaa !1948
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2931
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2879, metadata !613), !dbg !2932
  %52 = icmp ugt i64 %38, %51, !dbg !2933
  br i1 %52, label %63, label %53, !dbg !2935

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2936
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2875, metadata !613), !dbg !2921
  store i64 %54, i64* %37, align 8, !dbg !2938, !tbaa !2839
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2939
  br i1 %55, label %57, label %56, !dbg !2941

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2942
  br label %57, !dbg !2942

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2765, metadata !613) #11, !dbg !2943
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2945
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2877, metadata !613), !dbg !2923
  store i8* %58, i8** %39, align 8, !dbg !2946, !tbaa !2826
  %59 = load i32, i32* %44, align 8, !dbg !2947, !tbaa !1859
  %60 = load i8*, i8** %47, align 8, !dbg !2948, !tbaa !1945
  %61 = load i8*, i8** %49, align 8, !dbg !2949, !tbaa !1948
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2950
  br label %63, !dbg !2951

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2877, metadata !613), !dbg !2923
  store i32 %6, i32* %5, align 4, !dbg !2952, !tbaa !810
  ret i8* %64, !dbg !2953
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2954 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2958, metadata !613), !dbg !2961
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2959, metadata !613), !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2960, metadata !613), !dbg !2963
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2964
  ret i8* %4, !dbg !2965
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2966 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2970, metadata !613), !dbg !2971
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2856, metadata !613) #11, !dbg !2972
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2857, metadata !613) #11, !dbg !2974
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2975
  ret i8* %2, !dbg !2976
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2977 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2981, metadata !613), !dbg !2983
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2982, metadata !613), !dbg !2984
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2958, metadata !613) #11, !dbg !2985
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2959, metadata !613) #11, !dbg !2987
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2960, metadata !613) #11, !dbg !2988
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2989
  ret i8* %3, !dbg !2990
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2991 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2999, metadata !3005), !dbg !3006
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2995, metadata !613), !dbg !3008
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2996, metadata !613), !dbg !3009
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2997, metadata !613), !dbg !3010
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3011
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3011
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2998, metadata !613), !dbg !3012
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3004, metadata !613) #11, !dbg !3013
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3014
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3014
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2999, metadata !613) #11, !dbg !3006
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2999, metadata !3015) #11, !dbg !3006
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3006
  %8 = icmp eq i32 %1, 10, !dbg !3016
  br i1 %8, label %9, label %10, !dbg !3018

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3019, !noalias !3020
  unreachable, !dbg !3019

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2999, metadata !3015) #11, !dbg !3006
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3023
  store i32 %1, i32* %11, align 8, !dbg !3023, !alias.scope !3020
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3023
  %13 = bitcast i32* %12 to i8*, !dbg !3023
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3023
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3024
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2998, metadata !613), !dbg !3012
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3025
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3026
  ret i8* %14, !dbg !3027
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3028 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2999, metadata !3005), !dbg !3037
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3032, metadata !613), !dbg !3039
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3033, metadata !613), !dbg !3040
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3034, metadata !613), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3035, metadata !613), !dbg !3042
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3043
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3036, metadata !613), !dbg !3044
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3004, metadata !613) #11, !dbg !3045
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3046
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3046
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2999, metadata !613) #11, !dbg !3037
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2999, metadata !3015) #11, !dbg !3037
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3037
  %9 = icmp eq i32 %1, 10, !dbg !3047
  br i1 %9, label %10, label %11, !dbg !3048

; <label>:10:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3049, !noalias !3050
  unreachable, !dbg !3049

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2999, metadata !3015) #11, !dbg !3037
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3053
  store i32 %1, i32* %12, align 8, !dbg !3053, !alias.scope !3050
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3053
  %14 = bitcast i32* %13 to i8*, !dbg !3053
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3053
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3054
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3036, metadata !613), !dbg !3044
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3055
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3056
  ret i8* %15, !dbg !3057
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3058 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2999, metadata !3005), !dbg !3064
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3062, metadata !613), !dbg !3067
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3063, metadata !613), !dbg !3068
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2995, metadata !613) #11, !dbg !3069
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2996, metadata !613) #11, !dbg !3070
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2997, metadata !613) #11, !dbg !3071
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3072
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2998, metadata !613) #11, !dbg !3073
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3004, metadata !613) #11, !dbg !3074
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !3075
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2999, metadata !613) #11, !dbg !3064
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2999, metadata !3015) #11, !dbg !3064
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3064
  %7 = icmp eq i32 %0, 10, !dbg !3076
  br i1 %7, label %8, label %9, !dbg !3077

; <label>:8:                                      ; preds = %2
  tail call void @abort() #16, !dbg !3078, !noalias !3079
  unreachable, !dbg !3078

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2999, metadata !3015) #11, !dbg !3064
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3082
  store i32 %0, i32* %10, align 8, !dbg !3082, !alias.scope !3079
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3082
  %12 = bitcast i32* %11 to i8*, !dbg !3082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3082
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !3083
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2998, metadata !613) #11, !dbg !3073
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3084
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3085
  ret i8* %13, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3087 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2999, metadata !3005), !dbg !3094
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3091, metadata !613), !dbg !3097
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3092, metadata !613), !dbg !3098
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3093, metadata !613), !dbg !3099
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3032, metadata !613) #11, !dbg !3100
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3033, metadata !613) #11, !dbg !3101
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3034, metadata !613) #11, !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3035, metadata !613) #11, !dbg !3103
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3104
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3104
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3036, metadata !613) #11, !dbg !3105
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3004, metadata !613) #11, !dbg !3106
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3107
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3107
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2999, metadata !613) #11, !dbg !3094
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2999, metadata !3015) #11, !dbg !3094
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3094
  %8 = icmp eq i32 %0, 10, !dbg !3108
  br i1 %8, label %9, label %10, !dbg !3109

; <label>:9:                                      ; preds = %3
  tail call void @abort() #16, !dbg !3110, !noalias !3111
  unreachable, !dbg !3110

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2999, metadata !3015) #11, !dbg !3094
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3114
  store i32 %0, i32* %11, align 8, !dbg !3114, !alias.scope !3111
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3114
  %13 = bitcast i32* %12 to i8*, !dbg !3114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3114
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3115
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3036, metadata !613) #11, !dbg !3105
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3116
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3117
  ret i8* %14, !dbg !3118
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3119 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3123, metadata !613), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3124, metadata !613), !dbg !3128
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3125, metadata !613), !dbg !3129
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3130
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3131, !tbaa.struct !3132
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3126, metadata !613), !dbg !3133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1878, metadata !613), !dbg !3134
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1879, metadata !613), !dbg !3136
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1880, metadata !613), !dbg !3137
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1881, metadata !613), !dbg !3138
  %6 = lshr i8 %2, 5, !dbg !3139
  %7 = zext i8 %6 to i64, !dbg !3139
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3140
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1882, metadata !613), !dbg !3141
  %9 = and i8 %2, 31, !dbg !3142
  %10 = zext i8 %9 to i32, !dbg !3143
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1884, metadata !613), !dbg !3144
  %11 = load i32, i32* %8, align 4, !dbg !3145, !tbaa !810
  %12 = lshr i32 %11, %10, !dbg !3146
  %13 = and i32 %12, 1, !dbg !3147
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1885, metadata !613), !dbg !3148
  %14 = xor i32 %13, 1, !dbg !3149
  %15 = shl i32 %14, %10, !dbg !3150
  %16 = xor i32 %15, %11, !dbg !3151
  store i32 %16, i32* %8, align 4, !dbg !3151, !tbaa !810
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3126, metadata !613), !dbg !3133
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3152
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3153
  ret i8* %17, !dbg !3154
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3155 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3159, metadata !613), !dbg !3161
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3160, metadata !613), !dbg !3162
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3123, metadata !613) #11, !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3124, metadata !613) #11, !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3125, metadata !613) #11, !dbg !3166
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3167
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3168, !tbaa.struct !3132
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3126, metadata !613) #11, !dbg !3169
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1878, metadata !613) #11, !dbg !3170
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1879, metadata !613) #11, !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1880, metadata !613) #11, !dbg !3173
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1881, metadata !613) #11, !dbg !3174
  %5 = lshr i8 %1, 5, !dbg !3175
  %6 = zext i8 %5 to i64, !dbg !3175
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3176
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1882, metadata !613) #11, !dbg !3177
  %8 = and i8 %1, 31, !dbg !3178
  %9 = zext i8 %8 to i32, !dbg !3179
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1884, metadata !613) #11, !dbg !3180
  %10 = load i32, i32* %7, align 4, !dbg !3181, !tbaa !810
  %11 = lshr i32 %10, %9, !dbg !3182
  %12 = and i32 %11, 1, !dbg !3183
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1885, metadata !613) #11, !dbg !3184
  %13 = xor i32 %12, 1, !dbg !3185
  %14 = shl i32 %13, %9, !dbg !3186
  %15 = xor i32 %14, %10, !dbg !3187
  store i32 %15, i32* %7, align 4, !dbg !3187, !tbaa !810
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3126, metadata !613) #11, !dbg !3169
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3188
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3189
  ret i8* %16, !dbg !3190
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3191 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3193, metadata !613), !dbg !3194
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3159, metadata !613) #11, !dbg !3195
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3160, metadata !613) #11, !dbg !3197
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3123, metadata !613) #11, !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3124, metadata !613) #11, !dbg !3200
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3125, metadata !613) #11, !dbg !3201
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3202
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3202
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3203, !tbaa.struct !3132
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3126, metadata !613) #11, !dbg !3204
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1878, metadata !613) #11, !dbg !3205
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1879, metadata !613) #11, !dbg !3207
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1880, metadata !613) #11, !dbg !3208
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1881, metadata !613) #11, !dbg !3209
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3210
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1882, metadata !613) #11, !dbg !3211
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1884, metadata !613) #11, !dbg !3212
  %5 = load i32, i32* %4, align 4, !dbg !3213, !tbaa !810
  %6 = or i32 %5, 67108864, !dbg !3214
  store i32 %6, i32* %4, align 4, !dbg !3214, !tbaa !810
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3126, metadata !613) #11, !dbg !3204
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3215
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3216
  ret i8* %7, !dbg !3217
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3218 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3220, metadata !613), !dbg !3222
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3221, metadata !613), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3123, metadata !613) #11, !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3124, metadata !613) #11, !dbg !3226
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3125, metadata !613) #11, !dbg !3227
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3228
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3228
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3229, !tbaa.struct !3132
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3126, metadata !613) #11, !dbg !3230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1878, metadata !613) #11, !dbg !3231
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1879, metadata !613) #11, !dbg !3233
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1880, metadata !613) #11, !dbg !3234
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1881, metadata !613) #11, !dbg !3235
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3236
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1882, metadata !613) #11, !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1884, metadata !613) #11, !dbg !3238
  %6 = load i32, i32* %5, align 4, !dbg !3239, !tbaa !810
  %7 = or i32 %6, 67108864, !dbg !3240
  store i32 %7, i32* %5, align 4, !dbg !3240, !tbaa !810
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3126, metadata !613) #11, !dbg !3230
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3241
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3242
  ret i8* %8, !dbg !3243
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3244 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2999, metadata !3005), !dbg !3250
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3246, metadata !613), !dbg !3252
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3247, metadata !613), !dbg !3253
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3248, metadata !613), !dbg !3254
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3255
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3255
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3004, metadata !613) #11, !dbg !3256
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3257
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !3257
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2999, metadata !613) #11, !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2999, metadata !3015) #11, !dbg !3250
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3250
  %9 = icmp eq i32 %1, 10, !dbg !3258
  br i1 %9, label %10, label %11, !dbg !3259

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3260, !noalias !3261
  unreachable, !dbg !3260

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2999, metadata !3015) #11, !dbg !3250
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3264
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3264
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !3265
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3266
  store i32 %1, i32* %13, align 8, !dbg !3266
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3266
  %15 = bitcast i32* %14 to i8*, !dbg !3266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3266
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3249, metadata !613), !dbg !3267
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1878, metadata !613), !dbg !3268
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1879, metadata !613), !dbg !3270
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1880, metadata !613), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1881, metadata !613), !dbg !3272
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3273
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1882, metadata !613), !dbg !3274
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1884, metadata !613), !dbg !3275
  %17 = load i32, i32* %16, align 4, !dbg !3276, !tbaa !810
  %18 = or i32 %17, 67108864, !dbg !3277
  store i32 %18, i32* %16, align 4, !dbg !3277, !tbaa !810
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3249, metadata !613), !dbg !3267
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3278
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3279
  ret i8* %19, !dbg !3280
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3281 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3285, metadata !613), !dbg !3289
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3286, metadata !613), !dbg !3290
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3287, metadata !613), !dbg !3291
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3288, metadata !613), !dbg !3292
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3293, metadata !613) #11, !dbg !3303
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3298, metadata !613) #11, !dbg !3305
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3299, metadata !613) #11, !dbg !3306
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3300, metadata !613) #11, !dbg !3307
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3301, metadata !613) #11, !dbg !3308
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3309
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3310, !tbaa.struct !3132
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3302, metadata !613) #11, !dbg !3311
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1927, metadata !613) #11, !dbg !3312
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1928, metadata !613) #11, !dbg !3314
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1929, metadata !613) #11, !dbg !3315
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1927, metadata !613) #11, !dbg !3312
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1927, metadata !613) #11, !dbg !3312
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3316
  store i32 10, i32* %7, align 8, !dbg !3317, !tbaa !1859
  %8 = icmp ne i8* %1, null, !dbg !3318
  %9 = icmp ne i8* %2, null, !dbg !3319
  %10 = and i1 %8, %9, !dbg !3320
  br i1 %10, label %12, label %11, !dbg !3320

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3321
  unreachable, !dbg !3321

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3322
  store i8* %1, i8** %13, align 8, !dbg !3323, !tbaa !1945
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3324
  store i8* %2, i8** %14, align 8, !dbg !3325, !tbaa !1948
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3302, metadata !613) #11, !dbg !3311
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3326
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3327
  ret i8* %15, !dbg !3328
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3294 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3293, metadata !613), !dbg !3329
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3298, metadata !613), !dbg !3330
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3299, metadata !613), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3300, metadata !613), !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3301, metadata !613), !dbg !3333
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3334
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3334
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3335, !tbaa.struct !3132
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3302, metadata !613), !dbg !3336
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1927, metadata !613) #11, !dbg !3337
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1928, metadata !613) #11, !dbg !3339
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1929, metadata !613) #11, !dbg !3340
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1927, metadata !613) #11, !dbg !3337
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1927, metadata !613) #11, !dbg !3337
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3341
  store i32 10, i32* %8, align 8, !dbg !3342, !tbaa !1859
  %9 = icmp ne i8* %1, null, !dbg !3343
  %10 = icmp ne i8* %2, null, !dbg !3344
  %11 = and i1 %9, %10, !dbg !3345
  br i1 %11, label %13, label %12, !dbg !3345

; <label>:12:                                     ; preds = %5
  tail call void @abort() #16, !dbg !3346
  unreachable, !dbg !3346

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3347
  store i8* %1, i8** %14, align 8, !dbg !3348, !tbaa !1945
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3349
  store i8* %2, i8** %15, align 8, !dbg !3350, !tbaa !1948
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3302, metadata !613), !dbg !3336
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3351
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3352
  ret i8* %16, !dbg !3353
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3354 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3358, metadata !613), !dbg !3361
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3359, metadata !613), !dbg !3362
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3360, metadata !613), !dbg !3363
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3285, metadata !613) #11, !dbg !3364
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3286, metadata !613) #11, !dbg !3366
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3287, metadata !613) #11, !dbg !3367
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3288, metadata !613) #11, !dbg !3368
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3293, metadata !613) #11, !dbg !3369
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3298, metadata !613) #11, !dbg !3371
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3299, metadata !613) #11, !dbg !3372
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3300, metadata !613) #11, !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3301, metadata !613) #11, !dbg !3374
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3375
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3375
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3376, !tbaa.struct !3132
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3302, metadata !613) #11, !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1927, metadata !613) #11, !dbg !3378
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1928, metadata !613) #11, !dbg !3380
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1929, metadata !613) #11, !dbg !3381
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1927, metadata !613) #11, !dbg !3378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1927, metadata !613) #11, !dbg !3378
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3382
  store i32 10, i32* %6, align 8, !dbg !3383, !tbaa !1859
  %7 = icmp ne i8* %0, null, !dbg !3384
  %8 = icmp ne i8* %1, null, !dbg !3385
  %9 = and i1 %7, %8, !dbg !3386
  br i1 %9, label %11, label %10, !dbg !3386

; <label>:10:                                     ; preds = %3
  tail call void @abort() #16, !dbg !3387
  unreachable, !dbg !3387

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3388
  store i8* %0, i8** %12, align 8, !dbg !3389, !tbaa !1945
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3390
  store i8* %1, i8** %13, align 8, !dbg !3391, !tbaa !1948
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3302, metadata !613) #11, !dbg !3377
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3392
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3393
  ret i8* %14, !dbg !3394
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3395 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3399, metadata !613), !dbg !3403
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3400, metadata !613), !dbg !3404
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3401, metadata !613), !dbg !3405
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3402, metadata !613), !dbg !3406
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3293, metadata !613) #11, !dbg !3407
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3298, metadata !613) #11, !dbg !3409
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3299, metadata !613) #11, !dbg !3410
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3300, metadata !613) #11, !dbg !3411
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3301, metadata !613) #11, !dbg !3412
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3413
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3413
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3414, !tbaa.struct !3132
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3302, metadata !613) #11, !dbg !3415
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1927, metadata !613) #11, !dbg !3416
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1928, metadata !613) #11, !dbg !3418
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1929, metadata !613) #11, !dbg !3419
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1927, metadata !613) #11, !dbg !3416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1927, metadata !613) #11, !dbg !3416
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3420
  store i32 10, i32* %7, align 8, !dbg !3421, !tbaa !1859
  %8 = icmp ne i8* %0, null, !dbg !3422
  %9 = icmp ne i8* %1, null, !dbg !3423
  %10 = and i1 %8, %9, !dbg !3424
  br i1 %10, label %12, label %11, !dbg !3424

; <label>:11:                                     ; preds = %4
  tail call void @abort() #16, !dbg !3425
  unreachable, !dbg !3425

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3426
  store i8* %0, i8** %13, align 8, !dbg !3427, !tbaa !1945
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3428
  store i8* %1, i8** %14, align 8, !dbg !3429, !tbaa !1948
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3302, metadata !613) #11, !dbg !3415
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3431
  ret i8* %15, !dbg !3432
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3433 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3437, metadata !613), !dbg !3440
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3438, metadata !613), !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3439, metadata !613), !dbg !3442
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3443
  ret i8* %4, !dbg !3444
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3445 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3449, metadata !613), !dbg !3451
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3450, metadata !613), !dbg !3452
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3437, metadata !613) #11, !dbg !3453
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3438, metadata !613) #11, !dbg !3455
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3439, metadata !613) #11, !dbg !3456
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3457
  ret i8* %3, !dbg !3458
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3459 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3463, metadata !613), !dbg !3465
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3464, metadata !613), !dbg !3466
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3437, metadata !613) #11, !dbg !3467
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3438, metadata !613) #11, !dbg !3469
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3439, metadata !613) #11, !dbg !3470
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3471
  ret i8* %3, !dbg !3472
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3473 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3477, metadata !613), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3463, metadata !613) #11, !dbg !3479
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3464, metadata !613) #11, !dbg !3481
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3437, metadata !613) #11, !dbg !3482
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3438, metadata !613) #11, !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3439, metadata !613) #11, !dbg !3485
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3486
  ret i8* %2, !dbg !3487
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3488 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3533, metadata !613), !dbg !3539
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3534, metadata !613), !dbg !3540
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3535, metadata !613), !dbg !3541
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3536, metadata !613), !dbg !3542
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3537, metadata !613), !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3538, metadata !613), !dbg !3544
  %7 = icmp eq i8* %1, null, !dbg !3545
  br i1 %7, label %10, label %8, !dbg !3547

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3548
  br label %12, !dbg !3548

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.82, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3549
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i32 5) #11, !dbg !3550
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3550
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.84, i64 0, i64 0), i32 5) #11, !dbg !3551
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3551
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
  ], !dbg !3552

; <label>:17:                                     ; preds = %12
  tail call void @abort() #16, !dbg !3553
  unreachable, !dbg !3553

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.85, i64 0, i64 0), i32 5) #11, !dbg !3555
  %20 = load i8*, i8** %4, align 8, !dbg !3555, !tbaa !620
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3555
  br label %146, !dbg !3556

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.86, i64 0, i64 0), i32 5) #11, !dbg !3557
  %24 = load i8*, i8** %4, align 8, !dbg !3557, !tbaa !620
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3557
  %26 = load i8*, i8** %25, align 8, !dbg !3557, !tbaa !620
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3557
  br label %146, !dbg !3558

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.87, i64 0, i64 0), i32 5) #11, !dbg !3559
  %30 = load i8*, i8** %4, align 8, !dbg !3559, !tbaa !620
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3559
  %32 = load i8*, i8** %31, align 8, !dbg !3559, !tbaa !620
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3559
  %34 = load i8*, i8** %33, align 8, !dbg !3559, !tbaa !620
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3559
  br label %146, !dbg !3560

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.88, i64 0, i64 0), i32 5) #11, !dbg !3561
  %38 = load i8*, i8** %4, align 8, !dbg !3561, !tbaa !620
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3561
  %40 = load i8*, i8** %39, align 8, !dbg !3561, !tbaa !620
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3561
  %42 = load i8*, i8** %41, align 8, !dbg !3561, !tbaa !620
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3561
  %44 = load i8*, i8** %43, align 8, !dbg !3561, !tbaa !620
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3561
  br label %146, !dbg !3562

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.89, i64 0, i64 0), i32 5) #11, !dbg !3563
  %48 = load i8*, i8** %4, align 8, !dbg !3563, !tbaa !620
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3563
  %50 = load i8*, i8** %49, align 8, !dbg !3563, !tbaa !620
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3563
  %52 = load i8*, i8** %51, align 8, !dbg !3563, !tbaa !620
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3563
  %54 = load i8*, i8** %53, align 8, !dbg !3563, !tbaa !620
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3563
  %56 = load i8*, i8** %55, align 8, !dbg !3563, !tbaa !620
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3563
  br label %146, !dbg !3564

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.90, i64 0, i64 0), i32 5) #11, !dbg !3565
  %60 = load i8*, i8** %4, align 8, !dbg !3565, !tbaa !620
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3565
  %62 = load i8*, i8** %61, align 8, !dbg !3565, !tbaa !620
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3565
  %64 = load i8*, i8** %63, align 8, !dbg !3565, !tbaa !620
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3565
  %66 = load i8*, i8** %65, align 8, !dbg !3565, !tbaa !620
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3565
  %68 = load i8*, i8** %67, align 8, !dbg !3565, !tbaa !620
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3565
  %70 = load i8*, i8** %69, align 8, !dbg !3565, !tbaa !620
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3565
  br label %146, !dbg !3566

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.91, i64 0, i64 0), i32 5) #11, !dbg !3567
  %74 = load i8*, i8** %4, align 8, !dbg !3567, !tbaa !620
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3567
  %76 = load i8*, i8** %75, align 8, !dbg !3567, !tbaa !620
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3567
  %78 = load i8*, i8** %77, align 8, !dbg !3567, !tbaa !620
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3567
  %80 = load i8*, i8** %79, align 8, !dbg !3567, !tbaa !620
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3567
  %82 = load i8*, i8** %81, align 8, !dbg !3567, !tbaa !620
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3567
  %84 = load i8*, i8** %83, align 8, !dbg !3567, !tbaa !620
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3567
  %86 = load i8*, i8** %85, align 8, !dbg !3567, !tbaa !620
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3567
  br label %146, !dbg !3568

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.92, i64 0, i64 0), i32 5) #11, !dbg !3569
  %90 = load i8*, i8** %4, align 8, !dbg !3569, !tbaa !620
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3569
  %92 = load i8*, i8** %91, align 8, !dbg !3569, !tbaa !620
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3569
  %94 = load i8*, i8** %93, align 8, !dbg !3569, !tbaa !620
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3569
  %96 = load i8*, i8** %95, align 8, !dbg !3569, !tbaa !620
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3569
  %98 = load i8*, i8** %97, align 8, !dbg !3569, !tbaa !620
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3569
  %100 = load i8*, i8** %99, align 8, !dbg !3569, !tbaa !620
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3569
  %102 = load i8*, i8** %101, align 8, !dbg !3569, !tbaa !620
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3569
  %104 = load i8*, i8** %103, align 8, !dbg !3569, !tbaa !620
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3569
  br label %146, !dbg !3570

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.93, i64 0, i64 0), i32 5) #11, !dbg !3571
  %108 = load i8*, i8** %4, align 8, !dbg !3571, !tbaa !620
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3571
  %110 = load i8*, i8** %109, align 8, !dbg !3571, !tbaa !620
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3571
  %112 = load i8*, i8** %111, align 8, !dbg !3571, !tbaa !620
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3571
  %114 = load i8*, i8** %113, align 8, !dbg !3571, !tbaa !620
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3571
  %116 = load i8*, i8** %115, align 8, !dbg !3571, !tbaa !620
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3571
  %118 = load i8*, i8** %117, align 8, !dbg !3571, !tbaa !620
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3571
  %120 = load i8*, i8** %119, align 8, !dbg !3571, !tbaa !620
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3571
  %122 = load i8*, i8** %121, align 8, !dbg !3571, !tbaa !620
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3571
  %124 = load i8*, i8** %123, align 8, !dbg !3571, !tbaa !620
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3571
  br label %146, !dbg !3572

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.94, i64 0, i64 0), i32 5) #11, !dbg !3573
  %128 = load i8*, i8** %4, align 8, !dbg !3573, !tbaa !620
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3573
  %130 = load i8*, i8** %129, align 8, !dbg !3573, !tbaa !620
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3573
  %132 = load i8*, i8** %131, align 8, !dbg !3573, !tbaa !620
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3573
  %134 = load i8*, i8** %133, align 8, !dbg !3573, !tbaa !620
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3573
  %136 = load i8*, i8** %135, align 8, !dbg !3573, !tbaa !620
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3573
  %138 = load i8*, i8** %137, align 8, !dbg !3573, !tbaa !620
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3573
  %140 = load i8*, i8** %139, align 8, !dbg !3573, !tbaa !620
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3573
  %142 = load i8*, i8** %141, align 8, !dbg !3573, !tbaa !620
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3573
  %144 = load i8*, i8** %143, align 8, !dbg !3573, !tbaa !620
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3573
  br label %146, !dbg !3574

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3575
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3576 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3580, metadata !613), !dbg !3586
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3581, metadata !613), !dbg !3587
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3582, metadata !613), !dbg !3588
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3583, metadata !613), !dbg !3589
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3584, metadata !613), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3585, metadata !613), !dbg !3591
  br label %6, !dbg !3592

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3585, metadata !613), !dbg !3591
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3594
  %9 = load i8*, i8** %8, align 8, !dbg !3594, !tbaa !620
  %10 = icmp eq i8* %9, null, !dbg !3596
  %11 = add i64 %7, 1, !dbg !3597
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3585, metadata !613), !dbg !3591
  br i1 %10, label %12, label %6, !dbg !3596, !llvm.loop !3598

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3600
  ret void, !dbg !3601
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3602 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3613, metadata !613), !dbg !3621
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3614, metadata !613), !dbg !3622
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3615, metadata !613), !dbg !3623
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3616, metadata !613), !dbg !3624
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3617, metadata !613), !dbg !3625
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3626
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3626
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3619, metadata !613), !dbg !3627
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3618, metadata !613), !dbg !3628
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3618, metadata !613), !dbg !3628
  %11 = load i32, i32* %8, align 8, !dbg !3629
  %12 = icmp ult i32 %11, 41, !dbg !3629
  br i1 %12, label %13, label %18, !dbg !3629

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3629
  %15 = sext i32 %11 to i64, !dbg !3629
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3629
  %17 = add i32 %11, 8, !dbg !3629
  store i32 %17, i32* %8, align 8, !dbg !3629
  br label %21, !dbg !3629

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3629
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3629
  store i8* %20, i8** %10, align 8, !dbg !3629
  br label %21, !dbg !3629

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3629
  %25 = load i8*, i8** %24, align 8, !dbg !3629
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3632
  store i8* %25, i8** %26, align 16, !dbg !3633, !tbaa !620
  %27 = icmp eq i8* %25, null, !dbg !3634
  br i1 %27, label %30, label %28, !dbg !3635

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3618, metadata !613), !dbg !3628
  %29 = icmp ult i32 %22, 41, !dbg !3629
  br i1 %29, label %35, label %32, !dbg !3629

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3636
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3637
  ret void, !dbg !3637

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3629
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3629
  store i8* %34, i8** %10, align 8, !dbg !3629
  br label %40, !dbg !3629

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3629
  %37 = sext i32 %22 to i64, !dbg !3629
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3629
  %39 = add i32 %22, 8, !dbg !3629
  store i32 %39, i32* %8, align 8, !dbg !3629
  br label %40, !dbg !3629

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3629
  %44 = load i8*, i8** %43, align 8, !dbg !3629
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3632
  store i8* %44, i8** %45, align 8, !dbg !3633, !tbaa !620
  %46 = icmp eq i8* %44, null, !dbg !3634
  br i1 %46, label %30, label %47, !dbg !3635

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3618, metadata !613), !dbg !3628
  %48 = icmp ult i32 %41, 41, !dbg !3629
  br i1 %48, label %52, label %49, !dbg !3629

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3629
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3629
  store i8* %51, i8** %10, align 8, !dbg !3629
  br label %57, !dbg !3629

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3629
  %54 = sext i32 %41 to i64, !dbg !3629
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3629
  %56 = add i32 %41, 8, !dbg !3629
  store i32 %56, i32* %8, align 8, !dbg !3629
  br label %57, !dbg !3629

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3629
  %61 = load i8*, i8** %60, align 8, !dbg !3629
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3632
  store i8* %61, i8** %62, align 16, !dbg !3633, !tbaa !620
  %63 = icmp eq i8* %61, null, !dbg !3634
  br i1 %63, label %30, label %64, !dbg !3635

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3618, metadata !613), !dbg !3628
  %65 = icmp ult i32 %58, 41, !dbg !3629
  br i1 %65, label %69, label %66, !dbg !3629

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3629
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3629
  store i8* %68, i8** %10, align 8, !dbg !3629
  br label %74, !dbg !3629

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3629
  %71 = sext i32 %58 to i64, !dbg !3629
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3629
  %73 = add i32 %58, 8, !dbg !3629
  store i32 %73, i32* %8, align 8, !dbg !3629
  br label %74, !dbg !3629

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3629
  %78 = load i8*, i8** %77, align 8, !dbg !3629
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3632
  store i8* %78, i8** %79, align 8, !dbg !3633, !tbaa !620
  %80 = icmp eq i8* %78, null, !dbg !3634
  br i1 %80, label %30, label %81, !dbg !3635

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3618, metadata !613), !dbg !3628
  %82 = icmp ult i32 %75, 41, !dbg !3629
  br i1 %82, label %86, label %83, !dbg !3629

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3629
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3629
  store i8* %85, i8** %10, align 8, !dbg !3629
  br label %91, !dbg !3629

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3629
  %88 = sext i32 %75 to i64, !dbg !3629
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3629
  %90 = add i32 %75, 8, !dbg !3629
  store i32 %90, i32* %8, align 8, !dbg !3629
  br label %91, !dbg !3629

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3629
  %95 = load i8*, i8** %94, align 8, !dbg !3629
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3632
  store i8* %95, i8** %96, align 16, !dbg !3633, !tbaa !620
  %97 = icmp eq i8* %95, null, !dbg !3634
  br i1 %97, label %30, label %98, !dbg !3635

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3618, metadata !613), !dbg !3628
  %99 = icmp ult i32 %92, 41, !dbg !3629
  br i1 %99, label %103, label %100, !dbg !3629

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3629
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3629
  store i8* %102, i8** %10, align 8, !dbg !3629
  br label %108, !dbg !3629

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3629
  %105 = sext i32 %92 to i64, !dbg !3629
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3629
  %107 = add i32 %92, 8, !dbg !3629
  store i32 %107, i32* %8, align 8, !dbg !3629
  br label %108, !dbg !3629

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3629
  %111 = load i8*, i8** %110, align 8, !dbg !3629
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3632
  store i8* %111, i8** %112, align 8, !dbg !3633, !tbaa !620
  %113 = icmp eq i8* %111, null, !dbg !3634
  br i1 %113, label %30, label %114, !dbg !3635

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3618, metadata !613), !dbg !3628
  %115 = load i8*, i8** %10, align 8, !dbg !3629
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3629
  store i8* %116, i8** %10, align 8, !dbg !3629
  %117 = bitcast i8* %115 to i8**, !dbg !3629
  %118 = load i8*, i8** %117, align 8, !dbg !3629
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3632
  store i8* %118, i8** %119, align 16, !dbg !3633, !tbaa !620
  %120 = icmp eq i8* %118, null, !dbg !3634
  br i1 %120, label %30, label %121, !dbg !3635

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3618, metadata !613), !dbg !3628
  %122 = load i8*, i8** %10, align 8, !dbg !3629
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3629
  store i8* %123, i8** %10, align 8, !dbg !3629
  %124 = bitcast i8* %122 to i8**, !dbg !3629
  %125 = load i8*, i8** %124, align 8, !dbg !3629
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3632
  store i8* %125, i8** %126, align 8, !dbg !3633, !tbaa !620
  %127 = icmp eq i8* %125, null, !dbg !3634
  br i1 %127, label %30, label %128, !dbg !3635

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3618, metadata !613), !dbg !3628
  %129 = load i8*, i8** %10, align 8, !dbg !3629
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3629
  store i8* %130, i8** %10, align 8, !dbg !3629
  %131 = bitcast i8* %129 to i8**, !dbg !3629
  %132 = load i8*, i8** %131, align 8, !dbg !3629
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3632
  store i8* %132, i8** %133, align 16, !dbg !3633, !tbaa !620
  %134 = icmp eq i8* %132, null, !dbg !3634
  br i1 %134, label %30, label %135, !dbg !3635

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3618, metadata !613), !dbg !3628
  %136 = load i8*, i8** %10, align 8, !dbg !3629
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3629
  store i8* %137, i8** %10, align 8, !dbg !3629
  %138 = bitcast i8* %136 to i8**, !dbg !3629
  %139 = load i8*, i8** %138, align 8, !dbg !3629
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3632
  store i8* %139, i8** %140, align 8, !dbg !3633, !tbaa !620
  %141 = icmp eq i8* %139, null, !dbg !3634
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3618, metadata !613), !dbg !3628
  %142 = select i1 %141, i64 9, i64 10, !dbg !3635
  br label %30, !dbg !3635
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3638 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3642, metadata !613), !dbg !3652
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3643, metadata !613), !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3644, metadata !613), !dbg !3654
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3645, metadata !613), !dbg !3655
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3656
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3656
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3646, metadata !613), !dbg !3657
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3658
  call void @llvm.va_start(i8* nonnull %6), !dbg !3658
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3659
  call void @llvm.va_end(i8* nonnull %6), !dbg !3660
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3661
  ret void, !dbg !3661
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3662 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.97, i64 0, i64 0), i32 5) #11, !dbg !3663
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.98, i64 0, i64 0)) #11, !dbg !3663
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.99, i64 0, i64 0), i32 5) #11, !dbg !3664
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.100, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.101, i64 0, i64 0)) #11, !dbg !3664
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.102, i64 0, i64 0), i32 5) #11, !dbg !3665
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3665, !tbaa !620
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3665
  ret void, !dbg !3666
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3667 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3671, metadata !613), !dbg !3673
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3672, metadata !613), !dbg !3674
  %3 = udiv i64 9223372036854775807, %1, !dbg !3675
  %4 = icmp ult i64 %3, %0, !dbg !3675
  br i1 %4, label %5, label %6, !dbg !3677

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3678
  unreachable, !dbg !3678

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3680, metadata !613) #11, !dbg !3687
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3689
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3686, metadata !613) #11, !dbg !3690
  %9 = icmp eq i8* %8, null, !dbg !3691
  %10 = icmp ne i64 %7, 0, !dbg !3693
  %11 = and i1 %10, %9, !dbg !3694
  br i1 %11, label %12, label %13, !dbg !3694

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16, !dbg !3695
  unreachable, !dbg !3695

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3696
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3681 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3680, metadata !613), !dbg !3697
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3698
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3686, metadata !613), !dbg !3699
  %3 = icmp eq i8* %2, null, !dbg !3700
  %4 = icmp ne i64 %0, 0, !dbg !3701
  %5 = and i1 %4, %3, !dbg !3702
  br i1 %5, label %6, label %7, !dbg !3702

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3703
  unreachable, !dbg !3703

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3704
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3705 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3709, metadata !613), !dbg !3712
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3710, metadata !613), !dbg !3713
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3711, metadata !613), !dbg !3714
  %4 = udiv i64 9223372036854775807, %2, !dbg !3715
  %5 = icmp ult i64 %4, %1, !dbg !3715
  br i1 %5, label %6, label %7, !dbg !3717

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #16, !dbg !3718
  unreachable, !dbg !3718

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3719
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3720, metadata !613) #11, !dbg !3726
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3725, metadata !613) #11, !dbg !3728
  %9 = icmp eq i64 %8, 0, !dbg !3729
  %10 = icmp ne i8* %0, null, !dbg !3731
  %11 = and i1 %10, %9, !dbg !3732
  br i1 %11, label %12, label %13, !dbg !3732

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3733
  br label %19, !dbg !3735

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3736
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3720, metadata !613) #11, !dbg !3726
  %15 = icmp eq i8* %14, null, !dbg !3737
  %16 = icmp ne i64 %8, 0, !dbg !3739
  %17 = and i1 %16, %15, !dbg !3740
  br i1 %17, label %18, label %19, !dbg !3740

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3741
  unreachable, !dbg !3741

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3742
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3721 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3720, metadata !613), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3725, metadata !613), !dbg !3744
  %3 = icmp eq i64 %1, 0, !dbg !3745
  %4 = icmp ne i8* %0, null, !dbg !3746
  %5 = and i1 %4, %3, !dbg !3747
  br i1 %5, label %6, label %7, !dbg !3747

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3748
  br label %13, !dbg !3749

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3750
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3720, metadata !613), !dbg !3743
  %9 = icmp eq i8* %8, null, !dbg !3751
  %10 = icmp ne i64 %1, 0, !dbg !3752
  %11 = and i1 %10, %9, !dbg !3753
  br i1 %11, label %12, label %13, !dbg !3753

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16, !dbg !3754
  unreachable, !dbg !3754

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3755
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !558 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !563, metadata !613), !dbg !3756
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !564, metadata !613), !dbg !3757
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !565, metadata !613), !dbg !3758
  %4 = load i64, i64* %1, align 8, !dbg !3759, !tbaa !866
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !566, metadata !613), !dbg !3760
  %5 = icmp eq i8* %0, null, !dbg !3761
  br i1 %5, label %6, label %13, !dbg !3763

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3764
  br i1 %7, label %8, label %17, !dbg !3767

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3768
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !566, metadata !613), !dbg !3760
  %10 = icmp ugt i64 %2, 128, !dbg !3770
  %11 = zext i1 %10 to i64, !dbg !3770
  %12 = add nuw nsw i64 %9, %11, !dbg !3771
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !566, metadata !613), !dbg !3760
  br label %17, !dbg !3772

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3773
  %15 = icmp ugt i64 %14, %4, !dbg !3776
  br i1 %15, label %20, label %16, !dbg !3777

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #16, !dbg !3778
  unreachable, !dbg !3778

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !566, metadata !613), !dbg !3760
  store i64 %18, i64* %1, align 8, !dbg !3779, !tbaa !866
  %19 = mul i64 %18, %2, !dbg !3780
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3720, metadata !613) #11, !dbg !3781
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3725, metadata !613) #11, !dbg !3783
  br label %27, !dbg !3784

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3785
  %22 = add i64 %4, 1, !dbg !3786
  %23 = add i64 %22, %21, !dbg !3787
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !566, metadata !613), !dbg !3760
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !566, metadata !613), !dbg !3760
  store i64 %23, i64* %1, align 8, !dbg !3779, !tbaa !866
  %24 = mul i64 %23, %2, !dbg !3780
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3720, metadata !613) #11, !dbg !3781
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3725, metadata !613) #11, !dbg !3783
  %25 = icmp eq i64 %24, 0, !dbg !3788
  br i1 %25, label %26, label %27, !dbg !3784

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3789
  br label %34, !dbg !3790

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3791
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3720, metadata !613) #11, !dbg !3781
  %30 = icmp eq i8* %29, null, !dbg !3792
  %31 = icmp ne i64 %28, 0, !dbg !3793
  %32 = and i1 %31, %30, !dbg !3794
  br i1 %32, label %33, label %34, !dbg !3794

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #16, !dbg !3795
  unreachable, !dbg !3795

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3796
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !3797 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3799, metadata !613), !dbg !3800
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3680, metadata !613) #11, !dbg !3801
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3803
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3686, metadata !613) #11, !dbg !3804
  %3 = icmp eq i8* %2, null, !dbg !3805
  %4 = icmp ne i64 %0, 0, !dbg !3806
  %5 = and i1 %4, %3, !dbg !3807
  br i1 %5, label %6, label %7, !dbg !3807

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3808
  unreachable, !dbg !3808

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3809
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3810 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3814, metadata !613), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3815, metadata !613), !dbg !3817
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !563, metadata !613) #11, !dbg !3818
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !564, metadata !613) #11, !dbg !3820
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !565, metadata !613) #11, !dbg !3821
  %3 = load i64, i64* %1, align 8, !dbg !3822, !tbaa !866
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !566, metadata !613) #11, !dbg !3823
  %4 = icmp eq i8* %0, null, !dbg !3824
  br i1 %4, label %5, label %8, !dbg !3825

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !566, metadata !613) #11, !dbg !3823
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !566, metadata !613) #11, !dbg !3823
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !566, metadata !613) #11, !dbg !3823
  store i64 %7, i64* %1, align 8, !dbg !3828, !tbaa !866
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3720, metadata !613) #11, !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3725, metadata !613) #11, !dbg !3831
  br label %17, !dbg !3832

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3833
  br i1 %9, label %11, label %10, !dbg !3834

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #16, !dbg !3835
  unreachable, !dbg !3835

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3836
  %13 = add i64 %3, 1, !dbg !3837
  %14 = add i64 %13, %12, !dbg !3838
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !566, metadata !613) #11, !dbg !3823
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !566, metadata !613) #11, !dbg !3823
  store i64 %14, i64* %1, align 8, !dbg !3828, !tbaa !866
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3720, metadata !613) #11, !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3725, metadata !613) #11, !dbg !3831
  %15 = icmp eq i64 %14, 0, !dbg !3839
  br i1 %15, label %16, label %17, !dbg !3832

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3840
  br label %24, !dbg !3841

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3842
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3720, metadata !613) #11, !dbg !3829
  %20 = icmp eq i8* %19, null, !dbg !3843
  %21 = icmp ne i64 %18, 0, !dbg !3844
  %22 = and i1 %21, %20, !dbg !3845
  br i1 %22, label %23, label %24, !dbg !3845

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #16, !dbg !3846
  unreachable, !dbg !3846

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3847
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3848 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3850, metadata !613), !dbg !3851
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3680, metadata !613) #11, !dbg !3852
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3854
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3686, metadata !613) #11, !dbg !3855
  %3 = icmp eq i8* %2, null, !dbg !3856
  %4 = icmp ne i64 %0, 0, !dbg !3857
  %5 = and i1 %4, %3, !dbg !3858
  br i1 %5, label %6, label %7, !dbg !3858

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3859
  unreachable, !dbg !3859

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3860
  ret i8* %2, !dbg !3861
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3862 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3864, metadata !613), !dbg !3867
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3865, metadata !613), !dbg !3868
  %3 = udiv i64 9223372036854775807, %1, !dbg !3869
  %4 = icmp ult i64 %3, %0, !dbg !3869
  br i1 %4, label %8, label %5, !dbg !3871

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3872
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3866, metadata !613), !dbg !3873
  %7 = icmp eq i8* %6, null, !dbg !3874
  br i1 %7, label %8, label %9, !dbg !3875

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #16, !dbg !3876
  unreachable, !dbg !3876

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3877
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3878 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3884, metadata !613), !dbg !3886
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3885, metadata !613), !dbg !3887
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3680, metadata !613) #11, !dbg !3888
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3890
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3686, metadata !613) #11, !dbg !3891
  %4 = icmp eq i8* %3, null, !dbg !3892
  %5 = icmp ne i64 %1, 0, !dbg !3893
  %6 = and i1 %5, %4, !dbg !3894
  br i1 %6, label %7, label %8, !dbg !3894

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #16, !dbg !3895
  unreachable, !dbg !3895

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3896
  ret i8* %3, !dbg !3897
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3898 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3900, metadata !613), !dbg !3901
  %2 = tail call i64 @strlen(i8* %0) #15, !dbg !3902
  %3 = add i64 %2, 1, !dbg !3903
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3884, metadata !613) #11, !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3885, metadata !613) #11, !dbg !3906
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3680, metadata !613) #11, !dbg !3907
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3909
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3686, metadata !613) #11, !dbg !3910
  %5 = icmp eq i8* %4, null, !dbg !3911
  %6 = icmp ne i64 %3, 0, !dbg !3912
  %7 = and i1 %6, %5, !dbg !3913
  br i1 %7, label %8, label %9, !dbg !3913

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16, !dbg !3914
  unreachable, !dbg !3914

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3915
  ret i8* %4, !dbg !3916
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3917 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3919, !tbaa !810
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #11, !dbg !3920
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #11, !dbg !3921
  tail call void @abort() #16, !dbg !3922
  unreachable, !dbg !3922
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3923 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3928, metadata !613), !dbg !3938
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3929, metadata !613), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3930, metadata !613), !dbg !3940
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3931, metadata !613), !dbg !3941
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3932, metadata !613), !dbg !3942
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3933, metadata !613), !dbg !3943
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3934, metadata !613), !dbg !3944
  %9 = bitcast i64* %8 to i8*, !dbg !3945
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !3945
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !3937, metadata !613), !dbg !3946
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #11, !dbg !3947
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3935, metadata !613), !dbg !3948
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ], !dbg !3949

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #18, !dbg !3950
  br label %26, !dbg !3949

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3953, !tbaa !866
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3937, metadata !613), !dbg !3946
  %15 = icmp ult i64 %14, %2, !dbg !3957
  %16 = icmp ugt i64 %14, %3, !dbg !3958
  %17 = or i1 %15, %16, !dbg !3959
  br i1 %17, label %18, label %35, !dbg !3959

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3935, metadata !613), !dbg !3948
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3937, metadata !613), !dbg !3946
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3960
  %20 = tail call i32* @__errno_location() #18, !dbg !3963
  %21 = select i1 %19, i32 75, i32 34, !dbg !3964
  store i32 %21, i32* %20, align 4, !tbaa !810
  br label %26, !dbg !3965

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #18, !dbg !3966
  store i32 75, i32* %23, align 4, !dbg !3968, !tbaa !810
  br label %26, !dbg !3966

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #18, !dbg !3969
  store i32 0, i32* %25, align 4, !dbg !3971, !tbaa !810
  br label %26, !dbg !3969

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ], !dbg !3950
  %28 = icmp eq i32 %6, 0, !dbg !3972
  %29 = select i1 %28, i32 1, i32 %6, !dbg !3972
  %30 = load i32, i32* %27, align 4, !dbg !3950, !tbaa !810
  %31 = icmp eq i32 %30, 22, !dbg !3973
  %32 = select i1 %31, i32 0, i32 %30, !dbg !3950
  %33 = call i8* @quote(i8* %0) #11, !dbg !3974
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0), i8* %5, i8* %33) #11, !dbg !3975
  %34 = load i64, i64* %8, align 8, !dbg !3976, !tbaa !866
  br label %35, !dbg !3977

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ], !dbg !3976
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !3937, metadata !613), !dbg !3946
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !3978
  ret i64 %36, !dbg !3979
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3980 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3984, metadata !613), !dbg !3990
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3985, metadata !613), !dbg !3991
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3986, metadata !613), !dbg !3992
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3987, metadata !613), !dbg !3993
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3988, metadata !613), !dbg !3994
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3989, metadata !613), !dbg !3995
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3996
  ret i64 %7, !dbg !3997
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3998 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4004, metadata !613), !dbg !4022
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4005, metadata !613), !dbg !4023
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4006, metadata !613), !dbg !4024
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4007, metadata !613), !dbg !4025
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4008, metadata !613), !dbg !4026
  %7 = bitcast i8** %6 to i8*, !dbg !4027
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4027
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4012, metadata !613), !dbg !4028
  %8 = icmp ult i32 %2, 37, !dbg !4029
  br i1 %8, label %10, label %9, !dbg !4029

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.120, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.121, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #16, !dbg !4029
  unreachable, !dbg !4029

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4032
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4010, metadata !613), !dbg !4033
  %12 = tail call i32* @__errno_location() #18, !dbg !4034
  store i32 0, i32* %12, align 4, !dbg !4035, !tbaa !810
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4013, metadata !613), !dbg !4036
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4016, metadata !1617), !dbg !4037
  %13 = tail call i16** @__ctype_b_loc() #18, !dbg !4038
  %14 = load i16*, i16** %13, align 8, !tbaa !620
  br label %15, !dbg !4039

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !877
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !4016, metadata !613), !dbg !4037
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4013, metadata !613), !dbg !4036
  %18 = zext i8 %17 to i64, !dbg !4038
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4038
  %20 = load i16, i16* %19, align 2, !dbg !4038, !tbaa !2268
  %21 = and i16 %20, 8192, !dbg !4038
  %22 = icmp eq i16 %21, 0, !dbg !4039
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4040
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4013, metadata !613), !dbg !4036
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4016, metadata !1617), !dbg !4037
  br i1 %22, label %24, label %15, !dbg !4039, !llvm.loop !4041

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4032
  %26 = icmp eq i8 %17, 45, !dbg !4043
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4045, metadata !613) #11, !dbg !4054
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4052, metadata !613) #11, !dbg !4054
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4053, metadata !613) #11, !dbg !4054
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #11, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4011, metadata !613), !dbg !4057
  %29 = load i8*, i8** %25, align 8, !dbg !4058, !tbaa !620
  %30 = icmp eq i8* %29, %0, !dbg !4060
  br i1 %30, label %31, label %40, !dbg !4061

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4062
  br i1 %32, label %265, label %33, !dbg !4065

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4066, !tbaa !877
  %35 = icmp eq i8 %34, 0, !dbg !4066
  br i1 %35, label %265, label %36, !dbg !4067

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4066
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #15, !dbg !4068
  %39 = icmp eq i8* %38, null, !dbg !4068
  br i1 %39, label %265, label %47, !dbg !4069

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4070, !tbaa !810
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4072

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4012, metadata !613), !dbg !4028
  br label %43, !dbg !4073

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !4012, metadata !613), !dbg !4028
  %45 = icmp eq i8* %4, null, !dbg !4075
  br i1 %45, label %46, label %47, !dbg !4077

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4011, metadata !613), !dbg !4057
  store i64 %28, i64* %3, align 8, !dbg !4078, !tbaa !866
  br label %265, !dbg !4080

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4081, !tbaa !877
  %51 = sext i8 %50 to i32, !dbg !4081
  %52 = icmp eq i8 %50, 0, !dbg !4082
  br i1 %52, label %262, label %53, !dbg !4083

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4017, metadata !613), !dbg !4084
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4020, metadata !613), !dbg !4085
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #15, !dbg !4086
  %55 = icmp eq i8* %54, null, !dbg !4086
  br i1 %55, label %56, label %58, !dbg !4088

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4011, metadata !613), !dbg !4057
  store i64 %49, i64* %3, align 8, !dbg !4089, !tbaa !866
  %57 = or i32 %48, 2, !dbg !4091
  br label %265, !dbg !4092

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
  ], !dbg !4093

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #15, !dbg !4094
  %61 = icmp eq i8* %60, null, !dbg !4094
  br i1 %61, label %72, label %62, !dbg !4097

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4098
  %64 = load i8, i8* %63, align 1, !dbg !4098, !tbaa !877
  %65 = sext i8 %64 to i32, !dbg !4098
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4099

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4100
  %68 = load i8, i8* %67, align 1, !dbg !4100, !tbaa !877
  %69 = icmp eq i8 %68, 66, !dbg !4103
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4020, metadata !613), !dbg !4085
  %70 = select i1 %69, i64 3, i64 1, !dbg !4104
  br label %72, !dbg !4104

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4017, metadata !613), !dbg !4084
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4020, metadata !613), !dbg !4085
  br label %72, !dbg !4105

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
  ], !dbg !4106

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4107, metadata !613), !dbg !4113
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4116
  %77 = shl i64 %49, 9, !dbg !4118
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4119
  %79 = zext i1 %76 to i32, !dbg !4119
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4021, metadata !613), !dbg !4120
  br label %253, !dbg !4121

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4107, metadata !613), !dbg !4122
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4124
  %82 = shl i64 %49, 10, !dbg !4125
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4126
  %84 = zext i1 %81 to i32, !dbg !4126
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4021, metadata !613), !dbg !4120
  br label %253, !dbg !4127

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4138
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4138
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4136
  %86 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4138
  %87 = icmp ult i64 %86, %49, !dbg !4139
  %88 = mul i64 %49, %73, !dbg !4141
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4142
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4138
  %90 = icmp ult i64 %86, %89, !dbg !4139
  %91 = mul i64 %89, %73, !dbg !4141
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4142
  %93 = or i1 %87, %90, !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4138
  %94 = icmp ult i64 %86, %92, !dbg !4139
  %95 = mul i64 %92, %73, !dbg !4141
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4142
  %97 = or i1 %93, %94, !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4138
  %98 = icmp ult i64 %86, %96, !dbg !4139
  %99 = mul i64 %96, %73, !dbg !4141
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4142
  %101 = or i1 %97, %98, !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4138
  %102 = icmp ult i64 %86, %100, !dbg !4139
  %103 = mul i64 %100, %73, !dbg !4141
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4142
  %105 = or i1 %101, %102, !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4138
  %106 = icmp ult i64 %86, %104, !dbg !4139
  %107 = mul i64 %104, %73, !dbg !4141
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4142
  %109 = or i1 %105, %106, !dbg !4143
  %110 = zext i1 %109 to i32, !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4136
  br label %253, !dbg !4144

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4145
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4147
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4147
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4145
  %112 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4145
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4147
  %113 = icmp ult i64 %112, %49, !dbg !4148
  %114 = mul i64 %49, %73, !dbg !4150
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4151
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4128, metadata !613), !dbg !4145
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4128, metadata !613), !dbg !4145
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4145
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4147
  %116 = icmp ult i64 %112, %115, !dbg !4148
  %117 = mul i64 %115, %73, !dbg !4150
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4151
  %119 = or i1 %113, %116, !dbg !4152
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4128, metadata !613), !dbg !4145
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4128, metadata !613), !dbg !4145
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4145
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4147
  %120 = icmp ult i64 %112, %118, !dbg !4148
  %121 = mul i64 %118, %73, !dbg !4150
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4151
  %123 = or i1 %119, %120, !dbg !4152
  %124 = zext i1 %123 to i32, !dbg !4152
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4128, metadata !613), !dbg !4145
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4128, metadata !613), !dbg !4145
  br label %253, !dbg !4144

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4128, metadata !613), !dbg !4153
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4155
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4155
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4128, metadata !613), !dbg !4153
  %126 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !4128, metadata !613), !dbg !4153
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4155
  %127 = icmp ult i64 %126, %49, !dbg !4156
  %128 = mul i64 %49, %73, !dbg !4158
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4159
  %130 = zext i1 %127 to i32, !dbg !4159
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4135, metadata !613), !dbg !4155
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4135, metadata !613), !dbg !4155
  br label %253, !dbg !4144

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4128, metadata !613), !dbg !4160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4162
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4162
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4128, metadata !613), !dbg !4160
  %132 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4128, metadata !613), !dbg !4160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4162
  %133 = icmp ult i64 %132, %49, !dbg !4163
  %134 = mul i64 %49, %73, !dbg !4165
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4128, metadata !613), !dbg !4160
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4128, metadata !613), !dbg !4160
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4128, metadata !613), !dbg !4160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4162
  %136 = icmp ult i64 %132, %135, !dbg !4163
  %137 = mul i64 %135, %73, !dbg !4165
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4166
  %139 = or i1 %133, %136, !dbg !4167
  %140 = zext i1 %139 to i32, !dbg !4167
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4128, metadata !613), !dbg !4160
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4128, metadata !613), !dbg !4160
  br label %253, !dbg !4144

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4170
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4170
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4168
  %142 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4170
  %143 = icmp ult i64 %142, %49, !dbg !4171
  %144 = mul i64 %49, %73, !dbg !4173
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4174
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4170
  %146 = icmp ult i64 %142, %145, !dbg !4171
  %147 = mul i64 %145, %73, !dbg !4173
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4174
  %149 = or i1 %143, %146, !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4170
  %150 = icmp ult i64 %142, %148, !dbg !4171
  %151 = mul i64 %148, %73, !dbg !4173
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4174
  %153 = or i1 %149, %150, !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4170
  %154 = icmp ult i64 %142, %152, !dbg !4171
  %155 = mul i64 %152, %73, !dbg !4173
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4174
  %157 = or i1 %153, %154, !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4170
  %158 = icmp ult i64 %142, %156, !dbg !4171
  %159 = mul i64 %156, %73, !dbg !4173
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4174
  %161 = or i1 %157, %158, !dbg !4175
  %162 = zext i1 %161 to i32, !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4168
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4168
  br label %253, !dbg !4144

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4178
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4178
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4176
  %164 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4178
  %165 = icmp ult i64 %164, %49, !dbg !4179
  %166 = mul i64 %49, %73, !dbg !4181
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4182
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4178
  %168 = icmp ult i64 %164, %167, !dbg !4179
  %169 = mul i64 %167, %73, !dbg !4181
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4182
  %171 = or i1 %165, %168, !dbg !4183
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4178
  %172 = icmp ult i64 %164, %170, !dbg !4179
  %173 = mul i64 %170, %73, !dbg !4181
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4182
  %175 = or i1 %171, %172, !dbg !4183
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4128, metadata !613), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4178
  %176 = icmp ult i64 %164, %174, !dbg !4179
  %177 = mul i64 %174, %73, !dbg !4181
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4182
  %179 = or i1 %175, %176, !dbg !4183
  %180 = zext i1 %179 to i32, !dbg !4183
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4128, metadata !613), !dbg !4176
  br label %253, !dbg !4144

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4107, metadata !613), !dbg !4184
  %182 = icmp slt i64 %49, 0, !dbg !4186
  %183 = shl i64 %49, 1, !dbg !4187
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4188
  %185 = lshr i64 %49, 63, !dbg !4188
  %186 = trunc i64 %185 to i32, !dbg !4188
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4021, metadata !613), !dbg !4120
  br label %253, !dbg !4189

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4192
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4192
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4128, metadata !613), !dbg !4190
  %188 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4192
  %189 = icmp ult i64 %188, %49, !dbg !4193
  %190 = mul i64 %49, %73, !dbg !4195
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4196
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4192
  %192 = icmp ult i64 %188, %191, !dbg !4193
  %193 = mul i64 %191, %73, !dbg !4195
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4196
  %195 = or i1 %189, %192, !dbg !4197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4192
  %196 = icmp ult i64 %188, %194, !dbg !4193
  %197 = mul i64 %194, %73, !dbg !4195
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4196
  %199 = or i1 %195, %196, !dbg !4197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4192
  %200 = icmp ult i64 %188, %198, !dbg !4193
  %201 = mul i64 %198, %73, !dbg !4195
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4196
  %203 = or i1 %199, %200, !dbg !4197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4192
  %204 = icmp ult i64 %188, %202, !dbg !4193
  %205 = mul i64 %202, %73, !dbg !4195
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4196
  %207 = or i1 %203, %204, !dbg !4197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4192
  %208 = icmp ult i64 %188, %206, !dbg !4193
  %209 = mul i64 %206, %73, !dbg !4195
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4196
  %211 = or i1 %207, %208, !dbg !4197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4192
  %212 = icmp ult i64 %188, %210, !dbg !4193
  %213 = mul i64 %210, %73, !dbg !4195
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4196
  %215 = or i1 %211, %212, !dbg !4197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4192
  %216 = icmp ult i64 %188, %214, !dbg !4193
  %217 = mul i64 %214, %73, !dbg !4195
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4196
  %219 = or i1 %215, %216, !dbg !4197
  %220 = zext i1 %219 to i32, !dbg !4197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4190
  br label %253, !dbg !4144

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4200
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4198
  %222 = udiv i64 -1, %73
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4200
  %223 = icmp ult i64 %222, %49, !dbg !4201
  %224 = mul i64 %49, %73, !dbg !4203
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4204
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4200
  %226 = icmp ult i64 %222, %225, !dbg !4201
  %227 = mul i64 %225, %73, !dbg !4203
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4204
  %229 = or i1 %223, %226, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4200
  %230 = icmp ult i64 %222, %228, !dbg !4201
  %231 = mul i64 %228, %73, !dbg !4203
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4204
  %233 = or i1 %229, %230, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4200
  %234 = icmp ult i64 %222, %232, !dbg !4201
  %235 = mul i64 %232, %73, !dbg !4203
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4204
  %237 = or i1 %233, %234, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4200
  %238 = icmp ult i64 %222, %236, !dbg !4201
  %239 = mul i64 %236, %73, !dbg !4203
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4204
  %241 = or i1 %237, %238, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4200
  %242 = icmp ult i64 %222, %240, !dbg !4201
  %243 = mul i64 %240, %73, !dbg !4203
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4204
  %245 = or i1 %241, %242, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4135, metadata !613), !dbg !4200
  %246 = icmp ult i64 %222, %244, !dbg !4201
  %247 = mul i64 %244, %73, !dbg !4203
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4204
  %249 = or i1 %245, %246, !dbg !4205
  %250 = zext i1 %249 to i32, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4128, metadata !613), !dbg !4198
  br label %253, !dbg !4144

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4011, metadata !613), !dbg !4057
  store i64 %49, i64* %3, align 8, !dbg !4206, !tbaa !866
  %252 = or i32 %48, 2, !dbg !4207
  br label %265, !dbg !4208

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !4021, metadata !613), !dbg !4120
  %256 = or i32 %255, %48, !dbg !4144
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !4012, metadata !613), !dbg !4028
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4209
  store i8* %257, i8** %25, align 8, !dbg !4209, !tbaa !620
  %258 = load i8, i8* %257, align 1, !dbg !4210, !tbaa !877
  %259 = icmp eq i8 %258, 0, !dbg !4210
  %260 = or i32 %256, 2, !dbg !4212
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !4012, metadata !613), !dbg !4028
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4213
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4012, metadata !613), !dbg !4028
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4012, metadata !613), !dbg !4028
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !4012, metadata !613), !dbg !4028
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !4011, metadata !613), !dbg !4057
  store i64 %263, i64* %3, align 8, !dbg !4214, !tbaa !866
  br label %265, !dbg !4215

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4216
  ret i32 %266, !dbg !4216
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4217 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4220, metadata !613), !dbg !4226
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4221, metadata !613), !dbg !4227
  %3 = icmp eq i64 %0, 0, !dbg !4228
  %4 = icmp eq i64 %1, 0, !dbg !4229
  %5 = or i1 %3, %4, !dbg !4230
  br i1 %5, label %12, label %6, !dbg !4230

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4231
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4223, metadata !613), !dbg !4232
  %8 = udiv i64 %7, %1, !dbg !4233
  %9 = icmp eq i64 %8, %0, !dbg !4235
  br i1 %9, label %12, label %10, !dbg !4236

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #18, !dbg !4237
  store i32 12, i32* %11, align 4, !dbg !4239, !tbaa !810
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4220, metadata !613), !dbg !4226
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4221, metadata !613), !dbg !4227
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4240
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4222, metadata !613), !dbg !4241
  br label %16, !dbg !4242

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4243
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4244 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4289, metadata !613), !dbg !4293
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4290, metadata !613), !dbg !4294
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4292, metadata !613), !dbg !4295
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4296
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4291, metadata !613), !dbg !4297
  %3 = icmp slt i32 %2, 0, !dbg !4298
  br i1 %3, label %4, label %6, !dbg !4300

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4301
  br label %24, !dbg !4302

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4303
  %8 = icmp eq i32 %7, 0, !dbg !4303
  br i1 %8, label %13, label %9, !dbg !4305

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4306
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4307
  %12 = icmp eq i64 %11, -1, !dbg !4308
  br i1 %12, label %16, label %13, !dbg !4309

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4310
  %15 = icmp eq i32 %14, 0, !dbg !4310
  br i1 %15, label %16, label %18, !dbg !4311

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4290, metadata !613), !dbg !4294
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4312
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4292, metadata !613), !dbg !4295
  br label %24, !dbg !4313

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #18, !dbg !4314
  %20 = load i32, i32* %19, align 4, !dbg !4314, !tbaa !810
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4290, metadata !613), !dbg !4294
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4290, metadata !613), !dbg !4294
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4312
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4292, metadata !613), !dbg !4295
  %22 = icmp eq i32 %20, 0, !dbg !4315
  br i1 %22, label %24, label %23, !dbg !4313

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4317, !tbaa !810
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4292, metadata !613), !dbg !4295
  br label %24, !dbg !4319

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4320
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4321 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4366, metadata !613), !dbg !4367
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4368
  br i1 %2, label %6, label %3, !dbg !4370

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4371
  %5 = icmp eq i32 %4, 0, !dbg !4371
  br i1 %5, label %6, label %8, !dbg !4372

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4373
  br label %17, !dbg !4374

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4375, metadata !613) #11, !dbg !4380
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4382
  %10 = load i32, i32* %9, align 8, !dbg !4382, !tbaa !904
  %11 = and i32 %10, 256, !dbg !4384
  %12 = icmp eq i32 %11, 0, !dbg !4384
  br i1 %12, label %15, label %13, !dbg !4385

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4386
  br label %15, !dbg !4386

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4387
  br label %17, !dbg !4388

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4389
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4390 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4435, metadata !613), !dbg !4441
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4436, metadata !613), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4437, metadata !613), !dbg !4443
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4444
  %5 = load i8*, i8** %4, align 8, !dbg !4444, !tbaa !4445
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4446
  %7 = load i8*, i8** %6, align 8, !dbg !4446, !tbaa !4447
  %8 = icmp eq i8* %5, %7, !dbg !4448
  br i1 %8, label %9, label %28, !dbg !4449

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4450
  %11 = load i8*, i8** %10, align 8, !dbg !4450, !tbaa !1044
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4451
  %13 = load i8*, i8** %12, align 8, !dbg !4451, !tbaa !4452
  %14 = icmp eq i8* %11, %13, !dbg !4453
  br i1 %14, label %15, label %28, !dbg !4454

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4455
  %17 = load i8*, i8** %16, align 8, !dbg !4455, !tbaa !4456
  %18 = icmp eq i8* %17, null, !dbg !4457
  br i1 %18, label %19, label %28, !dbg !4458

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4459
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4460
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4438, metadata !613), !dbg !4461
  %22 = icmp eq i64 %21, -1, !dbg !4462
  br i1 %22, label %30, label %23, !dbg !4464

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4465
  %25 = load i32, i32* %24, align 8, !dbg !4466, !tbaa !904
  %26 = and i32 %25, -17, !dbg !4466
  store i32 %26, i32* %24, align 8, !dbg !4466, !tbaa !904
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4467
  store i64 %21, i64* %27, align 8, !dbg !4468, !tbaa !4469
  br label %30, !dbg !4470

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4471
  br label %30, !dbg !4472

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4473
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4474 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4491, metadata !613), !dbg !4500
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4492, metadata !613), !dbg !4501
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4493, metadata !613), !dbg !4502
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4494, metadata !613), !dbg !4503
  %6 = bitcast i32* %5 to i8*, !dbg !4504
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4504
  %7 = icmp eq i32* %0, null, !dbg !4505
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4491, metadata !613), !dbg !4500
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4507
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4491, metadata !613), !dbg !4500
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4495, metadata !613), !dbg !4509
  %10 = icmp ugt i64 %9, -3, !dbg !4510
  %11 = icmp ne i64 %2, 0, !dbg !4511
  %12 = and i1 %11, %10, !dbg !4512
  br i1 %12, label %13, label %18, !dbg !4512

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4513
  br i1 %14, label %18, label %15, !dbg !4514

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4515, !tbaa !877
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4497, metadata !613), !dbg !4516
  %17 = zext i8 %16 to i32, !dbg !4517
  store i32 %17, i32* %8, align 4, !dbg !4518, !tbaa !810
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4519
  ret i64 %19, !dbg !4519
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4520 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4565, metadata !613), !dbg !4570
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4571
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4572, metadata !613), !dbg !4575
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4577
  %4 = load i32, i32* %3, align 8, !dbg !4577, !tbaa !904
  %5 = and i32 %4, 32, !dbg !4577
  %6 = icmp eq i32 %5, 0, !dbg !4578
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4579
  %8 = icmp ne i32 %7, 0, !dbg !4580
  br i1 %6, label %9, label %19, !dbg !4581

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4583
  %11 = xor i1 %8, true, !dbg !4584
  %12 = or i1 %10, %11, !dbg !4584
  %13 = sext i1 %8 to i32, !dbg !4584
  br i1 %12, label %22, label %14, !dbg !4584

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #18, !dbg !4585
  %16 = load i32, i32* %15, align 4, !dbg !4585, !tbaa !810
  %17 = icmp ne i32 %16, 9, !dbg !4586
  %18 = sext i1 %17 to i32, !dbg !4587
  br label %22, !dbg !4587

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4588

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #18, !dbg !4590
  store i32 0, i32* %21, align 4, !dbg !4592, !tbaa !810
  br label %22, !dbg !4590

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4593
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4594 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4599, metadata !613), !dbg !4602
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4600, metadata !613), !dbg !4603
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4604
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4601, metadata !613), !dbg !4605
  %3 = icmp eq i8* %2, null, !dbg !4606
  br i1 %3, label %11, label %4, !dbg !4608

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0)) #15, !dbg !4609
  %6 = icmp eq i32 %5, 0, !dbg !4614
  br i1 %6, label %10, label %7, !dbg !4615

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i64 0, i64 0)) #15, !dbg !4616
  %9 = icmp eq i32 %8, 0, !dbg !4617
  br i1 %9, label %10, label %11, !dbg !4618

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4600, metadata !613), !dbg !4603
  br label %11, !dbg !4619

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4620
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4621 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4627, metadata !613), !dbg !4701
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4694, metadata !613), !dbg !4704
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4705
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4625, metadata !613), !dbg !4706
  %4 = icmp eq i8* %3, null, !dbg !4707
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), i8* %3, !dbg !4709
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4625, metadata !613), !dbg !4706
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4710, !tbaa !620
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4641, metadata !613) #11, !dbg !4711
  %7 = icmp eq i8* %6, null, !dbg !4712
  br i1 %7, label %8, label %123, !dbg !4713

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.141, i64 0, i64 0)) #11, !dbg !4714
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4642, metadata !613) #11, !dbg !4715
  %10 = icmp eq i8* %9, null, !dbg !4716
  br i1 %10, label %14, label %11, !dbg !4718

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4719, !tbaa !877
  %13 = icmp eq i8 %12, 0, !dbg !4720
  br i1 %13, label %14, label %15, !dbg !4721

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4722

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.142, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4642, metadata !613) #11, !dbg !4715
  %17 = tail call i64 @strlen(i8* nonnull %16) #15, !dbg !4723
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4645, metadata !613) #11, !dbg !4724
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4647, metadata !613) #11, !dbg !4725
  %18 = icmp eq i64 %17, 0, !dbg !4726
  br i1 %18, label %24, label %19, !dbg !4727

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4728
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4728
  %22 = load i8, i8* %21, align 1, !dbg !4728, !tbaa !877
  %23 = icmp ne i8 %22, 47, !dbg !4728
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4729
  %27 = add i64 %17, 14, !dbg !4730
  %28 = add i64 %27, %26, !dbg !4731
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4732
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4644, metadata !613) #11, !dbg !4733
  %30 = icmp eq i8* %29, null, !dbg !4734
  br i1 %30, label %121, label %31, !dbg !4734

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4735
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4738

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4739, !tbaa !877
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4741
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.143, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4742
  br label %37, !dbg !4743

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4741
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.143, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4742
  br label %37, !dbg !4743

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4744
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4649, metadata !613) #11, !dbg !4745
  %39 = icmp slt i32 %38, 0, !dbg !4746
  br i1 %39, label %119, label %40, !dbg !4747

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.144, i64 0, i64 0)) #11, !dbg !4748
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4650, metadata !613) #11, !dbg !4749
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4750
  br i1 %42, label %43, label %45, !dbg !4751

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !4752
  br label %119, !dbg !4754

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4691, metadata !613) #11, !dbg !4755
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4692, metadata !613) #11, !dbg !4756
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4757

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !4758

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4691, metadata !613) #11, !dbg !4755
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4692, metadata !613) #11, !dbg !4756
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4758
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4759
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4760, metadata !613) #11, !dbg !4765
  %54 = load i8*, i8** %48, align 8, !dbg !4767, !tbaa !4447
  %55 = load i8*, i8** %49, align 8, !dbg !4767, !tbaa !4445
  %56 = icmp ult i8* %54, %55, !dbg !4767
  br i1 %56, label %59, label %57, !dbg !4767, !prof !1046

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4767
  br label %63, !dbg !4767

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !4767
  store i8* %60, i8** %48, align 8, !dbg !4767, !tbaa !4447
  %61 = load i8, i8* %54, align 1, !dbg !4767, !tbaa !877
  %62 = zext i8 %61 to i32, !dbg !4767
  br label %63, !dbg !4767

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !4767
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !4693, metadata !613) #11, !dbg !4768
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !4769, !llvm.loop !4770

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !4775

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4760, metadata !613) #11, !dbg !4777
  %67 = load i8*, i8** %48, align 8, !dbg !4775, !tbaa !4447
  %68 = load i8*, i8** %49, align 8, !dbg !4775, !tbaa !4445
  %69 = icmp ult i8* %67, %68, !dbg !4775
  br i1 %69, label %72, label %70, !dbg !4775, !prof !1046

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4775
  br label %76, !dbg !4775

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !4775
  store i8* %73, i8** %48, align 8, !dbg !4775, !tbaa !4447
  %74 = load i8, i8* %67, align 1, !dbg !4775, !tbaa !877
  %75 = zext i8 %74 to i32, !dbg !4775
  br label %76, !dbg !4775

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !4775
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !4693, metadata !613) #11, !dbg !4768
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !4778, !llvm.loop !4779

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !4782
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.145, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !4783
  %81 = icmp slt i32 %80, 2, !dbg !4785
  br i1 %81, label %112, label %82, !dbg !4786

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #15, !dbg !4787
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4698, metadata !613) #11, !dbg !4788
  %84 = call i64 @strlen(i8* nonnull %47) #15, !dbg !4789
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !4699, metadata !613) #11, !dbg !4790
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4700, metadata !613) #11, !dbg !4791
  %85 = icmp eq i64 %51, 0, !dbg !4792
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !4794

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !4692, metadata !613) #11, !dbg !4756
  %90 = add i64 %87, 2, !dbg !4795
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !4797
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !4691, metadata !613) #11, !dbg !4755
  br label %96, !dbg !4798

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !4799
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !4692, metadata !613) #11, !dbg !4756
  %94 = add i64 %93, 1, !dbg !4801
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !4802
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !4691, metadata !613) #11, !dbg !4755
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4691, metadata !613) #11, !dbg !4755
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4692, metadata !613) #11, !dbg !4756
  %99 = icmp eq i8* %98, null, !dbg !4803
  br i1 %99, label %100, label %102, !dbg !4805

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4692, metadata !613) #11, !dbg !4756
  call void @free(i8* %52) #11, !dbg !4806
  br label %112, !dbg !4808

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4809
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4809
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !4810
  %104 = xor i64 %84, -1, !dbg !4811
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4811
  %106 = xor i64 %83, -1, !dbg !4812
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !4812
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !4813, metadata !613) #11, !dbg !4820
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !4819, metadata !613) #11, !dbg !4820
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !4822
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !4823
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4813, metadata !613) #11, !dbg !4824
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4819, metadata !613) #11, !dbg !4824
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !4826
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !4827
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !4691, metadata !613) #11, !dbg !4755
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !4692, metadata !613) #11, !dbg !4756
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4809
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4809
  br label %50, !dbg !4828, !llvm.loop !4779

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !4809
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !4809
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4829
  %116 = icmp eq i64 %113, 0, !dbg !4830
  br i1 %116, label %119, label %117, !dbg !4832

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !4833
  store i8 0, i8* %118, align 1, !dbg !4835, !tbaa !877
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !4641, metadata !613) #11, !dbg !4711
  call void @free(i8* %29) #11, !dbg !4836
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !4641, metadata !613) #11, !dbg !4711
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !4837, !tbaa !620
  br label %123, !dbg !4838

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4641, metadata !613) #11, !dbg !4711
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4626, metadata !613), !dbg !4839
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4626, metadata !613), !dbg !4839
  %125 = load i8, i8* %124, align 1, !dbg !4840, !tbaa !877
  %126 = icmp eq i8 %125, 0, !dbg !4842
  br i1 %126, label %152, label %127, !dbg !4843

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !4844

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !4626, metadata !613), !dbg !4839
  %131 = call i32 @strcmp(i8* %5, i8* %130) #15, !dbg !4844
  %132 = icmp eq i32 %131, 0, !dbg !4846
  br i1 %132, label %139, label %133, !dbg !4847

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !4848
  br i1 %134, label %135, label %143, !dbg !4849

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !4850
  %137 = load i8, i8* %136, align 1, !dbg !4850, !tbaa !877
  %138 = icmp eq i8 %137, 0, !dbg !4851
  br i1 %138, label %139, label %143, !dbg !4852

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #15, !dbg !4853
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !4855
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !4856
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !4625, metadata !613), !dbg !4706
  br label %152, !dbg !4857

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #15, !dbg !4858
  %145 = add i64 %144, 1, !dbg !4859
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !4860
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4626, metadata !613), !dbg !4839
  %147 = call i64 @strlen(i8* %146) #15, !dbg !4861
  %148 = add i64 %147, 1, !dbg !4862
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !4863
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4626, metadata !613), !dbg !4839
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !4626, metadata !613), !dbg !4839
  %150 = load i8, i8* %149, align 1, !dbg !4840, !tbaa !877
  %151 = icmp eq i8 %150, 0, !dbg !4842
  br i1 %151, label %152, label %128, !dbg !4843, !llvm.loop !4864

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4625, metadata !613), !dbg !4706
  %154 = load i8, i8* %153, align 1, !dbg !4866, !tbaa !877
  %155 = icmp eq i8 %154, 0, !dbg !4868
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.146, i64 0, i64 0), i8* %153, !dbg !4869
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !4625, metadata !613), !dbg !4706
  ret i8* %156, !dbg !4870
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

!llvm.dbg.cu = !{!2, !71, !77, !94, !103, !542, !110, !116, !545, !187, !553, !570, !572, !583, !587, !589, !591, !593, !595, !598, !600, !196}
!llvm.ident = !{!602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602}
!llvm.module.flags = !{!603, !604, !605, !606, !607}

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
!76 = distinct !DIGlobalVariable(name: "b64c", scope: !77, file: !83, line: 62, type: !89, isLocal: true, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !79, globals: !80)
!78 = !DIFile(filename: "./lib/base64.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!79 = !{!31, !29}
!80 = !{!75, !81}
!81 = !DIGlobalVariableExpression(var: !82)
!82 = distinct !DIGlobalVariable(name: "b64", scope: !77, file: !83, line: 252, type: !84, isLocal: true, isDefinition: true)
!83 = !DIFile(filename: "lib/base64.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 2048, elements: !87)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!87 = !{!88}
!88 = !DISubrange(count: 256)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 512, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 64)
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "file_name", scope: !94, file: !99, line: 36, type: !40, isLocal: true, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, globals: !96)
!95 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !{!92, !97}
!97 = !DIGlobalVariableExpression(var: !98)
!98 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !94, file: !99, line: 46, type: !100, isLocal: true, isDefinition: true)
!99 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!100 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!101 = !DIGlobalVariableExpression(var: !102)
!102 = distinct !DIGlobalVariable(name: "exit_failure", scope: !103, file: !106, line: 24, type: !107, isLocal: false, isDefinition: true)
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, globals: !105)
!104 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!105 = !{!101}
!106 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!108 = !DIGlobalVariableExpression(var: !109)
!109 = distinct !DIGlobalVariable(name: "program_name", scope: !110, file: !113, line: 33, type: !40, isLocal: false, isDefinition: true)
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !79, globals: !112)
!111 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = !{!108}
!113 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!114 = !DIGlobalVariableExpression(var: !115)
!115 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !116, file: !147, line: 77, type: !181, isLocal: false, isDefinition: true)
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !118, retainedTypes: !139, globals: !144)
!117 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!118 = !{!5, !119, !124}
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!122 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!123 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 46, size: 32, elements: !126)
!125 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!127 = !DIEnumerator(name: "_ISupper", value: 256)
!128 = !DIEnumerator(name: "_ISlower", value: 512)
!129 = !DIEnumerator(name: "_ISalpha", value: 1024)
!130 = !DIEnumerator(name: "_ISdigit", value: 2048)
!131 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!132 = !DIEnumerator(name: "_ISspace", value: 8192)
!133 = !DIEnumerator(name: "_ISprint", value: 16384)
!134 = !DIEnumerator(name: "_ISgraph", value: 32768)
!135 = !DIEnumerator(name: "_ISblank", value: 1)
!136 = !DIEnumerator(name: "_IScntrl", value: 2)
!137 = !DIEnumerator(name: "_ISpunct", value: 4)
!138 = !DIEnumerator(name: "_ISalnum", value: 8)
!139 = !{!63, !140, !141, !29}
!140 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 62, baseType: !143)
!142 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!143 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!144 = !{!114, !145, !152, !165, !167, !170, !177, !179}
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !116, file: !147, line: 93, type: !148, isLocal: false, isDefinition: true)
!147 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 320, elements: !150)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!150 = !{!151}
!151 = !DISubrange(count: 10)
!152 = !DIGlobalVariableExpression(var: !153)
!153 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !116, file: !147, line: 1043, type: !154, isLocal: false, isDefinition: true)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !147, line: 57, size: 448, elements: !155)
!155 = !{!156, !157, !158, !163, !164}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !154, file: !147, line: 60, baseType: !5, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !154, file: !147, line: 63, baseType: !63, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !154, file: !147, line: 67, baseType: !159, size: 256, offset: 64)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !161)
!160 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!161 = !{!162}
!162 = !DISubrange(count: 8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !154, file: !147, line: 70, baseType: !40, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !154, file: !147, line: 73, baseType: !40, size: 64, offset: 384)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !116, file: !147, line: 108, type: !154, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "slot0", scope: !116, file: !147, line: 834, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !87)
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "slotvec", scope: !116, file: !147, line: 837, type: !172, isLocal: true, isDefinition: true)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !147, line: 826, size: 128, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !173, file: !147, line: 828, baseType: !141, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !173, file: !147, line: 829, baseType: !29, size: 64, offset: 64)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "nslots", scope: !116, file: !147, line: 835, type: !63, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "slotvec0", scope: !116, file: !147, line: 836, type: !173, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 704, elements: !183)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!183 = !{!184}
!184 = !DISubrange(count: 11)
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !187, file: !190, line: 26, type: !191, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, globals: !189)
!188 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!189 = !{!185}
!190 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 376, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 47)
!194 = !DIGlobalVariableExpression(var: !195)
!195 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !196, file: !540, line: 120, type: !541, isLocal: true, isDefinition: true)
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !198, retainedTypes: !537, globals: !539)
!197 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!198 = !{!199}
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !200, line: 41, size: 32, elements: !201)
!200 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!202 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!203 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!204 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!205 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!206 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!207 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!208 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!209 = !DIEnumerator(name: "DAY_1", value: 131079)
!210 = !DIEnumerator(name: "DAY_2", value: 131080)
!211 = !DIEnumerator(name: "DAY_3", value: 131081)
!212 = !DIEnumerator(name: "DAY_4", value: 131082)
!213 = !DIEnumerator(name: "DAY_5", value: 131083)
!214 = !DIEnumerator(name: "DAY_6", value: 131084)
!215 = !DIEnumerator(name: "DAY_7", value: 131085)
!216 = !DIEnumerator(name: "ABMON_1", value: 131086)
!217 = !DIEnumerator(name: "ABMON_2", value: 131087)
!218 = !DIEnumerator(name: "ABMON_3", value: 131088)
!219 = !DIEnumerator(name: "ABMON_4", value: 131089)
!220 = !DIEnumerator(name: "ABMON_5", value: 131090)
!221 = !DIEnumerator(name: "ABMON_6", value: 131091)
!222 = !DIEnumerator(name: "ABMON_7", value: 131092)
!223 = !DIEnumerator(name: "ABMON_8", value: 131093)
!224 = !DIEnumerator(name: "ABMON_9", value: 131094)
!225 = !DIEnumerator(name: "ABMON_10", value: 131095)
!226 = !DIEnumerator(name: "ABMON_11", value: 131096)
!227 = !DIEnumerator(name: "ABMON_12", value: 131097)
!228 = !DIEnumerator(name: "MON_1", value: 131098)
!229 = !DIEnumerator(name: "MON_2", value: 131099)
!230 = !DIEnumerator(name: "MON_3", value: 131100)
!231 = !DIEnumerator(name: "MON_4", value: 131101)
!232 = !DIEnumerator(name: "MON_5", value: 131102)
!233 = !DIEnumerator(name: "MON_6", value: 131103)
!234 = !DIEnumerator(name: "MON_7", value: 131104)
!235 = !DIEnumerator(name: "MON_8", value: 131105)
!236 = !DIEnumerator(name: "MON_9", value: 131106)
!237 = !DIEnumerator(name: "MON_10", value: 131107)
!238 = !DIEnumerator(name: "MON_11", value: 131108)
!239 = !DIEnumerator(name: "MON_12", value: 131109)
!240 = !DIEnumerator(name: "AM_STR", value: 131110)
!241 = !DIEnumerator(name: "PM_STR", value: 131111)
!242 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!243 = !DIEnumerator(name: "D_FMT", value: 131113)
!244 = !DIEnumerator(name: "T_FMT", value: 131114)
!245 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!246 = !DIEnumerator(name: "ERA", value: 131116)
!247 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!248 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!249 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!250 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!251 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!252 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!253 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!254 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!255 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!256 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!257 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!258 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!259 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!260 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!261 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!262 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!263 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!264 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!265 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!266 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!267 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!268 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!269 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!270 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!271 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!272 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!273 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!274 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!275 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!276 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!277 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!278 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!279 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!280 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!281 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!282 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!283 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!284 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!285 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!286 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!287 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!288 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!289 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!290 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!291 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!292 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!293 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!294 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!295 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!296 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!297 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!298 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!299 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!300 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!301 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!302 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!303 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!304 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!305 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!306 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!307 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!308 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!309 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!310 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!311 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!312 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!313 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!314 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!315 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!316 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!317 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!318 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!319 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!320 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!321 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!322 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!323 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!324 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!325 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!326 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!327 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!328 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!329 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!330 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!331 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!332 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!333 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!334 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!335 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!336 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!337 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!338 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!339 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!340 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!341 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!342 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!343 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!344 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!345 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!346 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!347 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!348 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!349 = !DIEnumerator(name: "CODESET", value: 14)
!350 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!351 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!352 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!353 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!397 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!398 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!399 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!400 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!401 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!402 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!403 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!404 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!405 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!406 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!421 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!422 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!423 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!424 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!425 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!426 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!427 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!428 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!429 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!430 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!431 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!432 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!433 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!434 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!435 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!436 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!437 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!438 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!439 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!440 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!441 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!442 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!443 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!460 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!461 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!464 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!465 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!466 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!467 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!468 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!469 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!470 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!471 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!472 = !DIEnumerator(name: "THOUSEP", value: 65537)
!473 = !DIEnumerator(name: "__GROUPING", value: 65538)
!474 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!475 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!476 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!477 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!478 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!479 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!480 = !DIEnumerator(name: "__YESSTR", value: 327682)
!481 = !DIEnumerator(name: "__NOSTR", value: 327683)
!482 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!483 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!484 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!485 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!486 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!487 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!488 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!489 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!490 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!491 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!492 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!493 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!494 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!495 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!496 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!497 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!498 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!499 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!500 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!501 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!502 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!503 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!504 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!505 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!506 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!507 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!508 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!509 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!510 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!511 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!512 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!513 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!514 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!515 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!516 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!517 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!518 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!535 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!536 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!537 = !{!31, !29, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!539 = !{!194}
!540 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!541 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!542 = distinct !DICompileUnit(language: DW_LANG_C99, file: !543, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !544)
!543 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!544 = !{!19}
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !546, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !547, retainedTypes: !552)
!546 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!547 = !{!548}
!548 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !549, line: 41, size: 32, elements: !550)
!549 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!550 = !{!551}
!551 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!552 = !{!31}
!553 = distinct !DICompileUnit(language: DW_LANG_C99, file: !554, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !555, retainedTypes: !569)
!554 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!555 = !{!556}
!556 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !558, file: !557, line: 192, size: 32, elements: !567)
!557 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = distinct !DISubprogram(name: "x2nrealloc", scope: !557, file: !557, line: 180, type: !559, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !553, variables: !562)
!559 = !DISubroutineType(types: !560)
!560 = !{!31, !31, !561, !141}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!562 = !{!563, !564, !565, !566}
!563 = !DILocalVariable(name: "p", arg: 1, scope: !558, file: !557, line: 180, type: !31)
!564 = !DILocalVariable(name: "pn", arg: 2, scope: !558, file: !557, line: 180, type: !561)
!565 = !DILocalVariable(name: "s", arg: 3, scope: !558, file: !557, line: 180, type: !141)
!566 = !DILocalVariable(name: "n", scope: !558, file: !557, line: 182, type: !141)
!567 = !{!568}
!568 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!569 = !{!141, !29, !31}
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73)
!571 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !574)
!573 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!574 = !{!575}
!575 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !576, line: 26, size: 32, elements: !577)
!576 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = !{!578, !579, !580, !581, !582}
!578 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!579 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!580 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!581 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!582 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !585, retainedTypes: !586)
!584 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = !{!575, !124}
!586 = !{!63, !140}
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !552)
!588 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73)
!590 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !552)
!592 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !552)
!594 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !597)
!596 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = !{!141}
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73)
!599 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73)
!601 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!603 = !{i32 2, !"Dwarf Version", i32 4}
!604 = !{i32 2, !"Debug Info Version", i32 3}
!605 = !{i32 1, !"wchar_size", i32 4}
!606 = !{i32 7, !"PIC Level", i32 2}
!607 = !{i32 7, !"PIE Level", i32 2}
!608 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !609, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !63}
!611 = !{!612}
!612 = !DILocalVariable(name: "status", arg: 1, scope: !608, file: !3, line: 59, type: !63)
!613 = !DIExpression()
!614 = !DILocation(line: 59, column: 12, scope: !608)
!615 = !DILocation(line: 61, column: 14, scope: !616)
!616 = distinct !DILexicalBlock(scope: !608, file: !3, line: 61, column: 7)
!617 = !DILocation(line: 61, column: 7, scope: !608)
!618 = !DILocation(line: 62, column: 5, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !3, line: 62, column: 5)
!620 = !{!621, !621, i64 0}
!621 = !{!"any pointer", !622, i64 0}
!622 = !{!"omnipotent char", !623, i64 0}
!623 = !{!"Simple C/C++ TBAA"}
!624 = !DILocation(line: 65, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !616, file: !3, line: 64, column: 5)
!626 = !DILocation(line: 580, column: 3, scope: !627, inlinedAt: !630)
!627 = distinct !DISubprogram(name: "emit_stdin_note", scope: !37, file: !37, line: 578, type: !628, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !73)
!628 = !DISubroutineType(types: !629)
!629 = !{null}
!630 = distinct !DILocation(line: 70, column: 7, scope: !625)
!631 = !DILocation(line: 587, column: 3, scope: !632, inlinedAt: !633)
!632 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !37, file: !37, line: 585, type: !628, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !73)
!633 = distinct !DILocation(line: 71, column: 7, scope: !625)
!634 = !DILocation(line: 73, column: 7, scope: !625)
!635 = !DILocation(line: 80, column: 7, scope: !625)
!636 = !DILocation(line: 81, column: 7, scope: !625)
!637 = !DILocation(line: 82, column: 7, scope: !625)
!638 = !DILocation(line: 642, column: 15, scope: !36, inlinedAt: !639)
!639 = distinct !DILocation(line: 89, column: 7, scope: !625)
!640 = !DILocation(line: 651, column: 3, scope: !36, inlinedAt: !639)
!641 = !DILocation(line: 655, column: 29, scope: !36, inlinedAt: !639)
!642 = !DILocation(line: 655, column: 15, scope: !36, inlinedAt: !639)
!643 = !DILocation(line: 656, column: 7, scope: !644, inlinedAt: !639)
!644 = distinct !DILexicalBlock(scope: !36, file: !37, line: 656, column: 7)
!645 = !DILocation(line: 656, column: 19, scope: !644, inlinedAt: !639)
!646 = !DILocation(line: 656, column: 22, scope: !644, inlinedAt: !639)
!647 = !DILocation(line: 656, column: 7, scope: !36, inlinedAt: !639)
!648 = !DILocation(line: 662, column: 7, scope: !649, inlinedAt: !639)
!649 = distinct !DILexicalBlock(scope: !644, file: !37, line: 657, column: 5)
!650 = !DILocation(line: 664, column: 5, scope: !649, inlinedAt: !639)
!651 = !DILocation(line: 665, column: 3, scope: !36, inlinedAt: !639)
!652 = !DILocation(line: 667, column: 3, scope: !36, inlinedAt: !639)
!653 = !DILocation(line: 92, column: 3, scope: !608)
!654 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 264, type: !655, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !658)
!655 = !DISubroutineType(types: !656)
!656 = !{!63, !63, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!658 = !{!659, !660, !661, !662, !717, !718, !719, !720}
!659 = !DILocalVariable(name: "argc", arg: 1, scope: !654, file: !3, line: 264, type: !63)
!660 = !DILocalVariable(name: "argv", arg: 2, scope: !654, file: !3, line: 264, type: !657)
!661 = !DILocalVariable(name: "opt", scope: !654, file: !3, line: 266, type: !63)
!662 = !DILocalVariable(name: "input_fh", scope: !654, file: !3, line: 267, type: !663)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !665, line: 7, baseType: !666)
!665 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 241, size: 1728, elements: !668)
!667 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !689, !690, !691, !692, !696, !697, !698, !702, !705, !707, !708, !709, !710, !711, !712, !713}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !666, file: !667, line: 242, baseType: !63, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !666, file: !667, line: 247, baseType: !29, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !666, file: !667, line: 248, baseType: !29, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !666, file: !667, line: 249, baseType: !29, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !666, file: !667, line: 250, baseType: !29, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !666, file: !667, line: 251, baseType: !29, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !666, file: !667, line: 252, baseType: !29, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !666, file: !667, line: 253, baseType: !29, size: 64, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !666, file: !667, line: 254, baseType: !29, size: 64, offset: 512)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !666, file: !667, line: 256, baseType: !29, size: 64, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !666, file: !667, line: 257, baseType: !29, size: 64, offset: 640)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !666, file: !667, line: 258, baseType: !29, size: 64, offset: 704)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !666, file: !667, line: 260, baseType: !682, size: 64, offset: 768)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !667, line: 156, size: 192, elements: !684)
!684 = !{!685, !686, !688}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !683, file: !667, line: 157, baseType: !682, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !683, file: !667, line: 158, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !683, file: !667, line: 162, baseType: !63, size: 32, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !666, file: !667, line: 262, baseType: !687, size: 64, offset: 832)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !666, file: !667, line: 264, baseType: !63, size: 32, offset: 896)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !666, file: !667, line: 268, baseType: !63, size: 32, offset: 928)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !666, file: !667, line: 270, baseType: !693, size: 64, offset: 960)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !694, line: 140, baseType: !695)
!694 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!695 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !666, file: !667, line: 274, baseType: !140, size: 16, offset: 1024)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !666, file: !667, line: 275, baseType: !86, size: 8, offset: 1040)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !666, file: !667, line: 276, baseType: !699, size: 8, offset: 1048)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 1)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !666, file: !667, line: 280, baseType: !703, size: 64, offset: 1088)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !667, line: 150, baseType: null)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !666, file: !667, line: 289, baseType: !706, size: 64, offset: 1152)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !694, line: 141, baseType: !695)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !666, file: !667, line: 297, baseType: !31, size: 64, offset: 1216)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !666, file: !667, line: 298, baseType: !31, size: 64, offset: 1280)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !666, file: !667, line: 299, baseType: !31, size: 64, offset: 1344)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !666, file: !667, line: 300, baseType: !31, size: 64, offset: 1408)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !666, file: !667, line: 302, baseType: !141, size: 64, offset: 1472)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !666, file: !667, line: 303, baseType: !63, size: 32, offset: 1536)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !666, file: !667, line: 305, baseType: !714, size: 160, offset: 1568)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 20)
!717 = !DILocalVariable(name: "infile", scope: !654, file: !3, line: 268, type: !40)
!718 = !DILocalVariable(name: "decode", scope: !654, file: !3, line: 271, type: !100)
!719 = !DILocalVariable(name: "ignore_garbage", scope: !654, file: !3, line: 273, type: !100)
!720 = !DILocalVariable(name: "wrap_column", scope: !654, file: !3, line: 275, type: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !722, line: 112, baseType: !723)
!722 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !694, line: 62, baseType: !143)
!724 = !DILocalVariable(name: "inbuf", scope: !725, file: !3, line: 207, type: !754)
!725 = distinct !DISubprogram(name: "do_decode", scope: !3, file: !3, line: 205, type: !726, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !728)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !663, !663, !100}
!728 = !{!729, !730, !731, !724, !732, !736, !737, !746, !748, !749, !750}
!729 = !DILocalVariable(name: "in", arg: 1, scope: !725, file: !3, line: 205, type: !663)
!730 = !DILocalVariable(name: "out", arg: 2, scope: !725, file: !3, line: 205, type: !663)
!731 = !DILocalVariable(name: "ignore_garbage", arg: 3, scope: !725, file: !3, line: 205, type: !100)
!732 = !DILocalVariable(name: "outbuf", scope: !725, file: !3, line: 208, type: !733)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24576, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 3072)
!736 = !DILocalVariable(name: "sum", scope: !725, file: !3, line: 209, type: !141)
!737 = !DILocalVariable(name: "ctx", scope: !725, file: !3, line: 210, type: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !739, line: 35, size: 64, elements: !740)
!739 = !DIFile(filename: "./lib/base64.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !738, file: !739, line: 37, baseType: !160, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !738, file: !739, line: 38, baseType: !743, size: 32, offset: 32)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 4)
!746 = !DILocalVariable(name: "ok", scope: !747, file: !3, line: 216, type: !100)
!747 = distinct !DILexicalBlock(scope: !725, file: !3, line: 215, column: 5)
!748 = !DILocalVariable(name: "n", scope: !747, file: !3, line: 217, type: !141)
!749 = !DILocalVariable(name: "k", scope: !747, file: !3, line: 218, type: !160)
!750 = !DILocalVariable(name: "i", scope: !751, file: !3, line: 227, type: !141)
!751 = distinct !DILexicalBlock(scope: !752, file: !3, line: 226, column: 13)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 225, column: 15)
!753 = distinct !DILexicalBlock(scope: !747, file: !3, line: 222, column: 9)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32768, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 4096)
!757 = !DILocation(line: 207, column: 8, scope: !725, inlinedAt: !758)
!758 = distinct !DILocation(line: 336, column: 5, scope: !759)
!759 = distinct !DILexicalBlock(scope: !654, file: !3, line: 335, column: 7)
!760 = !DILocation(line: 208, column: 8, scope: !725, inlinedAt: !758)
!761 = !DILocalVariable(name: "inbuf", scope: !762, file: !3, line: 168, type: !777)
!762 = distinct !DISubprogram(name: "do_encode", scope: !3, file: !3, line: 165, type: !763, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !765)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !663, !663, !721}
!765 = !{!766, !767, !768, !769, !761, !770, !774, !775}
!766 = !DILocalVariable(name: "in", arg: 1, scope: !762, file: !3, line: 165, type: !663)
!767 = !DILocalVariable(name: "out", arg: 2, scope: !762, file: !3, line: 165, type: !663)
!768 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !762, file: !3, line: 165, type: !721)
!769 = !DILocalVariable(name: "current_column", scope: !762, file: !3, line: 167, type: !141)
!770 = !DILocalVariable(name: "outbuf", scope: !762, file: !3, line: 169, type: !771)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 327680, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 40960)
!774 = !DILocalVariable(name: "sum", scope: !762, file: !3, line: 170, type: !141)
!775 = !DILocalVariable(name: "n", scope: !776, file: !3, line: 174, type: !141)
!776 = distinct !DILexicalBlock(scope: !762, file: !3, line: 173, column: 5)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 245760, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 30720)
!780 = !DILocation(line: 168, column: 8, scope: !762, inlinedAt: !781)
!781 = distinct !DILocation(line: 338, column: 5, scope: !759)
!782 = !DILocation(line: 169, column: 8, scope: !762, inlinedAt: !781)
!783 = !DILocation(line: 264, column: 11, scope: !654)
!784 = !DILocation(line: 264, column: 24, scope: !654)
!785 = !DILocation(line: 271, column: 8, scope: !654)
!786 = !DILocation(line: 273, column: 8, scope: !654)
!787 = !DILocation(line: 275, column: 13, scope: !654)
!788 = !DILocation(line: 278, column: 21, scope: !654)
!789 = !DILocation(line: 278, column: 3, scope: !654)
!790 = !DILocation(line: 279, column: 3, scope: !654)
!791 = !DILocation(line: 280, column: 3, scope: !654)
!792 = !DILocation(line: 281, column: 3, scope: !654)
!793 = !DILocation(line: 283, column: 3, scope: !654)
!794 = !DILocation(line: 285, column: 3, scope: !654)
!795 = !DILocation(line: 285, column: 17, scope: !654)
!796 = !DILocation(line: 266, column: 7, scope: !654)
!797 = distinct !{!797, !794, !798}
!798 = !DILocation(line: 308, column: 7, scope: !654)
!799 = !DILocation(line: 293, column: 35, scope: !800)
!800 = distinct !DILexicalBlock(scope: !654, file: !3, line: 287, column: 7)
!801 = !DILocation(line: 294, column: 35, scope: !800)
!802 = !DILocation(line: 293, column: 23, scope: !800)
!803 = !DILocation(line: 295, column: 9, scope: !800)
!804 = !DILocation(line: 299, column: 9, scope: !800)
!805 = !DILocation(line: 301, column: 7, scope: !800)
!806 = !DILocation(line: 303, column: 7, scope: !800)
!807 = !DILocation(line: 306, column: 9, scope: !800)
!808 = !DILocation(line: 310, column: 14, scope: !809)
!809 = distinct !DILexicalBlock(scope: !654, file: !3, line: 310, column: 7)
!810 = !{!811, !811, i64 0}
!811 = !{!"int", !622, i64 0}
!812 = !DILocation(line: 310, column: 12, scope: !809)
!813 = !DILocation(line: 310, column: 21, scope: !809)
!814 = !DILocation(line: 310, column: 7, scope: !654)
!815 = !DILocation(line: 312, column: 20, scope: !816)
!816 = distinct !DILexicalBlock(scope: !809, file: !3, line: 311, column: 5)
!817 = !DILocation(line: 312, column: 55, scope: !816)
!818 = !DILocation(line: 312, column: 50, scope: !816)
!819 = !DILocation(line: 312, column: 43, scope: !816)
!820 = !DILocation(line: 312, column: 7, scope: !816)
!821 = !DILocation(line: 313, column: 7, scope: !816)
!822 = !DILocation(line: 316, column: 14, scope: !823)
!823 = distinct !DILexicalBlock(scope: !654, file: !3, line: 316, column: 7)
!824 = !DILocation(line: 316, column: 7, scope: !654)
!825 = !DILocation(line: 317, column: 14, scope: !823)
!826 = !DILocation(line: 268, column: 15, scope: !654)
!827 = !DILocation(line: 317, column: 5, scope: !823)
!828 = !DILocation(line: 321, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !654, file: !3, line: 321, column: 7)
!830 = !DILocation(line: 321, column: 7, scope: !654)
!831 = !DILocation(line: 324, column: 18, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !3, line: 322, column: 5)
!833 = !DILocation(line: 267, column: 9, scope: !654)
!834 = !DILocation(line: 325, column: 5, scope: !832)
!835 = !DILocation(line: 328, column: 18, scope: !836)
!836 = distinct !DILexicalBlock(scope: !829, file: !3, line: 327, column: 5)
!837 = !DILocation(line: 329, column: 20, scope: !838)
!838 = distinct !DILexicalBlock(scope: !836, file: !3, line: 329, column: 11)
!839 = !DILocation(line: 329, column: 11, scope: !836)
!840 = !DILocation(line: 330, column: 9, scope: !838)
!841 = !DILocation(line: 333, column: 3, scope: !654)
!842 = !DILocation(line: 335, column: 7, scope: !759)
!843 = !DILocation(line: 335, column: 7, scope: !654)
!844 = !DILocation(line: 336, column: 34, scope: !759)
!845 = !DILocation(line: 205, column: 18, scope: !725, inlinedAt: !758)
!846 = !DILocation(line: 205, column: 28, scope: !725, inlinedAt: !758)
!847 = !DILocation(line: 205, column: 38, scope: !725, inlinedAt: !758)
!848 = !DILocation(line: 207, column: 3, scope: !725, inlinedAt: !758)
!849 = !DILocation(line: 208, column: 3, scope: !725, inlinedAt: !758)
!850 = !DILocation(line: 210, column: 3, scope: !725, inlinedAt: !758)
!851 = !DILocation(line: 210, column: 30, scope: !725, inlinedAt: !758)
!852 = !DILocation(line: 212, column: 3, scope: !725, inlinedAt: !758)
!853 = !DILocation(line: 214, column: 3, scope: !725, inlinedAt: !758)
!854 = distinct !{!854, !855, !856}
!855 = !DILocation(line: 214, column: 3, scope: !725)
!856 = !DILocation(line: 260, column: 20, scope: !725)
!857 = !DILocation(line: 217, column: 7, scope: !747, inlinedAt: !758)
!858 = !DILocation(line: 209, column: 10, scope: !725, inlinedAt: !758)
!859 = !DILocation(line: 221, column: 7, scope: !747, inlinedAt: !758)
!860 = distinct !{!860, !861, !862}
!861 = !DILocation(line: 221, column: 7, scope: !747)
!862 = !DILocation(line: 240, column: 61, scope: !747)
!863 = !DILocation(line: 223, column: 15, scope: !753, inlinedAt: !758)
!864 = !DILocation(line: 217, column: 14, scope: !747, inlinedAt: !758)
!865 = !DILocation(line: 223, column: 13, scope: !753, inlinedAt: !758)
!866 = !{!867, !867, i64 0}
!867 = !{!"long", !622, i64 0}
!868 = !DILocation(line: 225, column: 15, scope: !753, inlinedAt: !758)
!869 = !DILocation(line: 227, column: 22, scope: !751, inlinedAt: !758)
!870 = !DILocation(line: 228, column: 38, scope: !871, inlinedAt: !758)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 228, column: 15)
!872 = distinct !DILexicalBlock(scope: !751, file: !3, line: 228, column: 15)
!873 = !DILocation(line: 228, column: 33, scope: !871, inlinedAt: !758)
!874 = !DILocation(line: 229, column: 39, scope: !875, inlinedAt: !758)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 229, column: 21)
!876 = !DILocation(line: 229, column: 29, scope: !875, inlinedAt: !758)
!877 = !{!622, !622, i64 0}
!878 = !DILocation(line: 229, column: 21, scope: !875, inlinedAt: !758)
!879 = !DILocation(line: 229, column: 63, scope: !875, inlinedAt: !758)
!880 = !DILocation(line: 229, column: 45, scope: !875, inlinedAt: !758)
!881 = !DILocation(line: 230, column: 20, scope: !875, inlinedAt: !758)
!882 = !DILocation(line: 230, column: 19, scope: !875, inlinedAt: !758)
!883 = !DILocation(line: 232, column: 40, scope: !875, inlinedAt: !758)
!884 = !DILocation(line: 232, column: 61, scope: !875, inlinedAt: !758)
!885 = !DILocation(line: 232, column: 66, scope: !875, inlinedAt: !758)
!886 = !DILocation(line: 232, column: 70, scope: !875, inlinedAt: !758)
!887 = !DILocation(line: 232, column: 19, scope: !875, inlinedAt: !758)
!888 = !DILocation(line: 228, column: 27, scope: !871, inlinedAt: !758)
!889 = distinct !{!889, !890, !891}
!890 = !DILocation(line: 228, column: 15, scope: !872)
!891 = !DILocation(line: 232, column: 73, scope: !872)
!892 = !DILocation(line: 235, column: 18, scope: !753, inlinedAt: !758)
!893 = !DILocation(line: 235, column: 15, scope: !753, inlinedAt: !758)
!894 = !DILocalVariable(name: "__stream", arg: 1, scope: !895, file: !896, line: 132, type: !663)
!895 = distinct !DISubprogram(name: "ferror_unlocked", scope: !896, file: !896, line: 132, type: !897, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !899)
!896 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!897 = !DISubroutineType(types: !898)
!898 = !{!63, !663}
!899 = !{!894}
!900 = !DILocation(line: 132, column: 1, scope: !895, inlinedAt: !901)
!901 = distinct !DILocation(line: 237, column: 15, scope: !902, inlinedAt: !758)
!902 = distinct !DILexicalBlock(scope: !753, file: !3, line: 237, column: 15)
!903 = !DILocation(line: 134, column: 10, scope: !895, inlinedAt: !901)
!904 = !{!905, !811, i64 0}
!905 = !{!"_IO_FILE", !811, i64 0, !621, i64 8, !621, i64 16, !621, i64 24, !621, i64 32, !621, i64 40, !621, i64 48, !621, i64 56, !621, i64 64, !621, i64 72, !621, i64 80, !621, i64 88, !621, i64 96, !621, i64 104, !811, i64 112, !811, i64 116, !867, i64 120, !906, i64 128, !622, i64 130, !622, i64 131, !621, i64 136, !867, i64 144, !621, i64 152, !621, i64 160, !621, i64 168, !621, i64 176, !867, i64 184, !811, i64 192, !622, i64 196}
!906 = !{!"short", !622, i64 0}
!907 = !DILocation(line: 237, column: 15, scope: !902, inlinedAt: !758)
!908 = !DILocation(line: 237, column: 15, scope: !753, inlinedAt: !758)
!909 = !DILocation(line: 238, column: 13, scope: !902, inlinedAt: !758)
!910 = !DILocation(line: 240, column: 18, scope: !747, inlinedAt: !758)
!911 = !DILocation(line: 127, column: 10, scope: !912, inlinedAt: !915)
!912 = distinct !DISubprogram(name: "feof_unlocked", scope: !896, file: !896, line: 125, type: !897, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !913)
!913 = !{!914}
!914 = !DILocalVariable(name: "__stream", arg: 1, scope: !912, file: !896, line: 125, type: !663)
!915 = distinct !DILocation(line: 240, column: 52, scope: !747, inlinedAt: !758)
!916 = !DILocation(line: 240, column: 51, scope: !747, inlinedAt: !758)
!917 = !DILocation(line: 240, column: 48, scope: !747, inlinedAt: !758)
!918 = !DILocation(line: 125, column: 1, scope: !912, inlinedAt: !915)
!919 = !DILocation(line: 248, column: 17, scope: !920, inlinedAt: !758)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 248, column: 15)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 247, column: 9)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 246, column: 7)
!923 = distinct !DILexicalBlock(scope: !747, file: !3, line: 246, column: 7)
!924 = !DILocation(line: 218, column: 20, scope: !747, inlinedAt: !758)
!925 = !DILocation(line: 125, column: 1, scope: !912, inlinedAt: !926)
!926 = distinct !DILocation(line: 246, column: 29, scope: !922, inlinedAt: !758)
!927 = !DILocation(line: 127, column: 10, scope: !912, inlinedAt: !926)
!928 = !DILocation(line: 246, column: 28, scope: !922, inlinedAt: !758)
!929 = !DILocation(line: 246, column: 25, scope: !922, inlinedAt: !758)
!930 = !DILocation(line: 246, column: 21, scope: !922, inlinedAt: !758)
!931 = !DILocation(line: 246, column: 7, scope: !923, inlinedAt: !758)
!932 = distinct !{!932, !933, !934}
!933 = !DILocation(line: 246, column: 7, scope: !923)
!934 = !DILocation(line: 258, column: 9, scope: !923)
!935 = !DILocation(line: 248, column: 29, scope: !920, inlinedAt: !758)
!936 = !DILocation(line: 248, column: 31, scope: !920, inlinedAt: !758)
!937 = !DILocation(line: 248, column: 22, scope: !920, inlinedAt: !758)
!938 = !DILocation(line: 250, column: 13, scope: !921, inlinedAt: !758)
!939 = !DILocation(line: 251, column: 49, scope: !921, inlinedAt: !758)
!940 = !DILocation(line: 251, column: 47, scope: !921, inlinedAt: !758)
!941 = !DILocation(line: 251, column: 16, scope: !921, inlinedAt: !758)
!942 = !DILocation(line: 253, column: 15, scope: !943, inlinedAt: !758)
!943 = distinct !DILexicalBlock(scope: !921, file: !3, line: 253, column: 15)
!944 = !DILocation(line: 253, column: 44, scope: !943, inlinedAt: !758)
!945 = !DILocation(line: 253, column: 42, scope: !943, inlinedAt: !758)
!946 = !DILocation(line: 253, column: 15, scope: !921, inlinedAt: !758)
!947 = !DILocation(line: 254, column: 13, scope: !943, inlinedAt: !758)
!948 = !DILocation(line: 246, column: 41, scope: !922, inlinedAt: !758)
!949 = !DILocation(line: 256, column: 15, scope: !921, inlinedAt: !758)
!950 = !DILocation(line: 257, column: 13, scope: !951, inlinedAt: !758)
!951 = distinct !DILexicalBlock(scope: !921, file: !3, line: 256, column: 15)
!952 = !DILocation(line: 259, column: 5, scope: !725, inlinedAt: !758)
!953 = !DILocation(line: 125, column: 1, scope: !912, inlinedAt: !954)
!954 = distinct !DILocation(line: 260, column: 11, scope: !725, inlinedAt: !758)
!955 = !DILocation(line: 259, column: 5, scope: !747, inlinedAt: !758)
!956 = !DILocation(line: 261, column: 1, scope: !725, inlinedAt: !758)
!957 = !DILocation(line: 336, column: 5, scope: !759)
!958 = !DILocation(line: 165, column: 18, scope: !762, inlinedAt: !781)
!959 = !DILocation(line: 165, column: 28, scope: !762, inlinedAt: !781)
!960 = !DILocation(line: 165, column: 43, scope: !762, inlinedAt: !781)
!961 = !DILocation(line: 167, column: 10, scope: !762, inlinedAt: !781)
!962 = !DILocation(line: 168, column: 3, scope: !762, inlinedAt: !781)
!963 = !DILocation(line: 169, column: 3, scope: !762, inlinedAt: !781)
!964 = !DILocation(line: 172, column: 3, scope: !762, inlinedAt: !781)
!965 = distinct !{!965, !966, !967}
!966 = !DILocation(line: 172, column: 3, scope: !762)
!967 = !DILocation(line: 194, column: 60, scope: !762)
!968 = !DILocation(line: 170, column: 10, scope: !762, inlinedAt: !781)
!969 = !DILocation(line: 177, column: 7, scope: !776, inlinedAt: !781)
!970 = distinct !{!970, !971, !972}
!971 = !DILocation(line: 177, column: 7, scope: !776)
!972 = !DILocation(line: 182, column: 63, scope: !776)
!973 = !DILocation(line: 179, column: 15, scope: !974, inlinedAt: !781)
!974 = distinct !DILexicalBlock(scope: !776, file: !3, line: 178, column: 9)
!975 = !DILocation(line: 174, column: 14, scope: !776, inlinedAt: !781)
!976 = !DILocation(line: 180, column: 15, scope: !974, inlinedAt: !781)
!977 = !DILocation(line: 125, column: 1, scope: !912, inlinedAt: !978)
!978 = distinct !DILocation(line: 182, column: 15, scope: !776, inlinedAt: !781)
!979 = !DILocation(line: 127, column: 10, scope: !912, inlinedAt: !978)
!980 = !DILocation(line: 182, column: 15, scope: !776, inlinedAt: !781)
!981 = !DILocation(line: 182, column: 25, scope: !776, inlinedAt: !781)
!982 = !DILocation(line: 132, column: 1, scope: !895, inlinedAt: !983)
!983 = distinct !DILocation(line: 182, column: 29, scope: !776, inlinedAt: !781)
!984 = !DILocation(line: 134, column: 10, scope: !895, inlinedAt: !983)
!985 = !DILocation(line: 182, column: 29, scope: !776, inlinedAt: !781)
!986 = !DILocation(line: 182, column: 48, scope: !776, inlinedAt: !781)
!987 = !DILocation(line: 182, column: 41, scope: !776, inlinedAt: !781)
!988 = !DILocation(line: 184, column: 15, scope: !989, inlinedAt: !781)
!989 = distinct !DILexicalBlock(scope: !776, file: !3, line: 184, column: 11)
!990 = !DILocation(line: 184, column: 11, scope: !776, inlinedAt: !781)
!991 = !DILocation(line: 188, column: 44, scope: !992, inlinedAt: !781)
!992 = distinct !DILexicalBlock(scope: !989, file: !3, line: 185, column: 9)
!993 = !DILocation(line: 188, column: 11, scope: !992, inlinedAt: !781)
!994 = !DILocalVariable(name: "buffer", arg: 1, scope: !995, file: !3, line: 130, type: !40)
!995 = distinct !DISubprogram(name: "wrap_write", scope: !3, file: !3, line: 130, type: !996, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !40, !141, !721, !561, !663}
!998 = !{!994, !999, !1000, !1001, !1002, !1003, !1004, !1009}
!999 = !DILocalVariable(name: "len", arg: 2, scope: !995, file: !3, line: 130, type: !141)
!1000 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !995, file: !3, line: 131, type: !721)
!1001 = !DILocalVariable(name: "current_column", arg: 4, scope: !995, file: !3, line: 131, type: !561)
!1002 = !DILocalVariable(name: "out", arg: 5, scope: !995, file: !3, line: 131, type: !663)
!1003 = !DILocalVariable(name: "written", scope: !995, file: !3, line: 133, type: !141)
!1004 = !DILocalVariable(name: "cols_remaining", scope: !1005, file: !3, line: 144, type: !721)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 143, column: 7)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 142, column: 5)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 142, column: 5)
!1008 = distinct !DILexicalBlock(scope: !995, file: !3, line: 135, column: 7)
!1009 = !DILocalVariable(name: "to_write", scope: !1005, file: !3, line: 145, type: !141)
!1010 = !DILocation(line: 130, column: 25, scope: !995, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 190, column: 11, scope: !992, inlinedAt: !781)
!1012 = !DILocation(line: 130, column: 40, scope: !995, inlinedAt: !1011)
!1013 = !DILocation(line: 131, column: 23, scope: !995, inlinedAt: !1011)
!1014 = !DILocation(line: 131, column: 66, scope: !995, inlinedAt: !1011)
!1015 = !DILocation(line: 135, column: 7, scope: !995, inlinedAt: !1011)
!1016 = !DILocation(line: 138, column: 11, scope: !1017, inlinedAt: !1011)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 138, column: 11)
!1018 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 136, column: 5)
!1019 = !DILocation(line: 138, column: 43, scope: !1017, inlinedAt: !1011)
!1020 = !DILocation(line: 138, column: 11, scope: !1018, inlinedAt: !1011)
!1021 = !DILocation(line: 139, column: 9, scope: !1017, inlinedAt: !1011)
!1022 = !DILocation(line: 133, column: 10, scope: !995, inlinedAt: !1011)
!1023 = !DILocation(line: 142, column: 31, scope: !1006, inlinedAt: !1011)
!1024 = !DILocation(line: 142, column: 5, scope: !1007, inlinedAt: !1011)
!1025 = !DILocation(line: 144, column: 48, scope: !1005, inlinedAt: !1011)
!1026 = !DILocation(line: 144, column: 19, scope: !1005, inlinedAt: !1011)
!1027 = !DILocation(line: 145, column: 16, scope: !1005, inlinedAt: !1011)
!1028 = !DILocation(line: 146, column: 20, scope: !1005, inlinedAt: !1011)
!1029 = !DILocation(line: 148, column: 22, scope: !1030, inlinedAt: !1011)
!1030 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 148, column: 13)
!1031 = !DILocation(line: 148, column: 13, scope: !1005, inlinedAt: !1011)
!1032 = !DILocalVariable(name: "__c", arg: 1, scope: !1033, file: !896, line: 88, type: !63)
!1033 = distinct !DISubprogram(name: "fputc_unlocked", scope: !896, file: !896, line: 88, type: !1034, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!63, !63, !663}
!1036 = !{!1032, !1037}
!1037 = !DILocalVariable(name: "__stream", arg: 2, scope: !1033, file: !896, line: 88, type: !663)
!1038 = !DILocation(line: 88, column: 21, scope: !1033, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 150, column: 17, scope: !1040, inlinedAt: !1011)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 150, column: 17)
!1041 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 149, column: 11)
!1042 = !DILocation(line: 88, column: 32, scope: !1033, inlinedAt: !1039)
!1043 = !DILocation(line: 90, column: 10, scope: !1033, inlinedAt: !1039)
!1044 = !{!905, !621, i64 40}
!1045 = !{!905, !621, i64 48}
!1046 = !{!"branch_weights", i32 2000, i32 1}
!1047 = !DILocation(line: 150, column: 17, scope: !1041, inlinedAt: !1011)
!1048 = !DILocation(line: 150, column: 35, scope: !1040, inlinedAt: !1011)
!1049 = !DILocation(line: 151, column: 15, scope: !1040, inlinedAt: !1011)
!1050 = !DILocation(line: 156, column: 17, scope: !1051, inlinedAt: !1011)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 156, column: 17)
!1052 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 155, column: 11)
!1053 = !DILocation(line: 156, column: 64, scope: !1051, inlinedAt: !1011)
!1054 = !DILocation(line: 156, column: 17, scope: !1052, inlinedAt: !1011)
!1055 = !DILocation(line: 157, column: 15, scope: !1051, inlinedAt: !1011)
!1056 = !DILocation(line: 158, column: 29, scope: !1052, inlinedAt: !1011)
!1057 = !DILocation(line: 159, column: 21, scope: !1052, inlinedAt: !1011)
!1058 = distinct !{!1058, !1059, !1060}
!1059 = !DILocation(line: 142, column: 5, scope: !1007)
!1060 = !DILocation(line: 161, column: 7, scope: !1007)
!1061 = !DILocation(line: 125, column: 1, scope: !912, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 194, column: 11, scope: !762, inlinedAt: !781)
!1063 = !DILocation(line: 127, column: 10, scope: !912, inlinedAt: !1062)
!1064 = !DILocation(line: 194, column: 11, scope: !762, inlinedAt: !781)
!1065 = !DILocation(line: 194, column: 21, scope: !762, inlinedAt: !781)
!1066 = !DILocation(line: 132, column: 1, scope: !895, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 194, column: 25, scope: !762, inlinedAt: !781)
!1068 = !DILocation(line: 134, column: 10, scope: !895, inlinedAt: !1067)
!1069 = !DILocation(line: 194, column: 25, scope: !762, inlinedAt: !781)
!1070 = !DILocation(line: 194, column: 44, scope: !762, inlinedAt: !781)
!1071 = !DILocation(line: 194, column: 37, scope: !762, inlinedAt: !781)
!1072 = !DILocation(line: 197, column: 7, scope: !1073, inlinedAt: !781)
!1073 = distinct !DILexicalBlock(scope: !762, file: !3, line: 197, column: 7)
!1074 = !DILocation(line: 197, column: 37, scope: !1073, inlinedAt: !781)
!1075 = !DILocation(line: 197, column: 19, scope: !1073, inlinedAt: !781)
!1076 = !DILocation(line: 88, column: 21, scope: !1033, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 197, column: 44, scope: !1073, inlinedAt: !781)
!1078 = !DILocation(line: 88, column: 32, scope: !1033, inlinedAt: !1077)
!1079 = !DILocation(line: 90, column: 10, scope: !1033, inlinedAt: !1077)
!1080 = !DILocation(line: 197, column: 7, scope: !762, inlinedAt: !781)
!1081 = !DILocation(line: 197, column: 62, scope: !1073, inlinedAt: !781)
!1082 = !DILocation(line: 198, column: 5, scope: !1073, inlinedAt: !781)
!1083 = !DILocation(line: 132, column: 1, scope: !895, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 200, column: 7, scope: !1085, inlinedAt: !781)
!1085 = distinct !DILexicalBlock(scope: !762, file: !3, line: 200, column: 7)
!1086 = !DILocation(line: 134, column: 10, scope: !895, inlinedAt: !1084)
!1087 = !DILocation(line: 200, column: 7, scope: !1085, inlinedAt: !781)
!1088 = !DILocation(line: 200, column: 7, scope: !762, inlinedAt: !781)
!1089 = !DILocation(line: 201, column: 5, scope: !1085, inlinedAt: !781)
!1090 = !DILocation(line: 202, column: 1, scope: !762, inlinedAt: !781)
!1091 = !DILocation(line: 340, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !654, file: !3, line: 340, column: 7)
!1093 = !DILocation(line: 340, column: 25, scope: !1092)
!1094 = !DILocation(line: 340, column: 7, scope: !654)
!1095 = !DILocation(line: 342, column: 11, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 342, column: 11)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 341, column: 5)
!1098 = !DILocation(line: 343, column: 9, scope: !1096)
!1099 = !DILocation(line: 342, column: 11, scope: !1097)
!1100 = !DILocation(line: 345, column: 9, scope: !1096)
!1101 = !DILocation(line: 349, column: 1, scope: !654)
!1102 = distinct !DISubprogram(name: "base64_encode", scope: !83, file: !83, line: 88, type: !1103, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !1107)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !1105, !141, !1106, !141}
!1105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!1106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!1107 = !{!1108, !1109, !1110, !1111}
!1108 = !DILocalVariable(name: "in", arg: 1, scope: !1102, file: !83, line: 88, type: !1105)
!1109 = !DILocalVariable(name: "inlen", arg: 2, scope: !1102, file: !83, line: 88, type: !141)
!1110 = !DILocalVariable(name: "out", arg: 3, scope: !1102, file: !83, line: 89, type: !1106)
!1111 = !DILocalVariable(name: "outlen", arg: 4, scope: !1102, file: !83, line: 89, type: !141)
!1112 = !DILocation(line: 88, column: 37, scope: !1102)
!1113 = !DILocation(line: 88, column: 48, scope: !1102)
!1114 = !DILocation(line: 89, column: 31, scope: !1102)
!1115 = !DILocation(line: 89, column: 43, scope: !1102)
!1116 = !DILocation(line: 98, column: 14, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1102, file: !83, line: 98, column: 7)
!1118 = !DILocation(line: 98, column: 18, scope: !1117)
!1119 = !DILocation(line: 98, column: 23, scope: !1117)
!1120 = !DILocation(line: 98, column: 42, scope: !1117)
!1121 = !DILocation(line: 98, column: 46, scope: !1117)
!1122 = !DILocation(line: 98, column: 32, scope: !1117)
!1123 = !DILocation(line: 98, column: 7, scope: !1102)
!1124 = !DILocalVariable(name: "in", arg: 1, scope: !1125, file: !83, line: 69, type: !1105)
!1125 = distinct !DISubprogram(name: "base64_encode_fast", scope: !83, file: !83, line: 69, type: !1126, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !1128)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !1105, !141, !1106}
!1128 = !{!1124, !1129, !1130}
!1129 = !DILocalVariable(name: "inlen", arg: 2, scope: !1125, file: !83, line: 69, type: !141)
!1130 = !DILocalVariable(name: "out", arg: 3, scope: !1125, file: !83, line: 69, type: !1106)
!1131 = !DILocation(line: 69, column: 42, scope: !1125, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 100, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1117, file: !83, line: 99, column: 5)
!1134 = !DILocation(line: 69, column: 53, scope: !1125, inlinedAt: !1132)
!1135 = !DILocation(line: 69, column: 75, scope: !1125, inlinedAt: !1132)
!1136 = !DILocation(line: 71, column: 3, scope: !1125, inlinedAt: !1132)
!1137 = !DILocation(line: 73, column: 31, scope: !1138, inlinedAt: !1132)
!1138 = distinct !DILexicalBlock(scope: !1125, file: !83, line: 72, column: 5)
!1139 = !{!1140}
!1140 = distinct !{!1140, !1141, !"base64_encode_fast: argument 0"}
!1141 = distinct !{!1141, !"base64_encode_fast"}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1141, !"base64_encode_fast: argument 1"}
!1144 = !DILocation(line: 73, column: 21, scope: !1138, inlinedAt: !1132)
!1145 = !DILocation(line: 73, column: 38, scope: !1138, inlinedAt: !1132)
!1146 = !DILocation(line: 73, column: 16, scope: !1138, inlinedAt: !1132)
!1147 = !{!1140, !1143}
!1148 = !DILocation(line: 73, column: 11, scope: !1138, inlinedAt: !1132)
!1149 = !DILocation(line: 73, column: 14, scope: !1138, inlinedAt: !1132)
!1150 = !DILocation(line: 74, column: 23, scope: !1138, inlinedAt: !1132)
!1151 = !DILocation(line: 74, column: 40, scope: !1138, inlinedAt: !1132)
!1152 = !DILocation(line: 74, column: 59, scope: !1138, inlinedAt: !1132)
!1153 = !DILocation(line: 74, column: 49, scope: !1138, inlinedAt: !1132)
!1154 = !DILocation(line: 74, column: 66, scope: !1138, inlinedAt: !1132)
!1155 = !DILocation(line: 74, column: 73, scope: !1138, inlinedAt: !1132)
!1156 = !DILocation(line: 74, column: 16, scope: !1138, inlinedAt: !1132)
!1157 = !DILocation(line: 74, column: 11, scope: !1138, inlinedAt: !1132)
!1158 = !DILocation(line: 74, column: 14, scope: !1138, inlinedAt: !1132)
!1159 = !DILocation(line: 75, column: 40, scope: !1138, inlinedAt: !1132)
!1160 = !DILocation(line: 75, column: 59, scope: !1138, inlinedAt: !1132)
!1161 = !DILocation(line: 75, column: 49, scope: !1138, inlinedAt: !1132)
!1162 = !DILocation(line: 75, column: 66, scope: !1138, inlinedAt: !1132)
!1163 = !DILocation(line: 75, column: 73, scope: !1138, inlinedAt: !1132)
!1164 = !DILocation(line: 75, column: 16, scope: !1138, inlinedAt: !1132)
!1165 = !DILocation(line: 75, column: 11, scope: !1138, inlinedAt: !1132)
!1166 = !DILocation(line: 75, column: 14, scope: !1138, inlinedAt: !1132)
!1167 = !DILocation(line: 76, column: 38, scope: !1138, inlinedAt: !1132)
!1168 = !DILocation(line: 76, column: 16, scope: !1138, inlinedAt: !1132)
!1169 = !DILocation(line: 76, column: 11, scope: !1138, inlinedAt: !1132)
!1170 = !DILocation(line: 76, column: 14, scope: !1138, inlinedAt: !1132)
!1171 = !DILocation(line: 78, column: 13, scope: !1138, inlinedAt: !1132)
!1172 = !DILocation(line: 79, column: 10, scope: !1138, inlinedAt: !1132)
!1173 = distinct !{!1173, !1174, !1175}
!1174 = !DILocation(line: 71, column: 3, scope: !1125)
!1175 = !DILocation(line: 80, column: 5, scope: !1125)
!1176 = !DILocation(line: 104, column: 10, scope: !1102)
!1177 = !DILocation(line: 104, column: 16, scope: !1102)
!1178 = !DILocation(line: 104, column: 3, scope: !1102)
!1179 = !DILocation(line: 106, column: 31, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1102, file: !83, line: 105, column: 5)
!1181 = !DILocation(line: 106, column: 21, scope: !1180)
!1182 = !DILocation(line: 106, column: 38, scope: !1180)
!1183 = !DILocation(line: 106, column: 16, scope: !1180)
!1184 = !DILocation(line: 106, column: 11, scope: !1180)
!1185 = !DILocation(line: 106, column: 14, scope: !1180)
!1186 = !DILocation(line: 107, column: 12, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1180, file: !83, line: 107, column: 11)
!1188 = !DILocation(line: 107, column: 11, scope: !1180)
!1189 = !DILocation(line: 109, column: 33, scope: !1180)
!1190 = !DILocation(line: 109, column: 23, scope: !1180)
!1191 = !DILocation(line: 109, column: 40, scope: !1180)
!1192 = !DILocation(line: 110, column: 27, scope: !1180)
!1193 = !DILocation(line: 110, column: 47, scope: !1180)
!1194 = !DILocation(line: 110, column: 37, scope: !1180)
!1195 = !DILocation(line: 110, column: 54, scope: !1180)
!1196 = !DILocation(line: 110, column: 24, scope: !1180)
!1197 = !DILocation(line: 111, column: 23, scope: !1180)
!1198 = !DILocation(line: 109, column: 16, scope: !1180)
!1199 = !DILocation(line: 109, column: 11, scope: !1180)
!1200 = !DILocation(line: 109, column: 14, scope: !1180)
!1201 = !DILocation(line: 112, column: 12, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1180, file: !83, line: 112, column: 11)
!1203 = !DILocation(line: 112, column: 11, scope: !1180)
!1204 = !DILocation(line: 115, column: 10, scope: !1180)
!1205 = !DILocation(line: 116, column: 29, scope: !1180)
!1206 = !DILocation(line: 116, column: 19, scope: !1180)
!1207 = !DILocation(line: 116, column: 36, scope: !1180)
!1208 = !DILocation(line: 117, column: 23, scope: !1180)
!1209 = !DILocation(line: 117, column: 43, scope: !1180)
!1210 = !DILocation(line: 117, column: 33, scope: !1180)
!1211 = !DILocation(line: 117, column: 50, scope: !1180)
!1212 = !DILocation(line: 117, column: 20, scope: !1180)
!1213 = !DILocation(line: 118, column: 19, scope: !1180)
!1214 = !DILocation(line: 116, column: 12, scope: !1180)
!1215 = !DILocation(line: 114, column: 11, scope: !1180)
!1216 = !DILocation(line: 114, column: 14, scope: !1180)
!1217 = !DILocation(line: 120, column: 12, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1180, file: !83, line: 120, column: 11)
!1219 = !DILocation(line: 120, column: 11, scope: !1180)
!1220 = !DILocation(line: 122, column: 16, scope: !1180)
!1221 = !DILocation(line: 122, column: 39, scope: !1180)
!1222 = !DILocation(line: 122, column: 46, scope: !1180)
!1223 = !DILocation(line: 122, column: 24, scope: !1180)
!1224 = !DILocation(line: 122, column: 14, scope: !1180)
!1225 = !DILocation(line: 123, column: 12, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1180, file: !83, line: 123, column: 11)
!1227 = !DILocation(line: 123, column: 11, scope: !1180)
!1228 = !DILocation(line: 122, column: 11, scope: !1180)
!1229 = !DILocation(line: 126, column: 14, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1180, file: !83, line: 125, column: 11)
!1231 = !DILocation(line: 127, column: 11, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1180, file: !83, line: 127, column: 11)
!1233 = !DILocation(line: 128, column: 12, scope: !1232)
!1234 = distinct !{!1234, !1178, !1235}
!1235 = !DILocation(line: 129, column: 5, scope: !1102)
!1236 = !DILocation(line: 131, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1102, file: !83, line: 131, column: 7)
!1238 = !DILocation(line: 131, column: 7, scope: !1102)
!1239 = !DILocation(line: 132, column: 10, scope: !1237)
!1240 = !DILocation(line: 132, column: 5, scope: !1237)
!1241 = !DILocation(line: 133, column: 1, scope: !1102)
!1242 = distinct !DISubprogram(name: "base64_encode_alloc", scope: !83, file: !83, line: 145, type: !1243, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !1245)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!141, !40, !141, !657}
!1245 = !{!1246, !1247, !1248, !1249}
!1246 = !DILocalVariable(name: "in", arg: 1, scope: !1242, file: !83, line: 145, type: !40)
!1247 = !DILocalVariable(name: "inlen", arg: 2, scope: !1242, file: !83, line: 145, type: !141)
!1248 = !DILocalVariable(name: "out", arg: 3, scope: !1242, file: !83, line: 145, type: !657)
!1249 = !DILocalVariable(name: "outlen", scope: !1242, file: !83, line: 147, type: !141)
!1250 = !DILocation(line: 145, column: 34, scope: !1242)
!1251 = !DILocation(line: 145, column: 45, scope: !1242)
!1252 = !DILocation(line: 145, column: 59, scope: !1242)
!1253 = !DILocation(line: 147, column: 23, scope: !1242)
!1254 = !DILocation(line: 147, column: 21, scope: !1242)
!1255 = !DILocation(line: 147, column: 10, scope: !1242)
!1256 = !DILocation(line: 161, column: 13, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1242, file: !83, line: 161, column: 7)
!1258 = !DILocation(line: 161, column: 7, scope: !1242)
!1259 = !DILocation(line: 163, column: 12, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !83, line: 162, column: 5)
!1261 = !DILocation(line: 164, column: 7, scope: !1260)
!1262 = !DILocation(line: 167, column: 10, scope: !1242)
!1263 = !DILocation(line: 167, column: 8, scope: !1242)
!1264 = !DILocation(line: 168, column: 8, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1242, file: !83, line: 168, column: 7)
!1266 = !DILocation(line: 168, column: 7, scope: !1242)
!1267 = !DILocation(line: 171, column: 3, scope: !1242)
!1268 = !DILocation(line: 173, column: 3, scope: !1242)
!1269 = !DILocation(line: 174, column: 1, scope: !1242)
!1270 = distinct !DISubprogram(name: "isbase64", scope: !83, file: !83, line: 329, type: !1271, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !1273)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!100, !30}
!1273 = !{!1274}
!1274 = !DILocalVariable(name: "ch", arg: 1, scope: !1270, file: !83, line: 329, type: !30)
!1275 = !DILocation(line: 329, column: 16, scope: !1270)
!1276 = !DILocation(line: 331, column: 49, scope: !1270)
!1277 = !DILocation(line: 331, column: 46, scope: !1270)
!1278 = !DILocation(line: 331, column: 3, scope: !1270)
!1279 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !83, file: !83, line: 336, type: !1280, isLocal: false, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !1287)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !739, line: 35, size: 64, elements: !1284)
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1283, file: !739, line: 37, baseType: !160, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1283, file: !739, line: 38, baseType: !743, size: 32, offset: 32)
!1287 = !{!1288}
!1288 = !DILocalVariable(name: "ctx", arg: 1, scope: !1279, file: !83, line: 336, type: !1282)
!1289 = !DILocation(line: 336, column: 55, scope: !1279)
!1290 = !DILocation(line: 338, column: 8, scope: !1279)
!1291 = !DILocation(line: 338, column: 10, scope: !1279)
!1292 = !{!1293, !811, i64 0}
!1293 = !{!"base64_decode_context", !811, i64 0, !622, i64 4}
!1294 = !DILocation(line: 339, column: 1, scope: !1279)
!1295 = distinct !DISubprogram(name: "base64_decode_ctx", scope: !83, file: !83, line: 488, type: !1296, isLocal: false, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !1298)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!100, !1282, !1105, !141, !1106, !561}
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1310, !1312}
!1299 = !DILocalVariable(name: "ctx", arg: 1, scope: !1295, file: !83, line: 488, type: !1282)
!1300 = !DILocalVariable(name: "in", arg: 2, scope: !1295, file: !83, line: 489, type: !1105)
!1301 = !DILocalVariable(name: "inlen", arg: 3, scope: !1295, file: !83, line: 489, type: !141)
!1302 = !DILocalVariable(name: "out", arg: 4, scope: !1295, file: !83, line: 490, type: !1106)
!1303 = !DILocalVariable(name: "outlen", arg: 5, scope: !1295, file: !83, line: 490, type: !561)
!1304 = !DILocalVariable(name: "outleft", scope: !1295, file: !83, line: 492, type: !141)
!1305 = !DILocalVariable(name: "ignore_newlines", scope: !1295, file: !83, line: 493, type: !100)
!1306 = !DILocalVariable(name: "flush_ctx", scope: !1295, file: !83, line: 494, type: !100)
!1307 = !DILocalVariable(name: "ctx_i", scope: !1295, file: !83, line: 495, type: !160)
!1308 = !DILocalVariable(name: "outleft_save", scope: !1309, file: !83, line: 506, type: !141)
!1309 = distinct !DILexicalBlock(scope: !1295, file: !83, line: 505, column: 5)
!1310 = !DILocalVariable(name: "in_end", scope: !1311, file: !83, line: 539, type: !40)
!1311 = distinct !DILexicalBlock(scope: !1309, file: !83, line: 538, column: 7)
!1312 = !DILocalVariable(name: "non_nl", scope: !1311, file: !83, line: 540, type: !40)
!1313 = !DILocation(line: 488, column: 50, scope: !1295)
!1314 = !DILocation(line: 489, column: 41, scope: !1295)
!1315 = !DILocation(line: 489, column: 52, scope: !1295)
!1316 = !DILocation(line: 490, column: 35, scope: !1295)
!1317 = !DILocation(line: 490, column: 48, scope: !1295)
!1318 = !DILocation(line: 492, column: 20, scope: !1295)
!1319 = !DILocation(line: 492, column: 10, scope: !1295)
!1320 = !DILocation(line: 493, column: 30, scope: !1295)
!1321 = !DILocation(line: 494, column: 8, scope: !1295)
!1322 = !DILocation(line: 495, column: 16, scope: !1295)
!1323 = !DILocation(line: 497, column: 7, scope: !1295)
!1324 = !DILocation(line: 499, column: 20, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !83, line: 498, column: 5)
!1326 = distinct !DILexicalBlock(scope: !1295, file: !83, line: 497, column: 7)
!1327 = !DILocation(line: 500, column: 25, scope: !1325)
!1328 = !DILocation(line: 501, column: 5, scope: !1325)
!1329 = !DILocation(line: 504, column: 3, scope: !1295)
!1330 = !DILocation(line: 506, column: 14, scope: !1309)
!1331 = !DILocation(line: 407, column: 13, scope: !1332, inlinedAt: !1343)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !83, line: 407, column: 7)
!1333 = distinct !DISubprogram(name: "decode_4", scope: !83, file: !83, line: 403, type: !1334, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !1337)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!100, !1105, !141, !1336, !561}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1337 = !{!1338, !1339, !1340, !1341, !1342}
!1338 = !DILocalVariable(name: "in", arg: 1, scope: !1333, file: !83, line: 403, type: !1105)
!1339 = !DILocalVariable(name: "inlen", arg: 2, scope: !1333, file: !83, line: 403, type: !141)
!1340 = !DILocalVariable(name: "outp", arg: 3, scope: !1333, file: !83, line: 404, type: !1336)
!1341 = !DILocalVariable(name: "outleft", arg: 4, scope: !1333, file: !83, line: 404, type: !561)
!1342 = !DILocalVariable(name: "out", scope: !1333, file: !83, line: 406, type: !29)
!1343 = distinct !DILocation(line: 514, column: 20, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !83, line: 514, column: 19)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !83, line: 510, column: 13)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !83, line: 508, column: 9)
!1347 = distinct !DILexicalBlock(scope: !1309, file: !83, line: 507, column: 11)
!1348 = !DILocation(line: 507, column: 22, scope: !1347)
!1349 = !DILocation(line: 403, column: 43, scope: !1333, inlinedAt: !1343)
!1350 = !DILocation(line: 406, column: 9, scope: !1333, inlinedAt: !1343)
!1351 = !DILocation(line: 514, column: 30, scope: !1344)
!1352 = !DILocation(line: 410, column: 18, scope: !1353, inlinedAt: !1343)
!1353 = distinct !DILexicalBlock(scope: !1333, file: !83, line: 410, column: 7)
!1354 = !{!1355}
!1355 = distinct !{!1355, !1356, !"decode_4: argument 0"}
!1356 = distinct !{!1356, !"decode_4"}
!1357 = !DILocation(line: 329, column: 16, scope: !1270, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 410, column: 8, scope: !1353, inlinedAt: !1343)
!1359 = !DILocation(line: 331, column: 49, scope: !1270, inlinedAt: !1358)
!1360 = !DILocation(line: 331, column: 46, scope: !1270, inlinedAt: !1358)
!1361 = !DILocation(line: 410, column: 25, scope: !1353, inlinedAt: !1343)
!1362 = !DILocation(line: 410, column: 39, scope: !1353, inlinedAt: !1343)
!1363 = !DILocation(line: 329, column: 16, scope: !1270, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 410, column: 29, scope: !1353, inlinedAt: !1343)
!1365 = !DILocation(line: 331, column: 49, scope: !1270, inlinedAt: !1364)
!1366 = !DILocation(line: 331, column: 46, scope: !1270, inlinedAt: !1364)
!1367 = !DILocation(line: 410, column: 7, scope: !1333, inlinedAt: !1343)
!1368 = !DILocation(line: 413, column: 7, scope: !1369, inlinedAt: !1343)
!1369 = distinct !DILexicalBlock(scope: !1333, file: !83, line: 413, column: 7)
!1370 = !DILocation(line: 413, column: 7, scope: !1333, inlinedAt: !1343)
!1371 = !DILocation(line: 415, column: 18, scope: !1372, inlinedAt: !1343)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !83, line: 414, column: 5)
!1373 = !DILocation(line: 415, column: 40, scope: !1372, inlinedAt: !1343)
!1374 = !DILocation(line: 416, column: 20, scope: !1372, inlinedAt: !1343)
!1375 = !DILocation(line: 416, column: 42, scope: !1372, inlinedAt: !1343)
!1376 = !DILocation(line: 416, column: 17, scope: !1372, inlinedAt: !1343)
!1377 = !DILocation(line: 415, column: 16, scope: !1372, inlinedAt: !1343)
!1378 = !DILocation(line: 415, column: 11, scope: !1372, inlinedAt: !1343)
!1379 = !DILocation(line: 415, column: 14, scope: !1372, inlinedAt: !1343)
!1380 = !DILocation(line: 417, column: 7, scope: !1372, inlinedAt: !1343)
!1381 = !DILocation(line: 418, column: 5, scope: !1372, inlinedAt: !1343)
!1382 = !DILocation(line: 420, column: 13, scope: !1383, inlinedAt: !1343)
!1383 = distinct !DILexicalBlock(scope: !1333, file: !83, line: 420, column: 7)
!1384 = !DILocation(line: 420, column: 7, scope: !1333, inlinedAt: !1343)
!1385 = !DILocation(line: 423, column: 7, scope: !1386, inlinedAt: !1343)
!1386 = distinct !DILexicalBlock(scope: !1333, file: !83, line: 423, column: 7)
!1387 = !DILocation(line: 423, column: 13, scope: !1386, inlinedAt: !1343)
!1388 = !DILocation(line: 423, column: 7, scope: !1333, inlinedAt: !1343)
!1389 = !DILocation(line: 425, column: 17, scope: !1390, inlinedAt: !1343)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !83, line: 425, column: 11)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !83, line: 424, column: 5)
!1392 = !DILocation(line: 425, column: 11, scope: !1391, inlinedAt: !1343)
!1393 = !DILocation(line: 428, column: 11, scope: !1394, inlinedAt: !1343)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !83, line: 428, column: 11)
!1395 = !DILocation(line: 428, column: 17, scope: !1394, inlinedAt: !1343)
!1396 = !DILocation(line: 428, column: 11, scope: !1391, inlinedAt: !1343)
!1397 = !DILocation(line: 329, column: 16, scope: !1270, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 433, column: 12, scope: !1399, inlinedAt: !1343)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !83, line: 433, column: 11)
!1400 = distinct !DILexicalBlock(scope: !1386, file: !83, line: 432, column: 5)
!1401 = !DILocation(line: 331, column: 49, scope: !1270, inlinedAt: !1398)
!1402 = !DILocation(line: 331, column: 46, scope: !1270, inlinedAt: !1398)
!1403 = !DILocation(line: 433, column: 11, scope: !1400, inlinedAt: !1343)
!1404 = !DILocation(line: 436, column: 11, scope: !1405, inlinedAt: !1343)
!1405 = distinct !DILexicalBlock(scope: !1400, file: !83, line: 436, column: 11)
!1406 = !DILocation(line: 436, column: 11, scope: !1400, inlinedAt: !1343)
!1407 = !DILocation(line: 438, column: 23, scope: !1408, inlinedAt: !1343)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !83, line: 437, column: 9)
!1409 = !DILocation(line: 438, column: 45, scope: !1408, inlinedAt: !1343)
!1410 = !DILocation(line: 439, column: 24, scope: !1408, inlinedAt: !1343)
!1411 = !DILocation(line: 439, column: 46, scope: !1408, inlinedAt: !1343)
!1412 = !DILocation(line: 439, column: 21, scope: !1408, inlinedAt: !1343)
!1413 = !DILocation(line: 438, column: 20, scope: !1408, inlinedAt: !1343)
!1414 = !DILocation(line: 438, column: 15, scope: !1408, inlinedAt: !1343)
!1415 = !DILocation(line: 438, column: 18, scope: !1408, inlinedAt: !1343)
!1416 = !DILocation(line: 440, column: 11, scope: !1408, inlinedAt: !1343)
!1417 = !DILocation(line: 441, column: 9, scope: !1408, inlinedAt: !1343)
!1418 = !DILocation(line: 443, column: 17, scope: !1419, inlinedAt: !1343)
!1419 = distinct !DILexicalBlock(scope: !1400, file: !83, line: 443, column: 11)
!1420 = !DILocation(line: 443, column: 11, scope: !1400, inlinedAt: !1343)
!1421 = !DILocation(line: 446, column: 11, scope: !1422, inlinedAt: !1343)
!1422 = distinct !DILexicalBlock(scope: !1400, file: !83, line: 446, column: 11)
!1423 = !DILocation(line: 446, column: 17, scope: !1422, inlinedAt: !1343)
!1424 = !DILocation(line: 446, column: 11, scope: !1400, inlinedAt: !1343)
!1425 = !DILocation(line: 448, column: 21, scope: !1426, inlinedAt: !1343)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !83, line: 448, column: 15)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !83, line: 447, column: 9)
!1428 = !DILocation(line: 448, column: 15, scope: !1427, inlinedAt: !1343)
!1429 = !DILocation(line: 329, column: 16, scope: !1270, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 453, column: 16, scope: !1431, inlinedAt: !1343)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !83, line: 453, column: 15)
!1432 = distinct !DILexicalBlock(scope: !1422, file: !83, line: 452, column: 9)
!1433 = !DILocation(line: 331, column: 49, scope: !1270, inlinedAt: !1430)
!1434 = !DILocation(line: 331, column: 46, scope: !1270, inlinedAt: !1430)
!1435 = !DILocation(line: 453, column: 15, scope: !1432, inlinedAt: !1343)
!1436 = !DILocation(line: 456, column: 15, scope: !1437, inlinedAt: !1343)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !83, line: 456, column: 15)
!1438 = !DILocation(line: 456, column: 15, scope: !1432, inlinedAt: !1343)
!1439 = !DILocation(line: 458, column: 49, scope: !1440, inlinedAt: !1343)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !83, line: 457, column: 13)
!1441 = !DILocation(line: 459, column: 25, scope: !1440, inlinedAt: !1343)
!1442 = !DILocation(line: 458, column: 19, scope: !1440, inlinedAt: !1343)
!1443 = !DILocation(line: 458, column: 22, scope: !1440, inlinedAt: !1343)
!1444 = !DILocation(line: 460, column: 15, scope: !1440, inlinedAt: !1343)
!1445 = !DILocation(line: 461, column: 13, scope: !1440, inlinedAt: !1343)
!1446 = !DILocation(line: 517, column: 18, scope: !1345)
!1447 = !DILocation(line: 407, column: 7, scope: !1333, inlinedAt: !1343)
!1448 = !DILocation(line: 518, column: 21, scope: !1345)
!1449 = distinct !{!1449, !1450, !1451}
!1450 = !DILocation(line: 509, column: 11, scope: !1346)
!1451 = !DILocation(line: 519, column: 13, scope: !1346)
!1452 = !DILocation(line: 522, column: 17, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1309, file: !83, line: 522, column: 11)
!1454 = !DILocation(line: 522, column: 22, scope: !1453)
!1455 = !DILocation(line: 527, column: 17, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1309, file: !83, line: 527, column: 11)
!1457 = !DILocation(line: 527, column: 21, scope: !1456)
!1458 = !DILocation(line: 527, column: 20, scope: !1456)
!1459 = !DILocation(line: 527, column: 24, scope: !1456)
!1460 = !DILocation(line: 527, column: 32, scope: !1456)
!1461 = !DILocation(line: 529, column: 11, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !83, line: 528, column: 9)
!1463 = !DILocation(line: 530, column: 11, scope: !1462)
!1464 = !DILocation(line: 535, column: 11, scope: !1309)
!1465 = !DILocation(line: 539, column: 30, scope: !1311)
!1466 = !DILocation(line: 539, column: 33, scope: !1311)
!1467 = !DILocation(line: 539, column: 21, scope: !1311)
!1468 = !DILocation(line: 542, column: 13, scope: !1311)
!1469 = !DILocalVariable(name: "ctx", arg: 1, scope: !1470, file: !83, line: 349, type: !1282)
!1470 = distinct !DISubprogram(name: "get_4", scope: !83, file: !83, line: 349, type: !1471, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !1474)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!29, !1282, !1473, !1105, !561}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1474 = !{!1469, !1475, !1476, !1477, !1478, !1481, !1483}
!1475 = !DILocalVariable(name: "in", arg: 2, scope: !1470, file: !83, line: 350, type: !1473)
!1476 = !DILocalVariable(name: "in_end", arg: 3, scope: !1470, file: !83, line: 350, type: !1105)
!1477 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1470, file: !83, line: 351, type: !561)
!1478 = !DILocalVariable(name: "t", scope: !1479, file: !83, line: 358, type: !40)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !83, line: 357, column: 5)
!1480 = distinct !DILexicalBlock(scope: !1470, file: !83, line: 356, column: 7)
!1481 = !DILocalVariable(name: "p", scope: !1482, file: !83, line: 370, type: !40)
!1482 = distinct !DILexicalBlock(scope: !1470, file: !83, line: 368, column: 3)
!1483 = !DILocalVariable(name: "c", scope: !1484, file: !83, line: 373, type: !30)
!1484 = distinct !DILexicalBlock(scope: !1482, file: !83, line: 372, column: 7)
!1485 = !DILocation(line: 349, column: 38, scope: !1470, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 543, column: 20, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1311, file: !83, line: 542, column: 13)
!1488 = !DILocation(line: 350, column: 30, scope: !1470, inlinedAt: !1486)
!1489 = !DILocation(line: 350, column: 55, scope: !1470, inlinedAt: !1486)
!1490 = !DILocation(line: 353, column: 12, scope: !1491, inlinedAt: !1486)
!1491 = distinct !DILexicalBlock(scope: !1470, file: !83, line: 353, column: 7)
!1492 = !{!1493}
!1493 = distinct !{!1493, !1494, !"get_4: argument 0"}
!1494 = distinct !{!1494, !"get_4"}
!1495 = !DILocation(line: 353, column: 7, scope: !1470, inlinedAt: !1486)
!1496 = !DILocation(line: 354, column: 12, scope: !1491, inlinedAt: !1486)
!1497 = !DILocation(line: 356, column: 7, scope: !1470, inlinedAt: !1486)
!1498 = !DILocation(line: 358, column: 19, scope: !1479, inlinedAt: !1486)
!1499 = !DILocation(line: 359, column: 23, scope: !1500, inlinedAt: !1486)
!1500 = distinct !DILexicalBlock(scope: !1479, file: !83, line: 359, column: 11)
!1501 = !DILocation(line: 359, column: 13, scope: !1500, inlinedAt: !1486)
!1502 = !DILocation(line: 359, column: 29, scope: !1500, inlinedAt: !1486)
!1503 = !DILocation(line: 359, column: 32, scope: !1500, inlinedAt: !1486)
!1504 = !DILocation(line: 359, column: 52, scope: !1500, inlinedAt: !1486)
!1505 = !DILocation(line: 359, column: 11, scope: !1479, inlinedAt: !1486)
!1506 = !DILocation(line: 362, column: 15, scope: !1507, inlinedAt: !1486)
!1507 = distinct !DILexicalBlock(scope: !1500, file: !83, line: 360, column: 9)
!1508 = !DILocation(line: 540, column: 21, scope: !1311)
!1509 = !DILocation(line: 403, column: 32, scope: !1333, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 555, column: 14, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1311, file: !83, line: 555, column: 13)
!1512 = !DILocation(line: 403, column: 43, scope: !1333, inlinedAt: !1510)
!1513 = !DILocation(line: 406, column: 9, scope: !1333, inlinedAt: !1510)
!1514 = !DILocation(line: 407, column: 7, scope: !1333, inlinedAt: !1510)
!1515 = !DILocation(line: 370, column: 17, scope: !1482, inlinedAt: !1486)
!1516 = !DILocation(line: 371, column: 14, scope: !1482, inlinedAt: !1486)
!1517 = !DILocation(line: 371, column: 5, scope: !1482, inlinedAt: !1486)
!1518 = !DILocation(line: 373, column: 20, scope: !1484, inlinedAt: !1486)
!1519 = !DILocation(line: 373, column: 18, scope: !1484, inlinedAt: !1486)
!1520 = !DILocation(line: 373, column: 14, scope: !1484, inlinedAt: !1486)
!1521 = !DILocation(line: 374, column: 15, scope: !1522, inlinedAt: !1486)
!1522 = distinct !DILexicalBlock(scope: !1484, file: !83, line: 374, column: 13)
!1523 = !DILocation(line: 374, column: 13, scope: !1484, inlinedAt: !1486)
!1524 = !DILocation(line: 376, column: 28, scope: !1525, inlinedAt: !1486)
!1525 = distinct !DILexicalBlock(scope: !1522, file: !83, line: 375, column: 11)
!1526 = !DILocation(line: 376, column: 13, scope: !1525, inlinedAt: !1486)
!1527 = !DILocation(line: 376, column: 32, scope: !1525, inlinedAt: !1486)
!1528 = !DILocation(line: 377, column: 24, scope: !1529, inlinedAt: !1486)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !83, line: 377, column: 17)
!1530 = !DILocation(line: 377, column: 17, scope: !1525, inlinedAt: !1486)
!1531 = distinct !{!1531, !1532, !1533}
!1532 = !DILocation(line: 371, column: 5, scope: !1482)
!1533 = !DILocation(line: 380, column: 7, scope: !1482)
!1534 = !DILocation(line: 383, column: 27, scope: !1482, inlinedAt: !1486)
!1535 = !DILocation(line: 382, column: 9, scope: !1482, inlinedAt: !1486)
!1536 = !DILocation(line: 383, column: 22, scope: !1482, inlinedAt: !1486)
!1537 = !DILocation(line: 550, column: 19, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1311, file: !83, line: 550, column: 13)
!1539 = !DILocation(line: 550, column: 24, scope: !1538)
!1540 = !DILocation(line: 550, column: 34, scope: !1538)
!1541 = !DILocation(line: 550, column: 38, scope: !1538)
!1542 = !DILocation(line: 407, column: 13, scope: !1332, inlinedAt: !1510)
!1543 = !DILocation(line: 410, column: 18, scope: !1353, inlinedAt: !1510)
!1544 = !{!1545}
!1545 = distinct !{!1545, !1546, !"decode_4: argument 0"}
!1546 = distinct !{!1546, !"decode_4"}
!1547 = !DILocation(line: 329, column: 16, scope: !1270, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 410, column: 8, scope: !1353, inlinedAt: !1510)
!1549 = !DILocation(line: 331, column: 49, scope: !1270, inlinedAt: !1548)
!1550 = !DILocation(line: 331, column: 46, scope: !1270, inlinedAt: !1548)
!1551 = !DILocation(line: 410, column: 25, scope: !1353, inlinedAt: !1510)
!1552 = !DILocation(line: 410, column: 39, scope: !1353, inlinedAt: !1510)
!1553 = !DILocation(line: 329, column: 16, scope: !1270, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 410, column: 29, scope: !1353, inlinedAt: !1510)
!1555 = !DILocation(line: 331, column: 49, scope: !1270, inlinedAt: !1554)
!1556 = !DILocation(line: 331, column: 46, scope: !1270, inlinedAt: !1554)
!1557 = !DILocation(line: 410, column: 7, scope: !1333, inlinedAt: !1510)
!1558 = !DILocation(line: 413, column: 7, scope: !1369, inlinedAt: !1510)
!1559 = !DILocation(line: 413, column: 7, scope: !1333, inlinedAt: !1510)
!1560 = !DILocation(line: 415, column: 18, scope: !1372, inlinedAt: !1510)
!1561 = !DILocation(line: 415, column: 40, scope: !1372, inlinedAt: !1510)
!1562 = !DILocation(line: 416, column: 20, scope: !1372, inlinedAt: !1510)
!1563 = !DILocation(line: 416, column: 42, scope: !1372, inlinedAt: !1510)
!1564 = !DILocation(line: 416, column: 17, scope: !1372, inlinedAt: !1510)
!1565 = !DILocation(line: 415, column: 16, scope: !1372, inlinedAt: !1510)
!1566 = !DILocation(line: 415, column: 11, scope: !1372, inlinedAt: !1510)
!1567 = !DILocation(line: 415, column: 14, scope: !1372, inlinedAt: !1510)
!1568 = !DILocation(line: 417, column: 7, scope: !1372, inlinedAt: !1510)
!1569 = !DILocation(line: 418, column: 5, scope: !1372, inlinedAt: !1510)
!1570 = !DILocation(line: 420, column: 13, scope: !1383, inlinedAt: !1510)
!1571 = !DILocation(line: 420, column: 7, scope: !1333, inlinedAt: !1510)
!1572 = !DILocation(line: 423, column: 7, scope: !1386, inlinedAt: !1510)
!1573 = !DILocation(line: 423, column: 13, scope: !1386, inlinedAt: !1510)
!1574 = !DILocation(line: 423, column: 7, scope: !1333, inlinedAt: !1510)
!1575 = !DILocation(line: 425, column: 17, scope: !1390, inlinedAt: !1510)
!1576 = !DILocation(line: 425, column: 11, scope: !1391, inlinedAt: !1510)
!1577 = !DILocation(line: 428, column: 11, scope: !1394, inlinedAt: !1510)
!1578 = !DILocation(line: 428, column: 17, scope: !1394, inlinedAt: !1510)
!1579 = !DILocation(line: 428, column: 11, scope: !1391, inlinedAt: !1510)
!1580 = !DILocation(line: 329, column: 16, scope: !1270, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 433, column: 12, scope: !1399, inlinedAt: !1510)
!1582 = !DILocation(line: 331, column: 49, scope: !1270, inlinedAt: !1581)
!1583 = !DILocation(line: 331, column: 46, scope: !1270, inlinedAt: !1581)
!1584 = !DILocation(line: 433, column: 11, scope: !1400, inlinedAt: !1510)
!1585 = !DILocation(line: 436, column: 11, scope: !1405, inlinedAt: !1510)
!1586 = !DILocation(line: 436, column: 11, scope: !1400, inlinedAt: !1510)
!1587 = !DILocation(line: 438, column: 23, scope: !1408, inlinedAt: !1510)
!1588 = !DILocation(line: 438, column: 45, scope: !1408, inlinedAt: !1510)
!1589 = !DILocation(line: 439, column: 24, scope: !1408, inlinedAt: !1510)
!1590 = !DILocation(line: 439, column: 46, scope: !1408, inlinedAt: !1510)
!1591 = !DILocation(line: 439, column: 21, scope: !1408, inlinedAt: !1510)
!1592 = !DILocation(line: 438, column: 20, scope: !1408, inlinedAt: !1510)
!1593 = !DILocation(line: 438, column: 15, scope: !1408, inlinedAt: !1510)
!1594 = !DILocation(line: 438, column: 18, scope: !1408, inlinedAt: !1510)
!1595 = !DILocation(line: 440, column: 11, scope: !1408, inlinedAt: !1510)
!1596 = !DILocation(line: 441, column: 9, scope: !1408, inlinedAt: !1510)
!1597 = !DILocation(line: 443, column: 17, scope: !1419, inlinedAt: !1510)
!1598 = !DILocation(line: 443, column: 11, scope: !1400, inlinedAt: !1510)
!1599 = !DILocation(line: 446, column: 11, scope: !1422, inlinedAt: !1510)
!1600 = !DILocation(line: 446, column: 17, scope: !1422, inlinedAt: !1510)
!1601 = !DILocation(line: 446, column: 11, scope: !1400, inlinedAt: !1510)
!1602 = !DILocation(line: 448, column: 21, scope: !1426, inlinedAt: !1510)
!1603 = !DILocation(line: 448, column: 15, scope: !1427, inlinedAt: !1510)
!1604 = !DILocation(line: 329, column: 16, scope: !1270, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 453, column: 16, scope: !1431, inlinedAt: !1510)
!1606 = !DILocation(line: 331, column: 49, scope: !1270, inlinedAt: !1605)
!1607 = !DILocation(line: 331, column: 46, scope: !1270, inlinedAt: !1605)
!1608 = !DILocation(line: 453, column: 15, scope: !1432, inlinedAt: !1510)
!1609 = !DILocation(line: 456, column: 15, scope: !1437, inlinedAt: !1510)
!1610 = !DILocation(line: 456, column: 15, scope: !1432, inlinedAt: !1510)
!1611 = !DILocation(line: 458, column: 49, scope: !1440, inlinedAt: !1510)
!1612 = !DILocation(line: 459, column: 25, scope: !1440, inlinedAt: !1510)
!1613 = !DILocation(line: 458, column: 19, scope: !1440, inlinedAt: !1510)
!1614 = !DILocation(line: 458, column: 22, scope: !1440, inlinedAt: !1510)
!1615 = !DILocation(line: 460, column: 15, scope: !1440, inlinedAt: !1510)
!1616 = !DILocation(line: 461, column: 13, scope: !1440, inlinedAt: !1510)
!1617 = !DIExpression(DW_OP_deref)
!1618 = !DILocation(line: 558, column: 24, scope: !1311)
!1619 = distinct !{!1619, !1329, !1620}
!1620 = !DILocation(line: 560, column: 5, scope: !1295)
!1621 = !DILocation(line: 562, column: 11, scope: !1295)
!1622 = !DILocation(line: 564, column: 16, scope: !1295)
!1623 = !DILocation(line: 564, column: 3, scope: !1295)
!1624 = distinct !DISubprogram(name: "base64_decode_alloc_ctx", scope: !83, file: !83, line: 579, type: !1625, isLocal: false, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !1627)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!100, !1282, !40, !141, !657, !561}
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633}
!1628 = !DILocalVariable(name: "ctx", arg: 1, scope: !1624, file: !83, line: 579, type: !1282)
!1629 = !DILocalVariable(name: "in", arg: 2, scope: !1624, file: !83, line: 580, type: !40)
!1630 = !DILocalVariable(name: "inlen", arg: 3, scope: !1624, file: !83, line: 580, type: !141)
!1631 = !DILocalVariable(name: "out", arg: 4, scope: !1624, file: !83, line: 580, type: !657)
!1632 = !DILocalVariable(name: "outlen", arg: 5, scope: !1624, file: !83, line: 581, type: !561)
!1633 = !DILocalVariable(name: "needlen", scope: !1624, file: !83, line: 588, type: !141)
!1634 = !DILocation(line: 579, column: 56, scope: !1624)
!1635 = !DILocation(line: 580, column: 38, scope: !1624)
!1636 = !DILocation(line: 580, column: 49, scope: !1624)
!1637 = !DILocation(line: 580, column: 63, scope: !1624)
!1638 = !DILocation(line: 581, column: 34, scope: !1624)
!1639 = !DILocation(line: 588, column: 3, scope: !1624)
!1640 = !DILocation(line: 588, column: 31, scope: !1624)
!1641 = !DILocation(line: 588, column: 22, scope: !1624)
!1642 = !DILocation(line: 588, column: 36, scope: !1624)
!1643 = !DILocation(line: 588, column: 10, scope: !1624)
!1644 = !DILocation(line: 590, column: 10, scope: !1624)
!1645 = !DILocation(line: 590, column: 8, scope: !1624)
!1646 = !DILocation(line: 591, column: 8, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1624, file: !83, line: 591, column: 7)
!1648 = !DILocation(line: 591, column: 7, scope: !1624)
!1649 = !DILocation(line: 594, column: 8, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1624, file: !83, line: 594, column: 7)
!1651 = !DILocation(line: 594, column: 7, scope: !1624)
!1652 = !DILocation(line: 596, column: 13, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !83, line: 595, column: 5)
!1654 = !DILocation(line: 596, column: 7, scope: !1653)
!1655 = !DILocation(line: 597, column: 12, scope: !1653)
!1656 = !DILocation(line: 598, column: 7, scope: !1653)
!1657 = !DILocation(line: 601, column: 7, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1624, file: !83, line: 601, column: 7)
!1659 = !DILocation(line: 601, column: 7, scope: !1624)
!1660 = !DILocation(line: 602, column: 15, scope: !1658)
!1661 = !DILocation(line: 602, column: 13, scope: !1658)
!1662 = !DILocation(line: 602, column: 5, scope: !1658)
!1663 = !DILocation(line: 605, column: 1, scope: !1624)
!1664 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !99, file: !99, line: 41, type: !38, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1665)
!1665 = !{!1666}
!1666 = !DILocalVariable(name: "file", arg: 1, scope: !1664, file: !99, line: 41, type: !40)
!1667 = !DILocation(line: 41, column: 41, scope: !1664)
!1668 = !DILocation(line: 43, column: 13, scope: !1664)
!1669 = !DILocation(line: 44, column: 1, scope: !1664)
!1670 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !99, file: !99, line: 78, type: !1671, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !100}
!1673 = !{!1674}
!1674 = !DILocalVariable(name: "ignore", arg: 1, scope: !1670, file: !99, line: 78, type: !100)
!1675 = !DILocation(line: 78, column: 37, scope: !1670)
!1676 = !DILocation(line: 80, column: 16, scope: !1670)
!1677 = !{!1678, !1678, i64 0}
!1678 = !{!"_Bool", !622, i64 0}
!1679 = !DILocation(line: 81, column: 1, scope: !1670)
!1680 = distinct !DISubprogram(name: "close_stdout", scope: !99, file: !99, line: 107, type: !628, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !94, variables: !1681)
!1681 = !{!1682}
!1682 = !DILocalVariable(name: "write_error", scope: !1683, file: !99, line: 112, type: !40)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !99, line: 111, column: 5)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !99, line: 109, column: 7)
!1685 = !DILocation(line: 109, column: 21, scope: !1684)
!1686 = !DILocation(line: 109, column: 7, scope: !1684)
!1687 = !DILocation(line: 109, column: 29, scope: !1684)
!1688 = !DILocation(line: 110, column: 7, scope: !1684)
!1689 = !DILocation(line: 110, column: 12, scope: !1684)
!1690 = !{i8 0, i8 2}
!1691 = !DILocation(line: 114, column: 19, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1683, file: !99, line: 113, column: 11)
!1693 = !DILocation(line: 110, column: 25, scope: !1684)
!1694 = !DILocation(line: 110, column: 28, scope: !1684)
!1695 = !DILocation(line: 110, column: 34, scope: !1684)
!1696 = !DILocation(line: 109, column: 7, scope: !1680)
!1697 = !DILocation(line: 112, column: 33, scope: !1683)
!1698 = !DILocation(line: 112, column: 19, scope: !1683)
!1699 = !DILocation(line: 113, column: 11, scope: !1692)
!1700 = !DILocation(line: 113, column: 11, scope: !1683)
!1701 = !DILocation(line: 114, column: 36, scope: !1692)
!1702 = !DILocation(line: 114, column: 9, scope: !1692)
!1703 = !DILocation(line: 117, column: 9, scope: !1692)
!1704 = !DILocation(line: 119, column: 14, scope: !1683)
!1705 = !DILocation(line: 119, column: 7, scope: !1683)
!1706 = !DILocation(line: 122, column: 22, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1680, file: !99, line: 122, column: 8)
!1708 = !DILocation(line: 122, column: 8, scope: !1707)
!1709 = !DILocation(line: 122, column: 30, scope: !1707)
!1710 = !DILocation(line: 122, column: 8, scope: !1680)
!1711 = !DILocation(line: 123, column: 13, scope: !1707)
!1712 = !DILocation(line: 123, column: 6, scope: !1707)
!1713 = !DILocation(line: 124, column: 1, scope: !1680)
!1714 = distinct !DISubprogram(name: "fdadvise", scope: !1715, file: !1715, line: 31, type: !1716, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !1721)
!1715 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1716 = !DISubroutineType(types: !1717)
!1717 = !{null, !63, !1718, !1718, !1720}
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1719, line: 57, baseType: !693)
!1719 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1721 = !{!1722, !1723, !1724, !1725, !1726}
!1722 = !DILocalVariable(name: "fd", arg: 1, scope: !1714, file: !1715, line: 31, type: !63)
!1723 = !DILocalVariable(name: "offset", arg: 2, scope: !1714, file: !1715, line: 31, type: !1718)
!1724 = !DILocalVariable(name: "len", arg: 3, scope: !1714, file: !1715, line: 31, type: !1718)
!1725 = !DILocalVariable(name: "advice", arg: 4, scope: !1714, file: !1715, line: 31, type: !1720)
!1726 = !DILocalVariable(name: "__x", scope: !1727, file: !1715, line: 34, type: !63)
!1727 = distinct !DILexicalBlock(scope: !1714, file: !1715, line: 34, column: 3)
!1728 = !DILocation(line: 31, column: 15, scope: !1714)
!1729 = !DILocation(line: 31, column: 25, scope: !1714)
!1730 = !DILocation(line: 31, column: 39, scope: !1714)
!1731 = !DILocation(line: 31, column: 54, scope: !1714)
!1732 = !DILocation(line: 34, column: 3, scope: !1727)
!1733 = !DILocation(line: 36, column: 1, scope: !1714)
!1734 = distinct !DISubprogram(name: "fadvise", scope: !1715, file: !1715, line: 39, type: !1735, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !1777)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !1737, !1720}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !665, line: 7, baseType: !1739)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 241, size: 1728, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1739, file: !667, line: 242, baseType: !63, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1739, file: !667, line: 247, baseType: !29, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1739, file: !667, line: 248, baseType: !29, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1739, file: !667, line: 249, baseType: !29, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1739, file: !667, line: 250, baseType: !29, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1739, file: !667, line: 251, baseType: !29, size: 64, offset: 320)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1739, file: !667, line: 252, baseType: !29, size: 64, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1739, file: !667, line: 253, baseType: !29, size: 64, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1739, file: !667, line: 254, baseType: !29, size: 64, offset: 512)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1739, file: !667, line: 256, baseType: !29, size: 64, offset: 576)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1739, file: !667, line: 257, baseType: !29, size: 64, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1739, file: !667, line: 258, baseType: !29, size: 64, offset: 704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1739, file: !667, line: 260, baseType: !1754, size: 64, offset: 768)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !667, line: 156, size: 192, elements: !1756)
!1756 = !{!1757, !1758, !1760}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1755, file: !667, line: 157, baseType: !1754, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1755, file: !667, line: 158, baseType: !1759, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1755, file: !667, line: 162, baseType: !63, size: 32, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1739, file: !667, line: 262, baseType: !1759, size: 64, offset: 832)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1739, file: !667, line: 264, baseType: !63, size: 32, offset: 896)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1739, file: !667, line: 268, baseType: !63, size: 32, offset: 928)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1739, file: !667, line: 270, baseType: !693, size: 64, offset: 960)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1739, file: !667, line: 274, baseType: !140, size: 16, offset: 1024)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1739, file: !667, line: 275, baseType: !86, size: 8, offset: 1040)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1739, file: !667, line: 276, baseType: !699, size: 8, offset: 1048)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1739, file: !667, line: 280, baseType: !703, size: 64, offset: 1088)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1739, file: !667, line: 289, baseType: !706, size: 64, offset: 1152)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1739, file: !667, line: 297, baseType: !31, size: 64, offset: 1216)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1739, file: !667, line: 298, baseType: !31, size: 64, offset: 1280)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1739, file: !667, line: 299, baseType: !31, size: 64, offset: 1344)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1739, file: !667, line: 300, baseType: !31, size: 64, offset: 1408)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1739, file: !667, line: 302, baseType: !141, size: 64, offset: 1472)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1739, file: !667, line: 303, baseType: !63, size: 32, offset: 1536)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1739, file: !667, line: 305, baseType: !714, size: 160, offset: 1568)
!1777 = !{!1778, !1779}
!1778 = !DILocalVariable(name: "fp", arg: 1, scope: !1734, file: !1715, line: 39, type: !1737)
!1779 = !DILocalVariable(name: "advice", arg: 2, scope: !1734, file: !1715, line: 39, type: !1720)
!1780 = !DILocation(line: 39, column: 16, scope: !1734)
!1781 = !DILocation(line: 39, column: 30, scope: !1734)
!1782 = !DILocation(line: 41, column: 7, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1734, file: !1715, line: 41, column: 7)
!1784 = !DILocation(line: 41, column: 7, scope: !1734)
!1785 = !DILocation(line: 42, column: 15, scope: !1783)
!1786 = !DILocation(line: 31, column: 15, scope: !1714, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 42, column: 5, scope: !1783)
!1788 = !DILocation(line: 31, column: 25, scope: !1714, inlinedAt: !1787)
!1789 = !DILocation(line: 31, column: 39, scope: !1714, inlinedAt: !1787)
!1790 = !DILocation(line: 31, column: 54, scope: !1714, inlinedAt: !1787)
!1791 = !DILocation(line: 34, column: 3, scope: !1727, inlinedAt: !1787)
!1792 = !DILocation(line: 42, column: 5, scope: !1783)
!1793 = !DILocation(line: 43, column: 1, scope: !1734)
!1794 = distinct !DISubprogram(name: "set_program_name", scope: !113, file: !113, line: 39, type: !38, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !1795)
!1795 = !{!1796, !1797, !1798}
!1796 = !DILocalVariable(name: "argv0", arg: 1, scope: !1794, file: !113, line: 39, type: !40)
!1797 = !DILocalVariable(name: "slash", scope: !1794, file: !113, line: 46, type: !40)
!1798 = !DILocalVariable(name: "base", scope: !1794, file: !113, line: 47, type: !40)
!1799 = !DILocation(line: 39, column: 31, scope: !1794)
!1800 = !DILocation(line: 51, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1794, file: !113, line: 51, column: 7)
!1802 = !DILocation(line: 51, column: 7, scope: !1794)
!1803 = !DILocation(line: 55, column: 14, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1801, file: !113, line: 52, column: 5)
!1805 = !DILocation(line: 54, column: 7, scope: !1804)
!1806 = !DILocation(line: 56, column: 7, scope: !1804)
!1807 = !DILocation(line: 59, column: 11, scope: !1794)
!1808 = !DILocation(line: 46, column: 15, scope: !1794)
!1809 = !DILocation(line: 60, column: 17, scope: !1794)
!1810 = !DILocation(line: 60, column: 33, scope: !1794)
!1811 = !DILocation(line: 60, column: 11, scope: !1794)
!1812 = !DILocation(line: 47, column: 15, scope: !1794)
!1813 = !DILocation(line: 61, column: 12, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1794, file: !113, line: 61, column: 7)
!1815 = !DILocation(line: 61, column: 20, scope: !1814)
!1816 = !DILocation(line: 61, column: 25, scope: !1814)
!1817 = !DILocation(line: 61, column: 42, scope: !1814)
!1818 = !DILocation(line: 61, column: 28, scope: !1814)
!1819 = !DILocation(line: 61, column: 61, scope: !1814)
!1820 = !DILocation(line: 61, column: 7, scope: !1794)
!1821 = !DILocation(line: 64, column: 11, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !113, line: 64, column: 11)
!1823 = distinct !DILexicalBlock(scope: !1814, file: !113, line: 62, column: 5)
!1824 = !DILocation(line: 64, column: 36, scope: !1822)
!1825 = !DILocation(line: 64, column: 11, scope: !1823)
!1826 = !DILocation(line: 66, column: 24, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1822, file: !113, line: 65, column: 9)
!1828 = !DILocation(line: 70, column: 41, scope: !1827)
!1829 = !DILocation(line: 72, column: 9, scope: !1827)
!1830 = !DILocation(line: 84, column: 16, scope: !1794)
!1831 = !DILocation(line: 90, column: 27, scope: !1794)
!1832 = !DILocation(line: 92, column: 1, scope: !1794)
!1833 = distinct !DISubprogram(name: "clone_quoting_options", scope: !147, file: !147, line: 114, type: !1834, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !1837)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1836, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!1837 = !{!1838, !1839, !1840}
!1838 = !DILocalVariable(name: "o", arg: 1, scope: !1833, file: !147, line: 114, type: !1836)
!1839 = !DILocalVariable(name: "e", scope: !1833, file: !147, line: 116, type: !63)
!1840 = !DILocalVariable(name: "p", scope: !1833, file: !147, line: 117, type: !1836)
!1841 = !DILocation(line: 114, column: 48, scope: !1833)
!1842 = !DILocation(line: 116, column: 11, scope: !1833)
!1843 = !DILocation(line: 116, column: 7, scope: !1833)
!1844 = !DILocation(line: 117, column: 40, scope: !1833)
!1845 = !DILocation(line: 117, column: 31, scope: !1833)
!1846 = !DILocation(line: 117, column: 27, scope: !1833)
!1847 = !DILocation(line: 119, column: 9, scope: !1833)
!1848 = !DILocation(line: 120, column: 3, scope: !1833)
!1849 = distinct !DISubprogram(name: "get_quoting_style", scope: !147, file: !147, line: 125, type: !1850, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !1854)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!5, !1852}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!1854 = !{!1855}
!1855 = !DILocalVariable(name: "o", arg: 1, scope: !1849, file: !147, line: 125, type: !1852)
!1856 = !DILocation(line: 125, column: 50, scope: !1849)
!1857 = !DILocation(line: 127, column: 11, scope: !1849)
!1858 = !DILocation(line: 127, column: 46, scope: !1849)
!1859 = !{!1860, !622, i64 0}
!1860 = !{!"quoting_options", !622, i64 0, !811, i64 4, !622, i64 8, !621, i64 40, !621, i64 48}
!1861 = !DILocation(line: 127, column: 3, scope: !1849)
!1862 = distinct !DISubprogram(name: "set_quoting_style", scope: !147, file: !147, line: 133, type: !1863, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !1865)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !1836, !5}
!1865 = !{!1866, !1867}
!1866 = !DILocalVariable(name: "o", arg: 1, scope: !1862, file: !147, line: 133, type: !1836)
!1867 = !DILocalVariable(name: "s", arg: 2, scope: !1862, file: !147, line: 133, type: !5)
!1868 = !DILocation(line: 133, column: 44, scope: !1862)
!1869 = !DILocation(line: 133, column: 66, scope: !1862)
!1870 = !DILocation(line: 135, column: 4, scope: !1862)
!1871 = !DILocation(line: 135, column: 39, scope: !1862)
!1872 = !DILocation(line: 135, column: 45, scope: !1862)
!1873 = !DILocation(line: 136, column: 1, scope: !1862)
!1874 = distinct !DISubprogram(name: "set_char_quoting", scope: !147, file: !147, line: 144, type: !1875, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !1877)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!63, !1836, !30, !63}
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1884, !1885}
!1878 = !DILocalVariable(name: "o", arg: 1, scope: !1874, file: !147, line: 144, type: !1836)
!1879 = !DILocalVariable(name: "c", arg: 2, scope: !1874, file: !147, line: 144, type: !30)
!1880 = !DILocalVariable(name: "i", arg: 3, scope: !1874, file: !147, line: 144, type: !63)
!1881 = !DILocalVariable(name: "uc", scope: !1874, file: !147, line: 146, type: !32)
!1882 = !DILocalVariable(name: "p", scope: !1874, file: !147, line: 147, type: !1883)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1884 = !DILocalVariable(name: "shift", scope: !1874, file: !147, line: 149, type: !63)
!1885 = !DILocalVariable(name: "r", scope: !1874, file: !147, line: 150, type: !63)
!1886 = !DILocation(line: 144, column: 43, scope: !1874)
!1887 = !DILocation(line: 144, column: 51, scope: !1874)
!1888 = !DILocation(line: 144, column: 58, scope: !1874)
!1889 = !DILocation(line: 146, column: 17, scope: !1874)
!1890 = !DILocation(line: 148, column: 6, scope: !1874)
!1891 = !DILocation(line: 148, column: 62, scope: !1874)
!1892 = !DILocation(line: 148, column: 57, scope: !1874)
!1893 = !DILocation(line: 147, column: 17, scope: !1874)
!1894 = !DILocation(line: 149, column: 18, scope: !1874)
!1895 = !DILocation(line: 149, column: 15, scope: !1874)
!1896 = !DILocation(line: 149, column: 7, scope: !1874)
!1897 = !DILocation(line: 150, column: 12, scope: !1874)
!1898 = !DILocation(line: 150, column: 15, scope: !1874)
!1899 = !DILocation(line: 150, column: 25, scope: !1874)
!1900 = !DILocation(line: 150, column: 7, scope: !1874)
!1901 = !DILocation(line: 151, column: 13, scope: !1874)
!1902 = !DILocation(line: 151, column: 18, scope: !1874)
!1903 = !DILocation(line: 151, column: 23, scope: !1874)
!1904 = !DILocation(line: 151, column: 6, scope: !1874)
!1905 = !DILocation(line: 152, column: 3, scope: !1874)
!1906 = distinct !DISubprogram(name: "set_quoting_flags", scope: !147, file: !147, line: 160, type: !1907, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!63, !1836, !63}
!1909 = !{!1910, !1911, !1912}
!1910 = !DILocalVariable(name: "o", arg: 1, scope: !1906, file: !147, line: 160, type: !1836)
!1911 = !DILocalVariable(name: "i", arg: 2, scope: !1906, file: !147, line: 160, type: !63)
!1912 = !DILocalVariable(name: "r", scope: !1906, file: !147, line: 162, type: !63)
!1913 = !DILocation(line: 160, column: 44, scope: !1906)
!1914 = !DILocation(line: 160, column: 51, scope: !1906)
!1915 = !DILocation(line: 163, column: 8, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1906, file: !147, line: 163, column: 7)
!1917 = !DILocation(line: 163, column: 7, scope: !1906)
!1918 = !DILocation(line: 165, column: 10, scope: !1906)
!1919 = !{!1860, !811, i64 4}
!1920 = !DILocation(line: 162, column: 7, scope: !1906)
!1921 = !DILocation(line: 166, column: 12, scope: !1906)
!1922 = !DILocation(line: 167, column: 3, scope: !1906)
!1923 = distinct !DISubprogram(name: "set_custom_quoting", scope: !147, file: !147, line: 171, type: !1924, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !1836, !40, !40}
!1926 = !{!1927, !1928, !1929}
!1927 = !DILocalVariable(name: "o", arg: 1, scope: !1923, file: !147, line: 171, type: !1836)
!1928 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1923, file: !147, line: 172, type: !40)
!1929 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1923, file: !147, line: 172, type: !40)
!1930 = !DILocation(line: 171, column: 45, scope: !1923)
!1931 = !DILocation(line: 172, column: 33, scope: !1923)
!1932 = !DILocation(line: 172, column: 57, scope: !1923)
!1933 = !DILocation(line: 174, column: 8, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1923, file: !147, line: 174, column: 7)
!1935 = !DILocation(line: 174, column: 7, scope: !1923)
!1936 = !DILocation(line: 176, column: 6, scope: !1923)
!1937 = !DILocation(line: 176, column: 12, scope: !1923)
!1938 = !DILocation(line: 177, column: 8, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1923, file: !147, line: 177, column: 7)
!1940 = !DILocation(line: 177, column: 23, scope: !1939)
!1941 = !DILocation(line: 177, column: 19, scope: !1939)
!1942 = !DILocation(line: 178, column: 5, scope: !1939)
!1943 = !DILocation(line: 179, column: 6, scope: !1923)
!1944 = !DILocation(line: 179, column: 17, scope: !1923)
!1945 = !{!1860, !621, i64 40}
!1946 = !DILocation(line: 180, column: 6, scope: !1923)
!1947 = !DILocation(line: 180, column: 18, scope: !1923)
!1948 = !{!1860, !621, i64 48}
!1949 = !DILocation(line: 181, column: 1, scope: !1923)
!1950 = distinct !DISubprogram(name: "quotearg_buffer", scope: !147, file: !147, line: 776, type: !1951, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!141, !29, !141, !40, !141, !1852}
!1953 = !{!1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961}
!1954 = !DILocalVariable(name: "buffer", arg: 1, scope: !1950, file: !147, line: 776, type: !29)
!1955 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1950, file: !147, line: 776, type: !141)
!1956 = !DILocalVariable(name: "arg", arg: 3, scope: !1950, file: !147, line: 777, type: !40)
!1957 = !DILocalVariable(name: "argsize", arg: 4, scope: !1950, file: !147, line: 777, type: !141)
!1958 = !DILocalVariable(name: "o", arg: 5, scope: !1950, file: !147, line: 778, type: !1852)
!1959 = !DILocalVariable(name: "p", scope: !1950, file: !147, line: 780, type: !1852)
!1960 = !DILocalVariable(name: "e", scope: !1950, file: !147, line: 781, type: !63)
!1961 = !DILocalVariable(name: "r", scope: !1950, file: !147, line: 782, type: !141)
!1962 = !DILocation(line: 776, column: 24, scope: !1950)
!1963 = !DILocation(line: 776, column: 39, scope: !1950)
!1964 = !DILocation(line: 777, column: 30, scope: !1950)
!1965 = !DILocation(line: 777, column: 42, scope: !1950)
!1966 = !DILocation(line: 778, column: 48, scope: !1950)
!1967 = !DILocation(line: 780, column: 37, scope: !1950)
!1968 = !DILocation(line: 780, column: 33, scope: !1950)
!1969 = !DILocation(line: 781, column: 11, scope: !1950)
!1970 = !DILocation(line: 781, column: 7, scope: !1950)
!1971 = !DILocation(line: 783, column: 43, scope: !1950)
!1972 = !DILocation(line: 783, column: 53, scope: !1950)
!1973 = !DILocation(line: 783, column: 60, scope: !1950)
!1974 = !DILocation(line: 784, column: 43, scope: !1950)
!1975 = !DILocation(line: 784, column: 58, scope: !1950)
!1976 = !DILocation(line: 782, column: 14, scope: !1950)
!1977 = !DILocation(line: 782, column: 10, scope: !1950)
!1978 = !DILocation(line: 785, column: 9, scope: !1950)
!1979 = !DILocation(line: 786, column: 3, scope: !1950)
!1980 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !147, file: !147, line: 248, type: !1981, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !1985)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!141, !29, !141, !40, !141, !5, !63, !1983, !40, !40}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!1985 = !{!1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2010, !2011, !2012, !2013, !2014, !2017, !2018, !2033, !2036, !2037, !2044}
!1986 = !DILocalVariable(name: "buffer", arg: 1, scope: !1980, file: !147, line: 248, type: !29)
!1987 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1980, file: !147, line: 248, type: !141)
!1988 = !DILocalVariable(name: "arg", arg: 3, scope: !1980, file: !147, line: 249, type: !40)
!1989 = !DILocalVariable(name: "argsize", arg: 4, scope: !1980, file: !147, line: 249, type: !141)
!1990 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1980, file: !147, line: 250, type: !5)
!1991 = !DILocalVariable(name: "flags", arg: 6, scope: !1980, file: !147, line: 250, type: !63)
!1992 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1980, file: !147, line: 251, type: !1983)
!1993 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1980, file: !147, line: 252, type: !40)
!1994 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1980, file: !147, line: 253, type: !40)
!1995 = !DILocalVariable(name: "i", scope: !1980, file: !147, line: 255, type: !141)
!1996 = !DILocalVariable(name: "len", scope: !1980, file: !147, line: 256, type: !141)
!1997 = !DILocalVariable(name: "orig_buffersize", scope: !1980, file: !147, line: 257, type: !141)
!1998 = !DILocalVariable(name: "quote_string", scope: !1980, file: !147, line: 258, type: !40)
!1999 = !DILocalVariable(name: "quote_string_len", scope: !1980, file: !147, line: 259, type: !141)
!2000 = !DILocalVariable(name: "backslash_escapes", scope: !1980, file: !147, line: 260, type: !100)
!2001 = !DILocalVariable(name: "unibyte_locale", scope: !1980, file: !147, line: 261, type: !100)
!2002 = !DILocalVariable(name: "elide_outer_quotes", scope: !1980, file: !147, line: 262, type: !100)
!2003 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1980, file: !147, line: 263, type: !100)
!2004 = !DILocalVariable(name: "encountered_single_quote", scope: !1980, file: !147, line: 264, type: !100)
!2005 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1980, file: !147, line: 265, type: !100)
!2006 = !DILocalVariable(name: "c", scope: !2007, file: !147, line: 394, type: !32)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !147, line: 393, column: 5)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !147, line: 392, column: 3)
!2009 = distinct !DILexicalBlock(scope: !1980, file: !147, line: 392, column: 3)
!2010 = !DILocalVariable(name: "esc", scope: !2007, file: !147, line: 395, type: !32)
!2011 = !DILocalVariable(name: "is_right_quote", scope: !2007, file: !147, line: 396, type: !100)
!2012 = !DILocalVariable(name: "escaping", scope: !2007, file: !147, line: 397, type: !100)
!2013 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2007, file: !147, line: 398, type: !100)
!2014 = !DILocalVariable(name: "m", scope: !2015, file: !147, line: 602, type: !141)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !147, line: 600, column: 11)
!2016 = distinct !DILexicalBlock(scope: !2007, file: !147, line: 418, column: 9)
!2017 = !DILocalVariable(name: "printable", scope: !2015, file: !147, line: 604, type: !100)
!2018 = !DILocalVariable(name: "mbstate", scope: !2019, file: !147, line: 613, type: !2021)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !147, line: 612, column: 15)
!2020 = distinct !DILexicalBlock(scope: !2015, file: !147, line: 606, column: 17)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2022, line: 6, baseType: !2023)
!2022 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2024, line: 21, baseType: !2025)
!2024 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2024, line: 13, size: 64, elements: !2026)
!2026 = !{!2027, !2028}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2025, file: !2024, line: 15, baseType: !63, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2025, file: !2024, line: 20, baseType: !2029, size: 32, offset: 32)
!2029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2025, file: !2024, line: 16, size: 32, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2029, file: !2024, line: 18, baseType: !160, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2029, file: !2024, line: 19, baseType: !743, size: 32)
!2033 = !DILocalVariable(name: "w", scope: !2034, file: !147, line: 623, type: !2035)
!2034 = distinct !DILexicalBlock(scope: !2019, file: !147, line: 622, column: 19)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !142, line: 90, baseType: !63)
!2036 = !DILocalVariable(name: "bytes", scope: !2034, file: !147, line: 624, type: !141)
!2037 = !DILocalVariable(name: "j", scope: !2038, file: !147, line: 649, type: !141)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !147, line: 648, column: 27)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !147, line: 646, column: 29)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !147, line: 641, column: 23)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !147, line: 633, column: 30)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !147, line: 628, column: 30)
!2043 = distinct !DILexicalBlock(scope: !2034, file: !147, line: 626, column: 25)
!2044 = !DILocalVariable(name: "ilim", scope: !2045, file: !147, line: 676, type: !141)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !147, line: 673, column: 15)
!2046 = distinct !DILexicalBlock(scope: !2015, file: !147, line: 672, column: 17)
!2047 = !DILocation(line: 248, column: 33, scope: !1980)
!2048 = !DILocation(line: 248, column: 48, scope: !1980)
!2049 = !DILocation(line: 249, column: 39, scope: !1980)
!2050 = !DILocation(line: 249, column: 51, scope: !1980)
!2051 = !DILocation(line: 250, column: 46, scope: !1980)
!2052 = !DILocation(line: 250, column: 65, scope: !1980)
!2053 = !DILocation(line: 251, column: 47, scope: !1980)
!2054 = !DILocation(line: 252, column: 39, scope: !1980)
!2055 = !DILocation(line: 253, column: 39, scope: !1980)
!2056 = !DILocation(line: 256, column: 10, scope: !1980)
!2057 = !DILocation(line: 257, column: 10, scope: !1980)
!2058 = !DILocation(line: 258, column: 15, scope: !1980)
!2059 = !DILocation(line: 259, column: 10, scope: !1980)
!2060 = !DILocation(line: 260, column: 8, scope: !1980)
!2061 = !DILocation(line: 261, column: 25, scope: !1980)
!2062 = !DILocation(line: 261, column: 36, scope: !1980)
!2063 = !DILocation(line: 262, column: 8, scope: !1980)
!2064 = !DILocation(line: 263, column: 8, scope: !1980)
!2065 = !DILocation(line: 264, column: 8, scope: !1980)
!2066 = !DILocation(line: 265, column: 8, scope: !1980)
!2067 = !DILocation(line: 265, column: 3, scope: !1980)
!2068 = !DILocation(line: 308, column: 3, scope: !1980)
!2069 = !DILocation(line: 315, column: 11, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1980, file: !147, line: 309, column: 5)
!2071 = !DILocation(line: 315, column: 12, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2070, file: !147, line: 315, column: 11)
!2073 = !DILocation(line: 316, column: 9, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !147, line: 316, column: 9)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !147, line: 316, column: 9)
!2076 = !DILocation(line: 316, column: 9, scope: !2075)
!2077 = !DILocation(line: 354, column: 26, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !147, line: 332, column: 11)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !147, line: 331, column: 13)
!2080 = distinct !DILexicalBlock(scope: !2070, file: !147, line: 330, column: 7)
!2081 = !DILocation(line: 355, column: 27, scope: !2078)
!2082 = !DILocation(line: 356, column: 11, scope: !2078)
!2083 = !DILocation(line: 357, column: 14, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !147, line: 357, column: 13)
!2085 = !DILocation(line: 357, column: 13, scope: !2080)
!2086 = !DILocation(line: 358, column: 43, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !147, line: 358, column: 11)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !147, line: 358, column: 11)
!2089 = !DILocation(line: 358, column: 11, scope: !2088)
!2090 = !DILocation(line: 359, column: 13, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !147, line: 359, column: 13)
!2092 = distinct !DILexicalBlock(scope: !2087, file: !147, line: 359, column: 13)
!2093 = !DILocation(line: 359, column: 13, scope: !2092)
!2094 = !DILocation(line: 358, column: 70, scope: !2087)
!2095 = distinct !{!2095, !2089, !2096}
!2096 = !DILocation(line: 359, column: 13, scope: !2088)
!2097 = !DILocation(line: 362, column: 28, scope: !2080)
!2098 = !DILocation(line: 364, column: 7, scope: !2070)
!2099 = !DILocation(line: 367, column: 7, scope: !2070)
!2100 = !DILocation(line: 370, column: 7, scope: !2070)
!2101 = !DILocation(line: 373, column: 12, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2070, file: !147, line: 373, column: 11)
!2103 = !DILocation(line: 373, column: 11, scope: !2070)
!2104 = !DILocation(line: 378, column: 12, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2070, file: !147, line: 378, column: 11)
!2106 = !DILocation(line: 378, column: 11, scope: !2070)
!2107 = !DILocation(line: 379, column: 9, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !147, line: 379, column: 9)
!2109 = distinct !DILexicalBlock(scope: !2105, file: !147, line: 379, column: 9)
!2110 = !DILocation(line: 379, column: 9, scope: !2109)
!2111 = !DILocation(line: 386, column: 7, scope: !2070)
!2112 = !DILocation(line: 389, column: 7, scope: !2070)
!2113 = !DILocation(line: 255, column: 10, scope: !1980)
!2114 = !DILocation(line: 392, column: 8, scope: !2009)
!2115 = !DILocation(line: 392, column: 27, scope: !2008)
!2116 = !DILocation(line: 392, column: 19, scope: !2008)
!2117 = !DILocation(line: 392, column: 60, scope: !2008)
!2118 = !DILocation(line: 392, column: 3, scope: !2009)
!2119 = !DILocation(line: 392, column: 41, scope: !2008)
!2120 = !DILocation(line: 392, column: 48, scope: !2008)
!2121 = !DILocation(line: 396, column: 12, scope: !2007)
!2122 = !DILocation(line: 397, column: 12, scope: !2007)
!2123 = !DILocation(line: 398, column: 12, scope: !2007)
!2124 = !DILocation(line: 401, column: 11, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2007, file: !147, line: 400, column: 11)
!2126 = !DILocation(line: 403, column: 17, scope: !2125)
!2127 = !DILocation(line: 404, column: 39, scope: !2125)
!2128 = !DILocation(line: 408, column: 32, scope: !2125)
!2129 = !DILocation(line: 404, column: 19, scope: !2125)
!2130 = !DILocation(line: 404, column: 15, scope: !2125)
!2131 = !DILocation(line: 409, column: 11, scope: !2125)
!2132 = !DILocation(line: 409, column: 26, scope: !2125)
!2133 = !DILocation(line: 409, column: 14, scope: !2125)
!2134 = !DILocation(line: 409, column: 63, scope: !2125)
!2135 = !DILocation(line: 400, column: 11, scope: !2007)
!2136 = !DILocation(line: 416, column: 11, scope: !2007)
!2137 = !DILocation(line: 394, column: 21, scope: !2007)
!2138 = !DILocation(line: 417, column: 7, scope: !2007)
!2139 = !DILocation(line: 420, column: 15, scope: !2016)
!2140 = !DILocation(line: 422, column: 15, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !147, line: 422, column: 15)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !147, line: 421, column: 13)
!2143 = distinct !DILexicalBlock(scope: !2016, file: !147, line: 420, column: 15)
!2144 = !DILocation(line: 422, column: 15, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !147, line: 422, column: 15)
!2146 = !DILocation(line: 422, column: 15, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !147, line: 422, column: 15)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !147, line: 422, column: 15)
!2149 = distinct !DILexicalBlock(scope: !2145, file: !147, line: 422, column: 15)
!2150 = !DILocation(line: 422, column: 15, scope: !2148)
!2151 = !DILocation(line: 422, column: 15, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !147, line: 422, column: 15)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !147, line: 422, column: 15)
!2154 = !DILocation(line: 422, column: 15, scope: !2153)
!2155 = !DILocation(line: 422, column: 15, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !147, line: 422, column: 15)
!2157 = distinct !DILexicalBlock(scope: !2149, file: !147, line: 422, column: 15)
!2158 = !DILocation(line: 422, column: 15, scope: !2157)
!2159 = !DILocation(line: 422, column: 15, scope: !2149)
!2160 = !DILocation(line: 422, column: 15, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !147, line: 422, column: 15)
!2162 = distinct !DILexicalBlock(scope: !2141, file: !147, line: 422, column: 15)
!2163 = !DILocation(line: 422, column: 15, scope: !2162)
!2164 = !DILocation(line: 430, column: 19, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2142, file: !147, line: 429, column: 19)
!2166 = !DILocation(line: 430, column: 24, scope: !2165)
!2167 = !DILocation(line: 430, column: 28, scope: !2165)
!2168 = !DILocation(line: 430, column: 38, scope: !2165)
!2169 = !DILocation(line: 430, column: 48, scope: !2165)
!2170 = !DILocation(line: 430, column: 59, scope: !2165)
!2171 = !DILocation(line: 432, column: 19, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !147, line: 432, column: 19)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !147, line: 432, column: 19)
!2174 = distinct !DILexicalBlock(scope: !2165, file: !147, line: 431, column: 17)
!2175 = !DILocation(line: 432, column: 19, scope: !2173)
!2176 = !DILocation(line: 433, column: 19, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !147, line: 433, column: 19)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !147, line: 433, column: 19)
!2179 = !DILocation(line: 433, column: 19, scope: !2178)
!2180 = !DILocation(line: 434, column: 17, scope: !2174)
!2181 = !DILocation(line: 441, column: 20, scope: !2143)
!2182 = !DILocation(line: 446, column: 11, scope: !2016)
!2183 = !DILocation(line: 449, column: 19, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2016, file: !147, line: 447, column: 13)
!2185 = !DILocation(line: 455, column: 19, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2184, file: !147, line: 454, column: 19)
!2187 = !DILocation(line: 455, column: 24, scope: !2186)
!2188 = !DILocation(line: 455, column: 28, scope: !2186)
!2189 = !DILocation(line: 455, column: 38, scope: !2186)
!2190 = !DILocation(line: 455, column: 47, scope: !2186)
!2191 = !DILocation(line: 455, column: 41, scope: !2186)
!2192 = !DILocation(line: 455, column: 52, scope: !2186)
!2193 = !DILocation(line: 454, column: 19, scope: !2184)
!2194 = !DILocation(line: 456, column: 25, scope: !2186)
!2195 = !DILocation(line: 456, column: 17, scope: !2186)
!2196 = !DILocation(line: 463, column: 25, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2186, file: !147, line: 457, column: 19)
!2198 = !DILocation(line: 467, column: 21, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !147, line: 467, column: 21)
!2200 = distinct !DILexicalBlock(scope: !2197, file: !147, line: 467, column: 21)
!2201 = !DILocation(line: 467, column: 21, scope: !2200)
!2202 = !DILocation(line: 468, column: 21, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !147, line: 468, column: 21)
!2204 = distinct !DILexicalBlock(scope: !2197, file: !147, line: 468, column: 21)
!2205 = !DILocation(line: 468, column: 21, scope: !2204)
!2206 = !DILocation(line: 469, column: 21, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !147, line: 469, column: 21)
!2208 = distinct !DILexicalBlock(scope: !2197, file: !147, line: 469, column: 21)
!2209 = !DILocation(line: 469, column: 21, scope: !2208)
!2210 = !DILocation(line: 470, column: 21, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !147, line: 470, column: 21)
!2212 = distinct !DILexicalBlock(scope: !2197, file: !147, line: 470, column: 21)
!2213 = !DILocation(line: 470, column: 21, scope: !2212)
!2214 = !DILocation(line: 471, column: 21, scope: !2197)
!2215 = !DILocation(line: 395, column: 21, scope: !2007)
!2216 = !DILocation(line: 484, column: 31, scope: !2016)
!2217 = !DILocation(line: 485, column: 31, scope: !2016)
!2218 = !DILocation(line: 487, column: 31, scope: !2016)
!2219 = !DILocation(line: 488, column: 31, scope: !2016)
!2220 = !DILocation(line: 489, column: 31, scope: !2016)
!2221 = !DILocation(line: 492, column: 15, scope: !2016)
!2222 = !DILocation(line: 494, column: 19, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !147, line: 493, column: 13)
!2224 = distinct !DILexicalBlock(scope: !2016, file: !147, line: 492, column: 15)
!2225 = !DILocation(line: 501, column: 33, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2016, file: !147, line: 501, column: 15)
!2227 = !DILocation(line: 506, column: 15, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2016, file: !147, line: 505, column: 15)
!2229 = !DILocation(line: 510, column: 15, scope: !2016)
!2230 = !DILocation(line: 518, column: 26, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2016, file: !147, line: 518, column: 15)
!2232 = !DILocation(line: 518, column: 15, scope: !2016)
!2233 = !DILocation(line: 518, column: 40, scope: !2231)
!2234 = !DILocation(line: 518, column: 47, scope: !2231)
!2235 = !DILocation(line: 522, column: 17, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2016, file: !147, line: 522, column: 15)
!2237 = !DILocation(line: 518, column: 18, scope: !2231)
!2238 = !DILocation(line: 518, column: 65, scope: !2231)
!2239 = !DILocation(line: 522, column: 15, scope: !2016)
!2240 = !DILocation(line: 526, column: 11, scope: !2016)
!2241 = !DILocation(line: 541, column: 15, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2016, file: !147, line: 540, column: 15)
!2243 = !DILocation(line: 548, column: 15, scope: !2016)
!2244 = !DILocation(line: 550, column: 19, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !147, line: 549, column: 13)
!2246 = distinct !DILexicalBlock(scope: !2016, file: !147, line: 548, column: 15)
!2247 = !DILocation(line: 553, column: 19, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2245, file: !147, line: 553, column: 19)
!2249 = !DILocation(line: 553, column: 35, scope: !2248)
!2250 = !DILocation(line: 553, column: 30, scope: !2248)
!2251 = !DILocation(line: 562, column: 15, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !147, line: 562, column: 15)
!2253 = distinct !DILexicalBlock(scope: !2245, file: !147, line: 562, column: 15)
!2254 = !DILocation(line: 562, column: 15, scope: !2253)
!2255 = !DILocation(line: 563, column: 15, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !147, line: 563, column: 15)
!2257 = distinct !DILexicalBlock(scope: !2245, file: !147, line: 563, column: 15)
!2258 = !DILocation(line: 563, column: 15, scope: !2257)
!2259 = !DILocation(line: 564, column: 15, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !147, line: 564, column: 15)
!2261 = distinct !DILexicalBlock(scope: !2245, file: !147, line: 564, column: 15)
!2262 = !DILocation(line: 564, column: 15, scope: !2261)
!2263 = !DILocation(line: 566, column: 13, scope: !2245)
!2264 = !DILocation(line: 606, column: 17, scope: !2015)
!2265 = !DILocation(line: 602, column: 20, scope: !2015)
!2266 = !DILocation(line: 609, column: 29, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2020, file: !147, line: 607, column: 15)
!2268 = !{!906, !906, i64 0}
!2269 = !DILocation(line: 609, column: 27, scope: !2267)
!2270 = !DILocation(line: 604, column: 18, scope: !2015)
!2271 = !DILocation(line: 610, column: 15, scope: !2267)
!2272 = !DILocation(line: 613, column: 17, scope: !2019)
!2273 = !DILocation(line: 614, column: 17, scope: !2019)
!2274 = !DILocation(line: 618, column: 29, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2019, file: !147, line: 618, column: 21)
!2276 = !DILocation(line: 618, column: 21, scope: !2019)
!2277 = !DILocation(line: 619, column: 29, scope: !2275)
!2278 = !DILocation(line: 619, column: 19, scope: !2275)
!2279 = !DILocation(line: 621, column: 17, scope: !2019)
!2280 = distinct !{!2280, !2279, !2281}
!2281 = !DILocation(line: 667, column: 44, scope: !2019)
!2282 = !DILocation(line: 623, column: 21, scope: !2034)
!2283 = !DILocation(line: 624, column: 56, scope: !2034)
!2284 = !DILocation(line: 624, column: 50, scope: !2034)
!2285 = !DILocation(line: 625, column: 53, scope: !2034)
!2286 = !DILocation(line: 613, column: 27, scope: !2019)
!2287 = !DILocation(line: 623, column: 29, scope: !2034)
!2288 = !DILocation(line: 624, column: 36, scope: !2034)
!2289 = !DILocation(line: 624, column: 28, scope: !2034)
!2290 = !DILocation(line: 626, column: 25, scope: !2034)
!2291 = !DILocation(line: 636, column: 38, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2041, file: !147, line: 634, column: 23)
!2293 = !DILocation(line: 636, column: 48, scope: !2292)
!2294 = !DILocation(line: 636, column: 51, scope: !2292)
!2295 = !DILocation(line: 636, column: 25, scope: !2292)
!2296 = !DILocation(line: 637, column: 28, scope: !2292)
!2297 = !DILocation(line: 636, column: 34, scope: !2292)
!2298 = distinct !{!2298, !2295, !2296}
!2299 = !DILocation(line: 650, column: 43, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !147, line: 650, column: 29)
!2301 = distinct !DILexicalBlock(scope: !2038, file: !147, line: 650, column: 29)
!2302 = !DILocation(line: 647, column: 29, scope: !2039)
!2303 = !DILocation(line: 649, column: 36, scope: !2038)
!2304 = !DILocation(line: 651, column: 49, scope: !2300)
!2305 = !DILocation(line: 651, column: 39, scope: !2300)
!2306 = !DILocation(line: 651, column: 31, scope: !2300)
!2307 = !DILocation(line: 650, column: 53, scope: !2300)
!2308 = !DILocation(line: 650, column: 29, scope: !2301)
!2309 = distinct !{!2309, !2308, !2310}
!2310 = !DILocation(line: 659, column: 33, scope: !2301)
!2311 = !DILocation(line: 666, column: 19, scope: !2019)
!2312 = !DILocation(line: 662, column: 41, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2040, file: !147, line: 662, column: 29)
!2314 = !DILocation(line: 662, column: 31, scope: !2313)
!2315 = !DILocation(line: 662, column: 29, scope: !2040)
!2316 = !DILocation(line: 664, column: 27, scope: !2040)
!2317 = !DILocation(line: 667, column: 26, scope: !2019)
!2318 = !DILocation(line: 667, column: 24, scope: !2019)
!2319 = !DILocation(line: 666, column: 19, scope: !2034)
!2320 = !DILocation(line: 668, column: 15, scope: !2020)
!2321 = !DILocation(line: 670, column: 40, scope: !2015)
!2322 = !DILocation(line: 672, column: 19, scope: !2046)
!2323 = !DILocation(line: 672, column: 45, scope: !2046)
!2324 = !DILocation(line: 672, column: 23, scope: !2046)
!2325 = !DILocation(line: 676, column: 33, scope: !2045)
!2326 = !DILocation(line: 676, column: 24, scope: !2045)
!2327 = !DILocation(line: 678, column: 17, scope: !2045)
!2328 = !DILocation(line: 680, column: 43, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !147, line: 680, column: 25)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !147, line: 679, column: 19)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !147, line: 678, column: 17)
!2332 = distinct !DILexicalBlock(scope: !2045, file: !147, line: 678, column: 17)
!2333 = !DILocation(line: 682, column: 25, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !147, line: 682, column: 25)
!2335 = distinct !DILexicalBlock(scope: !2329, file: !147, line: 681, column: 23)
!2336 = !DILocation(line: 682, column: 25, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2334, file: !147, line: 682, column: 25)
!2338 = !DILocation(line: 682, column: 25, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !147, line: 682, column: 25)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !147, line: 682, column: 25)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !147, line: 682, column: 25)
!2342 = !DILocation(line: 682, column: 25, scope: !2340)
!2343 = !DILocation(line: 682, column: 25, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !147, line: 682, column: 25)
!2345 = distinct !DILexicalBlock(scope: !2341, file: !147, line: 682, column: 25)
!2346 = !DILocation(line: 682, column: 25, scope: !2345)
!2347 = !DILocation(line: 682, column: 25, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !147, line: 682, column: 25)
!2349 = distinct !DILexicalBlock(scope: !2341, file: !147, line: 682, column: 25)
!2350 = !DILocation(line: 682, column: 25, scope: !2349)
!2351 = !DILocation(line: 682, column: 25, scope: !2341)
!2352 = !DILocation(line: 682, column: 25, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !147, line: 682, column: 25)
!2354 = distinct !DILexicalBlock(scope: !2334, file: !147, line: 682, column: 25)
!2355 = !DILocation(line: 682, column: 25, scope: !2354)
!2356 = !DILocation(line: 683, column: 25, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !147, line: 683, column: 25)
!2358 = distinct !DILexicalBlock(scope: !2335, file: !147, line: 683, column: 25)
!2359 = !DILocation(line: 683, column: 25, scope: !2358)
!2360 = !DILocation(line: 684, column: 25, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !147, line: 684, column: 25)
!2362 = distinct !DILexicalBlock(scope: !2335, file: !147, line: 684, column: 25)
!2363 = !DILocation(line: 684, column: 25, scope: !2362)
!2364 = !DILocation(line: 685, column: 38, scope: !2335)
!2365 = !DILocation(line: 685, column: 33, scope: !2335)
!2366 = !DILocation(line: 686, column: 23, scope: !2335)
!2367 = !DILocation(line: 687, column: 30, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2329, file: !147, line: 687, column: 30)
!2369 = !DILocation(line: 687, column: 30, scope: !2329)
!2370 = !DILocation(line: 689, column: 25, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !147, line: 689, column: 25)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !147, line: 689, column: 25)
!2373 = distinct !DILexicalBlock(scope: !2368, file: !147, line: 688, column: 23)
!2374 = !DILocation(line: 689, column: 25, scope: !2372)
!2375 = !DILocation(line: 691, column: 23, scope: !2373)
!2376 = !DILocation(line: 692, column: 35, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2330, file: !147, line: 692, column: 25)
!2378 = !DILocation(line: 692, column: 30, scope: !2377)
!2379 = !DILocation(line: 692, column: 25, scope: !2330)
!2380 = !DILocation(line: 694, column: 21, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !147, line: 694, column: 21)
!2382 = distinct !DILexicalBlock(scope: !2330, file: !147, line: 694, column: 21)
!2383 = !DILocation(line: 694, column: 21, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !147, line: 694, column: 21)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !147, line: 694, column: 21)
!2386 = distinct !DILexicalBlock(scope: !2381, file: !147, line: 694, column: 21)
!2387 = !DILocation(line: 694, column: 21, scope: !2385)
!2388 = !DILocation(line: 694, column: 21, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !147, line: 694, column: 21)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !147, line: 694, column: 21)
!2391 = !DILocation(line: 694, column: 21, scope: !2390)
!2392 = !DILocation(line: 694, column: 21, scope: !2386)
!2393 = !DILocation(line: 695, column: 21, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !147, line: 695, column: 21)
!2395 = distinct !DILexicalBlock(scope: !2330, file: !147, line: 695, column: 21)
!2396 = !DILocation(line: 695, column: 21, scope: !2395)
!2397 = !DILocation(line: 696, column: 25, scope: !2330)
!2398 = !DILocation(line: 678, column: 17, scope: !2331)
!2399 = distinct !{!2399, !2400, !2401}
!2400 = !DILocation(line: 678, column: 17, scope: !2332)
!2401 = !DILocation(line: 697, column: 19, scope: !2332)
!2402 = !DILocation(line: 704, column: 34, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2007, file: !147, line: 704, column: 11)
!2404 = !DILocation(line: 706, column: 14, scope: !2403)
!2405 = !DILocation(line: 707, column: 14, scope: !2403)
!2406 = !DILocation(line: 707, column: 35, scope: !2403)
!2407 = !DILocation(line: 707, column: 17, scope: !2403)
!2408 = !DILocation(line: 707, column: 53, scope: !2403)
!2409 = !DILocation(line: 707, column: 47, scope: !2403)
!2410 = !DILocation(line: 707, column: 65, scope: !2403)
!2411 = !DILocation(line: 708, column: 15, scope: !2403)
!2412 = !DILocation(line: 708, column: 11, scope: !2403)
!2413 = !DILocation(line: 704, column: 11, scope: !2007)
!2414 = !DILocation(line: 712, column: 7, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2007, file: !147, line: 712, column: 7)
!2416 = !DILocation(line: 712, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2415, file: !147, line: 712, column: 7)
!2418 = !DILocation(line: 712, column: 7, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !147, line: 712, column: 7)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !147, line: 712, column: 7)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !147, line: 712, column: 7)
!2422 = !DILocation(line: 712, column: 7, scope: !2420)
!2423 = !DILocation(line: 712, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !147, line: 712, column: 7)
!2425 = distinct !DILexicalBlock(scope: !2421, file: !147, line: 712, column: 7)
!2426 = !DILocation(line: 712, column: 7, scope: !2425)
!2427 = !DILocation(line: 712, column: 7, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !147, line: 712, column: 7)
!2429 = distinct !DILexicalBlock(scope: !2421, file: !147, line: 712, column: 7)
!2430 = !DILocation(line: 712, column: 7, scope: !2429)
!2431 = !DILocation(line: 712, column: 7, scope: !2421)
!2432 = !DILocation(line: 712, column: 7, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !147, line: 712, column: 7)
!2434 = distinct !DILexicalBlock(scope: !2415, file: !147, line: 712, column: 7)
!2435 = !DILocation(line: 712, column: 7, scope: !2434)
!2436 = !DILocation(line: 715, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !147, line: 715, column: 7)
!2438 = distinct !DILexicalBlock(scope: !2007, file: !147, line: 715, column: 7)
!2439 = !DILocation(line: 715, column: 7, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !147, line: 715, column: 7)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !147, line: 715, column: 7)
!2442 = distinct !DILexicalBlock(scope: !2437, file: !147, line: 715, column: 7)
!2443 = !DILocation(line: 715, column: 7, scope: !2441)
!2444 = !DILocation(line: 715, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !147, line: 715, column: 7)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !147, line: 715, column: 7)
!2447 = !DILocation(line: 715, column: 7, scope: !2446)
!2448 = !DILocation(line: 715, column: 7, scope: !2442)
!2449 = !DILocation(line: 716, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !147, line: 716, column: 7)
!2451 = distinct !DILexicalBlock(scope: !2007, file: !147, line: 716, column: 7)
!2452 = !DILocation(line: 716, column: 7, scope: !2451)
!2453 = !DILocation(line: 718, column: 13, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2007, file: !147, line: 718, column: 11)
!2455 = !DILocation(line: 718, column: 11, scope: !2007)
!2456 = !DILocation(line: 720, column: 5, scope: !2008)
!2457 = !DILocation(line: 392, column: 75, scope: !2008)
!2458 = !DILocation(line: 392, column: 3, scope: !2008)
!2459 = distinct !{!2459, !2118, !2460}
!2460 = !DILocation(line: 720, column: 5, scope: !2009)
!2461 = !DILocation(line: 722, column: 11, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !1980, file: !147, line: 722, column: 7)
!2463 = !DILocation(line: 722, column: 16, scope: !2462)
!2464 = !DILocation(line: 730, column: 51, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !1980, file: !147, line: 730, column: 7)
!2466 = !DILocation(line: 731, column: 10, scope: !2465)
!2467 = !DILocation(line: 733, column: 11, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !147, line: 733, column: 11)
!2469 = distinct !DILexicalBlock(scope: !2465, file: !147, line: 732, column: 5)
!2470 = !DILocation(line: 733, column: 11, scope: !2469)
!2471 = !DILocation(line: 734, column: 16, scope: !2468)
!2472 = !DILocation(line: 734, column: 9, scope: !2468)
!2473 = !DILocation(line: 738, column: 18, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2468, file: !147, line: 738, column: 16)
!2475 = !DILocation(line: 738, column: 32, scope: !2474)
!2476 = !DILocation(line: 738, column: 29, scope: !2474)
!2477 = !DILocation(line: 747, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !1980, file: !147, line: 747, column: 7)
!2479 = !DILocation(line: 747, column: 20, scope: !2478)
!2480 = !DILocation(line: 748, column: 12, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !147, line: 748, column: 5)
!2482 = distinct !DILexicalBlock(scope: !2478, file: !147, line: 748, column: 5)
!2483 = !DILocation(line: 748, column: 5, scope: !2482)
!2484 = !DILocation(line: 749, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !147, line: 749, column: 7)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !147, line: 749, column: 7)
!2487 = !DILocation(line: 749, column: 7, scope: !2486)
!2488 = !DILocation(line: 748, column: 39, scope: !2481)
!2489 = distinct !{!2489, !2483, !2490}
!2490 = !DILocation(line: 749, column: 7, scope: !2482)
!2491 = !DILocation(line: 751, column: 11, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !1980, file: !147, line: 751, column: 7)
!2493 = !DILocation(line: 751, column: 7, scope: !1980)
!2494 = !DILocation(line: 752, column: 5, scope: !2492)
!2495 = !DILocation(line: 752, column: 17, scope: !2492)
!2496 = !DILocation(line: 758, column: 21, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !1980, file: !147, line: 758, column: 7)
!2498 = !DILocation(line: 758, column: 54, scope: !2497)
!2499 = !DILocation(line: 758, column: 51, scope: !2497)
!2500 = !DILocation(line: 762, column: 42, scope: !1980)
!2501 = !DILocation(line: 760, column: 10, scope: !1980)
!2502 = !DILocation(line: 760, column: 3, scope: !1980)
!2503 = !DILocation(line: 764, column: 1, scope: !1980)
!2504 = distinct !DISubprogram(name: "gettext_quote", scope: !147, file: !147, line: 199, type: !2505, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!40, !40, !5}
!2507 = !{!2508, !2509, !2510, !2511}
!2508 = !DILocalVariable(name: "msgid", arg: 1, scope: !2504, file: !147, line: 199, type: !40)
!2509 = !DILocalVariable(name: "s", arg: 2, scope: !2504, file: !147, line: 199, type: !5)
!2510 = !DILocalVariable(name: "translation", scope: !2504, file: !147, line: 201, type: !40)
!2511 = !DILocalVariable(name: "locale_code", scope: !2504, file: !147, line: 202, type: !40)
!2512 = !DILocation(line: 199, column: 28, scope: !2504)
!2513 = !DILocation(line: 199, column: 54, scope: !2504)
!2514 = !DILocation(line: 201, column: 29, scope: !2504)
!2515 = !DILocation(line: 201, column: 15, scope: !2504)
!2516 = !DILocation(line: 204, column: 19, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2504, file: !147, line: 204, column: 7)
!2518 = !DILocation(line: 204, column: 7, scope: !2504)
!2519 = !DILocation(line: 225, column: 17, scope: !2504)
!2520 = !DILocation(line: 202, column: 15, scope: !2504)
!2521 = !DILocalVariable(name: "s2", arg: 2, scope: !2522, file: !2523, line: 160, type: !40)
!2522 = distinct !DISubprogram(name: "strcaseeq0", scope: !2523, file: !2523, line: 160, type: !2524, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2526)
!2523 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!63, !40, !40, !30, !30, !30, !30, !30, !30, !30, !30, !30}
!2526 = !{!2527, !2521, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2527 = !DILocalVariable(name: "s1", arg: 1, scope: !2522, file: !2523, line: 160, type: !40)
!2528 = !DILocalVariable(name: "s20", arg: 3, scope: !2522, file: !2523, line: 160, type: !30)
!2529 = !DILocalVariable(name: "s21", arg: 4, scope: !2522, file: !2523, line: 160, type: !30)
!2530 = !DILocalVariable(name: "s22", arg: 5, scope: !2522, file: !2523, line: 160, type: !30)
!2531 = !DILocalVariable(name: "s23", arg: 6, scope: !2522, file: !2523, line: 160, type: !30)
!2532 = !DILocalVariable(name: "s24", arg: 7, scope: !2522, file: !2523, line: 160, type: !30)
!2533 = !DILocalVariable(name: "s25", arg: 8, scope: !2522, file: !2523, line: 160, type: !30)
!2534 = !DILocalVariable(name: "s26", arg: 9, scope: !2522, file: !2523, line: 160, type: !30)
!2535 = !DILocalVariable(name: "s27", arg: 10, scope: !2522, file: !2523, line: 160, type: !30)
!2536 = !DILocalVariable(name: "s28", arg: 11, scope: !2522, file: !2523, line: 160, type: !30)
!2537 = !DILocation(line: 160, column: 41, scope: !2522, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 226, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2504, file: !147, line: 226, column: 7)
!2540 = !DILocation(line: 160, column: 120, scope: !2522, inlinedAt: !2538)
!2541 = !DILocation(line: 160, column: 130, scope: !2522, inlinedAt: !2538)
!2542 = !DILocation(line: 162, column: 7, scope: !2543, inlinedAt: !2538)
!2543 = distinct !DILexicalBlock(scope: !2522, file: !2523, line: 162, column: 7)
!2544 = !DILocalVariable(name: "s2", arg: 2, scope: !2545, file: !2523, line: 146, type: !40)
!2545 = distinct !DISubprogram(name: "strcaseeq1", scope: !2523, file: !2523, line: 146, type: !2546, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!63, !40, !40, !30, !30, !30, !30, !30, !30, !30, !30}
!2548 = !{!2549, !2544, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557}
!2549 = !DILocalVariable(name: "s1", arg: 1, scope: !2545, file: !2523, line: 146, type: !40)
!2550 = !DILocalVariable(name: "s21", arg: 3, scope: !2545, file: !2523, line: 146, type: !30)
!2551 = !DILocalVariable(name: "s22", arg: 4, scope: !2545, file: !2523, line: 146, type: !30)
!2552 = !DILocalVariable(name: "s23", arg: 5, scope: !2545, file: !2523, line: 146, type: !30)
!2553 = !DILocalVariable(name: "s24", arg: 6, scope: !2545, file: !2523, line: 146, type: !30)
!2554 = !DILocalVariable(name: "s25", arg: 7, scope: !2545, file: !2523, line: 146, type: !30)
!2555 = !DILocalVariable(name: "s26", arg: 8, scope: !2545, file: !2523, line: 146, type: !30)
!2556 = !DILocalVariable(name: "s27", arg: 9, scope: !2545, file: !2523, line: 146, type: !30)
!2557 = !DILocalVariable(name: "s28", arg: 10, scope: !2545, file: !2523, line: 146, type: !30)
!2558 = !DILocation(line: 146, column: 41, scope: !2545, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 167, column: 16, scope: !2560, inlinedAt: !2538)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !2523, line: 164, column: 11)
!2561 = distinct !DILexicalBlock(scope: !2543, file: !2523, line: 163, column: 5)
!2562 = !DILocation(line: 146, column: 110, scope: !2545, inlinedAt: !2559)
!2563 = !DILocation(line: 146, column: 120, scope: !2545, inlinedAt: !2559)
!2564 = !DILocation(line: 148, column: 7, scope: !2565, inlinedAt: !2559)
!2565 = distinct !DILexicalBlock(scope: !2545, file: !2523, line: 148, column: 7)
!2566 = !DILocalVariable(name: "s2", arg: 2, scope: !2567, file: !2523, line: 132, type: !40)
!2567 = distinct !DISubprogram(name: "strcaseeq2", scope: !2523, file: !2523, line: 132, type: !2568, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2570)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!63, !40, !40, !30, !30, !30, !30, !30, !30, !30}
!2570 = !{!2571, !2566, !2572, !2573, !2574, !2575, !2576, !2577, !2578}
!2571 = !DILocalVariable(name: "s1", arg: 1, scope: !2567, file: !2523, line: 132, type: !40)
!2572 = !DILocalVariable(name: "s22", arg: 3, scope: !2567, file: !2523, line: 132, type: !30)
!2573 = !DILocalVariable(name: "s23", arg: 4, scope: !2567, file: !2523, line: 132, type: !30)
!2574 = !DILocalVariable(name: "s24", arg: 5, scope: !2567, file: !2523, line: 132, type: !30)
!2575 = !DILocalVariable(name: "s25", arg: 6, scope: !2567, file: !2523, line: 132, type: !30)
!2576 = !DILocalVariable(name: "s26", arg: 7, scope: !2567, file: !2523, line: 132, type: !30)
!2577 = !DILocalVariable(name: "s27", arg: 8, scope: !2567, file: !2523, line: 132, type: !30)
!2578 = !DILocalVariable(name: "s28", arg: 9, scope: !2567, file: !2523, line: 132, type: !30)
!2579 = !DILocation(line: 132, column: 41, scope: !2567, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 153, column: 16, scope: !2581, inlinedAt: !2559)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !2523, line: 150, column: 11)
!2582 = distinct !DILexicalBlock(scope: !2565, file: !2523, line: 149, column: 5)
!2583 = !DILocation(line: 132, column: 100, scope: !2567, inlinedAt: !2580)
!2584 = !DILocation(line: 132, column: 110, scope: !2567, inlinedAt: !2580)
!2585 = !DILocation(line: 134, column: 7, scope: !2586, inlinedAt: !2580)
!2586 = distinct !DILexicalBlock(scope: !2567, file: !2523, line: 134, column: 7)
!2587 = !DILocalVariable(name: "s2", arg: 2, scope: !2588, file: !2523, line: 118, type: !40)
!2588 = distinct !DISubprogram(name: "strcaseeq3", scope: !2523, file: !2523, line: 118, type: !2589, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!63, !40, !40, !30, !30, !30, !30, !30, !30}
!2591 = !{!2592, !2587, !2593, !2594, !2595, !2596, !2597, !2598}
!2592 = !DILocalVariable(name: "s1", arg: 1, scope: !2588, file: !2523, line: 118, type: !40)
!2593 = !DILocalVariable(name: "s23", arg: 3, scope: !2588, file: !2523, line: 118, type: !30)
!2594 = !DILocalVariable(name: "s24", arg: 4, scope: !2588, file: !2523, line: 118, type: !30)
!2595 = !DILocalVariable(name: "s25", arg: 5, scope: !2588, file: !2523, line: 118, type: !30)
!2596 = !DILocalVariable(name: "s26", arg: 6, scope: !2588, file: !2523, line: 118, type: !30)
!2597 = !DILocalVariable(name: "s27", arg: 7, scope: !2588, file: !2523, line: 118, type: !30)
!2598 = !DILocalVariable(name: "s28", arg: 8, scope: !2588, file: !2523, line: 118, type: !30)
!2599 = !DILocation(line: 118, column: 41, scope: !2588, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 139, column: 16, scope: !2601, inlinedAt: !2580)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !2523, line: 136, column: 11)
!2602 = distinct !DILexicalBlock(scope: !2586, file: !2523, line: 135, column: 5)
!2603 = !DILocation(line: 118, column: 90, scope: !2588, inlinedAt: !2600)
!2604 = !DILocation(line: 118, column: 100, scope: !2588, inlinedAt: !2600)
!2605 = !DILocation(line: 120, column: 7, scope: !2606, inlinedAt: !2600)
!2606 = distinct !DILexicalBlock(scope: !2588, file: !2523, line: 120, column: 7)
!2607 = !DILocation(line: 120, column: 7, scope: !2588, inlinedAt: !2600)
!2608 = !DILocalVariable(name: "s2", arg: 2, scope: !2609, file: !2523, line: 104, type: !40)
!2609 = distinct !DISubprogram(name: "strcaseeq4", scope: !2523, file: !2523, line: 104, type: !2610, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!63, !40, !40, !30, !30, !30, !30, !30}
!2612 = !{!2613, !2608, !2614, !2615, !2616, !2617, !2618}
!2613 = !DILocalVariable(name: "s1", arg: 1, scope: !2609, file: !2523, line: 104, type: !40)
!2614 = !DILocalVariable(name: "s24", arg: 3, scope: !2609, file: !2523, line: 104, type: !30)
!2615 = !DILocalVariable(name: "s25", arg: 4, scope: !2609, file: !2523, line: 104, type: !30)
!2616 = !DILocalVariable(name: "s26", arg: 5, scope: !2609, file: !2523, line: 104, type: !30)
!2617 = !DILocalVariable(name: "s27", arg: 6, scope: !2609, file: !2523, line: 104, type: !30)
!2618 = !DILocalVariable(name: "s28", arg: 7, scope: !2609, file: !2523, line: 104, type: !30)
!2619 = !DILocation(line: 104, column: 41, scope: !2609, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 125, column: 16, scope: !2621, inlinedAt: !2600)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !2523, line: 122, column: 11)
!2622 = distinct !DILexicalBlock(scope: !2606, file: !2523, line: 121, column: 5)
!2623 = !DILocation(line: 104, column: 80, scope: !2609, inlinedAt: !2620)
!2624 = !DILocation(line: 104, column: 90, scope: !2609, inlinedAt: !2620)
!2625 = !DILocation(line: 106, column: 7, scope: !2626, inlinedAt: !2620)
!2626 = distinct !DILexicalBlock(scope: !2609, file: !2523, line: 106, column: 7)
!2627 = !DILocation(line: 106, column: 7, scope: !2609, inlinedAt: !2620)
!2628 = !DILocalVariable(name: "s2", arg: 2, scope: !2629, file: !2523, line: 90, type: !40)
!2629 = distinct !DISubprogram(name: "strcaseeq5", scope: !2523, file: !2523, line: 90, type: !2630, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2632)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!63, !40, !40, !30, !30, !30, !30}
!2632 = !{!2633, !2628, !2634, !2635, !2636, !2637}
!2633 = !DILocalVariable(name: "s1", arg: 1, scope: !2629, file: !2523, line: 90, type: !40)
!2634 = !DILocalVariable(name: "s25", arg: 3, scope: !2629, file: !2523, line: 90, type: !30)
!2635 = !DILocalVariable(name: "s26", arg: 4, scope: !2629, file: !2523, line: 90, type: !30)
!2636 = !DILocalVariable(name: "s27", arg: 5, scope: !2629, file: !2523, line: 90, type: !30)
!2637 = !DILocalVariable(name: "s28", arg: 6, scope: !2629, file: !2523, line: 90, type: !30)
!2638 = !DILocation(line: 90, column: 41, scope: !2629, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 111, column: 16, scope: !2640, inlinedAt: !2620)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !2523, line: 108, column: 11)
!2641 = distinct !DILexicalBlock(scope: !2626, file: !2523, line: 107, column: 5)
!2642 = !DILocation(line: 90, column: 70, scope: !2629, inlinedAt: !2639)
!2643 = !DILocation(line: 90, column: 80, scope: !2629, inlinedAt: !2639)
!2644 = !DILocation(line: 92, column: 7, scope: !2645, inlinedAt: !2639)
!2645 = distinct !DILexicalBlock(scope: !2629, file: !2523, line: 92, column: 7)
!2646 = !DILocation(line: 92, column: 7, scope: !2629, inlinedAt: !2639)
!2647 = !DILocation(line: 227, column: 12, scope: !2539)
!2648 = !DILocation(line: 227, column: 21, scope: !2539)
!2649 = !DILocation(line: 227, column: 5, scope: !2539)
!2650 = !DILocation(line: 146, column: 41, scope: !2545, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 167, column: 16, scope: !2560, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 228, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2504, file: !147, line: 228, column: 7)
!2654 = !DILocation(line: 146, column: 110, scope: !2545, inlinedAt: !2651)
!2655 = !DILocation(line: 146, column: 120, scope: !2545, inlinedAt: !2651)
!2656 = !DILocation(line: 148, column: 7, scope: !2565, inlinedAt: !2651)
!2657 = !DILocation(line: 132, column: 41, scope: !2567, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 153, column: 16, scope: !2581, inlinedAt: !2651)
!2659 = !DILocation(line: 132, column: 100, scope: !2567, inlinedAt: !2658)
!2660 = !DILocation(line: 132, column: 110, scope: !2567, inlinedAt: !2658)
!2661 = !DILocation(line: 134, column: 7, scope: !2586, inlinedAt: !2658)
!2662 = !DILocation(line: 134, column: 7, scope: !2567, inlinedAt: !2658)
!2663 = !DILocation(line: 118, column: 41, scope: !2588, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 139, column: 16, scope: !2601, inlinedAt: !2658)
!2665 = !DILocation(line: 118, column: 90, scope: !2588, inlinedAt: !2664)
!2666 = !DILocation(line: 118, column: 100, scope: !2588, inlinedAt: !2664)
!2667 = !DILocation(line: 120, column: 7, scope: !2606, inlinedAt: !2664)
!2668 = !DILocation(line: 120, column: 7, scope: !2588, inlinedAt: !2664)
!2669 = !DILocation(line: 104, column: 41, scope: !2609, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 125, column: 16, scope: !2621, inlinedAt: !2664)
!2671 = !DILocation(line: 104, column: 80, scope: !2609, inlinedAt: !2670)
!2672 = !DILocation(line: 104, column: 90, scope: !2609, inlinedAt: !2670)
!2673 = !DILocation(line: 106, column: 7, scope: !2626, inlinedAt: !2670)
!2674 = !DILocation(line: 106, column: 7, scope: !2609, inlinedAt: !2670)
!2675 = !DILocation(line: 90, column: 41, scope: !2629, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 111, column: 16, scope: !2640, inlinedAt: !2670)
!2677 = !DILocation(line: 90, column: 70, scope: !2629, inlinedAt: !2676)
!2678 = !DILocation(line: 90, column: 80, scope: !2629, inlinedAt: !2676)
!2679 = !DILocation(line: 92, column: 7, scope: !2645, inlinedAt: !2676)
!2680 = !DILocation(line: 92, column: 7, scope: !2629, inlinedAt: !2676)
!2681 = !DILocalVariable(name: "s2", arg: 2, scope: !2682, file: !2523, line: 76, type: !40)
!2682 = distinct !DISubprogram(name: "strcaseeq6", scope: !2523, file: !2523, line: 76, type: !2683, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!63, !40, !40, !30, !30, !30}
!2685 = !{!2686, !2681, !2687, !2688, !2689}
!2686 = !DILocalVariable(name: "s1", arg: 1, scope: !2682, file: !2523, line: 76, type: !40)
!2687 = !DILocalVariable(name: "s26", arg: 3, scope: !2682, file: !2523, line: 76, type: !30)
!2688 = !DILocalVariable(name: "s27", arg: 4, scope: !2682, file: !2523, line: 76, type: !30)
!2689 = !DILocalVariable(name: "s28", arg: 5, scope: !2682, file: !2523, line: 76, type: !30)
!2690 = !DILocation(line: 76, column: 41, scope: !2682, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 97, column: 16, scope: !2692, inlinedAt: !2676)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !2523, line: 94, column: 11)
!2693 = distinct !DILexicalBlock(scope: !2645, file: !2523, line: 93, column: 5)
!2694 = !DILocation(line: 76, column: 60, scope: !2682, inlinedAt: !2691)
!2695 = !DILocation(line: 76, column: 70, scope: !2682, inlinedAt: !2691)
!2696 = !DILocation(line: 78, column: 7, scope: !2697, inlinedAt: !2691)
!2697 = distinct !DILexicalBlock(scope: !2682, file: !2523, line: 78, column: 7)
!2698 = !DILocation(line: 78, column: 7, scope: !2682, inlinedAt: !2691)
!2699 = !DILocalVariable(name: "s2", arg: 2, scope: !2700, file: !2523, line: 62, type: !40)
!2700 = distinct !DISubprogram(name: "strcaseeq7", scope: !2523, file: !2523, line: 62, type: !2701, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!63, !40, !40, !30, !30}
!2703 = !{!2704, !2699, !2705, !2706}
!2704 = !DILocalVariable(name: "s1", arg: 1, scope: !2700, file: !2523, line: 62, type: !40)
!2705 = !DILocalVariable(name: "s27", arg: 3, scope: !2700, file: !2523, line: 62, type: !30)
!2706 = !DILocalVariable(name: "s28", arg: 4, scope: !2700, file: !2523, line: 62, type: !30)
!2707 = !DILocation(line: 62, column: 41, scope: !2700, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 83, column: 16, scope: !2709, inlinedAt: !2691)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !2523, line: 80, column: 11)
!2710 = distinct !DILexicalBlock(scope: !2697, file: !2523, line: 79, column: 5)
!2711 = !DILocation(line: 62, column: 50, scope: !2700, inlinedAt: !2708)
!2712 = !DILocation(line: 62, column: 60, scope: !2700, inlinedAt: !2708)
!2713 = !DILocation(line: 64, column: 7, scope: !2714, inlinedAt: !2708)
!2714 = distinct !DILexicalBlock(scope: !2700, file: !2523, line: 64, column: 7)
!2715 = !DILocation(line: 228, column: 7, scope: !2504)
!2716 = !DILocation(line: 229, column: 12, scope: !2653)
!2717 = !DILocation(line: 229, column: 21, scope: !2653)
!2718 = !DILocation(line: 229, column: 5, scope: !2653)
!2719 = !DILocation(line: 231, column: 13, scope: !2504)
!2720 = !DILocation(line: 231, column: 11, scope: !2504)
!2721 = !DILocation(line: 231, column: 3, scope: !2504)
!2722 = !DILocation(line: 232, column: 1, scope: !2504)
!2723 = distinct !DISubprogram(name: "quotearg_alloc", scope: !147, file: !147, line: 791, type: !2724, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!29, !40, !141, !1852}
!2726 = !{!2727, !2728, !2729}
!2727 = !DILocalVariable(name: "arg", arg: 1, scope: !2723, file: !147, line: 791, type: !40)
!2728 = !DILocalVariable(name: "argsize", arg: 2, scope: !2723, file: !147, line: 791, type: !141)
!2729 = !DILocalVariable(name: "o", arg: 3, scope: !2723, file: !147, line: 792, type: !1852)
!2730 = !DILocation(line: 791, column: 29, scope: !2723)
!2731 = !DILocation(line: 791, column: 41, scope: !2723)
!2732 = !DILocation(line: 792, column: 47, scope: !2723)
!2733 = !DILocalVariable(name: "arg", arg: 1, scope: !2734, file: !147, line: 804, type: !40)
!2734 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !147, file: !147, line: 804, type: !2735, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2737)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!29, !40, !141, !561, !1852}
!2737 = !{!2733, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745}
!2738 = !DILocalVariable(name: "argsize", arg: 2, scope: !2734, file: !147, line: 804, type: !141)
!2739 = !DILocalVariable(name: "size", arg: 3, scope: !2734, file: !147, line: 804, type: !561)
!2740 = !DILocalVariable(name: "o", arg: 4, scope: !2734, file: !147, line: 805, type: !1852)
!2741 = !DILocalVariable(name: "p", scope: !2734, file: !147, line: 807, type: !1852)
!2742 = !DILocalVariable(name: "e", scope: !2734, file: !147, line: 808, type: !63)
!2743 = !DILocalVariable(name: "flags", scope: !2734, file: !147, line: 810, type: !63)
!2744 = !DILocalVariable(name: "bufsize", scope: !2734, file: !147, line: 811, type: !141)
!2745 = !DILocalVariable(name: "buf", scope: !2734, file: !147, line: 815, type: !29)
!2746 = !DILocation(line: 804, column: 33, scope: !2734, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 794, column: 10, scope: !2723)
!2748 = !DILocation(line: 804, column: 45, scope: !2734, inlinedAt: !2747)
!2749 = !DILocation(line: 804, column: 62, scope: !2734, inlinedAt: !2747)
!2750 = !DILocation(line: 805, column: 51, scope: !2734, inlinedAt: !2747)
!2751 = !DILocation(line: 807, column: 37, scope: !2734, inlinedAt: !2747)
!2752 = !DILocation(line: 807, column: 33, scope: !2734, inlinedAt: !2747)
!2753 = !DILocation(line: 808, column: 11, scope: !2734, inlinedAt: !2747)
!2754 = !DILocation(line: 808, column: 7, scope: !2734, inlinedAt: !2747)
!2755 = !DILocation(line: 810, column: 18, scope: !2734, inlinedAt: !2747)
!2756 = !DILocation(line: 810, column: 24, scope: !2734, inlinedAt: !2747)
!2757 = !DILocation(line: 810, column: 7, scope: !2734, inlinedAt: !2747)
!2758 = !DILocation(line: 811, column: 69, scope: !2734, inlinedAt: !2747)
!2759 = !DILocation(line: 812, column: 53, scope: !2734, inlinedAt: !2747)
!2760 = !DILocation(line: 813, column: 49, scope: !2734, inlinedAt: !2747)
!2761 = !DILocation(line: 814, column: 49, scope: !2734, inlinedAt: !2747)
!2762 = !DILocation(line: 811, column: 20, scope: !2734, inlinedAt: !2747)
!2763 = !DILocation(line: 814, column: 62, scope: !2734, inlinedAt: !2747)
!2764 = !DILocation(line: 811, column: 10, scope: !2734, inlinedAt: !2747)
!2765 = !DILocalVariable(name: "n", arg: 1, scope: !2766, file: !557, line: 220, type: !141)
!2766 = distinct !DISubprogram(name: "xcharalloc", scope: !557, file: !557, line: 220, type: !2767, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!29, !141}
!2769 = !{!2765}
!2770 = !DILocation(line: 220, column: 20, scope: !2766, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 815, column: 15, scope: !2734, inlinedAt: !2747)
!2772 = !DILocation(line: 222, column: 10, scope: !2766, inlinedAt: !2771)
!2773 = !DILocation(line: 815, column: 9, scope: !2734, inlinedAt: !2747)
!2774 = !DILocation(line: 816, column: 60, scope: !2734, inlinedAt: !2747)
!2775 = !DILocation(line: 818, column: 32, scope: !2734, inlinedAt: !2747)
!2776 = !DILocation(line: 818, column: 47, scope: !2734, inlinedAt: !2747)
!2777 = !DILocation(line: 816, column: 3, scope: !2734, inlinedAt: !2747)
!2778 = !DILocation(line: 819, column: 9, scope: !2734, inlinedAt: !2747)
!2779 = !DILocation(line: 794, column: 3, scope: !2723)
!2780 = !DILocation(line: 804, column: 33, scope: !2734)
!2781 = !DILocation(line: 804, column: 45, scope: !2734)
!2782 = !DILocation(line: 804, column: 62, scope: !2734)
!2783 = !DILocation(line: 805, column: 51, scope: !2734)
!2784 = !DILocation(line: 807, column: 37, scope: !2734)
!2785 = !DILocation(line: 807, column: 33, scope: !2734)
!2786 = !DILocation(line: 808, column: 11, scope: !2734)
!2787 = !DILocation(line: 808, column: 7, scope: !2734)
!2788 = !DILocation(line: 810, column: 18, scope: !2734)
!2789 = !DILocation(line: 810, column: 27, scope: !2734)
!2790 = !DILocation(line: 810, column: 24, scope: !2734)
!2791 = !DILocation(line: 810, column: 7, scope: !2734)
!2792 = !DILocation(line: 811, column: 69, scope: !2734)
!2793 = !DILocation(line: 812, column: 53, scope: !2734)
!2794 = !DILocation(line: 813, column: 49, scope: !2734)
!2795 = !DILocation(line: 814, column: 49, scope: !2734)
!2796 = !DILocation(line: 811, column: 20, scope: !2734)
!2797 = !DILocation(line: 814, column: 62, scope: !2734)
!2798 = !DILocation(line: 811, column: 10, scope: !2734)
!2799 = !DILocation(line: 220, column: 20, scope: !2766, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 815, column: 15, scope: !2734)
!2801 = !DILocation(line: 222, column: 10, scope: !2766, inlinedAt: !2800)
!2802 = !DILocation(line: 815, column: 9, scope: !2734)
!2803 = !DILocation(line: 816, column: 60, scope: !2734)
!2804 = !DILocation(line: 818, column: 32, scope: !2734)
!2805 = !DILocation(line: 818, column: 47, scope: !2734)
!2806 = !DILocation(line: 816, column: 3, scope: !2734)
!2807 = !DILocation(line: 819, column: 9, scope: !2734)
!2808 = !DILocation(line: 820, column: 7, scope: !2734)
!2809 = !DILocation(line: 821, column: 11, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2734, file: !147, line: 820, column: 7)
!2811 = !DILocation(line: 821, column: 5, scope: !2810)
!2812 = !DILocation(line: 822, column: 3, scope: !2734)
!2813 = distinct !DISubprogram(name: "quotearg_free", scope: !147, file: !147, line: 840, type: !628, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2814)
!2814 = !{!2815, !2816}
!2815 = !DILocalVariable(name: "sv", scope: !2813, file: !147, line: 842, type: !172)
!2816 = !DILocalVariable(name: "i", scope: !2813, file: !147, line: 843, type: !63)
!2817 = !DILocation(line: 842, column: 24, scope: !2813)
!2818 = !DILocation(line: 842, column: 19, scope: !2813)
!2819 = !DILocation(line: 843, column: 7, scope: !2813)
!2820 = !DILocation(line: 844, column: 19, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !147, line: 844, column: 3)
!2822 = distinct !DILexicalBlock(scope: !2813, file: !147, line: 844, column: 3)
!2823 = !DILocation(line: 844, column: 17, scope: !2821)
!2824 = !DILocation(line: 844, column: 3, scope: !2822)
!2825 = !DILocation(line: 845, column: 17, scope: !2821)
!2826 = !{!2827, !621, i64 8}
!2827 = !{!"slotvec", !867, i64 0, !621, i64 8}
!2828 = !DILocation(line: 845, column: 5, scope: !2821)
!2829 = !DILocation(line: 844, column: 28, scope: !2821)
!2830 = distinct !{!2830, !2824, !2831}
!2831 = !DILocation(line: 845, column: 20, scope: !2822)
!2832 = !DILocation(line: 846, column: 13, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2813, file: !147, line: 846, column: 7)
!2834 = !DILocation(line: 846, column: 17, scope: !2833)
!2835 = !DILocation(line: 846, column: 7, scope: !2813)
!2836 = !DILocation(line: 848, column: 7, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2833, file: !147, line: 847, column: 5)
!2838 = !DILocation(line: 849, column: 21, scope: !2837)
!2839 = !{!2827, !867, i64 0}
!2840 = !DILocation(line: 850, column: 20, scope: !2837)
!2841 = !DILocation(line: 851, column: 5, scope: !2837)
!2842 = !DILocation(line: 852, column: 10, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2813, file: !147, line: 852, column: 7)
!2844 = !DILocation(line: 852, column: 7, scope: !2813)
!2845 = !DILocation(line: 854, column: 13, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2843, file: !147, line: 853, column: 5)
!2847 = !DILocation(line: 854, column: 7, scope: !2846)
!2848 = !DILocation(line: 855, column: 15, scope: !2846)
!2849 = !DILocation(line: 856, column: 5, scope: !2846)
!2850 = !DILocation(line: 857, column: 10, scope: !2813)
!2851 = !DILocation(line: 858, column: 1, scope: !2813)
!2852 = distinct !DISubprogram(name: "quotearg_n", scope: !147, file: !147, line: 922, type: !2853, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!29, !63, !40}
!2855 = !{!2856, !2857}
!2856 = !DILocalVariable(name: "n", arg: 1, scope: !2852, file: !147, line: 922, type: !63)
!2857 = !DILocalVariable(name: "arg", arg: 2, scope: !2852, file: !147, line: 922, type: !40)
!2858 = !DILocation(line: 922, column: 17, scope: !2852)
!2859 = !DILocation(line: 922, column: 32, scope: !2852)
!2860 = !DILocation(line: 924, column: 10, scope: !2852)
!2861 = !DILocation(line: 924, column: 3, scope: !2852)
!2862 = distinct !DISubprogram(name: "quotearg_n_options", scope: !147, file: !147, line: 869, type: !2863, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!29, !63, !40, !141, !1852}
!2865 = !{!2866, !2867, !2868, !2869, !2870, !2871, !2872, !2875, !2877, !2878, !2879}
!2866 = !DILocalVariable(name: "n", arg: 1, scope: !2862, file: !147, line: 869, type: !63)
!2867 = !DILocalVariable(name: "arg", arg: 2, scope: !2862, file: !147, line: 869, type: !40)
!2868 = !DILocalVariable(name: "argsize", arg: 3, scope: !2862, file: !147, line: 869, type: !141)
!2869 = !DILocalVariable(name: "options", arg: 4, scope: !2862, file: !147, line: 870, type: !1852)
!2870 = !DILocalVariable(name: "e", scope: !2862, file: !147, line: 872, type: !63)
!2871 = !DILocalVariable(name: "sv", scope: !2862, file: !147, line: 874, type: !172)
!2872 = !DILocalVariable(name: "preallocated", scope: !2873, file: !147, line: 881, type: !100)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !147, line: 880, column: 5)
!2874 = distinct !DILexicalBlock(scope: !2862, file: !147, line: 879, column: 7)
!2875 = !DILocalVariable(name: "size", scope: !2876, file: !147, line: 894, type: !141)
!2876 = distinct !DILexicalBlock(scope: !2862, file: !147, line: 893, column: 3)
!2877 = !DILocalVariable(name: "val", scope: !2876, file: !147, line: 895, type: !29)
!2878 = !DILocalVariable(name: "flags", scope: !2876, file: !147, line: 897, type: !63)
!2879 = !DILocalVariable(name: "qsize", scope: !2876, file: !147, line: 898, type: !141)
!2880 = !DILocation(line: 869, column: 25, scope: !2862)
!2881 = !DILocation(line: 869, column: 40, scope: !2862)
!2882 = !DILocation(line: 869, column: 52, scope: !2862)
!2883 = !DILocation(line: 870, column: 51, scope: !2862)
!2884 = !DILocation(line: 872, column: 11, scope: !2862)
!2885 = !DILocation(line: 872, column: 7, scope: !2862)
!2886 = !DILocation(line: 874, column: 24, scope: !2862)
!2887 = !DILocation(line: 874, column: 19, scope: !2862)
!2888 = !DILocation(line: 876, column: 9, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2862, file: !147, line: 876, column: 7)
!2890 = !DILocation(line: 876, column: 7, scope: !2862)
!2891 = !DILocation(line: 877, column: 5, scope: !2889)
!2892 = !DILocation(line: 879, column: 7, scope: !2874)
!2893 = !DILocation(line: 879, column: 14, scope: !2874)
!2894 = !DILocation(line: 879, column: 7, scope: !2862)
!2895 = !DILocation(line: 881, column: 31, scope: !2873)
!2896 = !DILocation(line: 883, column: 67, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2873, file: !147, line: 883, column: 11)
!2898 = !DILocation(line: 883, column: 11, scope: !2873)
!2899 = !DILocation(line: 884, column: 9, scope: !2897)
!2900 = !DILocation(line: 886, column: 32, scope: !2873)
!2901 = !DILocation(line: 886, column: 61, scope: !2873)
!2902 = !DILocation(line: 886, column: 58, scope: !2873)
!2903 = !DILocation(line: 886, column: 66, scope: !2873)
!2904 = !DILocation(line: 886, column: 22, scope: !2873)
!2905 = !DILocation(line: 886, column: 15, scope: !2873)
!2906 = !DILocation(line: 887, column: 11, scope: !2873)
!2907 = !DILocation(line: 888, column: 15, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2873, file: !147, line: 887, column: 11)
!2909 = !{i64 0, i64 8, !866, i64 8, i64 8, !620}
!2910 = !DILocation(line: 888, column: 9, scope: !2908)
!2911 = !DILocation(line: 889, column: 20, scope: !2873)
!2912 = !DILocation(line: 889, column: 18, scope: !2873)
!2913 = !DILocation(line: 889, column: 7, scope: !2873)
!2914 = !DILocation(line: 889, column: 38, scope: !2873)
!2915 = !DILocation(line: 889, column: 31, scope: !2873)
!2916 = !DILocation(line: 889, column: 48, scope: !2873)
!2917 = !DILocation(line: 890, column: 14, scope: !2873)
!2918 = !DILocation(line: 891, column: 5, scope: !2873)
!2919 = !DILocation(line: 894, column: 19, scope: !2876)
!2920 = !DILocation(line: 894, column: 25, scope: !2876)
!2921 = !DILocation(line: 894, column: 12, scope: !2876)
!2922 = !DILocation(line: 895, column: 23, scope: !2876)
!2923 = !DILocation(line: 895, column: 11, scope: !2876)
!2924 = !DILocation(line: 897, column: 26, scope: !2876)
!2925 = !DILocation(line: 897, column: 32, scope: !2876)
!2926 = !DILocation(line: 897, column: 9, scope: !2876)
!2927 = !DILocation(line: 899, column: 55, scope: !2876)
!2928 = !DILocation(line: 900, column: 46, scope: !2876)
!2929 = !DILocation(line: 901, column: 55, scope: !2876)
!2930 = !DILocation(line: 902, column: 55, scope: !2876)
!2931 = !DILocation(line: 898, column: 20, scope: !2876)
!2932 = !DILocation(line: 898, column: 12, scope: !2876)
!2933 = !DILocation(line: 904, column: 14, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2876, file: !147, line: 904, column: 9)
!2935 = !DILocation(line: 904, column: 9, scope: !2876)
!2936 = !DILocation(line: 906, column: 35, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2934, file: !147, line: 905, column: 7)
!2938 = !DILocation(line: 906, column: 20, scope: !2937)
!2939 = !DILocation(line: 907, column: 17, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2937, file: !147, line: 907, column: 13)
!2941 = !DILocation(line: 907, column: 13, scope: !2937)
!2942 = !DILocation(line: 908, column: 11, scope: !2940)
!2943 = !DILocation(line: 220, column: 20, scope: !2766, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 909, column: 27, scope: !2937)
!2945 = !DILocation(line: 222, column: 10, scope: !2766, inlinedAt: !2944)
!2946 = !DILocation(line: 909, column: 19, scope: !2937)
!2947 = !DILocation(line: 910, column: 69, scope: !2937)
!2948 = !DILocation(line: 912, column: 44, scope: !2937)
!2949 = !DILocation(line: 913, column: 44, scope: !2937)
!2950 = !DILocation(line: 910, column: 9, scope: !2937)
!2951 = !DILocation(line: 914, column: 7, scope: !2937)
!2952 = !DILocation(line: 916, column: 11, scope: !2876)
!2953 = !DILocation(line: 917, column: 5, scope: !2876)
!2954 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !147, file: !147, line: 928, type: !2955, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!29, !63, !40, !141}
!2957 = !{!2958, !2959, !2960}
!2958 = !DILocalVariable(name: "n", arg: 1, scope: !2954, file: !147, line: 928, type: !63)
!2959 = !DILocalVariable(name: "arg", arg: 2, scope: !2954, file: !147, line: 928, type: !40)
!2960 = !DILocalVariable(name: "argsize", arg: 3, scope: !2954, file: !147, line: 928, type: !141)
!2961 = !DILocation(line: 928, column: 21, scope: !2954)
!2962 = !DILocation(line: 928, column: 36, scope: !2954)
!2963 = !DILocation(line: 928, column: 48, scope: !2954)
!2964 = !DILocation(line: 930, column: 10, scope: !2954)
!2965 = !DILocation(line: 930, column: 3, scope: !2954)
!2966 = distinct !DISubprogram(name: "quotearg", scope: !147, file: !147, line: 934, type: !2967, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!29, !40}
!2969 = !{!2970}
!2970 = !DILocalVariable(name: "arg", arg: 1, scope: !2966, file: !147, line: 934, type: !40)
!2971 = !DILocation(line: 934, column: 23, scope: !2966)
!2972 = !DILocation(line: 922, column: 17, scope: !2852, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 936, column: 10, scope: !2966)
!2974 = !DILocation(line: 922, column: 32, scope: !2852, inlinedAt: !2973)
!2975 = !DILocation(line: 924, column: 10, scope: !2852, inlinedAt: !2973)
!2976 = !DILocation(line: 936, column: 3, scope: !2966)
!2977 = distinct !DISubprogram(name: "quotearg_mem", scope: !147, file: !147, line: 940, type: !2978, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!29, !40, !141}
!2980 = !{!2981, !2982}
!2981 = !DILocalVariable(name: "arg", arg: 1, scope: !2977, file: !147, line: 940, type: !40)
!2982 = !DILocalVariable(name: "argsize", arg: 2, scope: !2977, file: !147, line: 940, type: !141)
!2983 = !DILocation(line: 940, column: 27, scope: !2977)
!2984 = !DILocation(line: 940, column: 39, scope: !2977)
!2985 = !DILocation(line: 928, column: 21, scope: !2954, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 942, column: 10, scope: !2977)
!2987 = !DILocation(line: 928, column: 36, scope: !2954, inlinedAt: !2986)
!2988 = !DILocation(line: 928, column: 48, scope: !2954, inlinedAt: !2986)
!2989 = !DILocation(line: 930, column: 10, scope: !2954, inlinedAt: !2986)
!2990 = !DILocation(line: 942, column: 3, scope: !2977)
!2991 = distinct !DISubprogram(name: "quotearg_n_style", scope: !147, file: !147, line: 946, type: !2992, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!29, !63, !5, !40}
!2994 = !{!2995, !2996, !2997, !2998}
!2995 = !DILocalVariable(name: "n", arg: 1, scope: !2991, file: !147, line: 946, type: !63)
!2996 = !DILocalVariable(name: "s", arg: 2, scope: !2991, file: !147, line: 946, type: !5)
!2997 = !DILocalVariable(name: "arg", arg: 3, scope: !2991, file: !147, line: 946, type: !40)
!2998 = !DILocalVariable(name: "o", scope: !2991, file: !147, line: 948, type: !1853)
!2999 = !DILocalVariable(name: "o", scope: !3000, file: !147, line: 187, type: !154)
!3000 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !147, file: !147, line: 185, type: !3001, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!154, !5}
!3003 = !{!3004, !2999}
!3004 = !DILocalVariable(name: "style", arg: 1, scope: !3000, file: !147, line: 185, type: !5)
!3005 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3006 = !DILocation(line: 187, column: 26, scope: !3000, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 948, column: 36, scope: !2991)
!3008 = !DILocation(line: 946, column: 23, scope: !2991)
!3009 = !DILocation(line: 946, column: 45, scope: !2991)
!3010 = !DILocation(line: 946, column: 60, scope: !2991)
!3011 = !DILocation(line: 948, column: 3, scope: !2991)
!3012 = !DILocation(line: 948, column: 32, scope: !2991)
!3013 = !DILocation(line: 185, column: 48, scope: !3000, inlinedAt: !3007)
!3014 = !DILocation(line: 187, column: 3, scope: !3000, inlinedAt: !3007)
!3015 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3016 = !DILocation(line: 188, column: 13, scope: !3017, inlinedAt: !3007)
!3017 = distinct !DILexicalBlock(scope: !3000, file: !147, line: 188, column: 7)
!3018 = !DILocation(line: 188, column: 7, scope: !3000, inlinedAt: !3007)
!3019 = !DILocation(line: 189, column: 5, scope: !3017, inlinedAt: !3007)
!3020 = !{!3021}
!3021 = distinct !{!3021, !3022, !"quoting_options_from_style: argument 0"}
!3022 = distinct !{!3022, !"quoting_options_from_style"}
!3023 = !DILocation(line: 191, column: 10, scope: !3000, inlinedAt: !3007)
!3024 = !DILocation(line: 192, column: 1, scope: !3000, inlinedAt: !3007)
!3025 = !DILocation(line: 949, column: 10, scope: !2991)
!3026 = !DILocation(line: 950, column: 1, scope: !2991)
!3027 = !DILocation(line: 949, column: 3, scope: !2991)
!3028 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !147, file: !147, line: 953, type: !3029, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!29, !63, !5, !40, !141}
!3031 = !{!3032, !3033, !3034, !3035, !3036}
!3032 = !DILocalVariable(name: "n", arg: 1, scope: !3028, file: !147, line: 953, type: !63)
!3033 = !DILocalVariable(name: "s", arg: 2, scope: !3028, file: !147, line: 953, type: !5)
!3034 = !DILocalVariable(name: "arg", arg: 3, scope: !3028, file: !147, line: 954, type: !40)
!3035 = !DILocalVariable(name: "argsize", arg: 4, scope: !3028, file: !147, line: 954, type: !141)
!3036 = !DILocalVariable(name: "o", scope: !3028, file: !147, line: 956, type: !1853)
!3037 = !DILocation(line: 187, column: 26, scope: !3000, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 956, column: 36, scope: !3028)
!3039 = !DILocation(line: 953, column: 27, scope: !3028)
!3040 = !DILocation(line: 953, column: 49, scope: !3028)
!3041 = !DILocation(line: 954, column: 35, scope: !3028)
!3042 = !DILocation(line: 954, column: 47, scope: !3028)
!3043 = !DILocation(line: 956, column: 3, scope: !3028)
!3044 = !DILocation(line: 956, column: 32, scope: !3028)
!3045 = !DILocation(line: 185, column: 48, scope: !3000, inlinedAt: !3038)
!3046 = !DILocation(line: 187, column: 3, scope: !3000, inlinedAt: !3038)
!3047 = !DILocation(line: 188, column: 13, scope: !3017, inlinedAt: !3038)
!3048 = !DILocation(line: 188, column: 7, scope: !3000, inlinedAt: !3038)
!3049 = !DILocation(line: 189, column: 5, scope: !3017, inlinedAt: !3038)
!3050 = !{!3051}
!3051 = distinct !{!3051, !3052, !"quoting_options_from_style: argument 0"}
!3052 = distinct !{!3052, !"quoting_options_from_style"}
!3053 = !DILocation(line: 191, column: 10, scope: !3000, inlinedAt: !3038)
!3054 = !DILocation(line: 192, column: 1, scope: !3000, inlinedAt: !3038)
!3055 = !DILocation(line: 957, column: 10, scope: !3028)
!3056 = !DILocation(line: 958, column: 1, scope: !3028)
!3057 = !DILocation(line: 957, column: 3, scope: !3028)
!3058 = distinct !DISubprogram(name: "quotearg_style", scope: !147, file: !147, line: 961, type: !3059, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!29, !5, !40}
!3061 = !{!3062, !3063}
!3062 = !DILocalVariable(name: "s", arg: 1, scope: !3058, file: !147, line: 961, type: !5)
!3063 = !DILocalVariable(name: "arg", arg: 2, scope: !3058, file: !147, line: 961, type: !40)
!3064 = !DILocation(line: 187, column: 26, scope: !3000, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 948, column: 36, scope: !2991, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 963, column: 10, scope: !3058)
!3067 = !DILocation(line: 961, column: 36, scope: !3058)
!3068 = !DILocation(line: 961, column: 51, scope: !3058)
!3069 = !DILocation(line: 946, column: 23, scope: !2991, inlinedAt: !3066)
!3070 = !DILocation(line: 946, column: 45, scope: !2991, inlinedAt: !3066)
!3071 = !DILocation(line: 946, column: 60, scope: !2991, inlinedAt: !3066)
!3072 = !DILocation(line: 948, column: 3, scope: !2991, inlinedAt: !3066)
!3073 = !DILocation(line: 948, column: 32, scope: !2991, inlinedAt: !3066)
!3074 = !DILocation(line: 185, column: 48, scope: !3000, inlinedAt: !3065)
!3075 = !DILocation(line: 187, column: 3, scope: !3000, inlinedAt: !3065)
!3076 = !DILocation(line: 188, column: 13, scope: !3017, inlinedAt: !3065)
!3077 = !DILocation(line: 188, column: 7, scope: !3000, inlinedAt: !3065)
!3078 = !DILocation(line: 189, column: 5, scope: !3017, inlinedAt: !3065)
!3079 = !{!3080}
!3080 = distinct !{!3080, !3081, !"quoting_options_from_style: argument 0"}
!3081 = distinct !{!3081, !"quoting_options_from_style"}
!3082 = !DILocation(line: 191, column: 10, scope: !3000, inlinedAt: !3065)
!3083 = !DILocation(line: 192, column: 1, scope: !3000, inlinedAt: !3065)
!3084 = !DILocation(line: 949, column: 10, scope: !2991, inlinedAt: !3066)
!3085 = !DILocation(line: 950, column: 1, scope: !2991, inlinedAt: !3066)
!3086 = !DILocation(line: 963, column: 3, scope: !3058)
!3087 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !147, file: !147, line: 967, type: !3088, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!29, !5, !40, !141}
!3090 = !{!3091, !3092, !3093}
!3091 = !DILocalVariable(name: "s", arg: 1, scope: !3087, file: !147, line: 967, type: !5)
!3092 = !DILocalVariable(name: "arg", arg: 2, scope: !3087, file: !147, line: 967, type: !40)
!3093 = !DILocalVariable(name: "argsize", arg: 3, scope: !3087, file: !147, line: 967, type: !141)
!3094 = !DILocation(line: 187, column: 26, scope: !3000, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 956, column: 36, scope: !3028, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 969, column: 10, scope: !3087)
!3097 = !DILocation(line: 967, column: 40, scope: !3087)
!3098 = !DILocation(line: 967, column: 55, scope: !3087)
!3099 = !DILocation(line: 967, column: 67, scope: !3087)
!3100 = !DILocation(line: 953, column: 27, scope: !3028, inlinedAt: !3096)
!3101 = !DILocation(line: 953, column: 49, scope: !3028, inlinedAt: !3096)
!3102 = !DILocation(line: 954, column: 35, scope: !3028, inlinedAt: !3096)
!3103 = !DILocation(line: 954, column: 47, scope: !3028, inlinedAt: !3096)
!3104 = !DILocation(line: 956, column: 3, scope: !3028, inlinedAt: !3096)
!3105 = !DILocation(line: 956, column: 32, scope: !3028, inlinedAt: !3096)
!3106 = !DILocation(line: 185, column: 48, scope: !3000, inlinedAt: !3095)
!3107 = !DILocation(line: 187, column: 3, scope: !3000, inlinedAt: !3095)
!3108 = !DILocation(line: 188, column: 13, scope: !3017, inlinedAt: !3095)
!3109 = !DILocation(line: 188, column: 7, scope: !3000, inlinedAt: !3095)
!3110 = !DILocation(line: 189, column: 5, scope: !3017, inlinedAt: !3095)
!3111 = !{!3112}
!3112 = distinct !{!3112, !3113, !"quoting_options_from_style: argument 0"}
!3113 = distinct !{!3113, !"quoting_options_from_style"}
!3114 = !DILocation(line: 191, column: 10, scope: !3000, inlinedAt: !3095)
!3115 = !DILocation(line: 192, column: 1, scope: !3000, inlinedAt: !3095)
!3116 = !DILocation(line: 957, column: 10, scope: !3028, inlinedAt: !3096)
!3117 = !DILocation(line: 958, column: 1, scope: !3028, inlinedAt: !3096)
!3118 = !DILocation(line: 969, column: 3, scope: !3087)
!3119 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !147, file: !147, line: 973, type: !3120, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!29, !40, !141, !30}
!3122 = !{!3123, !3124, !3125, !3126}
!3123 = !DILocalVariable(name: "arg", arg: 1, scope: !3119, file: !147, line: 973, type: !40)
!3124 = !DILocalVariable(name: "argsize", arg: 2, scope: !3119, file: !147, line: 973, type: !141)
!3125 = !DILocalVariable(name: "ch", arg: 3, scope: !3119, file: !147, line: 973, type: !30)
!3126 = !DILocalVariable(name: "options", scope: !3119, file: !147, line: 975, type: !154)
!3127 = !DILocation(line: 973, column: 32, scope: !3119)
!3128 = !DILocation(line: 973, column: 44, scope: !3119)
!3129 = !DILocation(line: 973, column: 58, scope: !3119)
!3130 = !DILocation(line: 975, column: 3, scope: !3119)
!3131 = !DILocation(line: 976, column: 13, scope: !3119)
!3132 = !{i64 0, i64 4, !877, i64 4, i64 4, !810, i64 8, i64 32, !877, i64 40, i64 8, !620, i64 48, i64 8, !620}
!3133 = !DILocation(line: 975, column: 26, scope: !3119)
!3134 = !DILocation(line: 144, column: 43, scope: !1874, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 977, column: 3, scope: !3119)
!3136 = !DILocation(line: 144, column: 51, scope: !1874, inlinedAt: !3135)
!3137 = !DILocation(line: 144, column: 58, scope: !1874, inlinedAt: !3135)
!3138 = !DILocation(line: 146, column: 17, scope: !1874, inlinedAt: !3135)
!3139 = !DILocation(line: 148, column: 62, scope: !1874, inlinedAt: !3135)
!3140 = !DILocation(line: 148, column: 57, scope: !1874, inlinedAt: !3135)
!3141 = !DILocation(line: 147, column: 17, scope: !1874, inlinedAt: !3135)
!3142 = !DILocation(line: 149, column: 18, scope: !1874, inlinedAt: !3135)
!3143 = !DILocation(line: 149, column: 15, scope: !1874, inlinedAt: !3135)
!3144 = !DILocation(line: 149, column: 7, scope: !1874, inlinedAt: !3135)
!3145 = !DILocation(line: 150, column: 12, scope: !1874, inlinedAt: !3135)
!3146 = !DILocation(line: 150, column: 15, scope: !1874, inlinedAt: !3135)
!3147 = !DILocation(line: 150, column: 25, scope: !1874, inlinedAt: !3135)
!3148 = !DILocation(line: 150, column: 7, scope: !1874, inlinedAt: !3135)
!3149 = !DILocation(line: 151, column: 18, scope: !1874, inlinedAt: !3135)
!3150 = !DILocation(line: 151, column: 23, scope: !1874, inlinedAt: !3135)
!3151 = !DILocation(line: 151, column: 6, scope: !1874, inlinedAt: !3135)
!3152 = !DILocation(line: 978, column: 10, scope: !3119)
!3153 = !DILocation(line: 979, column: 1, scope: !3119)
!3154 = !DILocation(line: 978, column: 3, scope: !3119)
!3155 = distinct !DISubprogram(name: "quotearg_char", scope: !147, file: !147, line: 982, type: !3156, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!29, !40, !30}
!3158 = !{!3159, !3160}
!3159 = !DILocalVariable(name: "arg", arg: 1, scope: !3155, file: !147, line: 982, type: !40)
!3160 = !DILocalVariable(name: "ch", arg: 2, scope: !3155, file: !147, line: 982, type: !30)
!3161 = !DILocation(line: 982, column: 28, scope: !3155)
!3162 = !DILocation(line: 982, column: 38, scope: !3155)
!3163 = !DILocation(line: 973, column: 32, scope: !3119, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 984, column: 10, scope: !3155)
!3165 = !DILocation(line: 973, column: 44, scope: !3119, inlinedAt: !3164)
!3166 = !DILocation(line: 973, column: 58, scope: !3119, inlinedAt: !3164)
!3167 = !DILocation(line: 975, column: 3, scope: !3119, inlinedAt: !3164)
!3168 = !DILocation(line: 976, column: 13, scope: !3119, inlinedAt: !3164)
!3169 = !DILocation(line: 975, column: 26, scope: !3119, inlinedAt: !3164)
!3170 = !DILocation(line: 144, column: 43, scope: !1874, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 977, column: 3, scope: !3119, inlinedAt: !3164)
!3172 = !DILocation(line: 144, column: 51, scope: !1874, inlinedAt: !3171)
!3173 = !DILocation(line: 144, column: 58, scope: !1874, inlinedAt: !3171)
!3174 = !DILocation(line: 146, column: 17, scope: !1874, inlinedAt: !3171)
!3175 = !DILocation(line: 148, column: 62, scope: !1874, inlinedAt: !3171)
!3176 = !DILocation(line: 148, column: 57, scope: !1874, inlinedAt: !3171)
!3177 = !DILocation(line: 147, column: 17, scope: !1874, inlinedAt: !3171)
!3178 = !DILocation(line: 149, column: 18, scope: !1874, inlinedAt: !3171)
!3179 = !DILocation(line: 149, column: 15, scope: !1874, inlinedAt: !3171)
!3180 = !DILocation(line: 149, column: 7, scope: !1874, inlinedAt: !3171)
!3181 = !DILocation(line: 150, column: 12, scope: !1874, inlinedAt: !3171)
!3182 = !DILocation(line: 150, column: 15, scope: !1874, inlinedAt: !3171)
!3183 = !DILocation(line: 150, column: 25, scope: !1874, inlinedAt: !3171)
!3184 = !DILocation(line: 150, column: 7, scope: !1874, inlinedAt: !3171)
!3185 = !DILocation(line: 151, column: 18, scope: !1874, inlinedAt: !3171)
!3186 = !DILocation(line: 151, column: 23, scope: !1874, inlinedAt: !3171)
!3187 = !DILocation(line: 151, column: 6, scope: !1874, inlinedAt: !3171)
!3188 = !DILocation(line: 978, column: 10, scope: !3119, inlinedAt: !3164)
!3189 = !DILocation(line: 979, column: 1, scope: !3119, inlinedAt: !3164)
!3190 = !DILocation(line: 984, column: 3, scope: !3155)
!3191 = distinct !DISubprogram(name: "quotearg_colon", scope: !147, file: !147, line: 988, type: !2967, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3192)
!3192 = !{!3193}
!3193 = !DILocalVariable(name: "arg", arg: 1, scope: !3191, file: !147, line: 988, type: !40)
!3194 = !DILocation(line: 988, column: 29, scope: !3191)
!3195 = !DILocation(line: 982, column: 28, scope: !3155, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 990, column: 10, scope: !3191)
!3197 = !DILocation(line: 982, column: 38, scope: !3155, inlinedAt: !3196)
!3198 = !DILocation(line: 973, column: 32, scope: !3119, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 984, column: 10, scope: !3155, inlinedAt: !3196)
!3200 = !DILocation(line: 973, column: 44, scope: !3119, inlinedAt: !3199)
!3201 = !DILocation(line: 973, column: 58, scope: !3119, inlinedAt: !3199)
!3202 = !DILocation(line: 975, column: 3, scope: !3119, inlinedAt: !3199)
!3203 = !DILocation(line: 976, column: 13, scope: !3119, inlinedAt: !3199)
!3204 = !DILocation(line: 975, column: 26, scope: !3119, inlinedAt: !3199)
!3205 = !DILocation(line: 144, column: 43, scope: !1874, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 977, column: 3, scope: !3119, inlinedAt: !3199)
!3207 = !DILocation(line: 144, column: 51, scope: !1874, inlinedAt: !3206)
!3208 = !DILocation(line: 144, column: 58, scope: !1874, inlinedAt: !3206)
!3209 = !DILocation(line: 146, column: 17, scope: !1874, inlinedAt: !3206)
!3210 = !DILocation(line: 148, column: 57, scope: !1874, inlinedAt: !3206)
!3211 = !DILocation(line: 147, column: 17, scope: !1874, inlinedAt: !3206)
!3212 = !DILocation(line: 149, column: 7, scope: !1874, inlinedAt: !3206)
!3213 = !DILocation(line: 150, column: 12, scope: !1874, inlinedAt: !3206)
!3214 = !DILocation(line: 151, column: 6, scope: !1874, inlinedAt: !3206)
!3215 = !DILocation(line: 978, column: 10, scope: !3119, inlinedAt: !3199)
!3216 = !DILocation(line: 979, column: 1, scope: !3119, inlinedAt: !3199)
!3217 = !DILocation(line: 990, column: 3, scope: !3191)
!3218 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !147, file: !147, line: 994, type: !2978, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3219)
!3219 = !{!3220, !3221}
!3220 = !DILocalVariable(name: "arg", arg: 1, scope: !3218, file: !147, line: 994, type: !40)
!3221 = !DILocalVariable(name: "argsize", arg: 2, scope: !3218, file: !147, line: 994, type: !141)
!3222 = !DILocation(line: 994, column: 33, scope: !3218)
!3223 = !DILocation(line: 994, column: 45, scope: !3218)
!3224 = !DILocation(line: 973, column: 32, scope: !3119, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 996, column: 10, scope: !3218)
!3226 = !DILocation(line: 973, column: 44, scope: !3119, inlinedAt: !3225)
!3227 = !DILocation(line: 973, column: 58, scope: !3119, inlinedAt: !3225)
!3228 = !DILocation(line: 975, column: 3, scope: !3119, inlinedAt: !3225)
!3229 = !DILocation(line: 976, column: 13, scope: !3119, inlinedAt: !3225)
!3230 = !DILocation(line: 975, column: 26, scope: !3119, inlinedAt: !3225)
!3231 = !DILocation(line: 144, column: 43, scope: !1874, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 977, column: 3, scope: !3119, inlinedAt: !3225)
!3233 = !DILocation(line: 144, column: 51, scope: !1874, inlinedAt: !3232)
!3234 = !DILocation(line: 144, column: 58, scope: !1874, inlinedAt: !3232)
!3235 = !DILocation(line: 146, column: 17, scope: !1874, inlinedAt: !3232)
!3236 = !DILocation(line: 148, column: 57, scope: !1874, inlinedAt: !3232)
!3237 = !DILocation(line: 147, column: 17, scope: !1874, inlinedAt: !3232)
!3238 = !DILocation(line: 149, column: 7, scope: !1874, inlinedAt: !3232)
!3239 = !DILocation(line: 150, column: 12, scope: !1874, inlinedAt: !3232)
!3240 = !DILocation(line: 151, column: 6, scope: !1874, inlinedAt: !3232)
!3241 = !DILocation(line: 978, column: 10, scope: !3119, inlinedAt: !3225)
!3242 = !DILocation(line: 979, column: 1, scope: !3119, inlinedAt: !3225)
!3243 = !DILocation(line: 996, column: 3, scope: !3218)
!3244 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !147, file: !147, line: 1000, type: !2992, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3245)
!3245 = !{!3246, !3247, !3248, !3249}
!3246 = !DILocalVariable(name: "n", arg: 1, scope: !3244, file: !147, line: 1000, type: !63)
!3247 = !DILocalVariable(name: "s", arg: 2, scope: !3244, file: !147, line: 1000, type: !5)
!3248 = !DILocalVariable(name: "arg", arg: 3, scope: !3244, file: !147, line: 1000, type: !40)
!3249 = !DILocalVariable(name: "options", scope: !3244, file: !147, line: 1002, type: !154)
!3250 = !DILocation(line: 187, column: 26, scope: !3000, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 1003, column: 13, scope: !3244)
!3252 = !DILocation(line: 1000, column: 29, scope: !3244)
!3253 = !DILocation(line: 1000, column: 51, scope: !3244)
!3254 = !DILocation(line: 1000, column: 66, scope: !3244)
!3255 = !DILocation(line: 1002, column: 3, scope: !3244)
!3256 = !DILocation(line: 185, column: 48, scope: !3000, inlinedAt: !3251)
!3257 = !DILocation(line: 187, column: 3, scope: !3000, inlinedAt: !3251)
!3258 = !DILocation(line: 188, column: 13, scope: !3017, inlinedAt: !3251)
!3259 = !DILocation(line: 188, column: 7, scope: !3000, inlinedAt: !3251)
!3260 = !DILocation(line: 189, column: 5, scope: !3017, inlinedAt: !3251)
!3261 = !{!3262}
!3262 = distinct !{!3262, !3263, !"quoting_options_from_style: argument 0"}
!3263 = distinct !{!3263, !"quoting_options_from_style"}
!3264 = !DILocation(line: 191, column: 10, scope: !3000, inlinedAt: !3251)
!3265 = !DILocation(line: 192, column: 1, scope: !3000, inlinedAt: !3251)
!3266 = !DILocation(line: 1003, column: 13, scope: !3244)
!3267 = !DILocation(line: 1002, column: 26, scope: !3244)
!3268 = !DILocation(line: 144, column: 43, scope: !1874, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 1004, column: 3, scope: !3244)
!3270 = !DILocation(line: 144, column: 51, scope: !1874, inlinedAt: !3269)
!3271 = !DILocation(line: 144, column: 58, scope: !1874, inlinedAt: !3269)
!3272 = !DILocation(line: 146, column: 17, scope: !1874, inlinedAt: !3269)
!3273 = !DILocation(line: 148, column: 57, scope: !1874, inlinedAt: !3269)
!3274 = !DILocation(line: 147, column: 17, scope: !1874, inlinedAt: !3269)
!3275 = !DILocation(line: 149, column: 7, scope: !1874, inlinedAt: !3269)
!3276 = !DILocation(line: 150, column: 12, scope: !1874, inlinedAt: !3269)
!3277 = !DILocation(line: 151, column: 6, scope: !1874, inlinedAt: !3269)
!3278 = !DILocation(line: 1005, column: 10, scope: !3244)
!3279 = !DILocation(line: 1006, column: 1, scope: !3244)
!3280 = !DILocation(line: 1005, column: 3, scope: !3244)
!3281 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !147, file: !147, line: 1009, type: !3282, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!29, !63, !40, !40, !40}
!3284 = !{!3285, !3286, !3287, !3288}
!3285 = !DILocalVariable(name: "n", arg: 1, scope: !3281, file: !147, line: 1009, type: !63)
!3286 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3281, file: !147, line: 1009, type: !40)
!3287 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3281, file: !147, line: 1010, type: !40)
!3288 = !DILocalVariable(name: "arg", arg: 4, scope: !3281, file: !147, line: 1010, type: !40)
!3289 = !DILocation(line: 1009, column: 24, scope: !3281)
!3290 = !DILocation(line: 1009, column: 39, scope: !3281)
!3291 = !DILocation(line: 1010, column: 32, scope: !3281)
!3292 = !DILocation(line: 1010, column: 57, scope: !3281)
!3293 = !DILocalVariable(name: "n", arg: 1, scope: !3294, file: !147, line: 1017, type: !63)
!3294 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !147, file: !147, line: 1017, type: !3295, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3297)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!29, !63, !40, !40, !40, !141}
!3297 = !{!3293, !3298, !3299, !3300, !3301, !3302}
!3298 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3294, file: !147, line: 1017, type: !40)
!3299 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3294, file: !147, line: 1018, type: !40)
!3300 = !DILocalVariable(name: "arg", arg: 4, scope: !3294, file: !147, line: 1019, type: !40)
!3301 = !DILocalVariable(name: "argsize", arg: 5, scope: !3294, file: !147, line: 1019, type: !141)
!3302 = !DILocalVariable(name: "o", scope: !3294, file: !147, line: 1021, type: !154)
!3303 = !DILocation(line: 1017, column: 28, scope: !3294, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 1012, column: 10, scope: !3281)
!3305 = !DILocation(line: 1017, column: 43, scope: !3294, inlinedAt: !3304)
!3306 = !DILocation(line: 1018, column: 36, scope: !3294, inlinedAt: !3304)
!3307 = !DILocation(line: 1019, column: 36, scope: !3294, inlinedAt: !3304)
!3308 = !DILocation(line: 1019, column: 48, scope: !3294, inlinedAt: !3304)
!3309 = !DILocation(line: 1021, column: 3, scope: !3294, inlinedAt: !3304)
!3310 = !DILocation(line: 1021, column: 30, scope: !3294, inlinedAt: !3304)
!3311 = !DILocation(line: 1021, column: 26, scope: !3294, inlinedAt: !3304)
!3312 = !DILocation(line: 171, column: 45, scope: !1923, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 1022, column: 3, scope: !3294, inlinedAt: !3304)
!3314 = !DILocation(line: 172, column: 33, scope: !1923, inlinedAt: !3313)
!3315 = !DILocation(line: 172, column: 57, scope: !1923, inlinedAt: !3313)
!3316 = !DILocation(line: 176, column: 6, scope: !1923, inlinedAt: !3313)
!3317 = !DILocation(line: 176, column: 12, scope: !1923, inlinedAt: !3313)
!3318 = !DILocation(line: 177, column: 8, scope: !1939, inlinedAt: !3313)
!3319 = !DILocation(line: 177, column: 23, scope: !1939, inlinedAt: !3313)
!3320 = !DILocation(line: 177, column: 19, scope: !1939, inlinedAt: !3313)
!3321 = !DILocation(line: 178, column: 5, scope: !1939, inlinedAt: !3313)
!3322 = !DILocation(line: 179, column: 6, scope: !1923, inlinedAt: !3313)
!3323 = !DILocation(line: 179, column: 17, scope: !1923, inlinedAt: !3313)
!3324 = !DILocation(line: 180, column: 6, scope: !1923, inlinedAt: !3313)
!3325 = !DILocation(line: 180, column: 18, scope: !1923, inlinedAt: !3313)
!3326 = !DILocation(line: 1023, column: 10, scope: !3294, inlinedAt: !3304)
!3327 = !DILocation(line: 1024, column: 1, scope: !3294, inlinedAt: !3304)
!3328 = !DILocation(line: 1012, column: 3, scope: !3281)
!3329 = !DILocation(line: 1017, column: 28, scope: !3294)
!3330 = !DILocation(line: 1017, column: 43, scope: !3294)
!3331 = !DILocation(line: 1018, column: 36, scope: !3294)
!3332 = !DILocation(line: 1019, column: 36, scope: !3294)
!3333 = !DILocation(line: 1019, column: 48, scope: !3294)
!3334 = !DILocation(line: 1021, column: 3, scope: !3294)
!3335 = !DILocation(line: 1021, column: 30, scope: !3294)
!3336 = !DILocation(line: 1021, column: 26, scope: !3294)
!3337 = !DILocation(line: 171, column: 45, scope: !1923, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 1022, column: 3, scope: !3294)
!3339 = !DILocation(line: 172, column: 33, scope: !1923, inlinedAt: !3338)
!3340 = !DILocation(line: 172, column: 57, scope: !1923, inlinedAt: !3338)
!3341 = !DILocation(line: 176, column: 6, scope: !1923, inlinedAt: !3338)
!3342 = !DILocation(line: 176, column: 12, scope: !1923, inlinedAt: !3338)
!3343 = !DILocation(line: 177, column: 8, scope: !1939, inlinedAt: !3338)
!3344 = !DILocation(line: 177, column: 23, scope: !1939, inlinedAt: !3338)
!3345 = !DILocation(line: 177, column: 19, scope: !1939, inlinedAt: !3338)
!3346 = !DILocation(line: 178, column: 5, scope: !1939, inlinedAt: !3338)
!3347 = !DILocation(line: 179, column: 6, scope: !1923, inlinedAt: !3338)
!3348 = !DILocation(line: 179, column: 17, scope: !1923, inlinedAt: !3338)
!3349 = !DILocation(line: 180, column: 6, scope: !1923, inlinedAt: !3338)
!3350 = !DILocation(line: 180, column: 18, scope: !1923, inlinedAt: !3338)
!3351 = !DILocation(line: 1023, column: 10, scope: !3294)
!3352 = !DILocation(line: 1024, column: 1, scope: !3294)
!3353 = !DILocation(line: 1023, column: 3, scope: !3294)
!3354 = distinct !DISubprogram(name: "quotearg_custom", scope: !147, file: !147, line: 1027, type: !3355, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3357)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!29, !40, !40, !40}
!3357 = !{!3358, !3359, !3360}
!3358 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3354, file: !147, line: 1027, type: !40)
!3359 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3354, file: !147, line: 1027, type: !40)
!3360 = !DILocalVariable(name: "arg", arg: 3, scope: !3354, file: !147, line: 1028, type: !40)
!3361 = !DILocation(line: 1027, column: 30, scope: !3354)
!3362 = !DILocation(line: 1027, column: 54, scope: !3354)
!3363 = !DILocation(line: 1028, column: 30, scope: !3354)
!3364 = !DILocation(line: 1009, column: 24, scope: !3281, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 1030, column: 10, scope: !3354)
!3366 = !DILocation(line: 1009, column: 39, scope: !3281, inlinedAt: !3365)
!3367 = !DILocation(line: 1010, column: 32, scope: !3281, inlinedAt: !3365)
!3368 = !DILocation(line: 1010, column: 57, scope: !3281, inlinedAt: !3365)
!3369 = !DILocation(line: 1017, column: 28, scope: !3294, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 1012, column: 10, scope: !3281, inlinedAt: !3365)
!3371 = !DILocation(line: 1017, column: 43, scope: !3294, inlinedAt: !3370)
!3372 = !DILocation(line: 1018, column: 36, scope: !3294, inlinedAt: !3370)
!3373 = !DILocation(line: 1019, column: 36, scope: !3294, inlinedAt: !3370)
!3374 = !DILocation(line: 1019, column: 48, scope: !3294, inlinedAt: !3370)
!3375 = !DILocation(line: 1021, column: 3, scope: !3294, inlinedAt: !3370)
!3376 = !DILocation(line: 1021, column: 30, scope: !3294, inlinedAt: !3370)
!3377 = !DILocation(line: 1021, column: 26, scope: !3294, inlinedAt: !3370)
!3378 = !DILocation(line: 171, column: 45, scope: !1923, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 1022, column: 3, scope: !3294, inlinedAt: !3370)
!3380 = !DILocation(line: 172, column: 33, scope: !1923, inlinedAt: !3379)
!3381 = !DILocation(line: 172, column: 57, scope: !1923, inlinedAt: !3379)
!3382 = !DILocation(line: 176, column: 6, scope: !1923, inlinedAt: !3379)
!3383 = !DILocation(line: 176, column: 12, scope: !1923, inlinedAt: !3379)
!3384 = !DILocation(line: 177, column: 8, scope: !1939, inlinedAt: !3379)
!3385 = !DILocation(line: 177, column: 23, scope: !1939, inlinedAt: !3379)
!3386 = !DILocation(line: 177, column: 19, scope: !1939, inlinedAt: !3379)
!3387 = !DILocation(line: 178, column: 5, scope: !1939, inlinedAt: !3379)
!3388 = !DILocation(line: 179, column: 6, scope: !1923, inlinedAt: !3379)
!3389 = !DILocation(line: 179, column: 17, scope: !1923, inlinedAt: !3379)
!3390 = !DILocation(line: 180, column: 6, scope: !1923, inlinedAt: !3379)
!3391 = !DILocation(line: 180, column: 18, scope: !1923, inlinedAt: !3379)
!3392 = !DILocation(line: 1023, column: 10, scope: !3294, inlinedAt: !3370)
!3393 = !DILocation(line: 1024, column: 1, scope: !3294, inlinedAt: !3370)
!3394 = !DILocation(line: 1030, column: 3, scope: !3354)
!3395 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !147, file: !147, line: 1034, type: !3396, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!29, !40, !40, !40, !141}
!3398 = !{!3399, !3400, !3401, !3402}
!3399 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3395, file: !147, line: 1034, type: !40)
!3400 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3395, file: !147, line: 1034, type: !40)
!3401 = !DILocalVariable(name: "arg", arg: 3, scope: !3395, file: !147, line: 1035, type: !40)
!3402 = !DILocalVariable(name: "argsize", arg: 4, scope: !3395, file: !147, line: 1035, type: !141)
!3403 = !DILocation(line: 1034, column: 34, scope: !3395)
!3404 = !DILocation(line: 1034, column: 58, scope: !3395)
!3405 = !DILocation(line: 1035, column: 34, scope: !3395)
!3406 = !DILocation(line: 1035, column: 46, scope: !3395)
!3407 = !DILocation(line: 1017, column: 28, scope: !3294, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 1037, column: 10, scope: !3395)
!3409 = !DILocation(line: 1017, column: 43, scope: !3294, inlinedAt: !3408)
!3410 = !DILocation(line: 1018, column: 36, scope: !3294, inlinedAt: !3408)
!3411 = !DILocation(line: 1019, column: 36, scope: !3294, inlinedAt: !3408)
!3412 = !DILocation(line: 1019, column: 48, scope: !3294, inlinedAt: !3408)
!3413 = !DILocation(line: 1021, column: 3, scope: !3294, inlinedAt: !3408)
!3414 = !DILocation(line: 1021, column: 30, scope: !3294, inlinedAt: !3408)
!3415 = !DILocation(line: 1021, column: 26, scope: !3294, inlinedAt: !3408)
!3416 = !DILocation(line: 171, column: 45, scope: !1923, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 1022, column: 3, scope: !3294, inlinedAt: !3408)
!3418 = !DILocation(line: 172, column: 33, scope: !1923, inlinedAt: !3417)
!3419 = !DILocation(line: 172, column: 57, scope: !1923, inlinedAt: !3417)
!3420 = !DILocation(line: 176, column: 6, scope: !1923, inlinedAt: !3417)
!3421 = !DILocation(line: 176, column: 12, scope: !1923, inlinedAt: !3417)
!3422 = !DILocation(line: 177, column: 8, scope: !1939, inlinedAt: !3417)
!3423 = !DILocation(line: 177, column: 23, scope: !1939, inlinedAt: !3417)
!3424 = !DILocation(line: 177, column: 19, scope: !1939, inlinedAt: !3417)
!3425 = !DILocation(line: 178, column: 5, scope: !1939, inlinedAt: !3417)
!3426 = !DILocation(line: 179, column: 6, scope: !1923, inlinedAt: !3417)
!3427 = !DILocation(line: 179, column: 17, scope: !1923, inlinedAt: !3417)
!3428 = !DILocation(line: 180, column: 6, scope: !1923, inlinedAt: !3417)
!3429 = !DILocation(line: 180, column: 18, scope: !1923, inlinedAt: !3417)
!3430 = !DILocation(line: 1023, column: 10, scope: !3294, inlinedAt: !3408)
!3431 = !DILocation(line: 1024, column: 1, scope: !3294, inlinedAt: !3408)
!3432 = !DILocation(line: 1037, column: 3, scope: !3395)
!3433 = distinct !DISubprogram(name: "quote_n_mem", scope: !147, file: !147, line: 1052, type: !3434, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3436)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!40, !63, !40, !141}
!3436 = !{!3437, !3438, !3439}
!3437 = !DILocalVariable(name: "n", arg: 1, scope: !3433, file: !147, line: 1052, type: !63)
!3438 = !DILocalVariable(name: "arg", arg: 2, scope: !3433, file: !147, line: 1052, type: !40)
!3439 = !DILocalVariable(name: "argsize", arg: 3, scope: !3433, file: !147, line: 1052, type: !141)
!3440 = !DILocation(line: 1052, column: 18, scope: !3433)
!3441 = !DILocation(line: 1052, column: 33, scope: !3433)
!3442 = !DILocation(line: 1052, column: 45, scope: !3433)
!3443 = !DILocation(line: 1054, column: 10, scope: !3433)
!3444 = !DILocation(line: 1054, column: 3, scope: !3433)
!3445 = distinct !DISubprogram(name: "quote_mem", scope: !147, file: !147, line: 1058, type: !3446, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!40, !40, !141}
!3448 = !{!3449, !3450}
!3449 = !DILocalVariable(name: "arg", arg: 1, scope: !3445, file: !147, line: 1058, type: !40)
!3450 = !DILocalVariable(name: "argsize", arg: 2, scope: !3445, file: !147, line: 1058, type: !141)
!3451 = !DILocation(line: 1058, column: 24, scope: !3445)
!3452 = !DILocation(line: 1058, column: 36, scope: !3445)
!3453 = !DILocation(line: 1052, column: 18, scope: !3433, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 1060, column: 10, scope: !3445)
!3455 = !DILocation(line: 1052, column: 33, scope: !3433, inlinedAt: !3454)
!3456 = !DILocation(line: 1052, column: 45, scope: !3433, inlinedAt: !3454)
!3457 = !DILocation(line: 1054, column: 10, scope: !3433, inlinedAt: !3454)
!3458 = !DILocation(line: 1060, column: 3, scope: !3445)
!3459 = distinct !DISubprogram(name: "quote_n", scope: !147, file: !147, line: 1064, type: !3460, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!40, !63, !40}
!3462 = !{!3463, !3464}
!3463 = !DILocalVariable(name: "n", arg: 1, scope: !3459, file: !147, line: 1064, type: !63)
!3464 = !DILocalVariable(name: "arg", arg: 2, scope: !3459, file: !147, line: 1064, type: !40)
!3465 = !DILocation(line: 1064, column: 14, scope: !3459)
!3466 = !DILocation(line: 1064, column: 29, scope: !3459)
!3467 = !DILocation(line: 1052, column: 18, scope: !3433, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 1066, column: 10, scope: !3459)
!3469 = !DILocation(line: 1052, column: 33, scope: !3433, inlinedAt: !3468)
!3470 = !DILocation(line: 1052, column: 45, scope: !3433, inlinedAt: !3468)
!3471 = !DILocation(line: 1054, column: 10, scope: !3433, inlinedAt: !3468)
!3472 = !DILocation(line: 1066, column: 3, scope: !3459)
!3473 = distinct !DISubprogram(name: "quote", scope: !147, file: !147, line: 1070, type: !3474, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !116, variables: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!40, !40}
!3476 = !{!3477}
!3477 = !DILocalVariable(name: "arg", arg: 1, scope: !3473, file: !147, line: 1070, type: !40)
!3478 = !DILocation(line: 1070, column: 20, scope: !3473)
!3479 = !DILocation(line: 1064, column: 14, scope: !3459, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 1072, column: 10, scope: !3473)
!3481 = !DILocation(line: 1064, column: 29, scope: !3459, inlinedAt: !3480)
!3482 = !DILocation(line: 1052, column: 18, scope: !3433, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 1066, column: 10, scope: !3459, inlinedAt: !3480)
!3484 = !DILocation(line: 1052, column: 33, scope: !3433, inlinedAt: !3483)
!3485 = !DILocation(line: 1052, column: 45, scope: !3433, inlinedAt: !3483)
!3486 = !DILocation(line: 1054, column: 10, scope: !3433, inlinedAt: !3483)
!3487 = !DILocation(line: 1072, column: 3, scope: !3473)
!3488 = distinct !DISubprogram(name: "version_etc_arn", scope: !549, file: !549, line: 62, type: !3489, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3532)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !3491, !40, !40, !40, !3531, !141}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !665, line: 7, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 241, size: 1728, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3493, file: !667, line: 242, baseType: !63, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3493, file: !667, line: 247, baseType: !29, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3493, file: !667, line: 248, baseType: !29, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3493, file: !667, line: 249, baseType: !29, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3493, file: !667, line: 250, baseType: !29, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3493, file: !667, line: 251, baseType: !29, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3493, file: !667, line: 252, baseType: !29, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3493, file: !667, line: 253, baseType: !29, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3493, file: !667, line: 254, baseType: !29, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3493, file: !667, line: 256, baseType: !29, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3493, file: !667, line: 257, baseType: !29, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3493, file: !667, line: 258, baseType: !29, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3493, file: !667, line: 260, baseType: !3508, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !667, line: 156, size: 192, elements: !3510)
!3510 = !{!3511, !3512, !3514}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3509, file: !667, line: 157, baseType: !3508, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3509, file: !667, line: 158, baseType: !3513, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3509, file: !667, line: 162, baseType: !63, size: 32, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3493, file: !667, line: 262, baseType: !3513, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3493, file: !667, line: 264, baseType: !63, size: 32, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3493, file: !667, line: 268, baseType: !63, size: 32, offset: 928)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3493, file: !667, line: 270, baseType: !693, size: 64, offset: 960)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3493, file: !667, line: 274, baseType: !140, size: 16, offset: 1024)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3493, file: !667, line: 275, baseType: !86, size: 8, offset: 1040)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3493, file: !667, line: 276, baseType: !699, size: 8, offset: 1048)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3493, file: !667, line: 280, baseType: !703, size: 64, offset: 1088)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3493, file: !667, line: 289, baseType: !706, size: 64, offset: 1152)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3493, file: !667, line: 297, baseType: !31, size: 64, offset: 1216)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3493, file: !667, line: 298, baseType: !31, size: 64, offset: 1280)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3493, file: !667, line: 299, baseType: !31, size: 64, offset: 1344)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3493, file: !667, line: 300, baseType: !31, size: 64, offset: 1408)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3493, file: !667, line: 302, baseType: !141, size: 64, offset: 1472)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3493, file: !667, line: 303, baseType: !63, size: 32, offset: 1536)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3493, file: !667, line: 305, baseType: !714, size: 160, offset: 1568)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538}
!3533 = !DILocalVariable(name: "stream", arg: 1, scope: !3488, file: !549, line: 62, type: !3491)
!3534 = !DILocalVariable(name: "command_name", arg: 2, scope: !3488, file: !549, line: 63, type: !40)
!3535 = !DILocalVariable(name: "package", arg: 3, scope: !3488, file: !549, line: 63, type: !40)
!3536 = !DILocalVariable(name: "version", arg: 4, scope: !3488, file: !549, line: 64, type: !40)
!3537 = !DILocalVariable(name: "authors", arg: 5, scope: !3488, file: !549, line: 65, type: !3531)
!3538 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3488, file: !549, line: 65, type: !141)
!3539 = !DILocation(line: 62, column: 24, scope: !3488)
!3540 = !DILocation(line: 63, column: 30, scope: !3488)
!3541 = !DILocation(line: 63, column: 56, scope: !3488)
!3542 = !DILocation(line: 64, column: 30, scope: !3488)
!3543 = !DILocation(line: 65, column: 39, scope: !3488)
!3544 = !DILocation(line: 65, column: 55, scope: !3488)
!3545 = !DILocation(line: 67, column: 7, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3488, file: !549, line: 67, column: 7)
!3547 = !DILocation(line: 67, column: 7, scope: !3488)
!3548 = !DILocation(line: 68, column: 5, scope: !3546)
!3549 = !DILocation(line: 70, column: 5, scope: !3546)
!3550 = !DILocation(line: 84, column: 3, scope: !3488)
!3551 = !DILocation(line: 86, column: 3, scope: !3488)
!3552 = !DILocation(line: 95, column: 3, scope: !3488)
!3553 = !DILocation(line: 99, column: 7, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3488, file: !549, line: 96, column: 5)
!3555 = !DILocation(line: 102, column: 7, scope: !3554)
!3556 = !DILocation(line: 103, column: 7, scope: !3554)
!3557 = !DILocation(line: 106, column: 7, scope: !3554)
!3558 = !DILocation(line: 107, column: 7, scope: !3554)
!3559 = !DILocation(line: 110, column: 7, scope: !3554)
!3560 = !DILocation(line: 112, column: 7, scope: !3554)
!3561 = !DILocation(line: 117, column: 7, scope: !3554)
!3562 = !DILocation(line: 119, column: 7, scope: !3554)
!3563 = !DILocation(line: 124, column: 7, scope: !3554)
!3564 = !DILocation(line: 126, column: 7, scope: !3554)
!3565 = !DILocation(line: 131, column: 7, scope: !3554)
!3566 = !DILocation(line: 134, column: 7, scope: !3554)
!3567 = !DILocation(line: 139, column: 7, scope: !3554)
!3568 = !DILocation(line: 142, column: 7, scope: !3554)
!3569 = !DILocation(line: 147, column: 7, scope: !3554)
!3570 = !DILocation(line: 151, column: 7, scope: !3554)
!3571 = !DILocation(line: 156, column: 7, scope: !3554)
!3572 = !DILocation(line: 160, column: 7, scope: !3554)
!3573 = !DILocation(line: 167, column: 7, scope: !3554)
!3574 = !DILocation(line: 171, column: 7, scope: !3554)
!3575 = !DILocation(line: 173, column: 1, scope: !3488)
!3576 = distinct !DISubprogram(name: "version_etc_ar", scope: !549, file: !549, line: 180, type: !3577, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3579)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{null, !3491, !40, !40, !40, !3531}
!3579 = !{!3580, !3581, !3582, !3583, !3584, !3585}
!3580 = !DILocalVariable(name: "stream", arg: 1, scope: !3576, file: !549, line: 180, type: !3491)
!3581 = !DILocalVariable(name: "command_name", arg: 2, scope: !3576, file: !549, line: 181, type: !40)
!3582 = !DILocalVariable(name: "package", arg: 3, scope: !3576, file: !549, line: 181, type: !40)
!3583 = !DILocalVariable(name: "version", arg: 4, scope: !3576, file: !549, line: 182, type: !40)
!3584 = !DILocalVariable(name: "authors", arg: 5, scope: !3576, file: !549, line: 182, type: !3531)
!3585 = !DILocalVariable(name: "n_authors", scope: !3576, file: !549, line: 184, type: !141)
!3586 = !DILocation(line: 180, column: 23, scope: !3576)
!3587 = !DILocation(line: 181, column: 29, scope: !3576)
!3588 = !DILocation(line: 181, column: 55, scope: !3576)
!3589 = !DILocation(line: 182, column: 29, scope: !3576)
!3590 = !DILocation(line: 182, column: 59, scope: !3576)
!3591 = !DILocation(line: 184, column: 10, scope: !3576)
!3592 = !DILocation(line: 186, column: 8, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3576, file: !549, line: 186, column: 3)
!3594 = !DILocation(line: 186, column: 23, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3593, file: !549, line: 186, column: 3)
!3596 = !DILocation(line: 186, column: 3, scope: !3593)
!3597 = !DILocation(line: 186, column: 52, scope: !3595)
!3598 = distinct !{!3598, !3596, !3599}
!3599 = !DILocation(line: 187, column: 5, scope: !3593)
!3600 = !DILocation(line: 188, column: 3, scope: !3576)
!3601 = !DILocation(line: 189, column: 1, scope: !3576)
!3602 = distinct !DISubprogram(name: "version_etc_va", scope: !549, file: !549, line: 196, type: !3603, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3612)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{null, !3491, !40, !40, !40, !3605}
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !546, line: 189, size: 192, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3611}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3606, file: !546, line: 189, baseType: !160, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3606, file: !546, line: 189, baseType: !160, size: 32, offset: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3606, file: !546, line: 189, baseType: !31, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3606, file: !546, line: 189, baseType: !31, size: 64, offset: 128)
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3618, !3619}
!3613 = !DILocalVariable(name: "stream", arg: 1, scope: !3602, file: !549, line: 196, type: !3491)
!3614 = !DILocalVariable(name: "command_name", arg: 2, scope: !3602, file: !549, line: 197, type: !40)
!3615 = !DILocalVariable(name: "package", arg: 3, scope: !3602, file: !549, line: 197, type: !40)
!3616 = !DILocalVariable(name: "version", arg: 4, scope: !3602, file: !549, line: 198, type: !40)
!3617 = !DILocalVariable(name: "authors", arg: 5, scope: !3602, file: !549, line: 198, type: !3605)
!3618 = !DILocalVariable(name: "n_authors", scope: !3602, file: !549, line: 200, type: !141)
!3619 = !DILocalVariable(name: "authtab", scope: !3602, file: !549, line: 201, type: !3620)
!3620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 640, elements: !150)
!3621 = !DILocation(line: 196, column: 23, scope: !3602)
!3622 = !DILocation(line: 197, column: 29, scope: !3602)
!3623 = !DILocation(line: 197, column: 55, scope: !3602)
!3624 = !DILocation(line: 198, column: 29, scope: !3602)
!3625 = !DILocation(line: 198, column: 46, scope: !3602)
!3626 = !DILocation(line: 201, column: 3, scope: !3602)
!3627 = !DILocation(line: 201, column: 15, scope: !3602)
!3628 = !DILocation(line: 200, column: 10, scope: !3602)
!3629 = !DILocation(line: 205, column: 35, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !549, line: 203, column: 3)
!3631 = distinct !DILexicalBlock(scope: !3602, file: !549, line: 203, column: 3)
!3632 = !DILocation(line: 205, column: 14, scope: !3630)
!3633 = !DILocation(line: 205, column: 33, scope: !3630)
!3634 = !DILocation(line: 205, column: 67, scope: !3630)
!3635 = !DILocation(line: 203, column: 3, scope: !3631)
!3636 = !DILocation(line: 208, column: 3, scope: !3602)
!3637 = !DILocation(line: 210, column: 1, scope: !3602)
!3638 = distinct !DISubprogram(name: "version_etc", scope: !549, file: !549, line: 227, type: !3639, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3641)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null, !3491, !40, !40, !40, null}
!3641 = !{!3642, !3643, !3644, !3645, !3646}
!3642 = !DILocalVariable(name: "stream", arg: 1, scope: !3638, file: !549, line: 227, type: !3491)
!3643 = !DILocalVariable(name: "command_name", arg: 2, scope: !3638, file: !549, line: 228, type: !40)
!3644 = !DILocalVariable(name: "package", arg: 3, scope: !3638, file: !549, line: 228, type: !40)
!3645 = !DILocalVariable(name: "version", arg: 4, scope: !3638, file: !549, line: 229, type: !40)
!3646 = !DILocalVariable(name: "authors", scope: !3638, file: !549, line: 231, type: !3647)
!3647 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1719, line: 46, baseType: !3648)
!3648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3649, line: 48, baseType: !3650)
!3649 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !546, line: 231, baseType: !3651)
!3651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3606, size: 192, elements: !700)
!3652 = !DILocation(line: 227, column: 20, scope: !3638)
!3653 = !DILocation(line: 228, column: 26, scope: !3638)
!3654 = !DILocation(line: 228, column: 52, scope: !3638)
!3655 = !DILocation(line: 229, column: 26, scope: !3638)
!3656 = !DILocation(line: 231, column: 3, scope: !3638)
!3657 = !DILocation(line: 231, column: 11, scope: !3638)
!3658 = !DILocation(line: 233, column: 3, scope: !3638)
!3659 = !DILocation(line: 234, column: 3, scope: !3638)
!3660 = !DILocation(line: 235, column: 3, scope: !3638)
!3661 = !DILocation(line: 236, column: 1, scope: !3638)
!3662 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !549, file: !549, line: 239, type: !628, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !73)
!3663 = !DILocation(line: 245, column: 3, scope: !3662)
!3664 = !DILocation(line: 251, column: 3, scope: !3662)
!3665 = !DILocation(line: 256, column: 3, scope: !3662)
!3666 = !DILocation(line: 258, column: 1, scope: !3662)
!3667 = distinct !DISubprogram(name: "xnmalloc", scope: !557, file: !557, line: 105, type: !3668, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !553, variables: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!31, !141, !141}
!3670 = !{!3671, !3672}
!3671 = !DILocalVariable(name: "n", arg: 1, scope: !3667, file: !557, line: 105, type: !141)
!3672 = !DILocalVariable(name: "s", arg: 2, scope: !3667, file: !557, line: 105, type: !141)
!3673 = !DILocation(line: 105, column: 18, scope: !3667)
!3674 = !DILocation(line: 105, column: 28, scope: !3667)
!3675 = !DILocation(line: 107, column: 7, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3667, file: !557, line: 107, column: 7)
!3677 = !DILocation(line: 107, column: 7, scope: !3667)
!3678 = !DILocation(line: 108, column: 5, scope: !3676)
!3679 = !DILocation(line: 109, column: 21, scope: !3667)
!3680 = !DILocalVariable(name: "n", arg: 1, scope: !3681, file: !3682, line: 39, type: !141)
!3681 = distinct !DISubprogram(name: "xmalloc", scope: !3682, file: !3682, line: 39, type: !3683, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !553, variables: !3685)
!3682 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!31, !141}
!3685 = !{!3680, !3686}
!3686 = !DILocalVariable(name: "p", scope: !3681, file: !3682, line: 41, type: !31)
!3687 = !DILocation(line: 39, column: 17, scope: !3681, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 109, column: 10, scope: !3667)
!3689 = !DILocation(line: 41, column: 13, scope: !3681, inlinedAt: !3688)
!3690 = !DILocation(line: 41, column: 9, scope: !3681, inlinedAt: !3688)
!3691 = !DILocation(line: 42, column: 8, scope: !3692, inlinedAt: !3688)
!3692 = distinct !DILexicalBlock(scope: !3681, file: !3682, line: 42, column: 7)
!3693 = !DILocation(line: 42, column: 15, scope: !3692, inlinedAt: !3688)
!3694 = !DILocation(line: 42, column: 10, scope: !3692, inlinedAt: !3688)
!3695 = !DILocation(line: 43, column: 5, scope: !3692, inlinedAt: !3688)
!3696 = !DILocation(line: 109, column: 3, scope: !3667)
!3697 = !DILocation(line: 39, column: 17, scope: !3681)
!3698 = !DILocation(line: 41, column: 13, scope: !3681)
!3699 = !DILocation(line: 41, column: 9, scope: !3681)
!3700 = !DILocation(line: 42, column: 8, scope: !3692)
!3701 = !DILocation(line: 42, column: 15, scope: !3692)
!3702 = !DILocation(line: 42, column: 10, scope: !3692)
!3703 = !DILocation(line: 43, column: 5, scope: !3692)
!3704 = !DILocation(line: 44, column: 3, scope: !3681)
!3705 = distinct !DISubprogram(name: "xnrealloc", scope: !557, file: !557, line: 118, type: !3706, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !553, variables: !3708)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!31, !31, !141, !141}
!3708 = !{!3709, !3710, !3711}
!3709 = !DILocalVariable(name: "p", arg: 1, scope: !3705, file: !557, line: 118, type: !31)
!3710 = !DILocalVariable(name: "n", arg: 2, scope: !3705, file: !557, line: 118, type: !141)
!3711 = !DILocalVariable(name: "s", arg: 3, scope: !3705, file: !557, line: 118, type: !141)
!3712 = !DILocation(line: 118, column: 18, scope: !3705)
!3713 = !DILocation(line: 118, column: 28, scope: !3705)
!3714 = !DILocation(line: 118, column: 38, scope: !3705)
!3715 = !DILocation(line: 120, column: 7, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3705, file: !557, line: 120, column: 7)
!3717 = !DILocation(line: 120, column: 7, scope: !3705)
!3718 = !DILocation(line: 121, column: 5, scope: !3716)
!3719 = !DILocation(line: 122, column: 25, scope: !3705)
!3720 = !DILocalVariable(name: "p", arg: 1, scope: !3721, file: !3682, line: 51, type: !31)
!3721 = distinct !DISubprogram(name: "xrealloc", scope: !3682, file: !3682, line: 51, type: !3722, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !553, variables: !3724)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!31, !31, !141}
!3724 = !{!3720, !3725}
!3725 = !DILocalVariable(name: "n", arg: 2, scope: !3721, file: !3682, line: 51, type: !141)
!3726 = !DILocation(line: 51, column: 17, scope: !3721, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 122, column: 10, scope: !3705)
!3728 = !DILocation(line: 51, column: 27, scope: !3721, inlinedAt: !3727)
!3729 = !DILocation(line: 53, column: 8, scope: !3730, inlinedAt: !3727)
!3730 = distinct !DILexicalBlock(scope: !3721, file: !3682, line: 53, column: 7)
!3731 = !DILocation(line: 53, column: 13, scope: !3730, inlinedAt: !3727)
!3732 = !DILocation(line: 53, column: 10, scope: !3730, inlinedAt: !3727)
!3733 = !DILocation(line: 57, column: 7, scope: !3734, inlinedAt: !3727)
!3734 = distinct !DILexicalBlock(scope: !3730, file: !3682, line: 54, column: 5)
!3735 = !DILocation(line: 58, column: 7, scope: !3734, inlinedAt: !3727)
!3736 = !DILocation(line: 61, column: 7, scope: !3721, inlinedAt: !3727)
!3737 = !DILocation(line: 62, column: 8, scope: !3738, inlinedAt: !3727)
!3738 = distinct !DILexicalBlock(scope: !3721, file: !3682, line: 62, column: 7)
!3739 = !DILocation(line: 62, column: 13, scope: !3738, inlinedAt: !3727)
!3740 = !DILocation(line: 62, column: 10, scope: !3738, inlinedAt: !3727)
!3741 = !DILocation(line: 63, column: 5, scope: !3738, inlinedAt: !3727)
!3742 = !DILocation(line: 122, column: 3, scope: !3705)
!3743 = !DILocation(line: 51, column: 17, scope: !3721)
!3744 = !DILocation(line: 51, column: 27, scope: !3721)
!3745 = !DILocation(line: 53, column: 8, scope: !3730)
!3746 = !DILocation(line: 53, column: 13, scope: !3730)
!3747 = !DILocation(line: 53, column: 10, scope: !3730)
!3748 = !DILocation(line: 57, column: 7, scope: !3734)
!3749 = !DILocation(line: 58, column: 7, scope: !3734)
!3750 = !DILocation(line: 61, column: 7, scope: !3721)
!3751 = !DILocation(line: 62, column: 8, scope: !3738)
!3752 = !DILocation(line: 62, column: 13, scope: !3738)
!3753 = !DILocation(line: 62, column: 10, scope: !3738)
!3754 = !DILocation(line: 63, column: 5, scope: !3738)
!3755 = !DILocation(line: 65, column: 1, scope: !3721)
!3756 = !DILocation(line: 180, column: 19, scope: !558)
!3757 = !DILocation(line: 180, column: 30, scope: !558)
!3758 = !DILocation(line: 180, column: 41, scope: !558)
!3759 = !DILocation(line: 182, column: 14, scope: !558)
!3760 = !DILocation(line: 182, column: 10, scope: !558)
!3761 = !DILocation(line: 184, column: 9, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !558, file: !557, line: 184, column: 7)
!3763 = !DILocation(line: 184, column: 7, scope: !558)
!3764 = !DILocation(line: 186, column: 13, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !557, line: 186, column: 11)
!3766 = distinct !DILexicalBlock(scope: !3762, file: !557, line: 185, column: 5)
!3767 = !DILocation(line: 186, column: 11, scope: !3766)
!3768 = !DILocation(line: 194, column: 30, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3765, file: !557, line: 187, column: 9)
!3770 = !DILocation(line: 195, column: 16, scope: !3769)
!3771 = !DILocation(line: 195, column: 13, scope: !3769)
!3772 = !DILocation(line: 196, column: 9, scope: !3769)
!3773 = !DILocation(line: 204, column: 69, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !557, line: 204, column: 11)
!3775 = distinct !DILexicalBlock(scope: !3762, file: !557, line: 199, column: 5)
!3776 = !DILocation(line: 205, column: 11, scope: !3774)
!3777 = !DILocation(line: 204, column: 11, scope: !3775)
!3778 = !DILocation(line: 206, column: 9, scope: !3774)
!3779 = !DILocation(line: 210, column: 7, scope: !558)
!3780 = !DILocation(line: 211, column: 25, scope: !558)
!3781 = !DILocation(line: 51, column: 17, scope: !3721, inlinedAt: !3782)
!3782 = distinct !DILocation(line: 211, column: 10, scope: !558)
!3783 = !DILocation(line: 51, column: 27, scope: !3721, inlinedAt: !3782)
!3784 = !DILocation(line: 53, column: 10, scope: !3730, inlinedAt: !3782)
!3785 = !DILocation(line: 207, column: 14, scope: !3775)
!3786 = !DILocation(line: 207, column: 18, scope: !3775)
!3787 = !DILocation(line: 207, column: 9, scope: !3775)
!3788 = !DILocation(line: 53, column: 8, scope: !3730, inlinedAt: !3782)
!3789 = !DILocation(line: 57, column: 7, scope: !3734, inlinedAt: !3782)
!3790 = !DILocation(line: 58, column: 7, scope: !3734, inlinedAt: !3782)
!3791 = !DILocation(line: 61, column: 7, scope: !3721, inlinedAt: !3782)
!3792 = !DILocation(line: 62, column: 8, scope: !3738, inlinedAt: !3782)
!3793 = !DILocation(line: 62, column: 13, scope: !3738, inlinedAt: !3782)
!3794 = !DILocation(line: 62, column: 10, scope: !3738, inlinedAt: !3782)
!3795 = !DILocation(line: 63, column: 5, scope: !3738, inlinedAt: !3782)
!3796 = !DILocation(line: 211, column: 3, scope: !558)
!3797 = distinct !DISubprogram(name: "xcharalloc", scope: !557, file: !557, line: 220, type: !2767, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !553, variables: !3798)
!3798 = !{!3799}
!3799 = !DILocalVariable(name: "n", arg: 1, scope: !3797, file: !557, line: 220, type: !141)
!3800 = !DILocation(line: 220, column: 20, scope: !3797)
!3801 = !DILocation(line: 39, column: 17, scope: !3681, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 222, column: 10, scope: !3797)
!3803 = !DILocation(line: 41, column: 13, scope: !3681, inlinedAt: !3802)
!3804 = !DILocation(line: 41, column: 9, scope: !3681, inlinedAt: !3802)
!3805 = !DILocation(line: 42, column: 8, scope: !3692, inlinedAt: !3802)
!3806 = !DILocation(line: 42, column: 15, scope: !3692, inlinedAt: !3802)
!3807 = !DILocation(line: 42, column: 10, scope: !3692, inlinedAt: !3802)
!3808 = !DILocation(line: 43, column: 5, scope: !3692, inlinedAt: !3802)
!3809 = !DILocation(line: 222, column: 3, scope: !3797)
!3810 = distinct !DISubprogram(name: "x2realloc", scope: !3682, file: !3682, line: 74, type: !3811, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !553, variables: !3813)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!31, !31, !561}
!3813 = !{!3814, !3815}
!3814 = !DILocalVariable(name: "p", arg: 1, scope: !3810, file: !3682, line: 74, type: !31)
!3815 = !DILocalVariable(name: "pn", arg: 2, scope: !3810, file: !3682, line: 74, type: !561)
!3816 = !DILocation(line: 74, column: 18, scope: !3810)
!3817 = !DILocation(line: 74, column: 29, scope: !3810)
!3818 = !DILocation(line: 180, column: 19, scope: !558, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 76, column: 10, scope: !3810)
!3820 = !DILocation(line: 180, column: 30, scope: !558, inlinedAt: !3819)
!3821 = !DILocation(line: 180, column: 41, scope: !558, inlinedAt: !3819)
!3822 = !DILocation(line: 182, column: 14, scope: !558, inlinedAt: !3819)
!3823 = !DILocation(line: 182, column: 10, scope: !558, inlinedAt: !3819)
!3824 = !DILocation(line: 184, column: 9, scope: !3762, inlinedAt: !3819)
!3825 = !DILocation(line: 184, column: 7, scope: !558, inlinedAt: !3819)
!3826 = !DILocation(line: 186, column: 13, scope: !3765, inlinedAt: !3819)
!3827 = !DILocation(line: 186, column: 11, scope: !3766, inlinedAt: !3819)
!3828 = !DILocation(line: 210, column: 7, scope: !558, inlinedAt: !3819)
!3829 = !DILocation(line: 51, column: 17, scope: !3721, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 211, column: 10, scope: !558, inlinedAt: !3819)
!3831 = !DILocation(line: 51, column: 27, scope: !3721, inlinedAt: !3830)
!3832 = !DILocation(line: 53, column: 10, scope: !3730, inlinedAt: !3830)
!3833 = !DILocation(line: 205, column: 11, scope: !3774, inlinedAt: !3819)
!3834 = !DILocation(line: 204, column: 11, scope: !3775, inlinedAt: !3819)
!3835 = !DILocation(line: 206, column: 9, scope: !3774, inlinedAt: !3819)
!3836 = !DILocation(line: 207, column: 14, scope: !3775, inlinedAt: !3819)
!3837 = !DILocation(line: 207, column: 18, scope: !3775, inlinedAt: !3819)
!3838 = !DILocation(line: 207, column: 9, scope: !3775, inlinedAt: !3819)
!3839 = !DILocation(line: 53, column: 8, scope: !3730, inlinedAt: !3830)
!3840 = !DILocation(line: 57, column: 7, scope: !3734, inlinedAt: !3830)
!3841 = !DILocation(line: 58, column: 7, scope: !3734, inlinedAt: !3830)
!3842 = !DILocation(line: 61, column: 7, scope: !3721, inlinedAt: !3830)
!3843 = !DILocation(line: 62, column: 8, scope: !3738, inlinedAt: !3830)
!3844 = !DILocation(line: 62, column: 13, scope: !3738, inlinedAt: !3830)
!3845 = !DILocation(line: 62, column: 10, scope: !3738, inlinedAt: !3830)
!3846 = !DILocation(line: 63, column: 5, scope: !3738, inlinedAt: !3830)
!3847 = !DILocation(line: 76, column: 3, scope: !3810)
!3848 = distinct !DISubprogram(name: "xzalloc", scope: !3682, file: !3682, line: 84, type: !3683, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !553, variables: !3849)
!3849 = !{!3850}
!3850 = !DILocalVariable(name: "s", arg: 1, scope: !3848, file: !3682, line: 84, type: !141)
!3851 = !DILocation(line: 84, column: 17, scope: !3848)
!3852 = !DILocation(line: 39, column: 17, scope: !3681, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 86, column: 18, scope: !3848)
!3854 = !DILocation(line: 41, column: 13, scope: !3681, inlinedAt: !3853)
!3855 = !DILocation(line: 41, column: 9, scope: !3681, inlinedAt: !3853)
!3856 = !DILocation(line: 42, column: 8, scope: !3692, inlinedAt: !3853)
!3857 = !DILocation(line: 42, column: 15, scope: !3692, inlinedAt: !3853)
!3858 = !DILocation(line: 42, column: 10, scope: !3692, inlinedAt: !3853)
!3859 = !DILocation(line: 43, column: 5, scope: !3692, inlinedAt: !3853)
!3860 = !DILocation(line: 86, column: 10, scope: !3848)
!3861 = !DILocation(line: 86, column: 3, scope: !3848)
!3862 = distinct !DISubprogram(name: "xcalloc", scope: !3682, file: !3682, line: 93, type: !3668, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !553, variables: !3863)
!3863 = !{!3864, !3865, !3866}
!3864 = !DILocalVariable(name: "n", arg: 1, scope: !3862, file: !3682, line: 93, type: !141)
!3865 = !DILocalVariable(name: "s", arg: 2, scope: !3862, file: !3682, line: 93, type: !141)
!3866 = !DILocalVariable(name: "p", scope: !3862, file: !3682, line: 95, type: !31)
!3867 = !DILocation(line: 93, column: 17, scope: !3862)
!3868 = !DILocation(line: 93, column: 27, scope: !3862)
!3869 = !DILocation(line: 100, column: 7, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3862, file: !3682, line: 100, column: 7)
!3871 = !DILocation(line: 101, column: 7, scope: !3870)
!3872 = !DILocation(line: 101, column: 18, scope: !3870)
!3873 = !DILocation(line: 95, column: 9, scope: !3862)
!3874 = !DILocation(line: 101, column: 16, scope: !3870)
!3875 = !DILocation(line: 100, column: 7, scope: !3862)
!3876 = !DILocation(line: 102, column: 5, scope: !3870)
!3877 = !DILocation(line: 103, column: 3, scope: !3862)
!3878 = distinct !DISubprogram(name: "xmemdup", scope: !3682, file: !3682, line: 111, type: !3879, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !553, variables: !3883)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!31, !3881, !141}
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3883 = !{!3884, !3885}
!3884 = !DILocalVariable(name: "p", arg: 1, scope: !3878, file: !3682, line: 111, type: !3881)
!3885 = !DILocalVariable(name: "s", arg: 2, scope: !3878, file: !3682, line: 111, type: !141)
!3886 = !DILocation(line: 111, column: 22, scope: !3878)
!3887 = !DILocation(line: 111, column: 32, scope: !3878)
!3888 = !DILocation(line: 39, column: 17, scope: !3681, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 113, column: 18, scope: !3878)
!3890 = !DILocation(line: 41, column: 13, scope: !3681, inlinedAt: !3889)
!3891 = !DILocation(line: 41, column: 9, scope: !3681, inlinedAt: !3889)
!3892 = !DILocation(line: 42, column: 8, scope: !3692, inlinedAt: !3889)
!3893 = !DILocation(line: 42, column: 15, scope: !3692, inlinedAt: !3889)
!3894 = !DILocation(line: 42, column: 10, scope: !3692, inlinedAt: !3889)
!3895 = !DILocation(line: 43, column: 5, scope: !3692, inlinedAt: !3889)
!3896 = !DILocation(line: 113, column: 10, scope: !3878)
!3897 = !DILocation(line: 113, column: 3, scope: !3878)
!3898 = distinct !DISubprogram(name: "xstrdup", scope: !3682, file: !3682, line: 119, type: !2967, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !553, variables: !3899)
!3899 = !{!3900}
!3900 = !DILocalVariable(name: "string", arg: 1, scope: !3898, file: !3682, line: 119, type: !40)
!3901 = !DILocation(line: 119, column: 22, scope: !3898)
!3902 = !DILocation(line: 121, column: 27, scope: !3898)
!3903 = !DILocation(line: 121, column: 43, scope: !3898)
!3904 = !DILocation(line: 111, column: 22, scope: !3878, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 121, column: 10, scope: !3898)
!3906 = !DILocation(line: 111, column: 32, scope: !3878, inlinedAt: !3905)
!3907 = !DILocation(line: 39, column: 17, scope: !3681, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 113, column: 18, scope: !3878, inlinedAt: !3905)
!3909 = !DILocation(line: 41, column: 13, scope: !3681, inlinedAt: !3908)
!3910 = !DILocation(line: 41, column: 9, scope: !3681, inlinedAt: !3908)
!3911 = !DILocation(line: 42, column: 8, scope: !3692, inlinedAt: !3908)
!3912 = !DILocation(line: 42, column: 15, scope: !3692, inlinedAt: !3908)
!3913 = !DILocation(line: 42, column: 10, scope: !3692, inlinedAt: !3908)
!3914 = !DILocation(line: 43, column: 5, scope: !3692, inlinedAt: !3908)
!3915 = !DILocation(line: 113, column: 10, scope: !3878, inlinedAt: !3905)
!3916 = !DILocation(line: 121, column: 3, scope: !3898)
!3917 = distinct !DISubprogram(name: "xalloc_die", scope: !3918, file: !3918, line: 32, type: !628, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !570, variables: !73)
!3918 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3919 = !DILocation(line: 34, column: 10, scope: !3917)
!3920 = !DILocation(line: 34, column: 33, scope: !3917)
!3921 = !DILocation(line: 34, column: 3, scope: !3917)
!3922 = !DILocation(line: 40, column: 3, scope: !3917)
!3923 = distinct !DISubprogram(name: "xnumtoumax", scope: !3924, file: !3924, line: 36, type: !3925, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !3927)
!3924 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!721, !40, !63, !721, !721, !40, !40, !63}
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3937}
!3928 = !DILocalVariable(name: "n_str", arg: 1, scope: !3923, file: !3924, line: 36, type: !40)
!3929 = !DILocalVariable(name: "base", arg: 2, scope: !3923, file: !3924, line: 36, type: !63)
!3930 = !DILocalVariable(name: "min", arg: 3, scope: !3923, file: !3924, line: 36, type: !721)
!3931 = !DILocalVariable(name: "max", arg: 4, scope: !3923, file: !3924, line: 36, type: !721)
!3932 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3923, file: !3924, line: 37, type: !40)
!3933 = !DILocalVariable(name: "err", arg: 6, scope: !3923, file: !3924, line: 37, type: !40)
!3934 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3923, file: !3924, line: 37, type: !63)
!3935 = !DILocalVariable(name: "s_err", scope: !3923, file: !3924, line: 39, type: !3936)
!3936 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !576, line: 39, baseType: !575)
!3937 = !DILocalVariable(name: "tnum", scope: !3923, file: !3924, line: 41, type: !721)
!3938 = !DILocation(line: 36, column: 26, scope: !3923)
!3939 = !DILocation(line: 36, column: 37, scope: !3923)
!3940 = !DILocation(line: 36, column: 57, scope: !3923)
!3941 = !DILocation(line: 36, column: 76, scope: !3923)
!3942 = !DILocation(line: 37, column: 26, scope: !3923)
!3943 = !DILocation(line: 37, column: 48, scope: !3923)
!3944 = !DILocation(line: 37, column: 57, scope: !3923)
!3945 = !DILocation(line: 41, column: 3, scope: !3923)
!3946 = !DILocation(line: 41, column: 17, scope: !3923)
!3947 = !DILocation(line: 42, column: 11, scope: !3923)
!3948 = !DILocation(line: 39, column: 16, scope: !3923)
!3949 = !DILocation(line: 44, column: 7, scope: !3923)
!3950 = !DILocation(line: 69, column: 50, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !3924, line: 67, column: 5)
!3952 = distinct !DILexicalBlock(scope: !3923, file: !3924, line: 66, column: 7)
!3953 = !DILocation(line: 46, column: 11, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !3924, line: 46, column: 11)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !3924, line: 45, column: 5)
!3956 = distinct !DILexicalBlock(scope: !3923, file: !3924, line: 44, column: 7)
!3957 = !DILocation(line: 46, column: 16, scope: !3954)
!3958 = !DILocation(line: 46, column: 29, scope: !3954)
!3959 = !DILocation(line: 46, column: 22, scope: !3954)
!3960 = !DILocation(line: 51, column: 20, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3962, file: !3924, line: 51, column: 15)
!3962 = distinct !DILexicalBlock(scope: !3954, file: !3924, line: 47, column: 9)
!3963 = !DILocation(line: 52, column: 13, scope: !3961)
!3964 = !DILocation(line: 51, column: 15, scope: !3962)
!3965 = !DILocation(line: 59, column: 9, scope: !3962)
!3966 = !DILocation(line: 62, column: 5, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3956, file: !3924, line: 61, column: 12)
!3968 = !DILocation(line: 62, column: 11, scope: !3967)
!3969 = !DILocation(line: 64, column: 5, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3967, file: !3924, line: 63, column: 12)
!3971 = !DILocation(line: 64, column: 11, scope: !3970)
!3972 = !DILocation(line: 69, column: 14, scope: !3951)
!3973 = !DILocation(line: 69, column: 56, scope: !3951)
!3974 = !DILocation(line: 70, column: 29, scope: !3951)
!3975 = !DILocation(line: 69, column: 7, scope: !3951)
!3976 = !DILocation(line: 73, column: 10, scope: !3923)
!3977 = !DILocation(line: 71, column: 5, scope: !3951)
!3978 = !DILocation(line: 74, column: 1, scope: !3923)
!3979 = !DILocation(line: 73, column: 3, scope: !3923)
!3980 = distinct !DISubprogram(name: "xdectoumax", scope: !3924, file: !3924, line: 82, type: !3981, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!721, !40, !721, !721, !40, !40, !63}
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3989}
!3984 = !DILocalVariable(name: "n_str", arg: 1, scope: !3980, file: !3924, line: 82, type: !40)
!3985 = !DILocalVariable(name: "min", arg: 2, scope: !3980, file: !3924, line: 82, type: !721)
!3986 = !DILocalVariable(name: "max", arg: 3, scope: !3980, file: !3924, line: 82, type: !721)
!3987 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3980, file: !3924, line: 83, type: !40)
!3988 = !DILocalVariable(name: "err", arg: 5, scope: !3980, file: !3924, line: 83, type: !40)
!3989 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3980, file: !3924, line: 83, type: !63)
!3990 = !DILocation(line: 82, column: 26, scope: !3980)
!3991 = !DILocation(line: 82, column: 47, scope: !3980)
!3992 = !DILocation(line: 82, column: 66, scope: !3980)
!3993 = !DILocation(line: 83, column: 26, scope: !3980)
!3994 = !DILocation(line: 83, column: 48, scope: !3980)
!3995 = !DILocation(line: 83, column: 57, scope: !3980)
!3996 = !DILocation(line: 85, column: 10, scope: !3980)
!3997 = !DILocation(line: 85, column: 3, scope: !3980)
!3998 = distinct !DISubprogram(name: "xstrtoumax", scope: !3999, file: !3999, line: 88, type: !4000, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !4003)
!3999 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!3936, !40, !657, !63, !4002, !40}
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4016, !4017, !4020, !4021}
!4004 = !DILocalVariable(name: "s", arg: 1, scope: !3998, file: !3999, line: 88, type: !40)
!4005 = !DILocalVariable(name: "ptr", arg: 2, scope: !3998, file: !3999, line: 88, type: !657)
!4006 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3998, file: !3999, line: 88, type: !63)
!4007 = !DILocalVariable(name: "val", arg: 4, scope: !3998, file: !3999, line: 89, type: !4002)
!4008 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3998, file: !3999, line: 89, type: !40)
!4009 = !DILocalVariable(name: "t_ptr", scope: !3998, file: !3999, line: 91, type: !29)
!4010 = !DILocalVariable(name: "p", scope: !3998, file: !3999, line: 92, type: !657)
!4011 = !DILocalVariable(name: "tmp", scope: !3998, file: !3999, line: 93, type: !721)
!4012 = !DILocalVariable(name: "err", scope: !3998, file: !3999, line: 94, type: !3936)
!4013 = !DILocalVariable(name: "q", scope: !4014, file: !3999, line: 104, type: !40)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !3999, line: 103, column: 5)
!4015 = distinct !DILexicalBlock(scope: !3998, file: !3999, line: 102, column: 7)
!4016 = !DILocalVariable(name: "ch", scope: !4014, file: !3999, line: 105, type: !32)
!4017 = !DILocalVariable(name: "base", scope: !4018, file: !3999, line: 141, type: !63)
!4018 = distinct !DILexicalBlock(scope: !4019, file: !3999, line: 140, column: 5)
!4019 = distinct !DILexicalBlock(scope: !3998, file: !3999, line: 139, column: 7)
!4020 = !DILocalVariable(name: "suffixes", scope: !4018, file: !3999, line: 142, type: !63)
!4021 = !DILocalVariable(name: "overflow", scope: !4018, file: !3999, line: 143, type: !3936)
!4022 = !DILocation(line: 88, column: 24, scope: !3998)
!4023 = !DILocation(line: 88, column: 34, scope: !3998)
!4024 = !DILocation(line: 88, column: 43, scope: !3998)
!4025 = !DILocation(line: 89, column: 24, scope: !3998)
!4026 = !DILocation(line: 89, column: 41, scope: !3998)
!4027 = !DILocation(line: 91, column: 3, scope: !3998)
!4028 = !DILocation(line: 94, column: 16, scope: !3998)
!4029 = !DILocation(line: 96, column: 3, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4031, file: !3999, line: 96, column: 3)
!4031 = distinct !DILexicalBlock(scope: !3998, file: !3999, line: 96, column: 3)
!4032 = !DILocation(line: 98, column: 8, scope: !3998)
!4033 = !DILocation(line: 92, column: 10, scope: !3998)
!4034 = !DILocation(line: 100, column: 3, scope: !3998)
!4035 = !DILocation(line: 100, column: 9, scope: !3998)
!4036 = !DILocation(line: 104, column: 19, scope: !4014)
!4037 = !DILocation(line: 105, column: 21, scope: !4014)
!4038 = !DILocation(line: 106, column: 14, scope: !4014)
!4039 = !DILocation(line: 106, column: 7, scope: !4014)
!4040 = !DILocation(line: 107, column: 15, scope: !4014)
!4041 = distinct !{!4041, !4039, !4042}
!4042 = !DILocation(line: 107, column: 17, scope: !4014)
!4043 = !DILocation(line: 108, column: 14, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4014, file: !3999, line: 108, column: 11)
!4045 = !DILocalVariable(name: "nptr", arg: 1, scope: !4046, file: !4047, line: 336, type: !1105)
!4046 = distinct !DISubprogram(name: "strtoumax", scope: !4047, file: !4047, line: 336, type: !4048, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !4051)
!4047 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!721, !1105, !4050, !63}
!4050 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !657)
!4051 = !{!4045, !4052, !4053}
!4052 = !DILocalVariable(name: "endptr", arg: 2, scope: !4046, file: !4047, line: 336, type: !4050)
!4053 = !DILocalVariable(name: "base", arg: 3, scope: !4046, file: !4047, line: 336, type: !63)
!4054 = !DILocation(line: 336, column: 1, scope: !4046, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 112, column: 9, scope: !3998)
!4056 = !DILocation(line: 339, column: 10, scope: !4046, inlinedAt: !4055)
!4057 = !DILocation(line: 93, column: 14, scope: !3998)
!4058 = !DILocation(line: 114, column: 7, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !3998, file: !3999, line: 114, column: 7)
!4060 = !DILocation(line: 114, column: 10, scope: !4059)
!4061 = !DILocation(line: 114, column: 7, scope: !3998)
!4062 = !DILocation(line: 118, column: 11, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !3999, line: 118, column: 11)
!4064 = distinct !DILexicalBlock(scope: !4059, file: !3999, line: 115, column: 5)
!4065 = !DILocation(line: 118, column: 26, scope: !4063)
!4066 = !DILocation(line: 118, column: 29, scope: !4063)
!4067 = !DILocation(line: 118, column: 33, scope: !4063)
!4068 = !DILocation(line: 118, column: 36, scope: !4063)
!4069 = !DILocation(line: 118, column: 11, scope: !4064)
!4070 = !DILocation(line: 123, column: 12, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4059, file: !3999, line: 123, column: 12)
!4072 = !DILocation(line: 123, column: 12, scope: !4059)
!4073 = !DILocation(line: 128, column: 5, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4071, file: !3999, line: 124, column: 5)
!4075 = !DILocation(line: 133, column: 8, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !3998, file: !3999, line: 133, column: 7)
!4077 = !DILocation(line: 133, column: 7, scope: !3998)
!4078 = !DILocation(line: 135, column: 12, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4076, file: !3999, line: 134, column: 5)
!4080 = !DILocation(line: 136, column: 7, scope: !4079)
!4081 = !DILocation(line: 139, column: 7, scope: !4019)
!4082 = !DILocation(line: 139, column: 11, scope: !4019)
!4083 = !DILocation(line: 139, column: 7, scope: !3998)
!4084 = !DILocation(line: 141, column: 11, scope: !4018)
!4085 = !DILocation(line: 142, column: 11, scope: !4018)
!4086 = !DILocation(line: 145, column: 12, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4018, file: !3999, line: 145, column: 11)
!4088 = !DILocation(line: 145, column: 11, scope: !4018)
!4089 = !DILocation(line: 147, column: 16, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4087, file: !3999, line: 146, column: 9)
!4091 = !DILocation(line: 148, column: 22, scope: !4090)
!4092 = !DILocation(line: 148, column: 11, scope: !4090)
!4093 = !DILocation(line: 151, column: 7, scope: !4018)
!4094 = !DILocation(line: 163, column: 15, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !3999, line: 163, column: 15)
!4096 = distinct !DILexicalBlock(scope: !4018, file: !3999, line: 152, column: 9)
!4097 = !DILocation(line: 163, column: 15, scope: !4096)
!4098 = !DILocation(line: 164, column: 21, scope: !4095)
!4099 = !DILocation(line: 164, column: 13, scope: !4095)
!4100 = !DILocation(line: 167, column: 21, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !3999, line: 167, column: 21)
!4102 = distinct !DILexicalBlock(scope: !4095, file: !3999, line: 165, column: 15)
!4103 = !DILocation(line: 167, column: 29, scope: !4101)
!4104 = !DILocation(line: 167, column: 21, scope: !4102)
!4105 = !DILocation(line: 175, column: 17, scope: !4102)
!4106 = !DILocation(line: 179, column: 7, scope: !4018)
!4107 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4108, file: !3999, line: 60, type: !63)
!4108 = distinct !DISubprogram(name: "bkm_scale", scope: !3999, file: !3999, line: 60, type: !4109, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!3936, !4002, !63}
!4111 = !{!4112, !4107}
!4112 = !DILocalVariable(name: "x", arg: 1, scope: !4108, file: !3999, line: 60, type: !4002)
!4113 = !DILocation(line: 60, column: 31, scope: !4108, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 182, column: 22, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4018, file: !3999, line: 180, column: 9)
!4116 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4114)
!4117 = distinct !DILexicalBlock(scope: !4108, file: !3999, line: 67, column: 7)
!4118 = !DILocation(line: 72, column: 6, scope: !4108, inlinedAt: !4114)
!4119 = !DILocation(line: 67, column: 7, scope: !4108, inlinedAt: !4114)
!4120 = !DILocation(line: 143, column: 20, scope: !4018)
!4121 = !DILocation(line: 183, column: 11, scope: !4115)
!4122 = !DILocation(line: 60, column: 31, scope: !4108, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 189, column: 22, scope: !4115)
!4124 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4123)
!4125 = !DILocation(line: 72, column: 6, scope: !4108, inlinedAt: !4123)
!4126 = !DILocation(line: 67, column: 7, scope: !4108, inlinedAt: !4123)
!4127 = !DILocation(line: 190, column: 11, scope: !4115)
!4128 = !DILocalVariable(name: "power", arg: 3, scope: !4129, file: !3999, line: 77, type: !63)
!4129 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3999, file: !3999, line: 77, type: !4130, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !4132)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!3936, !4002, !63, !63}
!4132 = !{!4133, !4134, !4128, !4135}
!4133 = !DILocalVariable(name: "x", arg: 1, scope: !4129, file: !3999, line: 77, type: !4002)
!4134 = !DILocalVariable(name: "base", arg: 2, scope: !4129, file: !3999, line: 77, type: !63)
!4135 = !DILocalVariable(name: "err", scope: !4129, file: !3999, line: 79, type: !3936)
!4136 = !DILocation(line: 77, column: 50, scope: !4129, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 197, column: 22, scope: !4115)
!4138 = !DILocation(line: 79, column: 16, scope: !4129, inlinedAt: !4137)
!4139 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 81, column: 12, scope: !4129, inlinedAt: !4137)
!4141 = !DILocation(line: 72, column: 6, scope: !4108, inlinedAt: !4140)
!4142 = !DILocation(line: 67, column: 7, scope: !4108, inlinedAt: !4140)
!4143 = !DILocation(line: 81, column: 9, scope: !4129, inlinedAt: !4137)
!4144 = !DILocation(line: 241, column: 11, scope: !4018)
!4145 = !DILocation(line: 77, column: 50, scope: !4129, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 202, column: 22, scope: !4115)
!4147 = !DILocation(line: 79, column: 16, scope: !4129, inlinedAt: !4146)
!4148 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 81, column: 12, scope: !4129, inlinedAt: !4146)
!4150 = !DILocation(line: 72, column: 6, scope: !4108, inlinedAt: !4149)
!4151 = !DILocation(line: 67, column: 7, scope: !4108, inlinedAt: !4149)
!4152 = !DILocation(line: 81, column: 9, scope: !4129, inlinedAt: !4146)
!4153 = !DILocation(line: 77, column: 50, scope: !4129, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 207, column: 22, scope: !4115)
!4155 = !DILocation(line: 79, column: 16, scope: !4129, inlinedAt: !4154)
!4156 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 81, column: 12, scope: !4129, inlinedAt: !4154)
!4158 = !DILocation(line: 72, column: 6, scope: !4108, inlinedAt: !4157)
!4159 = !DILocation(line: 67, column: 7, scope: !4108, inlinedAt: !4157)
!4160 = !DILocation(line: 77, column: 50, scope: !4129, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 212, column: 22, scope: !4115)
!4162 = !DILocation(line: 79, column: 16, scope: !4129, inlinedAt: !4161)
!4163 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 81, column: 12, scope: !4129, inlinedAt: !4161)
!4165 = !DILocation(line: 72, column: 6, scope: !4108, inlinedAt: !4164)
!4166 = !DILocation(line: 67, column: 7, scope: !4108, inlinedAt: !4164)
!4167 = !DILocation(line: 81, column: 9, scope: !4129, inlinedAt: !4161)
!4168 = !DILocation(line: 77, column: 50, scope: !4129, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 216, column: 22, scope: !4115)
!4170 = !DILocation(line: 79, column: 16, scope: !4129, inlinedAt: !4169)
!4171 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 81, column: 12, scope: !4129, inlinedAt: !4169)
!4173 = !DILocation(line: 72, column: 6, scope: !4108, inlinedAt: !4172)
!4174 = !DILocation(line: 67, column: 7, scope: !4108, inlinedAt: !4172)
!4175 = !DILocation(line: 81, column: 9, scope: !4129, inlinedAt: !4169)
!4176 = !DILocation(line: 77, column: 50, scope: !4129, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 221, column: 22, scope: !4115)
!4178 = !DILocation(line: 79, column: 16, scope: !4129, inlinedAt: !4177)
!4179 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 81, column: 12, scope: !4129, inlinedAt: !4177)
!4181 = !DILocation(line: 72, column: 6, scope: !4108, inlinedAt: !4180)
!4182 = !DILocation(line: 67, column: 7, scope: !4108, inlinedAt: !4180)
!4183 = !DILocation(line: 81, column: 9, scope: !4129, inlinedAt: !4177)
!4184 = !DILocation(line: 60, column: 31, scope: !4108, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 225, column: 22, scope: !4115)
!4186 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4185)
!4187 = !DILocation(line: 72, column: 6, scope: !4108, inlinedAt: !4185)
!4188 = !DILocation(line: 67, column: 7, scope: !4108, inlinedAt: !4185)
!4189 = !DILocation(line: 226, column: 11, scope: !4115)
!4190 = !DILocation(line: 77, column: 50, scope: !4129, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 229, column: 22, scope: !4115)
!4192 = !DILocation(line: 79, column: 16, scope: !4129, inlinedAt: !4191)
!4193 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 81, column: 12, scope: !4129, inlinedAt: !4191)
!4195 = !DILocation(line: 72, column: 6, scope: !4108, inlinedAt: !4194)
!4196 = !DILocation(line: 67, column: 7, scope: !4108, inlinedAt: !4194)
!4197 = !DILocation(line: 81, column: 9, scope: !4129, inlinedAt: !4191)
!4198 = !DILocation(line: 77, column: 50, scope: !4129, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 233, column: 22, scope: !4115)
!4200 = !DILocation(line: 79, column: 16, scope: !4129, inlinedAt: !4199)
!4201 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 81, column: 12, scope: !4129, inlinedAt: !4199)
!4203 = !DILocation(line: 72, column: 6, scope: !4108, inlinedAt: !4202)
!4204 = !DILocation(line: 67, column: 7, scope: !4108, inlinedAt: !4202)
!4205 = !DILocation(line: 81, column: 9, scope: !4129, inlinedAt: !4199)
!4206 = !DILocation(line: 237, column: 16, scope: !4115)
!4207 = !DILocation(line: 238, column: 22, scope: !4115)
!4208 = !DILocation(line: 238, column: 11, scope: !4115)
!4209 = !DILocation(line: 242, column: 10, scope: !4018)
!4210 = !DILocation(line: 243, column: 11, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4018, file: !3999, line: 243, column: 11)
!4212 = !DILocation(line: 244, column: 13, scope: !4211)
!4213 = !DILocation(line: 243, column: 11, scope: !4018)
!4214 = !DILocation(line: 247, column: 8, scope: !3998)
!4215 = !DILocation(line: 248, column: 3, scope: !3998)
!4216 = !DILocation(line: 249, column: 1, scope: !3998)
!4217 = distinct !DISubprogram(name: "rpl_calloc", scope: !4218, file: !4218, line: 42, type: !3668, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !4219)
!4218 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4219 = !{!4220, !4221, !4222, !4223}
!4220 = !DILocalVariable(name: "n", arg: 1, scope: !4217, file: !4218, line: 42, type: !141)
!4221 = !DILocalVariable(name: "s", arg: 2, scope: !4217, file: !4218, line: 42, type: !141)
!4222 = !DILocalVariable(name: "result", scope: !4217, file: !4218, line: 44, type: !31)
!4223 = !DILocalVariable(name: "bytes", scope: !4224, file: !4218, line: 56, type: !141)
!4224 = distinct !DILexicalBlock(scope: !4225, file: !4218, line: 53, column: 5)
!4225 = distinct !DILexicalBlock(scope: !4217, file: !4218, line: 47, column: 7)
!4226 = !DILocation(line: 42, column: 20, scope: !4217)
!4227 = !DILocation(line: 42, column: 30, scope: !4217)
!4228 = !DILocation(line: 47, column: 9, scope: !4225)
!4229 = !DILocation(line: 47, column: 19, scope: !4225)
!4230 = !DILocation(line: 47, column: 14, scope: !4225)
!4231 = !DILocation(line: 56, column: 24, scope: !4224)
!4232 = !DILocation(line: 56, column: 14, scope: !4224)
!4233 = !DILocation(line: 57, column: 17, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4224, file: !4218, line: 57, column: 11)
!4235 = !DILocation(line: 57, column: 21, scope: !4234)
!4236 = !DILocation(line: 57, column: 11, scope: !4224)
!4237 = !DILocation(line: 59, column: 11, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4234, file: !4218, line: 58, column: 9)
!4239 = !DILocation(line: 59, column: 17, scope: !4238)
!4240 = !DILocation(line: 65, column: 12, scope: !4217)
!4241 = !DILocation(line: 44, column: 9, scope: !4217)
!4242 = !DILocation(line: 72, column: 3, scope: !4217)
!4243 = !DILocation(line: 73, column: 1, scope: !4217)
!4244 = distinct !DISubprogram(name: "rpl_fclose", scope: !4245, file: !4245, line: 56, type: !4246, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !4288)
!4245 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!63, !4248}
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !665, line: 7, baseType: !4250)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 241, size: 1728, elements: !4251)
!4251 = !{!4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4250, file: !667, line: 242, baseType: !63, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4250, file: !667, line: 247, baseType: !29, size: 64, offset: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4250, file: !667, line: 248, baseType: !29, size: 64, offset: 128)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4250, file: !667, line: 249, baseType: !29, size: 64, offset: 192)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4250, file: !667, line: 250, baseType: !29, size: 64, offset: 256)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4250, file: !667, line: 251, baseType: !29, size: 64, offset: 320)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4250, file: !667, line: 252, baseType: !29, size: 64, offset: 384)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4250, file: !667, line: 253, baseType: !29, size: 64, offset: 448)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4250, file: !667, line: 254, baseType: !29, size: 64, offset: 512)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4250, file: !667, line: 256, baseType: !29, size: 64, offset: 576)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4250, file: !667, line: 257, baseType: !29, size: 64, offset: 640)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4250, file: !667, line: 258, baseType: !29, size: 64, offset: 704)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4250, file: !667, line: 260, baseType: !4265, size: 64, offset: 768)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !667, line: 156, size: 192, elements: !4267)
!4267 = !{!4268, !4269, !4271}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4266, file: !667, line: 157, baseType: !4265, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4266, file: !667, line: 158, baseType: !4270, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4266, file: !667, line: 162, baseType: !63, size: 32, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4250, file: !667, line: 262, baseType: !4270, size: 64, offset: 832)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4250, file: !667, line: 264, baseType: !63, size: 32, offset: 896)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4250, file: !667, line: 268, baseType: !63, size: 32, offset: 928)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4250, file: !667, line: 270, baseType: !693, size: 64, offset: 960)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4250, file: !667, line: 274, baseType: !140, size: 16, offset: 1024)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4250, file: !667, line: 275, baseType: !86, size: 8, offset: 1040)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4250, file: !667, line: 276, baseType: !699, size: 8, offset: 1048)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4250, file: !667, line: 280, baseType: !703, size: 64, offset: 1088)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4250, file: !667, line: 289, baseType: !706, size: 64, offset: 1152)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4250, file: !667, line: 297, baseType: !31, size: 64, offset: 1216)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4250, file: !667, line: 298, baseType: !31, size: 64, offset: 1280)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4250, file: !667, line: 299, baseType: !31, size: 64, offset: 1344)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4250, file: !667, line: 300, baseType: !31, size: 64, offset: 1408)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4250, file: !667, line: 302, baseType: !141, size: 64, offset: 1472)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4250, file: !667, line: 303, baseType: !63, size: 32, offset: 1536)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4250, file: !667, line: 305, baseType: !714, size: 160, offset: 1568)
!4288 = !{!4289, !4290, !4291, !4292}
!4289 = !DILocalVariable(name: "fp", arg: 1, scope: !4244, file: !4245, line: 56, type: !4248)
!4290 = !DILocalVariable(name: "saved_errno", scope: !4244, file: !4245, line: 58, type: !63)
!4291 = !DILocalVariable(name: "fd", scope: !4244, file: !4245, line: 59, type: !63)
!4292 = !DILocalVariable(name: "result", scope: !4244, file: !4245, line: 60, type: !63)
!4293 = !DILocation(line: 56, column: 19, scope: !4244)
!4294 = !DILocation(line: 58, column: 7, scope: !4244)
!4295 = !DILocation(line: 60, column: 7, scope: !4244)
!4296 = !DILocation(line: 63, column: 8, scope: !4244)
!4297 = !DILocation(line: 59, column: 7, scope: !4244)
!4298 = !DILocation(line: 64, column: 10, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4244, file: !4245, line: 64, column: 7)
!4300 = !DILocation(line: 64, column: 7, scope: !4244)
!4301 = !DILocation(line: 65, column: 12, scope: !4299)
!4302 = !DILocation(line: 65, column: 5, scope: !4299)
!4303 = !DILocation(line: 70, column: 9, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4244, file: !4245, line: 70, column: 7)
!4305 = !DILocation(line: 70, column: 23, scope: !4304)
!4306 = !DILocation(line: 70, column: 33, scope: !4304)
!4307 = !DILocation(line: 70, column: 26, scope: !4304)
!4308 = !DILocation(line: 70, column: 59, scope: !4304)
!4309 = !DILocation(line: 71, column: 7, scope: !4304)
!4310 = !DILocation(line: 71, column: 10, scope: !4304)
!4311 = !DILocation(line: 70, column: 7, scope: !4244)
!4312 = !DILocation(line: 98, column: 12, scope: !4244)
!4313 = !DILocation(line: 103, column: 7, scope: !4244)
!4314 = !DILocation(line: 72, column: 19, scope: !4304)
!4315 = !DILocation(line: 103, column: 19, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4244, file: !4245, line: 103, column: 7)
!4317 = !DILocation(line: 105, column: 13, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4316, file: !4245, line: 104, column: 5)
!4319 = !DILocation(line: 107, column: 5, scope: !4318)
!4320 = !DILocation(line: 110, column: 1, scope: !4244)
!4321 = distinct !DISubprogram(name: "rpl_fflush", scope: !4322, file: !4322, line: 127, type: !4323, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !4365)
!4322 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!63, !4325}
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !665, line: 7, baseType: !4327)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 241, size: 1728, elements: !4328)
!4328 = !{!4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4327, file: !667, line: 242, baseType: !63, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4327, file: !667, line: 247, baseType: !29, size: 64, offset: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4327, file: !667, line: 248, baseType: !29, size: 64, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4327, file: !667, line: 249, baseType: !29, size: 64, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4327, file: !667, line: 250, baseType: !29, size: 64, offset: 256)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4327, file: !667, line: 251, baseType: !29, size: 64, offset: 320)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4327, file: !667, line: 252, baseType: !29, size: 64, offset: 384)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4327, file: !667, line: 253, baseType: !29, size: 64, offset: 448)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4327, file: !667, line: 254, baseType: !29, size: 64, offset: 512)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4327, file: !667, line: 256, baseType: !29, size: 64, offset: 576)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4327, file: !667, line: 257, baseType: !29, size: 64, offset: 640)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4327, file: !667, line: 258, baseType: !29, size: 64, offset: 704)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4327, file: !667, line: 260, baseType: !4342, size: 64, offset: 768)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !667, line: 156, size: 192, elements: !4344)
!4344 = !{!4345, !4346, !4348}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4343, file: !667, line: 157, baseType: !4342, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4343, file: !667, line: 158, baseType: !4347, size: 64, offset: 64)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4343, file: !667, line: 162, baseType: !63, size: 32, offset: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4327, file: !667, line: 262, baseType: !4347, size: 64, offset: 832)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4327, file: !667, line: 264, baseType: !63, size: 32, offset: 896)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4327, file: !667, line: 268, baseType: !63, size: 32, offset: 928)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4327, file: !667, line: 270, baseType: !693, size: 64, offset: 960)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4327, file: !667, line: 274, baseType: !140, size: 16, offset: 1024)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4327, file: !667, line: 275, baseType: !86, size: 8, offset: 1040)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4327, file: !667, line: 276, baseType: !699, size: 8, offset: 1048)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4327, file: !667, line: 280, baseType: !703, size: 64, offset: 1088)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4327, file: !667, line: 289, baseType: !706, size: 64, offset: 1152)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4327, file: !667, line: 297, baseType: !31, size: 64, offset: 1216)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4327, file: !667, line: 298, baseType: !31, size: 64, offset: 1280)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4327, file: !667, line: 299, baseType: !31, size: 64, offset: 1344)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4327, file: !667, line: 300, baseType: !31, size: 64, offset: 1408)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4327, file: !667, line: 302, baseType: !141, size: 64, offset: 1472)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4327, file: !667, line: 303, baseType: !63, size: 32, offset: 1536)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4327, file: !667, line: 305, baseType: !714, size: 160, offset: 1568)
!4365 = !{!4366}
!4366 = !DILocalVariable(name: "stream", arg: 1, scope: !4321, file: !4322, line: 127, type: !4325)
!4367 = !DILocation(line: 127, column: 19, scope: !4321)
!4368 = !DILocation(line: 148, column: 14, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4321, file: !4322, line: 148, column: 7)
!4370 = !DILocation(line: 148, column: 22, scope: !4369)
!4371 = !DILocation(line: 148, column: 27, scope: !4369)
!4372 = !DILocation(line: 148, column: 7, scope: !4321)
!4373 = !DILocation(line: 149, column: 12, scope: !4369)
!4374 = !DILocation(line: 149, column: 5, scope: !4369)
!4375 = !DILocalVariable(name: "fp", arg: 1, scope: !4376, file: !4322, line: 40, type: !4325)
!4376 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4322, file: !4322, line: 40, type: !4377, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !4379)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{null, !4325}
!4379 = !{!4375}
!4380 = !DILocation(line: 40, column: 48, scope: !4376, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 153, column: 3, scope: !4321)
!4382 = !DILocation(line: 42, column: 11, scope: !4383, inlinedAt: !4381)
!4383 = distinct !DILexicalBlock(scope: !4376, file: !4322, line: 42, column: 7)
!4384 = !DILocation(line: 42, column: 18, scope: !4383, inlinedAt: !4381)
!4385 = !DILocation(line: 42, column: 7, scope: !4376, inlinedAt: !4381)
!4386 = !DILocation(line: 44, column: 5, scope: !4383, inlinedAt: !4381)
!4387 = !DILocation(line: 155, column: 10, scope: !4321)
!4388 = !DILocation(line: 155, column: 3, scope: !4321)
!4389 = !DILocation(line: 229, column: 1, scope: !4321)
!4390 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4391, file: !4391, line: 28, type: !4392, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !4434)
!4391 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!63, !4394, !1718, !63}
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !665, line: 7, baseType: !4396)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 241, size: 1728, elements: !4397)
!4397 = !{!4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4396, file: !667, line: 242, baseType: !63, size: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4396, file: !667, line: 247, baseType: !29, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4396, file: !667, line: 248, baseType: !29, size: 64, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4396, file: !667, line: 249, baseType: !29, size: 64, offset: 192)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4396, file: !667, line: 250, baseType: !29, size: 64, offset: 256)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4396, file: !667, line: 251, baseType: !29, size: 64, offset: 320)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4396, file: !667, line: 252, baseType: !29, size: 64, offset: 384)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4396, file: !667, line: 253, baseType: !29, size: 64, offset: 448)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4396, file: !667, line: 254, baseType: !29, size: 64, offset: 512)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4396, file: !667, line: 256, baseType: !29, size: 64, offset: 576)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4396, file: !667, line: 257, baseType: !29, size: 64, offset: 640)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4396, file: !667, line: 258, baseType: !29, size: 64, offset: 704)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4396, file: !667, line: 260, baseType: !4411, size: 64, offset: 768)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !667, line: 156, size: 192, elements: !4413)
!4413 = !{!4414, !4415, !4417}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4412, file: !667, line: 157, baseType: !4411, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4412, file: !667, line: 158, baseType: !4416, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4412, file: !667, line: 162, baseType: !63, size: 32, offset: 128)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4396, file: !667, line: 262, baseType: !4416, size: 64, offset: 832)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4396, file: !667, line: 264, baseType: !63, size: 32, offset: 896)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4396, file: !667, line: 268, baseType: !63, size: 32, offset: 928)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4396, file: !667, line: 270, baseType: !693, size: 64, offset: 960)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4396, file: !667, line: 274, baseType: !140, size: 16, offset: 1024)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4396, file: !667, line: 275, baseType: !86, size: 8, offset: 1040)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4396, file: !667, line: 276, baseType: !699, size: 8, offset: 1048)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4396, file: !667, line: 280, baseType: !703, size: 64, offset: 1088)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4396, file: !667, line: 289, baseType: !706, size: 64, offset: 1152)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4396, file: !667, line: 297, baseType: !31, size: 64, offset: 1216)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4396, file: !667, line: 298, baseType: !31, size: 64, offset: 1280)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4396, file: !667, line: 299, baseType: !31, size: 64, offset: 1344)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4396, file: !667, line: 300, baseType: !31, size: 64, offset: 1408)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4396, file: !667, line: 302, baseType: !141, size: 64, offset: 1472)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4396, file: !667, line: 303, baseType: !63, size: 32, offset: 1536)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4396, file: !667, line: 305, baseType: !714, size: 160, offset: 1568)
!4434 = !{!4435, !4436, !4437, !4438}
!4435 = !DILocalVariable(name: "fp", arg: 1, scope: !4390, file: !4391, line: 28, type: !4394)
!4436 = !DILocalVariable(name: "offset", arg: 2, scope: !4390, file: !4391, line: 28, type: !1718)
!4437 = !DILocalVariable(name: "whence", arg: 3, scope: !4390, file: !4391, line: 28, type: !63)
!4438 = !DILocalVariable(name: "pos", scope: !4439, file: !4391, line: 116, type: !1718)
!4439 = distinct !DILexicalBlock(scope: !4440, file: !4391, line: 112, column: 5)
!4440 = distinct !DILexicalBlock(scope: !4390, file: !4391, line: 51, column: 7)
!4441 = !DILocation(line: 28, column: 15, scope: !4390)
!4442 = !DILocation(line: 28, column: 25, scope: !4390)
!4443 = !DILocation(line: 28, column: 37, scope: !4390)
!4444 = !DILocation(line: 51, column: 11, scope: !4440)
!4445 = !{!905, !621, i64 16}
!4446 = !DILocation(line: 51, column: 31, scope: !4440)
!4447 = !{!905, !621, i64 8}
!4448 = !DILocation(line: 51, column: 24, scope: !4440)
!4449 = !DILocation(line: 52, column: 7, scope: !4440)
!4450 = !DILocation(line: 52, column: 14, scope: !4440)
!4451 = !DILocation(line: 52, column: 35, scope: !4440)
!4452 = !{!905, !621, i64 32}
!4453 = !DILocation(line: 52, column: 28, scope: !4440)
!4454 = !DILocation(line: 53, column: 7, scope: !4440)
!4455 = !DILocation(line: 53, column: 14, scope: !4440)
!4456 = !{!905, !621, i64 72}
!4457 = !DILocation(line: 53, column: 28, scope: !4440)
!4458 = !DILocation(line: 51, column: 7, scope: !4390)
!4459 = !DILocation(line: 116, column: 26, scope: !4439)
!4460 = !DILocation(line: 116, column: 19, scope: !4439)
!4461 = !DILocation(line: 116, column: 13, scope: !4439)
!4462 = !DILocation(line: 117, column: 15, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4439, file: !4391, line: 117, column: 11)
!4464 = !DILocation(line: 117, column: 11, scope: !4439)
!4465 = !DILocation(line: 127, column: 11, scope: !4439)
!4466 = !DILocation(line: 127, column: 18, scope: !4439)
!4467 = !DILocation(line: 128, column: 11, scope: !4439)
!4468 = !DILocation(line: 128, column: 19, scope: !4439)
!4469 = !{!905, !867, i64 144}
!4470 = !DILocation(line: 159, column: 7, scope: !4439)
!4471 = !DILocation(line: 161, column: 10, scope: !4390)
!4472 = !DILocation(line: 161, column: 3, scope: !4390)
!4473 = !DILocation(line: 162, column: 1, scope: !4390)
!4474 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4475, file: !4475, line: 334, type: !4476, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !4490)
!4475 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!141, !4478, !40, !141, !4479}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2022, line: 6, baseType: !4481)
!4481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2024, line: 21, baseType: !4482)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2024, line: 13, size: 64, elements: !4483)
!4483 = !{!4484, !4485}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4482, file: !2024, line: 15, baseType: !63, size: 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4482, file: !2024, line: 20, baseType: !4486, size: 32, offset: 32)
!4486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4482, file: !2024, line: 16, size: 32, elements: !4487)
!4487 = !{!4488, !4489}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4486, file: !2024, line: 18, baseType: !160, size: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4486, file: !2024, line: 19, baseType: !743, size: 32)
!4490 = !{!4491, !4492, !4493, !4494, !4495, !4496, !4497}
!4491 = !DILocalVariable(name: "pwc", arg: 1, scope: !4474, file: !4475, line: 334, type: !4478)
!4492 = !DILocalVariable(name: "s", arg: 2, scope: !4474, file: !4475, line: 334, type: !40)
!4493 = !DILocalVariable(name: "n", arg: 3, scope: !4474, file: !4475, line: 334, type: !141)
!4494 = !DILocalVariable(name: "ps", arg: 4, scope: !4474, file: !4475, line: 334, type: !4479)
!4495 = !DILocalVariable(name: "ret", scope: !4474, file: !4475, line: 336, type: !141)
!4496 = !DILocalVariable(name: "wc", scope: !4474, file: !4475, line: 337, type: !2035)
!4497 = !DILocalVariable(name: "uc", scope: !4498, file: !4475, line: 398, type: !32)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !4475, line: 397, column: 5)
!4499 = distinct !DILexicalBlock(scope: !4474, file: !4475, line: 396, column: 7)
!4500 = !DILocation(line: 334, column: 23, scope: !4474)
!4501 = !DILocation(line: 334, column: 40, scope: !4474)
!4502 = !DILocation(line: 334, column: 50, scope: !4474)
!4503 = !DILocation(line: 334, column: 64, scope: !4474)
!4504 = !DILocation(line: 337, column: 3, scope: !4474)
!4505 = !DILocation(line: 353, column: 9, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4474, file: !4475, line: 353, column: 7)
!4507 = !DILocation(line: 353, column: 7, scope: !4474)
!4508 = !DILocation(line: 388, column: 9, scope: !4474)
!4509 = !DILocation(line: 336, column: 10, scope: !4474)
!4510 = !DILocation(line: 396, column: 19, scope: !4499)
!4511 = !DILocation(line: 396, column: 31, scope: !4499)
!4512 = !DILocation(line: 396, column: 26, scope: !4499)
!4513 = !DILocation(line: 396, column: 41, scope: !4499)
!4514 = !DILocation(line: 396, column: 7, scope: !4474)
!4515 = !DILocation(line: 398, column: 26, scope: !4498)
!4516 = !DILocation(line: 398, column: 21, scope: !4498)
!4517 = !DILocation(line: 399, column: 14, scope: !4498)
!4518 = !DILocation(line: 399, column: 12, scope: !4498)
!4519 = !DILocation(line: 405, column: 1, scope: !4474)
!4520 = distinct !DISubprogram(name: "close_stream", scope: !4521, file: !4521, line: 56, type: !4522, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !4564)
!4521 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!63, !4524}
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !665, line: 7, baseType: !4526)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 241, size: 1728, elements: !4527)
!4527 = !{!4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4526, file: !667, line: 242, baseType: !63, size: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4526, file: !667, line: 247, baseType: !29, size: 64, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4526, file: !667, line: 248, baseType: !29, size: 64, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4526, file: !667, line: 249, baseType: !29, size: 64, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4526, file: !667, line: 250, baseType: !29, size: 64, offset: 256)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4526, file: !667, line: 251, baseType: !29, size: 64, offset: 320)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4526, file: !667, line: 252, baseType: !29, size: 64, offset: 384)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4526, file: !667, line: 253, baseType: !29, size: 64, offset: 448)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4526, file: !667, line: 254, baseType: !29, size: 64, offset: 512)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4526, file: !667, line: 256, baseType: !29, size: 64, offset: 576)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4526, file: !667, line: 257, baseType: !29, size: 64, offset: 640)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4526, file: !667, line: 258, baseType: !29, size: 64, offset: 704)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4526, file: !667, line: 260, baseType: !4541, size: 64, offset: 768)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !667, line: 156, size: 192, elements: !4543)
!4543 = !{!4544, !4545, !4547}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4542, file: !667, line: 157, baseType: !4541, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4542, file: !667, line: 158, baseType: !4546, size: 64, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4542, file: !667, line: 162, baseType: !63, size: 32, offset: 128)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4526, file: !667, line: 262, baseType: !4546, size: 64, offset: 832)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4526, file: !667, line: 264, baseType: !63, size: 32, offset: 896)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4526, file: !667, line: 268, baseType: !63, size: 32, offset: 928)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4526, file: !667, line: 270, baseType: !693, size: 64, offset: 960)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4526, file: !667, line: 274, baseType: !140, size: 16, offset: 1024)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4526, file: !667, line: 275, baseType: !86, size: 8, offset: 1040)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4526, file: !667, line: 276, baseType: !699, size: 8, offset: 1048)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4526, file: !667, line: 280, baseType: !703, size: 64, offset: 1088)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4526, file: !667, line: 289, baseType: !706, size: 64, offset: 1152)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4526, file: !667, line: 297, baseType: !31, size: 64, offset: 1216)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4526, file: !667, line: 298, baseType: !31, size: 64, offset: 1280)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4526, file: !667, line: 299, baseType: !31, size: 64, offset: 1344)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4526, file: !667, line: 300, baseType: !31, size: 64, offset: 1408)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4526, file: !667, line: 302, baseType: !141, size: 64, offset: 1472)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4526, file: !667, line: 303, baseType: !63, size: 32, offset: 1536)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4526, file: !667, line: 305, baseType: !714, size: 160, offset: 1568)
!4564 = !{!4565, !4566, !4568, !4569}
!4565 = !DILocalVariable(name: "stream", arg: 1, scope: !4520, file: !4521, line: 56, type: !4524)
!4566 = !DILocalVariable(name: "some_pending", scope: !4520, file: !4521, line: 58, type: !4567)
!4567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!4568 = !DILocalVariable(name: "prev_fail", scope: !4520, file: !4521, line: 59, type: !4567)
!4569 = !DILocalVariable(name: "fclose_fail", scope: !4520, file: !4521, line: 60, type: !4567)
!4570 = !DILocation(line: 56, column: 21, scope: !4520)
!4571 = !DILocation(line: 58, column: 30, scope: !4520)
!4572 = !DILocalVariable(name: "__stream", arg: 1, scope: !4573, file: !896, line: 132, type: !4524)
!4573 = distinct !DISubprogram(name: "ferror_unlocked", scope: !896, file: !896, line: 132, type: !4522, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !4574)
!4574 = !{!4572}
!4575 = !DILocation(line: 132, column: 1, scope: !4573, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 59, column: 27, scope: !4520)
!4577 = !DILocation(line: 134, column: 10, scope: !4573, inlinedAt: !4576)
!4578 = !DILocation(line: 59, column: 43, scope: !4520)
!4579 = !DILocation(line: 60, column: 29, scope: !4520)
!4580 = !DILocation(line: 60, column: 45, scope: !4520)
!4581 = !DILocation(line: 70, column: 17, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4520, file: !4521, line: 70, column: 7)
!4583 = !DILocation(line: 58, column: 50, scope: !4520)
!4584 = !DILocation(line: 70, column: 33, scope: !4582)
!4585 = !DILocation(line: 70, column: 53, scope: !4582)
!4586 = !DILocation(line: 70, column: 59, scope: !4582)
!4587 = !DILocation(line: 70, column: 7, scope: !4520)
!4588 = !DILocation(line: 72, column: 11, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4582, file: !4521, line: 71, column: 5)
!4590 = !DILocation(line: 73, column: 9, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4589, file: !4521, line: 72, column: 11)
!4592 = !DILocation(line: 73, column: 15, scope: !4591)
!4593 = !DILocation(line: 78, column: 1, scope: !4520)
!4594 = distinct !DISubprogram(name: "hard_locale", scope: !4595, file: !4595, line: 38, type: !4596, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !4598)
!4595 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!100, !63}
!4598 = !{!4599, !4600, !4601}
!4599 = !DILocalVariable(name: "category", arg: 1, scope: !4594, file: !4595, line: 38, type: !63)
!4600 = !DILocalVariable(name: "hard", scope: !4594, file: !4595, line: 40, type: !100)
!4601 = !DILocalVariable(name: "p", scope: !4594, file: !4595, line: 41, type: !40)
!4602 = !DILocation(line: 38, column: 18, scope: !4594)
!4603 = !DILocation(line: 40, column: 8, scope: !4594)
!4604 = !DILocation(line: 41, column: 19, scope: !4594)
!4605 = !DILocation(line: 41, column: 15, scope: !4594)
!4606 = !DILocation(line: 43, column: 7, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4594, file: !4595, line: 43, column: 7)
!4608 = !DILocation(line: 43, column: 7, scope: !4594)
!4609 = !DILocation(line: 47, column: 15, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !4595, line: 47, column: 15)
!4611 = distinct !DILexicalBlock(scope: !4612, file: !4595, line: 46, column: 9)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !4595, line: 45, column: 11)
!4613 = distinct !DILexicalBlock(scope: !4607, file: !4595, line: 44, column: 5)
!4614 = !DILocation(line: 47, column: 31, scope: !4610)
!4615 = !DILocation(line: 47, column: 36, scope: !4610)
!4616 = !DILocation(line: 47, column: 39, scope: !4610)
!4617 = !DILocation(line: 47, column: 59, scope: !4610)
!4618 = !DILocation(line: 47, column: 15, scope: !4611)
!4619 = !DILocation(line: 48, column: 13, scope: !4610)
!4620 = !DILocation(line: 71, column: 3, scope: !4594)
!4621 = distinct !DISubprogram(name: "locale_charset", scope: !540, file: !540, line: 393, type: !4622, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !196, variables: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!40}
!4624 = !{!4625, !4626}
!4625 = !DILocalVariable(name: "codeset", scope: !4621, file: !540, line: 395, type: !40)
!4626 = !DILocalVariable(name: "aliases", scope: !4621, file: !540, line: 396, type: !40)
!4627 = !DILocalVariable(name: "buf1", scope: !4628, file: !540, line: 196, type: !4695)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !540, line: 194, column: 21)
!4629 = distinct !DILexicalBlock(scope: !4630, file: !540, line: 193, column: 19)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !540, line: 193, column: 19)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !540, line: 188, column: 17)
!4632 = distinct !DILexicalBlock(scope: !4633, file: !540, line: 181, column: 19)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !540, line: 177, column: 13)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !540, line: 173, column: 15)
!4635 = distinct !DILexicalBlock(scope: !4636, file: !540, line: 161, column: 9)
!4636 = distinct !DILexicalBlock(scope: !4637, file: !540, line: 157, column: 11)
!4637 = distinct !DILexicalBlock(scope: !4638, file: !540, line: 130, column: 5)
!4638 = distinct !DILexicalBlock(scope: !4639, file: !540, line: 129, column: 7)
!4639 = distinct !DISubprogram(name: "get_charset_aliases", scope: !540, file: !540, line: 124, type: !4622, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !196, variables: !4640)
!4640 = !{!4641, !4642, !4643, !4644, !4645, !4647, !4648, !4649, !4650, !4691, !4692, !4693, !4627, !4694, !4698, !4699, !4700}
!4641 = !DILocalVariable(name: "cp", scope: !4639, file: !540, line: 126, type: !40)
!4642 = !DILocalVariable(name: "dir", scope: !4637, file: !540, line: 132, type: !40)
!4643 = !DILocalVariable(name: "base", scope: !4637, file: !540, line: 133, type: !40)
!4644 = !DILocalVariable(name: "file_name", scope: !4637, file: !540, line: 134, type: !29)
!4645 = !DILocalVariable(name: "dir_len", scope: !4646, file: !540, line: 144, type: !141)
!4646 = distinct !DILexicalBlock(scope: !4637, file: !540, line: 143, column: 7)
!4647 = !DILocalVariable(name: "base_len", scope: !4646, file: !540, line: 145, type: !141)
!4648 = !DILocalVariable(name: "add_slash", scope: !4646, file: !540, line: 146, type: !63)
!4649 = !DILocalVariable(name: "fd", scope: !4635, file: !540, line: 162, type: !63)
!4650 = !DILocalVariable(name: "fp", scope: !4633, file: !540, line: 178, type: !4651)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !665, line: 7, baseType: !4653)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !667, line: 241, size: 1728, elements: !4654)
!4654 = !{!4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4653, file: !667, line: 242, baseType: !63, size: 32)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4653, file: !667, line: 247, baseType: !29, size: 64, offset: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4653, file: !667, line: 248, baseType: !29, size: 64, offset: 128)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4653, file: !667, line: 249, baseType: !29, size: 64, offset: 192)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4653, file: !667, line: 250, baseType: !29, size: 64, offset: 256)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4653, file: !667, line: 251, baseType: !29, size: 64, offset: 320)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4653, file: !667, line: 252, baseType: !29, size: 64, offset: 384)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4653, file: !667, line: 253, baseType: !29, size: 64, offset: 448)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4653, file: !667, line: 254, baseType: !29, size: 64, offset: 512)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4653, file: !667, line: 256, baseType: !29, size: 64, offset: 576)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4653, file: !667, line: 257, baseType: !29, size: 64, offset: 640)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4653, file: !667, line: 258, baseType: !29, size: 64, offset: 704)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4653, file: !667, line: 260, baseType: !4668, size: 64, offset: 768)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !667, line: 156, size: 192, elements: !4670)
!4670 = !{!4671, !4672, !4674}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4669, file: !667, line: 157, baseType: !4668, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4669, file: !667, line: 158, baseType: !4673, size: 64, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4669, file: !667, line: 162, baseType: !63, size: 32, offset: 128)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4653, file: !667, line: 262, baseType: !4673, size: 64, offset: 832)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4653, file: !667, line: 264, baseType: !63, size: 32, offset: 896)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4653, file: !667, line: 268, baseType: !63, size: 32, offset: 928)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4653, file: !667, line: 270, baseType: !693, size: 64, offset: 960)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4653, file: !667, line: 274, baseType: !140, size: 16, offset: 1024)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4653, file: !667, line: 275, baseType: !86, size: 8, offset: 1040)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4653, file: !667, line: 276, baseType: !699, size: 8, offset: 1048)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4653, file: !667, line: 280, baseType: !703, size: 64, offset: 1088)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4653, file: !667, line: 289, baseType: !706, size: 64, offset: 1152)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4653, file: !667, line: 297, baseType: !31, size: 64, offset: 1216)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4653, file: !667, line: 298, baseType: !31, size: 64, offset: 1280)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4653, file: !667, line: 299, baseType: !31, size: 64, offset: 1344)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4653, file: !667, line: 300, baseType: !31, size: 64, offset: 1408)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4653, file: !667, line: 302, baseType: !141, size: 64, offset: 1472)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4653, file: !667, line: 303, baseType: !63, size: 32, offset: 1536)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4653, file: !667, line: 305, baseType: !714, size: 160, offset: 1568)
!4691 = !DILocalVariable(name: "res_ptr", scope: !4631, file: !540, line: 190, type: !29)
!4692 = !DILocalVariable(name: "res_size", scope: !4631, file: !540, line: 191, type: !141)
!4693 = !DILocalVariable(name: "c", scope: !4628, file: !540, line: 195, type: !63)
!4694 = !DILocalVariable(name: "buf2", scope: !4628, file: !540, line: 197, type: !4695)
!4695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 408, elements: !4696)
!4696 = !{!4697}
!4697 = !DISubrange(count: 51)
!4698 = !DILocalVariable(name: "l1", scope: !4628, file: !540, line: 198, type: !141)
!4699 = !DILocalVariable(name: "l2", scope: !4628, file: !540, line: 198, type: !141)
!4700 = !DILocalVariable(name: "old_res_ptr", scope: !4628, file: !540, line: 199, type: !29)
!4701 = !DILocation(line: 196, column: 28, scope: !4628, inlinedAt: !4702)
!4702 = distinct !DILocation(line: 589, column: 18, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4621, file: !540, line: 589, column: 3)
!4704 = !DILocation(line: 197, column: 28, scope: !4628, inlinedAt: !4702)
!4705 = !DILocation(line: 403, column: 13, scope: !4621)
!4706 = !DILocation(line: 395, column: 15, scope: !4621)
!4707 = !DILocation(line: 584, column: 15, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4621, file: !540, line: 584, column: 7)
!4709 = !DILocation(line: 584, column: 7, scope: !4621)
!4710 = !DILocation(line: 128, column: 8, scope: !4639, inlinedAt: !4702)
!4711 = !DILocation(line: 126, column: 15, scope: !4639, inlinedAt: !4702)
!4712 = !DILocation(line: 129, column: 10, scope: !4638, inlinedAt: !4702)
!4713 = !DILocation(line: 129, column: 7, scope: !4639, inlinedAt: !4702)
!4714 = !DILocation(line: 138, column: 13, scope: !4637, inlinedAt: !4702)
!4715 = !DILocation(line: 132, column: 19, scope: !4637, inlinedAt: !4702)
!4716 = !DILocation(line: 139, column: 15, scope: !4717, inlinedAt: !4702)
!4717 = distinct !DILexicalBlock(scope: !4637, file: !540, line: 139, column: 11)
!4718 = !DILocation(line: 139, column: 23, scope: !4717, inlinedAt: !4702)
!4719 = !DILocation(line: 139, column: 26, scope: !4717, inlinedAt: !4702)
!4720 = !DILocation(line: 139, column: 33, scope: !4717, inlinedAt: !4702)
!4721 = !DILocation(line: 139, column: 11, scope: !4637, inlinedAt: !4702)
!4722 = !DILocation(line: 140, column: 9, scope: !4717, inlinedAt: !4702)
!4723 = !DILocation(line: 144, column: 26, scope: !4646, inlinedAt: !4702)
!4724 = !DILocation(line: 144, column: 16, scope: !4646, inlinedAt: !4702)
!4725 = !DILocation(line: 145, column: 16, scope: !4646, inlinedAt: !4702)
!4726 = !DILocation(line: 146, column: 34, scope: !4646, inlinedAt: !4702)
!4727 = !DILocation(line: 146, column: 38, scope: !4646, inlinedAt: !4702)
!4728 = !DILocation(line: 146, column: 42, scope: !4646, inlinedAt: !4702)
!4729 = !DILocation(line: 147, column: 48, scope: !4646, inlinedAt: !4702)
!4730 = !DILocation(line: 147, column: 46, scope: !4646, inlinedAt: !4702)
!4731 = !DILocation(line: 147, column: 69, scope: !4646, inlinedAt: !4702)
!4732 = !DILocation(line: 147, column: 30, scope: !4646, inlinedAt: !4702)
!4733 = !DILocation(line: 134, column: 13, scope: !4637, inlinedAt: !4702)
!4734 = !DILocation(line: 148, column: 13, scope: !4646, inlinedAt: !4702)
!4735 = !DILocation(line: 150, column: 13, scope: !4736, inlinedAt: !4702)
!4736 = distinct !DILexicalBlock(scope: !4737, file: !540, line: 149, column: 11)
!4737 = distinct !DILexicalBlock(scope: !4646, file: !540, line: 148, column: 13)
!4738 = !DILocation(line: 151, column: 17, scope: !4736, inlinedAt: !4702)
!4739 = !DILocation(line: 152, column: 34, scope: !4740, inlinedAt: !4702)
!4740 = distinct !DILexicalBlock(scope: !4736, file: !540, line: 151, column: 17)
!4741 = !DILocation(line: 153, column: 41, scope: !4736, inlinedAt: !4702)
!4742 = !DILocation(line: 153, column: 13, scope: !4736, inlinedAt: !4702)
!4743 = !DILocation(line: 157, column: 11, scope: !4637, inlinedAt: !4702)
!4744 = !DILocation(line: 171, column: 16, scope: !4635, inlinedAt: !4702)
!4745 = !DILocation(line: 162, column: 15, scope: !4635, inlinedAt: !4702)
!4746 = !DILocation(line: 173, column: 18, scope: !4634, inlinedAt: !4702)
!4747 = !DILocation(line: 173, column: 15, scope: !4635, inlinedAt: !4702)
!4748 = !DILocation(line: 180, column: 20, scope: !4633, inlinedAt: !4702)
!4749 = !DILocation(line: 178, column: 21, scope: !4633, inlinedAt: !4702)
!4750 = !DILocation(line: 181, column: 22, scope: !4632, inlinedAt: !4702)
!4751 = !DILocation(line: 181, column: 19, scope: !4633, inlinedAt: !4702)
!4752 = !DILocation(line: 184, column: 19, scope: !4753, inlinedAt: !4702)
!4753 = distinct !DILexicalBlock(scope: !4632, file: !540, line: 182, column: 17)
!4754 = !DILocation(line: 186, column: 17, scope: !4753, inlinedAt: !4702)
!4755 = !DILocation(line: 190, column: 25, scope: !4631, inlinedAt: !4702)
!4756 = !DILocation(line: 191, column: 26, scope: !4631, inlinedAt: !4702)
!4757 = !DILocation(line: 193, column: 19, scope: !4631, inlinedAt: !4702)
!4758 = !DILocation(line: 196, column: 23, scope: !4628, inlinedAt: !4702)
!4759 = !DILocation(line: 197, column: 23, scope: !4628, inlinedAt: !4702)
!4760 = !DILocalVariable(name: "__fp", arg: 1, scope: !4761, file: !896, line: 63, type: !4651)
!4761 = distinct !DISubprogram(name: "getc_unlocked", scope: !896, file: !896, line: 63, type: !4762, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !196, variables: !4764)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!63, !4651}
!4764 = !{!4760}
!4765 = !DILocation(line: 63, column: 22, scope: !4761, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 201, column: 27, scope: !4628, inlinedAt: !4702)
!4767 = !DILocation(line: 65, column: 10, scope: !4761, inlinedAt: !4766)
!4768 = !DILocation(line: 195, column: 27, scope: !4628, inlinedAt: !4702)
!4769 = !DILocation(line: 202, column: 27, scope: !4628, inlinedAt: !4702)
!4770 = distinct !{!4770, !4771, !4774}
!4771 = !DILocation(line: 209, column: 27, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4773, file: !540, line: 207, column: 25)
!4773 = distinct !DILexicalBlock(scope: !4628, file: !540, line: 206, column: 27)
!4774 = !DILocation(line: 211, column: 58, scope: !4772)
!4775 = !DILocation(line: 65, column: 10, scope: !4761, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 210, column: 33, scope: !4772, inlinedAt: !4702)
!4777 = !DILocation(line: 63, column: 22, scope: !4761, inlinedAt: !4776)
!4778 = !DILocation(line: 210, column: 29, scope: !4772, inlinedAt: !4702)
!4779 = distinct !{!4779, !4780, !4781}
!4780 = !DILocation(line: 193, column: 19, scope: !4630)
!4781 = !DILocation(line: 241, column: 21, scope: !4630)
!4782 = !DILocation(line: 216, column: 23, scope: !4628, inlinedAt: !4702)
!4783 = !DILocation(line: 217, column: 27, scope: !4784, inlinedAt: !4702)
!4784 = distinct !DILexicalBlock(scope: !4628, file: !540, line: 217, column: 27)
!4785 = !DILocation(line: 217, column: 64, scope: !4784, inlinedAt: !4702)
!4786 = !DILocation(line: 217, column: 27, scope: !4628, inlinedAt: !4702)
!4787 = !DILocation(line: 219, column: 28, scope: !4628, inlinedAt: !4702)
!4788 = !DILocation(line: 198, column: 30, scope: !4628, inlinedAt: !4702)
!4789 = !DILocation(line: 220, column: 28, scope: !4628, inlinedAt: !4702)
!4790 = !DILocation(line: 198, column: 34, scope: !4628, inlinedAt: !4702)
!4791 = !DILocation(line: 199, column: 29, scope: !4628, inlinedAt: !4702)
!4792 = !DILocation(line: 222, column: 36, scope: !4793, inlinedAt: !4702)
!4793 = distinct !DILexicalBlock(scope: !4628, file: !540, line: 222, column: 27)
!4794 = !DILocation(line: 222, column: 27, scope: !4628, inlinedAt: !4702)
!4795 = !DILocation(line: 225, column: 63, scope: !4796, inlinedAt: !4702)
!4796 = distinct !DILexicalBlock(scope: !4793, file: !540, line: 223, column: 25)
!4797 = !DILocation(line: 225, column: 46, scope: !4796, inlinedAt: !4702)
!4798 = !DILocation(line: 226, column: 25, scope: !4796, inlinedAt: !4702)
!4799 = !DILocation(line: 229, column: 36, scope: !4800, inlinedAt: !4702)
!4800 = distinct !DILexicalBlock(scope: !4793, file: !540, line: 228, column: 25)
!4801 = !DILocation(line: 230, column: 73, scope: !4800, inlinedAt: !4702)
!4802 = !DILocation(line: 230, column: 46, scope: !4800, inlinedAt: !4702)
!4803 = !DILocation(line: 232, column: 35, scope: !4804, inlinedAt: !4702)
!4804 = distinct !DILexicalBlock(scope: !4628, file: !540, line: 232, column: 27)
!4805 = !DILocation(line: 232, column: 27, scope: !4628, inlinedAt: !4702)
!4806 = !DILocation(line: 236, column: 27, scope: !4807, inlinedAt: !4702)
!4807 = distinct !DILexicalBlock(scope: !4804, file: !540, line: 233, column: 25)
!4808 = !DILocation(line: 237, column: 27, scope: !4807, inlinedAt: !4702)
!4809 = !DILocation(line: 241, column: 21, scope: !4629, inlinedAt: !4702)
!4810 = !DILocation(line: 239, column: 39, scope: !4628, inlinedAt: !4702)
!4811 = !DILocation(line: 239, column: 50, scope: !4628, inlinedAt: !4702)
!4812 = !DILocation(line: 239, column: 61, scope: !4628, inlinedAt: !4702)
!4813 = !DILocalVariable(name: "__dest", arg: 1, scope: !4814, file: !4815, line: 88, type: !1106)
!4814 = distinct !DISubprogram(name: "strcpy", scope: !4815, file: !4815, line: 88, type: !4816, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !196, variables: !4818)
!4815 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!29, !1106, !1105}
!4818 = !{!4813, !4819}
!4819 = !DILocalVariable(name: "__src", arg: 2, scope: !4814, file: !4815, line: 88, type: !1105)
!4820 = !DILocation(line: 88, column: 1, scope: !4814, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 239, column: 23, scope: !4628, inlinedAt: !4702)
!4822 = !DILocation(line: 90, column: 49, scope: !4814, inlinedAt: !4821)
!4823 = !DILocation(line: 90, column: 10, scope: !4814, inlinedAt: !4821)
!4824 = !DILocation(line: 88, column: 1, scope: !4814, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 240, column: 23, scope: !4628, inlinedAt: !4702)
!4826 = !DILocation(line: 90, column: 49, scope: !4814, inlinedAt: !4825)
!4827 = !DILocation(line: 90, column: 10, scope: !4814, inlinedAt: !4825)
!4828 = !DILocation(line: 193, column: 19, scope: !4629, inlinedAt: !4702)
!4829 = !DILocation(line: 242, column: 19, scope: !4631, inlinedAt: !4702)
!4830 = !DILocation(line: 243, column: 32, scope: !4831, inlinedAt: !4702)
!4831 = distinct !DILexicalBlock(scope: !4631, file: !540, line: 243, column: 23)
!4832 = !DILocation(line: 243, column: 23, scope: !4631, inlinedAt: !4702)
!4833 = !DILocation(line: 247, column: 33, scope: !4834, inlinedAt: !4702)
!4834 = distinct !DILexicalBlock(scope: !4831, file: !540, line: 246, column: 21)
!4835 = !DILocation(line: 247, column: 45, scope: !4834, inlinedAt: !4702)
!4836 = !DILocation(line: 253, column: 11, scope: !4635, inlinedAt: !4702)
!4837 = !DILocation(line: 377, column: 23, scope: !4637, inlinedAt: !4702)
!4838 = !DILocation(line: 378, column: 5, scope: !4637, inlinedAt: !4702)
!4839 = !DILocation(line: 396, column: 15, scope: !4621)
!4840 = !DILocation(line: 590, column: 8, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4703, file: !540, line: 589, column: 3)
!4842 = !DILocation(line: 590, column: 17, scope: !4841)
!4843 = !DILocation(line: 589, column: 3, scope: !4703)
!4844 = !DILocation(line: 592, column: 9, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4841, file: !540, line: 592, column: 9)
!4846 = !DILocation(line: 592, column: 35, scope: !4845)
!4847 = !DILocation(line: 593, column: 9, scope: !4845)
!4848 = !DILocation(line: 593, column: 24, scope: !4845)
!4849 = !DILocation(line: 593, column: 31, scope: !4845)
!4850 = !DILocation(line: 593, column: 34, scope: !4845)
!4851 = !DILocation(line: 593, column: 45, scope: !4845)
!4852 = !DILocation(line: 592, column: 9, scope: !4841)
!4853 = !DILocation(line: 595, column: 29, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4845, file: !540, line: 594, column: 7)
!4855 = !DILocation(line: 595, column: 27, scope: !4854)
!4856 = !DILocation(line: 595, column: 46, scope: !4854)
!4857 = !DILocation(line: 596, column: 9, scope: !4854)
!4858 = !DILocation(line: 591, column: 19, scope: !4841)
!4859 = !DILocation(line: 591, column: 36, scope: !4841)
!4860 = !DILocation(line: 591, column: 16, scope: !4841)
!4861 = !DILocation(line: 591, column: 52, scope: !4841)
!4862 = !DILocation(line: 591, column: 69, scope: !4841)
!4863 = !DILocation(line: 591, column: 49, scope: !4841)
!4864 = distinct !{!4864, !4843, !4865}
!4865 = !DILocation(line: 597, column: 7, scope: !4703)
!4866 = !DILocation(line: 602, column: 7, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4621, file: !540, line: 602, column: 7)
!4868 = !DILocation(line: 602, column: 18, scope: !4867)
!4869 = !DILocation(line: 602, column: 7, scope: !4621)
!4870 = !DILocation(line: 612, column: 3, scope: !4621)
