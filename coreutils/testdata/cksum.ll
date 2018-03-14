; ModuleID = 'coreutils-8.27/src/cksum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [FILE]...\0A  or:  %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Print CRC checksum and byte counts of each FILE.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.23 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Q. Frank Xia\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@crctab = internal unnamed_addr constant [256 x i64] [i64 0, i64 79764919, i64 159529838, i64 222504665, i64 319059676, i64 398814059, i64 445009330, i64 507990021, i64 638119352, i64 583659535, i64 797628118, i64 726387553, i64 890018660, i64 835552979, i64 1015980042, i64 944750013, i64 1276238704, i64 1221641927, i64 1167319070, i64 1095957929, i64 1595256236, i64 1540665371, i64 1452775106, i64 1381403509, i64 1780037320, i64 1859660671, i64 1671105958, i64 1733955601, i64 2031960084, i64 2111593891, i64 1889500026, i64 1952343757, i64 2552477408, i64 2632100695, i64 2443283854, i64 2506133561, i64 2334638140, i64 2414271883, i64 2191915858, i64 2254759653, i64 3190512472, i64 3135915759, i64 3081330742, i64 3009969537, i64 2905550212, i64 2850959411, i64 2762807018, i64 2691435357, i64 3560074640, i64 3505614887, i64 3719321342, i64 3648080713, i64 3342211916, i64 3287746299, i64 3467911202, i64 3396681109, i64 4063920168, i64 4143685023, i64 4223187782, i64 4286162673, i64 3779000052, i64 3858754371, i64 3904687514, i64 3967668269, i64 881225847, i64 809987520, i64 1023691545, i64 969234094, i64 662832811, i64 591600412, i64 771767749, i64 717299826, i64 311336399, i64 374308984, i64 453813921, i64 533576470, i64 25881363, i64 88864420, i64 134795389, i64 214552010, i64 2023205639, i64 2086057648, i64 1897238633, i64 1976864222, i64 1804852699, i64 1867694188, i64 1645340341, i64 1724971778, i64 1587496639, i64 1516133128, i64 1461550545, i64 1406951526, i64 1302016099, i64 1230646740, i64 1142491917, i64 1087903418, i64 2896545431, i64 2825181984, i64 2770861561, i64 2716262478, i64 3215044683, i64 3143675388, i64 3055782693, i64 3001194130, i64 2326604591, i64 2389456536, i64 2200899649, i64 2280525302, i64 2578013683, i64 2640855108, i64 2418763421, i64 2498394922, i64 3769900519, i64 3832873040, i64 3912640137, i64 3992402750, i64 4088425275, i64 4151408268, i64 4197601365, i64 4277358050, i64 3334271071, i64 3263032808, i64 3476998961, i64 3422541446, i64 3585640067, i64 3514407732, i64 3694837229, i64 3640369242, i64 1762451694, i64 1842216281, i64 1619975040, i64 1682949687, i64 2047383090, i64 2127137669, i64 1938468188, i64 2001449195, i64 1325665622, i64 1271206113, i64 1183200824, i64 1111960463, i64 1543535498, i64 1489069629, i64 1434599652, i64 1363369299, i64 622672798, i64 568075817, i64 748617968, i64 677256519, i64 907627842, i64 853037301, i64 1067152940, i64 995781531, i64 51762726, i64 131386257, i64 177728840, i64 240578815, i64 269590778, i64 349224269, i64 429104020, i64 491947555, i64 4046411278, i64 4126034873, i64 4172115296, i64 4234965207, i64 3794477266, i64 3874110821, i64 3953728444, i64 4016571915, i64 3609705398, i64 3555108353, i64 3735388376, i64 3664026991, i64 3290680682, i64 3236090077, i64 3449943556, i64 3378572211, i64 3174993278, i64 3120533705, i64 3032266256, i64 2961025959, i64 2923101090, i64 2868635157, i64 2813903052, i64 2742672763, i64 2604032198, i64 2683796849, i64 2461293480, i64 2524268063, i64 2284983834, i64 2364738477, i64 2175806836, i64 2238787779, i64 1569362073, i64 1498123566, i64 1409854455, i64 1355396672, i64 1317987909, i64 1246755826, i64 1192025387, i64 1137557660, i64 2072149281, i64 2135122070, i64 1912620623, i64 1992383480, i64 1753615357, i64 1816598090, i64 1627664531, i64 1707420964, i64 295390185, i64 358241886, i64 404320391, i64 483945776, i64 43990325, i64 106832002, i64 186451547, i64 266083308, i64 932423249, i64 861060070, i64 1041341759, i64 986742920, i64 613929101, i64 542559546, i64 756411363, i64 701822548, i64 3316196985, i64 3244833742, i64 3425377559, i64 3370778784, i64 3601682597, i64 3530312978, i64 3744426955, i64 3689838204, i64 3819031489, i64 3881883254, i64 3928223919, i64 4007849240, i64 4037393693, i64 4100235434, i64 4180117107, i64 4259748804, i64 2310601993, i64 2373574846, i64 2151335527, i64 2231098320, i64 2596047829, i64 2659030626, i64 2470359227, i64 2550115596, i64 2947551409, i64 2876312838, i64 2788305887, i64 2733848168, i64 3165939309, i64 3094707162, i64 3040238851, i64 2985771188], align 16, !dbg !0
@.str.29 = private unnamed_addr constant [18 x i8] c"%s: file too long\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%u %s %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%u %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"-: %s\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), align 8, !dbg !65
@.str.11 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !71
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !76
@.str.14 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.15 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !79
@opterr = external local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.35, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.36, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !87
@.str.1.35 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !105
@.str.41 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.42 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.43 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.46, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.47, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.48, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.53, i32 0, i32 0), i8* null], align 16, !dbg !113
@.str.44 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.45 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.46 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.47 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.48 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.49 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.50 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.51 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.52 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.53 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !143
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !150
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !162
@.str.11.54 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.55 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.56 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !167
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !174
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !164
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !176
@.str.61 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.63 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.64 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.65 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.66 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.67 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.68 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.69 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.70 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.71 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.72 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.73 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.76 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.77 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.78 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.79 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.80 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !182
@.str.1.91 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.108 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.111 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !191
@.str.3.112 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.113 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.114 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.115 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.116 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !597 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !601, metadata !602), !dbg !603
  %2 = icmp eq i32 %0, 0, !dbg !604
  br i1 %2, label %8, label %3, !dbg !606

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !607, !tbaa !609
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !607
  %6 = load i8*, i8** @program_name, align 8, !dbg !607, !tbaa !609
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !607
  br label %36, !dbg !607

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !613
  %10 = load i8*, i8** @program_name, align 8, !dbg !613, !tbaa !609
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !613
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !615
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !615, !tbaa !609
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !615
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !616
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !609
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !616
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !617
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !617, !tbaa !609
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !617
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !46, metadata !602) #10, !dbg !618
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !46, metadata !602) #10, !dbg !618
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !620
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !620
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !621
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !54, metadata !602) #10, !dbg !622
  %24 = icmp eq i8* %23, null, !dbg !623
  br i1 %24, label %31, label %25, !dbg !625

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 3) #14, !dbg !626
  %27 = icmp eq i32 %26, 0, !dbg !626
  br i1 %27, label %31, label %28, !dbg !627

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !628
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !628
  br label %31, !dbg !630

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !631
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !631
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !632
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !632
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #15, !dbg !633
  unreachable, !dbg !633
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !634 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !639, metadata !602), !dbg !643
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !640, metadata !602), !dbg !644
  %3 = load i8*, i8** %1, align 8, !dbg !645, !tbaa !609
  tail call void @set_program_name(i8* %3) #10, !dbg !646
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !647
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !648
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !649
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !650
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651, !tbaa !609
  %9 = tail call i32 @setvbuf(%struct._IO_FILE* %8, i8* null, i32 1, i64 0) #10, !dbg !652
  %10 = load i8*, i8** @Version, align 8, !dbg !653, !tbaa !609
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %10, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* null) #10, !dbg !654
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !655
  %12 = icmp eq i32 %11, -1, !dbg !657
  br i1 %12, label %14, label %13, !dbg !658

; <label>:13:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !659
  unreachable, !dbg !659

; <label>:14:                                     ; preds = %2
  store i1 false, i1* @have_read_stdin, align 1
  %15 = load i32, i32* @optind, align 4, !dbg !660, !tbaa !662
  %16 = icmp eq i32 %15, %0, !dbg !664
  br i1 %16, label %17, label %20, !dbg !665

; <label>:17:                                     ; preds = %14
  %18 = tail call fastcc zeroext i1 @cksum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i1 zeroext false), !dbg !666
  %19 = zext i1 %18 to i8, !dbg !667
  tail call void @llvm.dbg.value(metadata i8 %19, i64 0, metadata !642, metadata !602), !dbg !668
  br label %35, !dbg !669

; <label>:20:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !642, metadata !602), !dbg !668
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !641, metadata !602), !dbg !670
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !642, metadata !602), !dbg !668
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !641, metadata !602), !dbg !670
  %21 = icmp slt i32 %15, %0, !dbg !671
  br i1 %21, label %22, label %45, !dbg !675

; <label>:22:                                     ; preds = %20
  %23 = sext i32 %15 to i64, !dbg !675
  br label %24, !dbg !675

; <label>:24:                                     ; preds = %24, %22
  %25 = phi i64 [ %23, %22 ], [ %32, %24 ]
  %26 = phi i8 [ 1, %22 ], [ %31, %24 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !641, metadata !602), !dbg !670
  tail call void @llvm.dbg.value(metadata i8 %26, i64 0, metadata !642, metadata !602), !dbg !668
  %27 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !676
  %28 = load i8*, i8** %27, align 8, !dbg !676, !tbaa !609
  %29 = tail call fastcc zeroext i1 @cksum(i8* %28, i1 zeroext true), !dbg !677
  %30 = zext i1 %29 to i8, !dbg !677
  %31 = and i8 %26, %30, !dbg !678
  tail call void @llvm.dbg.value(metadata i8 %31, i64 0, metadata !642, metadata !602), !dbg !668
  %32 = add nsw i64 %25, 1, !dbg !679
  tail call void @llvm.dbg.value(metadata i8 %31, i64 0, metadata !642, metadata !602), !dbg !668
  %33 = trunc i64 %32 to i32, !dbg !671
  %34 = icmp eq i32 %33, %0, !dbg !671
  br i1 %34, label %35, label %24, !dbg !675, !llvm.loop !680

; <label>:35:                                     ; preds = %24, %17
  %36 = phi i8 [ %19, %17 ], [ %31, %24 ]
  %37 = load i1, i1* @have_read_stdin, align 1
  tail call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !642, metadata !602), !dbg !668
  br i1 %37, label %38, label %45, !dbg !682

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !684, !tbaa !609
  %40 = tail call i32 @rpl_fclose(%struct._IO_FILE* %39) #10, !dbg !685
  %41 = icmp eq i32 %40, -1, !dbg !686
  br i1 %41, label %42, label %45, !dbg !687

; <label>:42:                                     ; preds = %38
  %43 = tail call i32* @__errno_location() #17, !dbg !688
  %44 = load i32, i32* %43, align 4, !dbg !688, !tbaa !662
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !688
  unreachable, !dbg !688

; <label>:45:                                     ; preds = %20, %38, %35
  %46 = phi i8 [ %36, %38 ], [ %36, %35 ], [ 1, %20 ]
  %47 = and i8 %46, 1, !dbg !689
  %48 = xor i8 %47, 1, !dbg !689
  %49 = zext i8 %48 to i32, !dbg !689
  ret i32 %49, !dbg !690
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @cksum(i8*, i1 zeroext) unnamed_addr #6 !dbg !691 {
  %3 = alloca [65536 x i8], align 16
  %4 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !695, metadata !602), !dbg !766
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !696, metadata !602), !dbg !767
  %5 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 0, !dbg !768
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %5) #10, !dbg !768
  tail call void @llvm.dbg.declare(metadata [65536 x i8]* %3, metadata !697, metadata !602), !dbg !769
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !701, metadata !602), !dbg !770
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !702, metadata !602), !dbg !771
  %6 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0, !dbg !772
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %6) #10, !dbg !772
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %4, metadata !759, metadata !602), !dbg !773
  %7 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !774
  %8 = icmp eq i32 %7, 0, !dbg !774
  br i1 %8, label %9, label %11, !dbg !776

; <label>:9:                                      ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !777, !tbaa !609
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, i64 0, metadata !704, metadata !602), !dbg !779
  store i1 true, i1* @have_read_stdin, align 1
  br label %18, !dbg !780

; <label>:11:                                     ; preds = %2
  %12 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)), !dbg !781
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, i64 0, metadata !704, metadata !602), !dbg !779
  %13 = icmp eq %struct._IO_FILE* %12, null, !dbg !783
  br i1 %13, label %14, label %18, !dbg !785

; <label>:14:                                     ; preds = %11
  %15 = tail call i32* @__errno_location() #17, !dbg !786
  %16 = load i32, i32* %15, align 4, !dbg !786, !tbaa !662
  %17 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !788
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %17) #10, !dbg !789
  br label %147, !dbg !790

; <label>:18:                                     ; preds = %11, %9
  %19 = phi %struct._IO_FILE* [ %10, %9 ], [ %12, %11 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !704, metadata !602), !dbg !779
  tail call void @fadvise(%struct._IO_FILE* %19, i32 2) #10, !dbg !791
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !702, metadata !602), !dbg !771
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !701, metadata !602), !dbg !770
  %20 = call i64 @fread_unlocked(i8* nonnull %5, i64 1, i64 65536, %struct._IO_FILE* %19) #10, !dbg !792
  call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !703, metadata !602), !dbg !793
  %21 = icmp eq i64 %20, 0, !dbg !794
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %19, i64 0, i32 0
  br i1 %21, label %89, label %23, !dbg !795

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 1
  br label %28, !dbg !796

; <label>:25:                                     ; preds = %84
  call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !702, metadata !602), !dbg !771
  call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !701, metadata !602), !dbg !770
  %26 = call i64 @fread_unlocked(i8* nonnull %5, i64 1, i64 65536, %struct._IO_FILE* nonnull %19) #10, !dbg !792
  call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !703, metadata !602), !dbg !793
  %27 = icmp eq i64 %26, 0, !dbg !794
  br i1 %27, label %89, label %28, !dbg !795, !llvm.loop !798

; <label>:28:                                     ; preds = %23, %25
  %29 = phi i64 [ %26, %25 ], [ %20, %23 ]
  %30 = phi i64 [ %32, %25 ], [ 0, %23 ]
  %31 = phi i64 [ %85, %25 ], [ 0, %23 ]
  call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !764, metadata !602), !dbg !800
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !701, metadata !602), !dbg !770
  call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !702, metadata !602), !dbg !771
  %32 = add i64 %29, %30, !dbg !796
  %33 = icmp ult i64 %32, %30, !dbg !801
  br i1 %33, label %55, label %34, !dbg !802

; <label>:34:                                     ; preds = %28
  %35 = and i64 %29, 1, !dbg !803
  %36 = icmp eq i64 %35, 0, !dbg !803
  br i1 %36, label %48, label %37, !dbg !803

; <label>:37:                                     ; preds = %34
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !701, metadata !602), !dbg !770
  call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !703, metadata !602), !dbg !793
  call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !764, metadata !602), !dbg !800
  %38 = add i64 %29, -1, !dbg !803
  %39 = shl i64 %31, 8, !dbg !804
  %40 = lshr i64 %31, 24, !dbg !805
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !764, metadata !602), !dbg !800
  %41 = load i8, i8* %5, align 16, !dbg !806, !tbaa !807
  %42 = zext i8 %41 to i64, !dbg !806
  %43 = and i64 %40, 255, !dbg !808
  %44 = xor i64 %43, %42, !dbg !808
  %45 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %44, !dbg !809
  %46 = load i64, i64* %45, align 8, !dbg !809, !tbaa !810
  %47 = xor i64 %46, %39, !dbg !812
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !701, metadata !602), !dbg !770
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !764, metadata !602), !dbg !800
  call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !703, metadata !602), !dbg !793
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !701, metadata !602), !dbg !770
  call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !703, metadata !602), !dbg !793
  br label %48, !dbg !813

; <label>:48:                                     ; preds = %37, %34
  %49 = phi i64 [ %47, %37 ], [ undef, %34 ]
  %50 = phi i8* [ %24, %37 ], [ %5, %34 ]
  %51 = phi i64 [ %38, %37 ], [ %29, %34 ]
  %52 = phi i64 [ %47, %37 ], [ %31, %34 ]
  %53 = icmp eq i64 %29, 1, !dbg !803
  br i1 %53, label %84, label %54, !dbg !803

; <label>:54:                                     ; preds = %48
  br label %58, !dbg !803

; <label>:55:                                     ; preds = %28
  %56 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !814
  %57 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !814
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %56, i8* %57) #10, !dbg !814
  unreachable, !dbg !814

; <label>:58:                                     ; preds = %58, %54
  %59 = phi i8* [ %50, %54 ], [ %75, %58 ]
  %60 = phi i64 [ %51, %54 ], [ %72, %58 ]
  %61 = phi i64 [ %52, %54 ], [ %82, %58 ]
  call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !701, metadata !602), !dbg !770
  call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !703, metadata !602), !dbg !793
  call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !764, metadata !602), !dbg !800
  %62 = shl i64 %61, 8, !dbg !804
  %63 = lshr i64 %61, 24, !dbg !805
  %64 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !815
  call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !764, metadata !602), !dbg !800
  %65 = load i8, i8* %59, align 1, !dbg !806, !tbaa !807
  %66 = zext i8 %65 to i64, !dbg !806
  %67 = and i64 %63, 255, !dbg !808
  %68 = xor i64 %67, %66, !dbg !808
  %69 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %68, !dbg !809
  %70 = load i64, i64* %69, align 8, !dbg !809, !tbaa !810
  %71 = xor i64 %70, %62, !dbg !812
  call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !701, metadata !602), !dbg !770
  call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !764, metadata !602), !dbg !800
  call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !701, metadata !602), !dbg !770
  call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !701, metadata !602), !dbg !770
  call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !703, metadata !602), !dbg !793
  call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !764, metadata !602), !dbg !800
  %72 = add i64 %60, -2, !dbg !803
  %73 = shl i64 %71, 8, !dbg !804
  %74 = lshr i64 %71, 24, !dbg !805
  %75 = getelementptr inbounds i8, i8* %59, i64 2, !dbg !815
  call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !764, metadata !602), !dbg !800
  %76 = load i8, i8* %64, align 1, !dbg !806, !tbaa !807
  %77 = zext i8 %76 to i64, !dbg !806
  %78 = and i64 %74, 255, !dbg !808
  %79 = xor i64 %78, %77, !dbg !808
  %80 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %79, !dbg !809
  %81 = load i64, i64* %80, align 8, !dbg !809, !tbaa !810
  %82 = xor i64 %81, %73, !dbg !812
  call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !701, metadata !602), !dbg !770
  call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !764, metadata !602), !dbg !800
  call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !701, metadata !602), !dbg !770
  %83 = icmp eq i64 %72, 0, !dbg !813
  br i1 %83, label %84, label %58, !dbg !813, !llvm.loop !816

; <label>:84:                                     ; preds = %58, %48
  %85 = phi i64 [ %49, %48 ], [ %82, %58 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !818, metadata !602), !dbg !824
  %86 = load i32, i32* %22, align 8, !dbg !827, !tbaa !828
  %87 = and i32 %86, 16, !dbg !827
  %88 = icmp eq i32 %87, 0, !dbg !831
  br i1 %88, label %25, label %89

; <label>:89:                                     ; preds = %84, %25, %18
  %90 = phi i64 [ 0, %18 ], [ %85, %25 ], [ %85, %84 ]
  %91 = phi i64 [ 0, %18 ], [ %32, %25 ], [ %32, %84 ]
  call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !702, metadata !602), !dbg !771
  call void @llvm.dbg.value(metadata i64 %90, i64 0, metadata !701, metadata !602), !dbg !770
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !832, metadata !602), !dbg !835
  %92 = load i32, i32* %22, align 8, !dbg !838, !tbaa !828
  %93 = and i32 %92, 32, !dbg !838
  %94 = icmp eq i32 %93, 0, !dbg !839
  br i1 %94, label %103, label %95, !dbg !840

; <label>:95:                                     ; preds = %89
  %96 = tail call i32* @__errno_location() #17, !dbg !841
  %97 = load i32, i32* %96, align 4, !dbg !841, !tbaa !662
  %98 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !843
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %98) #10, !dbg !844
  %99 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !845
  %100 = icmp eq i32 %99, 0, !dbg !845
  br i1 %100, label %147, label %101, !dbg !847

; <label>:101:                                    ; preds = %95
  %102 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %19) #10, !dbg !848
  br label %147, !dbg !848

; <label>:103:                                    ; preds = %89
  %104 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !849
  %105 = icmp eq i32 %104, 0, !dbg !849
  br i1 %105, label %113, label %106, !dbg !851

; <label>:106:                                    ; preds = %103
  %107 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %19) #10, !dbg !852
  %108 = icmp eq i32 %107, -1, !dbg !853
  br i1 %108, label %109, label %113, !dbg !854

; <label>:109:                                    ; preds = %106
  %110 = tail call i32* @__errno_location() #17, !dbg !855
  %111 = load i32, i32* %110, align 4, !dbg !855, !tbaa !662
  %112 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !857
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %112) #10, !dbg !858
  br label %147, !dbg !859

; <label>:113:                                    ; preds = %106, %103
  %114 = call i8* @umaxtostr(i64 %91, i8* nonnull %6) #10, !dbg !860
  call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !763, metadata !602), !dbg !861
  call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !702, metadata !602), !dbg !771
  call void @llvm.dbg.value(metadata i64 %90, i64 0, metadata !701, metadata !602), !dbg !770
  %115 = icmp eq i64 %91, 0, !dbg !862
  br i1 %115, label %129, label %116, !dbg !862

; <label>:116:                                    ; preds = %113
  br label %117, !dbg !864

; <label>:117:                                    ; preds = %116, %117
  %118 = phi i64 [ %127, %117 ], [ %91, %116 ]
  %119 = phi i64 [ %126, %117 ], [ %90, %116 ]
  call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !701, metadata !602), !dbg !770
  call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !702, metadata !602), !dbg !771
  %120 = shl i64 %119, 8, !dbg !864
  %121 = lshr i64 %119, 24, !dbg !866
  %122 = xor i64 %121, %118, !dbg !867
  %123 = and i64 %122, 255, !dbg !868
  %124 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %123, !dbg !869
  %125 = load i64, i64* %124, align 8, !dbg !869, !tbaa !810
  %126 = xor i64 %125, %120, !dbg !870
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !701, metadata !602), !dbg !770
  %127 = lshr i64 %118, 8, !dbg !871
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !702, metadata !602), !dbg !771
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !702, metadata !602), !dbg !771
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !701, metadata !602), !dbg !770
  %128 = icmp eq i64 %127, 0, !dbg !862
  br i1 %128, label %129, label %117, !dbg !862, !llvm.loop !872

; <label>:129:                                    ; preds = %117, %113
  %130 = phi i64 [ %90, %113 ], [ %126, %117 ]
  %131 = trunc i64 %130 to i32
  %132 = xor i32 %131, -1
  br i1 %1, label %133, label %135, !dbg !874

; <label>:133:                                    ; preds = %129
  %134 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32 %132, i8* %114, i8* %0) #10, !dbg !875
  br label %137, !dbg !875

; <label>:135:                                    ; preds = %129
  %136 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 %132, i8* %114) #10, !dbg !877
  br label %137

; <label>:137:                                    ; preds = %135, %133
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !878, !tbaa !609
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %138, i64 0, metadata !832, metadata !602), !dbg !880
  %139 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 0, !dbg !882
  %140 = load i32, i32* %139, align 8, !dbg !882, !tbaa !828
  %141 = and i32 %140, 32, !dbg !882
  %142 = icmp eq i32 %141, 0, !dbg !878
  br i1 %142, label %147, label %143, !dbg !883

; <label>:143:                                    ; preds = %137
  %144 = tail call i32* @__errno_location() #17, !dbg !884
  %145 = load i32, i32* %144, align 4, !dbg !884, !tbaa !662
  %146 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !884
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* %146) #10, !dbg !884
  unreachable, !dbg !884

; <label>:147:                                    ; preds = %137, %95, %101, %109, %14
  %148 = phi i1 [ false, %109 ], [ false, %14 ], [ false, %101 ], [ false, %95 ], [ true, %137 ]
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %6) #10, !dbg !885
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %5) #10, !dbg !885
  ret i1 %148, !dbg !885
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !886 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !888, metadata !602), !dbg !889
  store i8* %0, i8** @file_name, align 8, !dbg !890, !tbaa !609
  ret void, !dbg !891
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !892 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !896, metadata !602), !dbg !897
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !898, !tbaa !899
  ret void, !dbg !901
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !902 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !909, !tbaa !609
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !910
  %3 = icmp eq i32 %2, 0, !dbg !911
  br i1 %3, label %21, label %4, !dbg !912

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !913, !tbaa !899, !range !914
  %6 = icmp eq i8 %5, 0, !dbg !913
  %7 = tail call i32* @__errno_location() #17, !dbg !915
  br i1 %6, label %11, label %8, !dbg !917

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !918, !tbaa !662
  %10 = icmp eq i32 %9, 32, !dbg !919
  br i1 %10, label %21, label %11, !dbg !920

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !921
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !906, metadata !602), !dbg !922
  %13 = load i8*, i8** @file_name, align 8, !dbg !923, !tbaa !609
  %14 = icmp eq i8* %13, null, !dbg !923
  %15 = load i32, i32* %7, align 4, !tbaa !662
  br i1 %14, label %18, label %16, !dbg !924

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !925
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.15, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !926
  br label %19, !dbg !926

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.16, i64 0, i64 0), i8* %12) #10, !dbg !927
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !928, !tbaa !662
  tail call void @_exit(i32 %20) #15, !dbg !929
  unreachable, !dbg !929

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !930, !tbaa !609
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !932
  %24 = icmp eq i32 %23, 0, !dbg !933
  br i1 %24, label %27, label %25, !dbg !934

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !935, !tbaa !662
  tail call void @_exit(i32 %26) #15, !dbg !936
  unreachable, !dbg !936

; <label>:27:                                     ; preds = %21
  ret void, !dbg !937
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !938 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !946, metadata !602), !dbg !952
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !947, metadata !602), !dbg !953
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !948, metadata !602), !dbg !954
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !949, metadata !602), !dbg !955
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !956
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !950, metadata !602), !dbg !956
  ret void, !dbg !957
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !958 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1002, metadata !602), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1003, metadata !602), !dbg !1005
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1006
  br i1 %3, label %7, label %4, !dbg !1008

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1009
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !946, metadata !602) #10, !dbg !1010
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !947, metadata !602) #10, !dbg !1012
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !948, metadata !602) #10, !dbg !1013
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !949, metadata !602) #10, !dbg !1014
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1015
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !950, metadata !602) #10, !dbg !1015
  br label %7, !dbg !1016

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1017
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1018 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1023, metadata !602), !dbg !1026
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1024, metadata !602), !dbg !1027
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1028
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1025, metadata !602), !dbg !1029
  store i8 0, i8* %3, align 1, !dbg !1030, !tbaa !807
  br label %4, !dbg !1031, !llvm.loop !1034

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1025, metadata !602), !dbg !1029
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1023, metadata !602), !dbg !1026
  %7 = urem i64 %5, 10, !dbg !1036
  %8 = trunc i64 %7 to i8, !dbg !1037
  %9 = or i8 %8, 48, !dbg !1037
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1038
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1025, metadata !602), !dbg !1029
  store i8 %9, i8* %10, align 1, !dbg !1039, !tbaa !807
  %11 = udiv i64 %5, 10, !dbg !1040
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1023, metadata !602), !dbg !1026
  %12 = icmp ugt i64 %5, 9, !dbg !1041
  br i1 %12, label %4, label %13, !dbg !1042, !llvm.loop !1034

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1025, metadata !602), !dbg !1029
  ret i8* %10, !dbg !1043
}

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !1044 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1049, metadata !602), !dbg !1073
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1050, metadata !602), !dbg !1074
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1051, metadata !602), !dbg !1075
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1052, metadata !602), !dbg !1076
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1053, metadata !602), !dbg !1077
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !1054, metadata !602), !dbg !1078
  %8 = load i32, i32* @opterr, align 4, !dbg !1079, !tbaa !662
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1056, metadata !602), !dbg !1080
  store i32 0, i32* @opterr, align 4, !dbg !1081, !tbaa !662
  %9 = icmp eq i32 %0, 2, !dbg !1082
  br i1 %9, label %10, label %17, !dbg !1083

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !1084
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !1055, metadata !602), !dbg !1085
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1086

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !1087
  br label %17, !dbg !1088

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1089
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !1089
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1057, metadata !602), !dbg !1090
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1091
  call void @llvm.va_start(i8* nonnull %14), !dbg !1091
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1092, !tbaa !609
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !1093
  call void @exit(i32 0) #15, !dbg !1094
  unreachable, !dbg !1094

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1095, !tbaa !662
  store i32 0, i32* @optind, align 4, !dbg !1096, !tbaa !662
  ret void, !dbg !1097
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1098 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1100, metadata !602), !dbg !1103
  %2 = icmp eq i8* %0, null, !dbg !1104
  br i1 %2, label %3, label %6, !dbg !1106

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1107, !tbaa !609
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1109
  tail call void @abort() #15, !dbg !1110
  unreachable, !dbg !1110

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1111
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1101, metadata !602), !dbg !1112
  %8 = icmp eq i8* %7, null, !dbg !1113
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1114
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1115
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1102, metadata !602), !dbg !1116
  %11 = ptrtoint i8* %10 to i64, !dbg !1117
  %12 = ptrtoint i8* %0 to i64, !dbg !1117
  %13 = sub i64 %11, %12, !dbg !1117
  %14 = icmp sgt i64 %13, 6, !dbg !1119
  br i1 %14, label %15, label %24, !dbg !1120

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1121
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.42, i64 0, i64 0), i64 7) #14, !dbg !1122
  %18 = icmp eq i32 %17, 0, !dbg !1123
  br i1 %18, label %19, label %24, !dbg !1124

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1100, metadata !602), !dbg !1103
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.43, i64 0, i64 0), i64 3) #14, !dbg !1125
  %21 = icmp eq i32 %20, 0, !dbg !1128
  br i1 %21, label %22, label %24, !dbg !1129

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1130
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1100, metadata !602), !dbg !1103
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1132, !tbaa !609
  br label %24, !dbg !1133

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1100, metadata !602), !dbg !1103
  store i8* %25, i8** @program_name, align 8, !dbg !1134, !tbaa !609
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1135, !tbaa !609
  ret void, !dbg !1136
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1137 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1142, metadata !602), !dbg !1145
  %2 = tail call i32* @__errno_location() #17, !dbg !1146
  %3 = load i32, i32* %2, align 4, !dbg !1146, !tbaa !662
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1143, metadata !602), !dbg !1147
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1148
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1148
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1148
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1149
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1149
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1144, metadata !602), !dbg !1150
  store i32 %3, i32* %2, align 4, !dbg !1151, !tbaa !662
  ret %struct.quoting_options* %8, !dbg !1152
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1153 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1159, metadata !602), !dbg !1160
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1161
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1161
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1162
  %5 = load i32, i32* %4, align 8, !dbg !1162, !tbaa !1163
  ret i32 %5, !dbg !1165
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1166 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1170, metadata !602), !dbg !1172
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1171, metadata !602), !dbg !1173
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1174
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1174
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1175
  store i32 %1, i32* %5, align 8, !dbg !1176, !tbaa !1163
  ret void, !dbg !1177
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1178 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1182, metadata !602), !dbg !1190
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1183, metadata !602), !dbg !1191
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1184, metadata !602), !dbg !1192
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1185, metadata !602), !dbg !1193
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1194
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1194
  %6 = lshr i8 %1, 5, !dbg !1195
  %7 = zext i8 %6 to i64, !dbg !1195
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1196
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1186, metadata !602), !dbg !1197
  %9 = and i8 %1, 31, !dbg !1198
  %10 = zext i8 %9 to i32, !dbg !1199
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1188, metadata !602), !dbg !1200
  %11 = load i32, i32* %8, align 4, !dbg !1201, !tbaa !662
  %12 = lshr i32 %11, %10, !dbg !1202
  %13 = and i32 %12, 1, !dbg !1203
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1189, metadata !602), !dbg !1204
  %14 = and i32 %2, 1, !dbg !1205
  %15 = xor i32 %13, %14, !dbg !1206
  %16 = shl i32 %15, %10, !dbg !1207
  %17 = xor i32 %16, %11, !dbg !1208
  store i32 %17, i32* %8, align 4, !dbg !1208, !tbaa !662
  ret i32 %13, !dbg !1209
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1210 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1214, metadata !602), !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1215, metadata !602), !dbg !1218
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1219
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1214, metadata !602), !dbg !1217
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1221
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1214, metadata !602), !dbg !1217
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1222
  %6 = load i32, i32* %5, align 4, !dbg !1222, !tbaa !1223
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1216, metadata !602), !dbg !1224
  store i32 %1, i32* %5, align 4, !dbg !1225, !tbaa !1223
  ret i32 %6, !dbg !1226
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1227 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1231, metadata !602), !dbg !1234
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1232, metadata !602), !dbg !1235
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1233, metadata !602), !dbg !1236
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1237
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1231, metadata !602), !dbg !1234
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1239
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1231, metadata !602), !dbg !1234
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1240
  store i32 10, i32* %6, align 8, !dbg !1241, !tbaa !1163
  %7 = icmp ne i8* %1, null, !dbg !1242
  %8 = icmp ne i8* %2, null, !dbg !1244
  %9 = and i1 %7, %8, !dbg !1245
  br i1 %9, label %11, label %10, !dbg !1245

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1246
  unreachable, !dbg !1246

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1247
  store i8* %1, i8** %12, align 8, !dbg !1248, !tbaa !1249
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1250
  store i8* %2, i8** %13, align 8, !dbg !1251, !tbaa !1252
  ret void, !dbg !1253
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1254 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1258, metadata !602), !dbg !1266
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1259, metadata !602), !dbg !1267
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1260, metadata !602), !dbg !1268
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1261, metadata !602), !dbg !1269
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1262, metadata !602), !dbg !1270
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1271
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1271
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1263, metadata !602), !dbg !1272
  %8 = tail call i32* @__errno_location() #17, !dbg !1273
  %9 = load i32, i32* %8, align 4, !dbg !1273, !tbaa !662
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1264, metadata !602), !dbg !1274
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1275
  %11 = load i32, i32* %10, align 8, !dbg !1275, !tbaa !1163
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1276
  %13 = load i32, i32* %12, align 4, !dbg !1276, !tbaa !1223
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1277
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1278
  %16 = load i8*, i8** %15, align 8, !dbg !1278, !tbaa !1249
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1279
  %18 = load i8*, i8** %17, align 8, !dbg !1279, !tbaa !1252
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1280
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1265, metadata !602), !dbg !1281
  store i32 %9, i32* %8, align 4, !dbg !1282, !tbaa !662
  ret i64 %19, !dbg !1283
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1284 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1290, metadata !602), !dbg !1354
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1291, metadata !602), !dbg !1355
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1292, metadata !602), !dbg !1356
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1293, metadata !602), !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1294, metadata !602), !dbg !1358
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1295, metadata !602), !dbg !1359
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1296, metadata !602), !dbg !1360
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1297, metadata !602), !dbg !1361
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1298, metadata !602), !dbg !1362
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1300, metadata !602), !dbg !1363
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1301, metadata !602), !dbg !1364
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1302, metadata !602), !dbg !1365
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1303, metadata !602), !dbg !1366
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1304, metadata !602), !dbg !1367
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1368
  %14 = icmp eq i64 %13, 1, !dbg !1369
  %15 = lshr i32 %5, 1, !dbg !1370
  %16 = trunc i32 %15 to i8, !dbg !1370
  %17 = and i8 %16, 1, !dbg !1370
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1306, metadata !602), !dbg !1370
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1307, metadata !602), !dbg !1371
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1308, metadata !602), !dbg !1372
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1309, metadata !602), !dbg !1373
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1374

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1291, metadata !602), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1309, metadata !602), !dbg !1373
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1308, metadata !602), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1306, metadata !602), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1293, metadata !602), !dbg !1357
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1304, metadata !602), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1303, metadata !602), !dbg !1366
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1302, metadata !602), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1301, metadata !602), !dbg !1364
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1298, metadata !602), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1297, metadata !602), !dbg !1361
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1294, metadata !602), !dbg !1358
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
  ], !dbg !1375

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1294, metadata !602), !dbg !1358
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1306, metadata !602), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1306, metadata !602), !dbg !1370
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1294, metadata !602), !dbg !1358
  br label %94, !dbg !1376

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1306, metadata !602), !dbg !1370
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1294, metadata !602), !dbg !1358
  %43 = and i8 %36, 1, !dbg !1378
  %44 = icmp eq i8 %43, 0, !dbg !1378
  br i1 %44, label %45, label %94, !dbg !1376

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1380
  br i1 %46, label %94, label %47, !dbg !1383

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1380, !tbaa !807
  br label %94, !dbg !1380

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.54, i64 0, i64 0), i32 %28), !dbg !1384
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1297, metadata !602), !dbg !1361
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 %28), !dbg !1388
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1298, metadata !602), !dbg !1362
  br label %51, !dbg !1389

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1298, metadata !602), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1297, metadata !602), !dbg !1361
  %54 = and i8 %36, 1, !dbg !1390
  %55 = icmp eq i8 %54, 0, !dbg !1390
  br i1 %55, label %56, label %72, !dbg !1392

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1302, metadata !602), !dbg !1365
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1302, metadata !602), !dbg !1365
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1300, metadata !602), !dbg !1363
  %57 = load i8, i8* %52, align 1, !dbg !1393, !tbaa !807
  %58 = icmp eq i8 %57, 0, !dbg !1396
  br i1 %58, label %72, label %59, !dbg !1396

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1397

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1302, metadata !602), !dbg !1365
  %64 = icmp ult i64 %63, %40, !dbg !1397
  br i1 %64, label %65, label %67, !dbg !1400

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1397
  store i8 %61, i8* %66, align 1, !dbg !1397, !tbaa !807
  br label %67, !dbg !1397

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1400
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1300, metadata !602), !dbg !1363
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1302, metadata !602), !dbg !1365
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1302, metadata !602), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1300, metadata !602), !dbg !1363
  %70 = load i8, i8* %69, align 1, !dbg !1393, !tbaa !807
  %71 = icmp eq i8 %70, 0, !dbg !1396
  br i1 %71, label %72, label %60, !dbg !1396, !llvm.loop !1402

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1304, metadata !602), !dbg !1367
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1302, metadata !602), !dbg !1365
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1303, metadata !602), !dbg !1366
  br label %94, !dbg !1405

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1304, metadata !602), !dbg !1367
  br label %76, !dbg !1406

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1304, metadata !602), !dbg !1367
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1306, metadata !602), !dbg !1370
  br label %78, !dbg !1407

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1306, metadata !602), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1304, metadata !602), !dbg !1367
  %81 = and i8 %80, 1, !dbg !1408
  %82 = icmp eq i8 %81, 0, !dbg !1408
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1304, metadata !602), !dbg !1367
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1410
  br label %84, !dbg !1410

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1306, metadata !602), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1304, metadata !602), !dbg !1367
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1294, metadata !602), !dbg !1358
  %87 = and i8 %86, 1, !dbg !1411
  %88 = icmp eq i8 %87, 0, !dbg !1411
  br i1 %88, label %89, label %94, !dbg !1413

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1414
  br i1 %90, label %94, label %91, !dbg !1417

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1414, !tbaa !807
  br label %94, !dbg !1414

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1306, metadata !602), !dbg !1370
  br label %94, !dbg !1418

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1419
  unreachable, !dbg !1419

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1306, metadata !602), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1304, metadata !602), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1303, metadata !602), !dbg !1366
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1302, metadata !602), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1298, metadata !602), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1297, metadata !602), !dbg !1361
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1294, metadata !602), !dbg !1358
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1299, metadata !602), !dbg !1420
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
  br label %122, !dbg !1421

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1291, metadata !602), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1309, metadata !602), !dbg !1373
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1308, metadata !602), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1293, metadata !602), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1301, metadata !602), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1299, metadata !602), !dbg !1420
  %131 = icmp eq i64 %126, -1, !dbg !1422
  br i1 %131, label %134, label %132, !dbg !1423

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1424
  br i1 %133, label %590, label %138, !dbg !1425

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1426
  %136 = load i8, i8* %135, align 1, !dbg !1426, !tbaa !807
  %137 = icmp eq i8 %136, 0, !dbg !1427
  br i1 %137, label %590, label %138, !dbg !1425

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1315, metadata !602), !dbg !1428
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1316, metadata !602), !dbg !1429
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1317, metadata !602), !dbg !1430
  br i1 %108, label %139, label %154, !dbg !1431

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1433
  %141 = and i1 %109, %131, !dbg !1434
  br i1 %141, label %142, label %144, !dbg !1434

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1293, metadata !602), !dbg !1357
  br label %144, !dbg !1436

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1293, metadata !602), !dbg !1357
  %146 = icmp ugt i64 %140, %145, !dbg !1437
  br i1 %146, label %154, label %147, !dbg !1438

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1439
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1440
  %150 = icmp ne i32 %149, 0, !dbg !1441
  %151 = or i1 %150, %111, !dbg !1442
  %152 = xor i1 %150, true, !dbg !1442
  %153 = zext i1 %152 to i8, !dbg !1442
  br i1 %151, label %154, label %635, !dbg !1442

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1315, metadata !602), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1293, metadata !602), !dbg !1357
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1443
  %158 = load i8, i8* %157, align 1, !dbg !1443, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1310, metadata !602), !dbg !1444
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
  ], !dbg !1445

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1446

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1447

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1316, metadata !602), !dbg !1429
  %162 = and i8 %127, 1, !dbg !1451
  %163 = icmp eq i8 %162, 0, !dbg !1451
  %164 = and i1 %113, %163, !dbg !1451
  br i1 %164, label %165, label %181, !dbg !1451

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1453
  br i1 %166, label %167, label %169, !dbg !1457

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1453
  store i8 39, i8* %168, align 1, !dbg !1453, !tbaa !807
  br label %169, !dbg !1453

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1300, metadata !602), !dbg !1363
  %171 = icmp ult i64 %170, %130, !dbg !1458
  br i1 %171, label %172, label %174, !dbg !1461

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1458
  store i8 36, i8* %173, align 1, !dbg !1458, !tbaa !807
  br label %174, !dbg !1458

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1300, metadata !602), !dbg !1363
  %176 = icmp ult i64 %175, %130, !dbg !1462
  br i1 %176, label %177, label %179, !dbg !1465

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1462
  store i8 39, i8* %178, align 1, !dbg !1462, !tbaa !807
  br label %179, !dbg !1462

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1307, metadata !602), !dbg !1371
  br label %181, !dbg !1466

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1300, metadata !602), !dbg !1363
  %184 = icmp ult i64 %182, %130, !dbg !1467
  br i1 %184, label %185, label %187, !dbg !1470

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1467
  store i8 92, i8* %186, align 1, !dbg !1467, !tbaa !807
  br label %187, !dbg !1467

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1470
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1300, metadata !602), !dbg !1363
  br i1 %105, label %189, label %470, !dbg !1471

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1473
  %191 = icmp ult i64 %190, %155, !dbg !1474
  br i1 %191, label %192, label %470, !dbg !1475

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1476
  %194 = load i8, i8* %193, align 1, !dbg !1476, !tbaa !807
  %195 = add i8 %194, -48, !dbg !1477
  %196 = icmp ult i8 %195, 10, !dbg !1477
  br i1 %196, label %197, label %470, !dbg !1477

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1478
  br i1 %198, label %199, label %201, !dbg !1482

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1478
  store i8 48, i8* %200, align 1, !dbg !1478, !tbaa !807
  br label %201, !dbg !1478

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1300, metadata !602), !dbg !1363
  %203 = icmp ult i64 %202, %130, !dbg !1483
  br i1 %203, label %204, label %206, !dbg !1486

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1483
  store i8 48, i8* %205, align 1, !dbg !1483, !tbaa !807
  br label %206, !dbg !1483

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1300, metadata !602), !dbg !1363
  br label %470, !dbg !1487

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1488

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1489

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1490

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1492

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1494
  %214 = icmp ult i64 %213, %155, !dbg !1495
  br i1 %214, label %215, label %470, !dbg !1496

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1497
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1498
  %218 = load i8, i8* %217, align 1, !dbg !1498, !tbaa !807
  %219 = icmp eq i8 %218, 63, !dbg !1499
  br i1 %219, label %220, label %470, !dbg !1500

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1501
  %222 = load i8, i8* %221, align 1, !dbg !1501, !tbaa !807
  %223 = sext i8 %222 to i32, !dbg !1501
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
  ], !dbg !1502

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1503

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1310, metadata !602), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1299, metadata !602), !dbg !1420
  %226 = icmp ult i64 %124, %130, !dbg !1505
  br i1 %226, label %227, label %229, !dbg !1508

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1505
  store i8 63, i8* %228, align 1, !dbg !1505, !tbaa !807
  br label %229, !dbg !1505

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1300, metadata !602), !dbg !1363
  %231 = icmp ult i64 %230, %130, !dbg !1509
  br i1 %231, label %232, label %234, !dbg !1512

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1509
  store i8 34, i8* %233, align 1, !dbg !1509, !tbaa !807
  br label %234, !dbg !1509

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1300, metadata !602), !dbg !1363
  %236 = icmp ult i64 %235, %130, !dbg !1513
  br i1 %236, label %237, label %239, !dbg !1516

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1513
  store i8 34, i8* %238, align 1, !dbg !1513, !tbaa !807
  br label %239, !dbg !1513

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1300, metadata !602), !dbg !1363
  %241 = icmp ult i64 %240, %130, !dbg !1517
  br i1 %241, label %242, label %244, !dbg !1520

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1517
  store i8 63, i8* %243, align 1, !dbg !1517, !tbaa !807
  br label %244, !dbg !1517

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1300, metadata !602), !dbg !1363
  br label %470, !dbg !1521

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1314, metadata !602), !dbg !1522
  br label %256, !dbg !1523

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1314, metadata !602), !dbg !1522
  br label %256, !dbg !1524

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1314, metadata !602), !dbg !1522
  br label %254, !dbg !1525

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1314, metadata !602), !dbg !1522
  br label %254, !dbg !1526

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1314, metadata !602), !dbg !1522
  br label %256, !dbg !1527

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1314, metadata !602), !dbg !1522
  br i1 %113, label %252, label %253, !dbg !1528

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1529

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1532

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1314, metadata !602), !dbg !1522
  br i1 %117, label %256, label %635, !dbg !1534

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1314, metadata !602), !dbg !1522
  br i1 %104, label %497, label %470, !dbg !1536

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1537
  br i1 %259, label %260, label %265, !dbg !1539

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1540, !tbaa !807
  %262 = icmp ne i8 %261, 0, !dbg !1541
  %263 = icmp ne i64 %123, 0, !dbg !1542
  %264 = or i1 %263, %262, !dbg !1544
  br i1 %264, label %470, label %271, !dbg !1544

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1545
  %267 = icmp ne i64 %123, 0, !dbg !1542
  %268 = or i1 %267, %266, !dbg !1539
  br i1 %268, label %470, label %271, !dbg !1539

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1542
  br i1 %270, label %271, label %470, !dbg !1546

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1317, metadata !602), !dbg !1430
  br label %272, !dbg !1547

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1317, metadata !602), !dbg !1430
  br i1 %117, label %470, label %635, !dbg !1548

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1308, metadata !602), !dbg !1372
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1317, metadata !602), !dbg !1430
  br i1 %113, label %275, label %470, !dbg !1550

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1551

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1554
  %278 = icmp ne i64 %125, 0, !dbg !1556
  %279 = or i1 %278, %277, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1301, metadata !602), !dbg !1364
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1291, metadata !602), !dbg !1355
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1557
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1291, metadata !602), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1301, metadata !602), !dbg !1364
  %282 = icmp ult i64 %124, %281, !dbg !1558
  br i1 %282, label %283, label %285, !dbg !1561

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1558
  store i8 39, i8* %284, align 1, !dbg !1558, !tbaa !807
  br label %285, !dbg !1558

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1300, metadata !602), !dbg !1363
  %287 = icmp ult i64 %286, %281, !dbg !1562
  br i1 %287, label %288, label %290, !dbg !1565

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1562
  store i8 92, i8* %289, align 1, !dbg !1562, !tbaa !807
  br label %290, !dbg !1562

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1300, metadata !602), !dbg !1363
  %292 = icmp ult i64 %291, %281, !dbg !1566
  br i1 %292, label %293, label %295, !dbg !1569

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1566
  store i8 39, i8* %294, align 1, !dbg !1566, !tbaa !807
  br label %295, !dbg !1566

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1307, metadata !602), !dbg !1371
  br label %470, !dbg !1570

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1571

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1318, metadata !602), !dbg !1572
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1573
  %300 = load i16*, i16** %299, align 8, !dbg !1573, !tbaa !609
  %301 = zext i8 %158 to i64, !dbg !1573
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1573
  %303 = load i16, i16* %302, align 2, !dbg !1573, !tbaa !1575
  %304 = lshr i16 %303, 14, !dbg !1576
  %305 = trunc i16 %304 to i8, !dbg !1576
  %306 = and i8 %305, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1321, metadata !602), !dbg !1577
  br label %362, !dbg !1578

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1579
  store i64 0, i64* %10, align 8, !dbg !1580
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1318, metadata !602), !dbg !1572
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1321, metadata !602), !dbg !1577
  %308 = icmp eq i64 %155, -1, !dbg !1581
  br i1 %308, label %309, label %311, !dbg !1583

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1293, metadata !602), !dbg !1357
  br label %311, !dbg !1585

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1293, metadata !602), !dbg !1357
  br label %313, !dbg !1586, !llvm.loop !1587

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1321, metadata !602), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1318, metadata !602), !dbg !1572
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1589
  %316 = add i64 %314, %123, !dbg !1590
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1591
  %318 = sub i64 %312, %316, !dbg !1592
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1322, metadata !602), !dbg !1593
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1340, metadata !602), !dbg !1594
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1343, metadata !602), !dbg !1596
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1597

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1321, metadata !602), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1318, metadata !602), !dbg !1572
  %321 = icmp ugt i64 %312, %316, !dbg !1598
  br i1 %321, label %322, label %347, !dbg !1600

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1601

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1318, metadata !602), !dbg !1572
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1601
  %327 = load i8, i8* %326, align 1, !dbg !1601, !tbaa !807
  %328 = icmp eq i8 %327, 0, !dbg !1600
  br i1 %328, label %347, label %329, !dbg !1602

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1318, metadata !602), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1318, metadata !602), !dbg !1572
  %331 = add i64 %330, %123, !dbg !1604
  %332 = icmp ult i64 %331, %312, !dbg !1598
  br i1 %332, label %323, label %347, !dbg !1600, !llvm.loop !1605

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1606
  %335 = and i1 %115, %334, !dbg !1609
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1344, metadata !602), !dbg !1610
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1344, metadata !602), !dbg !1610
  br i1 %335, label %336, label %350, !dbg !1609

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1611

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1344, metadata !602), !dbg !1610
  %339 = add i64 %338, %316, !dbg !1611
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1612
  %341 = load i8, i8* %340, align 1, !dbg !1612, !tbaa !807
  %342 = sext i8 %341 to i32, !dbg !1612
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1613

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1344, metadata !602), !dbg !1610
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1344, metadata !602), !dbg !1610
  %345 = icmp ult i64 %344, %319, !dbg !1606
  br i1 %345, label %337, label %350, !dbg !1615, !llvm.loop !1616

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1618

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1321, metadata !602), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1318, metadata !602), !dbg !1572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1618
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1619, !tbaa !662
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1340, metadata !602), !dbg !1594
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1621
  %353 = icmp eq i32 %352, 0, !dbg !1621
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1321, metadata !602), !dbg !1577
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1622
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1321, metadata !602), !dbg !1577
  %355 = add i64 %319, %314, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1318, metadata !602), !dbg !1572
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1321, metadata !602), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1318, metadata !602), !dbg !1572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1618
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1322, metadata !602), !dbg !1593
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1624
  %357 = icmp eq i32 %356, 0, !dbg !1625
  br i1 %357, label %313, label %358, !dbg !1626, !llvm.loop !1587

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1627
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1321, metadata !602), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1318, metadata !602), !dbg !1572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1618
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1627
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1321, metadata !602), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1318, metadata !602), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1293, metadata !602), !dbg !1357
  %366 = and i8 %365, 1, !dbg !1628
  %367 = icmp ne i8 %366, 0, !dbg !1628
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1317, metadata !602), !dbg !1430
  %368 = icmp ult i64 %364, 2, !dbg !1629
  %369 = or i1 %367, %112, !dbg !1630
  %370 = and i1 %368, %369, !dbg !1631
  br i1 %370, label %470, label %371, !dbg !1631

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1351, metadata !602), !dbg !1633
  br label %373, !dbg !1634

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1316, metadata !602), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1315, metadata !602), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1310, metadata !602), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1299, metadata !602), !dbg !1420
  br i1 %369, label %426, label %380, !dbg !1635

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1640

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1316, metadata !602), !dbg !1429
  %382 = and i8 %376, 1, !dbg !1643
  %383 = icmp eq i8 %382, 0, !dbg !1643
  %384 = and i1 %113, %383, !dbg !1643
  br i1 %384, label %385, label %401, !dbg !1643

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1645
  br i1 %386, label %387, label %389, !dbg !1649

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1645
  store i8 39, i8* %388, align 1, !dbg !1645, !tbaa !807
  br label %389, !dbg !1645

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1300, metadata !602), !dbg !1363
  %391 = icmp ult i64 %390, %130, !dbg !1650
  br i1 %391, label %392, label %394, !dbg !1653

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1650
  store i8 36, i8* %393, align 1, !dbg !1650, !tbaa !807
  br label %394, !dbg !1650

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1300, metadata !602), !dbg !1363
  %396 = icmp ult i64 %395, %130, !dbg !1654
  br i1 %396, label %397, label %399, !dbg !1657

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1654
  store i8 39, i8* %398, align 1, !dbg !1654, !tbaa !807
  br label %399, !dbg !1654

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1307, metadata !602), !dbg !1371
  br label %401, !dbg !1658

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1300, metadata !602), !dbg !1363
  %404 = icmp ult i64 %402, %130, !dbg !1659
  br i1 %404, label %405, label %407, !dbg !1662

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1659
  store i8 92, i8* %406, align 1, !dbg !1659, !tbaa !807
  br label %407, !dbg !1659

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1300, metadata !602), !dbg !1363
  %409 = icmp ult i64 %408, %130, !dbg !1663
  br i1 %409, label %410, label %414, !dbg !1666

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1663
  %412 = or i8 %411, 48, !dbg !1663
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1663
  store i8 %412, i8* %413, align 1, !dbg !1663, !tbaa !807
  br label %414, !dbg !1663

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1300, metadata !602), !dbg !1363
  %416 = icmp ult i64 %415, %130, !dbg !1667
  br i1 %416, label %417, label %422, !dbg !1670

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1667
  %419 = and i8 %418, 7, !dbg !1667
  %420 = or i8 %419, 48, !dbg !1667
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1667
  store i8 %420, i8* %421, align 1, !dbg !1667, !tbaa !807
  br label %422, !dbg !1667

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1300, metadata !602), !dbg !1363
  %424 = and i8 %377, 7, !dbg !1671
  %425 = or i8 %424, 48, !dbg !1672
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1310, metadata !602), !dbg !1444
  br label %435, !dbg !1673

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1674
  %428 = icmp eq i8 %427, 0, !dbg !1674
  br i1 %428, label %435, label %429, !dbg !1676

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1677
  br i1 %430, label %431, label %433, !dbg !1681

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1677
  store i8 92, i8* %432, align 1, !dbg !1677, !tbaa !807
  br label %433, !dbg !1677

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1315, metadata !602), !dbg !1428
  br label %435, !dbg !1682

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1316, metadata !602), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1315, metadata !602), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1310, metadata !602), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1300, metadata !602), !dbg !1363
  %441 = add i64 %374, 1, !dbg !1683
  %442 = icmp ugt i64 %372, %441, !dbg !1685
  br i1 %442, label %443, label %535, !dbg !1686

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1687
  %445 = icmp ne i8 %444, 0, !dbg !1687
  %446 = and i8 %440, 1, !dbg !1687
  %447 = icmp eq i8 %446, 0, !dbg !1687
  %448 = and i1 %445, %447, !dbg !1687
  br i1 %448, label %449, label %460, !dbg !1687

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1690
  br i1 %450, label %451, label %453, !dbg !1694

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1690
  store i8 39, i8* %452, align 1, !dbg !1690, !tbaa !807
  br label %453, !dbg !1690

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1300, metadata !602), !dbg !1363
  %455 = icmp ult i64 %454, %130, !dbg !1695
  br i1 %455, label %456, label %458, !dbg !1698

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1695
  store i8 39, i8* %457, align 1, !dbg !1695, !tbaa !807
  br label %458, !dbg !1695

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1307, metadata !602), !dbg !1371
  br label %460, !dbg !1699

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1300, metadata !602), !dbg !1363
  %463 = icmp ult i64 %461, %130, !dbg !1700
  br i1 %463, label %464, label %466, !dbg !1703

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1700
  store i8 %438, i8* %465, align 1, !dbg !1700, !tbaa !807
  br label %466, !dbg !1700

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1299, metadata !602), !dbg !1420
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1704
  %469 = load i8, i8* %468, align 1, !dbg !1704, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1310, metadata !602), !dbg !1444
  br label %373, !dbg !1705, !llvm.loop !1706

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1291, metadata !602), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1317, metadata !602), !dbg !1430
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1316, metadata !602), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1315, metadata !602), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1310, metadata !602), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1308, metadata !602), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1293, metadata !602), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1301, metadata !602), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1299, metadata !602), !dbg !1420
  br i1 %106, label %482, label %481, !dbg !1709

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1711

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1712

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1713
  %485 = zext i8 %484 to i64, !dbg !1713
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1714
  %487 = load i32, i32* %486, align 4, !dbg !1714, !tbaa !662
  %488 = and i8 %477, 31, !dbg !1715
  %489 = zext i8 %488 to i32, !dbg !1716
  %490 = shl i32 1, %489, !dbg !1717
  %491 = and i32 %487, %490, !dbg !1717
  %492 = icmp eq i32 %491, 0, !dbg !1717
  %493 = icmp eq i8 %156, 0, !dbg !1718
  %494 = and i1 %493, %492, !dbg !1719
  br i1 %494, label %535, label %497, !dbg !1719

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1718
  br i1 %496, label %535, label %497, !dbg !1720

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1291, metadata !602), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1317, metadata !602), !dbg !1430
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1310, metadata !602), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1308, metadata !602), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1293, metadata !602), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1301, metadata !602), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1299, metadata !602), !dbg !1420
  br i1 %111, label %507, label %635, !dbg !1721

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1316, metadata !602), !dbg !1429
  %508 = and i8 %502, 1, !dbg !1723
  %509 = icmp eq i8 %508, 0, !dbg !1723
  %510 = and i1 %113, %509, !dbg !1723
  br i1 %510, label %511, label %527, !dbg !1723

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1725
  br i1 %512, label %513, label %515, !dbg !1729

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1725
  store i8 39, i8* %514, align 1, !dbg !1725, !tbaa !807
  br label %515, !dbg !1725

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1729
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1300, metadata !602), !dbg !1363
  %517 = icmp ult i64 %516, %506, !dbg !1730
  br i1 %517, label %518, label %520, !dbg !1733

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1730
  store i8 36, i8* %519, align 1, !dbg !1730, !tbaa !807
  br label %520, !dbg !1730

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1300, metadata !602), !dbg !1363
  %522 = icmp ult i64 %521, %506, !dbg !1734
  br i1 %522, label %523, label %525, !dbg !1737

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1734
  store i8 39, i8* %524, align 1, !dbg !1734, !tbaa !807
  br label %525, !dbg !1734

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1307, metadata !602), !dbg !1371
  br label %527, !dbg !1738

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1300, metadata !602), !dbg !1363
  %530 = icmp ult i64 %528, %506, !dbg !1739
  br i1 %530, label %531, label %533, !dbg !1742

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1739
  store i8 92, i8* %532, align 1, !dbg !1739, !tbaa !807
  br label %533, !dbg !1739

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1291, metadata !602), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1317, metadata !602), !dbg !1430
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1316, metadata !602), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1310, metadata !602), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1308, metadata !602), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1293, metadata !602), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1301, metadata !602), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1299, metadata !602), !dbg !1420
  br label %562, !dbg !1743

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1291, metadata !602), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1317, metadata !602), !dbg !1430
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1316, metadata !602), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1310, metadata !602), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1308, metadata !602), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1293, metadata !602), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1301, metadata !602), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1299, metadata !602), !dbg !1420
  %546 = and i8 %540, 1, !dbg !1743
  %547 = icmp ne i8 %546, 0, !dbg !1743
  %548 = and i8 %543, 1, !dbg !1743
  %549 = icmp eq i8 %548, 0, !dbg !1743
  %550 = and i1 %547, %549, !dbg !1743
  br i1 %550, label %551, label %562, !dbg !1743

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1746
  br i1 %552, label %553, label %555, !dbg !1750

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1746
  store i8 39, i8* %554, align 1, !dbg !1746, !tbaa !807
  br label %555, !dbg !1746

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1300, metadata !602), !dbg !1363
  %557 = icmp ult i64 %556, %545, !dbg !1751
  br i1 %557, label %558, label %560, !dbg !1754

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1751
  store i8 39, i8* %559, align 1, !dbg !1751, !tbaa !807
  br label %560, !dbg !1751

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1307, metadata !602), !dbg !1371
  br label %562, !dbg !1755

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1300, metadata !602), !dbg !1363
  %572 = icmp ult i64 %570, %563, !dbg !1756
  br i1 %572, label %573, label %575, !dbg !1759

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1756
  store i8 %565, i8* %574, align 1, !dbg !1756, !tbaa !807
  br label %575, !dbg !1756

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1300, metadata !602), !dbg !1363
  %577 = and i8 %564, 1, !dbg !1760
  %578 = icmp eq i8 %577, 0, !dbg !1760
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1309, metadata !602), !dbg !1373
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1762
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1309, metadata !602), !dbg !1373
  br label %580, !dbg !1763

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1291, metadata !602), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1309, metadata !602), !dbg !1373
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1308, metadata !602), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1307, metadata !602), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1293, metadata !602), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1301, metadata !602), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1299, metadata !602), !dbg !1420
  %589 = add i64 %581, 1, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1299, metadata !602), !dbg !1420
  br label %122, !dbg !1765, !llvm.loop !1766

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1768
  %593 = and i1 %113, %592, !dbg !1770
  %594 = xor i1 %593, true, !dbg !1770
  %595 = or i1 %111, %594, !dbg !1770
  br i1 %595, label %596, label %635, !dbg !1770

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1771
  %598 = xor i1 %597, true, !dbg !1771
  %599 = and i8 %128, 1, !dbg !1773
  %600 = icmp eq i8 %599, 0, !dbg !1773
  %601 = or i1 %600, %598, !dbg !1771
  br i1 %601, label %611, label %602, !dbg !1771

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1774
  %604 = icmp eq i8 %603, 0, !dbg !1774
  br i1 %604, label %607, label %605, !dbg !1777

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1778
  br label %645, !dbg !1779

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1780
  %609 = icmp ne i64 %125, 0, !dbg !1782
  %610 = and i1 %609, %608, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1291, metadata !602), !dbg !1355
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1300, metadata !602), !dbg !1363
  br i1 %610, label %27, label %611, !dbg !1783

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1784
  %613 = and i1 %612, %111, !dbg !1786
  br i1 %613, label %614, label %630, !dbg !1786

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1302, metadata !602), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1300, metadata !602), !dbg !1363
  %615 = load i8, i8* %99, align 1, !dbg !1787, !tbaa !807
  %616 = icmp eq i8 %615, 0, !dbg !1790
  br i1 %616, label %630, label %617, !dbg !1790

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1791

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1300, metadata !602), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1302, metadata !602), !dbg !1365
  %622 = icmp ult i64 %621, %130, !dbg !1791
  br i1 %622, label %623, label %625, !dbg !1794

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1791
  store i8 %619, i8* %624, align 1, !dbg !1791, !tbaa !807
  br label %625, !dbg !1791

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1300, metadata !602), !dbg !1363
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1795
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1302, metadata !602), !dbg !1365
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1302, metadata !602), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1300, metadata !602), !dbg !1363
  %628 = load i8, i8* %627, align 1, !dbg !1787, !tbaa !807
  %629 = icmp eq i8 %628, 0, !dbg !1790
  br i1 %629, label %630, label %618, !dbg !1790, !llvm.loop !1796

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1300, metadata !602), !dbg !1363
  %632 = icmp ult i64 %631, %130, !dbg !1798
  br i1 %632, label %633, label %645, !dbg !1800

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1801
  store i8 0, i8* %634, align 1, !dbg !1802, !tbaa !807
  br label %645, !dbg !1801

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1291, metadata !602), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1293, metadata !602), !dbg !1357
  %639 = icmp ne i32 %636, 2, !dbg !1803
  %640 = icmp eq i8 %103, 0, !dbg !1805
  %641 = or i1 %639, %640, !dbg !1806
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1294, metadata !602), !dbg !1358
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1806
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1294, metadata !602), !dbg !1358
  %643 = and i32 %5, -3, !dbg !1807
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1808
  br label %645, !dbg !1809

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1810
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1811 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1815, metadata !602), !dbg !1819
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1816, metadata !602), !dbg !1820
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1821
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1817, metadata !602), !dbg !1822
  %4 = icmp eq i8* %3, %0, !dbg !1823
  br i1 %4, label %5, label %75, !dbg !1825

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1826
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1818, metadata !602), !dbg !1827
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1828, metadata !602), !dbg !1844
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1842, metadata !602), !dbg !1847
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1843, metadata !602), !dbg !1848
  %7 = load i8, i8* %6, align 1, !dbg !1849, !tbaa !807
  %8 = sext i8 %7 to i32, !dbg !1849
  %9 = and i32 %8, -33, !dbg !1849
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1849

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1851, metadata !602), !dbg !1865
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1863, metadata !602), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1864, metadata !602), !dbg !1870
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1871
  %12 = load i8, i8* %11, align 1, !dbg !1871, !tbaa !807
  %13 = sext i8 %12 to i32, !dbg !1871
  %14 = and i32 %13, -33, !dbg !1871
  %15 = icmp eq i32 %14, 84, !dbg !1871
  br i1 %15, label %16, label %72, !dbg !1871

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1873, metadata !602), !dbg !1886
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1884, metadata !602), !dbg !1890
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1885, metadata !602), !dbg !1891
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1892
  %18 = load i8, i8* %17, align 1, !dbg !1892, !tbaa !807
  %19 = sext i8 %18 to i32, !dbg !1892
  %20 = and i32 %19, -33, !dbg !1892
  %21 = icmp eq i32 %20, 70, !dbg !1892
  br i1 %21, label %22, label %72, !dbg !1892

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1894, metadata !602), !dbg !1906
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1904, metadata !602), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1905, metadata !602), !dbg !1911
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1912
  %24 = load i8, i8* %23, align 1, !dbg !1912, !tbaa !807
  %25 = icmp eq i8 %24, 45, !dbg !1912
  br i1 %25, label %26, label %72, !dbg !1914

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1915, metadata !602), !dbg !1926
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1924, metadata !602), !dbg !1930
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1925, metadata !602), !dbg !1931
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1932
  %28 = load i8, i8* %27, align 1, !dbg !1932, !tbaa !807
  %29 = icmp eq i8 %28, 56, !dbg !1932
  br i1 %29, label %30, label %72, !dbg !1934

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1935, metadata !602), !dbg !1945
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1943, metadata !602), !dbg !1949
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1944, metadata !602), !dbg !1950
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1951
  %32 = load i8, i8* %31, align 1, !dbg !1951, !tbaa !807
  %33 = icmp eq i8 %32, 0, !dbg !1951
  br i1 %33, label %34, label %72, !dbg !1953

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1954, !tbaa !807
  %36 = icmp eq i8 %35, 96, !dbg !1955
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.56, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1954
  br label %75, !dbg !1956

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1851, metadata !602), !dbg !1957
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1863, metadata !602), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1864, metadata !602), !dbg !1962
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1963
  %40 = load i8, i8* %39, align 1, !dbg !1963, !tbaa !807
  %41 = sext i8 %40 to i32, !dbg !1963
  %42 = and i32 %41, -33, !dbg !1963
  %43 = icmp eq i32 %42, 66, !dbg !1963
  br i1 %43, label %44, label %72, !dbg !1963

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1873, metadata !602), !dbg !1964
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1884, metadata !602), !dbg !1966
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1885, metadata !602), !dbg !1967
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1968
  %46 = load i8, i8* %45, align 1, !dbg !1968, !tbaa !807
  %47 = icmp eq i8 %46, 49, !dbg !1968
  br i1 %47, label %48, label %72, !dbg !1969

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1894, metadata !602), !dbg !1970
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1904, metadata !602), !dbg !1972
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1905, metadata !602), !dbg !1973
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1974
  %50 = load i8, i8* %49, align 1, !dbg !1974, !tbaa !807
  %51 = icmp eq i8 %50, 56, !dbg !1974
  br i1 %51, label %52, label %72, !dbg !1975

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1915, metadata !602), !dbg !1976
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1924, metadata !602), !dbg !1978
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1925, metadata !602), !dbg !1979
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1980
  %54 = load i8, i8* %53, align 1, !dbg !1980, !tbaa !807
  %55 = icmp eq i8 %54, 48, !dbg !1980
  br i1 %55, label %56, label %72, !dbg !1981

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1935, metadata !602), !dbg !1982
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1943, metadata !602), !dbg !1984
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1944, metadata !602), !dbg !1985
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1986
  %58 = load i8, i8* %57, align 1, !dbg !1986, !tbaa !807
  %59 = icmp eq i8 %58, 51, !dbg !1986
  br i1 %59, label %60, label %72, !dbg !1987

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1988, metadata !602), !dbg !1997
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1995, metadata !602), !dbg !2001
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1996, metadata !602), !dbg !2002
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2003
  %62 = load i8, i8* %61, align 1, !dbg !2003, !tbaa !807
  %63 = icmp eq i8 %62, 48, !dbg !2003
  br i1 %63, label %64, label %72, !dbg !2005

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2006, metadata !602), !dbg !2014
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2012, metadata !602), !dbg !2018
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2013, metadata !602), !dbg !2019
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2020
  %66 = load i8, i8* %65, align 1, !dbg !2020, !tbaa !807
  %67 = icmp eq i8 %66, 0, !dbg !2020
  br i1 %67, label %68, label %72, !dbg !2022

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2023, !tbaa !807
  %70 = icmp eq i8 %69, 96, !dbg !2024
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2023
  br label %75, !dbg !2025

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2026
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), !dbg !2027
  br label %75, !dbg !2028

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2029
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2030 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2034, metadata !602), !dbg !2037
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2035, metadata !602), !dbg !2038
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2036, metadata !602), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2040, metadata !602) #10, !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2045, metadata !602) #10, !dbg !2055
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2046, metadata !602) #10, !dbg !2056
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2047, metadata !602) #10, !dbg !2057
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2058
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2058
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2048, metadata !602) #10, !dbg !2059
  %6 = tail call i32* @__errno_location() #17, !dbg !2060
  %7 = load i32, i32* %6, align 4, !dbg !2060, !tbaa !662
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2049, metadata !602) #10, !dbg !2061
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2062
  %9 = load i32, i32* %8, align 4, !dbg !2062, !tbaa !1223
  %10 = or i32 %9, 1, !dbg !2063
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2050, metadata !602) #10, !dbg !2064
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2065
  %12 = load i32, i32* %11, align 8, !dbg !2065, !tbaa !1163
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2066
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2067
  %15 = load i8*, i8** %14, align 8, !dbg !2067, !tbaa !1249
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2068
  %17 = load i8*, i8** %16, align 8, !dbg !2068, !tbaa !1252
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2069
  %19 = add i64 %18, 1, !dbg !2070
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2051, metadata !602) #10, !dbg !2071
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2072, metadata !602) #10, !dbg !2077
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2079
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2052, metadata !602) #10, !dbg !2080
  %21 = load i32, i32* %11, align 8, !dbg !2081, !tbaa !1163
  %22 = load i8*, i8** %14, align 8, !dbg !2082, !tbaa !1249
  %23 = load i8*, i8** %16, align 8, !dbg !2083, !tbaa !1252
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2084
  store i32 %7, i32* %6, align 4, !dbg !2085, !tbaa !662
  ret i8* %20, !dbg !2086
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2041 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2040, metadata !602), !dbg !2087
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2045, metadata !602), !dbg !2088
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2046, metadata !602), !dbg !2089
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2047, metadata !602), !dbg !2090
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2091
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2091
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2048, metadata !602), !dbg !2092
  %7 = tail call i32* @__errno_location() #17, !dbg !2093
  %8 = load i32, i32* %7, align 4, !dbg !2093, !tbaa !662
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2049, metadata !602), !dbg !2094
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2095
  %10 = load i32, i32* %9, align 4, !dbg !2095, !tbaa !1223
  %11 = icmp ne i64* %2, null, !dbg !2096
  %12 = xor i1 %11, true, !dbg !2096
  %13 = zext i1 %12 to i32, !dbg !2096
  %14 = or i32 %10, %13, !dbg !2097
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2050, metadata !602), !dbg !2098
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2099
  %16 = load i32, i32* %15, align 8, !dbg !2099, !tbaa !1163
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2100
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2101
  %19 = load i8*, i8** %18, align 8, !dbg !2101, !tbaa !1249
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2102
  %21 = load i8*, i8** %20, align 8, !dbg !2102, !tbaa !1252
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2103
  %23 = add i64 %22, 1, !dbg !2104
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2051, metadata !602), !dbg !2105
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2072, metadata !602) #10, !dbg !2106
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2108
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2052, metadata !602), !dbg !2109
  %25 = load i32, i32* %15, align 8, !dbg !2110, !tbaa !1163
  %26 = load i8*, i8** %18, align 8, !dbg !2111, !tbaa !1249
  %27 = load i8*, i8** %20, align 8, !dbg !2112, !tbaa !1252
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2113
  store i32 %8, i32* %7, align 4, !dbg !2114, !tbaa !662
  br i1 %11, label %29, label %30, !dbg !2115

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2116, !tbaa !810
  br label %30, !dbg !2118

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2119
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2120 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2124, !tbaa !609
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2122, metadata !602), !dbg !2125
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2123, metadata !602), !dbg !2126
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2123, metadata !602), !dbg !2126
  %2 = load i32, i32* @nslots, align 4, !dbg !2127, !tbaa !662
  %3 = icmp sgt i32 %2, 1, !dbg !2130
  br i1 %3, label %4, label %13, !dbg !2131

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2132

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2123, metadata !602), !dbg !2126
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2132
  %8 = load i8*, i8** %7, align 8, !dbg !2132, !tbaa !2133
  tail call void @free(i8* %8) #10, !dbg !2135
  %9 = add nuw i64 %6, 1, !dbg !2136
  %10 = load i32, i32* @nslots, align 4, !dbg !2127, !tbaa !662
  %11 = sext i32 %10 to i64, !dbg !2130
  %12 = icmp slt i64 %9, %11, !dbg !2130
  br i1 %12, label %5, label %13, !dbg !2131, !llvm.loop !2137

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2139
  %15 = load i8*, i8** %14, align 8, !dbg !2139, !tbaa !2133
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2141
  br i1 %16, label %18, label %17, !dbg !2142

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !2143
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2145, !tbaa !2146
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2147, !tbaa !2133
  br label %18, !dbg !2148

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2149
  br i1 %19, label %22, label %20, !dbg !2151

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2152
  tail call void @free(i8* %21) #10, !dbg !2154
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2155, !tbaa !609
  br label %22, !dbg !2156

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2157, !tbaa !662
  ret void, !dbg !2158
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2159 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2163, metadata !602), !dbg !2165
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2164, metadata !602), !dbg !2166
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2167
  ret i8* %3, !dbg !2168
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2169 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2173, metadata !602), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2174, metadata !602), !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2175, metadata !602), !dbg !2189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2176, metadata !602), !dbg !2190
  %5 = tail call i32* @__errno_location() #17, !dbg !2191
  %6 = load i32, i32* %5, align 4, !dbg !2191, !tbaa !662
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2177, metadata !602), !dbg !2192
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2193, !tbaa !609
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2178, metadata !602), !dbg !2194
  %8 = icmp slt i32 %0, 0, !dbg !2195
  br i1 %8, label %9, label %10, !dbg !2197

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2198
  unreachable, !dbg !2198

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2199, !tbaa !662
  %12 = icmp sgt i32 %11, %0, !dbg !2200
  br i1 %12, label %34, label %13, !dbg !2201

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2202
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2203
  br i1 %15, label %16, label %17, !dbg !2205

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2206
  unreachable, !dbg !2206

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2207
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2207
  %20 = add nsw i32 %0, 1, !dbg !2208
  %21 = sext i32 %20 to i64, !dbg !2209
  %22 = shl nsw i64 %21, 4, !dbg !2210
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2211
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2211
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2178, metadata !602), !dbg !2194
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2212, !tbaa !609
  br i1 %14, label %25, label %26, !dbg !2213

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2214, !tbaa.struct !2216
  br label %26, !dbg !2217

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2218, !tbaa !662
  %28 = sext i32 %27 to i64, !dbg !2219
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2219
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2220
  %31 = sub nsw i32 %20, %27, !dbg !2221
  %32 = sext i32 %31 to i64, !dbg !2222
  %33 = shl nsw i64 %32, 4, !dbg !2223
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2220
  store i32 %20, i32* @nslots, align 4, !dbg !2224, !tbaa !662
  br label %34, !dbg !2225

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2178, metadata !602), !dbg !2194
  %36 = sext i32 %0 to i64, !dbg !2226
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2227
  %38 = load i64, i64* %37, align 8, !dbg !2227, !tbaa !2146
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2182, metadata !602), !dbg !2228
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2229
  %40 = load i8*, i8** %39, align 8, !dbg !2229, !tbaa !2133
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2184, metadata !602), !dbg !2230
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2231
  %42 = load i32, i32* %41, align 4, !dbg !2231, !tbaa !1223
  %43 = or i32 %42, 1, !dbg !2232
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2185, metadata !602), !dbg !2233
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2234
  %45 = load i32, i32* %44, align 8, !dbg !2234, !tbaa !1163
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2235
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2236
  %48 = load i8*, i8** %47, align 8, !dbg !2236, !tbaa !1249
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2237
  %50 = load i8*, i8** %49, align 8, !dbg !2237, !tbaa !1252
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2238
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2186, metadata !602), !dbg !2239
  %52 = icmp ugt i64 %38, %51, !dbg !2240
  br i1 %52, label %63, label %53, !dbg !2242

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2243
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2182, metadata !602), !dbg !2228
  store i64 %54, i64* %37, align 8, !dbg !2245, !tbaa !2146
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2246
  br i1 %55, label %57, label %56, !dbg !2248

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2249
  br label %57, !dbg !2249

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2072, metadata !602) #10, !dbg !2250
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2252
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2184, metadata !602), !dbg !2230
  store i8* %58, i8** %39, align 8, !dbg !2253, !tbaa !2133
  %59 = load i32, i32* %44, align 8, !dbg !2254, !tbaa !1163
  %60 = load i8*, i8** %47, align 8, !dbg !2255, !tbaa !1249
  %61 = load i8*, i8** %49, align 8, !dbg !2256, !tbaa !1252
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2257
  br label %63, !dbg !2258

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2184, metadata !602), !dbg !2230
  store i32 %6, i32* %5, align 4, !dbg !2259, !tbaa !662
  ret i8* %64, !dbg !2260
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2261 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2265, metadata !602), !dbg !2268
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2266, metadata !602), !dbg !2269
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2267, metadata !602), !dbg !2270
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2271
  ret i8* %4, !dbg !2272
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2273 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2277, metadata !602), !dbg !2278
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2163, metadata !602) #10, !dbg !2279
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2164, metadata !602) #10, !dbg !2281
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2282
  ret i8* %2, !dbg !2283
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2284 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2288, metadata !602), !dbg !2290
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2289, metadata !602), !dbg !2291
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2265, metadata !602) #10, !dbg !2292
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2266, metadata !602) #10, !dbg !2294
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2267, metadata !602) #10, !dbg !2295
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2296
  ret i8* %3, !dbg !2297
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2298 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2306, metadata !2312), !dbg !2313
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2302, metadata !602), !dbg !2315
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2303, metadata !602), !dbg !2316
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2304, metadata !602), !dbg !2317
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2318
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2318
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2305, metadata !602), !dbg !2319
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2311, metadata !602) #10, !dbg !2320
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2321
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2321
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2306, metadata !602) #10, !dbg !2313
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2306, metadata !2322) #10, !dbg !2313
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2313
  %8 = icmp eq i32 %1, 10, !dbg !2323
  br i1 %8, label %9, label %10, !dbg !2325

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2326, !noalias !2327
  unreachable, !dbg !2326

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2306, metadata !2322) #10, !dbg !2313
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2330
  store i32 %1, i32* %11, align 8, !dbg !2330, !alias.scope !2327
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2330
  %13 = bitcast i32* %12 to i8*, !dbg !2330
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2330
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2331
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2305, metadata !602), !dbg !2319
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2332
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2333
  ret i8* %14, !dbg !2334
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2335 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2306, metadata !2312), !dbg !2344
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2339, metadata !602), !dbg !2346
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2340, metadata !602), !dbg !2347
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2341, metadata !602), !dbg !2348
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2342, metadata !602), !dbg !2349
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2350
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2350
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2343, metadata !602), !dbg !2351
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2311, metadata !602) #10, !dbg !2352
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2353
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2353
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2306, metadata !602) #10, !dbg !2344
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2306, metadata !2322) #10, !dbg !2344
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2344
  %9 = icmp eq i32 %1, 10, !dbg !2354
  br i1 %9, label %10, label %11, !dbg !2355

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2356, !noalias !2357
  unreachable, !dbg !2356

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2306, metadata !2322) #10, !dbg !2344
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2360
  store i32 %1, i32* %12, align 8, !dbg !2360, !alias.scope !2357
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2360
  %14 = bitcast i32* %13 to i8*, !dbg !2360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2360
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2343, metadata !602), !dbg !2351
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2363
  ret i8* %15, !dbg !2364
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2365 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2306, metadata !2312), !dbg !2371
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2369, metadata !602), !dbg !2374
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2370, metadata !602), !dbg !2375
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2302, metadata !602) #10, !dbg !2376
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2303, metadata !602) #10, !dbg !2377
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2304, metadata !602) #10, !dbg !2378
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2379
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2379
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2305, metadata !602) #10, !dbg !2380
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2311, metadata !602) #10, !dbg !2381
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2382
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2382
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2306, metadata !602) #10, !dbg !2371
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2306, metadata !2322) #10, !dbg !2371
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2371
  %7 = icmp eq i32 %0, 10, !dbg !2383
  br i1 %7, label %8, label %9, !dbg !2384

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2385, !noalias !2386
  unreachable, !dbg !2385

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2306, metadata !2322) #10, !dbg !2371
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2389
  store i32 %0, i32* %10, align 8, !dbg !2389, !alias.scope !2386
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2389
  %12 = bitcast i32* %11 to i8*, !dbg !2389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2389
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2390
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2305, metadata !602) #10, !dbg !2380
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2391
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2392
  ret i8* %13, !dbg !2393
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2394 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2306, metadata !2312), !dbg !2401
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2398, metadata !602), !dbg !2404
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2399, metadata !602), !dbg !2405
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2400, metadata !602), !dbg !2406
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2339, metadata !602) #10, !dbg !2407
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2340, metadata !602) #10, !dbg !2408
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2341, metadata !602) #10, !dbg !2409
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2342, metadata !602) #10, !dbg !2410
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2411
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2411
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2343, metadata !602) #10, !dbg !2412
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2311, metadata !602) #10, !dbg !2413
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2414
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2414
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2306, metadata !602) #10, !dbg !2401
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2306, metadata !2322) #10, !dbg !2401
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2401
  %8 = icmp eq i32 %0, 10, !dbg !2415
  br i1 %8, label %9, label %10, !dbg !2416

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2417, !noalias !2418
  unreachable, !dbg !2417

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2306, metadata !2322) #10, !dbg !2401
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2421
  store i32 %0, i32* %11, align 8, !dbg !2421, !alias.scope !2418
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2421
  %13 = bitcast i32* %12 to i8*, !dbg !2421
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2421
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2422
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2343, metadata !602) #10, !dbg !2412
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2423
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2424
  ret i8* %14, !dbg !2425
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2426 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2430, metadata !602), !dbg !2434
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2431, metadata !602), !dbg !2435
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2432, metadata !602), !dbg !2436
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2437
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2438, !tbaa.struct !2439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2433, metadata !602), !dbg !2440
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1182, metadata !602), !dbg !2441
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1183, metadata !602), !dbg !2443
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1184, metadata !602), !dbg !2444
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1185, metadata !602), !dbg !2445
  %6 = lshr i8 %2, 5, !dbg !2446
  %7 = zext i8 %6 to i64, !dbg !2446
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2447
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1186, metadata !602), !dbg !2448
  %9 = and i8 %2, 31, !dbg !2449
  %10 = zext i8 %9 to i32, !dbg !2450
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1188, metadata !602), !dbg !2451
  %11 = load i32, i32* %8, align 4, !dbg !2452, !tbaa !662
  %12 = lshr i32 %11, %10, !dbg !2453
  %13 = and i32 %12, 1, !dbg !2454
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1189, metadata !602), !dbg !2455
  %14 = xor i32 %13, 1, !dbg !2456
  %15 = shl i32 %14, %10, !dbg !2457
  %16 = xor i32 %15, %11, !dbg !2458
  store i32 %16, i32* %8, align 4, !dbg !2458, !tbaa !662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2433, metadata !602), !dbg !2440
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2459
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2460
  ret i8* %17, !dbg !2461
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2462 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2466, metadata !602), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2467, metadata !602), !dbg !2469
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2430, metadata !602) #10, !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2431, metadata !602) #10, !dbg !2472
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2432, metadata !602) #10, !dbg !2473
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2474
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2475, !tbaa.struct !2439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2433, metadata !602) #10, !dbg !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1182, metadata !602) #10, !dbg !2477
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1183, metadata !602) #10, !dbg !2479
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1184, metadata !602) #10, !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1185, metadata !602) #10, !dbg !2481
  %5 = lshr i8 %1, 5, !dbg !2482
  %6 = zext i8 %5 to i64, !dbg !2482
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2483
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1186, metadata !602) #10, !dbg !2484
  %8 = and i8 %1, 31, !dbg !2485
  %9 = zext i8 %8 to i32, !dbg !2486
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1188, metadata !602) #10, !dbg !2487
  %10 = load i32, i32* %7, align 4, !dbg !2488, !tbaa !662
  %11 = lshr i32 %10, %9, !dbg !2489
  %12 = and i32 %11, 1, !dbg !2490
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1189, metadata !602) #10, !dbg !2491
  %13 = xor i32 %12, 1, !dbg !2492
  %14 = shl i32 %13, %9, !dbg !2493
  %15 = xor i32 %14, %10, !dbg !2494
  store i32 %15, i32* %7, align 4, !dbg !2494, !tbaa !662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2433, metadata !602) #10, !dbg !2476
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2495
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2496
  ret i8* %16, !dbg !2497
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2498 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2500, metadata !602), !dbg !2501
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2466, metadata !602) #10, !dbg !2502
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2467, metadata !602) #10, !dbg !2504
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2430, metadata !602) #10, !dbg !2505
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2431, metadata !602) #10, !dbg !2507
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2432, metadata !602) #10, !dbg !2508
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2509
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2509
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2510, !tbaa.struct !2439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2433, metadata !602) #10, !dbg !2511
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1182, metadata !602) #10, !dbg !2512
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1183, metadata !602) #10, !dbg !2514
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1184, metadata !602) #10, !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1185, metadata !602) #10, !dbg !2516
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2517
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1186, metadata !602) #10, !dbg !2518
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1188, metadata !602) #10, !dbg !2519
  %5 = load i32, i32* %4, align 4, !dbg !2520, !tbaa !662
  %6 = or i32 %5, 67108864, !dbg !2521
  store i32 %6, i32* %4, align 4, !dbg !2521, !tbaa !662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2433, metadata !602) #10, !dbg !2511
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2522
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2523
  ret i8* %7, !dbg !2524
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2525 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2527, metadata !602), !dbg !2529
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2528, metadata !602), !dbg !2530
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2430, metadata !602) #10, !dbg !2531
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2431, metadata !602) #10, !dbg !2533
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2432, metadata !602) #10, !dbg !2534
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2535
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2536, !tbaa.struct !2439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2433, metadata !602) #10, !dbg !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1182, metadata !602) #10, !dbg !2538
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1183, metadata !602) #10, !dbg !2540
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1184, metadata !602) #10, !dbg !2541
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1185, metadata !602) #10, !dbg !2542
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2543
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1186, metadata !602) #10, !dbg !2544
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1188, metadata !602) #10, !dbg !2545
  %6 = load i32, i32* %5, align 4, !dbg !2546, !tbaa !662
  %7 = or i32 %6, 67108864, !dbg !2547
  store i32 %7, i32* %5, align 4, !dbg !2547, !tbaa !662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2433, metadata !602) #10, !dbg !2537
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2548
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2549
  ret i8* %8, !dbg !2550
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2551 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2306, metadata !2312), !dbg !2557
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2553, metadata !602), !dbg !2559
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2554, metadata !602), !dbg !2560
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2555, metadata !602), !dbg !2561
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2562
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2562
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2311, metadata !602) #10, !dbg !2563
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2564
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2564
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2306, metadata !602) #10, !dbg !2557
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2306, metadata !2322) #10, !dbg !2557
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2557
  %9 = icmp eq i32 %1, 10, !dbg !2565
  br i1 %9, label %10, label %11, !dbg !2566

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2567, !noalias !2568
  unreachable, !dbg !2567

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2306, metadata !2322) #10, !dbg !2557
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2571
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2571
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2572
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2573
  store i32 %1, i32* %13, align 8, !dbg !2573
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2573
  %15 = bitcast i32* %14 to i8*, !dbg !2573
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2573
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2556, metadata !602), !dbg !2574
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1182, metadata !602), !dbg !2575
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1183, metadata !602), !dbg !2577
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1184, metadata !602), !dbg !2578
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1185, metadata !602), !dbg !2579
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2580
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1186, metadata !602), !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1188, metadata !602), !dbg !2582
  %17 = load i32, i32* %16, align 4, !dbg !2583, !tbaa !662
  %18 = or i32 %17, 67108864, !dbg !2584
  store i32 %18, i32* %16, align 4, !dbg !2584, !tbaa !662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2556, metadata !602), !dbg !2574
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2585
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2586
  ret i8* %19, !dbg !2587
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2588 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2592, metadata !602), !dbg !2596
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2593, metadata !602), !dbg !2597
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2594, metadata !602), !dbg !2598
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2595, metadata !602), !dbg !2599
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2600, metadata !602) #10, !dbg !2610
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2605, metadata !602) #10, !dbg !2612
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2606, metadata !602) #10, !dbg !2613
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2607, metadata !602) #10, !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2608, metadata !602) #10, !dbg !2615
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2616
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2616
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2617, !tbaa.struct !2439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2609, metadata !602) #10, !dbg !2618
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1231, metadata !602) #10, !dbg !2619
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1232, metadata !602) #10, !dbg !2621
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1233, metadata !602) #10, !dbg !2622
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1231, metadata !602) #10, !dbg !2619
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1231, metadata !602) #10, !dbg !2619
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2623
  store i32 10, i32* %7, align 8, !dbg !2624, !tbaa !1163
  %8 = icmp ne i8* %1, null, !dbg !2625
  %9 = icmp ne i8* %2, null, !dbg !2626
  %10 = and i1 %8, %9, !dbg !2627
  br i1 %10, label %12, label %11, !dbg !2627

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2628
  unreachable, !dbg !2628

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2629
  store i8* %1, i8** %13, align 8, !dbg !2630, !tbaa !1249
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2631
  store i8* %2, i8** %14, align 8, !dbg !2632, !tbaa !1252
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2609, metadata !602) #10, !dbg !2618
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2633
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2634
  ret i8* %15, !dbg !2635
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2601 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2600, metadata !602), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2605, metadata !602), !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2606, metadata !602), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2607, metadata !602), !dbg !2639
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2608, metadata !602), !dbg !2640
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2641
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2641
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2642, !tbaa.struct !2439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2609, metadata !602), !dbg !2643
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1231, metadata !602) #10, !dbg !2644
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1232, metadata !602) #10, !dbg !2646
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1233, metadata !602) #10, !dbg !2647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1231, metadata !602) #10, !dbg !2644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1231, metadata !602) #10, !dbg !2644
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2648
  store i32 10, i32* %8, align 8, !dbg !2649, !tbaa !1163
  %9 = icmp ne i8* %1, null, !dbg !2650
  %10 = icmp ne i8* %2, null, !dbg !2651
  %11 = and i1 %9, %10, !dbg !2652
  br i1 %11, label %13, label %12, !dbg !2652

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2653
  unreachable, !dbg !2653

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2654
  store i8* %1, i8** %14, align 8, !dbg !2655, !tbaa !1249
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2656
  store i8* %2, i8** %15, align 8, !dbg !2657, !tbaa !1252
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2609, metadata !602), !dbg !2643
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2658
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2659
  ret i8* %16, !dbg !2660
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2661 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2665, metadata !602), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2666, metadata !602), !dbg !2669
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2667, metadata !602), !dbg !2670
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2592, metadata !602) #10, !dbg !2671
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2593, metadata !602) #10, !dbg !2673
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2594, metadata !602) #10, !dbg !2674
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2595, metadata !602) #10, !dbg !2675
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2600, metadata !602) #10, !dbg !2676
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2605, metadata !602) #10, !dbg !2678
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2606, metadata !602) #10, !dbg !2679
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2607, metadata !602) #10, !dbg !2680
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2608, metadata !602) #10, !dbg !2681
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2682
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2683, !tbaa.struct !2439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2609, metadata !602) #10, !dbg !2684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1231, metadata !602) #10, !dbg !2685
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1232, metadata !602) #10, !dbg !2687
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1233, metadata !602) #10, !dbg !2688
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1231, metadata !602) #10, !dbg !2685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1231, metadata !602) #10, !dbg !2685
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2689
  store i32 10, i32* %6, align 8, !dbg !2690, !tbaa !1163
  %7 = icmp ne i8* %0, null, !dbg !2691
  %8 = icmp ne i8* %1, null, !dbg !2692
  %9 = and i1 %7, %8, !dbg !2693
  br i1 %9, label %11, label %10, !dbg !2693

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2694
  unreachable, !dbg !2694

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2695
  store i8* %0, i8** %12, align 8, !dbg !2696, !tbaa !1249
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2697
  store i8* %1, i8** %13, align 8, !dbg !2698, !tbaa !1252
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2609, metadata !602) #10, !dbg !2684
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2699
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2700
  ret i8* %14, !dbg !2701
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2702 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2706, metadata !602), !dbg !2710
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2707, metadata !602), !dbg !2711
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2708, metadata !602), !dbg !2712
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2709, metadata !602), !dbg !2713
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2600, metadata !602) #10, !dbg !2714
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2605, metadata !602) #10, !dbg !2716
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2606, metadata !602) #10, !dbg !2717
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2607, metadata !602) #10, !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2608, metadata !602) #10, !dbg !2719
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2720
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2721, !tbaa.struct !2439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2609, metadata !602) #10, !dbg !2722
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1231, metadata !602) #10, !dbg !2723
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1232, metadata !602) #10, !dbg !2725
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1233, metadata !602) #10, !dbg !2726
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1231, metadata !602) #10, !dbg !2723
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1231, metadata !602) #10, !dbg !2723
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2727
  store i32 10, i32* %7, align 8, !dbg !2728, !tbaa !1163
  %8 = icmp ne i8* %0, null, !dbg !2729
  %9 = icmp ne i8* %1, null, !dbg !2730
  %10 = and i1 %8, %9, !dbg !2731
  br i1 %10, label %12, label %11, !dbg !2731

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2732
  unreachable, !dbg !2732

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2733
  store i8* %0, i8** %13, align 8, !dbg !2734, !tbaa !1249
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2735
  store i8* %1, i8** %14, align 8, !dbg !2736, !tbaa !1252
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2609, metadata !602) #10, !dbg !2722
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2737
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2738
  ret i8* %15, !dbg !2739
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2740 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2744, metadata !602), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2745, metadata !602), !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2746, metadata !602), !dbg !2749
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2750
  ret i8* %4, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2752 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2756, metadata !602), !dbg !2758
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2757, metadata !602), !dbg !2759
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2744, metadata !602) #10, !dbg !2760
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2745, metadata !602) #10, !dbg !2762
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2746, metadata !602) #10, !dbg !2763
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2764
  ret i8* %3, !dbg !2765
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2766 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2770, metadata !602), !dbg !2772
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2771, metadata !602), !dbg !2773
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2744, metadata !602) #10, !dbg !2774
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2745, metadata !602) #10, !dbg !2776
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2746, metadata !602) #10, !dbg !2777
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2778
  ret i8* %3, !dbg !2779
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2780 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2784, metadata !602), !dbg !2785
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2770, metadata !602) #10, !dbg !2786
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2771, metadata !602) #10, !dbg !2788
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2744, metadata !602) #10, !dbg !2789
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2745, metadata !602) #10, !dbg !2791
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2746, metadata !602) #10, !dbg !2792
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2793
  ret i8* %2, !dbg !2794
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2795 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2840, metadata !602), !dbg !2846
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2841, metadata !602), !dbg !2847
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2842, metadata !602), !dbg !2848
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2843, metadata !602), !dbg !2849
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2844, metadata !602), !dbg !2850
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2845, metadata !602), !dbg !2851
  %7 = icmp eq i8* %1, null, !dbg !2852
  br i1 %7, label %10, label %8, !dbg !2854

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2855
  br label %12, !dbg !2855

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.62, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2856
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.63, i64 0, i64 0), i32 5) #10, !dbg !2857
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2857
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.64, i64 0, i64 0), i32 5) #10, !dbg !2858
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2858
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
  ], !dbg !2859

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2860
  unreachable, !dbg !2860

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.65, i64 0, i64 0), i32 5) #10, !dbg !2862
  %20 = load i8*, i8** %4, align 8, !dbg !2862, !tbaa !609
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2862
  br label %146, !dbg !2863

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.66, i64 0, i64 0), i32 5) #10, !dbg !2864
  %24 = load i8*, i8** %4, align 8, !dbg !2864, !tbaa !609
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2864
  %26 = load i8*, i8** %25, align 8, !dbg !2864, !tbaa !609
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2864
  br label %146, !dbg !2865

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.67, i64 0, i64 0), i32 5) #10, !dbg !2866
  %30 = load i8*, i8** %4, align 8, !dbg !2866, !tbaa !609
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2866
  %32 = load i8*, i8** %31, align 8, !dbg !2866, !tbaa !609
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2866
  %34 = load i8*, i8** %33, align 8, !dbg !2866, !tbaa !609
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2866
  br label %146, !dbg !2867

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.68, i64 0, i64 0), i32 5) #10, !dbg !2868
  %38 = load i8*, i8** %4, align 8, !dbg !2868, !tbaa !609
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2868
  %40 = load i8*, i8** %39, align 8, !dbg !2868, !tbaa !609
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2868
  %42 = load i8*, i8** %41, align 8, !dbg !2868, !tbaa !609
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2868
  %44 = load i8*, i8** %43, align 8, !dbg !2868, !tbaa !609
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2868
  br label %146, !dbg !2869

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.69, i64 0, i64 0), i32 5) #10, !dbg !2870
  %48 = load i8*, i8** %4, align 8, !dbg !2870, !tbaa !609
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2870
  %50 = load i8*, i8** %49, align 8, !dbg !2870, !tbaa !609
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2870
  %52 = load i8*, i8** %51, align 8, !dbg !2870, !tbaa !609
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2870
  %54 = load i8*, i8** %53, align 8, !dbg !2870, !tbaa !609
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2870
  %56 = load i8*, i8** %55, align 8, !dbg !2870, !tbaa !609
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2870
  br label %146, !dbg !2871

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.70, i64 0, i64 0), i32 5) #10, !dbg !2872
  %60 = load i8*, i8** %4, align 8, !dbg !2872, !tbaa !609
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2872
  %62 = load i8*, i8** %61, align 8, !dbg !2872, !tbaa !609
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2872
  %64 = load i8*, i8** %63, align 8, !dbg !2872, !tbaa !609
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2872
  %66 = load i8*, i8** %65, align 8, !dbg !2872, !tbaa !609
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2872
  %68 = load i8*, i8** %67, align 8, !dbg !2872, !tbaa !609
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2872
  %70 = load i8*, i8** %69, align 8, !dbg !2872, !tbaa !609
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2872
  br label %146, !dbg !2873

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.71, i64 0, i64 0), i32 5) #10, !dbg !2874
  %74 = load i8*, i8** %4, align 8, !dbg !2874, !tbaa !609
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2874
  %76 = load i8*, i8** %75, align 8, !dbg !2874, !tbaa !609
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2874
  %78 = load i8*, i8** %77, align 8, !dbg !2874, !tbaa !609
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2874
  %80 = load i8*, i8** %79, align 8, !dbg !2874, !tbaa !609
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2874
  %82 = load i8*, i8** %81, align 8, !dbg !2874, !tbaa !609
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2874
  %84 = load i8*, i8** %83, align 8, !dbg !2874, !tbaa !609
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2874
  %86 = load i8*, i8** %85, align 8, !dbg !2874, !tbaa !609
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2874
  br label %146, !dbg !2875

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.72, i64 0, i64 0), i32 5) #10, !dbg !2876
  %90 = load i8*, i8** %4, align 8, !dbg !2876, !tbaa !609
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2876
  %92 = load i8*, i8** %91, align 8, !dbg !2876, !tbaa !609
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2876
  %94 = load i8*, i8** %93, align 8, !dbg !2876, !tbaa !609
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2876
  %96 = load i8*, i8** %95, align 8, !dbg !2876, !tbaa !609
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2876
  %98 = load i8*, i8** %97, align 8, !dbg !2876, !tbaa !609
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2876
  %100 = load i8*, i8** %99, align 8, !dbg !2876, !tbaa !609
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2876
  %102 = load i8*, i8** %101, align 8, !dbg !2876, !tbaa !609
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2876
  %104 = load i8*, i8** %103, align 8, !dbg !2876, !tbaa !609
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2876
  br label %146, !dbg !2877

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.73, i64 0, i64 0), i32 5) #10, !dbg !2878
  %108 = load i8*, i8** %4, align 8, !dbg !2878, !tbaa !609
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2878
  %110 = load i8*, i8** %109, align 8, !dbg !2878, !tbaa !609
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2878
  %112 = load i8*, i8** %111, align 8, !dbg !2878, !tbaa !609
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2878
  %114 = load i8*, i8** %113, align 8, !dbg !2878, !tbaa !609
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2878
  %116 = load i8*, i8** %115, align 8, !dbg !2878, !tbaa !609
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2878
  %118 = load i8*, i8** %117, align 8, !dbg !2878, !tbaa !609
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2878
  %120 = load i8*, i8** %119, align 8, !dbg !2878, !tbaa !609
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2878
  %122 = load i8*, i8** %121, align 8, !dbg !2878, !tbaa !609
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2878
  %124 = load i8*, i8** %123, align 8, !dbg !2878, !tbaa !609
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2878
  br label %146, !dbg !2879

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !2880
  %128 = load i8*, i8** %4, align 8, !dbg !2880, !tbaa !609
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2880
  %130 = load i8*, i8** %129, align 8, !dbg !2880, !tbaa !609
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2880
  %132 = load i8*, i8** %131, align 8, !dbg !2880, !tbaa !609
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2880
  %134 = load i8*, i8** %133, align 8, !dbg !2880, !tbaa !609
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2880
  %136 = load i8*, i8** %135, align 8, !dbg !2880, !tbaa !609
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2880
  %138 = load i8*, i8** %137, align 8, !dbg !2880, !tbaa !609
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2880
  %140 = load i8*, i8** %139, align 8, !dbg !2880, !tbaa !609
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2880
  %142 = load i8*, i8** %141, align 8, !dbg !2880, !tbaa !609
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2880
  %144 = load i8*, i8** %143, align 8, !dbg !2880, !tbaa !609
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2880
  br label %146, !dbg !2881

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2882
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2883 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2887, metadata !602), !dbg !2893
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2888, metadata !602), !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2889, metadata !602), !dbg !2895
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2890, metadata !602), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2891, metadata !602), !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2892, metadata !602), !dbg !2898
  br label %6, !dbg !2899

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2892, metadata !602), !dbg !2898
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2901
  %9 = load i8*, i8** %8, align 8, !dbg !2901, !tbaa !609
  %10 = icmp eq i8* %9, null, !dbg !2903
  %11 = add i64 %7, 1, !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2892, metadata !602), !dbg !2898
  br i1 %10, label %12, label %6, !dbg !2903, !llvm.loop !2905

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2907
  ret void, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2909 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2920, metadata !602), !dbg !2928
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2921, metadata !602), !dbg !2929
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2922, metadata !602), !dbg !2930
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2923, metadata !602), !dbg !2931
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2924, metadata !602), !dbg !2932
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2933
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2933
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2926, metadata !602), !dbg !2934
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2925, metadata !602), !dbg !2935
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2925, metadata !602), !dbg !2935
  %11 = load i32, i32* %8, align 8, !dbg !2936
  %12 = icmp ult i32 %11, 41, !dbg !2936
  br i1 %12, label %13, label %18, !dbg !2936

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2936
  %15 = sext i32 %11 to i64, !dbg !2936
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2936
  %17 = add i32 %11, 8, !dbg !2936
  store i32 %17, i32* %8, align 8, !dbg !2936
  br label %21, !dbg !2936

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2936
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2936
  store i8* %20, i8** %10, align 8, !dbg !2936
  br label %21, !dbg !2936

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2936
  %25 = load i8*, i8** %24, align 8, !dbg !2936
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2939
  store i8* %25, i8** %26, align 16, !dbg !2940, !tbaa !609
  %27 = icmp eq i8* %25, null, !dbg !2941
  br i1 %27, label %30, label %28, !dbg !2942

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2925, metadata !602), !dbg !2935
  %29 = icmp ult i32 %22, 41, !dbg !2936
  br i1 %29, label %35, label %32, !dbg !2936

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2943
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2944
  ret void, !dbg !2944

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2936
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2936
  store i8* %34, i8** %10, align 8, !dbg !2936
  br label %40, !dbg !2936

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2936
  %37 = sext i32 %22 to i64, !dbg !2936
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2936
  %39 = add i32 %22, 8, !dbg !2936
  store i32 %39, i32* %8, align 8, !dbg !2936
  br label %40, !dbg !2936

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2936
  %44 = load i8*, i8** %43, align 8, !dbg !2936
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2939
  store i8* %44, i8** %45, align 8, !dbg !2940, !tbaa !609
  %46 = icmp eq i8* %44, null, !dbg !2941
  br i1 %46, label %30, label %47, !dbg !2942

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2925, metadata !602), !dbg !2935
  %48 = icmp ult i32 %41, 41, !dbg !2936
  br i1 %48, label %52, label %49, !dbg !2936

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2936
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2936
  store i8* %51, i8** %10, align 8, !dbg !2936
  br label %57, !dbg !2936

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2936
  %54 = sext i32 %41 to i64, !dbg !2936
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2936
  %56 = add i32 %41, 8, !dbg !2936
  store i32 %56, i32* %8, align 8, !dbg !2936
  br label %57, !dbg !2936

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2936
  %61 = load i8*, i8** %60, align 8, !dbg !2936
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2939
  store i8* %61, i8** %62, align 16, !dbg !2940, !tbaa !609
  %63 = icmp eq i8* %61, null, !dbg !2941
  br i1 %63, label %30, label %64, !dbg !2942

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2925, metadata !602), !dbg !2935
  %65 = icmp ult i32 %58, 41, !dbg !2936
  br i1 %65, label %69, label %66, !dbg !2936

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2936
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2936
  store i8* %68, i8** %10, align 8, !dbg !2936
  br label %74, !dbg !2936

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2936
  %71 = sext i32 %58 to i64, !dbg !2936
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2936
  %73 = add i32 %58, 8, !dbg !2936
  store i32 %73, i32* %8, align 8, !dbg !2936
  br label %74, !dbg !2936

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2936
  %78 = load i8*, i8** %77, align 8, !dbg !2936
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2939
  store i8* %78, i8** %79, align 8, !dbg !2940, !tbaa !609
  %80 = icmp eq i8* %78, null, !dbg !2941
  br i1 %80, label %30, label %81, !dbg !2942

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2925, metadata !602), !dbg !2935
  %82 = icmp ult i32 %75, 41, !dbg !2936
  br i1 %82, label %86, label %83, !dbg !2936

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2936
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2936
  store i8* %85, i8** %10, align 8, !dbg !2936
  br label %91, !dbg !2936

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2936
  %88 = sext i32 %75 to i64, !dbg !2936
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2936
  %90 = add i32 %75, 8, !dbg !2936
  store i32 %90, i32* %8, align 8, !dbg !2936
  br label %91, !dbg !2936

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2936
  %95 = load i8*, i8** %94, align 8, !dbg !2936
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2939
  store i8* %95, i8** %96, align 16, !dbg !2940, !tbaa !609
  %97 = icmp eq i8* %95, null, !dbg !2941
  br i1 %97, label %30, label %98, !dbg !2942

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2925, metadata !602), !dbg !2935
  %99 = icmp ult i32 %92, 41, !dbg !2936
  br i1 %99, label %103, label %100, !dbg !2936

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2936
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2936
  store i8* %102, i8** %10, align 8, !dbg !2936
  br label %108, !dbg !2936

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2936
  %105 = sext i32 %92 to i64, !dbg !2936
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2936
  %107 = add i32 %92, 8, !dbg !2936
  store i32 %107, i32* %8, align 8, !dbg !2936
  br label %108, !dbg !2936

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2936
  %111 = load i8*, i8** %110, align 8, !dbg !2936
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2939
  store i8* %111, i8** %112, align 8, !dbg !2940, !tbaa !609
  %113 = icmp eq i8* %111, null, !dbg !2941
  br i1 %113, label %30, label %114, !dbg !2942

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2925, metadata !602), !dbg !2935
  %115 = load i8*, i8** %10, align 8, !dbg !2936
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2936
  store i8* %116, i8** %10, align 8, !dbg !2936
  %117 = bitcast i8* %115 to i8**, !dbg !2936
  %118 = load i8*, i8** %117, align 8, !dbg !2936
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2939
  store i8* %118, i8** %119, align 16, !dbg !2940, !tbaa !609
  %120 = icmp eq i8* %118, null, !dbg !2941
  br i1 %120, label %30, label %121, !dbg !2942

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2925, metadata !602), !dbg !2935
  %122 = load i8*, i8** %10, align 8, !dbg !2936
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2936
  store i8* %123, i8** %10, align 8, !dbg !2936
  %124 = bitcast i8* %122 to i8**, !dbg !2936
  %125 = load i8*, i8** %124, align 8, !dbg !2936
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2939
  store i8* %125, i8** %126, align 8, !dbg !2940, !tbaa !609
  %127 = icmp eq i8* %125, null, !dbg !2941
  br i1 %127, label %30, label %128, !dbg !2942

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2925, metadata !602), !dbg !2935
  %129 = load i8*, i8** %10, align 8, !dbg !2936
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2936
  store i8* %130, i8** %10, align 8, !dbg !2936
  %131 = bitcast i8* %129 to i8**, !dbg !2936
  %132 = load i8*, i8** %131, align 8, !dbg !2936
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2939
  store i8* %132, i8** %133, align 16, !dbg !2940, !tbaa !609
  %134 = icmp eq i8* %132, null, !dbg !2941
  br i1 %134, label %30, label %135, !dbg !2942

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2925, metadata !602), !dbg !2935
  %136 = load i8*, i8** %10, align 8, !dbg !2936
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2936
  store i8* %137, i8** %10, align 8, !dbg !2936
  %138 = bitcast i8* %136 to i8**, !dbg !2936
  %139 = load i8*, i8** %138, align 8, !dbg !2936
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2939
  store i8* %139, i8** %140, align 8, !dbg !2940, !tbaa !609
  %141 = icmp eq i8* %139, null, !dbg !2941
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2925, metadata !602), !dbg !2935
  %142 = select i1 %141, i64 9, i64 10, !dbg !2942
  br label %30, !dbg !2942
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2945 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2949, metadata !602), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2950, metadata !602), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2951, metadata !602), !dbg !2960
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2952, metadata !602), !dbg !2961
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2962
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2962
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2953, metadata !602), !dbg !2963
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2964
  call void @llvm.va_start(i8* nonnull %6), !dbg !2964
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2965
  call void @llvm.va_end(i8* nonnull %6), !dbg !2966
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2967
  ret void, !dbg !2967
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2968 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.76, i64 0, i64 0), i32 5) #10, !dbg !2969
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.77, i64 0, i64 0)) #10, !dbg !2969
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !2970
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.79, i64 0, i64 0)) #10, !dbg !2970
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.80, i64 0, i64 0), i32 5) #10, !dbg !2971
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2971, !tbaa !609
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !2971
  ret void, !dbg !2972
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2973 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2977, metadata !602), !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2978, metadata !602), !dbg !2980
  %3 = udiv i64 9223372036854775807, %1, !dbg !2981
  %4 = icmp ult i64 %3, %0, !dbg !2981
  br i1 %4, label %5, label %6, !dbg !2983

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2984
  unreachable, !dbg !2984

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2985
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2986, metadata !602) #10, !dbg !2993
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2995
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2992, metadata !602) #10, !dbg !2996
  %9 = icmp eq i8* %8, null, !dbg !2997
  %10 = icmp ne i64 %7, 0, !dbg !2999
  %11 = and i1 %10, %9, !dbg !3000
  br i1 %11, label %12, label %13, !dbg !3000

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3001
  unreachable, !dbg !3001

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3002
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2987 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2986, metadata !602), !dbg !3003
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3004
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2992, metadata !602), !dbg !3005
  %3 = icmp eq i8* %2, null, !dbg !3006
  %4 = icmp ne i64 %0, 0, !dbg !3007
  %5 = and i1 %4, %3, !dbg !3008
  br i1 %5, label %6, label %7, !dbg !3008

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3009
  unreachable, !dbg !3009

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3010
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3011 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3015, metadata !602), !dbg !3018
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3016, metadata !602), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3017, metadata !602), !dbg !3020
  %4 = udiv i64 9223372036854775807, %2, !dbg !3021
  %5 = icmp ult i64 %4, %1, !dbg !3021
  br i1 %5, label %6, label %7, !dbg !3023

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3024
  unreachable, !dbg !3024

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3025
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3026, metadata !602) #10, !dbg !3032
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3031, metadata !602) #10, !dbg !3034
  %9 = icmp eq i64 %8, 0, !dbg !3035
  %10 = icmp ne i8* %0, null, !dbg !3037
  %11 = and i1 %10, %9, !dbg !3038
  br i1 %11, label %12, label %13, !dbg !3038

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3039
  br label %19, !dbg !3041

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3042
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3026, metadata !602) #10, !dbg !3032
  %15 = icmp eq i8* %14, null, !dbg !3043
  %16 = icmp ne i64 %8, 0, !dbg !3045
  %17 = and i1 %16, %15, !dbg !3046
  br i1 %17, label %18, label %19, !dbg !3046

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3047
  unreachable, !dbg !3047

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3048
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3027 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3026, metadata !602), !dbg !3049
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3031, metadata !602), !dbg !3050
  %3 = icmp eq i64 %1, 0, !dbg !3051
  %4 = icmp ne i8* %0, null, !dbg !3052
  %5 = and i1 %4, %3, !dbg !3053
  br i1 %5, label %6, label %7, !dbg !3053

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3054
  br label %13, !dbg !3055

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3056
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3026, metadata !602), !dbg !3049
  %9 = icmp eq i8* %8, null, !dbg !3057
  %10 = icmp ne i64 %1, 0, !dbg !3058
  %11 = and i1 %10, %9, !dbg !3059
  br i1 %11, label %12, label %13, !dbg !3059

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3060
  unreachable, !dbg !3060

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3061
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !562 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !567, metadata !602), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !568, metadata !602), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !569, metadata !602), !dbg !3064
  %4 = load i64, i64* %1, align 8, !dbg !3065, !tbaa !810
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !570, metadata !602), !dbg !3066
  %5 = icmp eq i8* %0, null, !dbg !3067
  br i1 %5, label %6, label %13, !dbg !3069

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3070
  br i1 %7, label %8, label %17, !dbg !3073

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3074
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !570, metadata !602), !dbg !3066
  %10 = icmp ugt i64 %2, 128, !dbg !3076
  %11 = zext i1 %10 to i64, !dbg !3076
  %12 = add nuw nsw i64 %9, %11, !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !570, metadata !602), !dbg !3066
  br label %17, !dbg !3078

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3079
  %15 = icmp ugt i64 %14, %4, !dbg !3082
  br i1 %15, label %20, label %16, !dbg !3083

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3084
  unreachable, !dbg !3084

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !570, metadata !602), !dbg !3066
  store i64 %18, i64* %1, align 8, !dbg !3085, !tbaa !810
  %19 = mul i64 %18, %2, !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3026, metadata !602) #10, !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3031, metadata !602) #10, !dbg !3089
  br label %27, !dbg !3090

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3091
  %22 = add i64 %4, 1, !dbg !3092
  %23 = add i64 %22, %21, !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !570, metadata !602), !dbg !3066
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !570, metadata !602), !dbg !3066
  store i64 %23, i64* %1, align 8, !dbg !3085, !tbaa !810
  %24 = mul i64 %23, %2, !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3026, metadata !602) #10, !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3031, metadata !602) #10, !dbg !3089
  %25 = icmp eq i64 %24, 0, !dbg !3094
  br i1 %25, label %26, label %27, !dbg !3090

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3095
  br label %34, !dbg !3096

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3097
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3026, metadata !602) #10, !dbg !3087
  %30 = icmp eq i8* %29, null, !dbg !3098
  %31 = icmp ne i64 %28, 0, !dbg !3099
  %32 = and i1 %31, %30, !dbg !3100
  br i1 %32, label %33, label %34, !dbg !3100

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3101
  unreachable, !dbg !3101

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3102
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3103 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3105, metadata !602), !dbg !3106
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2986, metadata !602) #10, !dbg !3107
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3109
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2992, metadata !602) #10, !dbg !3110
  %3 = icmp eq i8* %2, null, !dbg !3111
  %4 = icmp ne i64 %0, 0, !dbg !3112
  %5 = and i1 %4, %3, !dbg !3113
  br i1 %5, label %6, label %7, !dbg !3113

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3114
  unreachable, !dbg !3114

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3115
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3116 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3120, metadata !602), !dbg !3122
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3121, metadata !602), !dbg !3123
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !567, metadata !602) #10, !dbg !3124
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !568, metadata !602) #10, !dbg !3126
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !569, metadata !602) #10, !dbg !3127
  %3 = load i64, i64* %1, align 8, !dbg !3128, !tbaa !810
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !570, metadata !602) #10, !dbg !3129
  %4 = icmp eq i8* %0, null, !dbg !3130
  br i1 %4, label %5, label %8, !dbg !3131

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3132
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !570, metadata !602) #10, !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !570, metadata !602) #10, !dbg !3129
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3133
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !570, metadata !602) #10, !dbg !3129
  store i64 %7, i64* %1, align 8, !dbg !3134, !tbaa !810
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3026, metadata !602) #10, !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3031, metadata !602) #10, !dbg !3137
  br label %17, !dbg !3138

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3139
  br i1 %9, label %11, label %10, !dbg !3140

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3141
  unreachable, !dbg !3141

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3142
  %13 = add i64 %3, 1, !dbg !3143
  %14 = add i64 %13, %12, !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !570, metadata !602) #10, !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !570, metadata !602) #10, !dbg !3129
  store i64 %14, i64* %1, align 8, !dbg !3134, !tbaa !810
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3026, metadata !602) #10, !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3031, metadata !602) #10, !dbg !3137
  %15 = icmp eq i64 %14, 0, !dbg !3145
  br i1 %15, label %16, label %17, !dbg !3138

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3146
  br label %24, !dbg !3147

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3026, metadata !602) #10, !dbg !3135
  %20 = icmp eq i8* %19, null, !dbg !3149
  %21 = icmp ne i64 %18, 0, !dbg !3150
  %22 = and i1 %21, %20, !dbg !3151
  br i1 %22, label %23, label %24, !dbg !3151

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3152
  unreachable, !dbg !3152

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3153
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3154 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3156, metadata !602), !dbg !3157
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2986, metadata !602) #10, !dbg !3158
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3160
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2992, metadata !602) #10, !dbg !3161
  %3 = icmp eq i8* %2, null, !dbg !3162
  %4 = icmp ne i64 %0, 0, !dbg !3163
  %5 = and i1 %4, %3, !dbg !3164
  br i1 %5, label %6, label %7, !dbg !3164

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3165
  unreachable, !dbg !3165

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3166
  ret i8* %2, !dbg !3167
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3168 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3170, metadata !602), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3171, metadata !602), !dbg !3174
  %3 = udiv i64 9223372036854775807, %1, !dbg !3175
  %4 = icmp ult i64 %3, %0, !dbg !3175
  br i1 %4, label %8, label %5, !dbg !3177

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3178
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3172, metadata !602), !dbg !3179
  %7 = icmp eq i8* %6, null, !dbg !3180
  br i1 %7, label %8, label %9, !dbg !3181

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3182
  unreachable, !dbg !3182

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3183
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3184 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3190, metadata !602), !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3191, metadata !602), !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2986, metadata !602) #10, !dbg !3194
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2992, metadata !602) #10, !dbg !3197
  %4 = icmp eq i8* %3, null, !dbg !3198
  %5 = icmp ne i64 %1, 0, !dbg !3199
  %6 = and i1 %5, %4, !dbg !3200
  br i1 %6, label %7, label %8, !dbg !3200

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3201
  unreachable, !dbg !3201

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3202
  ret i8* %3, !dbg !3203
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3204 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3206, metadata !602), !dbg !3207
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3208
  %3 = add i64 %2, 1, !dbg !3209
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3190, metadata !602) #10, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3191, metadata !602) #10, !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2986, metadata !602) #10, !dbg !3213
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3215
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2992, metadata !602) #10, !dbg !3216
  %5 = icmp eq i8* %4, null, !dbg !3217
  %6 = icmp ne i64 %3, 0, !dbg !3218
  %7 = and i1 %6, %5, !dbg !3219
  br i1 %7, label %8, label %9, !dbg !3219

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3220
  unreachable, !dbg !3220

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3221
  ret i8* %4, !dbg !3222
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3223 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3225, !tbaa !662
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.91, i64 0, i64 0), i32 5) #10, !dbg !3226
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i64 0, i64 0), i8* %2) #10, !dbg !3227
  tail call void @abort() #15, !dbg !3228
  unreachable, !dbg !3228
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3229 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3232, metadata !602), !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3233, metadata !602), !dbg !3239
  %3 = icmp eq i64 %0, 0, !dbg !3240
  %4 = icmp eq i64 %1, 0, !dbg !3241
  %5 = or i1 %3, %4, !dbg !3242
  br i1 %5, label %12, label %6, !dbg !3242

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3235, metadata !602), !dbg !3244
  %8 = udiv i64 %7, %1, !dbg !3245
  %9 = icmp eq i64 %8, %0, !dbg !3247
  br i1 %9, label %12, label %10, !dbg !3248

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3249
  store i32 12, i32* %11, align 4, !dbg !3251, !tbaa !662
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3232, metadata !602), !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3233, metadata !602), !dbg !3239
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3252
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3234, metadata !602), !dbg !3253
  br label %16, !dbg !3254

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3255
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3256 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3301, metadata !602), !dbg !3305
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3302, metadata !602), !dbg !3306
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3304, metadata !602), !dbg !3307
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3308
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3303, metadata !602), !dbg !3309
  %3 = icmp slt i32 %2, 0, !dbg !3310
  br i1 %3, label %4, label %6, !dbg !3312

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3313
  br label %24, !dbg !3314

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3315
  %8 = icmp eq i32 %7, 0, !dbg !3315
  br i1 %8, label %13, label %9, !dbg !3317

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3318
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3319
  %12 = icmp eq i64 %11, -1, !dbg !3320
  br i1 %12, label %16, label %13, !dbg !3321

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3322
  %15 = icmp eq i32 %14, 0, !dbg !3322
  br i1 %15, label %16, label %18, !dbg !3323

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3302, metadata !602), !dbg !3306
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3324
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3304, metadata !602), !dbg !3307
  br label %24, !dbg !3325

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3326
  %20 = load i32, i32* %19, align 4, !dbg !3326, !tbaa !662
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3302, metadata !602), !dbg !3306
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3302, metadata !602), !dbg !3306
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3324
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3304, metadata !602), !dbg !3307
  %22 = icmp eq i32 %20, 0, !dbg !3327
  br i1 %22, label %24, label %23, !dbg !3325

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3329, !tbaa !662
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3304, metadata !602), !dbg !3307
  br label %24, !dbg !3331

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3332
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3333 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3378, metadata !602), !dbg !3379
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3380
  br i1 %2, label %6, label %3, !dbg !3382

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3383
  %5 = icmp eq i32 %4, 0, !dbg !3383
  br i1 %5, label %6, label %8, !dbg !3384

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3385
  br label %17, !dbg !3386

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3387, metadata !602) #10, !dbg !3392
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3394
  %10 = load i32, i32* %9, align 8, !dbg !3394, !tbaa !828
  %11 = and i32 %10, 256, !dbg !3396
  %12 = icmp eq i32 %11, 0, !dbg !3396
  br i1 %12, label %15, label %13, !dbg !3397

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3398
  br label %15, !dbg !3398

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3399
  br label %17, !dbg !3400

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3401
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3402 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3447, metadata !602), !dbg !3453
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3448, metadata !602), !dbg !3454
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3449, metadata !602), !dbg !3455
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3456
  %5 = load i8*, i8** %4, align 8, !dbg !3456, !tbaa !3457
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3458
  %7 = load i8*, i8** %6, align 8, !dbg !3458, !tbaa !3459
  %8 = icmp eq i8* %5, %7, !dbg !3460
  br i1 %8, label %9, label %28, !dbg !3461

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3462
  %11 = load i8*, i8** %10, align 8, !dbg !3462, !tbaa !3463
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3464
  %13 = load i8*, i8** %12, align 8, !dbg !3464, !tbaa !3465
  %14 = icmp eq i8* %11, %13, !dbg !3466
  br i1 %14, label %15, label %28, !dbg !3467

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3468
  %17 = load i8*, i8** %16, align 8, !dbg !3468, !tbaa !3469
  %18 = icmp eq i8* %17, null, !dbg !3470
  br i1 %18, label %19, label %28, !dbg !3471

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3472
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3450, metadata !602), !dbg !3474
  %22 = icmp eq i64 %21, -1, !dbg !3475
  br i1 %22, label %30, label %23, !dbg !3477

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3478
  %25 = load i32, i32* %24, align 8, !dbg !3479, !tbaa !828
  %26 = and i32 %25, -17, !dbg !3479
  store i32 %26, i32* %24, align 8, !dbg !3479, !tbaa !828
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3480
  store i64 %21, i64* %27, align 8, !dbg !3481, !tbaa !3482
  br label %30, !dbg !3483

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3484
  br label %30, !dbg !3485

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3486
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3487 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3504, metadata !602), !dbg !3513
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3505, metadata !602), !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3506, metadata !602), !dbg !3515
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3507, metadata !602), !dbg !3516
  %6 = bitcast i32* %5 to i8*, !dbg !3517
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3517
  %7 = icmp eq i32* %0, null, !dbg !3518
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3504, metadata !602), !dbg !3513
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3520
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3504, metadata !602), !dbg !3513
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3521
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3508, metadata !602), !dbg !3522
  %10 = icmp ugt i64 %9, -3, !dbg !3523
  %11 = icmp ne i64 %2, 0, !dbg !3524
  %12 = and i1 %11, %10, !dbg !3525
  br i1 %12, label %13, label %18, !dbg !3525

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3526
  br i1 %14, label %18, label %15, !dbg !3527

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3528, !tbaa !807
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3510, metadata !602), !dbg !3529
  %17 = zext i8 %16 to i32, !dbg !3530
  store i32 %17, i32* %8, align 4, !dbg !3531, !tbaa !662
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3532
  ret i64 %19, !dbg !3532
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3533 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3578, metadata !602), !dbg !3583
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3584
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3585, metadata !602), !dbg !3588
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3590
  %4 = load i32, i32* %3, align 8, !dbg !3590, !tbaa !828
  %5 = and i32 %4, 32, !dbg !3590
  %6 = icmp eq i32 %5, 0, !dbg !3591
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3592
  %8 = icmp ne i32 %7, 0, !dbg !3593
  br i1 %6, label %9, label %19, !dbg !3594

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3596
  %11 = xor i1 %8, true, !dbg !3597
  %12 = or i1 %10, %11, !dbg !3597
  %13 = sext i1 %8 to i32, !dbg !3597
  br i1 %12, label %22, label %14, !dbg !3597

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3598
  %16 = load i32, i32* %15, align 4, !dbg !3598, !tbaa !662
  %17 = icmp ne i32 %16, 9, !dbg !3599
  %18 = sext i1 %17 to i32, !dbg !3600
  br label %22, !dbg !3600

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3601

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3603
  store i32 0, i32* %21, align 4, !dbg !3605, !tbaa !662
  br label %22, !dbg !3603

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3606
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3607 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3612, metadata !602), !dbg !3615
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3613, metadata !602), !dbg !3616
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3617
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3614, metadata !602), !dbg !3618
  %3 = icmp eq i8* %2, null, !dbg !3619
  br i1 %3, label %11, label %4, !dbg !3621

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0)) #14, !dbg !3622
  %6 = icmp eq i32 %5, 0, !dbg !3627
  br i1 %6, label %10, label %7, !dbg !3628

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i64 0, i64 0)) #14, !dbg !3629
  %9 = icmp eq i32 %8, 0, !dbg !3630
  br i1 %9, label %10, label %11, !dbg !3631

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3613, metadata !602), !dbg !3616
  br label %11, !dbg !3632

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3633
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3634 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3640, metadata !602), !dbg !3714
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3707, metadata !602), !dbg !3717
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3718
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3638, metadata !602), !dbg !3719
  %4 = icmp eq i8* %3, null, !dbg !3720
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), i8* %3, !dbg !3722
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3638, metadata !602), !dbg !3719
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3723, !tbaa !609
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3654, metadata !602) #10, !dbg !3724
  %7 = icmp eq i8* %6, null, !dbg !3725
  br i1 %7, label %8, label %123, !dbg !3726

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.112, i64 0, i64 0)) #10, !dbg !3727
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3655, metadata !602) #10, !dbg !3728
  %10 = icmp eq i8* %9, null, !dbg !3729
  br i1 %10, label %14, label %11, !dbg !3731

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3732, !tbaa !807
  %13 = icmp eq i8 %12, 0, !dbg !3733
  br i1 %13, label %14, label %15, !dbg !3734

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3735

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.113, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3655, metadata !602) #10, !dbg !3728
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3736
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3658, metadata !602) #10, !dbg !3737
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3660, metadata !602) #10, !dbg !3738
  %18 = icmp eq i64 %17, 0, !dbg !3739
  br i1 %18, label %24, label %19, !dbg !3740

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3741
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3741
  %22 = load i8, i8* %21, align 1, !dbg !3741, !tbaa !807
  %23 = icmp ne i8 %22, 47, !dbg !3741
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3742
  %27 = add i64 %17, 14, !dbg !3743
  %28 = add i64 %27, %26, !dbg !3744
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3745
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3657, metadata !602) #10, !dbg !3746
  %30 = icmp eq i8* %29, null, !dbg !3747
  br i1 %30, label %121, label %31, !dbg !3747

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3748
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3751

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3752, !tbaa !807
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3754
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.114, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3755
  br label %37, !dbg !3756

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3754
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.114, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3755
  br label %37, !dbg !3756

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3757
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3662, metadata !602) #10, !dbg !3758
  %39 = icmp slt i32 %38, 0, !dbg !3759
  br i1 %39, label %119, label %40, !dbg !3760

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.115, i64 0, i64 0)) #10, !dbg !3761
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3663, metadata !602) #10, !dbg !3762
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3763
  br i1 %42, label %43, label %45, !dbg !3764

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3765
  br label %119, !dbg !3767

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3704, metadata !602) #10, !dbg !3768
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3705, metadata !602) #10, !dbg !3769
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3770

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3771

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3704, metadata !602) #10, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3705, metadata !602) #10, !dbg !3769
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3771
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3772
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3773, metadata !602) #10, !dbg !3778
  %54 = load i8*, i8** %48, align 8, !dbg !3780, !tbaa !3459
  %55 = load i8*, i8** %49, align 8, !dbg !3780, !tbaa !3457
  %56 = icmp ult i8* %54, %55, !dbg !3780
  br i1 %56, label %59, label %57, !dbg !3780, !prof !3781

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3780
  br label %63, !dbg !3780

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3780
  store i8* %60, i8** %48, align 8, !dbg !3780, !tbaa !3459
  %61 = load i8, i8* %54, align 1, !dbg !3780, !tbaa !807
  %62 = zext i8 %61 to i32, !dbg !3780
  br label %63, !dbg !3780

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3780
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3706, metadata !602) #10, !dbg !3782
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3783, !llvm.loop !3784

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3789

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3773, metadata !602) #10, !dbg !3791
  %67 = load i8*, i8** %48, align 8, !dbg !3789, !tbaa !3459
  %68 = load i8*, i8** %49, align 8, !dbg !3789, !tbaa !3457
  %69 = icmp ult i8* %67, %68, !dbg !3789
  br i1 %69, label %72, label %70, !dbg !3789, !prof !3781

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3789
  br label %76, !dbg !3789

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3789
  store i8* %73, i8** %48, align 8, !dbg !3789, !tbaa !3459
  %74 = load i8, i8* %67, align 1, !dbg !3789, !tbaa !807
  %75 = zext i8 %74 to i32, !dbg !3789
  br label %76, !dbg !3789

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3789
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3706, metadata !602) #10, !dbg !3782
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3792, !llvm.loop !3793

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3796
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.116, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3797
  %81 = icmp slt i32 %80, 2, !dbg !3799
  br i1 %81, label %112, label %82, !dbg !3800

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3711, metadata !602) #10, !dbg !3802
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3803
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3712, metadata !602) #10, !dbg !3804
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3713, metadata !602) #10, !dbg !3805
  %85 = icmp eq i64 %51, 0, !dbg !3806
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3808

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3705, metadata !602) #10, !dbg !3769
  %90 = add i64 %87, 2, !dbg !3809
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3811
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3704, metadata !602) #10, !dbg !3768
  br label %96, !dbg !3812

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3813
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3705, metadata !602) #10, !dbg !3769
  %94 = add i64 %93, 1, !dbg !3815
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3816
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3704, metadata !602) #10, !dbg !3768
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3704, metadata !602) #10, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3705, metadata !602) #10, !dbg !3769
  %99 = icmp eq i8* %98, null, !dbg !3817
  br i1 %99, label %100, label %102, !dbg !3819

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3705, metadata !602) #10, !dbg !3769
  call void @free(i8* %52) #10, !dbg !3820
  br label %112, !dbg !3822

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3823
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3823
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3824
  %104 = xor i64 %84, -1, !dbg !3825
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3825
  %106 = xor i64 %83, -1, !dbg !3826
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3826
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3827, metadata !602) #10, !dbg !3836
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3835, metadata !602) #10, !dbg !3836
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3838
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3839
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3827, metadata !602) #10, !dbg !3840
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3835, metadata !602) #10, !dbg !3840
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3842
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3843
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3704, metadata !602) #10, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3705, metadata !602) #10, !dbg !3769
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3823
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3823
  br label %50, !dbg !3844, !llvm.loop !3793

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3823
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3823
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3845
  %116 = icmp eq i64 %113, 0, !dbg !3846
  br i1 %116, label %119, label %117, !dbg !3848

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3849
  store i8 0, i8* %118, align 1, !dbg !3851, !tbaa !807
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3654, metadata !602) #10, !dbg !3724
  call void @free(i8* %29) #10, !dbg !3852
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3654, metadata !602) #10, !dbg !3724
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3853, !tbaa !609
  br label %123, !dbg !3854

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3654, metadata !602) #10, !dbg !3724
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3639, metadata !602), !dbg !3855
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3639, metadata !602), !dbg !3855
  %125 = load i8, i8* %124, align 1, !dbg !3856, !tbaa !807
  %126 = icmp eq i8 %125, 0, !dbg !3858
  br i1 %126, label %152, label %127, !dbg !3859

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3860

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3639, metadata !602), !dbg !3855
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3860
  %132 = icmp eq i32 %131, 0, !dbg !3862
  br i1 %132, label %139, label %133, !dbg !3863

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3864
  br i1 %134, label %135, label %143, !dbg !3865

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3866
  %137 = load i8, i8* %136, align 1, !dbg !3866, !tbaa !807
  %138 = icmp eq i8 %137, 0, !dbg !3867
  br i1 %138, label %139, label %143, !dbg !3868

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3869
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3871
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3638, metadata !602), !dbg !3719
  br label %152, !dbg !3873

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3874
  %145 = add i64 %144, 1, !dbg !3875
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3876
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3639, metadata !602), !dbg !3855
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3877
  %148 = add i64 %147, 1, !dbg !3878
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3879
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3639, metadata !602), !dbg !3855
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3639, metadata !602), !dbg !3855
  %150 = load i8, i8* %149, align 1, !dbg !3856, !tbaa !807
  %151 = icmp eq i8 %150, 0, !dbg !3858
  br i1 %151, label %152, label %128, !dbg !3859, !llvm.loop !3880

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3638, metadata !602), !dbg !3719
  %154 = load i8, i8* %153, align 1, !dbg !3882, !tbaa !807
  %155 = icmp eq i8 %154, 0, !dbg !3884
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0), i8* %153, !dbg !3885
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3638, metadata !602), !dbg !3719
  ret i8* %156, !dbg !3886
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

!llvm.dbg.cu = !{!2, !67, !73, !81, !540, !543, !89, !107, !115, !549, !184, !557, !574, !576, !578, !580, !582, !584, !587, !589, !193}
!llvm.ident = !{!591, !591, !591, !591, !591, !591, !591, !591, !591, !591, !591, !591, !591, !591, !591, !591, !591, !591, !591, !591, !591}
!llvm.module.flags = !{!592, !593, !594, !595, !596}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "crctab", scope: !2, file: !3, line: 118, type: !58, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !34)
!3 = !DIFile(filename: "src/cksum.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !{!35, !38, !0}
!35 = !DIGlobalVariableExpression(var: !36)
!36 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 175, type: !37, isLocal: true, isDefinition: true)
!37 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!38 = !DIGlobalVariableExpression(var: !39)
!39 = distinct !DIGlobalVariable(name: "infomap", scope: !40, file: !41, line: 632, type: !55, isLocal: true, isDefinition: true)
!40 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !41, file: !41, line: 630, type: !42, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !44)
!41 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!42 = !DISubroutineType(types: !43)
!43 = !{null, !29}
!44 = !{!45, !46, !47, !54}
!45 = !DILocalVariable(name: "program", arg: 1, scope: !40, file: !41, line: 630, type: !29)
!46 = !DILocalVariable(name: "node", scope: !40, file: !41, line: 642, type: !29)
!47 = !DILocalVariable(name: "map_prog", scope: !40, file: !41, line: 643, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !40, file: !41, line: 632, size: 128, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !50, file: !41, line: 632, baseType: !29, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !50, file: !41, line: 632, baseType: !29, size: 64, offset: 64)
!54 = !DILocalVariable(name: "lc_messages", scope: !40, file: !41, line: 655, type: !29)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 896, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 7)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 16384, elements: !63)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !61, line: 84, baseType: !62)
!61 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!62 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !{!64}
!64 = !DISubrange(count: 256)
!65 = !DIGlobalVariableExpression(var: !66)
!66 = distinct !DIGlobalVariable(name: "Version", scope: !67, file: !68, line: 2, type: !29, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !70)
!68 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!69 = !{}
!70 = !{!65}
!71 = !DIGlobalVariableExpression(var: !72)
!72 = distinct !DIGlobalVariable(name: "file_name", scope: !73, file: !78, line: 36, type: !29, isLocal: true, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !75)
!74 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!75 = !{!71, !76}
!76 = !DIGlobalVariableExpression(var: !77)
!77 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !73, file: !78, line: 46, type: !37, isLocal: true, isDefinition: true)
!78 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "exit_failure", scope: !81, file: !84, line: 24, type: !85, isLocal: false, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !83)
!82 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !{!79}
!84 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!85 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !86)
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !DIGlobalVariableExpression(var: !88)
!88 = distinct !DIGlobalVariable(name: "long_options", scope: !89, file: !92, line: 33, type: !93, isLocal: true, isDefinition: true)
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !91)
!90 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !{!87}
!92 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 768, elements: !103)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !96, line: 50, size: 256, elements: !97)
!96 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!97 = !{!98, !99, !100, !102}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !96, line: 52, baseType: !29, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !95, file: !96, line: 55, baseType: !86, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !95, file: !96, line: 56, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !95, file: !96, line: 57, baseType: !86, size: 32, offset: 192)
!103 = !{!104}
!104 = !DISubrange(count: 3)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "program_name", scope: !107, file: !112, line: 33, type: !29, isLocal: false, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !109, globals: !111)
!108 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!32, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!111 = !{!105}
!112 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!113 = !DIGlobalVariableExpression(var: !114)
!114 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !115, file: !145, line: 77, type: !178, isLocal: false, isDefinition: true)
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !116, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !117, retainedTypes: !138, globals: !142)
!116 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !{!5, !118, !123}
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!121 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!122 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 46, size: 32, elements: !125)
!124 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!126 = !DIEnumerator(name: "_ISupper", value: 256)
!127 = !DIEnumerator(name: "_ISlower", value: 512)
!128 = !DIEnumerator(name: "_ISalpha", value: 1024)
!129 = !DIEnumerator(name: "_ISdigit", value: 2048)
!130 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!131 = !DIEnumerator(name: "_ISspace", value: 8192)
!132 = !DIEnumerator(name: "_ISprint", value: 16384)
!133 = !DIEnumerator(name: "_ISgraph", value: 32768)
!134 = !DIEnumerator(name: "_ISblank", value: 1)
!135 = !DIEnumerator(name: "_IScntrl", value: 2)
!136 = !DIEnumerator(name: "_ISpunct", value: 4)
!137 = !DIEnumerator(name: "_ISalnum", value: 8)
!138 = !{!86, !139, !140, !110}
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 62, baseType: !62)
!141 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!142 = !{!113, !143, !150, !162, !164, !167, !174, !176}
!143 = !DIGlobalVariableExpression(var: !144)
!144 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !115, file: !145, line: 93, type: !146, isLocal: false, isDefinition: true)
!145 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 320, elements: !148)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!148 = !{!149}
!149 = !DISubrange(count: 10)
!150 = !DIGlobalVariableExpression(var: !151)
!151 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !115, file: !145, line: 1043, type: !152, isLocal: false, isDefinition: true)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !145, line: 57, size: 448, elements: !153)
!153 = !{!154, !155, !156, !160, !161}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !152, file: !145, line: 60, baseType: !5, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !145, line: 63, baseType: !86, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !152, file: !145, line: 67, baseType: !157, size: 256, offset: 64)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 8)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !152, file: !145, line: 70, baseType: !29, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !152, file: !145, line: 73, baseType: !29, size: 64, offset: 384)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !115, file: !145, line: 108, type: !152, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165)
!165 = distinct !DIGlobalVariable(name: "slot0", scope: !115, file: !145, line: 834, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !63)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "slotvec", scope: !115, file: !145, line: 837, type: !169, isLocal: true, isDefinition: true)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !145, line: 826, size: 128, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !170, file: !145, line: 828, baseType: !140, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !170, file: !145, line: 829, baseType: !110, size: 64, offset: 64)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "nslots", scope: !115, file: !145, line: 835, type: !86, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "slotvec0", scope: !115, file: !145, line: 836, type: !170, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 704, elements: !180)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!180 = !{!181}
!181 = !DISubrange(count: 11)
!182 = !DIGlobalVariableExpression(var: !183)
!183 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !184, file: !187, line: 26, type: !188, isLocal: false, isDefinition: true)
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, globals: !186)
!185 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!186 = !{!182}
!187 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 376, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 47)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !193, file: !538, line: 120, type: !539, isLocal: true, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !195, retainedTypes: !534, globals: !537)
!194 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !{!196}
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 41, size: 32, elements: !198)
!197 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533}
!199 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!200 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!201 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!202 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!203 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!204 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!205 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!206 = !DIEnumerator(name: "DAY_1", value: 131079)
!207 = !DIEnumerator(name: "DAY_2", value: 131080)
!208 = !DIEnumerator(name: "DAY_3", value: 131081)
!209 = !DIEnumerator(name: "DAY_4", value: 131082)
!210 = !DIEnumerator(name: "DAY_5", value: 131083)
!211 = !DIEnumerator(name: "DAY_6", value: 131084)
!212 = !DIEnumerator(name: "DAY_7", value: 131085)
!213 = !DIEnumerator(name: "ABMON_1", value: 131086)
!214 = !DIEnumerator(name: "ABMON_2", value: 131087)
!215 = !DIEnumerator(name: "ABMON_3", value: 131088)
!216 = !DIEnumerator(name: "ABMON_4", value: 131089)
!217 = !DIEnumerator(name: "ABMON_5", value: 131090)
!218 = !DIEnumerator(name: "ABMON_6", value: 131091)
!219 = !DIEnumerator(name: "ABMON_7", value: 131092)
!220 = !DIEnumerator(name: "ABMON_8", value: 131093)
!221 = !DIEnumerator(name: "ABMON_9", value: 131094)
!222 = !DIEnumerator(name: "ABMON_10", value: 131095)
!223 = !DIEnumerator(name: "ABMON_11", value: 131096)
!224 = !DIEnumerator(name: "ABMON_12", value: 131097)
!225 = !DIEnumerator(name: "MON_1", value: 131098)
!226 = !DIEnumerator(name: "MON_2", value: 131099)
!227 = !DIEnumerator(name: "MON_3", value: 131100)
!228 = !DIEnumerator(name: "MON_4", value: 131101)
!229 = !DIEnumerator(name: "MON_5", value: 131102)
!230 = !DIEnumerator(name: "MON_6", value: 131103)
!231 = !DIEnumerator(name: "MON_7", value: 131104)
!232 = !DIEnumerator(name: "MON_8", value: 131105)
!233 = !DIEnumerator(name: "MON_9", value: 131106)
!234 = !DIEnumerator(name: "MON_10", value: 131107)
!235 = !DIEnumerator(name: "MON_11", value: 131108)
!236 = !DIEnumerator(name: "MON_12", value: 131109)
!237 = !DIEnumerator(name: "AM_STR", value: 131110)
!238 = !DIEnumerator(name: "PM_STR", value: 131111)
!239 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!240 = !DIEnumerator(name: "D_FMT", value: 131113)
!241 = !DIEnumerator(name: "T_FMT", value: 131114)
!242 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!243 = !DIEnumerator(name: "ERA", value: 131116)
!244 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!245 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!246 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!247 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!248 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!249 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!250 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!251 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!252 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!253 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!254 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!255 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!256 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!257 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!258 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!259 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!260 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!261 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!262 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!263 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!264 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!265 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!266 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!267 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!268 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!269 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!270 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!271 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!272 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!273 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!274 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!275 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!276 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!277 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!278 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!279 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!280 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!281 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!282 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!283 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!284 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!285 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!286 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!287 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!288 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!289 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!290 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!291 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!292 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!293 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!294 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!295 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!296 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!297 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!298 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!299 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!300 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!301 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!302 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!303 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!304 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!305 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!306 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!307 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!308 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!309 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!310 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!311 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!312 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!313 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!314 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!315 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!316 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!317 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!318 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!319 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!320 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!321 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!322 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!323 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!324 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!325 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!326 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!327 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!328 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!329 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!330 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!331 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!332 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!333 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!334 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!335 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!336 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!337 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!338 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!339 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!340 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!341 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!342 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!343 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!344 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!345 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!346 = !DIEnumerator(name: "CODESET", value: 14)
!347 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!348 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!349 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!350 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!395 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!397 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!398 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!399 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!400 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!401 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!402 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!403 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!418 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!419 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!420 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!421 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!422 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!423 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!424 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!425 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!426 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!427 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!428 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!429 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!430 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!431 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!432 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!433 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!434 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!435 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!436 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!437 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!438 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!439 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!440 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!457 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!458 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!461 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!462 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!463 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!464 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!465 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!466 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!467 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!468 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!469 = !DIEnumerator(name: "THOUSEP", value: 65537)
!470 = !DIEnumerator(name: "__GROUPING", value: 65538)
!471 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!472 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!473 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!474 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!475 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!476 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!477 = !DIEnumerator(name: "__YESSTR", value: 327682)
!478 = !DIEnumerator(name: "__NOSTR", value: 327683)
!479 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!480 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!481 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!482 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!483 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!484 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!485 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!486 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!487 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!488 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!489 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!490 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!491 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!492 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!493 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!494 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!495 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!496 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!497 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!498 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!499 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!500 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!501 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!502 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!503 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!504 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!505 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!506 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!507 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!508 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!509 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!510 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!511 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!512 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!513 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!514 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!515 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!532 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!533 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!534 = !{!32, !110, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!537 = !{!191}
!538 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!539 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!540 = distinct !DICompileUnit(language: DW_LANG_C99, file: !541, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !542)
!541 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!542 = !{!19}
!543 = distinct !DICompileUnit(language: DW_LANG_C99, file: !544, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !545)
!544 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !61, line: 112, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !548, line: 62, baseType: !62)
!548 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !551, retainedTypes: !556)
!550 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !{!552}
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !553, line: 41, size: 32, elements: !554)
!553 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !{!555}
!555 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!556 = !{!32}
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !559, retainedTypes: !573)
!558 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = !{!560}
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !562, file: !561, line: 192, size: 32, elements: !571)
!561 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!562 = distinct !DISubprogram(name: "x2nrealloc", scope: !561, file: !561, line: 180, type: !563, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !566)
!563 = !DISubroutineType(types: !564)
!564 = !{!32, !32, !565, !140}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!566 = !{!567, !568, !569, !570}
!567 = !DILocalVariable(name: "p", arg: 1, scope: !562, file: !561, line: 180, type: !32)
!568 = !DILocalVariable(name: "pn", arg: 2, scope: !562, file: !561, line: 180, type: !565)
!569 = !DILocalVariable(name: "s", arg: 3, scope: !562, file: !561, line: 180, type: !140)
!570 = !DILocalVariable(name: "n", scope: !562, file: !561, line: 182, type: !140)
!571 = !{!572}
!572 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!573 = !{!140, !110, !32}
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!575 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !556)
!577 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!579 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !556)
!581 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !556)
!583 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !586)
!585 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!586 = !{!140}
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!588 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69)
!590 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!592 = !{i32 2, !"Dwarf Version", i32 4}
!593 = !{i32 2, !"Debug Info Version", i32 3}
!594 = !{i32 1, !"wchar_size", i32 4}
!595 = !{i32 7, !"PIC Level", i32 2}
!596 = !{i32 7, !"PIE Level", i32 2}
!597 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 257, type: !598, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !86}
!600 = !{!601}
!601 = !DILocalVariable(name: "status", arg: 1, scope: !597, file: !3, line: 257, type: !86)
!602 = !DIExpression()
!603 = !DILocation(line: 257, column: 12, scope: !597)
!604 = !DILocation(line: 259, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !597, file: !3, line: 259, column: 7)
!606 = !DILocation(line: 259, column: 7, scope: !597)
!607 = !DILocation(line: 260, column: 5, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 260, column: 5)
!609 = !{!610, !610, i64 0}
!610 = !{!"any pointer", !611, i64 0}
!611 = !{!"omnipotent char", !612, i64 0}
!612 = !{!"Simple C/C++ TBAA"}
!613 = !DILocation(line: 263, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !605, file: !3, line: 262, column: 5)
!615 = !DILocation(line: 268, column: 7, scope: !614)
!616 = !DILocation(line: 272, column: 7, scope: !614)
!617 = !DILocation(line: 273, column: 7, scope: !614)
!618 = !DILocation(line: 642, column: 15, scope: !40, inlinedAt: !619)
!619 = distinct !DILocation(line: 274, column: 7, scope: !614)
!620 = !DILocation(line: 651, column: 3, scope: !40, inlinedAt: !619)
!621 = !DILocation(line: 655, column: 29, scope: !40, inlinedAt: !619)
!622 = !DILocation(line: 655, column: 15, scope: !40, inlinedAt: !619)
!623 = !DILocation(line: 656, column: 7, scope: !624, inlinedAt: !619)
!624 = distinct !DILexicalBlock(scope: !40, file: !41, line: 656, column: 7)
!625 = !DILocation(line: 656, column: 19, scope: !624, inlinedAt: !619)
!626 = !DILocation(line: 656, column: 22, scope: !624, inlinedAt: !619)
!627 = !DILocation(line: 656, column: 7, scope: !40, inlinedAt: !619)
!628 = !DILocation(line: 662, column: 7, scope: !629, inlinedAt: !619)
!629 = distinct !DILexicalBlock(scope: !624, file: !41, line: 657, column: 5)
!630 = !DILocation(line: 664, column: 5, scope: !629, inlinedAt: !619)
!631 = !DILocation(line: 665, column: 3, scope: !40, inlinedAt: !619)
!632 = !DILocation(line: 667, column: 3, scope: !40, inlinedAt: !619)
!633 = !DILocation(line: 276, column: 3, scope: !597)
!634 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 280, type: !635, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !638)
!635 = !DISubroutineType(types: !636)
!636 = !{!86, !86, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!638 = !{!639, !640, !641, !642}
!639 = !DILocalVariable(name: "argc", arg: 1, scope: !634, file: !3, line: 280, type: !86)
!640 = !DILocalVariable(name: "argv", arg: 2, scope: !634, file: !3, line: 280, type: !637)
!641 = !DILocalVariable(name: "i", scope: !634, file: !3, line: 282, type: !86)
!642 = !DILocalVariable(name: "ok", scope: !634, file: !3, line: 283, type: !37)
!643 = !DILocation(line: 280, column: 11, scope: !634)
!644 = !DILocation(line: 280, column: 24, scope: !634)
!645 = !DILocation(line: 286, column: 21, scope: !634)
!646 = !DILocation(line: 286, column: 3, scope: !634)
!647 = !DILocation(line: 287, column: 3, scope: !634)
!648 = !DILocation(line: 288, column: 3, scope: !634)
!649 = !DILocation(line: 289, column: 3, scope: !634)
!650 = !DILocation(line: 291, column: 3, scope: !634)
!651 = !DILocation(line: 295, column: 12, scope: !634)
!652 = !DILocation(line: 295, column: 3, scope: !634)
!653 = !DILocation(line: 297, column: 58, scope: !634)
!654 = !DILocation(line: 297, column: 3, scope: !634)
!655 = !DILocation(line: 299, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !634, file: !3, line: 299, column: 7)
!657 = !DILocation(line: 299, column: 48, scope: !656)
!658 = !DILocation(line: 299, column: 7, scope: !634)
!659 = !DILocation(line: 300, column: 5, scope: !656)
!660 = !DILocation(line: 304, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !634, file: !3, line: 304, column: 7)
!662 = !{!663, !663, i64 0}
!663 = !{!"int", !611, i64 0}
!664 = !DILocation(line: 304, column: 14, scope: !661)
!665 = !DILocation(line: 304, column: 7, scope: !634)
!666 = !DILocation(line: 305, column: 10, scope: !661)
!667 = !DILocation(line: 305, column: 8, scope: !661)
!668 = !DILocation(line: 283, column: 8, scope: !634)
!669 = !DILocation(line: 305, column: 5, scope: !661)
!670 = !DILocation(line: 282, column: 7, scope: !634)
!671 = !DILocation(line: 309, column: 26, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 309, column: 7)
!673 = distinct !DILexicalBlock(scope: !674, file: !3, line: 309, column: 7)
!674 = distinct !DILexicalBlock(scope: !661, file: !3, line: 307, column: 5)
!675 = !DILocation(line: 309, column: 7, scope: !673)
!676 = !DILocation(line: 310, column: 22, scope: !672)
!677 = !DILocation(line: 310, column: 15, scope: !672)
!678 = !DILocation(line: 310, column: 12, scope: !672)
!679 = !DILocation(line: 309, column: 35, scope: !672)
!680 = distinct !{!680, !675, !681}
!681 = !DILocation(line: 310, column: 35, scope: !673)
!682 = !DILocation(line: 313, column: 23, scope: !683)
!683 = distinct !DILexicalBlock(scope: !634, file: !3, line: 313, column: 7)
!684 = !DILocation(line: 313, column: 34, scope: !683)
!685 = !DILocation(line: 313, column: 26, scope: !683)
!686 = !DILocation(line: 313, column: 41, scope: !683)
!687 = !DILocation(line: 313, column: 7, scope: !634)
!688 = !DILocation(line: 314, column: 5, scope: !683)
!689 = !DILocation(line: 315, column: 10, scope: !634)
!690 = !DILocation(line: 315, column: 3, scope: !634)
!691 = distinct !DISubprogram(name: "cksum", scope: !3, file: !3, line: 183, type: !692, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !694)
!692 = !DISubroutineType(types: !693)
!693 = !{!37, !29, !37}
!694 = !{!695, !696, !697, !701, !702, !703, !704, !759, !763, !764}
!695 = !DILocalVariable(name: "file", arg: 1, scope: !691, file: !3, line: 183, type: !29)
!696 = !DILocalVariable(name: "print_name", arg: 2, scope: !691, file: !3, line: 183, type: !37)
!697 = !DILocalVariable(name: "buf", scope: !691, file: !3, line: 185, type: !698)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 524288, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 65536)
!701 = !DILocalVariable(name: "crc", scope: !691, file: !3, line: 186, type: !60)
!702 = !DILocalVariable(name: "length", scope: !691, file: !3, line: 187, type: !546)
!703 = !DILocalVariable(name: "bytes_read", scope: !691, file: !3, line: 188, type: !140)
!704 = !DILocalVariable(name: "fp", scope: !691, file: !3, line: 189, type: !705)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !707, line: 7, baseType: !708)
!707 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 241, size: 1728, elements: !710)
!709 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !731, !732, !733, !734, !737, !738, !740, !744, !747, !749, !750, !751, !752, !753, !754, !755}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !708, file: !709, line: 242, baseType: !86, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !708, file: !709, line: 247, baseType: !110, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !708, file: !709, line: 248, baseType: !110, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !708, file: !709, line: 249, baseType: !110, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !708, file: !709, line: 250, baseType: !110, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !708, file: !709, line: 251, baseType: !110, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !708, file: !709, line: 252, baseType: !110, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !708, file: !709, line: 253, baseType: !110, size: 64, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !708, file: !709, line: 254, baseType: !110, size: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !708, file: !709, line: 256, baseType: !110, size: 64, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !708, file: !709, line: 257, baseType: !110, size: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !708, file: !709, line: 258, baseType: !110, size: 64, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !708, file: !709, line: 260, baseType: !724, size: 64, offset: 768)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !709, line: 156, size: 192, elements: !726)
!726 = !{!727, !728, !730}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !725, file: !709, line: 157, baseType: !724, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !725, file: !709, line: 158, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !725, file: !709, line: 162, baseType: !86, size: 32, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !708, file: !709, line: 262, baseType: !729, size: 64, offset: 832)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !708, file: !709, line: 264, baseType: !86, size: 32, offset: 896)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !708, file: !709, line: 268, baseType: !86, size: 32, offset: 928)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !708, file: !709, line: 270, baseType: !735, size: 64, offset: 960)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !548, line: 140, baseType: !736)
!736 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !708, file: !709, line: 274, baseType: !139, size: 16, offset: 1024)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !708, file: !709, line: 275, baseType: !739, size: 8, offset: 1040)
!739 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !708, file: !709, line: 276, baseType: !741, size: 8, offset: 1048)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 1)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !708, file: !709, line: 280, baseType: !745, size: 64, offset: 1088)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !709, line: 150, baseType: null)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !708, file: !709, line: 289, baseType: !748, size: 64, offset: 1152)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !548, line: 141, baseType: !736)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !708, file: !709, line: 297, baseType: !32, size: 64, offset: 1216)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !708, file: !709, line: 298, baseType: !32, size: 64, offset: 1280)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !708, file: !709, line: 299, baseType: !32, size: 64, offset: 1344)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !708, file: !709, line: 300, baseType: !32, size: 64, offset: 1408)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !708, file: !709, line: 302, baseType: !140, size: 64, offset: 1472)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !708, file: !709, line: 303, baseType: !86, size: 32, offset: 1536)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !708, file: !709, line: 305, baseType: !756, size: 160, offset: 1568)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 20)
!759 = !DILocalVariable(name: "length_buf", scope: !691, file: !3, line: 190, type: !760)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 168, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 21)
!763 = !DILocalVariable(name: "hp", scope: !691, file: !3, line: 191, type: !29)
!764 = !DILocalVariable(name: "cp", scope: !765, file: !3, line: 213, type: !535)
!765 = distinct !DILexicalBlock(scope: !691, file: !3, line: 212, column: 5)
!766 = !DILocation(line: 183, column: 20, scope: !691)
!767 = !DILocation(line: 183, column: 31, scope: !691)
!768 = !DILocation(line: 185, column: 3, scope: !691)
!769 = !DILocation(line: 185, column: 17, scope: !691)
!770 = !DILocation(line: 186, column: 17, scope: !691)
!771 = !DILocation(line: 187, column: 13, scope: !691)
!772 = !DILocation(line: 190, column: 3, scope: !691)
!773 = !DILocation(line: 190, column: 8, scope: !691)
!774 = !DILocation(line: 193, column: 7, scope: !775)
!775 = distinct !DILexicalBlock(scope: !691, file: !3, line: 193, column: 7)
!776 = !DILocation(line: 193, column: 7, scope: !691)
!777 = !DILocation(line: 195, column: 12, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !3, line: 194, column: 5)
!779 = !DILocation(line: 189, column: 9, scope: !691)
!780 = !DILocation(line: 198, column: 5, scope: !778)
!781 = !DILocation(line: 201, column: 12, scope: !782)
!782 = distinct !DILexicalBlock(scope: !775, file: !3, line: 200, column: 5)
!783 = !DILocation(line: 202, column: 14, scope: !784)
!784 = distinct !DILexicalBlock(scope: !782, file: !3, line: 202, column: 11)
!785 = !DILocation(line: 202, column: 11, scope: !782)
!786 = !DILocation(line: 204, column: 21, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !3, line: 203, column: 9)
!788 = !DILocation(line: 204, column: 34, scope: !787)
!789 = !DILocation(line: 204, column: 11, scope: !787)
!790 = !DILocation(line: 205, column: 11, scope: !787)
!791 = !DILocation(line: 209, column: 3, scope: !691)
!792 = !DILocation(line: 211, column: 24, scope: !691)
!793 = !DILocation(line: 188, column: 10, scope: !691)
!794 = !DILocation(line: 211, column: 52, scope: !691)
!795 = !DILocation(line: 211, column: 3, scope: !691)
!796 = !DILocation(line: 215, column: 18, scope: !797)
!797 = distinct !DILexicalBlock(scope: !765, file: !3, line: 215, column: 11)
!798 = distinct !{!798, !795, !799}
!799 = !DILocation(line: 222, column: 5, scope: !691)
!800 = !DILocation(line: 213, column: 22, scope: !765)
!801 = !DILocation(line: 215, column: 31, scope: !797)
!802 = !DILocation(line: 215, column: 11, scope: !765)
!803 = !DILocation(line: 218, column: 24, scope: !765)
!804 = !DILocation(line: 219, column: 20, scope: !765)
!805 = !DILocation(line: 219, column: 41, scope: !765)
!806 = !DILocation(line: 219, column: 50, scope: !765)
!807 = !{!611, !611, i64 0}
!808 = !DILocation(line: 219, column: 57, scope: !765)
!809 = !DILocation(line: 219, column: 28, scope: !765)
!810 = !{!811, !811, i64 0}
!811 = !{!"long", !611, i64 0}
!812 = !DILocation(line: 219, column: 26, scope: !765)
!813 = !DILocation(line: 218, column: 7, scope: !765)
!814 = !DILocation(line: 216, column: 9, scope: !797)
!815 = !DILocation(line: 219, column: 53, scope: !765)
!816 = distinct !{!816, !813, !817}
!817 = !DILocation(line: 219, column: 63, scope: !765)
!818 = !DILocalVariable(name: "__stream", arg: 1, scope: !819, file: !820, line: 125, type: !705)
!819 = distinct !DISubprogram(name: "feof_unlocked", scope: !820, file: !820, line: 125, type: !821, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !823)
!820 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!821 = !DISubroutineType(types: !822)
!822 = !{!86, !705}
!823 = !{!818}
!824 = !DILocation(line: 125, column: 1, scope: !819, inlinedAt: !825)
!825 = distinct !DILocation(line: 220, column: 11, scope: !826)
!826 = distinct !DILexicalBlock(scope: !765, file: !3, line: 220, column: 11)
!827 = !DILocation(line: 127, column: 10, scope: !819, inlinedAt: !825)
!828 = !{!829, !663, i64 0}
!829 = !{!"_IO_FILE", !663, i64 0, !610, i64 8, !610, i64 16, !610, i64 24, !610, i64 32, !610, i64 40, !610, i64 48, !610, i64 56, !610, i64 64, !610, i64 72, !610, i64 80, !610, i64 88, !610, i64 96, !610, i64 104, !663, i64 112, !663, i64 116, !811, i64 120, !830, i64 128, !611, i64 130, !611, i64 131, !610, i64 136, !811, i64 144, !610, i64 152, !610, i64 160, !610, i64 168, !610, i64 176, !811, i64 184, !663, i64 192, !611, i64 196}
!830 = !{!"short", !611, i64 0}
!831 = !DILocation(line: 220, column: 11, scope: !826)
!832 = !DILocalVariable(name: "__stream", arg: 1, scope: !833, file: !820, line: 132, type: !705)
!833 = distinct !DISubprogram(name: "ferror_unlocked", scope: !820, file: !820, line: 132, type: !821, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !834)
!834 = !{!832}
!835 = !DILocation(line: 132, column: 1, scope: !833, inlinedAt: !836)
!836 = distinct !DILocation(line: 224, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !691, file: !3, line: 224, column: 7)
!838 = !DILocation(line: 134, column: 10, scope: !833, inlinedAt: !836)
!839 = !DILocation(line: 224, column: 7, scope: !837)
!840 = !DILocation(line: 224, column: 7, scope: !691)
!841 = !DILocation(line: 226, column: 17, scope: !842)
!842 = distinct !DILexicalBlock(scope: !837, file: !3, line: 225, column: 5)
!843 = !DILocation(line: 226, column: 30, scope: !842)
!844 = !DILocation(line: 226, column: 7, scope: !842)
!845 = !DILocation(line: 227, column: 12, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !3, line: 227, column: 11)
!847 = !DILocation(line: 227, column: 11, scope: !842)
!848 = !DILocation(line: 228, column: 9, scope: !846)
!849 = !DILocation(line: 232, column: 8, scope: !850)
!850 = distinct !DILexicalBlock(scope: !691, file: !3, line: 232, column: 7)
!851 = !DILocation(line: 232, column: 26, scope: !850)
!852 = !DILocation(line: 232, column: 29, scope: !850)
!853 = !DILocation(line: 232, column: 41, scope: !850)
!854 = !DILocation(line: 232, column: 7, scope: !691)
!855 = !DILocation(line: 234, column: 17, scope: !856)
!856 = distinct !DILexicalBlock(scope: !850, file: !3, line: 233, column: 5)
!857 = !DILocation(line: 234, column: 30, scope: !856)
!858 = !DILocation(line: 234, column: 7, scope: !856)
!859 = !DILocation(line: 235, column: 7, scope: !856)
!860 = !DILocation(line: 238, column: 8, scope: !691)
!861 = !DILocation(line: 191, column: 15, scope: !691)
!862 = !DILocation(line: 240, column: 3, scope: !863)
!863 = distinct !DILexicalBlock(scope: !691, file: !3, line: 240, column: 3)
!864 = !DILocation(line: 241, column: 16, scope: !865)
!865 = distinct !DILexicalBlock(scope: !863, file: !3, line: 240, column: 3)
!866 = !DILocation(line: 241, column: 37, scope: !865)
!867 = !DILocation(line: 241, column: 44, scope: !865)
!868 = !DILocation(line: 241, column: 54, scope: !865)
!869 = !DILocation(line: 241, column: 24, scope: !865)
!870 = !DILocation(line: 241, column: 22, scope: !865)
!871 = !DILocation(line: 240, column: 25, scope: !865)
!872 = distinct !{!872, !862, !873}
!873 = !DILocation(line: 241, column: 60, scope: !863)
!874 = !DILocation(line: 245, column: 7, scope: !691)
!875 = !DILocation(line: 246, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !691, file: !3, line: 245, column: 7)
!877 = !DILocation(line: 248, column: 5, scope: !876)
!878 = !DILocation(line: 250, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !691, file: !3, line: 250, column: 7)
!880 = !DILocation(line: 132, column: 1, scope: !833, inlinedAt: !881)
!881 = distinct !DILocation(line: 250, column: 7, scope: !879)
!882 = !DILocation(line: 134, column: 10, scope: !833, inlinedAt: !881)
!883 = !DILocation(line: 250, column: 7, scope: !691)
!884 = !DILocation(line: 251, column: 5, scope: !879)
!885 = !DILocation(line: 254, column: 1, scope: !691)
!886 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !78, file: !78, line: 41, type: !42, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !73, variables: !887)
!887 = !{!888}
!888 = !DILocalVariable(name: "file", arg: 1, scope: !886, file: !78, line: 41, type: !29)
!889 = !DILocation(line: 41, column: 41, scope: !886)
!890 = !DILocation(line: 43, column: 13, scope: !886)
!891 = !DILocation(line: 44, column: 1, scope: !886)
!892 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !78, file: !78, line: 78, type: !893, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !73, variables: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !37}
!895 = !{!896}
!896 = !DILocalVariable(name: "ignore", arg: 1, scope: !892, file: !78, line: 78, type: !37)
!897 = !DILocation(line: 78, column: 37, scope: !892)
!898 = !DILocation(line: 80, column: 16, scope: !892)
!899 = !{!900, !900, i64 0}
!900 = !{!"_Bool", !611, i64 0}
!901 = !DILocation(line: 81, column: 1, scope: !892)
!902 = distinct !DISubprogram(name: "close_stdout", scope: !78, file: !78, line: 107, type: !903, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !73, variables: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{null}
!905 = !{!906}
!906 = !DILocalVariable(name: "write_error", scope: !907, file: !78, line: 112, type: !29)
!907 = distinct !DILexicalBlock(scope: !908, file: !78, line: 111, column: 5)
!908 = distinct !DILexicalBlock(scope: !902, file: !78, line: 109, column: 7)
!909 = !DILocation(line: 109, column: 21, scope: !908)
!910 = !DILocation(line: 109, column: 7, scope: !908)
!911 = !DILocation(line: 109, column: 29, scope: !908)
!912 = !DILocation(line: 110, column: 7, scope: !908)
!913 = !DILocation(line: 110, column: 12, scope: !908)
!914 = !{i8 0, i8 2}
!915 = !DILocation(line: 114, column: 19, scope: !916)
!916 = distinct !DILexicalBlock(scope: !907, file: !78, line: 113, column: 11)
!917 = !DILocation(line: 110, column: 25, scope: !908)
!918 = !DILocation(line: 110, column: 28, scope: !908)
!919 = !DILocation(line: 110, column: 34, scope: !908)
!920 = !DILocation(line: 109, column: 7, scope: !902)
!921 = !DILocation(line: 112, column: 33, scope: !907)
!922 = !DILocation(line: 112, column: 19, scope: !907)
!923 = !DILocation(line: 113, column: 11, scope: !916)
!924 = !DILocation(line: 113, column: 11, scope: !907)
!925 = !DILocation(line: 114, column: 36, scope: !916)
!926 = !DILocation(line: 114, column: 9, scope: !916)
!927 = !DILocation(line: 117, column: 9, scope: !916)
!928 = !DILocation(line: 119, column: 14, scope: !907)
!929 = !DILocation(line: 119, column: 7, scope: !907)
!930 = !DILocation(line: 122, column: 22, scope: !931)
!931 = distinct !DILexicalBlock(scope: !902, file: !78, line: 122, column: 8)
!932 = !DILocation(line: 122, column: 8, scope: !931)
!933 = !DILocation(line: 122, column: 30, scope: !931)
!934 = !DILocation(line: 122, column: 8, scope: !902)
!935 = !DILocation(line: 123, column: 13, scope: !931)
!936 = !DILocation(line: 123, column: 6, scope: !931)
!937 = !DILocation(line: 124, column: 1, scope: !902)
!938 = distinct !DISubprogram(name: "fdadvise", scope: !939, file: !939, line: 31, type: !940, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !945)
!939 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!940 = !DISubroutineType(types: !941)
!941 = !{null, !86, !942, !942, !944}
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !943, line: 57, baseType: !735)
!943 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!945 = !{!946, !947, !948, !949, !950}
!946 = !DILocalVariable(name: "fd", arg: 1, scope: !938, file: !939, line: 31, type: !86)
!947 = !DILocalVariable(name: "offset", arg: 2, scope: !938, file: !939, line: 31, type: !942)
!948 = !DILocalVariable(name: "len", arg: 3, scope: !938, file: !939, line: 31, type: !942)
!949 = !DILocalVariable(name: "advice", arg: 4, scope: !938, file: !939, line: 31, type: !944)
!950 = !DILocalVariable(name: "__x", scope: !951, file: !939, line: 34, type: !86)
!951 = distinct !DILexicalBlock(scope: !938, file: !939, line: 34, column: 3)
!952 = !DILocation(line: 31, column: 15, scope: !938)
!953 = !DILocation(line: 31, column: 25, scope: !938)
!954 = !DILocation(line: 31, column: 39, scope: !938)
!955 = !DILocation(line: 31, column: 54, scope: !938)
!956 = !DILocation(line: 34, column: 3, scope: !951)
!957 = !DILocation(line: 36, column: 1, scope: !938)
!958 = distinct !DISubprogram(name: "fadvise", scope: !939, file: !939, line: 39, type: !959, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !1001)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !961, !944}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !707, line: 7, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 241, size: 1728, elements: !964)
!964 = !{!965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !963, file: !709, line: 242, baseType: !86, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !963, file: !709, line: 247, baseType: !110, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !963, file: !709, line: 248, baseType: !110, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !963, file: !709, line: 249, baseType: !110, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !963, file: !709, line: 250, baseType: !110, size: 64, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !963, file: !709, line: 251, baseType: !110, size: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !963, file: !709, line: 252, baseType: !110, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !963, file: !709, line: 253, baseType: !110, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !963, file: !709, line: 254, baseType: !110, size: 64, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !963, file: !709, line: 256, baseType: !110, size: 64, offset: 576)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !963, file: !709, line: 257, baseType: !110, size: 64, offset: 640)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !963, file: !709, line: 258, baseType: !110, size: 64, offset: 704)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !963, file: !709, line: 260, baseType: !978, size: 64, offset: 768)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !709, line: 156, size: 192, elements: !980)
!980 = !{!981, !982, !984}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !979, file: !709, line: 157, baseType: !978, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !979, file: !709, line: 158, baseType: !983, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !979, file: !709, line: 162, baseType: !86, size: 32, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !963, file: !709, line: 262, baseType: !983, size: 64, offset: 832)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !963, file: !709, line: 264, baseType: !86, size: 32, offset: 896)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !963, file: !709, line: 268, baseType: !86, size: 32, offset: 928)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !963, file: !709, line: 270, baseType: !735, size: 64, offset: 960)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !963, file: !709, line: 274, baseType: !139, size: 16, offset: 1024)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !963, file: !709, line: 275, baseType: !739, size: 8, offset: 1040)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !963, file: !709, line: 276, baseType: !741, size: 8, offset: 1048)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !963, file: !709, line: 280, baseType: !745, size: 64, offset: 1088)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !963, file: !709, line: 289, baseType: !748, size: 64, offset: 1152)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !963, file: !709, line: 297, baseType: !32, size: 64, offset: 1216)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !963, file: !709, line: 298, baseType: !32, size: 64, offset: 1280)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !963, file: !709, line: 299, baseType: !32, size: 64, offset: 1344)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !963, file: !709, line: 300, baseType: !32, size: 64, offset: 1408)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !963, file: !709, line: 302, baseType: !140, size: 64, offset: 1472)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !963, file: !709, line: 303, baseType: !86, size: 32, offset: 1536)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !963, file: !709, line: 305, baseType: !756, size: 160, offset: 1568)
!1001 = !{!1002, !1003}
!1002 = !DILocalVariable(name: "fp", arg: 1, scope: !958, file: !939, line: 39, type: !961)
!1003 = !DILocalVariable(name: "advice", arg: 2, scope: !958, file: !939, line: 39, type: !944)
!1004 = !DILocation(line: 39, column: 16, scope: !958)
!1005 = !DILocation(line: 39, column: 30, scope: !958)
!1006 = !DILocation(line: 41, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !958, file: !939, line: 41, column: 7)
!1008 = !DILocation(line: 41, column: 7, scope: !958)
!1009 = !DILocation(line: 42, column: 15, scope: !1007)
!1010 = !DILocation(line: 31, column: 15, scope: !938, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 42, column: 5, scope: !1007)
!1012 = !DILocation(line: 31, column: 25, scope: !938, inlinedAt: !1011)
!1013 = !DILocation(line: 31, column: 39, scope: !938, inlinedAt: !1011)
!1014 = !DILocation(line: 31, column: 54, scope: !938, inlinedAt: !1011)
!1015 = !DILocation(line: 34, column: 3, scope: !951, inlinedAt: !1011)
!1016 = !DILocation(line: 42, column: 5, scope: !1007)
!1017 = !DILocation(line: 43, column: 1, scope: !958)
!1018 = distinct !DISubprogram(name: "umaxtostr", scope: !1019, file: !1019, line: 36, type: !1020, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !543, variables: !1022)
!1019 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!110, !546, !110}
!1022 = !{!1023, !1024, !1025}
!1023 = !DILocalVariable(name: "i", arg: 1, scope: !1018, file: !1019, line: 36, type: !546)
!1024 = !DILocalVariable(name: "buf", arg: 2, scope: !1018, file: !1019, line: 36, type: !110)
!1025 = !DILocalVariable(name: "p", scope: !1018, file: !1019, line: 38, type: !110)
!1026 = !DILocation(line: 36, column: 19, scope: !1018)
!1027 = !DILocation(line: 36, column: 28, scope: !1018)
!1028 = !DILocation(line: 38, column: 17, scope: !1018)
!1029 = !DILocation(line: 38, column: 9, scope: !1018)
!1030 = !DILocation(line: 39, column: 6, scope: !1018)
!1031 = !DILocation(line: 51, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !1019, line: 50, column: 5)
!1033 = distinct !DILexicalBlock(scope: !1018, file: !1019, line: 41, column: 7)
!1034 = distinct !{!1034, !1031, !1035}
!1035 = !DILocation(line: 53, column: 28, scope: !1032)
!1036 = !DILocation(line: 52, column: 24, scope: !1032)
!1037 = !DILocation(line: 52, column: 16, scope: !1032)
!1038 = !DILocation(line: 52, column: 10, scope: !1032)
!1039 = !DILocation(line: 52, column: 14, scope: !1032)
!1040 = !DILocation(line: 53, column: 17, scope: !1032)
!1041 = !DILocation(line: 53, column: 24, scope: !1032)
!1042 = !DILocation(line: 52, column: 9, scope: !1032)
!1043 = !DILocation(line: 56, column: 3, scope: !1018)
!1044 = distinct !DISubprogram(name: "parse_long_options", scope: !92, file: !92, line: 44, type: !1045, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !89, variables: !1048)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !86, !637, !29, !29, !29, !1047, null}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057}
!1049 = !DILocalVariable(name: "argc", arg: 1, scope: !1044, file: !92, line: 44, type: !86)
!1050 = !DILocalVariable(name: "argv", arg: 2, scope: !1044, file: !92, line: 45, type: !637)
!1051 = !DILocalVariable(name: "command_name", arg: 3, scope: !1044, file: !92, line: 46, type: !29)
!1052 = !DILocalVariable(name: "package", arg: 4, scope: !1044, file: !92, line: 47, type: !29)
!1053 = !DILocalVariable(name: "version", arg: 5, scope: !1044, file: !92, line: 48, type: !29)
!1054 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1044, file: !92, line: 49, type: !1047)
!1055 = !DILocalVariable(name: "c", scope: !1044, file: !92, line: 52, type: !86)
!1056 = !DILocalVariable(name: "saved_opterr", scope: !1044, file: !92, line: 53, type: !86)
!1057 = !DILocalVariable(name: "authors", scope: !1058, file: !92, line: 71, type: !1062)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !92, line: 70, column: 11)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !92, line: 64, column: 9)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !92, line: 62, column: 5)
!1061 = distinct !DILexicalBlock(scope: !1044, file: !92, line: 60, column: 7)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !943, line: 46, baseType: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1064, line: 48, baseType: !1065)
!1064 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !90, line: 71, baseType: !1066)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1067, size: 192, elements: !742)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !90, line: 71, size: 192, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1067, file: !90, line: 71, baseType: !33, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1067, file: !90, line: 71, baseType: !33, size: 32, offset: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1067, file: !90, line: 71, baseType: !32, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1067, file: !90, line: 71, baseType: !32, size: 64, offset: 128)
!1073 = !DILocation(line: 44, column: 25, scope: !1044)
!1074 = !DILocation(line: 45, column: 28, scope: !1044)
!1075 = !DILocation(line: 46, column: 33, scope: !1044)
!1076 = !DILocation(line: 47, column: 33, scope: !1044)
!1077 = !DILocation(line: 48, column: 33, scope: !1044)
!1078 = !DILocation(line: 49, column: 28, scope: !1044)
!1079 = !DILocation(line: 55, column: 18, scope: !1044)
!1080 = !DILocation(line: 53, column: 7, scope: !1044)
!1081 = !DILocation(line: 58, column: 10, scope: !1044)
!1082 = !DILocation(line: 60, column: 12, scope: !1061)
!1083 = !DILocation(line: 61, column: 7, scope: !1061)
!1084 = !DILocation(line: 61, column: 15, scope: !1061)
!1085 = !DILocation(line: 52, column: 7, scope: !1044)
!1086 = !DILocation(line: 60, column: 7, scope: !1044)
!1087 = !DILocation(line: 66, column: 11, scope: !1059)
!1088 = !DILocation(line: 67, column: 11, scope: !1059)
!1089 = !DILocation(line: 71, column: 13, scope: !1058)
!1090 = !DILocation(line: 71, column: 21, scope: !1058)
!1091 = !DILocation(line: 72, column: 13, scope: !1058)
!1092 = !DILocation(line: 73, column: 29, scope: !1058)
!1093 = !DILocation(line: 73, column: 13, scope: !1058)
!1094 = !DILocation(line: 74, column: 13, scope: !1058)
!1095 = !DILocation(line: 84, column: 10, scope: !1044)
!1096 = !DILocation(line: 88, column: 10, scope: !1044)
!1097 = !DILocation(line: 89, column: 1, scope: !1044)
!1098 = distinct !DISubprogram(name: "set_program_name", scope: !112, file: !112, line: 39, type: !42, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1099)
!1099 = !{!1100, !1101, !1102}
!1100 = !DILocalVariable(name: "argv0", arg: 1, scope: !1098, file: !112, line: 39, type: !29)
!1101 = !DILocalVariable(name: "slash", scope: !1098, file: !112, line: 46, type: !29)
!1102 = !DILocalVariable(name: "base", scope: !1098, file: !112, line: 47, type: !29)
!1103 = !DILocation(line: 39, column: 31, scope: !1098)
!1104 = !DILocation(line: 51, column: 13, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1098, file: !112, line: 51, column: 7)
!1106 = !DILocation(line: 51, column: 7, scope: !1098)
!1107 = !DILocation(line: 55, column: 14, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !112, line: 52, column: 5)
!1109 = !DILocation(line: 54, column: 7, scope: !1108)
!1110 = !DILocation(line: 56, column: 7, scope: !1108)
!1111 = !DILocation(line: 59, column: 11, scope: !1098)
!1112 = !DILocation(line: 46, column: 15, scope: !1098)
!1113 = !DILocation(line: 60, column: 17, scope: !1098)
!1114 = !DILocation(line: 60, column: 33, scope: !1098)
!1115 = !DILocation(line: 60, column: 11, scope: !1098)
!1116 = !DILocation(line: 47, column: 15, scope: !1098)
!1117 = !DILocation(line: 61, column: 12, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1098, file: !112, line: 61, column: 7)
!1119 = !DILocation(line: 61, column: 20, scope: !1118)
!1120 = !DILocation(line: 61, column: 25, scope: !1118)
!1121 = !DILocation(line: 61, column: 42, scope: !1118)
!1122 = !DILocation(line: 61, column: 28, scope: !1118)
!1123 = !DILocation(line: 61, column: 61, scope: !1118)
!1124 = !DILocation(line: 61, column: 7, scope: !1098)
!1125 = !DILocation(line: 64, column: 11, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !112, line: 64, column: 11)
!1127 = distinct !DILexicalBlock(scope: !1118, file: !112, line: 62, column: 5)
!1128 = !DILocation(line: 64, column: 36, scope: !1126)
!1129 = !DILocation(line: 64, column: 11, scope: !1127)
!1130 = !DILocation(line: 66, column: 24, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !112, line: 65, column: 9)
!1132 = !DILocation(line: 70, column: 41, scope: !1131)
!1133 = !DILocation(line: 72, column: 9, scope: !1131)
!1134 = !DILocation(line: 84, column: 16, scope: !1098)
!1135 = !DILocation(line: 90, column: 27, scope: !1098)
!1136 = !DILocation(line: 92, column: 1, scope: !1098)
!1137 = distinct !DISubprogram(name: "clone_quoting_options", scope: !145, file: !145, line: 114, type: !1138, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1141)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!1140, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1141 = !{!1142, !1143, !1144}
!1142 = !DILocalVariable(name: "o", arg: 1, scope: !1137, file: !145, line: 114, type: !1140)
!1143 = !DILocalVariable(name: "e", scope: !1137, file: !145, line: 116, type: !86)
!1144 = !DILocalVariable(name: "p", scope: !1137, file: !145, line: 117, type: !1140)
!1145 = !DILocation(line: 114, column: 48, scope: !1137)
!1146 = !DILocation(line: 116, column: 11, scope: !1137)
!1147 = !DILocation(line: 116, column: 7, scope: !1137)
!1148 = !DILocation(line: 117, column: 40, scope: !1137)
!1149 = !DILocation(line: 117, column: 31, scope: !1137)
!1150 = !DILocation(line: 117, column: 27, scope: !1137)
!1151 = !DILocation(line: 119, column: 9, scope: !1137)
!1152 = !DILocation(line: 120, column: 3, scope: !1137)
!1153 = distinct !DISubprogram(name: "get_quoting_style", scope: !145, file: !145, line: 125, type: !1154, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1158)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!5, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!1158 = !{!1159}
!1159 = !DILocalVariable(name: "o", arg: 1, scope: !1153, file: !145, line: 125, type: !1156)
!1160 = !DILocation(line: 125, column: 50, scope: !1153)
!1161 = !DILocation(line: 127, column: 11, scope: !1153)
!1162 = !DILocation(line: 127, column: 46, scope: !1153)
!1163 = !{!1164, !611, i64 0}
!1164 = !{!"quoting_options", !611, i64 0, !663, i64 4, !611, i64 8, !610, i64 40, !610, i64 48}
!1165 = !DILocation(line: 127, column: 3, scope: !1153)
!1166 = distinct !DISubprogram(name: "set_quoting_style", scope: !145, file: !145, line: 133, type: !1167, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1169)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !1140, !5}
!1169 = !{!1170, !1171}
!1170 = !DILocalVariable(name: "o", arg: 1, scope: !1166, file: !145, line: 133, type: !1140)
!1171 = !DILocalVariable(name: "s", arg: 2, scope: !1166, file: !145, line: 133, type: !5)
!1172 = !DILocation(line: 133, column: 44, scope: !1166)
!1173 = !DILocation(line: 133, column: 66, scope: !1166)
!1174 = !DILocation(line: 135, column: 4, scope: !1166)
!1175 = !DILocation(line: 135, column: 39, scope: !1166)
!1176 = !DILocation(line: 135, column: 45, scope: !1166)
!1177 = !DILocation(line: 136, column: 1, scope: !1166)
!1178 = distinct !DISubprogram(name: "set_char_quoting", scope: !145, file: !145, line: 144, type: !1179, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1181)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!86, !1140, !31, !86}
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1188, !1189}
!1182 = !DILocalVariable(name: "o", arg: 1, scope: !1178, file: !145, line: 144, type: !1140)
!1183 = !DILocalVariable(name: "c", arg: 2, scope: !1178, file: !145, line: 144, type: !31)
!1184 = !DILocalVariable(name: "i", arg: 3, scope: !1178, file: !145, line: 144, type: !86)
!1185 = !DILocalVariable(name: "uc", scope: !1178, file: !145, line: 146, type: !536)
!1186 = !DILocalVariable(name: "p", scope: !1178, file: !145, line: 147, type: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1188 = !DILocalVariable(name: "shift", scope: !1178, file: !145, line: 149, type: !86)
!1189 = !DILocalVariable(name: "r", scope: !1178, file: !145, line: 150, type: !86)
!1190 = !DILocation(line: 144, column: 43, scope: !1178)
!1191 = !DILocation(line: 144, column: 51, scope: !1178)
!1192 = !DILocation(line: 144, column: 58, scope: !1178)
!1193 = !DILocation(line: 146, column: 17, scope: !1178)
!1194 = !DILocation(line: 148, column: 6, scope: !1178)
!1195 = !DILocation(line: 148, column: 62, scope: !1178)
!1196 = !DILocation(line: 148, column: 57, scope: !1178)
!1197 = !DILocation(line: 147, column: 17, scope: !1178)
!1198 = !DILocation(line: 149, column: 18, scope: !1178)
!1199 = !DILocation(line: 149, column: 15, scope: !1178)
!1200 = !DILocation(line: 149, column: 7, scope: !1178)
!1201 = !DILocation(line: 150, column: 12, scope: !1178)
!1202 = !DILocation(line: 150, column: 15, scope: !1178)
!1203 = !DILocation(line: 150, column: 25, scope: !1178)
!1204 = !DILocation(line: 150, column: 7, scope: !1178)
!1205 = !DILocation(line: 151, column: 13, scope: !1178)
!1206 = !DILocation(line: 151, column: 18, scope: !1178)
!1207 = !DILocation(line: 151, column: 23, scope: !1178)
!1208 = !DILocation(line: 151, column: 6, scope: !1178)
!1209 = !DILocation(line: 152, column: 3, scope: !1178)
!1210 = distinct !DISubprogram(name: "set_quoting_flags", scope: !145, file: !145, line: 160, type: !1211, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!86, !1140, !86}
!1213 = !{!1214, !1215, !1216}
!1214 = !DILocalVariable(name: "o", arg: 1, scope: !1210, file: !145, line: 160, type: !1140)
!1215 = !DILocalVariable(name: "i", arg: 2, scope: !1210, file: !145, line: 160, type: !86)
!1216 = !DILocalVariable(name: "r", scope: !1210, file: !145, line: 162, type: !86)
!1217 = !DILocation(line: 160, column: 44, scope: !1210)
!1218 = !DILocation(line: 160, column: 51, scope: !1210)
!1219 = !DILocation(line: 163, column: 8, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1210, file: !145, line: 163, column: 7)
!1221 = !DILocation(line: 163, column: 7, scope: !1210)
!1222 = !DILocation(line: 165, column: 10, scope: !1210)
!1223 = !{!1164, !663, i64 4}
!1224 = !DILocation(line: 162, column: 7, scope: !1210)
!1225 = !DILocation(line: 166, column: 12, scope: !1210)
!1226 = !DILocation(line: 167, column: 3, scope: !1210)
!1227 = distinct !DISubprogram(name: "set_custom_quoting", scope: !145, file: !145, line: 171, type: !1228, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1230)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !1140, !29, !29}
!1230 = !{!1231, !1232, !1233}
!1231 = !DILocalVariable(name: "o", arg: 1, scope: !1227, file: !145, line: 171, type: !1140)
!1232 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1227, file: !145, line: 172, type: !29)
!1233 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1227, file: !145, line: 172, type: !29)
!1234 = !DILocation(line: 171, column: 45, scope: !1227)
!1235 = !DILocation(line: 172, column: 33, scope: !1227)
!1236 = !DILocation(line: 172, column: 57, scope: !1227)
!1237 = !DILocation(line: 174, column: 8, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1227, file: !145, line: 174, column: 7)
!1239 = !DILocation(line: 174, column: 7, scope: !1227)
!1240 = !DILocation(line: 176, column: 6, scope: !1227)
!1241 = !DILocation(line: 176, column: 12, scope: !1227)
!1242 = !DILocation(line: 177, column: 8, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1227, file: !145, line: 177, column: 7)
!1244 = !DILocation(line: 177, column: 23, scope: !1243)
!1245 = !DILocation(line: 177, column: 19, scope: !1243)
!1246 = !DILocation(line: 178, column: 5, scope: !1243)
!1247 = !DILocation(line: 179, column: 6, scope: !1227)
!1248 = !DILocation(line: 179, column: 17, scope: !1227)
!1249 = !{!1164, !610, i64 40}
!1250 = !DILocation(line: 180, column: 6, scope: !1227)
!1251 = !DILocation(line: 180, column: 18, scope: !1227)
!1252 = !{!1164, !610, i64 48}
!1253 = !DILocation(line: 181, column: 1, scope: !1227)
!1254 = distinct !DISubprogram(name: "quotearg_buffer", scope: !145, file: !145, line: 776, type: !1255, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1257)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!140, !110, !140, !29, !140, !1156}
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1258 = !DILocalVariable(name: "buffer", arg: 1, scope: !1254, file: !145, line: 776, type: !110)
!1259 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1254, file: !145, line: 776, type: !140)
!1260 = !DILocalVariable(name: "arg", arg: 3, scope: !1254, file: !145, line: 777, type: !29)
!1261 = !DILocalVariable(name: "argsize", arg: 4, scope: !1254, file: !145, line: 777, type: !140)
!1262 = !DILocalVariable(name: "o", arg: 5, scope: !1254, file: !145, line: 778, type: !1156)
!1263 = !DILocalVariable(name: "p", scope: !1254, file: !145, line: 780, type: !1156)
!1264 = !DILocalVariable(name: "e", scope: !1254, file: !145, line: 781, type: !86)
!1265 = !DILocalVariable(name: "r", scope: !1254, file: !145, line: 782, type: !140)
!1266 = !DILocation(line: 776, column: 24, scope: !1254)
!1267 = !DILocation(line: 776, column: 39, scope: !1254)
!1268 = !DILocation(line: 777, column: 30, scope: !1254)
!1269 = !DILocation(line: 777, column: 42, scope: !1254)
!1270 = !DILocation(line: 778, column: 48, scope: !1254)
!1271 = !DILocation(line: 780, column: 37, scope: !1254)
!1272 = !DILocation(line: 780, column: 33, scope: !1254)
!1273 = !DILocation(line: 781, column: 11, scope: !1254)
!1274 = !DILocation(line: 781, column: 7, scope: !1254)
!1275 = !DILocation(line: 783, column: 43, scope: !1254)
!1276 = !DILocation(line: 783, column: 53, scope: !1254)
!1277 = !DILocation(line: 783, column: 60, scope: !1254)
!1278 = !DILocation(line: 784, column: 43, scope: !1254)
!1279 = !DILocation(line: 784, column: 58, scope: !1254)
!1280 = !DILocation(line: 782, column: 14, scope: !1254)
!1281 = !DILocation(line: 782, column: 10, scope: !1254)
!1282 = !DILocation(line: 785, column: 9, scope: !1254)
!1283 = !DILocation(line: 786, column: 3, scope: !1254)
!1284 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !145, file: !145, line: 248, type: !1285, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1289)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!140, !110, !140, !29, !140, !5, !86, !1287, !29, !29}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!1289 = !{!1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1314, !1315, !1316, !1317, !1318, !1321, !1322, !1340, !1343, !1344, !1351}
!1290 = !DILocalVariable(name: "buffer", arg: 1, scope: !1284, file: !145, line: 248, type: !110)
!1291 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1284, file: !145, line: 248, type: !140)
!1292 = !DILocalVariable(name: "arg", arg: 3, scope: !1284, file: !145, line: 249, type: !29)
!1293 = !DILocalVariable(name: "argsize", arg: 4, scope: !1284, file: !145, line: 249, type: !140)
!1294 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1284, file: !145, line: 250, type: !5)
!1295 = !DILocalVariable(name: "flags", arg: 6, scope: !1284, file: !145, line: 250, type: !86)
!1296 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1284, file: !145, line: 251, type: !1287)
!1297 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1284, file: !145, line: 252, type: !29)
!1298 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1284, file: !145, line: 253, type: !29)
!1299 = !DILocalVariable(name: "i", scope: !1284, file: !145, line: 255, type: !140)
!1300 = !DILocalVariable(name: "len", scope: !1284, file: !145, line: 256, type: !140)
!1301 = !DILocalVariable(name: "orig_buffersize", scope: !1284, file: !145, line: 257, type: !140)
!1302 = !DILocalVariable(name: "quote_string", scope: !1284, file: !145, line: 258, type: !29)
!1303 = !DILocalVariable(name: "quote_string_len", scope: !1284, file: !145, line: 259, type: !140)
!1304 = !DILocalVariable(name: "backslash_escapes", scope: !1284, file: !145, line: 260, type: !37)
!1305 = !DILocalVariable(name: "unibyte_locale", scope: !1284, file: !145, line: 261, type: !37)
!1306 = !DILocalVariable(name: "elide_outer_quotes", scope: !1284, file: !145, line: 262, type: !37)
!1307 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1284, file: !145, line: 263, type: !37)
!1308 = !DILocalVariable(name: "encountered_single_quote", scope: !1284, file: !145, line: 264, type: !37)
!1309 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1284, file: !145, line: 265, type: !37)
!1310 = !DILocalVariable(name: "c", scope: !1311, file: !145, line: 394, type: !536)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !145, line: 393, column: 5)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !145, line: 392, column: 3)
!1313 = distinct !DILexicalBlock(scope: !1284, file: !145, line: 392, column: 3)
!1314 = !DILocalVariable(name: "esc", scope: !1311, file: !145, line: 395, type: !536)
!1315 = !DILocalVariable(name: "is_right_quote", scope: !1311, file: !145, line: 396, type: !37)
!1316 = !DILocalVariable(name: "escaping", scope: !1311, file: !145, line: 397, type: !37)
!1317 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1311, file: !145, line: 398, type: !37)
!1318 = !DILocalVariable(name: "m", scope: !1319, file: !145, line: 602, type: !140)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !145, line: 600, column: 11)
!1320 = distinct !DILexicalBlock(scope: !1311, file: !145, line: 418, column: 9)
!1321 = !DILocalVariable(name: "printable", scope: !1319, file: !145, line: 604, type: !37)
!1322 = !DILocalVariable(name: "mbstate", scope: !1323, file: !145, line: 613, type: !1325)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !145, line: 612, column: 15)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !145, line: 606, column: 17)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1326, line: 6, baseType: !1327)
!1326 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1328, line: 21, baseType: !1329)
!1328 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1328, line: 13, size: 64, elements: !1330)
!1330 = !{!1331, !1332}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1329, file: !1328, line: 15, baseType: !86, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1329, file: !1328, line: 20, baseType: !1333, size: 32, offset: 32)
!1333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1329, file: !1328, line: 16, size: 32, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1333, file: !1328, line: 18, baseType: !33, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1333, file: !1328, line: 19, baseType: !1337, size: 32)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 4)
!1340 = !DILocalVariable(name: "w", scope: !1341, file: !145, line: 623, type: !1342)
!1341 = distinct !DILexicalBlock(scope: !1323, file: !145, line: 622, column: 19)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !141, line: 90, baseType: !86)
!1343 = !DILocalVariable(name: "bytes", scope: !1341, file: !145, line: 624, type: !140)
!1344 = !DILocalVariable(name: "j", scope: !1345, file: !145, line: 649, type: !140)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !145, line: 648, column: 27)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !145, line: 646, column: 29)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !145, line: 641, column: 23)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !145, line: 633, column: 30)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !145, line: 628, column: 30)
!1350 = distinct !DILexicalBlock(scope: !1341, file: !145, line: 626, column: 25)
!1351 = !DILocalVariable(name: "ilim", scope: !1352, file: !145, line: 676, type: !140)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !145, line: 673, column: 15)
!1353 = distinct !DILexicalBlock(scope: !1319, file: !145, line: 672, column: 17)
!1354 = !DILocation(line: 248, column: 33, scope: !1284)
!1355 = !DILocation(line: 248, column: 48, scope: !1284)
!1356 = !DILocation(line: 249, column: 39, scope: !1284)
!1357 = !DILocation(line: 249, column: 51, scope: !1284)
!1358 = !DILocation(line: 250, column: 46, scope: !1284)
!1359 = !DILocation(line: 250, column: 65, scope: !1284)
!1360 = !DILocation(line: 251, column: 47, scope: !1284)
!1361 = !DILocation(line: 252, column: 39, scope: !1284)
!1362 = !DILocation(line: 253, column: 39, scope: !1284)
!1363 = !DILocation(line: 256, column: 10, scope: !1284)
!1364 = !DILocation(line: 257, column: 10, scope: !1284)
!1365 = !DILocation(line: 258, column: 15, scope: !1284)
!1366 = !DILocation(line: 259, column: 10, scope: !1284)
!1367 = !DILocation(line: 260, column: 8, scope: !1284)
!1368 = !DILocation(line: 261, column: 25, scope: !1284)
!1369 = !DILocation(line: 261, column: 36, scope: !1284)
!1370 = !DILocation(line: 262, column: 8, scope: !1284)
!1371 = !DILocation(line: 263, column: 8, scope: !1284)
!1372 = !DILocation(line: 264, column: 8, scope: !1284)
!1373 = !DILocation(line: 265, column: 8, scope: !1284)
!1374 = !DILocation(line: 265, column: 3, scope: !1284)
!1375 = !DILocation(line: 308, column: 3, scope: !1284)
!1376 = !DILocation(line: 315, column: 11, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1284, file: !145, line: 309, column: 5)
!1378 = !DILocation(line: 315, column: 12, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1377, file: !145, line: 315, column: 11)
!1380 = !DILocation(line: 316, column: 9, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !145, line: 316, column: 9)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !145, line: 316, column: 9)
!1383 = !DILocation(line: 316, column: 9, scope: !1382)
!1384 = !DILocation(line: 354, column: 26, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !145, line: 332, column: 11)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !145, line: 331, column: 13)
!1387 = distinct !DILexicalBlock(scope: !1377, file: !145, line: 330, column: 7)
!1388 = !DILocation(line: 355, column: 27, scope: !1385)
!1389 = !DILocation(line: 356, column: 11, scope: !1385)
!1390 = !DILocation(line: 357, column: 14, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !145, line: 357, column: 13)
!1392 = !DILocation(line: 357, column: 13, scope: !1387)
!1393 = !DILocation(line: 358, column: 43, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !145, line: 358, column: 11)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !145, line: 358, column: 11)
!1396 = !DILocation(line: 358, column: 11, scope: !1395)
!1397 = !DILocation(line: 359, column: 13, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !145, line: 359, column: 13)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !145, line: 359, column: 13)
!1400 = !DILocation(line: 359, column: 13, scope: !1399)
!1401 = !DILocation(line: 358, column: 70, scope: !1394)
!1402 = distinct !{!1402, !1396, !1403}
!1403 = !DILocation(line: 359, column: 13, scope: !1395)
!1404 = !DILocation(line: 362, column: 28, scope: !1387)
!1405 = !DILocation(line: 364, column: 7, scope: !1377)
!1406 = !DILocation(line: 367, column: 7, scope: !1377)
!1407 = !DILocation(line: 370, column: 7, scope: !1377)
!1408 = !DILocation(line: 373, column: 12, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1377, file: !145, line: 373, column: 11)
!1410 = !DILocation(line: 373, column: 11, scope: !1377)
!1411 = !DILocation(line: 378, column: 12, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1377, file: !145, line: 378, column: 11)
!1413 = !DILocation(line: 378, column: 11, scope: !1377)
!1414 = !DILocation(line: 379, column: 9, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !145, line: 379, column: 9)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !145, line: 379, column: 9)
!1417 = !DILocation(line: 379, column: 9, scope: !1416)
!1418 = !DILocation(line: 386, column: 7, scope: !1377)
!1419 = !DILocation(line: 389, column: 7, scope: !1377)
!1420 = !DILocation(line: 255, column: 10, scope: !1284)
!1421 = !DILocation(line: 392, column: 8, scope: !1313)
!1422 = !DILocation(line: 392, column: 27, scope: !1312)
!1423 = !DILocation(line: 392, column: 19, scope: !1312)
!1424 = !DILocation(line: 392, column: 60, scope: !1312)
!1425 = !DILocation(line: 392, column: 3, scope: !1313)
!1426 = !DILocation(line: 392, column: 41, scope: !1312)
!1427 = !DILocation(line: 392, column: 48, scope: !1312)
!1428 = !DILocation(line: 396, column: 12, scope: !1311)
!1429 = !DILocation(line: 397, column: 12, scope: !1311)
!1430 = !DILocation(line: 398, column: 12, scope: !1311)
!1431 = !DILocation(line: 401, column: 11, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1311, file: !145, line: 400, column: 11)
!1433 = !DILocation(line: 403, column: 17, scope: !1432)
!1434 = !DILocation(line: 404, column: 39, scope: !1432)
!1435 = !DILocation(line: 408, column: 32, scope: !1432)
!1436 = !DILocation(line: 404, column: 19, scope: !1432)
!1437 = !DILocation(line: 404, column: 15, scope: !1432)
!1438 = !DILocation(line: 409, column: 11, scope: !1432)
!1439 = !DILocation(line: 409, column: 26, scope: !1432)
!1440 = !DILocation(line: 409, column: 14, scope: !1432)
!1441 = !DILocation(line: 409, column: 63, scope: !1432)
!1442 = !DILocation(line: 400, column: 11, scope: !1311)
!1443 = !DILocation(line: 416, column: 11, scope: !1311)
!1444 = !DILocation(line: 394, column: 21, scope: !1311)
!1445 = !DILocation(line: 417, column: 7, scope: !1311)
!1446 = !DILocation(line: 420, column: 15, scope: !1320)
!1447 = !DILocation(line: 422, column: 15, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !145, line: 422, column: 15)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !145, line: 421, column: 13)
!1450 = distinct !DILexicalBlock(scope: !1320, file: !145, line: 420, column: 15)
!1451 = !DILocation(line: 422, column: 15, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !145, line: 422, column: 15)
!1453 = !DILocation(line: 422, column: 15, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !145, line: 422, column: 15)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !145, line: 422, column: 15)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !145, line: 422, column: 15)
!1457 = !DILocation(line: 422, column: 15, scope: !1455)
!1458 = !DILocation(line: 422, column: 15, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !145, line: 422, column: 15)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !145, line: 422, column: 15)
!1461 = !DILocation(line: 422, column: 15, scope: !1460)
!1462 = !DILocation(line: 422, column: 15, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !145, line: 422, column: 15)
!1464 = distinct !DILexicalBlock(scope: !1456, file: !145, line: 422, column: 15)
!1465 = !DILocation(line: 422, column: 15, scope: !1464)
!1466 = !DILocation(line: 422, column: 15, scope: !1456)
!1467 = !DILocation(line: 422, column: 15, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !145, line: 422, column: 15)
!1469 = distinct !DILexicalBlock(scope: !1448, file: !145, line: 422, column: 15)
!1470 = !DILocation(line: 422, column: 15, scope: !1469)
!1471 = !DILocation(line: 430, column: 19, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1449, file: !145, line: 429, column: 19)
!1473 = !DILocation(line: 430, column: 24, scope: !1472)
!1474 = !DILocation(line: 430, column: 28, scope: !1472)
!1475 = !DILocation(line: 430, column: 38, scope: !1472)
!1476 = !DILocation(line: 430, column: 48, scope: !1472)
!1477 = !DILocation(line: 430, column: 59, scope: !1472)
!1478 = !DILocation(line: 432, column: 19, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !145, line: 432, column: 19)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !145, line: 432, column: 19)
!1481 = distinct !DILexicalBlock(scope: !1472, file: !145, line: 431, column: 17)
!1482 = !DILocation(line: 432, column: 19, scope: !1480)
!1483 = !DILocation(line: 433, column: 19, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !145, line: 433, column: 19)
!1485 = distinct !DILexicalBlock(scope: !1481, file: !145, line: 433, column: 19)
!1486 = !DILocation(line: 433, column: 19, scope: !1485)
!1487 = !DILocation(line: 434, column: 17, scope: !1481)
!1488 = !DILocation(line: 441, column: 20, scope: !1450)
!1489 = !DILocation(line: 446, column: 11, scope: !1320)
!1490 = !DILocation(line: 449, column: 19, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1320, file: !145, line: 447, column: 13)
!1492 = !DILocation(line: 455, column: 19, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1491, file: !145, line: 454, column: 19)
!1494 = !DILocation(line: 455, column: 24, scope: !1493)
!1495 = !DILocation(line: 455, column: 28, scope: !1493)
!1496 = !DILocation(line: 455, column: 38, scope: !1493)
!1497 = !DILocation(line: 455, column: 47, scope: !1493)
!1498 = !DILocation(line: 455, column: 41, scope: !1493)
!1499 = !DILocation(line: 455, column: 52, scope: !1493)
!1500 = !DILocation(line: 454, column: 19, scope: !1491)
!1501 = !DILocation(line: 456, column: 25, scope: !1493)
!1502 = !DILocation(line: 456, column: 17, scope: !1493)
!1503 = !DILocation(line: 463, column: 25, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1493, file: !145, line: 457, column: 19)
!1505 = !DILocation(line: 467, column: 21, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !145, line: 467, column: 21)
!1507 = distinct !DILexicalBlock(scope: !1504, file: !145, line: 467, column: 21)
!1508 = !DILocation(line: 467, column: 21, scope: !1507)
!1509 = !DILocation(line: 468, column: 21, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !145, line: 468, column: 21)
!1511 = distinct !DILexicalBlock(scope: !1504, file: !145, line: 468, column: 21)
!1512 = !DILocation(line: 468, column: 21, scope: !1511)
!1513 = !DILocation(line: 469, column: 21, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !145, line: 469, column: 21)
!1515 = distinct !DILexicalBlock(scope: !1504, file: !145, line: 469, column: 21)
!1516 = !DILocation(line: 469, column: 21, scope: !1515)
!1517 = !DILocation(line: 470, column: 21, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !145, line: 470, column: 21)
!1519 = distinct !DILexicalBlock(scope: !1504, file: !145, line: 470, column: 21)
!1520 = !DILocation(line: 470, column: 21, scope: !1519)
!1521 = !DILocation(line: 471, column: 21, scope: !1504)
!1522 = !DILocation(line: 395, column: 21, scope: !1311)
!1523 = !DILocation(line: 484, column: 31, scope: !1320)
!1524 = !DILocation(line: 485, column: 31, scope: !1320)
!1525 = !DILocation(line: 487, column: 31, scope: !1320)
!1526 = !DILocation(line: 488, column: 31, scope: !1320)
!1527 = !DILocation(line: 489, column: 31, scope: !1320)
!1528 = !DILocation(line: 492, column: 15, scope: !1320)
!1529 = !DILocation(line: 494, column: 19, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !145, line: 493, column: 13)
!1531 = distinct !DILexicalBlock(scope: !1320, file: !145, line: 492, column: 15)
!1532 = !DILocation(line: 501, column: 33, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1320, file: !145, line: 501, column: 15)
!1534 = !DILocation(line: 506, column: 15, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1320, file: !145, line: 505, column: 15)
!1536 = !DILocation(line: 510, column: 15, scope: !1320)
!1537 = !DILocation(line: 518, column: 26, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1320, file: !145, line: 518, column: 15)
!1539 = !DILocation(line: 518, column: 15, scope: !1320)
!1540 = !DILocation(line: 518, column: 40, scope: !1538)
!1541 = !DILocation(line: 518, column: 47, scope: !1538)
!1542 = !DILocation(line: 522, column: 17, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1320, file: !145, line: 522, column: 15)
!1544 = !DILocation(line: 518, column: 18, scope: !1538)
!1545 = !DILocation(line: 518, column: 65, scope: !1538)
!1546 = !DILocation(line: 522, column: 15, scope: !1320)
!1547 = !DILocation(line: 526, column: 11, scope: !1320)
!1548 = !DILocation(line: 541, column: 15, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1320, file: !145, line: 540, column: 15)
!1550 = !DILocation(line: 548, column: 15, scope: !1320)
!1551 = !DILocation(line: 550, column: 19, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !145, line: 549, column: 13)
!1553 = distinct !DILexicalBlock(scope: !1320, file: !145, line: 548, column: 15)
!1554 = !DILocation(line: 553, column: 19, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !145, line: 553, column: 19)
!1556 = !DILocation(line: 553, column: 35, scope: !1555)
!1557 = !DILocation(line: 553, column: 30, scope: !1555)
!1558 = !DILocation(line: 562, column: 15, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !145, line: 562, column: 15)
!1560 = distinct !DILexicalBlock(scope: !1552, file: !145, line: 562, column: 15)
!1561 = !DILocation(line: 562, column: 15, scope: !1560)
!1562 = !DILocation(line: 563, column: 15, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !145, line: 563, column: 15)
!1564 = distinct !DILexicalBlock(scope: !1552, file: !145, line: 563, column: 15)
!1565 = !DILocation(line: 563, column: 15, scope: !1564)
!1566 = !DILocation(line: 564, column: 15, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !145, line: 564, column: 15)
!1568 = distinct !DILexicalBlock(scope: !1552, file: !145, line: 564, column: 15)
!1569 = !DILocation(line: 564, column: 15, scope: !1568)
!1570 = !DILocation(line: 566, column: 13, scope: !1552)
!1571 = !DILocation(line: 606, column: 17, scope: !1319)
!1572 = !DILocation(line: 602, column: 20, scope: !1319)
!1573 = !DILocation(line: 609, column: 29, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1324, file: !145, line: 607, column: 15)
!1575 = !{!830, !830, i64 0}
!1576 = !DILocation(line: 609, column: 27, scope: !1574)
!1577 = !DILocation(line: 604, column: 18, scope: !1319)
!1578 = !DILocation(line: 610, column: 15, scope: !1574)
!1579 = !DILocation(line: 613, column: 17, scope: !1323)
!1580 = !DILocation(line: 614, column: 17, scope: !1323)
!1581 = !DILocation(line: 618, column: 29, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1323, file: !145, line: 618, column: 21)
!1583 = !DILocation(line: 618, column: 21, scope: !1323)
!1584 = !DILocation(line: 619, column: 29, scope: !1582)
!1585 = !DILocation(line: 619, column: 19, scope: !1582)
!1586 = !DILocation(line: 621, column: 17, scope: !1323)
!1587 = distinct !{!1587, !1586, !1588}
!1588 = !DILocation(line: 667, column: 44, scope: !1323)
!1589 = !DILocation(line: 623, column: 21, scope: !1341)
!1590 = !DILocation(line: 624, column: 56, scope: !1341)
!1591 = !DILocation(line: 624, column: 50, scope: !1341)
!1592 = !DILocation(line: 625, column: 53, scope: !1341)
!1593 = !DILocation(line: 613, column: 27, scope: !1323)
!1594 = !DILocation(line: 623, column: 29, scope: !1341)
!1595 = !DILocation(line: 624, column: 36, scope: !1341)
!1596 = !DILocation(line: 624, column: 28, scope: !1341)
!1597 = !DILocation(line: 626, column: 25, scope: !1341)
!1598 = !DILocation(line: 636, column: 38, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1348, file: !145, line: 634, column: 23)
!1600 = !DILocation(line: 636, column: 48, scope: !1599)
!1601 = !DILocation(line: 636, column: 51, scope: !1599)
!1602 = !DILocation(line: 636, column: 25, scope: !1599)
!1603 = !DILocation(line: 637, column: 28, scope: !1599)
!1604 = !DILocation(line: 636, column: 34, scope: !1599)
!1605 = distinct !{!1605, !1602, !1603}
!1606 = !DILocation(line: 650, column: 43, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !145, line: 650, column: 29)
!1608 = distinct !DILexicalBlock(scope: !1345, file: !145, line: 650, column: 29)
!1609 = !DILocation(line: 647, column: 29, scope: !1346)
!1610 = !DILocation(line: 649, column: 36, scope: !1345)
!1611 = !DILocation(line: 651, column: 49, scope: !1607)
!1612 = !DILocation(line: 651, column: 39, scope: !1607)
!1613 = !DILocation(line: 651, column: 31, scope: !1607)
!1614 = !DILocation(line: 650, column: 53, scope: !1607)
!1615 = !DILocation(line: 650, column: 29, scope: !1608)
!1616 = distinct !{!1616, !1615, !1617}
!1617 = !DILocation(line: 659, column: 33, scope: !1608)
!1618 = !DILocation(line: 666, column: 19, scope: !1323)
!1619 = !DILocation(line: 662, column: 41, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1347, file: !145, line: 662, column: 29)
!1621 = !DILocation(line: 662, column: 31, scope: !1620)
!1622 = !DILocation(line: 662, column: 29, scope: !1347)
!1623 = !DILocation(line: 664, column: 27, scope: !1347)
!1624 = !DILocation(line: 667, column: 26, scope: !1323)
!1625 = !DILocation(line: 667, column: 24, scope: !1323)
!1626 = !DILocation(line: 666, column: 19, scope: !1341)
!1627 = !DILocation(line: 668, column: 15, scope: !1324)
!1628 = !DILocation(line: 670, column: 40, scope: !1319)
!1629 = !DILocation(line: 672, column: 19, scope: !1353)
!1630 = !DILocation(line: 672, column: 45, scope: !1353)
!1631 = !DILocation(line: 672, column: 23, scope: !1353)
!1632 = !DILocation(line: 676, column: 33, scope: !1352)
!1633 = !DILocation(line: 676, column: 24, scope: !1352)
!1634 = !DILocation(line: 678, column: 17, scope: !1352)
!1635 = !DILocation(line: 680, column: 43, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !145, line: 680, column: 25)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !145, line: 679, column: 19)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !145, line: 678, column: 17)
!1639 = distinct !DILexicalBlock(scope: !1352, file: !145, line: 678, column: 17)
!1640 = !DILocation(line: 682, column: 25, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !145, line: 682, column: 25)
!1642 = distinct !DILexicalBlock(scope: !1636, file: !145, line: 681, column: 23)
!1643 = !DILocation(line: 682, column: 25, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !145, line: 682, column: 25)
!1645 = !DILocation(line: 682, column: 25, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !145, line: 682, column: 25)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !145, line: 682, column: 25)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !145, line: 682, column: 25)
!1649 = !DILocation(line: 682, column: 25, scope: !1647)
!1650 = !DILocation(line: 682, column: 25, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !145, line: 682, column: 25)
!1652 = distinct !DILexicalBlock(scope: !1648, file: !145, line: 682, column: 25)
!1653 = !DILocation(line: 682, column: 25, scope: !1652)
!1654 = !DILocation(line: 682, column: 25, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !145, line: 682, column: 25)
!1656 = distinct !DILexicalBlock(scope: !1648, file: !145, line: 682, column: 25)
!1657 = !DILocation(line: 682, column: 25, scope: !1656)
!1658 = !DILocation(line: 682, column: 25, scope: !1648)
!1659 = !DILocation(line: 682, column: 25, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !145, line: 682, column: 25)
!1661 = distinct !DILexicalBlock(scope: !1641, file: !145, line: 682, column: 25)
!1662 = !DILocation(line: 682, column: 25, scope: !1661)
!1663 = !DILocation(line: 683, column: 25, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !145, line: 683, column: 25)
!1665 = distinct !DILexicalBlock(scope: !1642, file: !145, line: 683, column: 25)
!1666 = !DILocation(line: 683, column: 25, scope: !1665)
!1667 = !DILocation(line: 684, column: 25, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !145, line: 684, column: 25)
!1669 = distinct !DILexicalBlock(scope: !1642, file: !145, line: 684, column: 25)
!1670 = !DILocation(line: 684, column: 25, scope: !1669)
!1671 = !DILocation(line: 685, column: 38, scope: !1642)
!1672 = !DILocation(line: 685, column: 33, scope: !1642)
!1673 = !DILocation(line: 686, column: 23, scope: !1642)
!1674 = !DILocation(line: 687, column: 30, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1636, file: !145, line: 687, column: 30)
!1676 = !DILocation(line: 687, column: 30, scope: !1636)
!1677 = !DILocation(line: 689, column: 25, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !145, line: 689, column: 25)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !145, line: 689, column: 25)
!1680 = distinct !DILexicalBlock(scope: !1675, file: !145, line: 688, column: 23)
!1681 = !DILocation(line: 689, column: 25, scope: !1679)
!1682 = !DILocation(line: 691, column: 23, scope: !1680)
!1683 = !DILocation(line: 692, column: 35, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1637, file: !145, line: 692, column: 25)
!1685 = !DILocation(line: 692, column: 30, scope: !1684)
!1686 = !DILocation(line: 692, column: 25, scope: !1637)
!1687 = !DILocation(line: 694, column: 21, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !145, line: 694, column: 21)
!1689 = distinct !DILexicalBlock(scope: !1637, file: !145, line: 694, column: 21)
!1690 = !DILocation(line: 694, column: 21, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !145, line: 694, column: 21)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !145, line: 694, column: 21)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !145, line: 694, column: 21)
!1694 = !DILocation(line: 694, column: 21, scope: !1692)
!1695 = !DILocation(line: 694, column: 21, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !145, line: 694, column: 21)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !145, line: 694, column: 21)
!1698 = !DILocation(line: 694, column: 21, scope: !1697)
!1699 = !DILocation(line: 694, column: 21, scope: !1693)
!1700 = !DILocation(line: 695, column: 21, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !145, line: 695, column: 21)
!1702 = distinct !DILexicalBlock(scope: !1637, file: !145, line: 695, column: 21)
!1703 = !DILocation(line: 695, column: 21, scope: !1702)
!1704 = !DILocation(line: 696, column: 25, scope: !1637)
!1705 = !DILocation(line: 678, column: 17, scope: !1638)
!1706 = distinct !{!1706, !1707, !1708}
!1707 = !DILocation(line: 678, column: 17, scope: !1639)
!1708 = !DILocation(line: 697, column: 19, scope: !1639)
!1709 = !DILocation(line: 704, column: 34, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1311, file: !145, line: 704, column: 11)
!1711 = !DILocation(line: 706, column: 14, scope: !1710)
!1712 = !DILocation(line: 707, column: 14, scope: !1710)
!1713 = !DILocation(line: 707, column: 35, scope: !1710)
!1714 = !DILocation(line: 707, column: 17, scope: !1710)
!1715 = !DILocation(line: 707, column: 53, scope: !1710)
!1716 = !DILocation(line: 707, column: 47, scope: !1710)
!1717 = !DILocation(line: 707, column: 65, scope: !1710)
!1718 = !DILocation(line: 708, column: 15, scope: !1710)
!1719 = !DILocation(line: 708, column: 11, scope: !1710)
!1720 = !DILocation(line: 704, column: 11, scope: !1311)
!1721 = !DILocation(line: 712, column: 7, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1311, file: !145, line: 712, column: 7)
!1723 = !DILocation(line: 712, column: 7, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1722, file: !145, line: 712, column: 7)
!1725 = !DILocation(line: 712, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !145, line: 712, column: 7)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !145, line: 712, column: 7)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !145, line: 712, column: 7)
!1729 = !DILocation(line: 712, column: 7, scope: !1727)
!1730 = !DILocation(line: 712, column: 7, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !145, line: 712, column: 7)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !145, line: 712, column: 7)
!1733 = !DILocation(line: 712, column: 7, scope: !1732)
!1734 = !DILocation(line: 712, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !145, line: 712, column: 7)
!1736 = distinct !DILexicalBlock(scope: !1728, file: !145, line: 712, column: 7)
!1737 = !DILocation(line: 712, column: 7, scope: !1736)
!1738 = !DILocation(line: 712, column: 7, scope: !1728)
!1739 = !DILocation(line: 712, column: 7, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !145, line: 712, column: 7)
!1741 = distinct !DILexicalBlock(scope: !1722, file: !145, line: 712, column: 7)
!1742 = !DILocation(line: 712, column: 7, scope: !1741)
!1743 = !DILocation(line: 715, column: 7, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !145, line: 715, column: 7)
!1745 = distinct !DILexicalBlock(scope: !1311, file: !145, line: 715, column: 7)
!1746 = !DILocation(line: 715, column: 7, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !145, line: 715, column: 7)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !145, line: 715, column: 7)
!1749 = distinct !DILexicalBlock(scope: !1744, file: !145, line: 715, column: 7)
!1750 = !DILocation(line: 715, column: 7, scope: !1748)
!1751 = !DILocation(line: 715, column: 7, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !145, line: 715, column: 7)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !145, line: 715, column: 7)
!1754 = !DILocation(line: 715, column: 7, scope: !1753)
!1755 = !DILocation(line: 715, column: 7, scope: !1749)
!1756 = !DILocation(line: 716, column: 7, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !145, line: 716, column: 7)
!1758 = distinct !DILexicalBlock(scope: !1311, file: !145, line: 716, column: 7)
!1759 = !DILocation(line: 716, column: 7, scope: !1758)
!1760 = !DILocation(line: 718, column: 13, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1311, file: !145, line: 718, column: 11)
!1762 = !DILocation(line: 718, column: 11, scope: !1311)
!1763 = !DILocation(line: 720, column: 5, scope: !1312)
!1764 = !DILocation(line: 392, column: 75, scope: !1312)
!1765 = !DILocation(line: 392, column: 3, scope: !1312)
!1766 = distinct !{!1766, !1425, !1767}
!1767 = !DILocation(line: 720, column: 5, scope: !1313)
!1768 = !DILocation(line: 722, column: 11, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1284, file: !145, line: 722, column: 7)
!1770 = !DILocation(line: 722, column: 16, scope: !1769)
!1771 = !DILocation(line: 730, column: 51, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1284, file: !145, line: 730, column: 7)
!1773 = !DILocation(line: 731, column: 10, scope: !1772)
!1774 = !DILocation(line: 733, column: 11, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !145, line: 733, column: 11)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !145, line: 732, column: 5)
!1777 = !DILocation(line: 733, column: 11, scope: !1776)
!1778 = !DILocation(line: 734, column: 16, scope: !1775)
!1779 = !DILocation(line: 734, column: 9, scope: !1775)
!1780 = !DILocation(line: 738, column: 18, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1775, file: !145, line: 738, column: 16)
!1782 = !DILocation(line: 738, column: 32, scope: !1781)
!1783 = !DILocation(line: 738, column: 29, scope: !1781)
!1784 = !DILocation(line: 747, column: 7, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1284, file: !145, line: 747, column: 7)
!1786 = !DILocation(line: 747, column: 20, scope: !1785)
!1787 = !DILocation(line: 748, column: 12, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !145, line: 748, column: 5)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !145, line: 748, column: 5)
!1790 = !DILocation(line: 748, column: 5, scope: !1789)
!1791 = !DILocation(line: 749, column: 7, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !145, line: 749, column: 7)
!1793 = distinct !DILexicalBlock(scope: !1788, file: !145, line: 749, column: 7)
!1794 = !DILocation(line: 749, column: 7, scope: !1793)
!1795 = !DILocation(line: 748, column: 39, scope: !1788)
!1796 = distinct !{!1796, !1790, !1797}
!1797 = !DILocation(line: 749, column: 7, scope: !1789)
!1798 = !DILocation(line: 751, column: 11, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1284, file: !145, line: 751, column: 7)
!1800 = !DILocation(line: 751, column: 7, scope: !1284)
!1801 = !DILocation(line: 752, column: 5, scope: !1799)
!1802 = !DILocation(line: 752, column: 17, scope: !1799)
!1803 = !DILocation(line: 758, column: 21, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1284, file: !145, line: 758, column: 7)
!1805 = !DILocation(line: 758, column: 54, scope: !1804)
!1806 = !DILocation(line: 758, column: 51, scope: !1804)
!1807 = !DILocation(line: 762, column: 42, scope: !1284)
!1808 = !DILocation(line: 760, column: 10, scope: !1284)
!1809 = !DILocation(line: 760, column: 3, scope: !1284)
!1810 = !DILocation(line: 764, column: 1, scope: !1284)
!1811 = distinct !DISubprogram(name: "gettext_quote", scope: !145, file: !145, line: 199, type: !1812, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!29, !29, !5}
!1814 = !{!1815, !1816, !1817, !1818}
!1815 = !DILocalVariable(name: "msgid", arg: 1, scope: !1811, file: !145, line: 199, type: !29)
!1816 = !DILocalVariable(name: "s", arg: 2, scope: !1811, file: !145, line: 199, type: !5)
!1817 = !DILocalVariable(name: "translation", scope: !1811, file: !145, line: 201, type: !29)
!1818 = !DILocalVariable(name: "locale_code", scope: !1811, file: !145, line: 202, type: !29)
!1819 = !DILocation(line: 199, column: 28, scope: !1811)
!1820 = !DILocation(line: 199, column: 54, scope: !1811)
!1821 = !DILocation(line: 201, column: 29, scope: !1811)
!1822 = !DILocation(line: 201, column: 15, scope: !1811)
!1823 = !DILocation(line: 204, column: 19, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1811, file: !145, line: 204, column: 7)
!1825 = !DILocation(line: 204, column: 7, scope: !1811)
!1826 = !DILocation(line: 225, column: 17, scope: !1811)
!1827 = !DILocation(line: 202, column: 15, scope: !1811)
!1828 = !DILocalVariable(name: "s2", arg: 2, scope: !1829, file: !1830, line: 160, type: !29)
!1829 = distinct !DISubprogram(name: "strcaseeq0", scope: !1830, file: !1830, line: 160, type: !1831, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1833)
!1830 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!86, !29, !29, !31, !31, !31, !31, !31, !31, !31, !31, !31}
!1833 = !{!1834, !1828, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!1834 = !DILocalVariable(name: "s1", arg: 1, scope: !1829, file: !1830, line: 160, type: !29)
!1835 = !DILocalVariable(name: "s20", arg: 3, scope: !1829, file: !1830, line: 160, type: !31)
!1836 = !DILocalVariable(name: "s21", arg: 4, scope: !1829, file: !1830, line: 160, type: !31)
!1837 = !DILocalVariable(name: "s22", arg: 5, scope: !1829, file: !1830, line: 160, type: !31)
!1838 = !DILocalVariable(name: "s23", arg: 6, scope: !1829, file: !1830, line: 160, type: !31)
!1839 = !DILocalVariable(name: "s24", arg: 7, scope: !1829, file: !1830, line: 160, type: !31)
!1840 = !DILocalVariable(name: "s25", arg: 8, scope: !1829, file: !1830, line: 160, type: !31)
!1841 = !DILocalVariable(name: "s26", arg: 9, scope: !1829, file: !1830, line: 160, type: !31)
!1842 = !DILocalVariable(name: "s27", arg: 10, scope: !1829, file: !1830, line: 160, type: !31)
!1843 = !DILocalVariable(name: "s28", arg: 11, scope: !1829, file: !1830, line: 160, type: !31)
!1844 = !DILocation(line: 160, column: 41, scope: !1829, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 226, column: 7, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1811, file: !145, line: 226, column: 7)
!1847 = !DILocation(line: 160, column: 120, scope: !1829, inlinedAt: !1845)
!1848 = !DILocation(line: 160, column: 130, scope: !1829, inlinedAt: !1845)
!1849 = !DILocation(line: 162, column: 7, scope: !1850, inlinedAt: !1845)
!1850 = distinct !DILexicalBlock(scope: !1829, file: !1830, line: 162, column: 7)
!1851 = !DILocalVariable(name: "s2", arg: 2, scope: !1852, file: !1830, line: 146, type: !29)
!1852 = distinct !DISubprogram(name: "strcaseeq1", scope: !1830, file: !1830, line: 146, type: !1853, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1855)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!86, !29, !29, !31, !31, !31, !31, !31, !31, !31, !31}
!1855 = !{!1856, !1851, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864}
!1856 = !DILocalVariable(name: "s1", arg: 1, scope: !1852, file: !1830, line: 146, type: !29)
!1857 = !DILocalVariable(name: "s21", arg: 3, scope: !1852, file: !1830, line: 146, type: !31)
!1858 = !DILocalVariable(name: "s22", arg: 4, scope: !1852, file: !1830, line: 146, type: !31)
!1859 = !DILocalVariable(name: "s23", arg: 5, scope: !1852, file: !1830, line: 146, type: !31)
!1860 = !DILocalVariable(name: "s24", arg: 6, scope: !1852, file: !1830, line: 146, type: !31)
!1861 = !DILocalVariable(name: "s25", arg: 7, scope: !1852, file: !1830, line: 146, type: !31)
!1862 = !DILocalVariable(name: "s26", arg: 8, scope: !1852, file: !1830, line: 146, type: !31)
!1863 = !DILocalVariable(name: "s27", arg: 9, scope: !1852, file: !1830, line: 146, type: !31)
!1864 = !DILocalVariable(name: "s28", arg: 10, scope: !1852, file: !1830, line: 146, type: !31)
!1865 = !DILocation(line: 146, column: 41, scope: !1852, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 167, column: 16, scope: !1867, inlinedAt: !1845)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !1830, line: 164, column: 11)
!1868 = distinct !DILexicalBlock(scope: !1850, file: !1830, line: 163, column: 5)
!1869 = !DILocation(line: 146, column: 110, scope: !1852, inlinedAt: !1866)
!1870 = !DILocation(line: 146, column: 120, scope: !1852, inlinedAt: !1866)
!1871 = !DILocation(line: 148, column: 7, scope: !1872, inlinedAt: !1866)
!1872 = distinct !DILexicalBlock(scope: !1852, file: !1830, line: 148, column: 7)
!1873 = !DILocalVariable(name: "s2", arg: 2, scope: !1874, file: !1830, line: 132, type: !29)
!1874 = distinct !DISubprogram(name: "strcaseeq2", scope: !1830, file: !1830, line: 132, type: !1875, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1877)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!86, !29, !29, !31, !31, !31, !31, !31, !31, !31}
!1877 = !{!1878, !1873, !1879, !1880, !1881, !1882, !1883, !1884, !1885}
!1878 = !DILocalVariable(name: "s1", arg: 1, scope: !1874, file: !1830, line: 132, type: !29)
!1879 = !DILocalVariable(name: "s22", arg: 3, scope: !1874, file: !1830, line: 132, type: !31)
!1880 = !DILocalVariable(name: "s23", arg: 4, scope: !1874, file: !1830, line: 132, type: !31)
!1881 = !DILocalVariable(name: "s24", arg: 5, scope: !1874, file: !1830, line: 132, type: !31)
!1882 = !DILocalVariable(name: "s25", arg: 6, scope: !1874, file: !1830, line: 132, type: !31)
!1883 = !DILocalVariable(name: "s26", arg: 7, scope: !1874, file: !1830, line: 132, type: !31)
!1884 = !DILocalVariable(name: "s27", arg: 8, scope: !1874, file: !1830, line: 132, type: !31)
!1885 = !DILocalVariable(name: "s28", arg: 9, scope: !1874, file: !1830, line: 132, type: !31)
!1886 = !DILocation(line: 132, column: 41, scope: !1874, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 153, column: 16, scope: !1888, inlinedAt: !1866)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !1830, line: 150, column: 11)
!1889 = distinct !DILexicalBlock(scope: !1872, file: !1830, line: 149, column: 5)
!1890 = !DILocation(line: 132, column: 100, scope: !1874, inlinedAt: !1887)
!1891 = !DILocation(line: 132, column: 110, scope: !1874, inlinedAt: !1887)
!1892 = !DILocation(line: 134, column: 7, scope: !1893, inlinedAt: !1887)
!1893 = distinct !DILexicalBlock(scope: !1874, file: !1830, line: 134, column: 7)
!1894 = !DILocalVariable(name: "s2", arg: 2, scope: !1895, file: !1830, line: 118, type: !29)
!1895 = distinct !DISubprogram(name: "strcaseeq3", scope: !1830, file: !1830, line: 118, type: !1896, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!86, !29, !29, !31, !31, !31, !31, !31, !31}
!1898 = !{!1899, !1894, !1900, !1901, !1902, !1903, !1904, !1905}
!1899 = !DILocalVariable(name: "s1", arg: 1, scope: !1895, file: !1830, line: 118, type: !29)
!1900 = !DILocalVariable(name: "s23", arg: 3, scope: !1895, file: !1830, line: 118, type: !31)
!1901 = !DILocalVariable(name: "s24", arg: 4, scope: !1895, file: !1830, line: 118, type: !31)
!1902 = !DILocalVariable(name: "s25", arg: 5, scope: !1895, file: !1830, line: 118, type: !31)
!1903 = !DILocalVariable(name: "s26", arg: 6, scope: !1895, file: !1830, line: 118, type: !31)
!1904 = !DILocalVariable(name: "s27", arg: 7, scope: !1895, file: !1830, line: 118, type: !31)
!1905 = !DILocalVariable(name: "s28", arg: 8, scope: !1895, file: !1830, line: 118, type: !31)
!1906 = !DILocation(line: 118, column: 41, scope: !1895, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 139, column: 16, scope: !1908, inlinedAt: !1887)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !1830, line: 136, column: 11)
!1909 = distinct !DILexicalBlock(scope: !1893, file: !1830, line: 135, column: 5)
!1910 = !DILocation(line: 118, column: 90, scope: !1895, inlinedAt: !1907)
!1911 = !DILocation(line: 118, column: 100, scope: !1895, inlinedAt: !1907)
!1912 = !DILocation(line: 120, column: 7, scope: !1913, inlinedAt: !1907)
!1913 = distinct !DILexicalBlock(scope: !1895, file: !1830, line: 120, column: 7)
!1914 = !DILocation(line: 120, column: 7, scope: !1895, inlinedAt: !1907)
!1915 = !DILocalVariable(name: "s2", arg: 2, scope: !1916, file: !1830, line: 104, type: !29)
!1916 = distinct !DISubprogram(name: "strcaseeq4", scope: !1830, file: !1830, line: 104, type: !1917, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!86, !29, !29, !31, !31, !31, !31, !31}
!1919 = !{!1920, !1915, !1921, !1922, !1923, !1924, !1925}
!1920 = !DILocalVariable(name: "s1", arg: 1, scope: !1916, file: !1830, line: 104, type: !29)
!1921 = !DILocalVariable(name: "s24", arg: 3, scope: !1916, file: !1830, line: 104, type: !31)
!1922 = !DILocalVariable(name: "s25", arg: 4, scope: !1916, file: !1830, line: 104, type: !31)
!1923 = !DILocalVariable(name: "s26", arg: 5, scope: !1916, file: !1830, line: 104, type: !31)
!1924 = !DILocalVariable(name: "s27", arg: 6, scope: !1916, file: !1830, line: 104, type: !31)
!1925 = !DILocalVariable(name: "s28", arg: 7, scope: !1916, file: !1830, line: 104, type: !31)
!1926 = !DILocation(line: 104, column: 41, scope: !1916, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 125, column: 16, scope: !1928, inlinedAt: !1907)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !1830, line: 122, column: 11)
!1929 = distinct !DILexicalBlock(scope: !1913, file: !1830, line: 121, column: 5)
!1930 = !DILocation(line: 104, column: 80, scope: !1916, inlinedAt: !1927)
!1931 = !DILocation(line: 104, column: 90, scope: !1916, inlinedAt: !1927)
!1932 = !DILocation(line: 106, column: 7, scope: !1933, inlinedAt: !1927)
!1933 = distinct !DILexicalBlock(scope: !1916, file: !1830, line: 106, column: 7)
!1934 = !DILocation(line: 106, column: 7, scope: !1916, inlinedAt: !1927)
!1935 = !DILocalVariable(name: "s2", arg: 2, scope: !1936, file: !1830, line: 90, type: !29)
!1936 = distinct !DISubprogram(name: "strcaseeq5", scope: !1830, file: !1830, line: 90, type: !1937, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1939)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!86, !29, !29, !31, !31, !31, !31}
!1939 = !{!1940, !1935, !1941, !1942, !1943, !1944}
!1940 = !DILocalVariable(name: "s1", arg: 1, scope: !1936, file: !1830, line: 90, type: !29)
!1941 = !DILocalVariable(name: "s25", arg: 3, scope: !1936, file: !1830, line: 90, type: !31)
!1942 = !DILocalVariable(name: "s26", arg: 4, scope: !1936, file: !1830, line: 90, type: !31)
!1943 = !DILocalVariable(name: "s27", arg: 5, scope: !1936, file: !1830, line: 90, type: !31)
!1944 = !DILocalVariable(name: "s28", arg: 6, scope: !1936, file: !1830, line: 90, type: !31)
!1945 = !DILocation(line: 90, column: 41, scope: !1936, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 111, column: 16, scope: !1947, inlinedAt: !1927)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !1830, line: 108, column: 11)
!1948 = distinct !DILexicalBlock(scope: !1933, file: !1830, line: 107, column: 5)
!1949 = !DILocation(line: 90, column: 70, scope: !1936, inlinedAt: !1946)
!1950 = !DILocation(line: 90, column: 80, scope: !1936, inlinedAt: !1946)
!1951 = !DILocation(line: 92, column: 7, scope: !1952, inlinedAt: !1946)
!1952 = distinct !DILexicalBlock(scope: !1936, file: !1830, line: 92, column: 7)
!1953 = !DILocation(line: 92, column: 7, scope: !1936, inlinedAt: !1946)
!1954 = !DILocation(line: 227, column: 12, scope: !1846)
!1955 = !DILocation(line: 227, column: 21, scope: !1846)
!1956 = !DILocation(line: 227, column: 5, scope: !1846)
!1957 = !DILocation(line: 146, column: 41, scope: !1852, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 167, column: 16, scope: !1867, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 228, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1811, file: !145, line: 228, column: 7)
!1961 = !DILocation(line: 146, column: 110, scope: !1852, inlinedAt: !1958)
!1962 = !DILocation(line: 146, column: 120, scope: !1852, inlinedAt: !1958)
!1963 = !DILocation(line: 148, column: 7, scope: !1872, inlinedAt: !1958)
!1964 = !DILocation(line: 132, column: 41, scope: !1874, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 153, column: 16, scope: !1888, inlinedAt: !1958)
!1966 = !DILocation(line: 132, column: 100, scope: !1874, inlinedAt: !1965)
!1967 = !DILocation(line: 132, column: 110, scope: !1874, inlinedAt: !1965)
!1968 = !DILocation(line: 134, column: 7, scope: !1893, inlinedAt: !1965)
!1969 = !DILocation(line: 134, column: 7, scope: !1874, inlinedAt: !1965)
!1970 = !DILocation(line: 118, column: 41, scope: !1895, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 139, column: 16, scope: !1908, inlinedAt: !1965)
!1972 = !DILocation(line: 118, column: 90, scope: !1895, inlinedAt: !1971)
!1973 = !DILocation(line: 118, column: 100, scope: !1895, inlinedAt: !1971)
!1974 = !DILocation(line: 120, column: 7, scope: !1913, inlinedAt: !1971)
!1975 = !DILocation(line: 120, column: 7, scope: !1895, inlinedAt: !1971)
!1976 = !DILocation(line: 104, column: 41, scope: !1916, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 125, column: 16, scope: !1928, inlinedAt: !1971)
!1978 = !DILocation(line: 104, column: 80, scope: !1916, inlinedAt: !1977)
!1979 = !DILocation(line: 104, column: 90, scope: !1916, inlinedAt: !1977)
!1980 = !DILocation(line: 106, column: 7, scope: !1933, inlinedAt: !1977)
!1981 = !DILocation(line: 106, column: 7, scope: !1916, inlinedAt: !1977)
!1982 = !DILocation(line: 90, column: 41, scope: !1936, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 111, column: 16, scope: !1947, inlinedAt: !1977)
!1984 = !DILocation(line: 90, column: 70, scope: !1936, inlinedAt: !1983)
!1985 = !DILocation(line: 90, column: 80, scope: !1936, inlinedAt: !1983)
!1986 = !DILocation(line: 92, column: 7, scope: !1952, inlinedAt: !1983)
!1987 = !DILocation(line: 92, column: 7, scope: !1936, inlinedAt: !1983)
!1988 = !DILocalVariable(name: "s2", arg: 2, scope: !1989, file: !1830, line: 76, type: !29)
!1989 = distinct !DISubprogram(name: "strcaseeq6", scope: !1830, file: !1830, line: 76, type: !1990, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!86, !29, !29, !31, !31, !31}
!1992 = !{!1993, !1988, !1994, !1995, !1996}
!1993 = !DILocalVariable(name: "s1", arg: 1, scope: !1989, file: !1830, line: 76, type: !29)
!1994 = !DILocalVariable(name: "s26", arg: 3, scope: !1989, file: !1830, line: 76, type: !31)
!1995 = !DILocalVariable(name: "s27", arg: 4, scope: !1989, file: !1830, line: 76, type: !31)
!1996 = !DILocalVariable(name: "s28", arg: 5, scope: !1989, file: !1830, line: 76, type: !31)
!1997 = !DILocation(line: 76, column: 41, scope: !1989, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 97, column: 16, scope: !1999, inlinedAt: !1983)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !1830, line: 94, column: 11)
!2000 = distinct !DILexicalBlock(scope: !1952, file: !1830, line: 93, column: 5)
!2001 = !DILocation(line: 76, column: 60, scope: !1989, inlinedAt: !1998)
!2002 = !DILocation(line: 76, column: 70, scope: !1989, inlinedAt: !1998)
!2003 = !DILocation(line: 78, column: 7, scope: !2004, inlinedAt: !1998)
!2004 = distinct !DILexicalBlock(scope: !1989, file: !1830, line: 78, column: 7)
!2005 = !DILocation(line: 78, column: 7, scope: !1989, inlinedAt: !1998)
!2006 = !DILocalVariable(name: "s2", arg: 2, scope: !2007, file: !1830, line: 62, type: !29)
!2007 = distinct !DISubprogram(name: "strcaseeq7", scope: !1830, file: !1830, line: 62, type: !2008, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!86, !29, !29, !31, !31}
!2010 = !{!2011, !2006, !2012, !2013}
!2011 = !DILocalVariable(name: "s1", arg: 1, scope: !2007, file: !1830, line: 62, type: !29)
!2012 = !DILocalVariable(name: "s27", arg: 3, scope: !2007, file: !1830, line: 62, type: !31)
!2013 = !DILocalVariable(name: "s28", arg: 4, scope: !2007, file: !1830, line: 62, type: !31)
!2014 = !DILocation(line: 62, column: 41, scope: !2007, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 83, column: 16, scope: !2016, inlinedAt: !1998)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !1830, line: 80, column: 11)
!2017 = distinct !DILexicalBlock(scope: !2004, file: !1830, line: 79, column: 5)
!2018 = !DILocation(line: 62, column: 50, scope: !2007, inlinedAt: !2015)
!2019 = !DILocation(line: 62, column: 60, scope: !2007, inlinedAt: !2015)
!2020 = !DILocation(line: 64, column: 7, scope: !2021, inlinedAt: !2015)
!2021 = distinct !DILexicalBlock(scope: !2007, file: !1830, line: 64, column: 7)
!2022 = !DILocation(line: 228, column: 7, scope: !1811)
!2023 = !DILocation(line: 229, column: 12, scope: !1960)
!2024 = !DILocation(line: 229, column: 21, scope: !1960)
!2025 = !DILocation(line: 229, column: 5, scope: !1960)
!2026 = !DILocation(line: 231, column: 13, scope: !1811)
!2027 = !DILocation(line: 231, column: 11, scope: !1811)
!2028 = !DILocation(line: 231, column: 3, scope: !1811)
!2029 = !DILocation(line: 232, column: 1, scope: !1811)
!2030 = distinct !DISubprogram(name: "quotearg_alloc", scope: !145, file: !145, line: 791, type: !2031, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2033)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!110, !29, !140, !1156}
!2033 = !{!2034, !2035, !2036}
!2034 = !DILocalVariable(name: "arg", arg: 1, scope: !2030, file: !145, line: 791, type: !29)
!2035 = !DILocalVariable(name: "argsize", arg: 2, scope: !2030, file: !145, line: 791, type: !140)
!2036 = !DILocalVariable(name: "o", arg: 3, scope: !2030, file: !145, line: 792, type: !1156)
!2037 = !DILocation(line: 791, column: 29, scope: !2030)
!2038 = !DILocation(line: 791, column: 41, scope: !2030)
!2039 = !DILocation(line: 792, column: 47, scope: !2030)
!2040 = !DILocalVariable(name: "arg", arg: 1, scope: !2041, file: !145, line: 804, type: !29)
!2041 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !145, file: !145, line: 804, type: !2042, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!110, !29, !140, !565, !1156}
!2044 = !{!2040, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052}
!2045 = !DILocalVariable(name: "argsize", arg: 2, scope: !2041, file: !145, line: 804, type: !140)
!2046 = !DILocalVariable(name: "size", arg: 3, scope: !2041, file: !145, line: 804, type: !565)
!2047 = !DILocalVariable(name: "o", arg: 4, scope: !2041, file: !145, line: 805, type: !1156)
!2048 = !DILocalVariable(name: "p", scope: !2041, file: !145, line: 807, type: !1156)
!2049 = !DILocalVariable(name: "e", scope: !2041, file: !145, line: 808, type: !86)
!2050 = !DILocalVariable(name: "flags", scope: !2041, file: !145, line: 810, type: !86)
!2051 = !DILocalVariable(name: "bufsize", scope: !2041, file: !145, line: 811, type: !140)
!2052 = !DILocalVariable(name: "buf", scope: !2041, file: !145, line: 815, type: !110)
!2053 = !DILocation(line: 804, column: 33, scope: !2041, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 794, column: 10, scope: !2030)
!2055 = !DILocation(line: 804, column: 45, scope: !2041, inlinedAt: !2054)
!2056 = !DILocation(line: 804, column: 62, scope: !2041, inlinedAt: !2054)
!2057 = !DILocation(line: 805, column: 51, scope: !2041, inlinedAt: !2054)
!2058 = !DILocation(line: 807, column: 37, scope: !2041, inlinedAt: !2054)
!2059 = !DILocation(line: 807, column: 33, scope: !2041, inlinedAt: !2054)
!2060 = !DILocation(line: 808, column: 11, scope: !2041, inlinedAt: !2054)
!2061 = !DILocation(line: 808, column: 7, scope: !2041, inlinedAt: !2054)
!2062 = !DILocation(line: 810, column: 18, scope: !2041, inlinedAt: !2054)
!2063 = !DILocation(line: 810, column: 24, scope: !2041, inlinedAt: !2054)
!2064 = !DILocation(line: 810, column: 7, scope: !2041, inlinedAt: !2054)
!2065 = !DILocation(line: 811, column: 69, scope: !2041, inlinedAt: !2054)
!2066 = !DILocation(line: 812, column: 53, scope: !2041, inlinedAt: !2054)
!2067 = !DILocation(line: 813, column: 49, scope: !2041, inlinedAt: !2054)
!2068 = !DILocation(line: 814, column: 49, scope: !2041, inlinedAt: !2054)
!2069 = !DILocation(line: 811, column: 20, scope: !2041, inlinedAt: !2054)
!2070 = !DILocation(line: 814, column: 62, scope: !2041, inlinedAt: !2054)
!2071 = !DILocation(line: 811, column: 10, scope: !2041, inlinedAt: !2054)
!2072 = !DILocalVariable(name: "n", arg: 1, scope: !2073, file: !561, line: 220, type: !140)
!2073 = distinct !DISubprogram(name: "xcharalloc", scope: !561, file: !561, line: 220, type: !2074, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!110, !140}
!2076 = !{!2072}
!2077 = !DILocation(line: 220, column: 20, scope: !2073, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 815, column: 15, scope: !2041, inlinedAt: !2054)
!2079 = !DILocation(line: 222, column: 10, scope: !2073, inlinedAt: !2078)
!2080 = !DILocation(line: 815, column: 9, scope: !2041, inlinedAt: !2054)
!2081 = !DILocation(line: 816, column: 60, scope: !2041, inlinedAt: !2054)
!2082 = !DILocation(line: 818, column: 32, scope: !2041, inlinedAt: !2054)
!2083 = !DILocation(line: 818, column: 47, scope: !2041, inlinedAt: !2054)
!2084 = !DILocation(line: 816, column: 3, scope: !2041, inlinedAt: !2054)
!2085 = !DILocation(line: 819, column: 9, scope: !2041, inlinedAt: !2054)
!2086 = !DILocation(line: 794, column: 3, scope: !2030)
!2087 = !DILocation(line: 804, column: 33, scope: !2041)
!2088 = !DILocation(line: 804, column: 45, scope: !2041)
!2089 = !DILocation(line: 804, column: 62, scope: !2041)
!2090 = !DILocation(line: 805, column: 51, scope: !2041)
!2091 = !DILocation(line: 807, column: 37, scope: !2041)
!2092 = !DILocation(line: 807, column: 33, scope: !2041)
!2093 = !DILocation(line: 808, column: 11, scope: !2041)
!2094 = !DILocation(line: 808, column: 7, scope: !2041)
!2095 = !DILocation(line: 810, column: 18, scope: !2041)
!2096 = !DILocation(line: 810, column: 27, scope: !2041)
!2097 = !DILocation(line: 810, column: 24, scope: !2041)
!2098 = !DILocation(line: 810, column: 7, scope: !2041)
!2099 = !DILocation(line: 811, column: 69, scope: !2041)
!2100 = !DILocation(line: 812, column: 53, scope: !2041)
!2101 = !DILocation(line: 813, column: 49, scope: !2041)
!2102 = !DILocation(line: 814, column: 49, scope: !2041)
!2103 = !DILocation(line: 811, column: 20, scope: !2041)
!2104 = !DILocation(line: 814, column: 62, scope: !2041)
!2105 = !DILocation(line: 811, column: 10, scope: !2041)
!2106 = !DILocation(line: 220, column: 20, scope: !2073, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 815, column: 15, scope: !2041)
!2108 = !DILocation(line: 222, column: 10, scope: !2073, inlinedAt: !2107)
!2109 = !DILocation(line: 815, column: 9, scope: !2041)
!2110 = !DILocation(line: 816, column: 60, scope: !2041)
!2111 = !DILocation(line: 818, column: 32, scope: !2041)
!2112 = !DILocation(line: 818, column: 47, scope: !2041)
!2113 = !DILocation(line: 816, column: 3, scope: !2041)
!2114 = !DILocation(line: 819, column: 9, scope: !2041)
!2115 = !DILocation(line: 820, column: 7, scope: !2041)
!2116 = !DILocation(line: 821, column: 11, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2041, file: !145, line: 820, column: 7)
!2118 = !DILocation(line: 821, column: 5, scope: !2117)
!2119 = !DILocation(line: 822, column: 3, scope: !2041)
!2120 = distinct !DISubprogram(name: "quotearg_free", scope: !145, file: !145, line: 840, type: !903, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2121)
!2121 = !{!2122, !2123}
!2122 = !DILocalVariable(name: "sv", scope: !2120, file: !145, line: 842, type: !169)
!2123 = !DILocalVariable(name: "i", scope: !2120, file: !145, line: 843, type: !86)
!2124 = !DILocation(line: 842, column: 24, scope: !2120)
!2125 = !DILocation(line: 842, column: 19, scope: !2120)
!2126 = !DILocation(line: 843, column: 7, scope: !2120)
!2127 = !DILocation(line: 844, column: 19, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !145, line: 844, column: 3)
!2129 = distinct !DILexicalBlock(scope: !2120, file: !145, line: 844, column: 3)
!2130 = !DILocation(line: 844, column: 17, scope: !2128)
!2131 = !DILocation(line: 844, column: 3, scope: !2129)
!2132 = !DILocation(line: 845, column: 17, scope: !2128)
!2133 = !{!2134, !610, i64 8}
!2134 = !{!"slotvec", !811, i64 0, !610, i64 8}
!2135 = !DILocation(line: 845, column: 5, scope: !2128)
!2136 = !DILocation(line: 844, column: 28, scope: !2128)
!2137 = distinct !{!2137, !2131, !2138}
!2138 = !DILocation(line: 845, column: 20, scope: !2129)
!2139 = !DILocation(line: 846, column: 13, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2120, file: !145, line: 846, column: 7)
!2141 = !DILocation(line: 846, column: 17, scope: !2140)
!2142 = !DILocation(line: 846, column: 7, scope: !2120)
!2143 = !DILocation(line: 848, column: 7, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !145, line: 847, column: 5)
!2145 = !DILocation(line: 849, column: 21, scope: !2144)
!2146 = !{!2134, !811, i64 0}
!2147 = !DILocation(line: 850, column: 20, scope: !2144)
!2148 = !DILocation(line: 851, column: 5, scope: !2144)
!2149 = !DILocation(line: 852, column: 10, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2120, file: !145, line: 852, column: 7)
!2151 = !DILocation(line: 852, column: 7, scope: !2120)
!2152 = !DILocation(line: 854, column: 13, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2150, file: !145, line: 853, column: 5)
!2154 = !DILocation(line: 854, column: 7, scope: !2153)
!2155 = !DILocation(line: 855, column: 15, scope: !2153)
!2156 = !DILocation(line: 856, column: 5, scope: !2153)
!2157 = !DILocation(line: 857, column: 10, scope: !2120)
!2158 = !DILocation(line: 858, column: 1, scope: !2120)
!2159 = distinct !DISubprogram(name: "quotearg_n", scope: !145, file: !145, line: 922, type: !2160, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!110, !86, !29}
!2162 = !{!2163, !2164}
!2163 = !DILocalVariable(name: "n", arg: 1, scope: !2159, file: !145, line: 922, type: !86)
!2164 = !DILocalVariable(name: "arg", arg: 2, scope: !2159, file: !145, line: 922, type: !29)
!2165 = !DILocation(line: 922, column: 17, scope: !2159)
!2166 = !DILocation(line: 922, column: 32, scope: !2159)
!2167 = !DILocation(line: 924, column: 10, scope: !2159)
!2168 = !DILocation(line: 924, column: 3, scope: !2159)
!2169 = distinct !DISubprogram(name: "quotearg_n_options", scope: !145, file: !145, line: 869, type: !2170, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!110, !86, !29, !140, !1156}
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179, !2182, !2184, !2185, !2186}
!2173 = !DILocalVariable(name: "n", arg: 1, scope: !2169, file: !145, line: 869, type: !86)
!2174 = !DILocalVariable(name: "arg", arg: 2, scope: !2169, file: !145, line: 869, type: !29)
!2175 = !DILocalVariable(name: "argsize", arg: 3, scope: !2169, file: !145, line: 869, type: !140)
!2176 = !DILocalVariable(name: "options", arg: 4, scope: !2169, file: !145, line: 870, type: !1156)
!2177 = !DILocalVariable(name: "e", scope: !2169, file: !145, line: 872, type: !86)
!2178 = !DILocalVariable(name: "sv", scope: !2169, file: !145, line: 874, type: !169)
!2179 = !DILocalVariable(name: "preallocated", scope: !2180, file: !145, line: 881, type: !37)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !145, line: 880, column: 5)
!2181 = distinct !DILexicalBlock(scope: !2169, file: !145, line: 879, column: 7)
!2182 = !DILocalVariable(name: "size", scope: !2183, file: !145, line: 894, type: !140)
!2183 = distinct !DILexicalBlock(scope: !2169, file: !145, line: 893, column: 3)
!2184 = !DILocalVariable(name: "val", scope: !2183, file: !145, line: 895, type: !110)
!2185 = !DILocalVariable(name: "flags", scope: !2183, file: !145, line: 897, type: !86)
!2186 = !DILocalVariable(name: "qsize", scope: !2183, file: !145, line: 898, type: !140)
!2187 = !DILocation(line: 869, column: 25, scope: !2169)
!2188 = !DILocation(line: 869, column: 40, scope: !2169)
!2189 = !DILocation(line: 869, column: 52, scope: !2169)
!2190 = !DILocation(line: 870, column: 51, scope: !2169)
!2191 = !DILocation(line: 872, column: 11, scope: !2169)
!2192 = !DILocation(line: 872, column: 7, scope: !2169)
!2193 = !DILocation(line: 874, column: 24, scope: !2169)
!2194 = !DILocation(line: 874, column: 19, scope: !2169)
!2195 = !DILocation(line: 876, column: 9, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2169, file: !145, line: 876, column: 7)
!2197 = !DILocation(line: 876, column: 7, scope: !2169)
!2198 = !DILocation(line: 877, column: 5, scope: !2196)
!2199 = !DILocation(line: 879, column: 7, scope: !2181)
!2200 = !DILocation(line: 879, column: 14, scope: !2181)
!2201 = !DILocation(line: 879, column: 7, scope: !2169)
!2202 = !DILocation(line: 881, column: 31, scope: !2180)
!2203 = !DILocation(line: 883, column: 67, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2180, file: !145, line: 883, column: 11)
!2205 = !DILocation(line: 883, column: 11, scope: !2180)
!2206 = !DILocation(line: 884, column: 9, scope: !2204)
!2207 = !DILocation(line: 886, column: 32, scope: !2180)
!2208 = !DILocation(line: 886, column: 61, scope: !2180)
!2209 = !DILocation(line: 886, column: 58, scope: !2180)
!2210 = !DILocation(line: 886, column: 66, scope: !2180)
!2211 = !DILocation(line: 886, column: 22, scope: !2180)
!2212 = !DILocation(line: 886, column: 15, scope: !2180)
!2213 = !DILocation(line: 887, column: 11, scope: !2180)
!2214 = !DILocation(line: 888, column: 15, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2180, file: !145, line: 887, column: 11)
!2216 = !{i64 0, i64 8, !810, i64 8, i64 8, !609}
!2217 = !DILocation(line: 888, column: 9, scope: !2215)
!2218 = !DILocation(line: 889, column: 20, scope: !2180)
!2219 = !DILocation(line: 889, column: 18, scope: !2180)
!2220 = !DILocation(line: 889, column: 7, scope: !2180)
!2221 = !DILocation(line: 889, column: 38, scope: !2180)
!2222 = !DILocation(line: 889, column: 31, scope: !2180)
!2223 = !DILocation(line: 889, column: 48, scope: !2180)
!2224 = !DILocation(line: 890, column: 14, scope: !2180)
!2225 = !DILocation(line: 891, column: 5, scope: !2180)
!2226 = !DILocation(line: 894, column: 19, scope: !2183)
!2227 = !DILocation(line: 894, column: 25, scope: !2183)
!2228 = !DILocation(line: 894, column: 12, scope: !2183)
!2229 = !DILocation(line: 895, column: 23, scope: !2183)
!2230 = !DILocation(line: 895, column: 11, scope: !2183)
!2231 = !DILocation(line: 897, column: 26, scope: !2183)
!2232 = !DILocation(line: 897, column: 32, scope: !2183)
!2233 = !DILocation(line: 897, column: 9, scope: !2183)
!2234 = !DILocation(line: 899, column: 55, scope: !2183)
!2235 = !DILocation(line: 900, column: 46, scope: !2183)
!2236 = !DILocation(line: 901, column: 55, scope: !2183)
!2237 = !DILocation(line: 902, column: 55, scope: !2183)
!2238 = !DILocation(line: 898, column: 20, scope: !2183)
!2239 = !DILocation(line: 898, column: 12, scope: !2183)
!2240 = !DILocation(line: 904, column: 14, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2183, file: !145, line: 904, column: 9)
!2242 = !DILocation(line: 904, column: 9, scope: !2183)
!2243 = !DILocation(line: 906, column: 35, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2241, file: !145, line: 905, column: 7)
!2245 = !DILocation(line: 906, column: 20, scope: !2244)
!2246 = !DILocation(line: 907, column: 17, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2244, file: !145, line: 907, column: 13)
!2248 = !DILocation(line: 907, column: 13, scope: !2244)
!2249 = !DILocation(line: 908, column: 11, scope: !2247)
!2250 = !DILocation(line: 220, column: 20, scope: !2073, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 909, column: 27, scope: !2244)
!2252 = !DILocation(line: 222, column: 10, scope: !2073, inlinedAt: !2251)
!2253 = !DILocation(line: 909, column: 19, scope: !2244)
!2254 = !DILocation(line: 910, column: 69, scope: !2244)
!2255 = !DILocation(line: 912, column: 44, scope: !2244)
!2256 = !DILocation(line: 913, column: 44, scope: !2244)
!2257 = !DILocation(line: 910, column: 9, scope: !2244)
!2258 = !DILocation(line: 914, column: 7, scope: !2244)
!2259 = !DILocation(line: 916, column: 11, scope: !2183)
!2260 = !DILocation(line: 917, column: 5, scope: !2183)
!2261 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !145, file: !145, line: 928, type: !2262, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!110, !86, !29, !140}
!2264 = !{!2265, !2266, !2267}
!2265 = !DILocalVariable(name: "n", arg: 1, scope: !2261, file: !145, line: 928, type: !86)
!2266 = !DILocalVariable(name: "arg", arg: 2, scope: !2261, file: !145, line: 928, type: !29)
!2267 = !DILocalVariable(name: "argsize", arg: 3, scope: !2261, file: !145, line: 928, type: !140)
!2268 = !DILocation(line: 928, column: 21, scope: !2261)
!2269 = !DILocation(line: 928, column: 36, scope: !2261)
!2270 = !DILocation(line: 928, column: 48, scope: !2261)
!2271 = !DILocation(line: 930, column: 10, scope: !2261)
!2272 = !DILocation(line: 930, column: 3, scope: !2261)
!2273 = distinct !DISubprogram(name: "quotearg", scope: !145, file: !145, line: 934, type: !2274, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!110, !29}
!2276 = !{!2277}
!2277 = !DILocalVariable(name: "arg", arg: 1, scope: !2273, file: !145, line: 934, type: !29)
!2278 = !DILocation(line: 934, column: 23, scope: !2273)
!2279 = !DILocation(line: 922, column: 17, scope: !2159, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 936, column: 10, scope: !2273)
!2281 = !DILocation(line: 922, column: 32, scope: !2159, inlinedAt: !2280)
!2282 = !DILocation(line: 924, column: 10, scope: !2159, inlinedAt: !2280)
!2283 = !DILocation(line: 936, column: 3, scope: !2273)
!2284 = distinct !DISubprogram(name: "quotearg_mem", scope: !145, file: !145, line: 940, type: !2285, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!110, !29, !140}
!2287 = !{!2288, !2289}
!2288 = !DILocalVariable(name: "arg", arg: 1, scope: !2284, file: !145, line: 940, type: !29)
!2289 = !DILocalVariable(name: "argsize", arg: 2, scope: !2284, file: !145, line: 940, type: !140)
!2290 = !DILocation(line: 940, column: 27, scope: !2284)
!2291 = !DILocation(line: 940, column: 39, scope: !2284)
!2292 = !DILocation(line: 928, column: 21, scope: !2261, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 942, column: 10, scope: !2284)
!2294 = !DILocation(line: 928, column: 36, scope: !2261, inlinedAt: !2293)
!2295 = !DILocation(line: 928, column: 48, scope: !2261, inlinedAt: !2293)
!2296 = !DILocation(line: 930, column: 10, scope: !2261, inlinedAt: !2293)
!2297 = !DILocation(line: 942, column: 3, scope: !2284)
!2298 = distinct !DISubprogram(name: "quotearg_n_style", scope: !145, file: !145, line: 946, type: !2299, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!110, !86, !5, !29}
!2301 = !{!2302, !2303, !2304, !2305}
!2302 = !DILocalVariable(name: "n", arg: 1, scope: !2298, file: !145, line: 946, type: !86)
!2303 = !DILocalVariable(name: "s", arg: 2, scope: !2298, file: !145, line: 946, type: !5)
!2304 = !DILocalVariable(name: "arg", arg: 3, scope: !2298, file: !145, line: 946, type: !29)
!2305 = !DILocalVariable(name: "o", scope: !2298, file: !145, line: 948, type: !1157)
!2306 = !DILocalVariable(name: "o", scope: !2307, file: !145, line: 187, type: !152)
!2307 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !145, file: !145, line: 185, type: !2308, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!152, !5}
!2310 = !{!2311, !2306}
!2311 = !DILocalVariable(name: "style", arg: 1, scope: !2307, file: !145, line: 185, type: !5)
!2312 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2313 = !DILocation(line: 187, column: 26, scope: !2307, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 948, column: 36, scope: !2298)
!2315 = !DILocation(line: 946, column: 23, scope: !2298)
!2316 = !DILocation(line: 946, column: 45, scope: !2298)
!2317 = !DILocation(line: 946, column: 60, scope: !2298)
!2318 = !DILocation(line: 948, column: 3, scope: !2298)
!2319 = !DILocation(line: 948, column: 32, scope: !2298)
!2320 = !DILocation(line: 185, column: 48, scope: !2307, inlinedAt: !2314)
!2321 = !DILocation(line: 187, column: 3, scope: !2307, inlinedAt: !2314)
!2322 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2323 = !DILocation(line: 188, column: 13, scope: !2324, inlinedAt: !2314)
!2324 = distinct !DILexicalBlock(scope: !2307, file: !145, line: 188, column: 7)
!2325 = !DILocation(line: 188, column: 7, scope: !2307, inlinedAt: !2314)
!2326 = !DILocation(line: 189, column: 5, scope: !2324, inlinedAt: !2314)
!2327 = !{!2328}
!2328 = distinct !{!2328, !2329, !"quoting_options_from_style: argument 0"}
!2329 = distinct !{!2329, !"quoting_options_from_style"}
!2330 = !DILocation(line: 191, column: 10, scope: !2307, inlinedAt: !2314)
!2331 = !DILocation(line: 192, column: 1, scope: !2307, inlinedAt: !2314)
!2332 = !DILocation(line: 949, column: 10, scope: !2298)
!2333 = !DILocation(line: 950, column: 1, scope: !2298)
!2334 = !DILocation(line: 949, column: 3, scope: !2298)
!2335 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !145, file: !145, line: 953, type: !2336, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!110, !86, !5, !29, !140}
!2338 = !{!2339, !2340, !2341, !2342, !2343}
!2339 = !DILocalVariable(name: "n", arg: 1, scope: !2335, file: !145, line: 953, type: !86)
!2340 = !DILocalVariable(name: "s", arg: 2, scope: !2335, file: !145, line: 953, type: !5)
!2341 = !DILocalVariable(name: "arg", arg: 3, scope: !2335, file: !145, line: 954, type: !29)
!2342 = !DILocalVariable(name: "argsize", arg: 4, scope: !2335, file: !145, line: 954, type: !140)
!2343 = !DILocalVariable(name: "o", scope: !2335, file: !145, line: 956, type: !1157)
!2344 = !DILocation(line: 187, column: 26, scope: !2307, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 956, column: 36, scope: !2335)
!2346 = !DILocation(line: 953, column: 27, scope: !2335)
!2347 = !DILocation(line: 953, column: 49, scope: !2335)
!2348 = !DILocation(line: 954, column: 35, scope: !2335)
!2349 = !DILocation(line: 954, column: 47, scope: !2335)
!2350 = !DILocation(line: 956, column: 3, scope: !2335)
!2351 = !DILocation(line: 956, column: 32, scope: !2335)
!2352 = !DILocation(line: 185, column: 48, scope: !2307, inlinedAt: !2345)
!2353 = !DILocation(line: 187, column: 3, scope: !2307, inlinedAt: !2345)
!2354 = !DILocation(line: 188, column: 13, scope: !2324, inlinedAt: !2345)
!2355 = !DILocation(line: 188, column: 7, scope: !2307, inlinedAt: !2345)
!2356 = !DILocation(line: 189, column: 5, scope: !2324, inlinedAt: !2345)
!2357 = !{!2358}
!2358 = distinct !{!2358, !2359, !"quoting_options_from_style: argument 0"}
!2359 = distinct !{!2359, !"quoting_options_from_style"}
!2360 = !DILocation(line: 191, column: 10, scope: !2307, inlinedAt: !2345)
!2361 = !DILocation(line: 192, column: 1, scope: !2307, inlinedAt: !2345)
!2362 = !DILocation(line: 957, column: 10, scope: !2335)
!2363 = !DILocation(line: 958, column: 1, scope: !2335)
!2364 = !DILocation(line: 957, column: 3, scope: !2335)
!2365 = distinct !DISubprogram(name: "quotearg_style", scope: !145, file: !145, line: 961, type: !2366, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!110, !5, !29}
!2368 = !{!2369, !2370}
!2369 = !DILocalVariable(name: "s", arg: 1, scope: !2365, file: !145, line: 961, type: !5)
!2370 = !DILocalVariable(name: "arg", arg: 2, scope: !2365, file: !145, line: 961, type: !29)
!2371 = !DILocation(line: 187, column: 26, scope: !2307, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 948, column: 36, scope: !2298, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 963, column: 10, scope: !2365)
!2374 = !DILocation(line: 961, column: 36, scope: !2365)
!2375 = !DILocation(line: 961, column: 51, scope: !2365)
!2376 = !DILocation(line: 946, column: 23, scope: !2298, inlinedAt: !2373)
!2377 = !DILocation(line: 946, column: 45, scope: !2298, inlinedAt: !2373)
!2378 = !DILocation(line: 946, column: 60, scope: !2298, inlinedAt: !2373)
!2379 = !DILocation(line: 948, column: 3, scope: !2298, inlinedAt: !2373)
!2380 = !DILocation(line: 948, column: 32, scope: !2298, inlinedAt: !2373)
!2381 = !DILocation(line: 185, column: 48, scope: !2307, inlinedAt: !2372)
!2382 = !DILocation(line: 187, column: 3, scope: !2307, inlinedAt: !2372)
!2383 = !DILocation(line: 188, column: 13, scope: !2324, inlinedAt: !2372)
!2384 = !DILocation(line: 188, column: 7, scope: !2307, inlinedAt: !2372)
!2385 = !DILocation(line: 189, column: 5, scope: !2324, inlinedAt: !2372)
!2386 = !{!2387}
!2387 = distinct !{!2387, !2388, !"quoting_options_from_style: argument 0"}
!2388 = distinct !{!2388, !"quoting_options_from_style"}
!2389 = !DILocation(line: 191, column: 10, scope: !2307, inlinedAt: !2372)
!2390 = !DILocation(line: 192, column: 1, scope: !2307, inlinedAt: !2372)
!2391 = !DILocation(line: 949, column: 10, scope: !2298, inlinedAt: !2373)
!2392 = !DILocation(line: 950, column: 1, scope: !2298, inlinedAt: !2373)
!2393 = !DILocation(line: 963, column: 3, scope: !2365)
!2394 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !145, file: !145, line: 967, type: !2395, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!110, !5, !29, !140}
!2397 = !{!2398, !2399, !2400}
!2398 = !DILocalVariable(name: "s", arg: 1, scope: !2394, file: !145, line: 967, type: !5)
!2399 = !DILocalVariable(name: "arg", arg: 2, scope: !2394, file: !145, line: 967, type: !29)
!2400 = !DILocalVariable(name: "argsize", arg: 3, scope: !2394, file: !145, line: 967, type: !140)
!2401 = !DILocation(line: 187, column: 26, scope: !2307, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 956, column: 36, scope: !2335, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 969, column: 10, scope: !2394)
!2404 = !DILocation(line: 967, column: 40, scope: !2394)
!2405 = !DILocation(line: 967, column: 55, scope: !2394)
!2406 = !DILocation(line: 967, column: 67, scope: !2394)
!2407 = !DILocation(line: 953, column: 27, scope: !2335, inlinedAt: !2403)
!2408 = !DILocation(line: 953, column: 49, scope: !2335, inlinedAt: !2403)
!2409 = !DILocation(line: 954, column: 35, scope: !2335, inlinedAt: !2403)
!2410 = !DILocation(line: 954, column: 47, scope: !2335, inlinedAt: !2403)
!2411 = !DILocation(line: 956, column: 3, scope: !2335, inlinedAt: !2403)
!2412 = !DILocation(line: 956, column: 32, scope: !2335, inlinedAt: !2403)
!2413 = !DILocation(line: 185, column: 48, scope: !2307, inlinedAt: !2402)
!2414 = !DILocation(line: 187, column: 3, scope: !2307, inlinedAt: !2402)
!2415 = !DILocation(line: 188, column: 13, scope: !2324, inlinedAt: !2402)
!2416 = !DILocation(line: 188, column: 7, scope: !2307, inlinedAt: !2402)
!2417 = !DILocation(line: 189, column: 5, scope: !2324, inlinedAt: !2402)
!2418 = !{!2419}
!2419 = distinct !{!2419, !2420, !"quoting_options_from_style: argument 0"}
!2420 = distinct !{!2420, !"quoting_options_from_style"}
!2421 = !DILocation(line: 191, column: 10, scope: !2307, inlinedAt: !2402)
!2422 = !DILocation(line: 192, column: 1, scope: !2307, inlinedAt: !2402)
!2423 = !DILocation(line: 957, column: 10, scope: !2335, inlinedAt: !2403)
!2424 = !DILocation(line: 958, column: 1, scope: !2335, inlinedAt: !2403)
!2425 = !DILocation(line: 969, column: 3, scope: !2394)
!2426 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !145, file: !145, line: 973, type: !2427, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!110, !29, !140, !31}
!2429 = !{!2430, !2431, !2432, !2433}
!2430 = !DILocalVariable(name: "arg", arg: 1, scope: !2426, file: !145, line: 973, type: !29)
!2431 = !DILocalVariable(name: "argsize", arg: 2, scope: !2426, file: !145, line: 973, type: !140)
!2432 = !DILocalVariable(name: "ch", arg: 3, scope: !2426, file: !145, line: 973, type: !31)
!2433 = !DILocalVariable(name: "options", scope: !2426, file: !145, line: 975, type: !152)
!2434 = !DILocation(line: 973, column: 32, scope: !2426)
!2435 = !DILocation(line: 973, column: 44, scope: !2426)
!2436 = !DILocation(line: 973, column: 58, scope: !2426)
!2437 = !DILocation(line: 975, column: 3, scope: !2426)
!2438 = !DILocation(line: 976, column: 13, scope: !2426)
!2439 = !{i64 0, i64 4, !807, i64 4, i64 4, !662, i64 8, i64 32, !807, i64 40, i64 8, !609, i64 48, i64 8, !609}
!2440 = !DILocation(line: 975, column: 26, scope: !2426)
!2441 = !DILocation(line: 144, column: 43, scope: !1178, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 977, column: 3, scope: !2426)
!2443 = !DILocation(line: 144, column: 51, scope: !1178, inlinedAt: !2442)
!2444 = !DILocation(line: 144, column: 58, scope: !1178, inlinedAt: !2442)
!2445 = !DILocation(line: 146, column: 17, scope: !1178, inlinedAt: !2442)
!2446 = !DILocation(line: 148, column: 62, scope: !1178, inlinedAt: !2442)
!2447 = !DILocation(line: 148, column: 57, scope: !1178, inlinedAt: !2442)
!2448 = !DILocation(line: 147, column: 17, scope: !1178, inlinedAt: !2442)
!2449 = !DILocation(line: 149, column: 18, scope: !1178, inlinedAt: !2442)
!2450 = !DILocation(line: 149, column: 15, scope: !1178, inlinedAt: !2442)
!2451 = !DILocation(line: 149, column: 7, scope: !1178, inlinedAt: !2442)
!2452 = !DILocation(line: 150, column: 12, scope: !1178, inlinedAt: !2442)
!2453 = !DILocation(line: 150, column: 15, scope: !1178, inlinedAt: !2442)
!2454 = !DILocation(line: 150, column: 25, scope: !1178, inlinedAt: !2442)
!2455 = !DILocation(line: 150, column: 7, scope: !1178, inlinedAt: !2442)
!2456 = !DILocation(line: 151, column: 18, scope: !1178, inlinedAt: !2442)
!2457 = !DILocation(line: 151, column: 23, scope: !1178, inlinedAt: !2442)
!2458 = !DILocation(line: 151, column: 6, scope: !1178, inlinedAt: !2442)
!2459 = !DILocation(line: 978, column: 10, scope: !2426)
!2460 = !DILocation(line: 979, column: 1, scope: !2426)
!2461 = !DILocation(line: 978, column: 3, scope: !2426)
!2462 = distinct !DISubprogram(name: "quotearg_char", scope: !145, file: !145, line: 982, type: !2463, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!110, !29, !31}
!2465 = !{!2466, !2467}
!2466 = !DILocalVariable(name: "arg", arg: 1, scope: !2462, file: !145, line: 982, type: !29)
!2467 = !DILocalVariable(name: "ch", arg: 2, scope: !2462, file: !145, line: 982, type: !31)
!2468 = !DILocation(line: 982, column: 28, scope: !2462)
!2469 = !DILocation(line: 982, column: 38, scope: !2462)
!2470 = !DILocation(line: 973, column: 32, scope: !2426, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 984, column: 10, scope: !2462)
!2472 = !DILocation(line: 973, column: 44, scope: !2426, inlinedAt: !2471)
!2473 = !DILocation(line: 973, column: 58, scope: !2426, inlinedAt: !2471)
!2474 = !DILocation(line: 975, column: 3, scope: !2426, inlinedAt: !2471)
!2475 = !DILocation(line: 976, column: 13, scope: !2426, inlinedAt: !2471)
!2476 = !DILocation(line: 975, column: 26, scope: !2426, inlinedAt: !2471)
!2477 = !DILocation(line: 144, column: 43, scope: !1178, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 977, column: 3, scope: !2426, inlinedAt: !2471)
!2479 = !DILocation(line: 144, column: 51, scope: !1178, inlinedAt: !2478)
!2480 = !DILocation(line: 144, column: 58, scope: !1178, inlinedAt: !2478)
!2481 = !DILocation(line: 146, column: 17, scope: !1178, inlinedAt: !2478)
!2482 = !DILocation(line: 148, column: 62, scope: !1178, inlinedAt: !2478)
!2483 = !DILocation(line: 148, column: 57, scope: !1178, inlinedAt: !2478)
!2484 = !DILocation(line: 147, column: 17, scope: !1178, inlinedAt: !2478)
!2485 = !DILocation(line: 149, column: 18, scope: !1178, inlinedAt: !2478)
!2486 = !DILocation(line: 149, column: 15, scope: !1178, inlinedAt: !2478)
!2487 = !DILocation(line: 149, column: 7, scope: !1178, inlinedAt: !2478)
!2488 = !DILocation(line: 150, column: 12, scope: !1178, inlinedAt: !2478)
!2489 = !DILocation(line: 150, column: 15, scope: !1178, inlinedAt: !2478)
!2490 = !DILocation(line: 150, column: 25, scope: !1178, inlinedAt: !2478)
!2491 = !DILocation(line: 150, column: 7, scope: !1178, inlinedAt: !2478)
!2492 = !DILocation(line: 151, column: 18, scope: !1178, inlinedAt: !2478)
!2493 = !DILocation(line: 151, column: 23, scope: !1178, inlinedAt: !2478)
!2494 = !DILocation(line: 151, column: 6, scope: !1178, inlinedAt: !2478)
!2495 = !DILocation(line: 978, column: 10, scope: !2426, inlinedAt: !2471)
!2496 = !DILocation(line: 979, column: 1, scope: !2426, inlinedAt: !2471)
!2497 = !DILocation(line: 984, column: 3, scope: !2462)
!2498 = distinct !DISubprogram(name: "quotearg_colon", scope: !145, file: !145, line: 988, type: !2274, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2499)
!2499 = !{!2500}
!2500 = !DILocalVariable(name: "arg", arg: 1, scope: !2498, file: !145, line: 988, type: !29)
!2501 = !DILocation(line: 988, column: 29, scope: !2498)
!2502 = !DILocation(line: 982, column: 28, scope: !2462, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 990, column: 10, scope: !2498)
!2504 = !DILocation(line: 982, column: 38, scope: !2462, inlinedAt: !2503)
!2505 = !DILocation(line: 973, column: 32, scope: !2426, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 984, column: 10, scope: !2462, inlinedAt: !2503)
!2507 = !DILocation(line: 973, column: 44, scope: !2426, inlinedAt: !2506)
!2508 = !DILocation(line: 973, column: 58, scope: !2426, inlinedAt: !2506)
!2509 = !DILocation(line: 975, column: 3, scope: !2426, inlinedAt: !2506)
!2510 = !DILocation(line: 976, column: 13, scope: !2426, inlinedAt: !2506)
!2511 = !DILocation(line: 975, column: 26, scope: !2426, inlinedAt: !2506)
!2512 = !DILocation(line: 144, column: 43, scope: !1178, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 977, column: 3, scope: !2426, inlinedAt: !2506)
!2514 = !DILocation(line: 144, column: 51, scope: !1178, inlinedAt: !2513)
!2515 = !DILocation(line: 144, column: 58, scope: !1178, inlinedAt: !2513)
!2516 = !DILocation(line: 146, column: 17, scope: !1178, inlinedAt: !2513)
!2517 = !DILocation(line: 148, column: 57, scope: !1178, inlinedAt: !2513)
!2518 = !DILocation(line: 147, column: 17, scope: !1178, inlinedAt: !2513)
!2519 = !DILocation(line: 149, column: 7, scope: !1178, inlinedAt: !2513)
!2520 = !DILocation(line: 150, column: 12, scope: !1178, inlinedAt: !2513)
!2521 = !DILocation(line: 151, column: 6, scope: !1178, inlinedAt: !2513)
!2522 = !DILocation(line: 978, column: 10, scope: !2426, inlinedAt: !2506)
!2523 = !DILocation(line: 979, column: 1, scope: !2426, inlinedAt: !2506)
!2524 = !DILocation(line: 990, column: 3, scope: !2498)
!2525 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !145, file: !145, line: 994, type: !2285, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2526)
!2526 = !{!2527, !2528}
!2527 = !DILocalVariable(name: "arg", arg: 1, scope: !2525, file: !145, line: 994, type: !29)
!2528 = !DILocalVariable(name: "argsize", arg: 2, scope: !2525, file: !145, line: 994, type: !140)
!2529 = !DILocation(line: 994, column: 33, scope: !2525)
!2530 = !DILocation(line: 994, column: 45, scope: !2525)
!2531 = !DILocation(line: 973, column: 32, scope: !2426, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 996, column: 10, scope: !2525)
!2533 = !DILocation(line: 973, column: 44, scope: !2426, inlinedAt: !2532)
!2534 = !DILocation(line: 973, column: 58, scope: !2426, inlinedAt: !2532)
!2535 = !DILocation(line: 975, column: 3, scope: !2426, inlinedAt: !2532)
!2536 = !DILocation(line: 976, column: 13, scope: !2426, inlinedAt: !2532)
!2537 = !DILocation(line: 975, column: 26, scope: !2426, inlinedAt: !2532)
!2538 = !DILocation(line: 144, column: 43, scope: !1178, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 977, column: 3, scope: !2426, inlinedAt: !2532)
!2540 = !DILocation(line: 144, column: 51, scope: !1178, inlinedAt: !2539)
!2541 = !DILocation(line: 144, column: 58, scope: !1178, inlinedAt: !2539)
!2542 = !DILocation(line: 146, column: 17, scope: !1178, inlinedAt: !2539)
!2543 = !DILocation(line: 148, column: 57, scope: !1178, inlinedAt: !2539)
!2544 = !DILocation(line: 147, column: 17, scope: !1178, inlinedAt: !2539)
!2545 = !DILocation(line: 149, column: 7, scope: !1178, inlinedAt: !2539)
!2546 = !DILocation(line: 150, column: 12, scope: !1178, inlinedAt: !2539)
!2547 = !DILocation(line: 151, column: 6, scope: !1178, inlinedAt: !2539)
!2548 = !DILocation(line: 978, column: 10, scope: !2426, inlinedAt: !2532)
!2549 = !DILocation(line: 979, column: 1, scope: !2426, inlinedAt: !2532)
!2550 = !DILocation(line: 996, column: 3, scope: !2525)
!2551 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !145, file: !145, line: 1000, type: !2299, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2552)
!2552 = !{!2553, !2554, !2555, !2556}
!2553 = !DILocalVariable(name: "n", arg: 1, scope: !2551, file: !145, line: 1000, type: !86)
!2554 = !DILocalVariable(name: "s", arg: 2, scope: !2551, file: !145, line: 1000, type: !5)
!2555 = !DILocalVariable(name: "arg", arg: 3, scope: !2551, file: !145, line: 1000, type: !29)
!2556 = !DILocalVariable(name: "options", scope: !2551, file: !145, line: 1002, type: !152)
!2557 = !DILocation(line: 187, column: 26, scope: !2307, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 1003, column: 13, scope: !2551)
!2559 = !DILocation(line: 1000, column: 29, scope: !2551)
!2560 = !DILocation(line: 1000, column: 51, scope: !2551)
!2561 = !DILocation(line: 1000, column: 66, scope: !2551)
!2562 = !DILocation(line: 1002, column: 3, scope: !2551)
!2563 = !DILocation(line: 185, column: 48, scope: !2307, inlinedAt: !2558)
!2564 = !DILocation(line: 187, column: 3, scope: !2307, inlinedAt: !2558)
!2565 = !DILocation(line: 188, column: 13, scope: !2324, inlinedAt: !2558)
!2566 = !DILocation(line: 188, column: 7, scope: !2307, inlinedAt: !2558)
!2567 = !DILocation(line: 189, column: 5, scope: !2324, inlinedAt: !2558)
!2568 = !{!2569}
!2569 = distinct !{!2569, !2570, !"quoting_options_from_style: argument 0"}
!2570 = distinct !{!2570, !"quoting_options_from_style"}
!2571 = !DILocation(line: 191, column: 10, scope: !2307, inlinedAt: !2558)
!2572 = !DILocation(line: 192, column: 1, scope: !2307, inlinedAt: !2558)
!2573 = !DILocation(line: 1003, column: 13, scope: !2551)
!2574 = !DILocation(line: 1002, column: 26, scope: !2551)
!2575 = !DILocation(line: 144, column: 43, scope: !1178, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 1004, column: 3, scope: !2551)
!2577 = !DILocation(line: 144, column: 51, scope: !1178, inlinedAt: !2576)
!2578 = !DILocation(line: 144, column: 58, scope: !1178, inlinedAt: !2576)
!2579 = !DILocation(line: 146, column: 17, scope: !1178, inlinedAt: !2576)
!2580 = !DILocation(line: 148, column: 57, scope: !1178, inlinedAt: !2576)
!2581 = !DILocation(line: 147, column: 17, scope: !1178, inlinedAt: !2576)
!2582 = !DILocation(line: 149, column: 7, scope: !1178, inlinedAt: !2576)
!2583 = !DILocation(line: 150, column: 12, scope: !1178, inlinedAt: !2576)
!2584 = !DILocation(line: 151, column: 6, scope: !1178, inlinedAt: !2576)
!2585 = !DILocation(line: 1005, column: 10, scope: !2551)
!2586 = !DILocation(line: 1006, column: 1, scope: !2551)
!2587 = !DILocation(line: 1005, column: 3, scope: !2551)
!2588 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !145, file: !145, line: 1009, type: !2589, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!110, !86, !29, !29, !29}
!2591 = !{!2592, !2593, !2594, !2595}
!2592 = !DILocalVariable(name: "n", arg: 1, scope: !2588, file: !145, line: 1009, type: !86)
!2593 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2588, file: !145, line: 1009, type: !29)
!2594 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2588, file: !145, line: 1010, type: !29)
!2595 = !DILocalVariable(name: "arg", arg: 4, scope: !2588, file: !145, line: 1010, type: !29)
!2596 = !DILocation(line: 1009, column: 24, scope: !2588)
!2597 = !DILocation(line: 1009, column: 39, scope: !2588)
!2598 = !DILocation(line: 1010, column: 32, scope: !2588)
!2599 = !DILocation(line: 1010, column: 57, scope: !2588)
!2600 = !DILocalVariable(name: "n", arg: 1, scope: !2601, file: !145, line: 1017, type: !86)
!2601 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !145, file: !145, line: 1017, type: !2602, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!110, !86, !29, !29, !29, !140}
!2604 = !{!2600, !2605, !2606, !2607, !2608, !2609}
!2605 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2601, file: !145, line: 1017, type: !29)
!2606 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2601, file: !145, line: 1018, type: !29)
!2607 = !DILocalVariable(name: "arg", arg: 4, scope: !2601, file: !145, line: 1019, type: !29)
!2608 = !DILocalVariable(name: "argsize", arg: 5, scope: !2601, file: !145, line: 1019, type: !140)
!2609 = !DILocalVariable(name: "o", scope: !2601, file: !145, line: 1021, type: !152)
!2610 = !DILocation(line: 1017, column: 28, scope: !2601, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1012, column: 10, scope: !2588)
!2612 = !DILocation(line: 1017, column: 43, scope: !2601, inlinedAt: !2611)
!2613 = !DILocation(line: 1018, column: 36, scope: !2601, inlinedAt: !2611)
!2614 = !DILocation(line: 1019, column: 36, scope: !2601, inlinedAt: !2611)
!2615 = !DILocation(line: 1019, column: 48, scope: !2601, inlinedAt: !2611)
!2616 = !DILocation(line: 1021, column: 3, scope: !2601, inlinedAt: !2611)
!2617 = !DILocation(line: 1021, column: 30, scope: !2601, inlinedAt: !2611)
!2618 = !DILocation(line: 1021, column: 26, scope: !2601, inlinedAt: !2611)
!2619 = !DILocation(line: 171, column: 45, scope: !1227, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 1022, column: 3, scope: !2601, inlinedAt: !2611)
!2621 = !DILocation(line: 172, column: 33, scope: !1227, inlinedAt: !2620)
!2622 = !DILocation(line: 172, column: 57, scope: !1227, inlinedAt: !2620)
!2623 = !DILocation(line: 176, column: 6, scope: !1227, inlinedAt: !2620)
!2624 = !DILocation(line: 176, column: 12, scope: !1227, inlinedAt: !2620)
!2625 = !DILocation(line: 177, column: 8, scope: !1243, inlinedAt: !2620)
!2626 = !DILocation(line: 177, column: 23, scope: !1243, inlinedAt: !2620)
!2627 = !DILocation(line: 177, column: 19, scope: !1243, inlinedAt: !2620)
!2628 = !DILocation(line: 178, column: 5, scope: !1243, inlinedAt: !2620)
!2629 = !DILocation(line: 179, column: 6, scope: !1227, inlinedAt: !2620)
!2630 = !DILocation(line: 179, column: 17, scope: !1227, inlinedAt: !2620)
!2631 = !DILocation(line: 180, column: 6, scope: !1227, inlinedAt: !2620)
!2632 = !DILocation(line: 180, column: 18, scope: !1227, inlinedAt: !2620)
!2633 = !DILocation(line: 1023, column: 10, scope: !2601, inlinedAt: !2611)
!2634 = !DILocation(line: 1024, column: 1, scope: !2601, inlinedAt: !2611)
!2635 = !DILocation(line: 1012, column: 3, scope: !2588)
!2636 = !DILocation(line: 1017, column: 28, scope: !2601)
!2637 = !DILocation(line: 1017, column: 43, scope: !2601)
!2638 = !DILocation(line: 1018, column: 36, scope: !2601)
!2639 = !DILocation(line: 1019, column: 36, scope: !2601)
!2640 = !DILocation(line: 1019, column: 48, scope: !2601)
!2641 = !DILocation(line: 1021, column: 3, scope: !2601)
!2642 = !DILocation(line: 1021, column: 30, scope: !2601)
!2643 = !DILocation(line: 1021, column: 26, scope: !2601)
!2644 = !DILocation(line: 171, column: 45, scope: !1227, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 1022, column: 3, scope: !2601)
!2646 = !DILocation(line: 172, column: 33, scope: !1227, inlinedAt: !2645)
!2647 = !DILocation(line: 172, column: 57, scope: !1227, inlinedAt: !2645)
!2648 = !DILocation(line: 176, column: 6, scope: !1227, inlinedAt: !2645)
!2649 = !DILocation(line: 176, column: 12, scope: !1227, inlinedAt: !2645)
!2650 = !DILocation(line: 177, column: 8, scope: !1243, inlinedAt: !2645)
!2651 = !DILocation(line: 177, column: 23, scope: !1243, inlinedAt: !2645)
!2652 = !DILocation(line: 177, column: 19, scope: !1243, inlinedAt: !2645)
!2653 = !DILocation(line: 178, column: 5, scope: !1243, inlinedAt: !2645)
!2654 = !DILocation(line: 179, column: 6, scope: !1227, inlinedAt: !2645)
!2655 = !DILocation(line: 179, column: 17, scope: !1227, inlinedAt: !2645)
!2656 = !DILocation(line: 180, column: 6, scope: !1227, inlinedAt: !2645)
!2657 = !DILocation(line: 180, column: 18, scope: !1227, inlinedAt: !2645)
!2658 = !DILocation(line: 1023, column: 10, scope: !2601)
!2659 = !DILocation(line: 1024, column: 1, scope: !2601)
!2660 = !DILocation(line: 1023, column: 3, scope: !2601)
!2661 = distinct !DISubprogram(name: "quotearg_custom", scope: !145, file: !145, line: 1027, type: !2662, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!110, !29, !29, !29}
!2664 = !{!2665, !2666, !2667}
!2665 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2661, file: !145, line: 1027, type: !29)
!2666 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2661, file: !145, line: 1027, type: !29)
!2667 = !DILocalVariable(name: "arg", arg: 3, scope: !2661, file: !145, line: 1028, type: !29)
!2668 = !DILocation(line: 1027, column: 30, scope: !2661)
!2669 = !DILocation(line: 1027, column: 54, scope: !2661)
!2670 = !DILocation(line: 1028, column: 30, scope: !2661)
!2671 = !DILocation(line: 1009, column: 24, scope: !2588, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1030, column: 10, scope: !2661)
!2673 = !DILocation(line: 1009, column: 39, scope: !2588, inlinedAt: !2672)
!2674 = !DILocation(line: 1010, column: 32, scope: !2588, inlinedAt: !2672)
!2675 = !DILocation(line: 1010, column: 57, scope: !2588, inlinedAt: !2672)
!2676 = !DILocation(line: 1017, column: 28, scope: !2601, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 1012, column: 10, scope: !2588, inlinedAt: !2672)
!2678 = !DILocation(line: 1017, column: 43, scope: !2601, inlinedAt: !2677)
!2679 = !DILocation(line: 1018, column: 36, scope: !2601, inlinedAt: !2677)
!2680 = !DILocation(line: 1019, column: 36, scope: !2601, inlinedAt: !2677)
!2681 = !DILocation(line: 1019, column: 48, scope: !2601, inlinedAt: !2677)
!2682 = !DILocation(line: 1021, column: 3, scope: !2601, inlinedAt: !2677)
!2683 = !DILocation(line: 1021, column: 30, scope: !2601, inlinedAt: !2677)
!2684 = !DILocation(line: 1021, column: 26, scope: !2601, inlinedAt: !2677)
!2685 = !DILocation(line: 171, column: 45, scope: !1227, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 1022, column: 3, scope: !2601, inlinedAt: !2677)
!2687 = !DILocation(line: 172, column: 33, scope: !1227, inlinedAt: !2686)
!2688 = !DILocation(line: 172, column: 57, scope: !1227, inlinedAt: !2686)
!2689 = !DILocation(line: 176, column: 6, scope: !1227, inlinedAt: !2686)
!2690 = !DILocation(line: 176, column: 12, scope: !1227, inlinedAt: !2686)
!2691 = !DILocation(line: 177, column: 8, scope: !1243, inlinedAt: !2686)
!2692 = !DILocation(line: 177, column: 23, scope: !1243, inlinedAt: !2686)
!2693 = !DILocation(line: 177, column: 19, scope: !1243, inlinedAt: !2686)
!2694 = !DILocation(line: 178, column: 5, scope: !1243, inlinedAt: !2686)
!2695 = !DILocation(line: 179, column: 6, scope: !1227, inlinedAt: !2686)
!2696 = !DILocation(line: 179, column: 17, scope: !1227, inlinedAt: !2686)
!2697 = !DILocation(line: 180, column: 6, scope: !1227, inlinedAt: !2686)
!2698 = !DILocation(line: 180, column: 18, scope: !1227, inlinedAt: !2686)
!2699 = !DILocation(line: 1023, column: 10, scope: !2601, inlinedAt: !2677)
!2700 = !DILocation(line: 1024, column: 1, scope: !2601, inlinedAt: !2677)
!2701 = !DILocation(line: 1030, column: 3, scope: !2661)
!2702 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !145, file: !145, line: 1034, type: !2703, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!110, !29, !29, !29, !140}
!2705 = !{!2706, !2707, !2708, !2709}
!2706 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2702, file: !145, line: 1034, type: !29)
!2707 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2702, file: !145, line: 1034, type: !29)
!2708 = !DILocalVariable(name: "arg", arg: 3, scope: !2702, file: !145, line: 1035, type: !29)
!2709 = !DILocalVariable(name: "argsize", arg: 4, scope: !2702, file: !145, line: 1035, type: !140)
!2710 = !DILocation(line: 1034, column: 34, scope: !2702)
!2711 = !DILocation(line: 1034, column: 58, scope: !2702)
!2712 = !DILocation(line: 1035, column: 34, scope: !2702)
!2713 = !DILocation(line: 1035, column: 46, scope: !2702)
!2714 = !DILocation(line: 1017, column: 28, scope: !2601, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 1037, column: 10, scope: !2702)
!2716 = !DILocation(line: 1017, column: 43, scope: !2601, inlinedAt: !2715)
!2717 = !DILocation(line: 1018, column: 36, scope: !2601, inlinedAt: !2715)
!2718 = !DILocation(line: 1019, column: 36, scope: !2601, inlinedAt: !2715)
!2719 = !DILocation(line: 1019, column: 48, scope: !2601, inlinedAt: !2715)
!2720 = !DILocation(line: 1021, column: 3, scope: !2601, inlinedAt: !2715)
!2721 = !DILocation(line: 1021, column: 30, scope: !2601, inlinedAt: !2715)
!2722 = !DILocation(line: 1021, column: 26, scope: !2601, inlinedAt: !2715)
!2723 = !DILocation(line: 171, column: 45, scope: !1227, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 1022, column: 3, scope: !2601, inlinedAt: !2715)
!2725 = !DILocation(line: 172, column: 33, scope: !1227, inlinedAt: !2724)
!2726 = !DILocation(line: 172, column: 57, scope: !1227, inlinedAt: !2724)
!2727 = !DILocation(line: 176, column: 6, scope: !1227, inlinedAt: !2724)
!2728 = !DILocation(line: 176, column: 12, scope: !1227, inlinedAt: !2724)
!2729 = !DILocation(line: 177, column: 8, scope: !1243, inlinedAt: !2724)
!2730 = !DILocation(line: 177, column: 23, scope: !1243, inlinedAt: !2724)
!2731 = !DILocation(line: 177, column: 19, scope: !1243, inlinedAt: !2724)
!2732 = !DILocation(line: 178, column: 5, scope: !1243, inlinedAt: !2724)
!2733 = !DILocation(line: 179, column: 6, scope: !1227, inlinedAt: !2724)
!2734 = !DILocation(line: 179, column: 17, scope: !1227, inlinedAt: !2724)
!2735 = !DILocation(line: 180, column: 6, scope: !1227, inlinedAt: !2724)
!2736 = !DILocation(line: 180, column: 18, scope: !1227, inlinedAt: !2724)
!2737 = !DILocation(line: 1023, column: 10, scope: !2601, inlinedAt: !2715)
!2738 = !DILocation(line: 1024, column: 1, scope: !2601, inlinedAt: !2715)
!2739 = !DILocation(line: 1037, column: 3, scope: !2702)
!2740 = distinct !DISubprogram(name: "quote_n_mem", scope: !145, file: !145, line: 1052, type: !2741, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!29, !86, !29, !140}
!2743 = !{!2744, !2745, !2746}
!2744 = !DILocalVariable(name: "n", arg: 1, scope: !2740, file: !145, line: 1052, type: !86)
!2745 = !DILocalVariable(name: "arg", arg: 2, scope: !2740, file: !145, line: 1052, type: !29)
!2746 = !DILocalVariable(name: "argsize", arg: 3, scope: !2740, file: !145, line: 1052, type: !140)
!2747 = !DILocation(line: 1052, column: 18, scope: !2740)
!2748 = !DILocation(line: 1052, column: 33, scope: !2740)
!2749 = !DILocation(line: 1052, column: 45, scope: !2740)
!2750 = !DILocation(line: 1054, column: 10, scope: !2740)
!2751 = !DILocation(line: 1054, column: 3, scope: !2740)
!2752 = distinct !DISubprogram(name: "quote_mem", scope: !145, file: !145, line: 1058, type: !2753, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!29, !29, !140}
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "arg", arg: 1, scope: !2752, file: !145, line: 1058, type: !29)
!2757 = !DILocalVariable(name: "argsize", arg: 2, scope: !2752, file: !145, line: 1058, type: !140)
!2758 = !DILocation(line: 1058, column: 24, scope: !2752)
!2759 = !DILocation(line: 1058, column: 36, scope: !2752)
!2760 = !DILocation(line: 1052, column: 18, scope: !2740, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 1060, column: 10, scope: !2752)
!2762 = !DILocation(line: 1052, column: 33, scope: !2740, inlinedAt: !2761)
!2763 = !DILocation(line: 1052, column: 45, scope: !2740, inlinedAt: !2761)
!2764 = !DILocation(line: 1054, column: 10, scope: !2740, inlinedAt: !2761)
!2765 = !DILocation(line: 1060, column: 3, scope: !2752)
!2766 = distinct !DISubprogram(name: "quote_n", scope: !145, file: !145, line: 1064, type: !2767, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!29, !86, !29}
!2769 = !{!2770, !2771}
!2770 = !DILocalVariable(name: "n", arg: 1, scope: !2766, file: !145, line: 1064, type: !86)
!2771 = !DILocalVariable(name: "arg", arg: 2, scope: !2766, file: !145, line: 1064, type: !29)
!2772 = !DILocation(line: 1064, column: 14, scope: !2766)
!2773 = !DILocation(line: 1064, column: 29, scope: !2766)
!2774 = !DILocation(line: 1052, column: 18, scope: !2740, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 1066, column: 10, scope: !2766)
!2776 = !DILocation(line: 1052, column: 33, scope: !2740, inlinedAt: !2775)
!2777 = !DILocation(line: 1052, column: 45, scope: !2740, inlinedAt: !2775)
!2778 = !DILocation(line: 1054, column: 10, scope: !2740, inlinedAt: !2775)
!2779 = !DILocation(line: 1066, column: 3, scope: !2766)
!2780 = distinct !DISubprogram(name: "quote", scope: !145, file: !145, line: 1070, type: !2781, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !115, variables: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!29, !29}
!2783 = !{!2784}
!2784 = !DILocalVariable(name: "arg", arg: 1, scope: !2780, file: !145, line: 1070, type: !29)
!2785 = !DILocation(line: 1070, column: 20, scope: !2780)
!2786 = !DILocation(line: 1064, column: 14, scope: !2766, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 1072, column: 10, scope: !2780)
!2788 = !DILocation(line: 1064, column: 29, scope: !2766, inlinedAt: !2787)
!2789 = !DILocation(line: 1052, column: 18, scope: !2740, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1066, column: 10, scope: !2766, inlinedAt: !2787)
!2791 = !DILocation(line: 1052, column: 33, scope: !2740, inlinedAt: !2790)
!2792 = !DILocation(line: 1052, column: 45, scope: !2740, inlinedAt: !2790)
!2793 = !DILocation(line: 1054, column: 10, scope: !2740, inlinedAt: !2790)
!2794 = !DILocation(line: 1072, column: 3, scope: !2780)
!2795 = distinct !DISubprogram(name: "version_etc_arn", scope: !553, file: !553, line: 62, type: !2796, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !2839)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{null, !2798, !29, !29, !29, !2838, !140}
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !707, line: 7, baseType: !2800)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 241, size: 1728, elements: !2801)
!2801 = !{!2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2800, file: !709, line: 242, baseType: !86, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2800, file: !709, line: 247, baseType: !110, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2800, file: !709, line: 248, baseType: !110, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2800, file: !709, line: 249, baseType: !110, size: 64, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2800, file: !709, line: 250, baseType: !110, size: 64, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2800, file: !709, line: 251, baseType: !110, size: 64, offset: 320)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2800, file: !709, line: 252, baseType: !110, size: 64, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2800, file: !709, line: 253, baseType: !110, size: 64, offset: 448)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2800, file: !709, line: 254, baseType: !110, size: 64, offset: 512)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2800, file: !709, line: 256, baseType: !110, size: 64, offset: 576)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2800, file: !709, line: 257, baseType: !110, size: 64, offset: 640)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2800, file: !709, line: 258, baseType: !110, size: 64, offset: 704)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2800, file: !709, line: 260, baseType: !2815, size: 64, offset: 768)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !709, line: 156, size: 192, elements: !2817)
!2817 = !{!2818, !2819, !2821}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2816, file: !709, line: 157, baseType: !2815, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2816, file: !709, line: 158, baseType: !2820, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2816, file: !709, line: 162, baseType: !86, size: 32, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2800, file: !709, line: 262, baseType: !2820, size: 64, offset: 832)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2800, file: !709, line: 264, baseType: !86, size: 32, offset: 896)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2800, file: !709, line: 268, baseType: !86, size: 32, offset: 928)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2800, file: !709, line: 270, baseType: !735, size: 64, offset: 960)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2800, file: !709, line: 274, baseType: !139, size: 16, offset: 1024)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2800, file: !709, line: 275, baseType: !739, size: 8, offset: 1040)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2800, file: !709, line: 276, baseType: !741, size: 8, offset: 1048)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2800, file: !709, line: 280, baseType: !745, size: 64, offset: 1088)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2800, file: !709, line: 289, baseType: !748, size: 64, offset: 1152)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2800, file: !709, line: 297, baseType: !32, size: 64, offset: 1216)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2800, file: !709, line: 298, baseType: !32, size: 64, offset: 1280)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2800, file: !709, line: 299, baseType: !32, size: 64, offset: 1344)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2800, file: !709, line: 300, baseType: !32, size: 64, offset: 1408)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2800, file: !709, line: 302, baseType: !140, size: 64, offset: 1472)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2800, file: !709, line: 303, baseType: !86, size: 32, offset: 1536)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2800, file: !709, line: 305, baseType: !756, size: 160, offset: 1568)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!2839 = !{!2840, !2841, !2842, !2843, !2844, !2845}
!2840 = !DILocalVariable(name: "stream", arg: 1, scope: !2795, file: !553, line: 62, type: !2798)
!2841 = !DILocalVariable(name: "command_name", arg: 2, scope: !2795, file: !553, line: 63, type: !29)
!2842 = !DILocalVariable(name: "package", arg: 3, scope: !2795, file: !553, line: 63, type: !29)
!2843 = !DILocalVariable(name: "version", arg: 4, scope: !2795, file: !553, line: 64, type: !29)
!2844 = !DILocalVariable(name: "authors", arg: 5, scope: !2795, file: !553, line: 65, type: !2838)
!2845 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2795, file: !553, line: 65, type: !140)
!2846 = !DILocation(line: 62, column: 24, scope: !2795)
!2847 = !DILocation(line: 63, column: 30, scope: !2795)
!2848 = !DILocation(line: 63, column: 56, scope: !2795)
!2849 = !DILocation(line: 64, column: 30, scope: !2795)
!2850 = !DILocation(line: 65, column: 39, scope: !2795)
!2851 = !DILocation(line: 65, column: 55, scope: !2795)
!2852 = !DILocation(line: 67, column: 7, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2795, file: !553, line: 67, column: 7)
!2854 = !DILocation(line: 67, column: 7, scope: !2795)
!2855 = !DILocation(line: 68, column: 5, scope: !2853)
!2856 = !DILocation(line: 70, column: 5, scope: !2853)
!2857 = !DILocation(line: 84, column: 3, scope: !2795)
!2858 = !DILocation(line: 86, column: 3, scope: !2795)
!2859 = !DILocation(line: 95, column: 3, scope: !2795)
!2860 = !DILocation(line: 99, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2795, file: !553, line: 96, column: 5)
!2862 = !DILocation(line: 102, column: 7, scope: !2861)
!2863 = !DILocation(line: 103, column: 7, scope: !2861)
!2864 = !DILocation(line: 106, column: 7, scope: !2861)
!2865 = !DILocation(line: 107, column: 7, scope: !2861)
!2866 = !DILocation(line: 110, column: 7, scope: !2861)
!2867 = !DILocation(line: 112, column: 7, scope: !2861)
!2868 = !DILocation(line: 117, column: 7, scope: !2861)
!2869 = !DILocation(line: 119, column: 7, scope: !2861)
!2870 = !DILocation(line: 124, column: 7, scope: !2861)
!2871 = !DILocation(line: 126, column: 7, scope: !2861)
!2872 = !DILocation(line: 131, column: 7, scope: !2861)
!2873 = !DILocation(line: 134, column: 7, scope: !2861)
!2874 = !DILocation(line: 139, column: 7, scope: !2861)
!2875 = !DILocation(line: 142, column: 7, scope: !2861)
!2876 = !DILocation(line: 147, column: 7, scope: !2861)
!2877 = !DILocation(line: 151, column: 7, scope: !2861)
!2878 = !DILocation(line: 156, column: 7, scope: !2861)
!2879 = !DILocation(line: 160, column: 7, scope: !2861)
!2880 = !DILocation(line: 167, column: 7, scope: !2861)
!2881 = !DILocation(line: 171, column: 7, scope: !2861)
!2882 = !DILocation(line: 173, column: 1, scope: !2795)
!2883 = distinct !DISubprogram(name: "version_etc_ar", scope: !553, file: !553, line: 180, type: !2884, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !2798, !29, !29, !29, !2838}
!2886 = !{!2887, !2888, !2889, !2890, !2891, !2892}
!2887 = !DILocalVariable(name: "stream", arg: 1, scope: !2883, file: !553, line: 180, type: !2798)
!2888 = !DILocalVariable(name: "command_name", arg: 2, scope: !2883, file: !553, line: 181, type: !29)
!2889 = !DILocalVariable(name: "package", arg: 3, scope: !2883, file: !553, line: 181, type: !29)
!2890 = !DILocalVariable(name: "version", arg: 4, scope: !2883, file: !553, line: 182, type: !29)
!2891 = !DILocalVariable(name: "authors", arg: 5, scope: !2883, file: !553, line: 182, type: !2838)
!2892 = !DILocalVariable(name: "n_authors", scope: !2883, file: !553, line: 184, type: !140)
!2893 = !DILocation(line: 180, column: 23, scope: !2883)
!2894 = !DILocation(line: 181, column: 29, scope: !2883)
!2895 = !DILocation(line: 181, column: 55, scope: !2883)
!2896 = !DILocation(line: 182, column: 29, scope: !2883)
!2897 = !DILocation(line: 182, column: 59, scope: !2883)
!2898 = !DILocation(line: 184, column: 10, scope: !2883)
!2899 = !DILocation(line: 186, column: 8, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2883, file: !553, line: 186, column: 3)
!2901 = !DILocation(line: 186, column: 23, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2900, file: !553, line: 186, column: 3)
!2903 = !DILocation(line: 186, column: 3, scope: !2900)
!2904 = !DILocation(line: 186, column: 52, scope: !2902)
!2905 = distinct !{!2905, !2903, !2906}
!2906 = !DILocation(line: 187, column: 5, scope: !2900)
!2907 = !DILocation(line: 188, column: 3, scope: !2883)
!2908 = !DILocation(line: 189, column: 1, scope: !2883)
!2909 = distinct !DISubprogram(name: "version_etc_va", scope: !553, file: !553, line: 196, type: !2910, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !2919)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !2798, !29, !29, !29, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !550, line: 189, size: 192, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2913, file: !550, line: 189, baseType: !33, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2913, file: !550, line: 189, baseType: !33, size: 32, offset: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2913, file: !550, line: 189, baseType: !32, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2913, file: !550, line: 189, baseType: !32, size: 64, offset: 128)
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926}
!2920 = !DILocalVariable(name: "stream", arg: 1, scope: !2909, file: !553, line: 196, type: !2798)
!2921 = !DILocalVariable(name: "command_name", arg: 2, scope: !2909, file: !553, line: 197, type: !29)
!2922 = !DILocalVariable(name: "package", arg: 3, scope: !2909, file: !553, line: 197, type: !29)
!2923 = !DILocalVariable(name: "version", arg: 4, scope: !2909, file: !553, line: 198, type: !29)
!2924 = !DILocalVariable(name: "authors", arg: 5, scope: !2909, file: !553, line: 198, type: !2912)
!2925 = !DILocalVariable(name: "n_authors", scope: !2909, file: !553, line: 200, type: !140)
!2926 = !DILocalVariable(name: "authtab", scope: !2909, file: !553, line: 201, type: !2927)
!2927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 640, elements: !148)
!2928 = !DILocation(line: 196, column: 23, scope: !2909)
!2929 = !DILocation(line: 197, column: 29, scope: !2909)
!2930 = !DILocation(line: 197, column: 55, scope: !2909)
!2931 = !DILocation(line: 198, column: 29, scope: !2909)
!2932 = !DILocation(line: 198, column: 46, scope: !2909)
!2933 = !DILocation(line: 201, column: 3, scope: !2909)
!2934 = !DILocation(line: 201, column: 15, scope: !2909)
!2935 = !DILocation(line: 200, column: 10, scope: !2909)
!2936 = !DILocation(line: 205, column: 35, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !553, line: 203, column: 3)
!2938 = distinct !DILexicalBlock(scope: !2909, file: !553, line: 203, column: 3)
!2939 = !DILocation(line: 205, column: 14, scope: !2937)
!2940 = !DILocation(line: 205, column: 33, scope: !2937)
!2941 = !DILocation(line: 205, column: 67, scope: !2937)
!2942 = !DILocation(line: 203, column: 3, scope: !2938)
!2943 = !DILocation(line: 208, column: 3, scope: !2909)
!2944 = !DILocation(line: 210, column: 1, scope: !2909)
!2945 = distinct !DISubprogram(name: "version_etc", scope: !553, file: !553, line: 227, type: !2946, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !2948)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{null, !2798, !29, !29, !29, null}
!2948 = !{!2949, !2950, !2951, !2952, !2953}
!2949 = !DILocalVariable(name: "stream", arg: 1, scope: !2945, file: !553, line: 227, type: !2798)
!2950 = !DILocalVariable(name: "command_name", arg: 2, scope: !2945, file: !553, line: 228, type: !29)
!2951 = !DILocalVariable(name: "package", arg: 3, scope: !2945, file: !553, line: 228, type: !29)
!2952 = !DILocalVariable(name: "version", arg: 4, scope: !2945, file: !553, line: 229, type: !29)
!2953 = !DILocalVariable(name: "authors", scope: !2945, file: !553, line: 231, type: !2954)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !943, line: 46, baseType: !2955)
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1064, line: 48, baseType: !2956)
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !550, line: 231, baseType: !2957)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2913, size: 192, elements: !742)
!2958 = !DILocation(line: 227, column: 20, scope: !2945)
!2959 = !DILocation(line: 228, column: 26, scope: !2945)
!2960 = !DILocation(line: 228, column: 52, scope: !2945)
!2961 = !DILocation(line: 229, column: 26, scope: !2945)
!2962 = !DILocation(line: 231, column: 3, scope: !2945)
!2963 = !DILocation(line: 231, column: 11, scope: !2945)
!2964 = !DILocation(line: 233, column: 3, scope: !2945)
!2965 = !DILocation(line: 234, column: 3, scope: !2945)
!2966 = !DILocation(line: 235, column: 3, scope: !2945)
!2967 = !DILocation(line: 236, column: 1, scope: !2945)
!2968 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !553, file: !553, line: 239, type: !903, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !69)
!2969 = !DILocation(line: 245, column: 3, scope: !2968)
!2970 = !DILocation(line: 251, column: 3, scope: !2968)
!2971 = !DILocation(line: 256, column: 3, scope: !2968)
!2972 = !DILocation(line: 258, column: 1, scope: !2968)
!2973 = distinct !DISubprogram(name: "xnmalloc", scope: !561, file: !561, line: 105, type: !2974, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!32, !140, !140}
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "n", arg: 1, scope: !2973, file: !561, line: 105, type: !140)
!2978 = !DILocalVariable(name: "s", arg: 2, scope: !2973, file: !561, line: 105, type: !140)
!2979 = !DILocation(line: 105, column: 18, scope: !2973)
!2980 = !DILocation(line: 105, column: 28, scope: !2973)
!2981 = !DILocation(line: 107, column: 7, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2973, file: !561, line: 107, column: 7)
!2983 = !DILocation(line: 107, column: 7, scope: !2973)
!2984 = !DILocation(line: 108, column: 5, scope: !2982)
!2985 = !DILocation(line: 109, column: 21, scope: !2973)
!2986 = !DILocalVariable(name: "n", arg: 1, scope: !2987, file: !2988, line: 39, type: !140)
!2987 = distinct !DISubprogram(name: "xmalloc", scope: !2988, file: !2988, line: 39, type: !2989, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !2991)
!2988 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!32, !140}
!2991 = !{!2986, !2992}
!2992 = !DILocalVariable(name: "p", scope: !2987, file: !2988, line: 41, type: !32)
!2993 = !DILocation(line: 39, column: 17, scope: !2987, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 109, column: 10, scope: !2973)
!2995 = !DILocation(line: 41, column: 13, scope: !2987, inlinedAt: !2994)
!2996 = !DILocation(line: 41, column: 9, scope: !2987, inlinedAt: !2994)
!2997 = !DILocation(line: 42, column: 8, scope: !2998, inlinedAt: !2994)
!2998 = distinct !DILexicalBlock(scope: !2987, file: !2988, line: 42, column: 7)
!2999 = !DILocation(line: 42, column: 15, scope: !2998, inlinedAt: !2994)
!3000 = !DILocation(line: 42, column: 10, scope: !2998, inlinedAt: !2994)
!3001 = !DILocation(line: 43, column: 5, scope: !2998, inlinedAt: !2994)
!3002 = !DILocation(line: 109, column: 3, scope: !2973)
!3003 = !DILocation(line: 39, column: 17, scope: !2987)
!3004 = !DILocation(line: 41, column: 13, scope: !2987)
!3005 = !DILocation(line: 41, column: 9, scope: !2987)
!3006 = !DILocation(line: 42, column: 8, scope: !2998)
!3007 = !DILocation(line: 42, column: 15, scope: !2998)
!3008 = !DILocation(line: 42, column: 10, scope: !2998)
!3009 = !DILocation(line: 43, column: 5, scope: !2998)
!3010 = !DILocation(line: 44, column: 3, scope: !2987)
!3011 = distinct !DISubprogram(name: "xnrealloc", scope: !561, file: !561, line: 118, type: !3012, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!32, !32, !140, !140}
!3014 = !{!3015, !3016, !3017}
!3015 = !DILocalVariable(name: "p", arg: 1, scope: !3011, file: !561, line: 118, type: !32)
!3016 = !DILocalVariable(name: "n", arg: 2, scope: !3011, file: !561, line: 118, type: !140)
!3017 = !DILocalVariable(name: "s", arg: 3, scope: !3011, file: !561, line: 118, type: !140)
!3018 = !DILocation(line: 118, column: 18, scope: !3011)
!3019 = !DILocation(line: 118, column: 28, scope: !3011)
!3020 = !DILocation(line: 118, column: 38, scope: !3011)
!3021 = !DILocation(line: 120, column: 7, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3011, file: !561, line: 120, column: 7)
!3023 = !DILocation(line: 120, column: 7, scope: !3011)
!3024 = !DILocation(line: 121, column: 5, scope: !3022)
!3025 = !DILocation(line: 122, column: 25, scope: !3011)
!3026 = !DILocalVariable(name: "p", arg: 1, scope: !3027, file: !2988, line: 51, type: !32)
!3027 = distinct !DISubprogram(name: "xrealloc", scope: !2988, file: !2988, line: 51, type: !3028, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!32, !32, !140}
!3030 = !{!3026, !3031}
!3031 = !DILocalVariable(name: "n", arg: 2, scope: !3027, file: !2988, line: 51, type: !140)
!3032 = !DILocation(line: 51, column: 17, scope: !3027, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 122, column: 10, scope: !3011)
!3034 = !DILocation(line: 51, column: 27, scope: !3027, inlinedAt: !3033)
!3035 = !DILocation(line: 53, column: 8, scope: !3036, inlinedAt: !3033)
!3036 = distinct !DILexicalBlock(scope: !3027, file: !2988, line: 53, column: 7)
!3037 = !DILocation(line: 53, column: 13, scope: !3036, inlinedAt: !3033)
!3038 = !DILocation(line: 53, column: 10, scope: !3036, inlinedAt: !3033)
!3039 = !DILocation(line: 57, column: 7, scope: !3040, inlinedAt: !3033)
!3040 = distinct !DILexicalBlock(scope: !3036, file: !2988, line: 54, column: 5)
!3041 = !DILocation(line: 58, column: 7, scope: !3040, inlinedAt: !3033)
!3042 = !DILocation(line: 61, column: 7, scope: !3027, inlinedAt: !3033)
!3043 = !DILocation(line: 62, column: 8, scope: !3044, inlinedAt: !3033)
!3044 = distinct !DILexicalBlock(scope: !3027, file: !2988, line: 62, column: 7)
!3045 = !DILocation(line: 62, column: 13, scope: !3044, inlinedAt: !3033)
!3046 = !DILocation(line: 62, column: 10, scope: !3044, inlinedAt: !3033)
!3047 = !DILocation(line: 63, column: 5, scope: !3044, inlinedAt: !3033)
!3048 = !DILocation(line: 122, column: 3, scope: !3011)
!3049 = !DILocation(line: 51, column: 17, scope: !3027)
!3050 = !DILocation(line: 51, column: 27, scope: !3027)
!3051 = !DILocation(line: 53, column: 8, scope: !3036)
!3052 = !DILocation(line: 53, column: 13, scope: !3036)
!3053 = !DILocation(line: 53, column: 10, scope: !3036)
!3054 = !DILocation(line: 57, column: 7, scope: !3040)
!3055 = !DILocation(line: 58, column: 7, scope: !3040)
!3056 = !DILocation(line: 61, column: 7, scope: !3027)
!3057 = !DILocation(line: 62, column: 8, scope: !3044)
!3058 = !DILocation(line: 62, column: 13, scope: !3044)
!3059 = !DILocation(line: 62, column: 10, scope: !3044)
!3060 = !DILocation(line: 63, column: 5, scope: !3044)
!3061 = !DILocation(line: 65, column: 1, scope: !3027)
!3062 = !DILocation(line: 180, column: 19, scope: !562)
!3063 = !DILocation(line: 180, column: 30, scope: !562)
!3064 = !DILocation(line: 180, column: 41, scope: !562)
!3065 = !DILocation(line: 182, column: 14, scope: !562)
!3066 = !DILocation(line: 182, column: 10, scope: !562)
!3067 = !DILocation(line: 184, column: 9, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !562, file: !561, line: 184, column: 7)
!3069 = !DILocation(line: 184, column: 7, scope: !562)
!3070 = !DILocation(line: 186, column: 13, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !561, line: 186, column: 11)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !561, line: 185, column: 5)
!3073 = !DILocation(line: 186, column: 11, scope: !3072)
!3074 = !DILocation(line: 194, column: 30, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3071, file: !561, line: 187, column: 9)
!3076 = !DILocation(line: 195, column: 16, scope: !3075)
!3077 = !DILocation(line: 195, column: 13, scope: !3075)
!3078 = !DILocation(line: 196, column: 9, scope: !3075)
!3079 = !DILocation(line: 204, column: 69, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !561, line: 204, column: 11)
!3081 = distinct !DILexicalBlock(scope: !3068, file: !561, line: 199, column: 5)
!3082 = !DILocation(line: 205, column: 11, scope: !3080)
!3083 = !DILocation(line: 204, column: 11, scope: !3081)
!3084 = !DILocation(line: 206, column: 9, scope: !3080)
!3085 = !DILocation(line: 210, column: 7, scope: !562)
!3086 = !DILocation(line: 211, column: 25, scope: !562)
!3087 = !DILocation(line: 51, column: 17, scope: !3027, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 211, column: 10, scope: !562)
!3089 = !DILocation(line: 51, column: 27, scope: !3027, inlinedAt: !3088)
!3090 = !DILocation(line: 53, column: 10, scope: !3036, inlinedAt: !3088)
!3091 = !DILocation(line: 207, column: 14, scope: !3081)
!3092 = !DILocation(line: 207, column: 18, scope: !3081)
!3093 = !DILocation(line: 207, column: 9, scope: !3081)
!3094 = !DILocation(line: 53, column: 8, scope: !3036, inlinedAt: !3088)
!3095 = !DILocation(line: 57, column: 7, scope: !3040, inlinedAt: !3088)
!3096 = !DILocation(line: 58, column: 7, scope: !3040, inlinedAt: !3088)
!3097 = !DILocation(line: 61, column: 7, scope: !3027, inlinedAt: !3088)
!3098 = !DILocation(line: 62, column: 8, scope: !3044, inlinedAt: !3088)
!3099 = !DILocation(line: 62, column: 13, scope: !3044, inlinedAt: !3088)
!3100 = !DILocation(line: 62, column: 10, scope: !3044, inlinedAt: !3088)
!3101 = !DILocation(line: 63, column: 5, scope: !3044, inlinedAt: !3088)
!3102 = !DILocation(line: 211, column: 3, scope: !562)
!3103 = distinct !DISubprogram(name: "xcharalloc", scope: !561, file: !561, line: 220, type: !2074, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3104)
!3104 = !{!3105}
!3105 = !DILocalVariable(name: "n", arg: 1, scope: !3103, file: !561, line: 220, type: !140)
!3106 = !DILocation(line: 220, column: 20, scope: !3103)
!3107 = !DILocation(line: 39, column: 17, scope: !2987, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 222, column: 10, scope: !3103)
!3109 = !DILocation(line: 41, column: 13, scope: !2987, inlinedAt: !3108)
!3110 = !DILocation(line: 41, column: 9, scope: !2987, inlinedAt: !3108)
!3111 = !DILocation(line: 42, column: 8, scope: !2998, inlinedAt: !3108)
!3112 = !DILocation(line: 42, column: 15, scope: !2998, inlinedAt: !3108)
!3113 = !DILocation(line: 42, column: 10, scope: !2998, inlinedAt: !3108)
!3114 = !DILocation(line: 43, column: 5, scope: !2998, inlinedAt: !3108)
!3115 = !DILocation(line: 222, column: 3, scope: !3103)
!3116 = distinct !DISubprogram(name: "x2realloc", scope: !2988, file: !2988, line: 74, type: !3117, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!32, !32, !565}
!3119 = !{!3120, !3121}
!3120 = !DILocalVariable(name: "p", arg: 1, scope: !3116, file: !2988, line: 74, type: !32)
!3121 = !DILocalVariable(name: "pn", arg: 2, scope: !3116, file: !2988, line: 74, type: !565)
!3122 = !DILocation(line: 74, column: 18, scope: !3116)
!3123 = !DILocation(line: 74, column: 29, scope: !3116)
!3124 = !DILocation(line: 180, column: 19, scope: !562, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 76, column: 10, scope: !3116)
!3126 = !DILocation(line: 180, column: 30, scope: !562, inlinedAt: !3125)
!3127 = !DILocation(line: 180, column: 41, scope: !562, inlinedAt: !3125)
!3128 = !DILocation(line: 182, column: 14, scope: !562, inlinedAt: !3125)
!3129 = !DILocation(line: 182, column: 10, scope: !562, inlinedAt: !3125)
!3130 = !DILocation(line: 184, column: 9, scope: !3068, inlinedAt: !3125)
!3131 = !DILocation(line: 184, column: 7, scope: !562, inlinedAt: !3125)
!3132 = !DILocation(line: 186, column: 13, scope: !3071, inlinedAt: !3125)
!3133 = !DILocation(line: 186, column: 11, scope: !3072, inlinedAt: !3125)
!3134 = !DILocation(line: 210, column: 7, scope: !562, inlinedAt: !3125)
!3135 = !DILocation(line: 51, column: 17, scope: !3027, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 211, column: 10, scope: !562, inlinedAt: !3125)
!3137 = !DILocation(line: 51, column: 27, scope: !3027, inlinedAt: !3136)
!3138 = !DILocation(line: 53, column: 10, scope: !3036, inlinedAt: !3136)
!3139 = !DILocation(line: 205, column: 11, scope: !3080, inlinedAt: !3125)
!3140 = !DILocation(line: 204, column: 11, scope: !3081, inlinedAt: !3125)
!3141 = !DILocation(line: 206, column: 9, scope: !3080, inlinedAt: !3125)
!3142 = !DILocation(line: 207, column: 14, scope: !3081, inlinedAt: !3125)
!3143 = !DILocation(line: 207, column: 18, scope: !3081, inlinedAt: !3125)
!3144 = !DILocation(line: 207, column: 9, scope: !3081, inlinedAt: !3125)
!3145 = !DILocation(line: 53, column: 8, scope: !3036, inlinedAt: !3136)
!3146 = !DILocation(line: 57, column: 7, scope: !3040, inlinedAt: !3136)
!3147 = !DILocation(line: 58, column: 7, scope: !3040, inlinedAt: !3136)
!3148 = !DILocation(line: 61, column: 7, scope: !3027, inlinedAt: !3136)
!3149 = !DILocation(line: 62, column: 8, scope: !3044, inlinedAt: !3136)
!3150 = !DILocation(line: 62, column: 13, scope: !3044, inlinedAt: !3136)
!3151 = !DILocation(line: 62, column: 10, scope: !3044, inlinedAt: !3136)
!3152 = !DILocation(line: 63, column: 5, scope: !3044, inlinedAt: !3136)
!3153 = !DILocation(line: 76, column: 3, scope: !3116)
!3154 = distinct !DISubprogram(name: "xzalloc", scope: !2988, file: !2988, line: 84, type: !2989, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3155)
!3155 = !{!3156}
!3156 = !DILocalVariable(name: "s", arg: 1, scope: !3154, file: !2988, line: 84, type: !140)
!3157 = !DILocation(line: 84, column: 17, scope: !3154)
!3158 = !DILocation(line: 39, column: 17, scope: !2987, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 86, column: 18, scope: !3154)
!3160 = !DILocation(line: 41, column: 13, scope: !2987, inlinedAt: !3159)
!3161 = !DILocation(line: 41, column: 9, scope: !2987, inlinedAt: !3159)
!3162 = !DILocation(line: 42, column: 8, scope: !2998, inlinedAt: !3159)
!3163 = !DILocation(line: 42, column: 15, scope: !2998, inlinedAt: !3159)
!3164 = !DILocation(line: 42, column: 10, scope: !2998, inlinedAt: !3159)
!3165 = !DILocation(line: 43, column: 5, scope: !2998, inlinedAt: !3159)
!3166 = !DILocation(line: 86, column: 10, scope: !3154)
!3167 = !DILocation(line: 86, column: 3, scope: !3154)
!3168 = distinct !DISubprogram(name: "xcalloc", scope: !2988, file: !2988, line: 93, type: !2974, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3169)
!3169 = !{!3170, !3171, !3172}
!3170 = !DILocalVariable(name: "n", arg: 1, scope: !3168, file: !2988, line: 93, type: !140)
!3171 = !DILocalVariable(name: "s", arg: 2, scope: !3168, file: !2988, line: 93, type: !140)
!3172 = !DILocalVariable(name: "p", scope: !3168, file: !2988, line: 95, type: !32)
!3173 = !DILocation(line: 93, column: 17, scope: !3168)
!3174 = !DILocation(line: 93, column: 27, scope: !3168)
!3175 = !DILocation(line: 100, column: 7, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3168, file: !2988, line: 100, column: 7)
!3177 = !DILocation(line: 101, column: 7, scope: !3176)
!3178 = !DILocation(line: 101, column: 18, scope: !3176)
!3179 = !DILocation(line: 95, column: 9, scope: !3168)
!3180 = !DILocation(line: 101, column: 16, scope: !3176)
!3181 = !DILocation(line: 100, column: 7, scope: !3168)
!3182 = !DILocation(line: 102, column: 5, scope: !3176)
!3183 = !DILocation(line: 103, column: 3, scope: !3168)
!3184 = distinct !DISubprogram(name: "xmemdup", scope: !2988, file: !2988, line: 111, type: !3185, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3189)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!32, !3187, !140}
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3189 = !{!3190, !3191}
!3190 = !DILocalVariable(name: "p", arg: 1, scope: !3184, file: !2988, line: 111, type: !3187)
!3191 = !DILocalVariable(name: "s", arg: 2, scope: !3184, file: !2988, line: 111, type: !140)
!3192 = !DILocation(line: 111, column: 22, scope: !3184)
!3193 = !DILocation(line: 111, column: 32, scope: !3184)
!3194 = !DILocation(line: 39, column: 17, scope: !2987, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 113, column: 18, scope: !3184)
!3196 = !DILocation(line: 41, column: 13, scope: !2987, inlinedAt: !3195)
!3197 = !DILocation(line: 41, column: 9, scope: !2987, inlinedAt: !3195)
!3198 = !DILocation(line: 42, column: 8, scope: !2998, inlinedAt: !3195)
!3199 = !DILocation(line: 42, column: 15, scope: !2998, inlinedAt: !3195)
!3200 = !DILocation(line: 42, column: 10, scope: !2998, inlinedAt: !3195)
!3201 = !DILocation(line: 43, column: 5, scope: !2998, inlinedAt: !3195)
!3202 = !DILocation(line: 113, column: 10, scope: !3184)
!3203 = !DILocation(line: 113, column: 3, scope: !3184)
!3204 = distinct !DISubprogram(name: "xstrdup", scope: !2988, file: !2988, line: 119, type: !2274, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3205)
!3205 = !{!3206}
!3206 = !DILocalVariable(name: "string", arg: 1, scope: !3204, file: !2988, line: 119, type: !29)
!3207 = !DILocation(line: 119, column: 22, scope: !3204)
!3208 = !DILocation(line: 121, column: 27, scope: !3204)
!3209 = !DILocation(line: 121, column: 43, scope: !3204)
!3210 = !DILocation(line: 111, column: 22, scope: !3184, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 121, column: 10, scope: !3204)
!3212 = !DILocation(line: 111, column: 32, scope: !3184, inlinedAt: !3211)
!3213 = !DILocation(line: 39, column: 17, scope: !2987, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 113, column: 18, scope: !3184, inlinedAt: !3211)
!3215 = !DILocation(line: 41, column: 13, scope: !2987, inlinedAt: !3214)
!3216 = !DILocation(line: 41, column: 9, scope: !2987, inlinedAt: !3214)
!3217 = !DILocation(line: 42, column: 8, scope: !2998, inlinedAt: !3214)
!3218 = !DILocation(line: 42, column: 15, scope: !2998, inlinedAt: !3214)
!3219 = !DILocation(line: 42, column: 10, scope: !2998, inlinedAt: !3214)
!3220 = !DILocation(line: 43, column: 5, scope: !2998, inlinedAt: !3214)
!3221 = !DILocation(line: 113, column: 10, scope: !3184, inlinedAt: !3211)
!3222 = !DILocation(line: 121, column: 3, scope: !3204)
!3223 = distinct !DISubprogram(name: "xalloc_die", scope: !3224, file: !3224, line: 32, type: !903, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !574, variables: !69)
!3224 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3225 = !DILocation(line: 34, column: 10, scope: !3223)
!3226 = !DILocation(line: 34, column: 33, scope: !3223)
!3227 = !DILocation(line: 34, column: 3, scope: !3223)
!3228 = !DILocation(line: 40, column: 3, scope: !3223)
!3229 = distinct !DISubprogram(name: "rpl_calloc", scope: !3230, file: !3230, line: 42, type: !2974, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3231)
!3230 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3231 = !{!3232, !3233, !3234, !3235}
!3232 = !DILocalVariable(name: "n", arg: 1, scope: !3229, file: !3230, line: 42, type: !140)
!3233 = !DILocalVariable(name: "s", arg: 2, scope: !3229, file: !3230, line: 42, type: !140)
!3234 = !DILocalVariable(name: "result", scope: !3229, file: !3230, line: 44, type: !32)
!3235 = !DILocalVariable(name: "bytes", scope: !3236, file: !3230, line: 56, type: !140)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !3230, line: 53, column: 5)
!3237 = distinct !DILexicalBlock(scope: !3229, file: !3230, line: 47, column: 7)
!3238 = !DILocation(line: 42, column: 20, scope: !3229)
!3239 = !DILocation(line: 42, column: 30, scope: !3229)
!3240 = !DILocation(line: 47, column: 9, scope: !3237)
!3241 = !DILocation(line: 47, column: 19, scope: !3237)
!3242 = !DILocation(line: 47, column: 14, scope: !3237)
!3243 = !DILocation(line: 56, column: 24, scope: !3236)
!3244 = !DILocation(line: 56, column: 14, scope: !3236)
!3245 = !DILocation(line: 57, column: 17, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3236, file: !3230, line: 57, column: 11)
!3247 = !DILocation(line: 57, column: 21, scope: !3246)
!3248 = !DILocation(line: 57, column: 11, scope: !3236)
!3249 = !DILocation(line: 59, column: 11, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3246, file: !3230, line: 58, column: 9)
!3251 = !DILocation(line: 59, column: 17, scope: !3250)
!3252 = !DILocation(line: 65, column: 12, scope: !3229)
!3253 = !DILocation(line: 44, column: 9, scope: !3229)
!3254 = !DILocation(line: 72, column: 3, scope: !3229)
!3255 = !DILocation(line: 73, column: 1, scope: !3229)
!3256 = distinct !DISubprogram(name: "rpl_fclose", scope: !3257, file: !3257, line: 56, type: !3258, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !3300)
!3257 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!86, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !707, line: 7, baseType: !3262)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 241, size: 1728, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3262, file: !709, line: 242, baseType: !86, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3262, file: !709, line: 247, baseType: !110, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3262, file: !709, line: 248, baseType: !110, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3262, file: !709, line: 249, baseType: !110, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3262, file: !709, line: 250, baseType: !110, size: 64, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3262, file: !709, line: 251, baseType: !110, size: 64, offset: 320)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3262, file: !709, line: 252, baseType: !110, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3262, file: !709, line: 253, baseType: !110, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3262, file: !709, line: 254, baseType: !110, size: 64, offset: 512)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3262, file: !709, line: 256, baseType: !110, size: 64, offset: 576)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3262, file: !709, line: 257, baseType: !110, size: 64, offset: 640)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3262, file: !709, line: 258, baseType: !110, size: 64, offset: 704)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3262, file: !709, line: 260, baseType: !3277, size: 64, offset: 768)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !709, line: 156, size: 192, elements: !3279)
!3279 = !{!3280, !3281, !3283}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3278, file: !709, line: 157, baseType: !3277, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3278, file: !709, line: 158, baseType: !3282, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3278, file: !709, line: 162, baseType: !86, size: 32, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3262, file: !709, line: 262, baseType: !3282, size: 64, offset: 832)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3262, file: !709, line: 264, baseType: !86, size: 32, offset: 896)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3262, file: !709, line: 268, baseType: !86, size: 32, offset: 928)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3262, file: !709, line: 270, baseType: !735, size: 64, offset: 960)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3262, file: !709, line: 274, baseType: !139, size: 16, offset: 1024)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3262, file: !709, line: 275, baseType: !739, size: 8, offset: 1040)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3262, file: !709, line: 276, baseType: !741, size: 8, offset: 1048)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3262, file: !709, line: 280, baseType: !745, size: 64, offset: 1088)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3262, file: !709, line: 289, baseType: !748, size: 64, offset: 1152)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3262, file: !709, line: 297, baseType: !32, size: 64, offset: 1216)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3262, file: !709, line: 298, baseType: !32, size: 64, offset: 1280)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3262, file: !709, line: 299, baseType: !32, size: 64, offset: 1344)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3262, file: !709, line: 300, baseType: !32, size: 64, offset: 1408)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3262, file: !709, line: 302, baseType: !140, size: 64, offset: 1472)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3262, file: !709, line: 303, baseType: !86, size: 32, offset: 1536)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3262, file: !709, line: 305, baseType: !756, size: 160, offset: 1568)
!3300 = !{!3301, !3302, !3303, !3304}
!3301 = !DILocalVariable(name: "fp", arg: 1, scope: !3256, file: !3257, line: 56, type: !3260)
!3302 = !DILocalVariable(name: "saved_errno", scope: !3256, file: !3257, line: 58, type: !86)
!3303 = !DILocalVariable(name: "fd", scope: !3256, file: !3257, line: 59, type: !86)
!3304 = !DILocalVariable(name: "result", scope: !3256, file: !3257, line: 60, type: !86)
!3305 = !DILocation(line: 56, column: 19, scope: !3256)
!3306 = !DILocation(line: 58, column: 7, scope: !3256)
!3307 = !DILocation(line: 60, column: 7, scope: !3256)
!3308 = !DILocation(line: 63, column: 8, scope: !3256)
!3309 = !DILocation(line: 59, column: 7, scope: !3256)
!3310 = !DILocation(line: 64, column: 10, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3256, file: !3257, line: 64, column: 7)
!3312 = !DILocation(line: 64, column: 7, scope: !3256)
!3313 = !DILocation(line: 65, column: 12, scope: !3311)
!3314 = !DILocation(line: 65, column: 5, scope: !3311)
!3315 = !DILocation(line: 70, column: 9, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3256, file: !3257, line: 70, column: 7)
!3317 = !DILocation(line: 70, column: 23, scope: !3316)
!3318 = !DILocation(line: 70, column: 33, scope: !3316)
!3319 = !DILocation(line: 70, column: 26, scope: !3316)
!3320 = !DILocation(line: 70, column: 59, scope: !3316)
!3321 = !DILocation(line: 71, column: 7, scope: !3316)
!3322 = !DILocation(line: 71, column: 10, scope: !3316)
!3323 = !DILocation(line: 70, column: 7, scope: !3256)
!3324 = !DILocation(line: 98, column: 12, scope: !3256)
!3325 = !DILocation(line: 103, column: 7, scope: !3256)
!3326 = !DILocation(line: 72, column: 19, scope: !3316)
!3327 = !DILocation(line: 103, column: 19, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3256, file: !3257, line: 103, column: 7)
!3329 = !DILocation(line: 105, column: 13, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3328, file: !3257, line: 104, column: 5)
!3331 = !DILocation(line: 107, column: 5, scope: !3330)
!3332 = !DILocation(line: 110, column: 1, scope: !3256)
!3333 = distinct !DISubprogram(name: "rpl_fflush", scope: !3334, file: !3334, line: 127, type: !3335, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !3377)
!3334 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!86, !3337}
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !707, line: 7, baseType: !3339)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 241, size: 1728, elements: !3340)
!3340 = !{!3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3339, file: !709, line: 242, baseType: !86, size: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3339, file: !709, line: 247, baseType: !110, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3339, file: !709, line: 248, baseType: !110, size: 64, offset: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3339, file: !709, line: 249, baseType: !110, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3339, file: !709, line: 250, baseType: !110, size: 64, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3339, file: !709, line: 251, baseType: !110, size: 64, offset: 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3339, file: !709, line: 252, baseType: !110, size: 64, offset: 384)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3339, file: !709, line: 253, baseType: !110, size: 64, offset: 448)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3339, file: !709, line: 254, baseType: !110, size: 64, offset: 512)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3339, file: !709, line: 256, baseType: !110, size: 64, offset: 576)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3339, file: !709, line: 257, baseType: !110, size: 64, offset: 640)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3339, file: !709, line: 258, baseType: !110, size: 64, offset: 704)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3339, file: !709, line: 260, baseType: !3354, size: 64, offset: 768)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !709, line: 156, size: 192, elements: !3356)
!3356 = !{!3357, !3358, !3360}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3355, file: !709, line: 157, baseType: !3354, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3355, file: !709, line: 158, baseType: !3359, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3355, file: !709, line: 162, baseType: !86, size: 32, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3339, file: !709, line: 262, baseType: !3359, size: 64, offset: 832)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3339, file: !709, line: 264, baseType: !86, size: 32, offset: 896)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3339, file: !709, line: 268, baseType: !86, size: 32, offset: 928)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3339, file: !709, line: 270, baseType: !735, size: 64, offset: 960)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3339, file: !709, line: 274, baseType: !139, size: 16, offset: 1024)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3339, file: !709, line: 275, baseType: !739, size: 8, offset: 1040)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3339, file: !709, line: 276, baseType: !741, size: 8, offset: 1048)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3339, file: !709, line: 280, baseType: !745, size: 64, offset: 1088)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3339, file: !709, line: 289, baseType: !748, size: 64, offset: 1152)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3339, file: !709, line: 297, baseType: !32, size: 64, offset: 1216)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3339, file: !709, line: 298, baseType: !32, size: 64, offset: 1280)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3339, file: !709, line: 299, baseType: !32, size: 64, offset: 1344)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3339, file: !709, line: 300, baseType: !32, size: 64, offset: 1408)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3339, file: !709, line: 302, baseType: !140, size: 64, offset: 1472)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3339, file: !709, line: 303, baseType: !86, size: 32, offset: 1536)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3339, file: !709, line: 305, baseType: !756, size: 160, offset: 1568)
!3377 = !{!3378}
!3378 = !DILocalVariable(name: "stream", arg: 1, scope: !3333, file: !3334, line: 127, type: !3337)
!3379 = !DILocation(line: 127, column: 19, scope: !3333)
!3380 = !DILocation(line: 148, column: 14, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3333, file: !3334, line: 148, column: 7)
!3382 = !DILocation(line: 148, column: 22, scope: !3381)
!3383 = !DILocation(line: 148, column: 27, scope: !3381)
!3384 = !DILocation(line: 148, column: 7, scope: !3333)
!3385 = !DILocation(line: 149, column: 12, scope: !3381)
!3386 = !DILocation(line: 149, column: 5, scope: !3381)
!3387 = !DILocalVariable(name: "fp", arg: 1, scope: !3388, file: !3334, line: 40, type: !3337)
!3388 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3334, file: !3334, line: 40, type: !3389, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{null, !3337}
!3391 = !{!3387}
!3392 = !DILocation(line: 40, column: 48, scope: !3388, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 153, column: 3, scope: !3333)
!3394 = !DILocation(line: 42, column: 11, scope: !3395, inlinedAt: !3393)
!3395 = distinct !DILexicalBlock(scope: !3388, file: !3334, line: 42, column: 7)
!3396 = !DILocation(line: 42, column: 18, scope: !3395, inlinedAt: !3393)
!3397 = !DILocation(line: 42, column: 7, scope: !3388, inlinedAt: !3393)
!3398 = !DILocation(line: 44, column: 5, scope: !3395, inlinedAt: !3393)
!3399 = !DILocation(line: 155, column: 10, scope: !3333)
!3400 = !DILocation(line: 155, column: 3, scope: !3333)
!3401 = !DILocation(line: 229, column: 1, scope: !3333)
!3402 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3403, file: !3403, line: 28, type: !3404, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !3446)
!3403 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!86, !3406, !942, !86}
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !707, line: 7, baseType: !3408)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 241, size: 1728, elements: !3409)
!3409 = !{!3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3408, file: !709, line: 242, baseType: !86, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3408, file: !709, line: 247, baseType: !110, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3408, file: !709, line: 248, baseType: !110, size: 64, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3408, file: !709, line: 249, baseType: !110, size: 64, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3408, file: !709, line: 250, baseType: !110, size: 64, offset: 256)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3408, file: !709, line: 251, baseType: !110, size: 64, offset: 320)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3408, file: !709, line: 252, baseType: !110, size: 64, offset: 384)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3408, file: !709, line: 253, baseType: !110, size: 64, offset: 448)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3408, file: !709, line: 254, baseType: !110, size: 64, offset: 512)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3408, file: !709, line: 256, baseType: !110, size: 64, offset: 576)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3408, file: !709, line: 257, baseType: !110, size: 64, offset: 640)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3408, file: !709, line: 258, baseType: !110, size: 64, offset: 704)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3408, file: !709, line: 260, baseType: !3423, size: 64, offset: 768)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !709, line: 156, size: 192, elements: !3425)
!3425 = !{!3426, !3427, !3429}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3424, file: !709, line: 157, baseType: !3423, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3424, file: !709, line: 158, baseType: !3428, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3424, file: !709, line: 162, baseType: !86, size: 32, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3408, file: !709, line: 262, baseType: !3428, size: 64, offset: 832)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3408, file: !709, line: 264, baseType: !86, size: 32, offset: 896)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3408, file: !709, line: 268, baseType: !86, size: 32, offset: 928)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3408, file: !709, line: 270, baseType: !735, size: 64, offset: 960)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3408, file: !709, line: 274, baseType: !139, size: 16, offset: 1024)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3408, file: !709, line: 275, baseType: !739, size: 8, offset: 1040)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3408, file: !709, line: 276, baseType: !741, size: 8, offset: 1048)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3408, file: !709, line: 280, baseType: !745, size: 64, offset: 1088)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3408, file: !709, line: 289, baseType: !748, size: 64, offset: 1152)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3408, file: !709, line: 297, baseType: !32, size: 64, offset: 1216)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3408, file: !709, line: 298, baseType: !32, size: 64, offset: 1280)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3408, file: !709, line: 299, baseType: !32, size: 64, offset: 1344)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3408, file: !709, line: 300, baseType: !32, size: 64, offset: 1408)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3408, file: !709, line: 302, baseType: !140, size: 64, offset: 1472)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3408, file: !709, line: 303, baseType: !86, size: 32, offset: 1536)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3408, file: !709, line: 305, baseType: !756, size: 160, offset: 1568)
!3446 = !{!3447, !3448, !3449, !3450}
!3447 = !DILocalVariable(name: "fp", arg: 1, scope: !3402, file: !3403, line: 28, type: !3406)
!3448 = !DILocalVariable(name: "offset", arg: 2, scope: !3402, file: !3403, line: 28, type: !942)
!3449 = !DILocalVariable(name: "whence", arg: 3, scope: !3402, file: !3403, line: 28, type: !86)
!3450 = !DILocalVariable(name: "pos", scope: !3451, file: !3403, line: 116, type: !942)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !3403, line: 112, column: 5)
!3452 = distinct !DILexicalBlock(scope: !3402, file: !3403, line: 51, column: 7)
!3453 = !DILocation(line: 28, column: 15, scope: !3402)
!3454 = !DILocation(line: 28, column: 25, scope: !3402)
!3455 = !DILocation(line: 28, column: 37, scope: !3402)
!3456 = !DILocation(line: 51, column: 11, scope: !3452)
!3457 = !{!829, !610, i64 16}
!3458 = !DILocation(line: 51, column: 31, scope: !3452)
!3459 = !{!829, !610, i64 8}
!3460 = !DILocation(line: 51, column: 24, scope: !3452)
!3461 = !DILocation(line: 52, column: 7, scope: !3452)
!3462 = !DILocation(line: 52, column: 14, scope: !3452)
!3463 = !{!829, !610, i64 40}
!3464 = !DILocation(line: 52, column: 35, scope: !3452)
!3465 = !{!829, !610, i64 32}
!3466 = !DILocation(line: 52, column: 28, scope: !3452)
!3467 = !DILocation(line: 53, column: 7, scope: !3452)
!3468 = !DILocation(line: 53, column: 14, scope: !3452)
!3469 = !{!829, !610, i64 72}
!3470 = !DILocation(line: 53, column: 28, scope: !3452)
!3471 = !DILocation(line: 51, column: 7, scope: !3402)
!3472 = !DILocation(line: 116, column: 26, scope: !3451)
!3473 = !DILocation(line: 116, column: 19, scope: !3451)
!3474 = !DILocation(line: 116, column: 13, scope: !3451)
!3475 = !DILocation(line: 117, column: 15, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3451, file: !3403, line: 117, column: 11)
!3477 = !DILocation(line: 117, column: 11, scope: !3451)
!3478 = !DILocation(line: 127, column: 11, scope: !3451)
!3479 = !DILocation(line: 127, column: 18, scope: !3451)
!3480 = !DILocation(line: 128, column: 11, scope: !3451)
!3481 = !DILocation(line: 128, column: 19, scope: !3451)
!3482 = !{!829, !811, i64 144}
!3483 = !DILocation(line: 159, column: 7, scope: !3451)
!3484 = !DILocation(line: 161, column: 10, scope: !3402)
!3485 = !DILocation(line: 161, column: 3, scope: !3402)
!3486 = !DILocation(line: 162, column: 1, scope: !3402)
!3487 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3488, file: !3488, line: 334, type: !3489, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !3503)
!3488 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!140, !3491, !29, !140, !3492}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1326, line: 6, baseType: !3494)
!3494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1328, line: 21, baseType: !3495)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1328, line: 13, size: 64, elements: !3496)
!3496 = !{!3497, !3498}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3495, file: !1328, line: 15, baseType: !86, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3495, file: !1328, line: 20, baseType: !3499, size: 32, offset: 32)
!3499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3495, file: !1328, line: 16, size: 32, elements: !3500)
!3500 = !{!3501, !3502}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3499, file: !1328, line: 18, baseType: !33, size: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3499, file: !1328, line: 19, baseType: !1337, size: 32)
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510}
!3504 = !DILocalVariable(name: "pwc", arg: 1, scope: !3487, file: !3488, line: 334, type: !3491)
!3505 = !DILocalVariable(name: "s", arg: 2, scope: !3487, file: !3488, line: 334, type: !29)
!3506 = !DILocalVariable(name: "n", arg: 3, scope: !3487, file: !3488, line: 334, type: !140)
!3507 = !DILocalVariable(name: "ps", arg: 4, scope: !3487, file: !3488, line: 334, type: !3492)
!3508 = !DILocalVariable(name: "ret", scope: !3487, file: !3488, line: 336, type: !140)
!3509 = !DILocalVariable(name: "wc", scope: !3487, file: !3488, line: 337, type: !1342)
!3510 = !DILocalVariable(name: "uc", scope: !3511, file: !3488, line: 398, type: !536)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !3488, line: 397, column: 5)
!3512 = distinct !DILexicalBlock(scope: !3487, file: !3488, line: 396, column: 7)
!3513 = !DILocation(line: 334, column: 23, scope: !3487)
!3514 = !DILocation(line: 334, column: 40, scope: !3487)
!3515 = !DILocation(line: 334, column: 50, scope: !3487)
!3516 = !DILocation(line: 334, column: 64, scope: !3487)
!3517 = !DILocation(line: 337, column: 3, scope: !3487)
!3518 = !DILocation(line: 353, column: 9, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3487, file: !3488, line: 353, column: 7)
!3520 = !DILocation(line: 353, column: 7, scope: !3487)
!3521 = !DILocation(line: 388, column: 9, scope: !3487)
!3522 = !DILocation(line: 336, column: 10, scope: !3487)
!3523 = !DILocation(line: 396, column: 19, scope: !3512)
!3524 = !DILocation(line: 396, column: 31, scope: !3512)
!3525 = !DILocation(line: 396, column: 26, scope: !3512)
!3526 = !DILocation(line: 396, column: 41, scope: !3512)
!3527 = !DILocation(line: 396, column: 7, scope: !3487)
!3528 = !DILocation(line: 398, column: 26, scope: !3511)
!3529 = !DILocation(line: 398, column: 21, scope: !3511)
!3530 = !DILocation(line: 399, column: 14, scope: !3511)
!3531 = !DILocation(line: 399, column: 12, scope: !3511)
!3532 = !DILocation(line: 405, column: 1, scope: !3487)
!3533 = distinct !DISubprogram(name: "close_stream", scope: !3534, file: !3534, line: 56, type: !3535, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3577)
!3534 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!86, !3537}
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !707, line: 7, baseType: !3539)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 241, size: 1728, elements: !3540)
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3539, file: !709, line: 242, baseType: !86, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3539, file: !709, line: 247, baseType: !110, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3539, file: !709, line: 248, baseType: !110, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3539, file: !709, line: 249, baseType: !110, size: 64, offset: 192)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3539, file: !709, line: 250, baseType: !110, size: 64, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3539, file: !709, line: 251, baseType: !110, size: 64, offset: 320)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3539, file: !709, line: 252, baseType: !110, size: 64, offset: 384)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3539, file: !709, line: 253, baseType: !110, size: 64, offset: 448)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3539, file: !709, line: 254, baseType: !110, size: 64, offset: 512)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3539, file: !709, line: 256, baseType: !110, size: 64, offset: 576)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3539, file: !709, line: 257, baseType: !110, size: 64, offset: 640)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3539, file: !709, line: 258, baseType: !110, size: 64, offset: 704)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3539, file: !709, line: 260, baseType: !3554, size: 64, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !709, line: 156, size: 192, elements: !3556)
!3556 = !{!3557, !3558, !3560}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3555, file: !709, line: 157, baseType: !3554, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3555, file: !709, line: 158, baseType: !3559, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3555, file: !709, line: 162, baseType: !86, size: 32, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3539, file: !709, line: 262, baseType: !3559, size: 64, offset: 832)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3539, file: !709, line: 264, baseType: !86, size: 32, offset: 896)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3539, file: !709, line: 268, baseType: !86, size: 32, offset: 928)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3539, file: !709, line: 270, baseType: !735, size: 64, offset: 960)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3539, file: !709, line: 274, baseType: !139, size: 16, offset: 1024)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3539, file: !709, line: 275, baseType: !739, size: 8, offset: 1040)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3539, file: !709, line: 276, baseType: !741, size: 8, offset: 1048)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3539, file: !709, line: 280, baseType: !745, size: 64, offset: 1088)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3539, file: !709, line: 289, baseType: !748, size: 64, offset: 1152)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3539, file: !709, line: 297, baseType: !32, size: 64, offset: 1216)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3539, file: !709, line: 298, baseType: !32, size: 64, offset: 1280)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3539, file: !709, line: 299, baseType: !32, size: 64, offset: 1344)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3539, file: !709, line: 300, baseType: !32, size: 64, offset: 1408)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3539, file: !709, line: 302, baseType: !140, size: 64, offset: 1472)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3539, file: !709, line: 303, baseType: !86, size: 32, offset: 1536)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3539, file: !709, line: 305, baseType: !756, size: 160, offset: 1568)
!3577 = !{!3578, !3579, !3581, !3582}
!3578 = !DILocalVariable(name: "stream", arg: 1, scope: !3533, file: !3534, line: 56, type: !3537)
!3579 = !DILocalVariable(name: "some_pending", scope: !3533, file: !3534, line: 58, type: !3580)
!3580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3581 = !DILocalVariable(name: "prev_fail", scope: !3533, file: !3534, line: 59, type: !3580)
!3582 = !DILocalVariable(name: "fclose_fail", scope: !3533, file: !3534, line: 60, type: !3580)
!3583 = !DILocation(line: 56, column: 21, scope: !3533)
!3584 = !DILocation(line: 58, column: 30, scope: !3533)
!3585 = !DILocalVariable(name: "__stream", arg: 1, scope: !3586, file: !820, line: 132, type: !3537)
!3586 = distinct !DISubprogram(name: "ferror_unlocked", scope: !820, file: !820, line: 132, type: !3535, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3587)
!3587 = !{!3585}
!3588 = !DILocation(line: 132, column: 1, scope: !3586, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 59, column: 27, scope: !3533)
!3590 = !DILocation(line: 134, column: 10, scope: !3586, inlinedAt: !3589)
!3591 = !DILocation(line: 59, column: 43, scope: !3533)
!3592 = !DILocation(line: 60, column: 29, scope: !3533)
!3593 = !DILocation(line: 60, column: 45, scope: !3533)
!3594 = !DILocation(line: 70, column: 17, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3533, file: !3534, line: 70, column: 7)
!3596 = !DILocation(line: 58, column: 50, scope: !3533)
!3597 = !DILocation(line: 70, column: 33, scope: !3595)
!3598 = !DILocation(line: 70, column: 53, scope: !3595)
!3599 = !DILocation(line: 70, column: 59, scope: !3595)
!3600 = !DILocation(line: 70, column: 7, scope: !3533)
!3601 = !DILocation(line: 72, column: 11, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3595, file: !3534, line: 71, column: 5)
!3603 = !DILocation(line: 73, column: 9, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3602, file: !3534, line: 72, column: 11)
!3605 = !DILocation(line: 73, column: 15, scope: !3604)
!3606 = !DILocation(line: 78, column: 1, scope: !3533)
!3607 = distinct !DISubprogram(name: "hard_locale", scope: !3608, file: !3608, line: 38, type: !3609, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3611)
!3608 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!37, !86}
!3611 = !{!3612, !3613, !3614}
!3612 = !DILocalVariable(name: "category", arg: 1, scope: !3607, file: !3608, line: 38, type: !86)
!3613 = !DILocalVariable(name: "hard", scope: !3607, file: !3608, line: 40, type: !37)
!3614 = !DILocalVariable(name: "p", scope: !3607, file: !3608, line: 41, type: !29)
!3615 = !DILocation(line: 38, column: 18, scope: !3607)
!3616 = !DILocation(line: 40, column: 8, scope: !3607)
!3617 = !DILocation(line: 41, column: 19, scope: !3607)
!3618 = !DILocation(line: 41, column: 15, scope: !3607)
!3619 = !DILocation(line: 43, column: 7, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3607, file: !3608, line: 43, column: 7)
!3621 = !DILocation(line: 43, column: 7, scope: !3607)
!3622 = !DILocation(line: 47, column: 15, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !3608, line: 47, column: 15)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !3608, line: 46, column: 9)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !3608, line: 45, column: 11)
!3626 = distinct !DILexicalBlock(scope: !3620, file: !3608, line: 44, column: 5)
!3627 = !DILocation(line: 47, column: 31, scope: !3623)
!3628 = !DILocation(line: 47, column: 36, scope: !3623)
!3629 = !DILocation(line: 47, column: 39, scope: !3623)
!3630 = !DILocation(line: 47, column: 59, scope: !3623)
!3631 = !DILocation(line: 47, column: 15, scope: !3624)
!3632 = !DILocation(line: 48, column: 13, scope: !3623)
!3633 = !DILocation(line: 71, column: 3, scope: !3607)
!3634 = distinct !DISubprogram(name: "locale_charset", scope: !538, file: !538, line: 393, type: !3635, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3637)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!29}
!3637 = !{!3638, !3639}
!3638 = !DILocalVariable(name: "codeset", scope: !3634, file: !538, line: 395, type: !29)
!3639 = !DILocalVariable(name: "aliases", scope: !3634, file: !538, line: 396, type: !29)
!3640 = !DILocalVariable(name: "buf1", scope: !3641, file: !538, line: 196, type: !3708)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !538, line: 194, column: 21)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !538, line: 193, column: 19)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !538, line: 193, column: 19)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !538, line: 188, column: 17)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !538, line: 181, column: 19)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !538, line: 177, column: 13)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !538, line: 173, column: 15)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !538, line: 161, column: 9)
!3649 = distinct !DILexicalBlock(scope: !3650, file: !538, line: 157, column: 11)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !538, line: 130, column: 5)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !538, line: 129, column: 7)
!3652 = distinct !DISubprogram(name: "get_charset_aliases", scope: !538, file: !538, line: 124, type: !3635, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3653)
!3653 = !{!3654, !3655, !3656, !3657, !3658, !3660, !3661, !3662, !3663, !3704, !3705, !3706, !3640, !3707, !3711, !3712, !3713}
!3654 = !DILocalVariable(name: "cp", scope: !3652, file: !538, line: 126, type: !29)
!3655 = !DILocalVariable(name: "dir", scope: !3650, file: !538, line: 132, type: !29)
!3656 = !DILocalVariable(name: "base", scope: !3650, file: !538, line: 133, type: !29)
!3657 = !DILocalVariable(name: "file_name", scope: !3650, file: !538, line: 134, type: !110)
!3658 = !DILocalVariable(name: "dir_len", scope: !3659, file: !538, line: 144, type: !140)
!3659 = distinct !DILexicalBlock(scope: !3650, file: !538, line: 143, column: 7)
!3660 = !DILocalVariable(name: "base_len", scope: !3659, file: !538, line: 145, type: !140)
!3661 = !DILocalVariable(name: "add_slash", scope: !3659, file: !538, line: 146, type: !86)
!3662 = !DILocalVariable(name: "fd", scope: !3648, file: !538, line: 162, type: !86)
!3663 = !DILocalVariable(name: "fp", scope: !3646, file: !538, line: 178, type: !3664)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !707, line: 7, baseType: !3666)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 241, size: 1728, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3666, file: !709, line: 242, baseType: !86, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3666, file: !709, line: 247, baseType: !110, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3666, file: !709, line: 248, baseType: !110, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3666, file: !709, line: 249, baseType: !110, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3666, file: !709, line: 250, baseType: !110, size: 64, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3666, file: !709, line: 251, baseType: !110, size: 64, offset: 320)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3666, file: !709, line: 252, baseType: !110, size: 64, offset: 384)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3666, file: !709, line: 253, baseType: !110, size: 64, offset: 448)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3666, file: !709, line: 254, baseType: !110, size: 64, offset: 512)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3666, file: !709, line: 256, baseType: !110, size: 64, offset: 576)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3666, file: !709, line: 257, baseType: !110, size: 64, offset: 640)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3666, file: !709, line: 258, baseType: !110, size: 64, offset: 704)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3666, file: !709, line: 260, baseType: !3681, size: 64, offset: 768)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !709, line: 156, size: 192, elements: !3683)
!3683 = !{!3684, !3685, !3687}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3682, file: !709, line: 157, baseType: !3681, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3682, file: !709, line: 158, baseType: !3686, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3682, file: !709, line: 162, baseType: !86, size: 32, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3666, file: !709, line: 262, baseType: !3686, size: 64, offset: 832)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3666, file: !709, line: 264, baseType: !86, size: 32, offset: 896)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3666, file: !709, line: 268, baseType: !86, size: 32, offset: 928)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3666, file: !709, line: 270, baseType: !735, size: 64, offset: 960)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3666, file: !709, line: 274, baseType: !139, size: 16, offset: 1024)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3666, file: !709, line: 275, baseType: !739, size: 8, offset: 1040)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3666, file: !709, line: 276, baseType: !741, size: 8, offset: 1048)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3666, file: !709, line: 280, baseType: !745, size: 64, offset: 1088)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3666, file: !709, line: 289, baseType: !748, size: 64, offset: 1152)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3666, file: !709, line: 297, baseType: !32, size: 64, offset: 1216)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3666, file: !709, line: 298, baseType: !32, size: 64, offset: 1280)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3666, file: !709, line: 299, baseType: !32, size: 64, offset: 1344)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3666, file: !709, line: 300, baseType: !32, size: 64, offset: 1408)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3666, file: !709, line: 302, baseType: !140, size: 64, offset: 1472)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3666, file: !709, line: 303, baseType: !86, size: 32, offset: 1536)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3666, file: !709, line: 305, baseType: !756, size: 160, offset: 1568)
!3704 = !DILocalVariable(name: "res_ptr", scope: !3644, file: !538, line: 190, type: !110)
!3705 = !DILocalVariable(name: "res_size", scope: !3644, file: !538, line: 191, type: !140)
!3706 = !DILocalVariable(name: "c", scope: !3641, file: !538, line: 195, type: !86)
!3707 = !DILocalVariable(name: "buf2", scope: !3641, file: !538, line: 197, type: !3708)
!3708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 408, elements: !3709)
!3709 = !{!3710}
!3710 = !DISubrange(count: 51)
!3711 = !DILocalVariable(name: "l1", scope: !3641, file: !538, line: 198, type: !140)
!3712 = !DILocalVariable(name: "l2", scope: !3641, file: !538, line: 198, type: !140)
!3713 = !DILocalVariable(name: "old_res_ptr", scope: !3641, file: !538, line: 199, type: !110)
!3714 = !DILocation(line: 196, column: 28, scope: !3641, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 589, column: 18, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3634, file: !538, line: 589, column: 3)
!3717 = !DILocation(line: 197, column: 28, scope: !3641, inlinedAt: !3715)
!3718 = !DILocation(line: 403, column: 13, scope: !3634)
!3719 = !DILocation(line: 395, column: 15, scope: !3634)
!3720 = !DILocation(line: 584, column: 15, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3634, file: !538, line: 584, column: 7)
!3722 = !DILocation(line: 584, column: 7, scope: !3634)
!3723 = !DILocation(line: 128, column: 8, scope: !3652, inlinedAt: !3715)
!3724 = !DILocation(line: 126, column: 15, scope: !3652, inlinedAt: !3715)
!3725 = !DILocation(line: 129, column: 10, scope: !3651, inlinedAt: !3715)
!3726 = !DILocation(line: 129, column: 7, scope: !3652, inlinedAt: !3715)
!3727 = !DILocation(line: 138, column: 13, scope: !3650, inlinedAt: !3715)
!3728 = !DILocation(line: 132, column: 19, scope: !3650, inlinedAt: !3715)
!3729 = !DILocation(line: 139, column: 15, scope: !3730, inlinedAt: !3715)
!3730 = distinct !DILexicalBlock(scope: !3650, file: !538, line: 139, column: 11)
!3731 = !DILocation(line: 139, column: 23, scope: !3730, inlinedAt: !3715)
!3732 = !DILocation(line: 139, column: 26, scope: !3730, inlinedAt: !3715)
!3733 = !DILocation(line: 139, column: 33, scope: !3730, inlinedAt: !3715)
!3734 = !DILocation(line: 139, column: 11, scope: !3650, inlinedAt: !3715)
!3735 = !DILocation(line: 140, column: 9, scope: !3730, inlinedAt: !3715)
!3736 = !DILocation(line: 144, column: 26, scope: !3659, inlinedAt: !3715)
!3737 = !DILocation(line: 144, column: 16, scope: !3659, inlinedAt: !3715)
!3738 = !DILocation(line: 145, column: 16, scope: !3659, inlinedAt: !3715)
!3739 = !DILocation(line: 146, column: 34, scope: !3659, inlinedAt: !3715)
!3740 = !DILocation(line: 146, column: 38, scope: !3659, inlinedAt: !3715)
!3741 = !DILocation(line: 146, column: 42, scope: !3659, inlinedAt: !3715)
!3742 = !DILocation(line: 147, column: 48, scope: !3659, inlinedAt: !3715)
!3743 = !DILocation(line: 147, column: 46, scope: !3659, inlinedAt: !3715)
!3744 = !DILocation(line: 147, column: 69, scope: !3659, inlinedAt: !3715)
!3745 = !DILocation(line: 147, column: 30, scope: !3659, inlinedAt: !3715)
!3746 = !DILocation(line: 134, column: 13, scope: !3650, inlinedAt: !3715)
!3747 = !DILocation(line: 148, column: 13, scope: !3659, inlinedAt: !3715)
!3748 = !DILocation(line: 150, column: 13, scope: !3749, inlinedAt: !3715)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !538, line: 149, column: 11)
!3750 = distinct !DILexicalBlock(scope: !3659, file: !538, line: 148, column: 13)
!3751 = !DILocation(line: 151, column: 17, scope: !3749, inlinedAt: !3715)
!3752 = !DILocation(line: 152, column: 34, scope: !3753, inlinedAt: !3715)
!3753 = distinct !DILexicalBlock(scope: !3749, file: !538, line: 151, column: 17)
!3754 = !DILocation(line: 153, column: 41, scope: !3749, inlinedAt: !3715)
!3755 = !DILocation(line: 153, column: 13, scope: !3749, inlinedAt: !3715)
!3756 = !DILocation(line: 157, column: 11, scope: !3650, inlinedAt: !3715)
!3757 = !DILocation(line: 171, column: 16, scope: !3648, inlinedAt: !3715)
!3758 = !DILocation(line: 162, column: 15, scope: !3648, inlinedAt: !3715)
!3759 = !DILocation(line: 173, column: 18, scope: !3647, inlinedAt: !3715)
!3760 = !DILocation(line: 173, column: 15, scope: !3648, inlinedAt: !3715)
!3761 = !DILocation(line: 180, column: 20, scope: !3646, inlinedAt: !3715)
!3762 = !DILocation(line: 178, column: 21, scope: !3646, inlinedAt: !3715)
!3763 = !DILocation(line: 181, column: 22, scope: !3645, inlinedAt: !3715)
!3764 = !DILocation(line: 181, column: 19, scope: !3646, inlinedAt: !3715)
!3765 = !DILocation(line: 184, column: 19, scope: !3766, inlinedAt: !3715)
!3766 = distinct !DILexicalBlock(scope: !3645, file: !538, line: 182, column: 17)
!3767 = !DILocation(line: 186, column: 17, scope: !3766, inlinedAt: !3715)
!3768 = !DILocation(line: 190, column: 25, scope: !3644, inlinedAt: !3715)
!3769 = !DILocation(line: 191, column: 26, scope: !3644, inlinedAt: !3715)
!3770 = !DILocation(line: 193, column: 19, scope: !3644, inlinedAt: !3715)
!3771 = !DILocation(line: 196, column: 23, scope: !3641, inlinedAt: !3715)
!3772 = !DILocation(line: 197, column: 23, scope: !3641, inlinedAt: !3715)
!3773 = !DILocalVariable(name: "__fp", arg: 1, scope: !3774, file: !820, line: 63, type: !3664)
!3774 = distinct !DISubprogram(name: "getc_unlocked", scope: !820, file: !820, line: 63, type: !3775, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3777)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!86, !3664}
!3777 = !{!3773}
!3778 = !DILocation(line: 63, column: 22, scope: !3774, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 201, column: 27, scope: !3641, inlinedAt: !3715)
!3780 = !DILocation(line: 65, column: 10, scope: !3774, inlinedAt: !3779)
!3781 = !{!"branch_weights", i32 2000, i32 1}
!3782 = !DILocation(line: 195, column: 27, scope: !3641, inlinedAt: !3715)
!3783 = !DILocation(line: 202, column: 27, scope: !3641, inlinedAt: !3715)
!3784 = distinct !{!3784, !3785, !3788}
!3785 = !DILocation(line: 209, column: 27, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !538, line: 207, column: 25)
!3787 = distinct !DILexicalBlock(scope: !3641, file: !538, line: 206, column: 27)
!3788 = !DILocation(line: 211, column: 58, scope: !3786)
!3789 = !DILocation(line: 65, column: 10, scope: !3774, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 210, column: 33, scope: !3786, inlinedAt: !3715)
!3791 = !DILocation(line: 63, column: 22, scope: !3774, inlinedAt: !3790)
!3792 = !DILocation(line: 210, column: 29, scope: !3786, inlinedAt: !3715)
!3793 = distinct !{!3793, !3794, !3795}
!3794 = !DILocation(line: 193, column: 19, scope: !3643)
!3795 = !DILocation(line: 241, column: 21, scope: !3643)
!3796 = !DILocation(line: 216, column: 23, scope: !3641, inlinedAt: !3715)
!3797 = !DILocation(line: 217, column: 27, scope: !3798, inlinedAt: !3715)
!3798 = distinct !DILexicalBlock(scope: !3641, file: !538, line: 217, column: 27)
!3799 = !DILocation(line: 217, column: 64, scope: !3798, inlinedAt: !3715)
!3800 = !DILocation(line: 217, column: 27, scope: !3641, inlinedAt: !3715)
!3801 = !DILocation(line: 219, column: 28, scope: !3641, inlinedAt: !3715)
!3802 = !DILocation(line: 198, column: 30, scope: !3641, inlinedAt: !3715)
!3803 = !DILocation(line: 220, column: 28, scope: !3641, inlinedAt: !3715)
!3804 = !DILocation(line: 198, column: 34, scope: !3641, inlinedAt: !3715)
!3805 = !DILocation(line: 199, column: 29, scope: !3641, inlinedAt: !3715)
!3806 = !DILocation(line: 222, column: 36, scope: !3807, inlinedAt: !3715)
!3807 = distinct !DILexicalBlock(scope: !3641, file: !538, line: 222, column: 27)
!3808 = !DILocation(line: 222, column: 27, scope: !3641, inlinedAt: !3715)
!3809 = !DILocation(line: 225, column: 63, scope: !3810, inlinedAt: !3715)
!3810 = distinct !DILexicalBlock(scope: !3807, file: !538, line: 223, column: 25)
!3811 = !DILocation(line: 225, column: 46, scope: !3810, inlinedAt: !3715)
!3812 = !DILocation(line: 226, column: 25, scope: !3810, inlinedAt: !3715)
!3813 = !DILocation(line: 229, column: 36, scope: !3814, inlinedAt: !3715)
!3814 = distinct !DILexicalBlock(scope: !3807, file: !538, line: 228, column: 25)
!3815 = !DILocation(line: 230, column: 73, scope: !3814, inlinedAt: !3715)
!3816 = !DILocation(line: 230, column: 46, scope: !3814, inlinedAt: !3715)
!3817 = !DILocation(line: 232, column: 35, scope: !3818, inlinedAt: !3715)
!3818 = distinct !DILexicalBlock(scope: !3641, file: !538, line: 232, column: 27)
!3819 = !DILocation(line: 232, column: 27, scope: !3641, inlinedAt: !3715)
!3820 = !DILocation(line: 236, column: 27, scope: !3821, inlinedAt: !3715)
!3821 = distinct !DILexicalBlock(scope: !3818, file: !538, line: 233, column: 25)
!3822 = !DILocation(line: 237, column: 27, scope: !3821, inlinedAt: !3715)
!3823 = !DILocation(line: 241, column: 21, scope: !3642, inlinedAt: !3715)
!3824 = !DILocation(line: 239, column: 39, scope: !3641, inlinedAt: !3715)
!3825 = !DILocation(line: 239, column: 50, scope: !3641, inlinedAt: !3715)
!3826 = !DILocation(line: 239, column: 61, scope: !3641, inlinedAt: !3715)
!3827 = !DILocalVariable(name: "__dest", arg: 1, scope: !3828, file: !3829, line: 88, type: !3832)
!3828 = distinct !DISubprogram(name: "strcpy", scope: !3829, file: !3829, line: 88, type: !3830, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3834)
!3829 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!110, !3832, !3833}
!3832 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!3833 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!3834 = !{!3827, !3835}
!3835 = !DILocalVariable(name: "__src", arg: 2, scope: !3828, file: !3829, line: 88, type: !3833)
!3836 = !DILocation(line: 88, column: 1, scope: !3828, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 239, column: 23, scope: !3641, inlinedAt: !3715)
!3838 = !DILocation(line: 90, column: 49, scope: !3828, inlinedAt: !3837)
!3839 = !DILocation(line: 90, column: 10, scope: !3828, inlinedAt: !3837)
!3840 = !DILocation(line: 88, column: 1, scope: !3828, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 240, column: 23, scope: !3641, inlinedAt: !3715)
!3842 = !DILocation(line: 90, column: 49, scope: !3828, inlinedAt: !3841)
!3843 = !DILocation(line: 90, column: 10, scope: !3828, inlinedAt: !3841)
!3844 = !DILocation(line: 193, column: 19, scope: !3642, inlinedAt: !3715)
!3845 = !DILocation(line: 242, column: 19, scope: !3644, inlinedAt: !3715)
!3846 = !DILocation(line: 243, column: 32, scope: !3847, inlinedAt: !3715)
!3847 = distinct !DILexicalBlock(scope: !3644, file: !538, line: 243, column: 23)
!3848 = !DILocation(line: 243, column: 23, scope: !3644, inlinedAt: !3715)
!3849 = !DILocation(line: 247, column: 33, scope: !3850, inlinedAt: !3715)
!3850 = distinct !DILexicalBlock(scope: !3847, file: !538, line: 246, column: 21)
!3851 = !DILocation(line: 247, column: 45, scope: !3850, inlinedAt: !3715)
!3852 = !DILocation(line: 253, column: 11, scope: !3648, inlinedAt: !3715)
!3853 = !DILocation(line: 377, column: 23, scope: !3650, inlinedAt: !3715)
!3854 = !DILocation(line: 378, column: 5, scope: !3650, inlinedAt: !3715)
!3855 = !DILocation(line: 396, column: 15, scope: !3634)
!3856 = !DILocation(line: 590, column: 8, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3716, file: !538, line: 589, column: 3)
!3858 = !DILocation(line: 590, column: 17, scope: !3857)
!3859 = !DILocation(line: 589, column: 3, scope: !3716)
!3860 = !DILocation(line: 592, column: 9, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3857, file: !538, line: 592, column: 9)
!3862 = !DILocation(line: 592, column: 35, scope: !3861)
!3863 = !DILocation(line: 593, column: 9, scope: !3861)
!3864 = !DILocation(line: 593, column: 24, scope: !3861)
!3865 = !DILocation(line: 593, column: 31, scope: !3861)
!3866 = !DILocation(line: 593, column: 34, scope: !3861)
!3867 = !DILocation(line: 593, column: 45, scope: !3861)
!3868 = !DILocation(line: 592, column: 9, scope: !3857)
!3869 = !DILocation(line: 595, column: 29, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3861, file: !538, line: 594, column: 7)
!3871 = !DILocation(line: 595, column: 27, scope: !3870)
!3872 = !DILocation(line: 595, column: 46, scope: !3870)
!3873 = !DILocation(line: 596, column: 9, scope: !3870)
!3874 = !DILocation(line: 591, column: 19, scope: !3857)
!3875 = !DILocation(line: 591, column: 36, scope: !3857)
!3876 = !DILocation(line: 591, column: 16, scope: !3857)
!3877 = !DILocation(line: 591, column: 52, scope: !3857)
!3878 = !DILocation(line: 591, column: 69, scope: !3857)
!3879 = !DILocation(line: 591, column: 49, scope: !3857)
!3880 = distinct !{!3880, !3859, !3881}
!3881 = !DILocation(line: 597, column: 7, scope: !3716)
!3882 = !DILocation(line: 602, column: 7, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3634, file: !538, line: 602, column: 7)
!3884 = !DILocation(line: 602, column: 18, scope: !3883)
!3885 = !DILocation(line: 602, column: 7, scope: !3634)
!3886 = !DILocation(line: 612, column: 3, scope: !3634)
